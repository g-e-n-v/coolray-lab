#!/bin/bash
# Build + sign update.zip for the IHU689G head unit (Geely Coolray 2026 VN)
# from the payload/ tree in this repo (the self-contained source of truth —
# no dependency on anything outside projects/usb-upgrade/).
# Edit payload/ only, then run this script.
#
# Usage:
#   ./scripts/build-update.sh                  # build → dist/3C6525_SW0A5LV/OS/
#   ./scripts/build-update.sh deploy BOBBY     # build, then copy to USB /Volumes/BOBBY
#
# The built package lands in: dist/3C6525_SW0A5LV/OS/update.zip (+ md5.txt)
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SCRIPTS="$SCRIPT_DIR"
ROOT="$(dirname "$SCRIPTS")"

DEPLOY_VOL=""
for arg in "$@"; do
  case "$arg" in
    deploy) : ;;
    *) [ -z "$DEPLOY_VOL" ] && DEPLOY_VOL="$arg" || { echo "Invalid argument: $arg" >&2; exit 1; } ;;
  esac
done

SRC="$ROOT/payload"

KEYS="$ROOT/keys"
KEY_PEM="$KEYS/aosp_platform.x509.pem"
KEY_PK8="$KEYS/platform.pk8"
CERT_SERIAL_EXPECT="B3998086D056CFFA"
SIGNAPK="$ROOT/vendor/signapk"
USB_FOLDER="3C6525_SW0A5LV"
OUT_DIR="$ROOT/dist/$USB_FOLDER/OS"
CP="$SIGNAPK:$SIGNAPK/SignApk.jar:$SIGNAPK/bcprov-jdk14-1.59.jar:$SIGNAPK/bcpkix-jdk14-1.59.jar"

[ -f "$KEY_PEM" ] && [ -f "$KEY_PK8" ] || { echo "Missing signing keys in $KEYS" >&2; exit 1; }
command -v java >/dev/null || { echo "Java required (brew install openjdk@17)" >&2; exit 1; }

[ -d "$SRC/META-INF" ] || {
  echo "Missing $SRC/META-INF — payload/ is the source of truth, see payload/README.md" >&2
  echo "If payload/ was lost, restore from git: git checkout -- projects/usb-upgrade/payload" >&2
  exit 1
}

echo "[1/5] Source: $SRC"
sed -i '' "s/^post-timestamp=.*/post-timestamp=$(date +%s)/" "$SRC/META-INF/com/android/metadata"

rm -rf "$OUT_DIR"
mkdir -p "$OUT_DIR"

echo "[2/5] Zipping (unsigned)"
cd "$SRC"
rm -f "$OUT_DIR/unsigned.zip"
if [ -d system ]; then
  zip -r -X "$OUT_DIR/unsigned.zip" META-INF system > /dev/null
else
  zip -r -X "$OUT_DIR/unsigned.zip" META-INF > /dev/null
fi

echo "[3/5] Signing (JAR + whole-file) with key serial $CERT_SERIAL_EXPECT"
java -cp "$CP" SignApk -w "$KEY_PEM" "$KEY_PK8" \
  "$OUT_DIR/unsigned.zip" "$OUT_DIR/update.zip"
rm -f "$OUT_DIR/unsigned.zip"

echo "[4/5] Verifying signature"
unzip -p "$OUT_DIR/update.zip" META-INF/CERT.RSA > /tmp/_ihu_cert.rsa 2>/dev/null || true
CERT_SERIAL=$(openssl pkcs7 -inform DER -in /tmp/_ihu_cert.rsa -print_certs 2>/dev/null \
  | openssl x509 -noout -serial 2>/dev/null | cut -d= -f2 || echo "ERROR")
rm -f /tmp/_ihu_cert.rsa
if [ "$CERT_SERIAL" != "$CERT_SERIAL_EXPECT" ]; then
  echo "WARNING: cert serial ($CERT_SERIAL) differs from expected ($CERT_SERIAL_EXPECT)" >&2
else
  echo "  OK: cert serial $CERT_SERIAL (matches the key accepted by recovery)"
fi
python3 "$SCRIPTS/verify-ota-signature.py" "$OUT_DIR/update.zip"

printf '%s' "$(md5 -q "$OUT_DIR/update.zip")" > "$OUT_DIR/md5.txt"
echo "[5/5] Done: $OUT_DIR/update.zip (md5 $(cat "$OUT_DIR/md5.txt"))"

if [ -n "$DEPLOY_VOL" ]; then
  USB="/Volumes/$DEPLOY_VOL"
  [ -d "$USB" ] || { echo "USB volume not found: /Volumes/$DEPLOY_VOL" >&2; exit 1; }
  diskutil info "$USB" | grep -q "FAT" || echo "WARNING: $USB does not look like FAT32" >&2
  echo "Copying $USB_FOLDER to $USB ..."
  mkdir -p "$USB"
  rm -rf "$USB/$USB_FOLDER"
  cp -R "$ROOT/dist/$USB_FOLDER" "$USB/"
  rm -f "$USB/._$USB_FOLDER" "$USB/$USB_FOLDER/._OS" "$USB/$USB_FOLDER/OS/._update.zip" "$USB/$USB_FOLDER/OS/._md5.txt"
  echo "Removed macOS ._ junk files. Verify:"
  md5 -q "$USB/$USB_FOLDER/OS/update.zip"; cat "$USB/$USB_FOLDER/OS/md5.txt"; echo
  NOW=$(date +%m)
  DAY=$(date +%d)
  HOUR=$(date +%l | tr -d ' ')
  MENU_PADDED=$(printf '#*%02d%02d%02d' $((10#${NOW} + 10)) "$DAY" "$HOUR")
  MENU_PLAIN="#*$((10#${NOW} + 10))${DAY}${HOUR}"
  cat <<EOF

On the car (engine running, USB plugged into the LEFT port):
1. Wait for the "Inserted USB Device" toast.
2. Open the Phone app, enter the engineering menu code: $MENU_PADDED
   (if not accepted, try: $MENU_PLAIN)
3. Tap 「U盘升级」 -> wait for "GOTOVO".
4. Press and hold the RIGHT joystick on the steering wheel until the head unit reboots.
5. Open the StageLight app.
EOF
fi
