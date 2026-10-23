# AGENTS.md

Workspace nghiên cứu & build gói update cho head unit **IHU689G** (Geely New
Coolray 2026 VN, Android 9, nền tảng MTK/ECARX "Flyme Auto"). Đây **không phải
project app thông thường**: không có CI, không test suite, không package.json —
mọi lệnh là script bash chạy trên macOS, môi trường thật là xe (+ ADB qua Wi-Fi).

Ngôn ngữ repo là **tiếng Việt** cho toàn bộ README/docs và message script. Giữ
nguyên convention này khi sửa tài liệu.

## Cấu trúc & vai trò

| Đường dẫn | Vai trò |
| --- | --- |
| `projects/usb-upgrade/scripts/` | Chuỗi build USB OTA: `build.sh` (zip + ký + verify + md5), `deploy.sh` (USB), `embed.sh` (app), `embed-boot.sh` (root qua OTA: patched boot), `verify.sh` |
| `projects/usb-upgrade/README.md` | Chi tiết đầy đủ chuỗi OTA: cấu trúc, embed app, verify chữ ký, quy trình flash trên xe |
| `projects/coon/` | App quản lý xe Coolray trên HU (`vn.coon.app`, uid 1000, platform testkey): nền tảng ADB Wi-Fi + màn hình IP; tầm nhìn mở rộng thành app quản lý xe theo mô hình Sapo Drive (sapodrive.com). Chi tiết: `projects/coon/AGENTS.md` |
| `tools/dump-hu.sh` | Dump toàn bộ head unit qua ADB Wi-Fi → `dumps/<ip>-<timestamp>/` |
| `docs/ihu689g.md` | Baseline phần cứng/firmware đã verify trên xe, mọi fact đều cite file dump dạng `[props.txt]` |
| `docs/hu-adb-dump.md` | Nội dung dump ADB + cách tái tạo |
| `docs/split-screen-recipe.md` | Công thức true split-screen đã xác minh qua ADB |
| `docs/root-magisk-guide.md` | Root Magisk: phân biệt root ADB sẵn của firmware vs Magisk daemon, quy trình patch boot cho HU từ nhà máy + nhánh root qua OTA (mục 7) |
| `dumps/` | Kết quả dump (raw output, **gitignored** — không commit) |
| `extracts/sapo-central/` | APK tool-decoded (`com.ex.auto` v3.3.10, `sharedUserId="android.uid.system"`) giữ làm tham khảo |
| `.agents/` | Dữ liệu session của công cụ agent cục bộ (crush.db…) — không thuộc về project, đừng đụng |

## Lệnh chính

```bash
cd projects/usb-upgrade
./scripts/build.sh                    # zip payload → ký SignApk → verify → md5.txt → dist/3C6525_SW0A5LV/OS/
./scripts/deploy.sh BOBBY             # copy dist/ ra USB /Volumes/BOBBY (FAT32) + in mã menu kỹ thuật
./scripts/embed.sh ~/Downloads/App.apk [Name]   # nhúng APK vào payload/system/app/
./scripts/verify.sh dist/3C6525_SW0A5LV/OS/update.zip   # PASS = chữ ký đúng chuẩn recovery Android 9
./tools/dump-hu.sh [ip]:5555          # mặc định 10.98.197.218:5555 (IP đổi theo xe/ngày)
```

Yêu cầu: **Java 17** (`brew install openjdk@17`), macOS BSD tooling (`md5`
không phải `md5sum`, `sed -i ''`, `stat -f%z`), `adb`, USB FAT32 cho deploy,
`python3` cho embed.sh. Scripts tự chứa (không phụ thuộc gì ngoài
`projects/usb-upgrade/`); `vendor/signapk/` là toolchain ký đã commit
(SignApk.jar + BouncyCastle) — **dùng lại, đừng reimplement**.

Không có test/lint: "kiểm chứng" = `verify.sh` PASS + md5 khớp `md5.txt` + flash
thật trên xe.

## Pipeline OTA — những điểm không tự hiểu

1. `build.sh` **viết lại `post-timestamp`** trong
   `payload/META-INF/com/android/metadata` (file TRACKED) mỗi lần build → file
   này luôn dirty sau build; commit cùng lần rebuild hoặc chấp nhận churn.
2. `zip -r -X` chỉ gồm `META-INF/` + `system/`; `manifest` (MANIFEST.MF,
   CERT.SF) được **SignApk recompute khi ký** — đừng sửa tay. Ký dùng
   **AOSP platform testkey** (`keys/`, serial `B3998086D056CFFA`):
   hợp lệ vì firmware HU build bằng `test-keys` và otacert khớp `/res/keys`
   trên xe.
3. Ký là **whole-file signature** (`SignApk -w`): footer 6 byte cuối +
   PKCS#7 SignedData *không signed-attributes*, trust anchor =
   `META-INF/com/android/otacert` nằm trong chính gói.
   `verify.sh` mô phỏng chính xác `verify_file()` của `bootable/recovery`
   android-9.0.0_r1 (chỉ bash + openssl + unzip).
4. Deploy: chỉ được **một gói trên USB** — menu kỹ thuật luôn flash
   `3C6525_SW0A5LV/OS/update.zip`; tên thư mục `3C6525_SW0A5LV` là **hằng đối
   với xe**, không đổi. `deploy.sh` tự xoá `._*` (AppleDouble) trên USB — FAT32
   công của macOS.
5. **Mã menu kỹ thuật là theo thời điểm hiện tại**: deploy.sh tính và in ra hai
   biến thể (padded + plain), dùng `date +%l` (giờ 12). Ví dụ viết tay trong
   README **không khớp** công thức script → luôn dùng giá trị deploy.sh in ra,
   đừng tự tính tay.
6. **Root qua OTA (tùy chọn)**: `embed-boot.sh` nhúng `payload/BOOTIMG.img`
   (boot gốc đã patch Magisk) và chèn block flash vào updater-script trước
   dòng `DONE:`/`abort()`; `build.sh` tự thêm `BOOTIMG.img` vào zip khi có.
   Guard: `ro.build.version.incremental == "20"` + sha1 boot hiện tại của xe
   đích phải khớp boot gốc đã backup — sai = abort, không ghi gì. Updater
   không có builtin `write_raw_image` → flash qua
   `run_program("/system/bin/dd", ...)`. Payload mặc định KHÔNG có
   BOOTIMG.img — để sạch.

## updater-script (payload/META-INF/com/google/android/)

- mount `/system` bằng `/dev/block/platform/bootdevice/by-name/system`, rồi
  `package_extract_dir("system", "/system")` — **KHÔNG full wipe**, chỉ ghi đè
  cây file có trong gói (hiện tại chỉ `system/app/*`).
- Mỗi app nhúng cần chính xác **2 dòng `set_metadata`** (dir 0755 + apk 0644,
  `selabel u:object_r:system_file:s0`) chèn ngay sau block Stagelight —
  `embed.sh` tự chèn. **Tháo app = thủ công**: `rm -rf payload/system/app/<Name>`
  + xoá 2 dòng tương ứng trong updater-script (nên tự làm, không dùng regex
  chung chung).
- Dòng cuối `abort("XONG: ...")` là **CHỦ Ý**: `abort` được dùng để in hướng
  dẫn reboot sau khi cài xong (giữ cần gạt PHẢI trên vô lăng khi máy nổ → HU
  tự khởi động lại). Trình cài báo "lỗi" ở đây là hành vi mong muốn — đừng "sửa".

## Ràng buộc khi nhúng/hành app trên HU (từ dump đã verify)

- Android 9 (API 28), **arm64-v8a** (zygote64_32), no Google Play Services
  (xe không có GMS) → minSdk ≤ 28, cần GMS thì dùng microG như ReVanced đã cài.
- Màn 1920×1080 density 160, **landscape cố định** (`mSupportAutoRotation=false`)
  — UI phải landscape.
- Dalvik heap 512m (growth 384m), **JIT off** → app cần nhẹ.
- Không camera cho app (0 devices; camera thật chạy stack EVS riêng), không
  SIM/4G (modem init stopped), FM tuner bị tắt ở mức cấu hình.
- Wi-Fi & Bluetooth REACH **tự tắt/bật theo chu kỳ nguồn xe, do
  `com.android.car` điều phối** — app đừng giành quyền điều khiển theo nguồn.
- ADB Wi-Fi (`adb connect <ip>:5555`): `adbd` đã là **root (uid 0)** — root là
  thuộc tính của firmware (`ro.secure=0`), không phải của Magisk; trên máy này
  Magisk 30.7 chạy như daemon bổ sung do boot đã patch. Chi tiết:
  `docs/root-magisk-guide.md`. SELinux **Permissive** → mọi lệnh không cần
  `su`. Wi-Fi ADB hay rớt khi xe đổi trạng thái nguồn → `adb disconnect` rồi
  connect lại.

## Quirks của build HU khi thao tác qua ADB

- `am` là bản vendor lạ: lệnh là **`am start-activity`** (không phải `am start`).
- `am stack resize <stack_id> 0 0 960 968` nhận bounds **tách 4 arg bằng
  khoảng trắng**, không phải dạng `0,0,960,968`.
- Stack ID thay đổi sau mỗi lần AM reset/reboot xe → lấy lại bằng
  `am stack list`.
- Split-screen thật đã xác minh: start activity với `--windowingMode 3`
  (primary) rồi `--windowingMode 4` (secondary); chi tiết + toạ độ dock ở
  `docs/split-screen-recipe.md`.

## Luồng nghiên cứu & convention doc

- Vòng lặp: `./tools/dump-hu.sh <ip>:5555` → `dumps/<ip>-<timestamp>/` (46
  file) → chép fact tĩnh vào `docs/ihu689g.md`, **cite nguồn dạng
  `[props.txt]`**; chỉ ghi giá trị tĩnh theo firmware, không ghi trạng thái
  runtime (IP, thiết bị cắm, volume…).
- `dumpsys telephony.registry` gần như rỗng (không SIM); shell thường (không
  root) sẽ mất `/data/app`, `dmesg` và phần lớn section `dumpsys` — dump
  hiện tại lấy bằng quyền root nên đầy đủ.
- Log chỉ từ lần boot gần nhất (`logcat -d`); muốn lịch sử multiple boot thì
  kéo `mobilelog` từ storage của `com.mediatek.mtklogger`.

## Git hygiene

- Root `.gitignore`: `.DS_Store`, `._*` (AppleDouble), `dumps/`;
  `projects/usb-upgrade/.gitignore` thêm `dist/` → **dist/ là build output,
  KHÔNG commit** (một số dòng README còn nói commit artifact — đã cũ; hiện tại
  dist/ bị ignore).
- Nếu mất `payload/`, khôi phục bằng git (chính là source of truth); SignApk sẽ
  recompute MANIFEST.MF/CERT.SF nên chỉ cần dữ liệu payload + keys.
- Commit message style hiện tại: `type: mô tả` (refactor/feat/chore), tiếng Anh.
