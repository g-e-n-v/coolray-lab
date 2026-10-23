# projects/coon — Kế hoạch thực hiện

App quản lý xe trên head unit **IHU689G** (Geely New Coolray 2026 VN,
Android 9, Flyme Auto 1.8.0), tham chiếu sản phẩm: Sapo Drive / EX Sapo Central
(sapodrive.com) — bộ app trên HU cá nhân hoá head unit và điều khiển tính năng
xe. Tài liệu này khoá kế hoạch **nền tảng**: từ một máy còn nguyên trạng thái
nhà máy, flash kit qua menu kỹ thuật là có ADB Wi-Fi (tính năng thay
StageLight của Community Pack) + app hệ thống uid 1000 làm nền cho các tính
năng quản lý xe về sau. ADB Wi-Fi và màn hình IP chỉ là tính năng nền tảng,
không phải toàn bộ phạm vi sản phẩm.

Mọi kết luận trong tài liệu này đều dựa trên dữ liệu thật từ dump máy
22/10/2026 (`dumps/10-98-197-218-5555-20261022-164708/`), không suy đoán.

## 1. Mục tiêu và phạm vi

- **Tầm nhìn sản phẩm**: app quản lý xe Coolray trên HU theo mô hình Sapo
  Drive (sapodrive.com) — nhiều màn hình/feature: tiện ích HU, thông tin xe,
  tuỳ biến… Danh sách tính năng sẽ mở rộng dần; tài liệu này chỉ khoá phạm vi
  **nền tảng** dưới đây.
- **Nền tảng — Bật ADB Wi-Fi (TCP 5555)** trên GU từ bên trong Android, không
  cần PC, không cần jumper chân 5-6. Đây cũng là tính năng thay StageLight.
- **Nền tảng — Giữ ADB bật qua các lần khởi động lại** và chống lại các
  service nguồn xe (BDPower) có thể reset trạng thái.
- **Tính năng nhỏ trong nền tảng**: `MainActivity` hiển thị IP Wi-Fi khi có
  kết nối (tiện `adb connect`) — không phải trọng tâm sản phẩm, đừng nhầm đây
  là mục đích chính của app.
- **Trung tâm tiện ích (phase sau)**: launcher Settings Android, nút reboot
  GU, status ADB; tên project "coon" phản ánh hướng này.
- **Không thuộc phạm vi nền tảng**: root (Magisk nằm ở partition `boot`, xem
  `docs/root-magisk-guide.md`), sửa sepolicy, can thiệp partition khác.

## 2. Bối cảnh: StageLight hoạt động nhờ gì (bằng chứng từ dump)

| #  | Fact                                                                  | Bằng chứng                          |
| -- | --------------------------------------------------------------------- | ----------------------------------- |
| 1  | StageLight chạy **uid=1000 (`android.uid.system`)**                    | `dumpsys-package.txt:7108-7109`     |
| 2  | Là **system app** được update qua /data (`UPDATED_SYSTEM_APP`)         | `dumpsys-package.txt:7121,7131`     |
| 3  | Signature `b4addb29` **trùng cert platform của firmware** (giống `com.flyme.auto.customize`, app hệ thống Flyme) | `dumpsys-package.txt:7129` vs `:7158` |
| 4  | Firmware dùng **AOSP platform testkey**, serial `B3998086D056CFFA`     | `projects/usb-upgrade/scripts/build.sh:19` |
| 5  | ADB Wi-Fi hiện tại đang hoạt động qua **`persist.adb.tcp.port=5555`**  | `props.txt:167`                     |
| 6  | `ro.secure=0`, `ro.debuggable=1`, `ro.adb.secure=1` (build non-secure) | `props.txt:508,449,275`             |
| 7  | **SELinux permissive** (`androidboot.selinux=permissive`)              | `kernel-cmdline.txt:1`              |
| 8  | `adbd --root_seclabel=u:r:su:s0` (shell ADB là root sẵn)               | `init-rcs.txt:1026`                 |
| 9  | Kèm theo là **launcherplugin** (cũng uid=1000, có `BootReceiver`, `MemoryGuardService`) để hiện icon trên launcher Flyme Auto | `dumpsys-package.txt:9722`, `logcat-events.txt:257,611` |
| 10 | targetSdk/minSdk = 28, arm64-v8a, apkSigningVersion 2                  | `dumpsys-package.txt:7114-7119`     |

Đọc từ bảng: cơ chế của StageLight rất mỏng. Chỉ cần một app **chạy với
uid 1000** gọi `SystemProperties.set("persist.adb.tcp.port", "5555")`, mọi thứ
còn lại là chuẩn AOSP (adbd đọc prop này lúc khởi động). Nó yêu cầu reboot GU
vì prop persist chỉ có hiệu lực với adbd khi adbd start lại.

Điều kiện tiên quyết khiến điều này khả thi trên firmware này:

- Firmware ký bằng AOSP platform testkey (public key của AOSP) nên **bất kỳ ai
  cũng ký được app join `android.uid.system`**. PM Android 9 kiểm tra chữ ký
  platform cho sharedUserId và chấp nhận.
- SELinux permissive: check mac của property service chỉ log, không chặn, nên
  uid 1000 set được prop `persist.adb.tcp.port` (default namespace).

## 3. Quyết định then chốt

| #   | Quyết định                                                                          | Lý do                                                                                                  | Nhược điểm chấp nhận                                                |
| --- | ----------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------- |
| D1  | **App hệ thống**: `sharedUserId="android.uid.system"` + ký bằng AOSP platform testkey | Duy nhất cách có đặc quyền set prop từ trong Android mà không cần ADB sẵn (máy factory không có ADB để leo) | Chỉ hoạt động trên firmware dùng testkey; firmware prod-sign thì chết |
| D2  | **MVP không UI, không launcherplugin**                                               | Flyme Auto launcher không hiển thị app thường, StageLight phải kèm plugin riêng; `persist.*` prop chỉ cần set MỘT lần, sống qua mọi reboot, nên UI toggle gần như không cần thiết | Không có nút bật/tắt; muốn tắt phải xóa prop qua ADB                |
| D3  | **Cơ chế: `persist.adb.tcp.port=5555`** (chuẩn AOSP), không dùng `service.adb.tcp.port` | Persist sống qua reboot, đúng cơ chế đã thấy trên máy thật (`props.txt:167`)                           | Cần reboot để có hiệu lực (chấp nhận, giống StageLight)             |
| D4  | **Tự đề phòng**: re-set prop trong `BOOT_COMPLETED` receiver mỗi lần boot             | Rẻ (vài dòng), chống lại việc BDPower/service nguồn reset prop                                          | Receiver có thể bị hạn chế bởi Flyme Auto (cần verify, xem Q3)      |
| D5  | **Phân phối qua kit usb-upgrade**, cài vào `/system/app/Coon/` (dùng `embed.sh`) | Máy nhà máy không có ADB, không thể `adb install`; kit là kênh duy nhất; tái dùng toàn bộ toolchain đã có | Phải build kit riêng per variant                                    |
| D6  | **An toàn tuyệt đối**: chỉ set prop/settings, không đụng partition, không patch boot   | Failure mode xấu nhất = ADB không bật; không có kịch bản brick                                           | Không giải quyết được case boot không lên (đó là việc của usb-upgrade) |
| D7  | **Path B dự phòng (no-app)**: `update-binary` của kit ghi trực tiếp `/data/property/persistent_properties` khi flash qua recovery | Chạy root trong recovery, không phụ thuộc chữ ký app; dùng khi D1 bị từ chối trên variant khác | Cần nắm format persistent_properties của Android 9; phải test trên xe thật |
| D8  | **Package name**: `vn.coon.app` (chốt trước build đầu tiên, không đổi sau)      | Đổi package sau này phá state `UPDATED_SYSTEM_APP` của PM                                                |                                                                     |
| D9  | **Khoá Android 9**: `compileSdk = minSdk = targetSdk = maxSdk = 28`, Java/Kotlin target 1.8 | App chỉ tồn tại trên nền đã verify: PM từ chối cài trên API ≠ 28, compiler không tham chiếu được API > 28 | Không port được sang firmware khác nếu không nâng SDK có chủ đích (gỡ D9, không phải sửa code vội) |

> **Cập nhật sau điều tra** (`docs/launcher-icon.md`): giả định trong D2
> "Flyme Auto không hiển thị app thường, StageLight phải kèm plugin" là **sai** —
> icon launcher chuẩn Android (`MAIN` + `LAUNCHER`) hiện được trên launcher
> Flyme. App cũng đã có `MainActivity` (hiển thị IP Wi-Fi), không còn "MVP
> không UI". D2 chỉ còn đúng phần **không launcherplugin** (chỉ cần khi muốn
> widget nhúng home).

## 4. Vấn đề kỹ thuật cần đạt được (mục tiêu kiểm chứng)

| #   | Mục tiêu                                                                       | Cách verify trên xe                                                | Trạng thái |
| --- | ------------------------------------------------------------------------------ | ------------------------------------------------------------------- | ---------- |
| T1  | APK ký đúng platform testkey, cert khớp firmware                                | `dumpsys package` → signature trùng `b4addb29`                      | TODO       |
| T2  | PM chấp nhận `sharedUserId`, app nhận **uid=1000**                              | `dumpsys package <pkg>` → `userId=1000`                             | TODO       |
| T3  | Cài qua kit vào `/system/app/Coon/`                                      | flags chứa `SYSTEM`                                                 | TODO       |
| T4  | Set `persist.adb.tcp.port=5555` thành công từ uid 1000                          | `adb shell getprop persist.adb.tcp.port`                            | TODO       |
| T5  | adbd listen TCP 5555 sau reboot                                                 | `adb connect <ip>:5555` rồi `adb shell id` → `uid=0` `u:r:su:s0`    | TODO       |
| T6  | `BOOT_COMPLETED` receiver chạy và re-set prop                                   | logcat thấy `am_proc_start ... <pkg>` broadcast lúc boot            | TODO       |
| T7  | Idempotent qua nhiều reboot, không double-set, không lỗi PM                     | reboot 3 lần, so dumpsys + getprop mỗi lần                          | TODO       |
| T8  | (Phase 3) Icon trên launcher — chuẩn Android là đủ, không cần launcherplugin (`docs/launcher-icon.md`) | icon hiện trên màn hình chính                                       | Deferred   |
| T9  | (Phase 3) Toggle tắt ADB trong app (xóa prop + restart adbd)          | prop rỗng, port 5555 đóng sau reboot                                | Deferred   |

### Câu hỏi mở cần trả lời bằng thực nghiệm

- **Q1**: Trên firmware này, set `service.adb.tcp.port` có trigger
  `stop adbd` / `start adbd` ngay trong init không (AOSP chuẩn có trong
  `init.usb.rc`)? Nếu có, có thể bỏ yêu cầu reboot. Grep `init-rcs.txt` chưa
  thấy trigger này; cần test trên xe.
- **Q2**: `Settings.Global.ADB_ENABLED` có cần set không, hay adbd TCP mode
  không phụ thuộc setting này? Thử nghiệm: chỉ set prop, không đụng setting.
- **Q3**: `BDPowerManagerService` có reset `persist.adb.tcp.port` hoặc kill
  adbd khi xe nghỉ không? (docs ghi nhận ADB Wi-Fi rớt khi đổi nguồn xe; nhưng
  đó có thể chỉ là Wi-Fi, không phải prop). Nếu prop bị reset, receiver D4
  là bắt buộc; nếu chỉ adbd bị kill, cần thêm re-apply theo broadcast nguồn.

## 5. Permissions cần có

**Chìa khóa chính là sharedUserId, không phải permission list:**

```xml
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="vn.coon.app"
    android:sharedUserId="android.uid.system">

    <uses-permission android:name="android.permission.WRITE_SECURE_SETTINGS" />
    <uses-permission android:name="android.permission.RECEIVE_BOOT_COMPLETED" />
    <uses-permission android:name="android.permission.REBOOT" />
</manifest>
```

- Join `android.uid.system` kế thừa toàn bộ permission platform mà shared user
  đó đã được grant (trên máy này bao gồm `WRITE_SECURE_SETTINGS`, `REBOOT`...).
  Khai báo tường minh vẫn cần để compile và để PM grant đúng lúc scan.
- `WRITE_SECURE_SETTINGS`: set `Settings.Global.ADB_ENABLED=1` (nếu Q2 trả lời
  là cần).
- Không cần: `INTERNET` (tính năng nền tảng chỉ đọc trạng thái cục bộ), root
  binary, Magisk.
- SELinux: không cần patch nào trên firmware hiện tại (permissive). Nếu gặp
  firmware enforcing thì không khắc phục được bằng app, rẽ D7.

**Build yêu cầu:** minSdk/targetSdk 28 (khớp Android 9; StageLight dùng đúng
vậy, targetSdk cao hơn có thể bị hạn chế implicit broadcast), arm64-v8a,
không Google Play Services, UI landscape (nếu có UI ở phase sau).

## 6. Kế hoạch thực hiện

### Phase 0 — Scaffold + build offline (không cần xe)

1. Tạo Android project (Gradle) `vn.coon.app`, manifest như mục 5,
   một `BootReceiver` + một `AdbEnabler` (~20 dòng code).
2. Build debug APK, ký lại bằng `apksigner` với
   `projects/usb-upgrade/keys/platform.pk8` + `aosp_platform.x509.pem`
   (v2 signing scheme, khớp `apkSigningVersion=2` của StageLight).
3. Deliverable: `Coon.apk`. Exit: `apksigner verify` pass, cert serial
   đúng.

### Phase 1 — Verify đặc quyền trên xe mẫu (máy đã có ADB: 3C6525_SW0A5LV)

1. `adb install -r Coon.apk` → nó sẽ trở thành update của system app
   nếu StageLight kit đã cài; hoặc test độc lập bằng `pm install` sau khi push
   vào `/system/app` qua root shell (máy này có root shell).
2. Verify T1, T2, T4: dumpsys signature/uid, getprop sau khi force-stop app và
   chạy logic thủ công.
3. Đoán thử Q1/Q2 trên xe: set `service.adb.tcp.port` xem adbd có restart ngay
   không (logcat + `ss -ltn | grep 5555`).
4. Deliverable: xác nhận đặc quyền + cơ chế. Exit: T2 + T4 pass.

### Phase 2 — Tích hợp kit + flash từ trạng thái nhà máy (máy khác)

1. `embed.sh Coon.apk Coon` → payload, `build.sh`, `verify.sh`.
2. Flash qua menu kỹ thuật trên máy còn nguyên (quy trình trong
   `projects/usb-upgrade/README.md`, mã `#*<MM+10><DD><HH>`).
3. Verify T3, T5, T6, T7: từ máy chưa có ADB, sau một lần flash + reboot là
   `adb connect` được.
4. Deliverable: kit `dist/<variant>/` chỉ chứa Coon, thay thế hoàn toàn
   kit StageLight-only. Exit: T5 pass trên máy factory.

### Phase 3 — UI của app quản lý xe (không còn optional)

Tầm nhìn mới đặt app thành sản phẩm chính (tham chiếu Sapo Drive,
sapodrive.com): UI không còn là phase optional như kế hoạch gốc. Mở rộng từ
`MainActivity` hiện tại (IP Wi-Fi) thành màn hình trung tâm + các màn hình
tính năng xe; mỗi màn hình = package riêng theo `docs/architecture.md` mục 4.

1. Nghiên cứu cơ chế launcherplugin của Flyme Auto (StageLight dùng
   `com.dmkcv.stagelight.launcherplugin` với `BootReceiver`,
   `MemoryGuardService`; xem `dumpsys-activity.txt` ServiceRecord) — chỉ cần
   khi muốn widget nhúng home, icon thường không cần (`docs/launcher-icon.md`).
2. Thêm UI toggle bật/tắt + shortcut mở Android Settings (StageLight có tính
   năng "Settings Android: launch via StageLight" theo checkbuy market).
3. Exit: icon hiện trên launcher, toggle hoạt động cả 2 chiều (T8, T9).

### Phase 4 — Mở rộng variant

Kit per variant như usb-upgrade: `3C6525_SW0A5LV` (Coolray L VN), các folder
theo checkbuy (`3C5024_SW0SX11_coolray_l`, `3C5625_SW0SX11_coolray_g`,
`3C6325_SW0SX11_x50_plus`). Mỗi variant cần verify T1-T5 lại từ đầu vì
platform cert có thể khác.

## 7. Rủi ro và giảm thiểu

| Rủi ro                                                     | Ảnh hưởng                                                          | Giảm thiểu                                                                        |
| ---------------------------------------------------------- | ------------------------------------------------------------------ | --------------------------------------------------------------------------------- |
| Variant khác dùng platform cert production                  | PM từ chối sharedUserId, app thành uid thường, mất quyền set prop   | Rẽ D7 (recovery ghi persistent_properties, chạy root, không phụ thuộc key)         |
| SELinux enforcing trên SW tương lai                         | Property service chặn set từ uid 1000                               | Rẽ D7                                                                             |
| OTA hãng đè `boot` và dọn `/system`                         | Mất app + mất prop                                                  | Làm lại kit (đã là flow quen thuộc); prop persist nằm ở /data, có thể sống         |
| BDPower reset prop / kill adbd khi xe nghỉ                  | ADB biến mất sau khi xe tắt                                         | D4 re-apply mỗi boot; nếu bị reset runtime thì bổ sung broadcast nguồn             |
| Flyme Auto hạn chế BOOT_COMPLETED của app mới               | D4 vô hiệu                                                          | Verify Q3; fallback: re-set khi app bị launch bằng bất kỳ cách nào                 |
| Brick                                                       | Không áp dụng                                                       | D6: app không đụng partition; worst case là app vô dụng, gỡ bằng kit               |

## 8. Tiêu chí nghiệm thu (nền tảng ADB — cột mốc đầu của app quản lý xe)

1. Máy **chưa từng can thiệp**: flash kit coon → reboot GU (giữ gạt
   phải) → `adb connect <ip>:5555` → `adb shell id` trả `uid=0(root)`,
   context `u:r:su:s0`.
2. Từ đó đi tiếp được toàn bộ quy trình root trong `docs/root-magisk-guide.md`
   mà không cần StageLight.
3. Reboot 3 lần liên tiếp: ADB Wi-Fi vẫn lên mỗi lần (T7).
4. Các chức năng xe bình thường: không boot loop, không lỗi PM trong logcat
   so với baseline.

## 9. Tham chiếu

- `projects/usb-upgrade/README.md` — toolchain kit, embed.sh, build/verify
- `docs/root-magisk-guide.md` — quy trình root, mối quan hệ ADB/Magisk
- `docs/hu-adb-dump.md` — danh sách package trên GU (StageLight ở dòng 73)
- Dump: `dumpsys-package.txt`, `props.txt`, `init-rcs.txt`,
  `kernel-cmdline.txt`, `logcat-events.txt` trong
  `dumps/10-98-197-218-5555-20261022-164708/`
- Nguồn ngoài: checkbuy.ru/geely/guide (StageLight cài kèm Market, bật ADB
  Wi-Fi thay jumper), checkbuy.ru/geely/market (StageLight by Dmitry, v1.2,
  21.9 MB, Utilities), drive2.ru/l/737219798718484607 (wireless ADB là tính
  năng Android, bật bằng `adb tcpip 5555`)
