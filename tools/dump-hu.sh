#!/bin/bash
# Dump everything readable from the IHU689G head unit over adb into
# dumps/<device>-<timestamp>/ . Works best when adbd runs as root (uid=0).
#
# Usage: ./tools/dump-hu.sh [serial-or-ip]     # default 10.98.197.218:5555
set -uo pipefail

SERIAL="${1:-10.98.197.218:5555}"
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
STAMP="$(date +%Y%m%d-%H%M%S)"
OUT="$ROOT/dumps/$(echo "$SERIAL" | tr '.:' '--')-$STAMP"
mkdir -p "$OUT"

ADB="adb -s $SERIAL"

cap() { # cap <name> <remote command...>
  local name="$1"; shift
  printf '[dump] %s\n' "$name"
  $ADB shell "$*" > "$OUT/$name.txt" 2>&1
}

echo "== $SERIAL -> $OUT"
$ADB connect "$SERIAL" >/dev/null 2>&1 || true
cap device-id "id; getenforce; uname -a; cat /proc/version"
cap props "getprop"
cap cpuinfo "cat /proc/cpuinfo"
cap meminfo "cat /proc/meminfo"
cap partitions-proc "cat /proc/partitions"
cap mounts "cat /proc/mounts"
cap disk "df -h; df"
cap block-by-name "ls -l /dev/block/by-name; for n in /dev/block/by-name/*; do echo \"\$n \$(blockdev --getsize64 \$n)\"; done"
cap usb "cat /sys/kernel/debug/usb/devices"
cap network "ip addr; ip route; cat /proc/net/arp"
cap input-devices "getevent -pl"
cap selinux "getenforce; cat /sys/fs/selinux/enforce"
cap pm-packages "pm list packages -f"
cap pm-packages-system "pm list packages -s"
cap pm-packages-3rd "pm list packages -3"
cap pm-permissions "pm list permissions -g"
cap pm-features "pm list features"
cap pm-libraries "pm list libraries"
cap apk-inventory "find /system/app /system/priv-app /vendor/app /data/app -name '*.apk' -exec ls -l {} \; 2>/dev/null"
cap dumpsys-package "dumpsys package"
cap settings-global "settings list global"
cap settings-secure "settings list secure"
cap settings-system "settings list system"
cap services "service list"
cap dumpsys-activity "dumpsys activity"
cap dumpsys-battery "dumpsys battery"
cap dumpsys-display "dumpsys display; wm size; wm density"
cap dumpsys-audio "dumpsys audio"
cap dumpsys-camera "dumpsys media.camera"
cap dumpsys-sensors "dumpsys sensorservice"
cap dumpsys-input "dumpsys input"
cap dumpsys-window "dumpsys window"
cap dumpsys-car "dumpsys car_service"
cap dumpsys-bluetooth "dumpsys bluetooth_manager"
cap dumpsys-wifi "dumpsys wifi"
cap dumpsys-location "dumpsys location"
cap dumpsys-telephony "dumpsys telephony.registry"
cap dumpsys-usb "dumpsys usb"
cap logcat-main "logcat -d"
cap logcat-system "logcat -d -b system"
cap logcat-events "logcat -d -b events"
cap dmesg "dmesg"
cap init-rcs "for f in /init*.rc /vendor/etc/init/*.rc /system/etc/init/*.rc; do echo \"===== \$f\"; cat \"\$f\" 2>/dev/null; done"
cap props-files "for f in /system/build.prop /vendor/build.prop /vendor/default.prop /default.prop; do echo \"===== \$f\"; cat \"\$f\" 2>/dev/null; done"
cap kernel-cmdline "cat /proc/cmdline"
cap ecarx-services "for s in gocsdk gocsdk_auth ecarx_core_server fota_service hal_mcuupdate_service; do echo \"===== \$s\"; dumpsys activity service \$s 2>/dev/null | head -100; done"

echo "== done: $OUT"
du -sh "$OUT" 2>/dev/null
