#!/bin/bash
# Copy the built package from dist/ to the USB stick, replacing whatever
# 3C6525_SW0A5LV/ folder is currently there. Only one package can be on the
# stick at a time — the engineering menu always flashes 3C6525_SW0A5LV/OS/
# update.zip.
#
# Usage: ./scripts/deploy.sh <USB_VOLUME>      # e.g. ./scripts/deploy.sh BOBBY
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
USB_FOLDER="3C6525_SW0A5LV"

err() { echo "$1" >&2; exit 1; }

[ $# -eq 1 ] || err "Usage: $0 <USB_VOLUME>"
SRC="$ROOT/dist/$USB_FOLDER"
[ -f "$SRC/OS/update.zip" ] || err "Not built: $SRC/OS/update.zip (run scripts/build.sh first)"

USB="/Volumes/$1"
[ -d "$USB" ] || err "USB volume not found: /Volumes/$1"
diskutil info "$USB" | grep -q "FAT" \
  || echo "WARNING: $USB does not look like FAT32" >&2

echo "Deploying $USB_FOLDER to $USB ..."
rm -rf "$USB/$USB_FOLDER"
cp -R "$SRC" "$USB/"
rm -f "$USB/._$USB_FOLDER" "$USB/$USB_FOLDER/._OS" \
  "$USB/$USB_FOLDER/OS/._update.zip" "$USB/$USB_FOLDER/OS/._md5.txt"
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
3. Tap 「U盘升级」 -> wait for "XONG".
4. Press and hold the RIGHT joystick on the steering wheel until the head unit reboots.
5. Open the StageLight app.
EOF
