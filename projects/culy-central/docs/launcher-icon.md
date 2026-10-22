# Icon trên launcher Flyme Auto — điều tra cơ chế

Câu hỏi: app thường hiện icon bấm được trên màn hình chính Flyme Auto bằng cơ
me chế gì? Nghiên cứu 22/10/2026, mọi fact đều có nguồn dump/apk cụ thể.

## Kết luận

**Icon chuẩn Android (`MAIN` + `LAUNCHER`) là đủ.** Launcher Flyme
(`com.flyme.auto.launcher`, `/system/priv-app/GeelyAutoLauncher`) hiển thị app
thường trong lưới app của nó. Không cần launcherplugin cho nhu cầu "icon để
bấm". Giả định cũ trong plan (D2/fact 9: "Flyme không hiện app thường, StageLight
phải kèm plugin") là **sai** — sự chứng minh ngược là Sapo Central.

## Bằng chứng

1. **Sapo Central** (`com.ex.auto`, decode tại `extracts/sapo-central/`) có icon
   bấm được trên HU thật mà manifest không khai báo gì Flyme-specific cho icon:
   chỉ `<activity android:name=".MainActivity">` với
   `action.MAIN` + `category.LAUNCHER` + `@mipmap/ic_launcher`
   (`decoded/AndroidManifest.xml:41-46`). Smali của nó không chứa class
   `com.flyme.auto.plugin.*` nào.
2. **StageLight** cũng vậy: activity `.LauncherIcon` nằm trong bảng resolver
   `android.intent.action.MAIN` của dump HU
   (`dumpsys-package.txt:694`, `com.ex.auto/.MainActivity` tại `:743`).
3. Widget dữ liệu trên màn hình chính của Sapo là **overlay tự vẽ**:
   `HomeFloatingWidgetsService`, `HomeWidgetsPollService` + permission
   `SYSTEM_ALERT_WINDOW` (`decoded/AndroidManifest.xml:4,87,104`) — không liên
   quan icon app.

## Cơ chế launcherplugin của StageLight (chỉ cần nếu muốn widget nhúng vào home)

Decode `assets/bundled/launcher-plugin.apk` trong StageLight v1.2 (tải từ
checkbuy market, SHA-256 khớp catalog và khớp size 14740B với
`/data/app/com.dmkcv.stagelight.launcherplugin-*/base.apk` trên xe —
`apk-inventory.txt`):

- Service `BackgroundProtectionWidget` khai báo intent-filter action
  **`com.flyme.auto.plugin.action.PLUGIN_FLOATING_WIDGET`**, `exported=true`,
  được bảo vệ bởi permission caller `android.permission.INSTALL_PACKAGES`.
  Launcher phát hiện plugin qua service này (log HU:
  `PluginInstanceManager: RemovePkg -> com.geekit.wifi - <action>` —
  `logcat-main.txt:146490`; GeeKit Wi-Fi là plugin thứ hai dùng cùng action).
- Class widget **extends `com.flyme.auto.plugin.launcher.FloatingWidgetFragment`**
  — base class do launcher cung cấp lúc runtime (không nằm trong plugin APK).
  Override: `getID()`, `getVersion()`, `onCreate(Context, Context)`,
  `onCreateView()`, `onDestroy()`. Plugin chạy trong process/classloader của
  launcher — `onCreate` tạo `createPackageContext("com.flyme.auto.launcher")`
  và từ chối chạy nếu UID khác ("Refusing to run outside the launcher UID").
- Muốn làm widget thật (T8 nâng cao): pull
  `/system/priv-app/GeelyAutoLauncher/*` từ xe (chỉ cần ADB, không cần root),
  decode lấy API của `FloatingWidgetFragment`, rồi viết service tương tự.
  Hệ quả: icon tappable + có thể launch activity từ widget.

## Ghi chú side-channel: tải APK từ checkbuy market

- Endpoint (từ dex của Market client v1.5.27):
  `POST https://checkbuy.ru/geely/api/v1/market/apps/{id}/download`, body JSON
  `{"deviceId": "...", "vin": "..."}`, trả về `downloadUrl` có token, rồi GET
  file đó. Catalog: `GET /geely/api/v1/market/catalog?`.
- `deviceId` client lấy từ license GCP: `/data/misc/coolray/.gcp-device.lic`
  (GcpDeviceLicense). Server hiện **chấp nhận deviceId/vin rỗng** (đã test với
  StageLight id=82 và Gear Display id=105).
- StageLight v1.2 kèm 3 plugin trong `assets/bundled/`: `launcher-plugin.apk`,
  `dealer-receiver.apk`, `settings-shortcut.apk` (shortcut mở Android Settings
  — chính là tính năng "Settings Android" mà checkbuy quảng cáo).
