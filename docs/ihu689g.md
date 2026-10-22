# Geely New Coolray VN 2026 — Head unit IHU689G (thông số phần cứng & nền tảng)

Tài liệu phục vụ **phát triển update package và apps** trên IHU689G: chỉ ghi phần
cứng và các giá trị tĩnh theo firmware build. Bỏ qua trạng thái runtime (IP, thiết
bị đang cắm, app người dùng cài, âm lượng…) — dữ liệu đó nằm trong dump gốc
`dumps/10-98-197-218-5555-20261022-164708/` (22/10/2026, ADB root qua Wi-Fi).

Mọi dòng trích dẫn file nguồn trong dump ở trên.

## 1. Nhận dạng & phiên bản firmware

| Mục                    | Giá trị                                                                                                           | Nguồn                             |
| ---------------------- | ----------------------------------------------------------------------------------------------------------------- | --------------------------------- |
| Model / device / board | `IHU689G`                                                                                                         | `[props.txt]` `[props-files.txt]` |
| Brand / manufacturer   | `GEELY` / `250060`                                                                                                | `[props.txt]`                     |
| Build fingerprint      | `GEELY/full_IHU689G/IHU689G:9/PQ2A.190405.003/20:user/test-keys`                                                  | `[props.txt]`                     |
| OS                     | Android 9 (API 28), incremental `20`, `build.type=user`, test-keys                                                | `[props.txt]`                     |
| Phiên bản firmware     | `SW0A5LV0126H102000000` (`ro.build.version.versionname`, `ro.bicv.os.version`, `persist.vendor.ecu_soft_version`) | `[props-files.txt]`               |
| Ngày build             | 03/02/2026 15:35:20 CST (utc `1770104120`)                                                                        | `[props.txt]`                     |
| Security patch         | `2021-09-05`                                                                                                      | `[props.txt]`                     |
| UI xe                  | `ro.build.flyme_auto=true`, `characteristics=carcorder`                                                           | `[props-files.txt]`               |
| Nền tảng ECARX         | `ECARX_E02_C2_V1.0`, `ro.base_build=noah`                                                                         | `[props-files.txt]`               |
| MTK branch             | `alps-mp-p0.mp13-V1.184_ecarx.p0mp13.spm8666p1.64_TMP1`, chip_ver `S01`                                           | `[props.txt]`                     |
| Treble                 | `ro.treble.enabled=true`, VNDK 28, first_api_level 26, zygote `zygote64_32`                                       | `[props.txt]`                     |
| ECU HW / HW ver        | `HW0SX110606A0002` (họ **SX11**) / `sys.ecarx.hw_version=2.1`                                                     | `[props.txt]`                     |
| MCU version            | `IHU689G0126AAU`                                                                                                  | `[props.txt]`                     |
| Serial boot (ADB)      | `AB1FRA00038493407`                                                                                               | `[props.txt]`                     |
| Serial HU (xdsn)       | `IHU689G0MAT1Y00010000767`                                                                                        | `[props.txt]`                     |
| IHUID / partnum        | `2500606608549555T1Y00375` / `6608549555`                                                                         | `[props.txt]`                     |
| VIN                    | `PL1DG2FV2VG172549`                                                                                               | `[props.txt]`                     |
| Recovery ID            | `0x735fc151a8bd64618cdbee84195882064867a9bf000000000000000000000000`                                              | `[props.txt]`                     |
| Locale gốc (factory)   | zh-CN, timezone Asia/Shanghai                                                                                     | `[props-files.txt]`               |

## 2. Nền tảng phần cứng

| Mục              | Giá trị                                                                                                                                                                                                                                                               | Nguồn                                            |
| ---------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------ |
| SoC              | MTK **ECARXP** (E02-class): 8 nhân AArch64 — 4× Cortex-A53 (rev 4) + 4× Cortex-A73 (rev 2), hardware name `xecarx`, `androidboot.hardware=ecarxp`                                                                                                                     | `[cpuinfo.txt]` `[kernel-cmdline.txt]`           |
| Connsys          | chip id `0x6771` (MT6771-class), patch `20221104162236a`                                                                                                                                                                                                              | `[props.txt]`                                    |
| GPU              | GLES 3.2 (`ro.opengles.version=196610`), Vulkan 1.0, Mali driver trong kernel                                                                                                                                                                                         | `[props.txt]` `[pm-features.txt]` `[dmesg.txt]`  |
| RAM              | ~6 GB (5,996,632 kB) + zram swap 1 GiB                                                                                                                                                                                                                                | `[meminfo.txt]` `[partitions-proc.txt]`          |
| Lưu trữ          | eMMC **58.2 GiB** (mmcblk0), 51 partition + rpmb + boot0/boot1                                                                                                                                                                                                        | `[partitions-proc.txt]`                          |
| ABI              | arm64-v8a (+ armeabi-v7a)                                                                                                                                                                                                                                             | `[props.txt]`                                    |
| Kernel           | Linux `4.4.146+` SMP PREEMPT, build 26/11/2025, cmdline: `verifiedbootstate=green`, `veritymode=enforcing`, `selinux=permissive`, `flash.locked=1`, `console=ttyS0,921600n1`, `mrdump_ddrsv=yes`, `maxcpus=8`, `has_battery_removed=1` (không pin riêng — nuôi từ xe) | `[cpuinfo.txt]` `[kernel-cmdline.txt]`           |
| Runtime cho apps | Dalvik heap 512m / growth limit 384m, JIT off, dex2oat speed-profile, sdcardfs reserved 600MB                                                                                                                                                                         | `[props.txt]` `[props-files.txt]` `[mounts.txt]` |

## 3. Trạng thái bảo mật (đặc tính build)

| Mục           | Giá trị                                                                                                                  | Hệ quả cho dev                          | Nguồn                                  |
| ------------- | ------------------------------------------------------------------------------------------------------------------------ | --------------------------------------- | -------------------------------------- |
| ADB           | `ro.secure=0`, `ro.debuggable=1`, `ro.adb.secure=1`, TCP `5555`                                                          | root shell qua mạng                     | `[props-files.txt]` `[props.txt]`      |
| Root          | Magisk active (`/sbin` tmpfs)                                                                                            | cài/tháo module, remount                | `[mounts.txt]`                         |
| SELinux       | Permissive (`androidboot.selinux=permissive`)                                                                            | không bị chặn khi đăng ký service riêng | `[kernel-cmdline.txt]` `[selinux.txt]` |
| Verified boot | cmdline green/enforcing + `flash.locked=1`, nhưng `/system` mount **ext4 ro thuần, không có dm-verity** trong bảng mount | sửa `/system` khả thi qua remount       | `[kernel-cmdline.txt]` `[mounts.txt]`  |
| Mã hoá        | `ro.crypto.state=unencrypted`                                                                                            | thao tác /data không vướng FBE          | `[props.txt]`                          |
| OEM unlock    | `ro.oem_unlock_supported=1`, `sys.oem_unlock_allowed=0`                                                                  |                                         | `[props.txt]`                          |

## 4. Partition map (cơ sở cho OTA)

Nguồn `[block-by-name.txt]`, `[partitions-proc.txt]`, `[mounts.txt]`.

| pN     | Tên            | Kích thước | Ghi chú                               |
| ------ | -------------- | ---------- | ------------------------------------- |
| p1     | boot_para      | 1 MiB      |                                       |
| p2     | recovery       | 32 MiB     |                                       |
| p3     | para           | 512 KiB    |                                       |
| p4     | expdb          | 20 MiB     |                                       |
| p5     | frp            | 1 MiB      | `ro.frp.pst`                          |
| p6     | nvcfg          | 32 MiB     | `/mnt/vendor/nvcfg`                   |
| p7     | nvdata         | 64 MiB     | `/mnt/vendor/nvdata`                  |
| p8     | metadata       | 32 MiB     |                                       |
| p9     | protect1       | 8 MiB      | `/mnt/vendor/protect_f`               |
| p10    | protect2       | 9.5 MiB    | `/mnt/vendor/protect_s`               |
| p11    | seccfg         | 8 MiB      |                                       |
| p12    | sec1           | 2 MiB      |                                       |
| p13    | proinfo        | 3 MiB      |                                       |
| p14    | md1img         | 100 MiB    | modem image                           |
| p15    | spmfw          | 1 MiB      |                                       |
| p16–17 | scp1, scp2     | 6 MiB      |                                       |
| p18–19 | sspm_1, sspm_2 | 1 MiB      |                                       |
| p20–22 | cam_vpu1–3     | 15 MiB     |                                       |
| p23–24 | gz1, gz2       | 16 MiB     |                                       |
| p25    | nvram          | 64 MiB     |                                       |
| p26    | odm2           | 67 MiB     |                                       |
| p27    | persist        | 53 MiB     | `/mnt/vendor/persist`                 |
| p28    | protect3       | 1 GiB      |                                       |
| p29    | protect4       | 1 GiB      |                                       |
| p30    | protect5       | 2 GiB      |                                       |
| p31–32 | lk, lk2        | 1 MiB      | bootloader A/B                        |
| p33    | boot           | 32 MiB     |                                       |
| p34    | mtkdata        | 90 MiB     | `/mtkdata`                            |
| p35    | logo           | 8 MiB      |                                       |
| p36    | dtbo           | 8 MiB      |                                       |
| p37–38 | tee1, tee2     | 35/36 MiB  |                                       |
| p39    | hostos         | 128 MiB    |                                       |
| p40    | vendor         | 1.84 GiB   | `/vendor` ro                          |
| p41    | system         | 6 GiB      | `/system` ro                          |
| p42    | cache          | 432 MiB    | `/cache`                              |
| p43    | pki            | 2 MiB      | `/pki`                                |
| p44    | log            | 3 GiB      | `/log`                                |
| p45    | vechilecfg     | 16 MiB     | `/vechilecfg` (tên gốc theo hệ thống) |
| p46    | update         | **10 GiB** | `/update` rw — sân đỗ gói OTA         |
| p47    | private_ui     | 100 MiB    | `/private_ui`                         |
| p48    | ivres          | 1 GiB      | `/mnt/ivres` — tài nguyên IVI         |
| p49    | userdata       | 30.9 GiB   | `/data`                               |
| p50    | otp            | 43 MiB     |                                       |
| p51    | flashinfo      | 16 MiB     |                                       |

Mount chính: `/system`, `/vendor` ro; `/data`, `/cache`, `/update`, `/log`, `/pki`, `/private_ui`, `/vechilecfg`, `/mtkdata`, `/mnt/ivres`, `/mnt/vendor/{persist,nvdata,nvcfg,protect_f,protect_s}` — tất cả ext4; `/data/media` qua sdcardfs.

## 5. Màn hình & input

| Mục             | Giá trị                                                                                                                                       | Nguồn                   |
| --------------- | --------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------- |
| Màn hình        | Built-in **1920×1080 @ 60 Hz**, density 160, FLAG_SECURE + protected buffers, 1 display (3 external touch viewport khai báo nhưng không dùng) | `[dumpsys-display.txt]` |
| Độ sáng         | range 10–255, **không auto-brightness**                                                                                                       | `[dumpsys-display.txt]` |
| Xoay            | `mSupportAutoRotation=false`, landscape cố định                                                                                               | `[dumpsys-window.txt]`  |
| Cảm ứng         | `himax-touchscreen` (Himax), 10 điểm, 0–1919×0–1079, nút Home/Menu/Back/AppSelect                                                             | `[input-devices.txt]`   |
| Bàn phím vật lý | `ecarx-keypad` — ma trận phím xe nối qua MCU                                                                                                  | `[input-devices.txt]`   |
| Jack audio      | `ACCDET` — detect headphone/mic/line-out, nút Vol±/Play/VoiceCommand                                                                          | `[input-devices.txt]`   |
| Khác            | `gsensor-kpd` (phím qua gia tốc kế), `sensor_wakeup`                                                                                          | `[input-devices.txt]`   |

## 6. Audio

- HAL: `vendor.audio-hal-4.0` + `vendor.audiocontrol-hal-1.1`, tuning tool V2.2 `[props.txt]`.
- Stream dạng **bus**, index max 39: voice_call/system/ring/music/alarm/notification/tts/navi/radar/ktv/ecall/virtual `[dumpsys-audio.txt]` `[settings-system.txt]`.
- Âm khóa xe: `/vendor/etc/carlock/yuedongyinghe.wav` `[settings-system.txt]`.

## 7. Kết nối không dây

### Wi-Fi

- Chip **CONSYS_ECARXP** (gen3), driver MTK wmt; interface: STA `wlan0`, P2P `p2p0`, tethering `ap0`, AP phụ `wlan1` (hostapd có vendor elements CarPlay) `[props.txt]` `[network.txt]`.
- Country code mặc định `cn` (`ro.boot.wificountrycode`) `[props.txt]`.
- **Hành vi firmware**: `com.android.car` tắt Wi-Fi khi xe nghỉ và bật lại ~4–5 s sau khi có nguồn (186 records WifiController, lặp lại đều mọi chu kỳ lái) — app không nên giành quyền điều khiển Wi-Fi theo nguồn `[dumpsys-wifi.txt]`.

### Bluetooth

- Stack **GOCSdk** (`ro.ecarx.bt_ismtk=false`), services `gocsdk`/`gocsdk_auth`; adapter phía **sink/Client**: A2DP Sink, HFP HeadsetClient, AVRCP Controller, PBAP Client; max 1 audio device; GATT server UUID `ad99c371-fc2b-48a6-be71-e164e3015acb` `[dumpsys-bluetooth.txt]` `[props.txt]`.
- Tương tự Wi-Fi: bật/tắt theo chu kỳ nguồn xe do `com.android.car` điều phối, tự khôi phục (`persist.sys.jsbd.btstatus`) `[dumpsys-bluetooth.txt]`.

### GNSS

- `ro.vendor.mtk_gps_support=1`; `gnss_service` + `mnld` + `lbs_hidl_service`; GPS chip `0x6771`, clock type 20; A-GPS bật `[props.txt]` `[settings-global.txt]`.
- Stack vị trí: YGPS (test MTK), LocationEM2, LPPeService, MtkNlp, FusedLocation, GeelyAutoLocationService `[apk-inventory.txt]`.

### Sensors

- Active: ACCELEROMETER + UNCALI_GYRO (consumer `com.njda.adapter…SX11SensorManager`), wake-gesture 0x17 `[dumpsys-sensors.txt]`.
- Features khai báo: compass, barometer, light, proximity, gyroscope, step counter, hifi_sensors `[pm-features.txt]`.

## 8. Cellular & FM — trạng thái cấu hình

- Telephony build có sẵn 2 SIM logic nhưng: `default_network=0`, `persist.radio.mobile.data=0,0`, toàn bộ service CCCI/md init **stopped**, ServiceState OUT_OF_SERVICE → xe này **không có 4G** `[dumpsys-telephony.txt]` `[props.txt]`.
- FM: `fmradio.driver.enable=0` trong vendor build.prop, dù `broadcastradio-hal2` running và app GeelyRadio (67 MB) có sẵn → tuner bị tắt ở mức cấu hình, hiệu lực phần cứng chưa xác minh được từ dump `[props-files.txt]` `[props.txt]` `[apk-inventory.txt]`.

## 9. USB

- 1 cổng **dual-role USB 2.0** (`dual-role-usb20`, host `dfp` ↔ device) + controller xHCI USB3 `11200000.usb3_xhci` `[dumpsys-usb.txt]` `[usb.txt]`.
- Hub hạ nguồn: **Microchip USB24915C** (6 cổng) + USB2 hub `0424:49a0` `[usb.txt]`.
- Chế độ device: VID/PID `0x0E8D`/`0x201C` (MediaTek), functionfs adb, MTP `[props.txt]`.

## 10. Camera / EVS / AVM / radar

- cameraserver: **0 camera devices** — không có camera cho app thường `[dumpsys-camera.txt]`.
- EVS stack chạy độc lập: `vendor.evs-hal`, `evsapp`, `evsengine` (`evs.camera.power/request`) `[props.txt]`.
- AVM quanh xe: tag ArcSoftAVM, `persist.camera.type=2` (transparent), `ro.ecarx.os_avm_qb_supported=1`, app `OneOSAvmApp` → `com.ecarx.parking` `[props.txt]` `[apk-inventory.txt]`.
- Radar: `persist.radar.type=2`, `radar.warning.switch=1` `[props.txt]`.

## 11. Tích hợp xe (MCU / VHAL)

- VHAL `android.hardware.automotive.vehicle@2.0`, `vendor.vehicle-hal-2.0` running; CarPropertyService expose hàng chục property custom ECARX (id 5578837xx…) `[dumpsys-car.txt]`.
- `com.android.car.bicv.BDPowerManagerService` nhận property event nguồn xe → điều phối Wi-Fi/BT (stacktrace thật trong log) `[logcat-system.txt]`.
- MCU `IHU689G0126AAU`; `hal_mcuupdate_service` running; `persist.vendor.vehicle.mcu.boot.status` `[props.txt]`.
- Cấu hình xe dạng mask hex: `persist.sys.vehi.config`, `persist.sys.network.config`, `sys.ecarx.f101/f110_config`, `powermode=2`, `custom.KEY_CODE=1` `[props.txt]`.
- CarPlay/Android Auto bridge: stack `com.njda.*` (carplay/aauto/adapter), `sys.dadao.*` 1.4.8, services `CarplayMdnsd`/`CarplayMonitor`/`AAutoMonitor`, `persist.aauto.vehicle.id` `[props.txt]`.

## 12. Software nền (đi theo firmware build)

### 12.1 Hệ thống `[apk-inventory.txt]` `[services.txt]`

| Nhóm                   | Gói                                                                                                                                                                                                                                                                                                                                                                                                              |
| ---------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Shell Flyme Auto       | `com.flyme.auto` (FlymeAutoService priv), `flyme_auto_coreservice` (binder đầu tiên)                                                                                                                                                                                                                                                                                                                             |
| UI                     | `com.flyme.auto.launcher` (36 MB), SystemUI + `com.flyme.auto.systemuiplugin`, CarNavigationBar                                                                                                                                                                                                                                                                                                                  |
| Cài đặt                | `com.flyme.auto.settings` (105 MB), `com.flyme.auto.connectivitysettings`                                                                                                                                                                                                                                                                                                                                        |
| HVAC                   | `com.flyme.auto.hvac` (124 MB)                                                                                                                                                                                                                                                                                                                                                                                   |
| Đa phương tiện         | `ecarx.xsf.mediacenter`, `com.flyme.auto.localmusic.{usb,radio,bluetooth}`, `com.flyme.auto.mediacontrol`, `com.flyme.auto.gallery`                                                                                                                                                                                                                                                                              |
| Đàm thoại              | `com.android.dialer` (GeelyAutoDialer), Telecom                                                                                                                                                                                                                                                                                                                                                                  |
| Vị trí                 | `com.flyme.auto.service.find` (GeelyAutoLocationService)                                                                                                                                                                                                                                                                                                                                                         |
| Bảo mật                | `com.flyme.auto.safe` (33 MB), AutoSecureService                                                                                                                                                                                                                                                                                                                                                                 |
| Trợ lý tiếng Việt      | `VoiceAssistantVi` — **181 MB**, mtime 01/08/2008 (khác mtime 31/12/2008 của phần còn lại → bơm vào image sau)                                                                                                                                                                                                                                                                                                   |
| CarPlay / Android Auto | `AppleCarplay.apk` = `com.njda.carplay`; `AndroidAuto.apk` = `com.njda.aauto`; `ConnAdaptor` = `com.njda.adapter`                                                                                                                                                                                                                                                                                                |
| Huawei                 | HiSight, HiViewLite, HwDMSDPDevice, HwNearbyCar                                                                                                                                                                                                                                                                                                                                                                  |
| OTA                    | `com.chinatsp.update` (Update.apk), `com.android.car.systemupdater` (SystemUpdater.apk), `fota_service` running (`sys.bicv.fota_service.pid`)                                                                                                                                                                                                                                                                    |
| Kiểu/test              | `com.jsbd.autotest` (AutoTest, 169 MB), `com.mediatek.engineermode` priv, MTKLogger, `ecarx.debugtools`, `com.geely.controlcenter` (27 MB), `com.geely.lifecontrol`, `com.flyme.auto.customize`, `com.flyme.auto.keyserver`, `com.flyme.auto.wirelesscharging`, `ecarx.automotive.openapi` (DimService), `com.ecarx.sdk.openapi` (XSFEASCoreService), `com.ecarx.eas.carservice`, `com.ecarx.deviceinfo.service` |
| Stagelight             | `/system/app/Stagelight/Stagelight.apk` (23 MB, mtime 01/08/2008 như VoiceAssistantVi)                                                                                                                                                                                                                                                                                                                           |
| WebView                | `com.android.webview` — **132 MB**                                                                                                                                                                                                                                                                                                                                                                               |

### 12.2 IME

`/system/priv-app/SogouInput/SogouInput.apk` **chính là** gói `com.iqqijni.car.keyboard` (bàn phím car), là IME mặc định; `com.sohu.inputmethod.sogou.oem` được liệt kê trong enabled methods nhưng không có gói tương ứng `[pm-packages.txt]` `[settings-secure.txt]`.

### 12.3 Cấu hình build đáng nhớ cho dev

- `NET_CONFIG=PROD`, `FLYME_NET_CONFIG=PROD` `[settings-global.txt]`.
- `persist.sys.disable_rescue=1`, `keyguard.no_require_sim=true`, `sys.ipo.disable=1` (IPO tắt) `[props-files.txt]`.
- `install_non_market_apps=1` cho phép cài apk ngoài store `[settings-secure.txt]`.
- Accessibility services hệ thống dùng chung: `com.ecarx.sdk.openapi/.service.GlobalAccessibilityService`, `ecarx.xsf.mediacenter/.media.MediaWindowStateService`, `com.ecarx.parking/.MyAccessibilityService` `[settings-secure.txt]`.

## 13. Không có trong dump

Dump ADB không chứa: log recovery/updater, otacert, updater-script, cơ chế menu kỹ
th thuật, lộ trình mở ADB, gói update.zip. Các chủ đề đó thuộc nguồn khác (ngoài
`dumps/`), không đưa vào tài liệu này.
