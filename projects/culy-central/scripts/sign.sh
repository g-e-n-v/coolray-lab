#!/usr/bin/env bash
# Ký lại APK bằng AOSP platform testkey của firmware (giống StageLight):
#   v2 signing scheme (apkSigningVersion=2 của StageLight, đủ với API 28), key từ projects/usb-upgrade/keys/.
# Cách dùng: ./scripts/sign.sh [debug|release]
#   ./gradlew assembleDebug && ./scripts/sign.sh debug
# Kết quả: dist/CulyCentral.apk (apksigner verify PASS + cert khớp firmware).
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
KEYS="$ROOT/../usb-upgrade/keys"
DIST="$ROOT/dist"
SDK="${ANDROID_HOME:-$HOME/Library/Android/sdk}"
BT_DIR="$SDK/build-tools"
[ -d "$BT_DIR" ] || { echo "Không thấy $BT_DIR — cài Android SDK build-tools." >&2; exit 1; }
BT_VERSION="$(ls "$BT_DIR" | sort -t. -k1,1n -k2,2n -k3,3n | tail -1)"
[ -n "$BT_VERSION" ] || { echo "$BT_DIR rỗng." >&2; exit 1; }
BT="$BT_DIR/$BT_VERSION"
APKSIGNER="$BT/apksigner"
VARIANT="${1:-debug}"
APK="$ROOT/app/build/outputs/apk/$VARIANT/app-$VARIANT.apk"
OUT="$DIST/CulyCentral.apk"

[ -f "$APK" ] || { echo "Không thấy $APK — chạy ./gradlew assemble$VARIANT trước." >&2; exit 1; }
[ -f "$KEYS/platform.pk8" ] || { echo "Không thấy key tại $KEYS." >&2; exit 1; }

mkdir -p "$DIST"
"$APKSIGNER" sign \
  --key "$KEYS/platform.pk8" \
  --cert "$KEYS/aosp_platform.x509.pem" \
  --v1-signing-enabled false \
  --v2-signing-enabled true \
  --v3-signing-enabled false \
  --v4-signing-enabled false \
  --out "$OUT" \
  "$APK"

echo "APK đã ký: $OUT"
"$APKSIGNER" verify --print-certs "$OUT"
echo "Cert firmware (đối chiếu):"
openssl x509 -in "$KEYS/aosp_platform.x509.pem" -noout -fingerprint -sha256
