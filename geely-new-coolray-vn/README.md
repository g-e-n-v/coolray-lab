# geely-new-coolray-vn/ — Gói flash dành cho xe Geely New Coolray VN (IHU689G)

Gói update ký riêng cho head unit **IHU689G** của xe, với **payload giống chính
xác** gói checkbuy `community-pack/install_market/3C5625_SW0SX11_coolray_g/`
(IHU628G — baseline tương đồng nhất, xem README.md gốc §3–5).

## 1. Gói này khác gì gói checkbuy coolray_g?

So với gói checkbuy `coolray_g`, gói này khác 3 thứ:

1. **Tên thư mục USB**: `3C6525_SW0A5LV` = targetName của firmware xe
   (`3C6525_SW0A5LV0126H102000000`) — menu 「U盘升级」 khớp chính xác tên này.
2. **4 dòng metadata**:
   ```
   post-build=GEELY/full_IHU689G/IHU689G:9/PQ2A.190405.003/20:user/test-keys
   post-build-incremental=20
   post-timestamp=<thời điểm build>
   pre-device=IHU689G
   ```
3. **Không có `CommunityPackMarket.apk`** (đã xóa khỏi payload, chỉ giữ
   `Stagelight.apk` trong `/system/app/`).

Còn lại **giống hệt từng byte**: `Stagelight.apk`, `update-binary`,
`updater-script`, `otacert` (DER trùng khớp), ký bằng cùng một key mà recovery xe
đã chấp nhận khi flash 21/09/2026 — AOSP platform testkey serial
`B3998086D056CFFA` (SHA-1, RSA-2048). Hành vi trên xe: cài StageLight vào
`/system/app/`, tạo `/data/misc/coolray` (0777), kết thúc bằng `GOTOVO`.

## 2. Cấu trúc thư mục

```
geely-new-coolray-vn/
├── README.md                     ← file này
├── flash-adb-unlock/
│   └── README.md                 ← hướng dẫn flash + ADB (đã kiểm chứng trên xe)
├── 3C6525_SW0A5LV/               ← copy THƯ MỤC NÀY ra gốc USB (FAT32);
│   │                               build-update.sh xuất thẳng vào đây
│   └── OS/
│       ├── update.zip
│       └── md5.txt
├── tools/                        # toolchain build gốc (khôi phục từ git objects)
│   ├── build-update.sh           # build + ký + deploy ra USB
│   ├── prepare-payload.sh        # tạo payload từ checkbuy coolray_g
│   ├── aosp_platform.x509.pem    # khóa ký (serial B3998086D056CFFA)
│   ├── platform.pk8
│   ├── SignApk.jar / SignApk.java / bcprov / bcpkix
│   └── verify_ota_signature.py   # mô phỏng verify_file() recovery Android 9
└── packages/src/payload-real/    # payload (tự sinh bởi prepare-payload.sh)
```

## 3. Kiểm chứng trước khi flash

```bash
# 1) MD5 khớp md5.txt (32 hex, không xuống dòng)
md5 3C6525_SW0A5LV/OS/update.zip; cat 3C6525_SW0A5LV/OS/md5.txt

# 2) Chữ ký whole-file hợp lệ (đúng thuật toán của recovery Android 9)
python3 tools/verify_ota_signature.py 3C6525_SW0A5LV/OS/update.zip
# PASS: whole-file signature verified (SHA-1) against otacert serial=0xb3998086d056cffa
```

## 4. Build lại (khi cần đổi timestamp / nhúng thêm APK)

```bash
cd tools
./build-update.sh                # → ../3C6525_SW0A5LV/OS/
./build-update.sh deploy BOBBY   # build + copy ra /Volumes/BOBBY (tự in mã menu)
```

Yêu cầu Java 17 (`brew install openjdk@17`). Chi tiết quy trình flash, mã menu
kỹ thuật, các đường ADB và cảnh báo brick: xem `flash-adb-unlock/README.md`.

## 5. Lịch sử build

- Gói hiện tại: payload coolray_g + metadata IHU689G, **đã bỏ CommunityPack
  Market** (chỉ còn StageLight trong `/system/app/`); md5
  `2da15e85f44cd9b5c851bf34fb0b2df8`.
- Bản **v6** (StageLight system + Settings/SettingsApp/GeeKitWiFi/CentralEXAuto
  user apps + ADB Wi-Fi tự bật) vẫn nằm trên USB `BOBBY` và có thể khôi phục từ
  git object: `git cat-file -p b9c3503965a63535681df106cbae13ffdbad6ea2 > update.zip`
  (md5 `f32f4b488f4a4eda85a4ba3d9c6bf9c8`).
