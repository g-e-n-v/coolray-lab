#!/bin/bash
# Build + ky goi update.zip cho head unit IHU689G (Geely Coolray 2026 VN)
# Payload giong chinh xac goi checkbuy 3C5625_SW0SX11_coolray_g (IHU628G),
# chi khac: ten thu muc USB (3C6525_SW0A5LV = targetName cua xe) va 4 dong
# metadata (pre-device=IHU689G, post-build ...20, incremental=20, timestamp moi).
#
# Cach dung:
#   ./build-update.sh                  # build goi (payload tu checkbuy coolray_g)
#   ./build-update.sh deploy BOBBY     # build xong copy ra USB /Volumes/BOBBY
#
# Goi da build nam o: ../3C6525_SW0A5LV/OS/update.zip (+ md5.txt)
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
TOOLS="$SCRIPT_DIR"
ROOT="$(dirname "$TOOLS")"

DEPLOY_VOL=""
for arg in "$@"; do
  case "$arg" in
    deploy) : ;;
    *) [ -z "$DEPLOY_VOL" ] && DEPLOY_VOL="$arg" || { echo "Tham so khong hop le: $arg" >&2; exit 1; } ;;
  esac
done

SRC="$ROOT/packages/src/payload-real"

KEY_PEM="$TOOLS/aosp_platform.x509.pem"
KEY_PK8="$TOOLS/platform.pk8"
CERT_SERIAL_EXPECT="B3998086D056CFFA"
USB_FOLDER="3C6525_SW0A5LV"
OUT_DIR="$ROOT/$USB_FOLDER/OS"
CP="$TOOLS:$TOOLS/SignApk.jar:$TOOLS/bcprov-jdk14-1.59.jar:$TOOLS/bcpkix-jdk14-1.59.jar"

[ -f "$KEY_PEM" ] && [ -f "$KEY_PK8" ] || { echo "Thieu khoa ky trong $TOOLS" >&2; exit 1; }
command -v java >/dev/null || { echo "Can Java (brew install openjdk@17)" >&2; exit 1; }

if [ ! -d "$SRC/META-INF" ]; then
  echo "[0/5] Tao payload tu checkbuy coolray_g ..."
  "$TOOLS/prepare-payload.sh"
fi
[ -d "$SRC/META-INF" ] || { echo "Thieu $SRC/META-INF" >&2; exit 1; }

echo "[1/5] Nguon: $SRC"
sed -i '' "s/^post-timestamp=.*/post-timestamp=$(date +%s)/" "$SRC/META-INF/com/android/metadata"

rm -rf "$OUT_DIR"
mkdir -p "$OUT_DIR"

echo "[2/5] Dong zip (chua ky)"
cd "$SRC"
rm -f "$OUT_DIR/unsigned.zip"
if [ -d system ]; then
  zip -r -X "$OUT_DIR/unsigned.zip" META-INF system > /dev/null
else
  zip -r -X "$OUT_DIR/unsigned.zip" META-INF > /dev/null
fi

echo "[3/5] Ky (JAR + whole-file) bang key serial $CERT_SERIAL_EXPECT"
java -cp "$CP" SignApk -w "$KEY_PEM" "$KEY_PK8" \
  "$OUT_DIR/unsigned.zip" "$OUT_DIR/update.zip"
rm -f "$OUT_DIR/unsigned.zip"

echo "[4/5] Kiem tra chu ky"
unzip -p "$OUT_DIR/update.zip" META-INF/CERT.RSA > /tmp/_ihu_cert.rsa 2>/dev/null || true
CERT_SERIAL=$(openssl pkcs7 -inform DER -in /tmp/_ihu_cert.rsa -print_certs 2>/dev/null \
  | openssl x509 -noout -serial 2>/dev/null | cut -d= -f2 || echo "LOI")
rm -f /tmp/_ihu_cert.rsa
if [ "$CERT_SERIAL" != "$CERT_SERIAL_EXPECT" ]; then
  echo "CANH BAO: serial cert ($CERT_SERIAL) khac mong doi ($CERT_SERIAL_EXPECT)" >&2
else
  echo "  OK: cert serial $CERT_SERIAL (khop key recovery da chap nhan)"
fi
python3 "$ROOT/tools/verify_ota_signature.py" "$OUT_DIR/update.zip"

printf '%s' "$(md5 -q "$OUT_DIR/update.zip")" > "$OUT_DIR/md5.txt"
echo "[5/5] Xong: $OUT_DIR/update.zip (md5 $(cat "$OUT_DIR/md5.txt"))"

if [ -n "$DEPLOY_VOL" ]; then
  USB="/Volumes/$DEPLOY_VOL"
  [ -d "$USB" ] || { echo "Khong thay USB /Volumes/$DEPLOY_VOL" >&2; exit 1; }
  diskutil info "$USB" | grep -q "FAT" || echo "CANH BAO: $USB co ve khong phai FAT32" >&2
  echo "Copy $USB_FOLDER ra $USB ..."
  mkdir -p "$USB"
  rm -rf "$USB/$USB_FOLDER"
  cp -R "$ROOT/$USB_FOLDER" "$USB/"
  rm -f "$USB/._$USB_FOLDER" "$USB/$USB_FOLDER/._OS" "$USB/$USB_FOLDER/OS/._update.zip" "$USB/$USB_FOLDER/OS/._md5.txt"
  echo "Da xoa file rac ._ cua macOS. Kiem tra:"
  md5 -q "$USB/$USB_FOLDER/OS/update.zip"; cat "$USB/$USB_FOLDER/OS/md5.txt"; echo
  NOW=$(date +%m)
  DAY=$(date +%d)
  HOUR=$(date +%l | tr -d ' ')
  MENU_PADDED=$(printf '#*%02d%02d%02d' $((10#${NOW} + 10)) "$DAY" "$HOUR")
  MENU_PLAIN="#*$((10#${NOW} + 10))${DAY}${HOUR}"
  cat <<EOF

Tren xe (xe dang nho may, USB cam cong TRAI):
1. Cho toast "Inserted USB Device".
2. Mo app Dien thoai, nhap ma menu ky thuat: $MENU_PADDED
   (neu khong nhan, thu: $MENU_PLAIN)
3. Bam 「U盘升级」 -> cho "GOTOVO".
4. Giu lau joystick PHAI tren vo-lang den khi head unit khoi dong lai.
5. Mo app CommunityPack Market.
EOF
fi
