#!/bin/bash
# Verify an ECARX/Geely recovery OTA package the same way Android 9 recovery
# does (bootable/recovery android-9.0.0_r1 verify_file() + read_pkcs7()):
#   - last 6 bytes = footer: (2-byte signature_start) 0xff 0xff (2-byte comment_size)
#   - SHA-1/SHA-256 over everything except the EOCD comment length field + comment
#   - whole-file signature = PKCS#7 SignedData DER whose SignerInfo OCTET STRING
#     holds a raw PKCS#1 v1.5 RSA signature (no signed attributes)
#   - trusted key = the package's own META-INF/com/android/otacert (matches /res/keys)
#
# Usage: ./scripts/verify.sh <update.zip>     # exit 0 = verified, 1 = failed
set -euo pipefail

EOCD_HEADER_SIZE=22
FOOTER_SIZE=6

fail() { echo "FAIL: $1" >&2; exit 1; }

[ $# -eq 1 ] || { echo "usage: $0 <update.zip>" >&2; exit 1; }
ZIP="$1"
[ -f "$ZIP" ] || fail "file not found: $ZIP"

SIZE=$(stat -f%z "$ZIP")
[ "$SIZE" -ge "$FOOTER_SIZE" ] || fail "file too small"

WORK="$(mktemp -d "${TMPDIR:-/tmp}/verifyota.XXXXXX")"
trap 'rm -rf "$WORK"' EXIT

# --- footer ------------------------------------------------------------------
read -r B0 B1 B2 B3 B4 B5 <<< "$(tail -c "$FOOTER_SIZE" "$ZIP" | od -An -tu1)"
SIG_START=$((B0 | B1 << 8))
COMMENT_SIZE=$((B4 | B5 << 8))
[ "$B2" -eq 255 ] && [ "$B3" -eq 255 ] \
  || fail "footer is wrong (no whole-file signature)"
{ [ "$SIG_START" -le "$COMMENT_SIZE" ] && [ "$SIG_START" -gt "$FOOTER_SIZE" ]; } \
  || fail "signature_start=$SIG_START comment_size=$COMMENT_SIZE"

EOCD_SIZE=$((COMMENT_SIZE + EOCD_HEADER_SIZE))
[ "$SIZE" -ge "$EOCD_SIZE" ] || fail "file too small for EOCD"
EOCD_OFF=$((SIZE - EOCD_SIZE))

MARKER=$(tail -c +$((EOCD_OFF + 1)) "$ZIP" | head -c 4 | od -An -tx1 | tr -d ' \n')
[ "$MARKER" = "504b0506" ] || fail "EOCD marker mismatch"

if [ $((EOCD_SIZE - 7)) -gt 0 ]; then
  RANGE=$(tail -c +$((EOCD_OFF + 5)) "$ZIP" | head -c $((EOCD_SIZE - 7)) \
          | od -An -tx1 | tr -d ' \n')
  case "$RANGE" in *504b0506*) fail "EOCD marker occurs after start of EOCD" ;; esac
fi

# --- signed range + signature block ------------------------------------------
SIGNED_LEN=$((SIZE - COMMENT_SIZE - 2))
head -c "$SIGNED_LEN" "$ZIP" > "$WORK/signed.bin"

SIG_OFF=$((EOCD_OFF + EOCD_SIZE - SIG_START))
DER_LEN=$((SIG_START - FOOTER_SIZE))
tail -c +$((SIG_OFF + 1)) "$ZIP" | head -c "$DER_LEN" > "$WORK/sig.der"

# raw signature = the (last) SignerInfo OCTET STRING, located via asn1parse
ASN_LINE=$(openssl asn1parse -inform DER -in "$WORK/sig.der" 2>/dev/null \
  | awk '/OCTET STRING/{line=$0} END{print line}')
[ -n "$ASN_LINE" ] || fail "no OCTET STRING in PKCS#7 blob"
read -r ASN_OFF ASN_HL SIG_LEN <<< "$(printf '%s\n' "$ASN_LINE" | awk '{print $1, $2, $4}')"
ASN_OFF=${ASN_OFF%%:d*}
ASN_HL=${ASN_HL#hl=}
case "$ASN_OFF$ASN_HL$SIG_LEN" in ''|*[!0-9]*) fail "cannot parse PKCS#7 DER" ;; esac
[ "$SIG_LEN" -ge 128 ] || fail "signature too short ($SIG_LEN bytes)"
tail -c +$((ASN_OFF + ASN_HL + 1)) "$WORK/sig.der" | head -c "$SIG_LEN" \
  > "$WORK/sig.bin"

# --- trusted key = the package's own otacert ---------------------------------
unzip -p "$ZIP" META-INF/com/android/otacert > "$WORK/otacert.pem" 2>/dev/null \
  || fail "no META-INF/com/android/otacert in package"
openssl x509 -in "$WORK/otacert.pem" -noout -pubkey > "$WORK/pub.pem" 2>/dev/null \
  || fail "cannot read otacert"
SERIAL=$(openssl x509 -in "$WORK/otacert.pem" -noout -serial | cut -d= -f2 | tr 'A-F' 'a-f')

# --- RSA PKCS#1 v1.5 over the signed range -----------------------------------
for ALG in sha1 sha256; do
  if openssl dgst -"$ALG" -verify "$WORK/pub.pem" \
       -signature "$WORK/sig.bin" "$WORK/signed.bin" >/dev/null 2>&1; then
    [ "$ALG" = sha1 ] && NAME=SHA-1 || NAME=SHA-256
    echo "PASS: whole-file signature verified ($NAME) against otacert serial=0x$SERIAL"
    exit 0
  fi
done
fail "signature does not verify against otacert"
