#!/bin/bash
# Build the OTA that writes a boot image to the boot partition — the final step
# of the Magisk root chain (or a rollback, when fed the original dump).
#
# Safety built into the generated updater-script:
#   1. SHA1 assert of the image AFTER extraction from the zip (detects corrupt
#      upload) and BEFORE anything is written.
#   2. Image written with dd (exact bs/count — never more bytes than the image).
#   3. Read-back: the partition is re-read and SHA1-asserted — GOTOVO is only
#      shown if what is on the partition matches the image byte for byte.
#
# Usage:
#   ./scripts/make-bootflash-ota.sh <image.img> <orig-boot.img> [name]
#     image.img      image to flash (magisk_patched-*.img, or the ORIGINAL dump
#                    to build a rollback package)
#     orig-boot.img  the dump from the dump-boot OTA (size reference: the new
#                    image must not be larger than the original boot partition
#                    image, else flashing could overflow into the next
#                    partition — the generator refuses to build in that case)
#     name           output name (default: flash-boot)
#
# Example (root):
#   ./scripts/make-bootflash-ota.sh ~/Downloads/magisk_patched-25100.img boot.img
# Example (rollback):
#   ./scripts/make-bootflash-ota.sh boot.img boot.img rollback-boot
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(dirname "$SCRIPT_DIR")"

BOOTPART="/dev/block/platform/bootdevice/by-name/boot"
WORKDIR="/system/rootwork"

if [ $# -lt 2 ] || [ $# -gt 3 ]; then
  sed -n '2,26p' "$0" | sed 's/^# \{0,1\}//'
  exit 1
fi
IMG="$1"
ORIG="$2"
NAME="${3:-flash-boot}"

[ -f "$IMG" ] || { echo "Not found: $IMG" >&2; exit 1; }
[ -f "$ORIG" ] || { echo "Not found: $ORIG" >&2; exit 1; }

SZ=$(stat -f%z "$IMG")
OSZ=$(stat -f%z "$ORIG")
if [ "$SZ" -gt "$OSZ" ]; then
  echo "REFUSING: $IMG ($SZ bytes) is larger than the original boot image ($OSZ bytes)." >&2
  echo "Flashing it could overflow the boot partition. Do not flash this image." >&2
  exit 1
fi
SHA1=$(shasum -a 1 "$IMG" | awk '{print $1}')

BS=$((1024 * 1024))
if [ $((SZ % BS)) -eq 0 ]; then
  COUNT=$((SZ / BS))
else
  BS=$SZ
  COUNT=1
fi

echo "image : $IMG ($SZ bytes, sha1 $SHA1)"
echo "target: $BOOTPART (orig boot image: $OSZ bytes)"
echo "write : dd bs=$BS count=$COUNT"

GEN="$(mktemp -d "${TMPDIR:-/tmp}/bootota.XXXXXX")"
trap 'rm -rf "$GEN"' EXIT

cat > "$GEN/updater-script" <<EOF
ui_print("=== flash-boot: write boot image, sha-guarded, read-back verified ===");
show_progress(0.500000, 0);

mount("ext4", "EMMC", "/dev/block/platform/bootdevice/by-name/system", "/system");

run_program("/system/bin/sh", "-c", "mkdir -p $WORKDIR 2>/dev/null; exec >$WORKDIR/flash.log 2>&1; set -x; date; df $WORKDIR; ls -l $BOOTPART; true");

package_extract_file("boot.img", "$WORKDIR/boot.img");

assert(sha1_check(read_file("$WORKDIR/boot.img"), "$SHA1") != "");

run_program("/system/bin/sh", "-c", "exec >>$WORKDIR/flash.log 2>&1; set -x; EXPECTED=$SHA1; GOT=\$(sha1sum $WORKDIR/boot.img); GOT=\${GOT%% *}; echo extracted_sha=\$GOT; if [ \"\$GOT\" != \"\$EXPECTED\" ]; then echo SHA_MISMATCH_NOT_WRITING; echo FAIL_EXTRACT > $WORKDIR/RESULT; exit 0; fi; dd if=$WORKDIR/boot.img of=$BOOTPART bs=$BS count=$COUNT; sync; dd if=$BOOTPART of=$WORKDIR/verify.img bs=$BS count=$COUNT; sync; V=\$(sha1sum $WORKDIR/verify.img); V=\${V%% *}; echo readback_sha=\$V; if [ \"\$V\" = \"\$EXPECTED\" ]; then echo READBACK_PASS; echo PASS > $WORKDIR/RESULT; rm -f $WORKDIR/verify.img $WORKDIR/boot.img; else echo READBACK_FAIL; echo FAIL_WRITE > $WORKDIR/RESULT; fi; true");

delete("$WORKDIR/verify.img");
delete("$WORKDIR/boot.img");

ui_print("boot write done - result in $WORKDIR/RESULT and $WORKDIR/flash.log");
set_progress(1.000000);
abort("GOTOVO: check /system/rootwork/RESULT (PASS = flashed + verified). Reboot the HU.");
EOF

cp "$IMG" "$GEN/boot.img"
"$SCRIPT_DIR/make-tool-ota.sh" "$GEN/updater-script" "$NAME" "$GEN/boot.img"
