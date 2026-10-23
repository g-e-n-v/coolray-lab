# projects/coon

App quản lý xe **Geely New Coolray** trên head unit **IHU689G** (2026 VN,
Android 9, Flyme Auto 1.8.0), mô hình tham chiếu: Sapo Drive / EX Sapo Central
(sapodrive.com) — bộ app trên HU cá nhân hoá head unit và điều khiển tính năng
xe. Coon **không chỉ là bản thay StageLight**: app chạy uid 1000
(`android.uid.system`), ký bằng platform testkey của firmware — nền tảng đặc
quyền cho mọi tính năng. Bật/giữ ADB Wi-Fi (`BootCompleteReceiver` set
`persist.adb.tcp.port=5555` mỗi lần boot) và UI theo `docs/prototype.html`
(sidebar Home/Ứng dụng/Về chúng tôi, màn Home đổi màu xe, status bar Wi-Fi)
chỉ là tính năng nền tảng đầu tiên.

## Tài liệu

- [`docs/plan.md`](docs/plan.md) — mục tiêu, quyết định D1-D8, mục tiêu kiểm
  chứng T1-T9, kế hoạch phase
- [`docs/architecture.md`](docs/architecture.md) — kiến trúc chuẩn Kotlin
  Android (tham chiếu ổn định: layer, cấu trúc thư mục/package, quy tắc đặt
  tên, phụ thuộc, test)
- [`docs/launcher-icon.md`](docs/launcher-icon.md) — cơ chế launcher Flyme

## Build

Yêu cầu: JDK 17 để chạy Gradle (bytecode target là Java 8), Android SDK
(`$ANDROID_HOME` hoặc `local.properties`).

```bash
./gradlew assembleDebug          # app/build/outputs/apk/debug/app-debug.apk
./scripts/sign.sh debug          # ký platform key → dist/Coon.apk + apksigner verify
```

Quy ước build: **khoá Android 9** — `compileSdk = minSdk = targetSdk =
maxSdk = 28`: PM từ chối cài trên API ≠ 28, compiler không tham chiếu được API
> 28; Java/Kotlin target 1.8 (yêu cầu của AGP khi compileSdk < 30). Không dùng
AndroidX; phụ thuộc duy nhất ngoài SDK là `kotlinx-coroutines` (thuần Kotlin,
minSdk 21, cho `StateFlow`).

## Cấu trúc hiện tại

Tuân thủ `docs/architecture.md` (mục 2, 4, 5, 6):

```
app/src/
├── main/
│   ├── AndroidManifest.xml            sharedUserId, permissions, entry points
│   ├── kotlin/vn/coon/app/
│   │   ├── CoonApplication.kt  Application, giữ AppContainer
│   │   ├── AppContainer.kt            DI thủ công: repository singletons
│   │   ├── main/                      UI layer — package màn hình
│   │   │   ├── MainActivity.kt        shell: sidebar + clock + status bar + điều hướng 3 tab
│   │   │   ├── HomeView.kt            màn Home: ảnh xe + bộ đổi màu
│   │   │   ├── MainStateHolder.kt     plain state holder (không AndroidX)
│   │   │   └── MainUiState.kt         data class trạng thái
│   │   ├── data/
│   │   │   ├── adb/
│   │   │   │   ├── AdbRepository.kt           interface, SSOT
│   │   │   │   ├── DefaultAdbRepository.kt
│   │   │   │   └── source/
│   │   │   │       ├── SystemPropertiesDataSource.kt
│   │   │   │       └── DefaultSystemPropertiesDataSource.kt   reflection
│   │   │   └── wifi/
│   │   │       ├── WifiStatus.kt              model: connected + ssid + ipAddress
│   │   │       ├── WifiStatusRepository.kt    StateFlow<WifiStatus>
│   │   │       ├── DefaultWifiStatusRepository.kt   gộp 2 nguồn
│   │   │       └── source/
│   │   │           ├── WifiNetworkDataSource.kt
│   │   │           ├── DefaultWifiNetworkDataSource.kt  ConnectivityManager
│   │   │           ├── WifiSsidDataSource.kt
│   │   │           └── DefaultWifiSsidDataSource.kt     WifiManager (SSID)
│   │   ├── receiver/
│   │   │   └── BootCompleteReceiver.kt   entry point → AdbRepository
│   │   └── util/
│   │       ├── InetAddresses.kt     hàm thuần chọn/format IP
│   │       └── Ssid.kt              hàm thuần clean SSID
│   └── res/                          layout/prototype UI, drawable-nodpi ảnh xe
└── test/kotlin/vn/coon/app/    unit test JVM, mirror package
    ├── main/MainStateHolderTest.kt
    ├── data/adb/DefaultAdbRepositoryTest.kt
    ├── data/adb/source/DefaultSystemPropertiesDataSourceTest.kt
    ├── data/wifi/DefaultWifiStatusRepositoryTest.kt
    └── util/ (InetAddressesTest, SsidTest)
```

Luồng phụ thuộc một chiều: `DataSource → Repository → MainStateHolder →
MainActivity`; receiver → `AdbRepository`. Chạy test:

```bash
./gradlew :app:testDebugUnitTest
```

Chưa có `src/androidTest/`: instrumentation test yêu cầu thư viện AndroidX
Test, mâu thuẫn ràng buộc D1 (không AndroidX) trong `docs/plan.md`; không có
database nên khoảng trống này chưa chặn gì.

- `scripts/sign.sh` — ký lại bằng `../usb-upgrade/keys/` (v2 scheme,
  `--v4-signing-enabled false`, không sinh file `.idsig`)
- `dist/` — APK đã ký (gitignored)

## Test UI trên emulator (không cần xe)

Chạy được vì firmware dùng đúng AOSP platform testkey (CN=Android) — image
AOSP `default` của SDK cũng ký bằng key đó nên APK join được
`android.uid.system` trên emulator. **Chỉ dùng image `default`**: image
`google_apis`/`google_apis_playstore` ký release key của Google → cài bị
`INSTALL_FAILED_SHARED_USER_INCOMPATIBLE`.

Setup một lần:

```bash
sdkmanager "system-images;android-28;default;arm64-v8a"
avdmanager create avd -n coon-hu \
  -k "system-images;android-28;default;arm64-v8a" -d pixel --force
# sửa ~/.android/avd/coon-hu.avd/config.ini cho khớp IHU689G:
#   hw.lcd.width=1920  hw.lcd.height=1080  hw.lcd.density=160
$ANDROID_HOME/emulator/emulator -avd coon-hu -no-snapshot -no-boot-anim
```

Mỗi lần test UI:

```bash
./gradlew assembleDebug && ./scripts/sign.sh debug
adb install -r dist/Coon.apk                # phải Success, không phải SHARED_USER_INCOMPATIBLE
adb shell dumpsys package vn.coon.app | grep userId   # kỳ vọng 1000
adb shell am start -n vn.coon.app/.main.MainActivity
adb exec-out screencap -p > ui.png
```

Giới hạn: emulator không có UI Wi-Fi của Flyme — bấm vùng Wi-Fi trên status
bar mở `android.settings.WIFI_SETTINGS` sẽ resolve sang AOSP
`Settings$WifiSettingsActivity`; trên xe intent này resolve sang
`com.flyme.auto.connectivitysettings/.ui.ConnectSettingsActivity` (preferred
activity, đúng cách `com.ex.auto` đã gọi thật trên xe). `BOOT_COMPLETED`,
hiệu lực `persist.adb.tcp.port` và T1-T7 vẫn chỉ verify được trên xe.

## Các bước tiếp theo

1. Phase 1: verify đặc quyền trên xe đã có ADB (`docs/plan.md` mục 6)
2. Phase 2: embed vào kit qua `projects/usb-upgrade/scripts/embed.sh`
3. Phase 3: mở rộng UI thành app quản lý xe, mỗi màn hình = package riêng
   (`docs/plan.md` Phase 3, `docs/architecture.md` mục 4)
