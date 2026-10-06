#!/bin/bash
# Tao payload-real tu goi checkbuy 3C5625_SW0SX11_coolray_g (payload giong het tung byte)
# chi doi 4 dong metadata cho IHU689G (targetName cua xe: 3C6525_SW0A5LV).
set -euo pipefail

TOOLS="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(dirname "$TOOLS")"
SRC_ZIP="$ROOT/../community-pack/install_market/3C5625_SW0SX11_coolray_g/OS/update.zip"
DEST="$ROOT/packages/src/payload-real"

[ -f "$SRC_ZIP" ] || { echo "Khong thay $SRC_ZIP" >&2; exit 1; }

rm -rf "$DEST"
mkdir -p "$(dirname "$DEST")"
unzip -q "$SRC_ZIP" -d "$DEST"

printf 'post-build=GEELY/full_IHU689G/IHU689G:9/PQ2A.190405.003/20:user/test-keys\npost-build-incremental=20\npost-timestamp=%s\npre-device=IHU689G' \
  "$(date +%s)" > "$DEST/META-INF/com/android/metadata"

echo "Da tao $DEST (metadata: pre-device=IHU689G, incremental=20)"
