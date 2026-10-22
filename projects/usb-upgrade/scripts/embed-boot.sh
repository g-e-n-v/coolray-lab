#!/bin/bash
# Embed a Magisk-patched boot image into the USB OTA so that flashing the
# package from the USB technical menu also installs Magisk root — no ADB
# needed on the target car (root comes from the flashed boot partition).
#
# What it does:
#   1. copies <boot-patched.img> to payload/BOOT.img (build.sh includes it
#      in the zip automatically when present);
#   2. inserts a flash+verify edify block into updater-script (marked with
#      "== MAGISK-BOOT BEGIN/END ==" ui_print lines), inserted before the
#      final abort(). Idempotent: re-running replaces the existing block.
#
# The block, in order:
#   - locks to this firmware: ro.build.version.incremental == "20", read from
#     /system/build.prop (the script mounts /system before this block runs;
#     /default.prop does NOT carry ro.build.* — verified in the 22/10 dump);
#   - refuses to flash if the target car's boot partition sha1 differs from
#     <boot-orig-sha1> (prevents wrong-build flashes / running cars already
#     patched; rerun with a different stock sha1 if ever needed);
#   - verifies BOOT.img sha1 matches what was shipped in the package;
#   - writes the partition via run_program("/system/bin/dd", ...) (this
#     updater has no write_raw_image builtin — verified via strings on the
#     shipped update-binary), dd returns status checked with == "0" like the
#     stock checkbuy script;
#   - sync and reads the partition back to verify the patched image landed.
#
# Preparing the two inputs (needed once per firmware build):
#   adb shell "dd if=/dev/block/platform/bootdevice/by-name/boot of=/update/boot-orig"
#   adb pull /update/boot-orig .
#   - patch a copy with Magisk 30.7 ("Select and Patch a File") on the HU or
#     magiskboot on a PC  -> boot-patched.img
#   - boot-orig sha1: shasum -a 1 boot-orig | awk '{print $1}'
#
# Usage:
#   ./scripts/embed-boot.sh <boot-patched.img> <boot-orig-sha1>
#   ./scripts/embed-boot.sh --remove        # strip block + payload/BOOT.img
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
PAYLOAD="$ROOT/payload"
BOOT_IMG="$PAYLOAD/BOOTIMG.img"
SCRIPT="$PAYLOAD/META-INF/com/google/android/updater-script"

err() { echo "$1" >&2; exit 1; }

if [ "${1:-}" = "--remove" ]; then
  [ $# -eq 1 ] || err "Usage: $0 --remove"
  rm -f "$BOOT_IMG"
  python3 - "$SCRIPT" <<'PY'
import sys, re
script = sys.argv[1]
with open(script) as f:
    text = f.read()
out = re.sub(r'ui_print\("== MAGISK-BOOT BEGIN =="\);\n.*?ui_print\("== MAGISK-BOOT END =="\);\n', '', text, flags=re.S)
if out == text:
    print("No MAGISK-BOOT block found"); sys.exit(0)
with open(script, "w") as f:
    f.write(out)
PY
  echo "Removed: BOOTIMG.img + MAGISK-BOOT block"
  exit 0
fi

[ $# -eq 2 ] || err "Usage: $0 <boot-patched.img> <boot-orig-sha1>   (or --remove)"
PATCHED="$1"
STOCK_SHA1="$(echo "$2" | tr 'A-F' 'a-f')"

[ -s "$PATCHED" ] || err "Not found or empty: $PATCHED"
echo "$STOCK_SHA1" | grep -Eq '^[0-9a-f]{40}$' || err "boot-orig-sha1 must be 40 hex chars"
SIZE=$(stat -f%z "$PATCHED")
[ "$SIZE" -ge 1048576 ] || err "Suspiciously small boot image ($SIZE bytes)"
[ "$SIZE" -le 33554432 ] || err "Boot image larger than boot partition (32 MiB)"

python3 - "$PATCHED" <<'PY' || err "Not a boot image (no ANDROID! magic in first 4 KiB)"
import sys
with open(sys.argv[1], "rb") as f:
    head = f.read(4096)
sys.exit(0 if b"ANDROID!" in head else 1)
PY
PATCHED_SHA1=$(shasum -a 1 "$PATCHED" | awk '{print $1}')

python3 - "$SCRIPT" "$STOCK_SHA1" "$PATCHED_SHA1" "$SIZE" <<'PY'
import re, sys
script, stock_sha, patched_sha, patched_len = sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4]

with open(script) as f:
    text = f.read()

boot_dev = "/dev/block/platform/bootdevice/by-name/boot"
block = (
    'ui_print("== MAGISK-BOOT BEGIN ==");\n'
    '\n'
    'ui_print("Magisk: locking to firmware SW0A5LV (incremental 20)...");\n'
    'assert(file_getprop("/system/build.prop", "ro.build.version.incremental") == "20");\n'
    '\n'
    'ui_print("Magisk: checking current boot partition...");\n'
    f'assert(sha1_check(read_file("{boot_dev}", 33554432)) == "{stock_sha}");\n'
    '\n'
    'ui_print("Magisk: extracting patched boot...");\n'
    'package_extract_file("BOOTIMG.img", "/tmp/boot.img");\n'
    f'assert(sha1_check(read_file("/tmp/boot.img", {patched_len})) == "{patched_sha}");\n'
    '\n'
    'ui_print("Magisk: flashing patched boot (root)...");\n'
    f'assert(run_program("/system/bin/dd", "if=/tmp/boot.img", "of={boot_dev}") == "0");\n'
    'assert(run_program("/system/bin/sh", "-c", "sync") == "0");\n'
    f'assert(sha1_check(read_file("{boot_dev}", {patched_len})) == "{patched_sha}");\n'
    '\n'
    'ui_print("Magisk boot flashed OK.");\n'
    'ui_print("== MAGISK-BOOT END ==");\n'
)

pattern = r'ui_print\("== MAGISK-BOOT BEGIN =="\);\n.*?ui_print\("== MAGISK-BOOT END =="\);\n'
text = re.sub(pattern, '', text, flags=re.S) if re.search(pattern, text, flags=re.S) else text

m = re.search(r'^(?:ui_print\("DONE:|abort\()', text, flags=re.M)
if not m:
    sys.exit("ERROR: no DONE ui_print or abort() line found in updater-script")
text = text[:m.start()] + block + text[m.start():]

with open(script, "w") as f:
    f.write(text)
PY

[ "$PATCHED" -ef "$BOOT_IMG" ] || cp "$PATCHED" "$BOOT_IMG"

echo "Embedded: BOOTIMG.img ($SIZE B, sha1 $PATCHED_SHA1)"
echo "Guard   : stock boot sha1 $STOCK_SHA1"
echo "Next    : ./scripts/build.sh"
