#!/bin/bash
# Assemble + sign a minimal "tool" OTA (edify script only, no /system payload)
# from a standalone updater-script file. Reuses the update-binary, metadata
# template and signing keys already accepted by the IHU689G recovery.
#
# Usage:
#   ./scripts/make-tool-ota.sh <updater-script-file> <out-name> [extra-file...]
#     extra files are copied to the zip root (e.g. boot.img for
#     package_extract_file()).
#
# Output: dist/tools/<out-name>/3C6525_SW0A5LV/OS/{update.zip,md5.txt}
#
# Flash it like any package: copy 3C6525_SW0A5LV/ to USB root, engineering
# menu -> U盘升级 -> GOTOVO. (scripts/deploy-tool.sh automates the USB copy.)
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(dirname "$SCRIPT_DIR")"
PAYLOAD="$ROOT/payload"
KEYS="$ROOT/keys"
KEY_PEM="$KEYS/aosp_platform.x509.pem"
KEY_PK8="$KEYS/platform.pk8"
SIGNAPK="$ROOT/vendor/signapk"
CP="$SIGNAPK:$SIGNAPK/SignApk.jar:$SIGNAPK/bcprov-jdk14-1.59.jar:$SIGNAPK/bcpkix-jdk14-1.59.jar"

if [ $# -lt 2 ]; then
  echo "Usage: $0 <updater-script> <out-name> [extra-file...]" >&2
  exit 1
fi
SCRIPT_SRC="$1"
NAME="$2"
shift 2

[ -f "$SCRIPT_SRC" ] && [ -s "$SCRIPT_SRC" ] || { echo "Not found or empty: $SCRIPT_SRC" >&2; exit 1; }
[ -f "$KEY_PEM" ] && [ -f "$KEY_PK8" ] || { echo "Missing signing keys in $KEYS" >&2; exit 1; }
command -v java >/dev/null || { echo "Java required (brew install openjdk@17)" >&2; exit 1; }

OUT_DIR="$ROOT/dist/tools/$NAME/3C6525_SW0A5LV/OS"
WORK="$(mktemp -d "${TMPDIR:-/tmp}/toolota.XXXXXX")"
trap 'rm -rf "$WORK"' EXIT

mkdir -p "$WORK/META-INF/com/google/android" "$WORK/META-INF/com/android"
cp "$PAYLOAD/META-INF/com/google/android/update-binary" "$WORK/META-INF/com/google/android/"
cp "$SCRIPT_SRC" "$WORK/META-INF/com/google/android/updater-script"
sed "s/^post-timestamp=.*/post-timestamp=$(date +%s)/" \
  "$PAYLOAD/META-INF/com/android/metadata" > "$WORK/META-INF/com/android/metadata"

for extra in "$@"; do
  [ -f "$extra" ] || { echo "Not found: $extra" >&2; exit 1; }
  cp "$extra" "$WORK/"
done

rm -rf "$OUT_DIR"
mkdir -p "$OUT_DIR"

echo "[1/3] Zipping: $NAME"
(cd "$WORK" && zip -r -X "$OUT_DIR/unsigned.zip" META-INF $(for extra in "$@"; do basename "$extra"; done) > /dev/null)

echo "[2/3] Signing"
java -cp "$CP" SignApk -w "$KEY_PEM" "$KEY_PK8" \
  "$OUT_DIR/unsigned.zip" "$OUT_DIR/update.zip"
rm -f "$OUT_DIR/unsigned.zip"

echo "[3/3] Verifying signature"
python3 "$SCRIPT_DIR/verify-ota-signature.py" "$OUT_DIR/update.zip"

printf '%s' "$(md5 -q "$OUT_DIR/update.zip")" > "$OUT_DIR/md5.txt"
echo "Tool OTA ready: $OUT_DIR/update.zip (md5 $(cat "$OUT_DIR/md5.txt"))"
