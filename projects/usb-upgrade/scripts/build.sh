#!/bin/bash
# Build + sign the USB OTA update.zip for the IHU689G head unit
# (Geely Coolray 2026 VN) from the payload/ tree — the self-contained
# source of truth. Edit payload/, then run this script.
#
# Usage:
#   ./scripts/build.sh              # build → dist/3C6525_SW0A5LV/OS/
#
# Output: dist/3C6525_SW0A5LV/OS/update.zip (+ md5.txt).
# Copy to USB with scripts/deploy.sh <USB_VOLUME>.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"

SRC="$ROOT/payload"
KEYS="$ROOT/keys"
KEY_PEM="$KEYS/aosp_platform.x509.pem"
KEY_PK8="$KEYS/platform.pk8"
CERT_SERIAL_EXPECT="B3998086D056CFFA"
SIGNAPK="$ROOT/vendor/signapk"
USB_FOLDER="3C6525_SW0A5LV"
OUT_DIR="$ROOT/dist/$USB_FOLDER/OS"
CP="$SIGNAPK:$SIGNAPK/SignApk.jar:$SIGNAPK/bcprov-jdk14-1.59.jar:$SIGNAPK/bcpkix-jdk14-1.59.jar"

err() { echo "$1" >&2; exit 1; }

[ -d "$SRC/META-INF" ] || {
  echo "Missing $SRC/META-INF — payload/ is the source of truth" >&2
  echo "If payload/ was lost, restore from git: git checkout -- projects/usb-upgrade/payload" >&2
  exit 1
}
[ -f "$KEY_PEM" ] && [ -f "$KEY_PK8" ] || err "Missing signing keys in $KEYS"
command -v java >/dev/null || err "Java required (brew install openjdk@17)"

echo "[1/5] Source: $SRC"
sed -i '' "s/^post-timestamp=.*/post-timestamp=$(date +%s)/" \
  "$SRC/META-INF/com/android/metadata"

rm -rf "$OUT_DIR"
mkdir -p "$OUT_DIR"

echo "[2/5] Zipping (unsigned)"
cd "$SRC"
rm -f "$OUT_DIR/unsigned.zip"
PKG_PARTS=(META-INF)
[ -d system ] && PKG_PARTS+=("system")
[ -f BOOTIMG.img ] && PKG_PARTS+=("BOOTIMG.img")
zip -r -X "$OUT_DIR/unsigned.zip" "${PKG_PARTS[@]}" > /dev/null

echo "[3/5] Signing (JAR + whole-file) with key serial $CERT_SERIAL_EXPECT"
java -cp "$CP" SignApk -w "$KEY_PEM" "$KEY_PK8" \
  "$OUT_DIR/unsigned.zip" "$OUT_DIR/update.zip"
rm -f "$OUT_DIR/unsigned.zip"

echo "[4/5] Verifying signature"
"$ROOT/scripts/verify.sh" "$OUT_DIR/update.zip"

printf '%s' "$(md5 -q "$OUT_DIR/update.zip")" > "$OUT_DIR/md5.txt"
echo "[5/5] Done: $OUT_DIR/update.zip (md5 $(cat "$OUT_DIR/md5.txt"))"
