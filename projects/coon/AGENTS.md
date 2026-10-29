# AGENTS.md — coon

App quản lý xe **Geely New Coolray** trên head unit **IHU689G** (2026 VN,
Android 9, Flyme Auto 1.8.0), mô hình tham chiếu: Sapo Drive / EX Sapo Central
(sapodrive.com). Coon **không chỉ là bản thay StageLight**: bật/giữ ADB Wi-Fi
(set `persist.adb.tcp.port=5555` trong `BOOT_COMPLETED` receiver), **tự mở app
khi khởi động xe** (cùng receiver mở `MainActivity` sau delay 4s để đè UI
Android Auto gốc, D10) và `MainActivity` hiển thị IP Wi-Fi chỉ là tính năng
nền tảng đầu tiên. App chạy
uid 1000 (`android.uid.system`), ký bằng AOSP platform testkey của firmware —
nền tảng đặc quyền cho các tính năng quản lý xe về sau.

Toàn bộ documentation dự án viết bằng **tiếng Việt** — giữ nguyên khi sửa docs.
Bối cảnh sản phẩm và các quyết định D1-D9: `docs/plan.md`. Quy tắc kiến trúc
bắt buộc: `docs/architecture.md`.

## Vị trí trong repo lớn

Thư mục này là con của repo `coolray-lab`. Các đường dẫn trong docs như
`projects/usb-upgrade/…`, `dumps/…` tính từ repo root; `scripts/sign.sh` dùng
`../usb-upgrade/keys/` tính từ project này (sign fail nếu sibling thiếu — đó là
bình thường trên máy khác, không "sửa" script).

## Lệnh

```bash
./gradlew assembleDebug           # app/build/outputs/apk/debug/app-debug.apk
./scripts/sign.sh debug           # ký platform key → dist/Coon.apk + apksigner verify
./gradlew :app:testDebugUnitTest  # toàn bộ unit test JVM
```

- Gradle cần **JDK 17**; Android SDK qua `$ANDROID_HOME` hoặc
  `local.properties` (gitignored).
- APK kết quả **phải ký lại** bằng `scripts/sign.sh` — debug signature không
  join được `android.uid.system` trên xe. Script tự chọn build-tools mới nhất,
  sign v2 scheme (`--v1/v3/v4` tắt, không sinh `.idsig`).
- Không có lệnh deploy; cài/verify trên xe qua kit `usb-upgrade` (Phase 1-2
  trong `docs/plan.md`, chưa chạy).

## Ràng buộc cứng — không tự ý thay đổi

Đây là các quyết định có chủ đích (`docs/plan.md` D1-D9), agent "giúp đỡ" bằng
cách nâng cấp sẽ phá app:

- **Khoá Android 9**: `compileSdk = minSdk = targetSdk = maxSdk = 28`. PM trên
  GU từ chối cài API ≠ 28. Không bump SDK, không dùng API > 28, không thêm
  `@RequiresApi` mới.
- **Java/Kotlin target 1.8** — yêu cầu của AGP khi compileSdk < 30.
- **Không AndroidX**: dùng `android.app.Activity` thuần, View system, plain
  state holder. Hệ quả: **không có `src/androidTest/`** (instrumentation cần
  AndroidX Test) — đây là khoảng trống chấp nhận, đừng tạo nó.
- **Phụ thuộc duy nhất ngoài SDK**: `kotlinx-coroutines-android`. Không thêm
  thư viện (DI, mocking,…) nếu không có quyết định mới trong plan.md.
- **Package `vn.coon.app` đã chốt** (D8): đổi package phá state
  `UPDATED_SYSTEM_APP` của PM.
- **An toàn tuyệt đối** (D6): chỉ set prop/settings. Không đụng partition, không
  patch boot, không sửa sepolicy.
- Manifest phải giữ `android:sharedUserId="android.uid.system"`.

## Kiến trúc

Chuẩn Google (UDF, SSOT, layer), bản quy định đầy đủ ở `docs/architecture.md`
(tài liệu tham chiếu ổn định — khi code mâu thuẫn với nó, sửa code). Tóm tắt
phần bắt buộc:

- Luồng một chiều: `DataSource → Repository → StateHolder → Activity`;
  receiver → `AdbRepository`. State chảy xuống, event đi lên.
- Package: màn hình/feature UI = package riêng (`main/`); nghiệp vụ =
  `data/<nghiệp vụ>/` với `source/` bên trong; entry point không gắn màn hình
  ở `receiver/`; `util/` chỉ hàm thuần (không state, không gọi repository).
- Tên class: interface `<Foo>Repository` + impl `Default<Foo>Repository`;
  `<Foo>DataSource` bọc đúng MỘT nguồn dữ liệu; state holder + `<Feature>UiState`
  (data class) expose qua `StateFlow`.
- UI element **không bao giờ** chạm data layer trực tiếp.
- DI thủ công: `AppContainer` giữ các repository lazy singleton; Activity và
  receiver lấy container từ `CoonApplication`.
- Chuỗi/màu người dùng nằm trong `res/values/`, không hardcode.

Ví dụ tham chiếu: thêm nghiệp vụ mới = copy cấu trúc `data/wifi/` (interface +
Default + source/ + test mirror). Thêm màn hình mới = package mới cạnh `main/`.

## Test

- Chỉ unit test JVM trong `src/test`, JUnit 4 + `kotlinx-coroutines-test`
  (không Robolectric, không Mockito).
- **Fake viết tay**: private class trong file test, implement interface của
  repository/data source — đây là pattern chuẩn của repo, không import mocking
  library.
- `unitTests.isReturnDefaultValues = true` trong `app/build.gradle.kts` cho phép
  instantiate class dùng `android.util.Log`/`android.os.*` trên JVM; test của
  `DefaultSystemPropertiesDataSource` chỉ assert "không ném" — đúng ý, không
  bỏ ở mức đó.
- Pattern test StateFlow: `runTest` + `backgroundScope +
  UnconfinedTestDispatcher(testScheduler)` (xem `MainStateHolderTest`).
- Test mirror đúng package của class được test.

## Gotchas

- `DefaultSystemPropertiesDataSource` dùng **reflection** gọi
  `android.os.SystemProperties` (hidden API) và nuốt lỗi bằng `runCatching` +
  `Log.w` — set prop fail không được làm crash app; giữ hành vi này.
- Log tag chuẩn: `"Coon"` trong `private companion object`.
- Lint đã tắt `ProtectedPermissions` và `ExpiredTargetSdkVersion` trong
  `app/build.gradle.kts` — warning này là chủ đích, đừng "sửa".
- `persist.adb.tcp.port` chỉ có hiệu lực với adbd sau khi adbd start lại → cơ
  chế chấp nhận cần reboot (giống StageLight). Các câu hỏi mở Q1-Q3
  (`docs/plan.md` §4) chưa có đáp án thực nghiệm.
- Verify T1-T7 trên xe **chưa làm** (mục TODO trong plan.md); đừng đánh dấu done
  nếu chưa có bằng chứng từ dumpsys/getprop trên máy thật.
- Icon launcher: `MAIN` + `LAUNCHER` là đủ cho launcher Flyme (đã điều tra,
  `docs/launcher-icon.md`); launcherplugin chỉ cần khi muốn widget nhúng home
  (Phase 3, deferred).
