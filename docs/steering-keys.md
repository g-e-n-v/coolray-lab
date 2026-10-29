# Phím cứng vô lăng IHU689G — luồng xử lý & khả năng gán lại

Nghiên cứu ngày 29/10/2026 trên xe thật (ADB `10.98.197.218:5555`) + decompile
`GeelyAutoKeyServer.apk` (đã pull, jadx tại
`extracts/hu-apks/keyserver-pull/jadx-keyserver/`) và `GeelyAutoSettings.apk`
(`extracts/hu-apks/jadx-settings/`).

## 1. Luồng phím cứng (đã verify live)

MCU xe → VehicleHal → lớp adapt trong CarService (ECARX "ACE", `PropAdapt`
map bằng reflection) → `CarPropertyValue` với **propertyId = chính funcId
logic** → app `com.flyme.auto.keyserver` (AK_KeyServer, uid system) đăng ký
callback → `KeyServerManager.handleDisposeEvent()` → `mMap[propertyId]` →
handler tương ứng.

- Live log khi nhấn MODE (10-29 15:07:05):
  `handleDisposeEvent() propertyId = 1090719744 (0x41031000), value = 3` →
  `ModeKeyHandler` → `switchMediaSource(0)` (đổi vòng nguồn nhạc: USB → Radio).
- `0x41031000` **không có** trong danh sách property thô của dumpsys car →
  property này do lớp adapt sinh ra, client nào (uid system) đăng ký được như
  keyserver.
- `HardKeyState`: `Normal=0, Press=1, Release=2, Click=3, LongClick=4,
  RollUp=5, RollDown=6` — value=3 nghĩa là "nhấn thả ngắn".

Bảng định tuyến trong `KeyServerManager.registerKeyEvent()` (funcId → handler):

| funcId | hex | Handler |
| --- | --- | --- |
| 1090650368 | 0x41020100 | TopKeyHandler |
| 1090650624 | 0x41020200 | RightKeyHandler |
| 1090650880 | 0x41020300 | BottomKeyHandler |
| 1090651136 | 0x41020400 | LeftKeyHandler |
| 1090651392 | 0x41020500 | VoiceKeyHandler |
| 1090651648 | 0x41020600 | **CustomKeyHandler** |
| 1090652160 | 0x41020800 | ConfirmKeyHandler |
| 1090715904 | 0x41030100 | MuteKeyHandler |
| 1090718976 | 0x41030d00 | TelephoneKeyHandler |
| 1090719232 | 0x41030e00 | HomeKeyHandler |
| 1090719488 | 0x41030f00 | BackKeyHandler |
| 1090719744 | 0x41031000 | **ModeKeyHandler** |
| 1090732032 / 1090736128 | 0x41034000/0x41035000 | WheelRollHandler |

## 2. Nút MODE — hành vi hiện tại

`ModeKeyHandler` (`handler/ModeKeyHandler.kt`): nhấn thả ngắn (hoặc press khi
flag `isLeftRightKeyLongCtrlMedia` bật) → `mediaCenterManager.switchMediaSource(0)`
đổi vòng nguồn nhạc (BT music → USB → Radio → CPAA…). **Không có property cấu
hình nào** cho MODE — hành vi cứng trong APK. Không có logic long-press
(field `job` không bao giờ được gán).

## 3. Nút CUSTOM — cơ chế gán chức năng CÓ SẴN

`CustomKeyHandler.onDisposeShortClick()` đọc giá trị property
**`BCM_FUNC_CUSTOM_KEY` = 554767360 (0x21111400)** rồi rẽ nhánh:

| Giá trị | Ý nghĩa | Hành động |
| --- | --- | --- |
| 554767362 (0x21111402) | 360_PANORAMA | `AVMManager.controlAVM()` — **mở/đóng camera 360** |
| 554767365 | UNLOCK_TRUNK | mở cốp sau (long-press cũng mở cốp) |
| 554767367 | LOUDSPKR | loa ngoài xe |
| 554767368 | SOUND_SWITCH | đổi nguồn nhạc |
| 554767369 | MIRROR_ADJUST | màn chỉnh gương |
| 554767370 | AUTO_PARKING | `AVMManager.controlAPA()` |
| khác/không gán | — | mở dialog chọn chức năng (action `com.flyme.auto.settings.action.custom_key`) |

UI chính thức: app Settings (`com.flyme.auto.settings`) → mục điều khiển xe →
**"Phím tùy chỉnh"** (`steering_wheel_btn_custom`,
`SteeringCustomDialogFragment`/`SteeringCustomViewModel`, ghi property
`BCM_FUNC_CUSTOM_KEY`). Danh sách lựa chọn gồm **"Mở hình ảnh toàn cảnh"**
(`camera_360`), cốp sau, loa ngoài, đổi nguồn nhạc, chỉnh gương, tự động đỗ xe.

→ **Muốn có phím vật lý mở 360 mà không đụng code: gán nút CUSTOM = 360 trong
Settings của xe.** MODE thì không gán được qua UI.

## 3b. Vì sao Settings trên xe không có mục "Phím tùy chỉnh"

Mục này **bị ẩn bởi code theo trạng thái hỗ trợ của xe**, không phải bị xoá
khỏi UI (đã verify 29/10/2026):

1. Layout `fragment_car_control.xml` vẫn có item `steering_wheel_config`
   (title `steering_wheel_btn_custom` = "Phím tùy chỉnh") trong nhóm
   "car_preference" cùng HUD/ghế/旋钮.
2. `CarControlViewModel.steeringWheelCustom =
   EnumFuncLiveData(BCM_FUNC_CUSTOM_KEY, false)` — data binding của
   `FragmentCarControlBindingImpl` set
   `steeringWheelConfig.setVisibility(mSupported ? VISIBLE : GONE)`.
3. `BaseFuncLiveData.postSupportStatus()`: `supported = (status != 3)`.
4. `AutoFuncImpl.getSupportStatus(BCM_FUNC_CUSTOM_KEY, 0)`:
   `getCarPropertyConfig(getPropertyId(funcId))` — funcId
   `554767360 (0x21111400)` khai báo trong AdapterAPI `IBcm.java`
   (`@PropValue(CustomKeyType.class)`) — nếu VHAL/lớp adapt **không expose
   property nền** → trả `3 = NO_AVAILABLE` → `mSupported=false` → GONE.
5. Bằng chứng sống trên chính xe này: log 10-24 từ process Settings
   (`MyCar_sx11a5lv_ca8b7762c3_020314`, pid 2518):
   `postSupportStatus -> originStatus: 3 activeStatus: false supportStatus:
   false, funcId: CUSTOM_KEY_TYPE_LOUDSPKR` — các func của dialog đều bị báo
   không hỗ trợ. `dumpsys-car.txt` cũng không có property `0x211114*`.
6. Không có công tắc dev: `AutoFuncManager.sDebug` gán cứng `false`,
   `initDebug()` rỗng trong build này.

Dialog vẫn mở được trực tiếp từ ngoài (keyserver cũng gọi đường này):
`am start-activity -a com.flyme.auto.settings.action.custom_key` →
`DispatchDialogActivity` → `SteeringCustomDialogFragment`. Nhưng **gán thì
vô nghĩa**: giá trị ghi qua chính property `BCM_FUNC_CUSTOM_KEY` không tồn tại
→ không lưu được, và `CustomKeyHandler` đọc property đó để quyết định hành động
→ đọc fail → rẽ nhánh mặc định. Tức là tính năng bị cắt ở mức cấu hình xe
(adaptation/VHAL của bản VN), không chỉ ẩn UI. Kết luận: đường "nút CUSTOM có
sẵn" là ngõ cụt trên xe này trừ khi đụng tới tầng VHAL — thực tế vẫn phải quay
lại phương án patch KeyServer hoặc Coon app (mục 5).

## 4. Mở 360 bằng chương trình

- Production path: `AvmAPI.openAvm()/closeAvm()` — RPC `EASCallUtils` vào
  EAS Framework service (XSFEASCoreService, `com.ecarx.sdk.openapi`), module
  `"avm"`, API `"AvmAPI"`; toggle bằng `getAvmCurrentStatus()` > 0 → close,
  ngược lại open (`AVMManager.controlAVM()`). `AVMManager` được init ngay trong
  `FlymeAutoKeyServerApplication.onCreate()`.
- Giao diện: `com.ecarx.parking/.MainAvmActivity` (launcher activity). Thử
  `am start-activity` trực tiếp trên xe **không nổi** (activity không xuất hiện
  trong stack, engine `ArcSoftAVM_Eng` vẫn vẽ nền) — app tự gate theo trạng
  thái xe; phải đi qua EAS openapi như production.
- VHAL liên quan (cite `[dumpsys-car.txt]`): `MCU_KEY_CODE_AVM` 0x2140a648,
  `MCU_KEY_CODE_WORK_MODE` 0x2140a651, `AVM_DISPLAY_SWITCH_FROM` 0x2140a654,
  `INFO_ID_AVM_SHOW_MODE` 0x2140a668, `HW_KEY_INPUT` 0x21414505 (read-only,
  access 0x1).

## 5. Muốn MODE mở 360 — các phương án

### 5a. Verify bằng phím thật (29/10/2026, capture logcat trực tiếp)

Bảng phím vật lý đã map qua capture `dumps/mode-capture/keymap-capture.log`:

| Phím vật lý | propertyId | Handler | Hành động mặc định |
| --- | --- | --- | --- |
| ▲ (vol +) | 0x41020100 | TopKeyHandler | tăng volume |
| ▼ (vol −) | 0x41020300 | BottomKeyHandler | giảm volume |
| OK | 0x41020800 | ConfirmKeyHandler | short: nhận cuộc gọi khi đang gọi; long-press: voice (theo model flags) |
| Home | 0x41030e00 | HomeKeyHandler | |
| Mute | 0x41030100 | MuteKeyHandler | toggle mute |
| MODE | 0x41031000 | ModeKeyHandler | switchMediaSource(0) |

Không phát sinh property cho: BACK, VOICE, TEL, LEFT/RIGHT, ROLL, **CUSTOM
(0x41020600)** — vô lăng VN nhiều khả năng không có các nút này (hoặc đi kênh
khác, chưa thấy evidence).

Phát hiện quan trọng: **phím vô lăng KHÔNG sinh Android KeyEvent** — nhấn ~15
lần mà `HW_KEY_INPUT` (0x21414505 → `InputHalService`) không nhận event nào
(không có dòng `hal event code` trong logcat dù `DBG=true` log INFO). Phím chỉ
đi qua lớp adapt (EAS/FAS) tới KeyServer bằng logical CarPropertyValue. Hệ quả:
`AccessibilityService.onKeyEvent` và mọi cách bắt KeyEvent đều **vô dụng** với
phím vô lăng; app thường (kể cả Coon uid 1000) không có đường nhận MODE dễ dàng.
Bonus: MODE press còn gửi AVRCP passthrough (keyCode 68 = 0x44 PLAY) qua BT tới
điện thoại khi đổi sang nguồn Bluetooth music (`AvrcpControllerService
sendPassThroughCmd` trong log).

### 5b. Patch KeyServer — ĐÃ LÀM VÀ TEST (29/10/2026)

Chuỗi thực hiện:

1. Patch smali: `ModeKeyHandler$switchAudioSource$1.smali` — thay invoke
   `IMediaCenterManager->switchMediaSource(I)V` bằng
   `AVMManager->INSTANCE.controlAVM()V`, giữ nguyên logic debounce 300 ms và
   đường coraline; log tag đổi thành `"MODE->controlAVM (patched by coon lab)"`
   để verify bằng logcat.
2. `apktool b` + ký bằng SignApk platform testkey
   (`projects/usb-upgrade/vendor/signapk` + `keys/`). Cert khớp APK gốc
   (serial `B3998086D056CFFA` — Android platform testkey, giống firmware
   test-keys).
3. Deploy **Magisk module systemless** (không cần flash OTA, revert bằng cách
   xoá thư mục + reboot):
   - `/data/adb/modules/coon_mode360/{module.prop, system/app/GeelyAutoKeyServer/GeelyAutoKeyServer.apk}`
   - magic mount thay `/system/app/GeelyAutoKeyServer/GeelyAutoKeyServer.apk`
     — verify bằng md5: checksum trên `/system` khớp bản patch
     (`a52d2935091b59f3f423134fa127ec39`).
   - KeyServer khởi động lại bình thường, uid system, đăng ký media callback OK.
4. File lưu: `extracts/hu-apks/keyserver-pull/GeelyAutoKeyServer-patched.apk`
   (unsigned: `...-unsigned.apk`; source đã patch:
   `apktool-keyserver/`).

Revert: `adb shell "rm -rf /data/adb/modules/coon_mode360 && reboot"`.

Bước tiếp theo là nhấn MODE kiểm chứng 360 mở/đóng; nếu OK thì đóng gói APK
patched vào payload OTA (`payload/system/app/GeelyAutoKeyServer/`) + 2 dòng
`set_metadata` như embed.sh để flash chính thức không phụ thuộc Magisk.

### 5c. Phương án khác (không khả thi trên xe này)

1. ~~Nút CUSTOM có sẵn~~: feature bị cắt ở mức cấu hình xe (mục 3b) — property
   nền không tồn tại, gán UI không lưu được.
2. ~~Coon app lắng nghe property 0x41031000~~: property logic do lớp adapt sinh
   ra, client phải dùng đúng stack adaptapi của ECARX + đăng ký như keyserver —
   khả thi về nguyên tắc nhưng nặng; và vì phím không có KeyEvent nên không có
   đường lách qua accessibility.
3. ~~Ghi property `MCU_KEY_CODE_*`~~: chưa verify, rủi ro đổi hành vi tầng MCU.
