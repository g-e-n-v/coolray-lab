# Split-screen trên IHU689G — công thức đã xác minh (22/10/2026)

Kết quả thực nghiệm qua ADB Wi-Fi trên xe thật (Android 9, Flyme Auto 1.8.0).
Hệ thống **hỗ trợ true split-screen**, không cần sửa framework-res.

## Phát hiện chính

- `wm size` = 1920x1080, density 160, UI_MODE_TYPE_CAR, RAM 6GB
- Dock Flyme (`com.flyme.auto.launcher`) là overlay chiếm vùng dưới (~y>968);
  app windows full-height nhưng vùng dock nằm đè trên cùng
- `am` trên build này là bản vendor lạ: lệnh là `start-activity` (không phải
  `start`), bounds của `am stack resize` phải **tách 4 arg riêng** bằng khoảng
  trắng (`am stack resize <id> 0 0 960 968`), không phải `0,0,960,968`
- Chỉ cần `--windowingMode 3` (SPLIT_SCREEN_PRIMARY) và `--windowingMode 4`
  (SPLIT_SCREEN_SECONDARY) khi start activity → hệ thống tự dựng 2 stack có
  divider (số đo thực tế: primary `[0,0][969,1080]`, secondary `[951,0][1920,1080]`)
- Cả 2 task `visible=true` đồng thời, render song song, touch routing đúng,
  dock giữ nguyên. Đã test: YouTube ReVanced (`app.revanced.android.youtube`,
  đã cài kèm microG `app.revanced.android.gms`) + `com.ex.auto`

## Công thức

```bash
adb shell am start-activity -n <PKG1>/<ACT> --windowingMode 3   # nửa trái
adb shell am start-activity -n <PKG2>/<ACT> --windowingMode 4   # nửa phải
# tinh chỉnh tỉ lệ (tùy chọn):
adb shell am stack resize <STACK_ID_PRIMARY> 0 0 1150 968
adb shell am stack resize <STACK_ID_SECONDARY> 1150 0 1920 968
# thoát split:
adb shell input keyevent KEYCODE_HOME
```

Lưu ý:

- App focus cuối vẫn render; app vừa bị mất focus có thể trắng 1-2s rồi vẽ lại
- `am stack list` để lấy stack id (id thay đổi sau mỗi lần AM reset/reboot xe)
- Wi-Fi ADB hay rớt khi xe chuyển trạng thái nguồn → `adb disconnect` + reconnect

## Việc tiếp theo cho launcher app

1. Launcher (tự viết) chọn 2 app → gọi `startActivity` với
   `ActivityOptions.setLaunchWindowingMode(3/4)` (hidden API); fallback
   `Runtime.exec("am start-activity ... --windowingMode 3")`
2. Build là `test-keys` → ký app bằng **AOSP platform testkey** để có quyền
   signature nếu cần gọi hidden `IActivityTaskManager` trực tiếp
3. Chưa test: Waze/VietMap Live (chưa cài), chặn video khi xe chạy của vendor
   (MCU speed signal), hành vi sau power cycle xe
