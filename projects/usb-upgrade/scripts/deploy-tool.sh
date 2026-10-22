#!/bin/bash
# Copy a built tool OTA (or the main package) to the USB stick, replacing
# whatever 3C6525_SW0A5LV/ folder is currently there. Only one package can be
# on the stick at a time — the engineering menu always flashes
# 3C6525_SW0A5LV/OS/update.zip.
#
# Usage:
#   ./scripts/deploy-tool.sh <tool-name> <USB_VOLUME>    # from dist/tools/<name>
#   ./scripts/deploy-tool.sh main <USB_VOLUME>           # from dist/
# Example:
#   ./scripts/deploy-tool.sh dump-boot BOBBY
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(dirname "$SCRIPT_DIR")"
USB_FOLDER="3C6525_SW0A5LV"

if [ $# -ne 2 ]; then
  echo "Usage: $0 <tool-name|main> <USB_VOLUME>" >&2
  exit 1
fi
NAME="$1"
VOL="$2"

if [ "$NAME" = "main" ]; then
  SRC="$ROOT/dist/$USB_FOLDER"
else
  SRC="$ROOT/dist/tools/$NAME/$USB_FOLDER"
fi
[ -f "$SRC/OS/update.zip" ] || { echo "Not built: $SRC/OS/update.zip" >&2; exit 1; }

USB="/Volumes/$VOL"
[ -d "$USB" ] || { echo "USB volume not found: /Volumes/$VOL" >&2; exit 1; }
diskutil info "$USB" | grep -q "FAT" || echo "WARNING: $USB does not look like FAT32" >&2

echo "Deploying $NAME -> $USB ..."
rm -rf "$USB/$USB_FOLDER"
cp -R "$SRC" "$USB/"
rm -f "$USB/._$USB_FOLDER" "$USB/$USB_FOLDER/._OS" "$USB/$USB_FOLDER/OS/._update.zip" "$USB/$USB_FOLDER/OS/._md5.txt"
echo "Removed macOS ._ junk files. Verify:"
md5 -q "$USB/$USB_FOLDER/OS/update.zip"
cat "$USB/$USB_FOLDER/OS/md5.txt"; echo
