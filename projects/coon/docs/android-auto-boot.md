# Android Auto gốc trên HU — cơ chế tự mở lúc boot

Điều tra 29/10/2026 phục vụ quyết định D10 (Coon đè UI AA lúc boot) và việc
chặn AA tự mở về sau. "Android Auto" trên máy này là cặp app vendor **njda**,
không phải Google:

- `com.njda.aauto` — `/system/app/AndroidAuto/` (nền tảng projection AA)
- `com.njda.adapter` — `/system/app/ConnAdaptor/` (bridge AA + CarPlay + HiCar,
  chứa toàn bộ UI người dùng nhìn thấy)

## Chuỗi khởi động (đo từ logcat events, boot 29/10 15:24)

| Thời điểm | Sự kiện |
| --- | --- |
| boot+~0s | Launcher Flyme bind `com.njda.adapter/.androidauto.connection.AutoConnectionService` (`callerPkgStartProc=com.flyme.auto.launcher`) → đánh thức cả process adapter |
| boot+3s | `com.njda.adapter/.view.TransparentActivity` — activity **đầu tiên** của hệ thống (task riêng, transparent, hosting dialog/permission) |
| boot+4s | `BOOT_COMPLETED` phát; BootReceiver của cả 2 app (`aauto/.base.common.BootReceiver`, `adapter/.core.BootReceiver`, priority 1000) chỉ `startService` thêm một lần nữa — **không phải trigger chính** |
| boot+7s | `com.njda.adapter/.view.AutoMainActivity` — UI AA nhìn thấy được (18 lần/boot log; chỉ mở khi có session, không có icon LAUNCHER trong cả 2 manifest) |
| boot+9s | Coon `MainActivity` (delay 4s từ receiver) → focus đè AA |

Toàn bộ service của `aauto` đều exported, được **adapter bind** (không phải
launcher bind trực tiếp): `dumpsys activity services com.njda.aauto` →
`callerPkgStartProc=com.njda.adapter`, AppBindRecord client = `com.njda.adapter`.

## Điểm mấu chốt nếu muốn chặn AA tự mở

1. **Disable BootReceiver là không đủ** — launcher tự bind service adapter
   mỗi boot, không đi qua receiver nào.
2. **UI nằm ở adapter, không phải aauto**: `TransparentActivity` +
   `AutoMainActivity` thuộc `com.njda.adapter`. Nhưng trong code adapter,
   `startActivity(AutoMainActivity)` (SX11ResourceManager.
   `onAAutoRequestDisplayActivity`) **không có try/catch** → disable component
   này bằng PM làm adapter crash-loop khi có request display.
3. Adapter chịu được "aauto biến mất": bind qua `ProxyUtil` (class copy trong
   dex adapter) retry 200ms, `bindService` false không ném exception.
4. Cả 2 app cùng shared uid `android.uid.system` (1000) → uid 1000 của Coon
   gọi được `setApplicationEnabledSetting` cho bất kỳ package nào.
5. Không có icon launcher cho AA (`category LAUNCHER` = 0 trong cả 2 manifest)
   → AA chỉ tồn tại qua flow tự mở này; không có nút manual nào để broken.

APK đã kéo về để decompile: `extracts/hu-apks/AndroidAuto.apk`,
`extracts/hu-apks/ConnAdaptor.apk`.
