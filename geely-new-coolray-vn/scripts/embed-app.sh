#!/bin/bash
# Embed an APK as a system app into payload/ (copy to system/app/ + add the 2
# set_metadata lines in updater-script). MANIFEST.MF/CERT.SF need no edits —
# SignApk recomputes the digests when signing. Afterwards run build-update.sh
# to build the package.
#
# Usage:
#   ./scripts/embed-app.sh <path/to/app.apk> [AppName]
# AppName defaults to the file name without the .apk suffix. Examples:
#   ./scripts/embed-app.sh ~/Downloads/GeeKitWiFi.apk
#   ./scripts/embed-app.sh ~/Downloads/new-app.apk GeeKitWiFi
#
# Remove an embedded app: rm -rf payload/system/app/<AppName>/ then delete the
# 2 corresponding set_metadata lines in
# payload/META-INF/com/google/android/updater-script.
#
# Note: the APK must be compatible with Android 9 (minSdk <= 28), arm64-v8a,
# no Google Play Services needed (the car has none), landscape UI.
set -euo pipefail

SCRIPTS="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(dirname "$SCRIPTS")"
PAYLOAD="$ROOT/payload"

if [ $# -lt 1 ] || [ $# -gt 2 ]; then
  echo "Usage: $0 <app.apk> [AppName]" >&2
  exit 1
fi

APK="$1"
NAME="${2:-$(basename "$APK" .apk)}"
APP_DIR="$PAYLOAD/system/app/$NAME"
SCRIPT="$PAYLOAD/META-INF/com/google/android/updater-script"

[ -f "$APK" ] && [ -s "$APK" ] || { echo "Not found or empty: $APK" >&2; exit 1; }
case "$NAME" in */*|*'"'*) echo "Invalid AppName: $NAME" >&2; exit 1 ;; esac
[ -d "$APP_DIR" ] && { echo "$APP_DIR already exists (remove it before embedding again)" >&2; exit 1; }
grep -q "system/app/$NAME\"" "$SCRIPT" && { echo "updater-script already has an entry for $NAME" >&2; exit 1; }

mkdir -p "$APP_DIR"
cp "$APK" "$APP_DIR/$NAME.apk"

python3 - "$SCRIPT" "$NAME" <<'PY'
import sys

script, name = sys.argv[1], sys.argv[2]
with open(script) as f:
    text = f.read()

anchor = 'set_metadata("/system/app/Stagelight/Stagelight.apk", "uid", 0, "gid", 0, "mode", 0644, "selabel", "u:object_r:system_file:s0");\n'
if anchor not in text:
    sys.exit("ERROR: insertion point (Stagelight block) not found in updater-script")

block = (
    f'\nset_metadata("/system/app/{name}", "uid", 0, "gid", 0, "mode", 0755, "selabel", "u:object_r:system_file:s0");\n'
    f'set_metadata("/system/app/{name}/{name}.apk", "uid", 0, "gid", 0, "mode", 0644, "selabel", "u:object_r:system_file:s0");\n'
)
text = text.replace(anchor, anchor + block, 1)
with open(script, "w") as f:
    f.write(text)
PY

echo "Embedded: system/app/$NAME/$NAME.apk (+2 set_metadata lines)"
echo "Next: ./scripts/build-update.sh deploy <USB_VOLUME>"
