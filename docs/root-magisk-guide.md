# Root Magisk trên IHU689G — tái dựng quy trình cho HU từ trạng thái nhà máy

Ghi lại **lần đầu làm Magisk trên máy này** (đã hoạt động, verify bằng dump
22/10/2026) để lặp lại trên **các HU khác còn nguyên trạng thái nhà máy**. Mọi
fact đều cite file dump (`dumps/10-98-197-218-5555-20261022-164708/`).

## TL;DR

- **Root ADB có sẵn là của firmware, không phải của Magisk**: `/default.prop`
  (ramdisk boot) chứa `ro.secure=0` + `ro.debuggable=1`
  `[props-files.txt:324-333]`, và `/init.usb.rc` khởi động
  `adbd ... --root_seclabel=u:r:su:s0` — đúng chuẩn AOSP cho build non-secure
  `[init-rcs.txt:1023-1030]`. Chỉ cần **bật ADB** (StageLight / menu kỹ thuật)
  là có shell `uid=0`, context `u:r:su:s0` `[device-id.txt]` — nhưng **không có
  Magisk daemon, không `su` manager, không module**.
- **Magisk được bơm bằng patch partition `boot`** (p33, 32 MiB): rootfs/ramdisk
  chứa khối magisk trong `/init.rc` (exec `--post-fs-data` / `--service` /
  `--boot-complete`) và `/init.zygote{32,64}.rc` (`onrestart ·
  --zygote-restart`) `[init-rcs.txt:856-870,1147,1162]` — không thể là stock;
  `/sbin` là tmpfs của magisk `[mounts.txt:4]` `[disk.txt:2]`.
- Boot đã patch **vẫn boot với `androidboot.verifiedbootstate=green`,
  `flash.locked=1`, `selinux=permissive`** `[kernel-cmdline.txt]` → LK của dòng
  này không kiểm AVB thực, **không cần unlock bootloader**.
- Manager hiện tại: **Magisk 30.7 (versionCode 30700, topjohnwu chính chủ)**,
  cài dạng **data app**, `firstInstallTime 2026-10-10 17:22:47`
  `[dumpsys-package.txt:9571-9593]`.

## 1. Phân biệt hai trạng thái root (tránh nhầm lần nữa)

|                             | Root ADB (nhà máy)                       | Root Magisk (đã bơm tay)       |
| --------------------------- | ---------------------------------------- | ------------------------------ |
| Nguồn                       | `ro.secure=0` + `init.usb.rc` chuẩn AOSP | patch ramdisk partition `boot` |
| Shell ADB                   | `uid=0`, `u:r:su:s0`                     | như trên (không đổi)           |
| `/sbin`                     | không tồn tại                            | tmpfs magisk                   |
| Manager app                 | không                                    | Magisk hiển thị "Installed"    |
| Module / binary `magisk`    | không                                    | có, chạy từ hook ramdisk       |
| App check "root qua Magisk" | FAIL                                     | PASS                           |

Đối chiếu: `dumpsys-package.txt` ghi chú _"System package com.topjohnwu.magisk
no longer exists; it's data will be wiped"_ (10/10 17:19) — giai đoạn trước
manager từng được nhúng dạng system-app qua OTA riêng, sau khi reflash
`/system` PM quét dọn → kết luận: **Magisk dạng data app là đủ**, quyết định
thành/bại của "Magisk hiển thị có" nằm ở **boot partition**.

## 2. Timeline thật của máy này (từ PM notes trong dump)

| Thời điểm   | Sự kiện                                                                 |
| ----------- | ----------------------------------------------------------------------- |
| 9/21 ~21:37 | `com.coolray.market` dạng system-app bị quét (reflash kit đã bỏ market) |
| 9/21 21:46  | `com.geekit.wifi`… — quét dọn các thí điểm                              |
| 10/10 12:23 | reflash: `app.revanced.…` / `rvx.youtube` dạng system-app bị xoá        |
| 10/10 17:19 | Magisk manager **dạng system-app** bị quét dọn                          |
| 10/10 17:22 | cài lại **Magisk 30.7 dạng data app** — trạng thái giữ đến 22/10        |
| trước 22/10 | boot p33 đã mang ramdisk Magisk (evidence rootfs)                       |

Đây chính là "làm rất nhiều thứ": giữ Magisk dạng **data app** là đủ — phần biến
Magisk thành root thật nằm ở **boot partition**.

## 3. Quy trình lặp trên HU khác từ nhà máy

> Luôn nổ máy trong suốt thao tác (BDPower tắt Wi-Fi/ADB khi xe nghỉ → dễ đứt
> kết nối giữa chừng).

### Bước A — Mở ADB (chỉ máy chưa can thiệp)

1. **Flash kit StageLight-only** của repo qua menu kỹ thuật (USB FAT32, cổng
   USB **trái**, cắm khi xe nổ, chờ toast "Inserted USB Device"):
   - `projects/usb-upgrade/dist/3C6525_SW0A5LV/` (máy này; chưa có dist thì
     chạy `./scripts/build.sh`); máy khác lấy kit theo variant — xem mục 4.
   - App **Điện thoại → mã menu kỹ thuật**: `#*` + (tháng+10) + (ngày) + (giờ
     12h), vd 21/9 ~18h → `#*19216`.
   - 「U盘升级」→ chờ màn recovery `GOTOVO` (Status 7 là bình thường) → giữ lâu
     **gạt phải vô lăng** cho GU tự reboot.
2. Mở **StageLight**, bật 「ADB Wi-Fi / 无线ADB」 → **phải REBOOT GU** (giữ gạt
   phải) thì ADB Wi-Fi mới lên.
3. Xác minh root shell có sẵn:
   ```bash
   adb connect <IP_GU>:5555
   adb shell id     # kỳ vọng uid=0(root) context u:r:su:s0
   ```

### Bước B — Backup boot + (khuyến nghị) recovery

```bash
adb shell "mkdir -p /update/hubak \
  && dd if=/dev/block/bootdevice/by-name/boot of=/update/hubak/boot.img \
  && dd if=/dev/block/bootdevice/by-name/recovery of=/update/hubak/recovery.img \
  && sync"
adb pull /update/hubak ./hubak-backup    # LƯU NGOÀI XE (PC + USB)
```

`boot = mmcblk0p33` (32 MiB), `recovery = mmcblk0p2` `[block-by-name.txt]`.
Partition `boot` không được mount → dd an toàn (partition `/update` 10 GiB
rảnh, dùng làm workspace).

### Bước C — Cài Magisk Manager

```bash
adb install -r Magisk-30.7.apk      # bản chính chủ: github.com/topjohnwu/Magisk
```

"Environment: N/A" trong app là **bình thường trước khi patch boot** (không có
Play Store trên HU nên phải install qua sideload).

### Bước D — Patch boot qua app Magisk

1. Đặt file boot gốc vào nơi app đọc được:
   ```bash
   adb push ./hubak-backup/boot.img /update/boot-orig.img
   ```
2. Trên HU: **Magisk → Install → Select and Patch a File** → chọn
   `/update/boot-orig.img` → app tạo `/sdcard/Download/magisk_patched-*.img`.
3. Kéo file patched về PC rồi push lại:
   ```bash
   adb pull /sdcard/Download/magisk_patched-*.img
   adb push magisk_patched-*.img /update/boot-patched.img
   ```

### Bước E — Ghi lại partition boot

```bash
adb shell "dd if=/update/boot-patched.img of=/dev/block/bootdevice/by-name/boot && sync"
adb reboot
```

Nếu treo logo mới boot → giữ **gạt phải vô lăng** cho GU khởi động lại (cùng
thủ tục như khi flash kit).

### Bước F — Kiểm chứng sau boot

```bash
adb shell grep -m1 magisk /proc/mounts   # kỳ vọng: "magisk /sbin tmpfs rw …"
adb shell ls /sbin                       # magisk + các công cụ daemon
adb disconnect && adb connect <IP>:5555 && adb shell id   # vẫn uid=0
```

App **Magisk** hiển thị "Installed" (30.7). Trạng thái trên xe này khớp đúng
các line dump: `[mounts.txt:4]`, `[init-rcs.txt:856-870]`.

## 4. Khi HU khác chưa biết targetName

| targetName                  | Xe                        | Kit           |
| --------------------------- | ------------------------- | ------------- |
| `3C6525_SW0A5LV`            | Coolray VN 2026 (máy này) | repo tự build |
| `3C6525_SW0SX11_coolray_g2` | Coolray G2                | checkbuy pack |
| `3C5024_SW0SX11_coolray_l`  | Coolray L / Binyue L      | checkbuy pack |
| `3C5625_SW0SX11_coolray_g`  | Coolray G                 | checkbuy pack |
| `3C6325_SW0SX11_x50_plus`   | Belgee X50+               | checkbuy pack |

Đọc targetName từ menu kỹ thuật **「拷贝IHU日志」** (copy IHU logs) — tìm
`TestMain: targetName = ...` trong file log trên USB. Flash kit có folder đúng
targetName; khác targetName sẽ bị từ chối.

## 5. Rủi ro & quy tắc

- **Tuyệt đối không bấm 「CAN Configuration」 hoặc 「Format Data」** trong menu kỹ
  thuật → brick.
- Chỉ đụng `boot` (p33). **Không** đụng `lk`/`lk2`, `sec1`, `tee*`.
- **OTA SW từ hãng** viết lại `boot` và gỡ StageLight → phải làm lại kit + boot
  patch; luôn giữ `boot-orig.img` ngoài xe.
- Boot hỏng: dùng mtkclient (4PDA 1109487 — đọc partition boot qua BROM →
  patch lại bằng Magisk → ghi lại); cần tháo máy + jumper. KHÔNG tự "fix nhanh"
  qua menu kỹ thuật.
- Wi-Fi ADB rớt khi `BDPowerManagerService` đổi nguồn xe → `adb disconnect` rồi
  connect lại.
- `am` của máy là `am start-activity`; mọi lệnh shell không cần `su` prefix.
- `docs/hu-adb-dump.md` từng ghi root "nhờ Magisk trên máy" — **không chính
  xác**: root là thuộc tính của firmware (mục 1), Magisk chỉ là daemon đặt
  thêm trên nền đó.

## 6. Nguồn ngoài

- checkbuy.ru `geely/guide` + `geely/changelog`: jumper chân 5-6 (ADB USB),
  installer tự "remount/root" trên máy chưa can thiệp.
- 4PDA topic 1109487 (st=200): Magisk trên GU qua ADB — MTKClient dump boot
  partition → patch bằng Magisk → ghi lại.
- 4PDA topic 1085149 (st=680): CoolRay New — mất root sau reinstall, xin
  `boot.img` để patch.
- Magisk docs: `topjohnwu.github.io/Magisk/install.html` (patch a file +
  flash).

## 7. Root không cần ADB trên xe đích — flash boot qua usb-upgrade

Magisk daemon sống trong **ramdisk của partition `boot`** → gói OTA nhúng một
`BOOTIMG.img` (boot gốc đã patch Magisk) và flash vào `boot` bằng chính
updater-script là đủ root, **không cần ADB trên xe đích** (flow flash qua menu
kỹ thuật đã verify với payload /system; boot flash là cùng cơ chế, thêm bước
ghi partition).

Kiểm chứng kỹ thuật offline (trên chính `update-binary` đang ship trong
repo — `strings update-binary`):

- updater có: `run_program`, `read_file`, `sha1_check`, `file_getprop`,
  `assert`, `package_extract_file`, `getprop`, `mount`, `set_metadata`,
  `delete*`, `symlink`, `block_image_update`, `format`, `wipe_block_device`.
- updater **KHÔNG có** `write_raw_image` → flash boot bắt buộc dùng
  `run_program("/system/bin/dd", ...)`.
- Pattern `ifelse(run_program("/system/bin/sh","-c",...) == "0", ...)` có sẵn
  trong updater-script gói checkbuy stock (chạy thật trên updater này) →
  run_program trả exit-code dạng chuỗi, so sánh được.

Chuẩn bị input (một lần cho cả fleet cùng firmware build):

```bash
adb shell "dd if=/dev/block/platform/bootdevice/by-name/boot of=/update/boot-orig"
adb pull /update/boot-orig .
shasum -a 1 boot-orig | awk '{print $1}'    # boot-orig-sha1
# patch 1 bản copy boot-orig bằng Magisk 30.7 (mục 3 bước C-D) -> boot-patched
adb pull /sdcard/Download/magisk_patched-*.img    # boot-patched.img
```

Build gói root (stock payload + root):

```bash
cd projects/usb-upgrade
./scripts/embed.sh ~/Downloads/Magisk-30.7.apk Magisk   # Manager UI (khuyến nghị)
./scripts/embed-boot.sh boot-patched.img <boot-orig-sha1>
./scripts/build.sh && ./scripts/deploy.sh <USB_VOLUME>
```

Cơ chế guard trong block chèn (toàn bộ là `assert` — sai điều kiện = abort,
KHÔNG ghi gì):

1. `file_getprop("/system/build.prop", "ro.build.version.incremental") == "20"` —
   khóa đúng build SW0A5LV. Đọc từ `/system/build.prop` chứ **không phải**
   `/default.prop`: dump `[props-files.txt]` cho thấy `/default.prop` (ramdisk
   boot) **không chứa** `ro.build.version.incremental` (chỉ `/system/build.prop`
   có, dòng 7). `/system` được mount sẵn ở đầu updater-script nên block chạy
   sau vẫn đọc được.
2. `sha1_check(read_file(<boot dev>, 32 MiB)) == <boot-orig-sha1>` — xe đích
   phải đang chạy boot gốc của build này; xe đã patched/khác build → abort
   (idempotent, chống flash nhầm).
3. sha1 của `BOOTIMG.img` khớp package → chống package hỏng.
4. `run_program("/system/bin/dd", ...) == "0"`; `sync`; đọc lại partition đúng
   số byte của patched image khớp sha → xác nhận ghi thành công.

Gỡ phần root khỏi gói: `./scripts/embed-boot.sh --remove` → build lại = gói
StageLight-only mặc định.

Lưu ý:

- `BOOTIMG.img` chỉ dùng được cho **cùng targetName + cùng build**
  (`incremental=20`); xe variant khác (`3C5024/3C5625/x50/SX11…`) phải backup +
  patch boot của chính_variant nó (vẫn cần ADB 1 lần trên 1 xe mẫu variant đó
  — firmware root-ADB miễn phí; checkbuy update.zip KHÔNG chứa boot.img nên
  không có đường tắt nào khác).
- Recovery có thể enforce SELinux khác môi trường boot — nếu policy chặn
  `read_file`/`dd` trên block dev: assert fail → gói abort trước khi ghi gì →
  an toàn, rẽ về ADB route (mục 3). Chưa verify trên xe thật — flash thử build
  này tương tự như build thường trước khi dùng đại trà.
- Boot mới không khởi động được → cứu bằng mtkclient với `boot-orig` backup
  (tháo máy + jumper chân 5-6, 4PDA 1109487). Giữ backup ngoài xe.
- OTA SW từ hãng sẽ ghi đè `boot` → mất Magisk; chạy lại mục 7 không cần ADB.
