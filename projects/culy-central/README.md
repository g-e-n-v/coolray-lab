# projects/culy-central

App hệ thống thay thế StageLight trên head unit **IHU689G** (Geely New Coolray
2026 VN, Android 9). `BootReceiver` set `persist.adb.tcp.port=5555` mỗi lần boot,
chạy với uid 1000 (`android.uid.system`) và ký bằng platform testkey của
firmware. Kèm màn hình `MainActivity` (phase 3 sớm) hiển thị IP Wi-Fi hiện tại
hoặc `No connection` — nền tối, chữ sáng.

Kế hoạch chi tiết: [`docs/plan.md`](docs/plan.md).

## Build

Yêu cầu: Java 17, Android SDK (`$ANDROID_HOME` hoặc `local.properties`).

```bash
./gradlew assembleDebug          # app/build/outputs/apk/debug/app-debug.apk
./scripts/sign.sh debug          # ký platform key → dist/CulyCentral.apk + apksigner verify
```

Quy ước build (khớp StageLight, xem `docs/plan.md` mục 5): minSdk/targetSdk 28,
không phụ thuộc nào ngoài Android SDK; UI hiện chỉ là màn hình status IP của
`MainActivity`.

## Cấu trúc

- `app/src/main/kotlin/vn/culycentral/app/` — `BootReceiver`, `AdbEnabler`,
  `SysProps` (reflection `SystemProperties.set` vì API ẩn), `MainActivity`
  (IP Wi-Fi qua `NetworkCallback` + `LinkProperties`, auto-update)
- `app/src/main/AndroidManifest.xml` — `sharedUserId`, permissions
- `app/src/main/res/` — layout/theme tối cho màn hình IP
- `scripts/sign.sh` — ký lại bằng `../usb-upgrade/keys/` (v2 scheme,
  `--v4-signing-enabled false`, không sinh file `.idsig`)
- `dist/` — APK đã ký

Lưu ý: launcher Flyme hiển thị app có `MAIN`+`LAUNCHER` chuẩn (bằng chứng Sapo
Central, xem `docs/launcher-icon.md`) — icon CulyCentral bấm được trực tiếp trên
màn hình chính; `am start` vẫn dùng được khi cần qua ADB.

## Các bước tiếp theo

Phase 1 (verify trên xe đã có ADB) và Phase 2 (embed vào kit qua
`projects/usb-upgrade/scripts/embed.sh`) — xem `docs/plan.md` mục 6.
