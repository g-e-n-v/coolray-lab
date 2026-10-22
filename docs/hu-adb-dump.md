# Dump full ADB — IHU689G (Geely Coolray 2026 VN)

Kết quả dump toàn bộ thông tin head unit qua Wi-Fi ADB. Đã verify trên xe
(22/10/2026), sau khi flash kit mở ADB (quy trình menu kỹ thuật trong
`root-magisk-guide.md`, bước A). Tái tạo dump bằng:

```bash
./tools/dump-hu.sh <ip>:5555      # mặc định 10.98.197.218:5555
```

Kết quả nằm ở `dumps/<ip>-<timestamp>/` (46 file, ~31 MB).

## 1. Kết nối

- ADB qua Wi-Fi: `adb connect <ip>:5555` (đi qua route StageLight/ADB Wi-Fi).
- `adbd` chạy **root sẵn** — `uid=0(root)`, context SELinux `u:r:su:s0`. Nguồn
  root là **firmware** (`ro.secure=0` + `ro.debuggable=1` trong ramdisk, chuẩn
  AOSP non-secure), không phải Magisk — chỉ cần *bật ADB* là shell root.
  Mọi lệnh không cần `su` prefix. Chi tiết: `root-magisk-guide.md`.
- SELinux đang **Permissive**. Không có dm-verity trên /system.
- Kernel 4.4.146+ (aarch64), build ngày 26/11/2025.

## 2. Thông số đã verify của máy

| Mục            | Giá trị                                                                   |
| -------------- | ------------------------------------------------------------------------- |
| Model / device | IHU689G, serial `AB1FRA00038493407`                                       |
| Fingerprint    | `GEELY/full_IHU689G/IHU689G:9/PQ2A.190405.003/20:user/test-keys`          |
| OS             | Android 9 (API 28), incremental `20`, `versionname SW0A5LV0126H102000000` |
| Security patch | 2021-09-05                                                                |
| SoC            | MTK platform `ECARXP` (`ecarxp`), MT alps-mp-p0.mp13, chip S01            |
| CPU            | 8 × Cortex-A53 (AArch64 rev 4), hardware `xecarx`                         |
| RAM            | ~6 GB (5 996 632 kB)                                                      |
| Màn hình       | 1920×1080                                                                 |
| eMMC           | `mmcblk0`, hơn 52 partition có tên (bên dưới)                             |
| Keys build     | `test-keys` — khớp AOSP platform key mà recovery chấp nhận                |

Partition đáng chú ý (`block-by-name.txt`): system 6 GB, vendor 2 GB,
userdata 31 GB, cache 128 MB, boot = p33, recovery = p2, lk/lk2 = p31/32,
dtbo p36, logo p35, teedev/tee1/tee2, protect1..5, private_ui, ivres,
otp/flashinfo/expdb — layout MTK kinh điển, **không có slot A/B**.

## 3. Dump chứa gì

| File                                                                               | Nội dung                                                                                                                                                                      |
| ---------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `device-id.txt`                                                                    | uid, getenforce, uname, banner kernel                                                                                                                                         |
| `props.txt`                                                                        | toàn bộ `getprop`                                                                                                                                                             |
| `props-files.txt`                                                                  | /system/build.prop, /vendor/build.prop, /default.prop                                                                                                                         |
| `cpuinfo.txt`, `meminfo.txt`                                                       | proc info CPU/RAM                                                                                                                                                             |
| `partitions-proc.txt`, `block-by-name.txt`, `disk.txt`, `mounts.txt`               | map partition, kích thước, df, mount                                                                                                                                          |
| `usb.txt`, `network.txt`, `input-devices.txt`                                      | thiết bị USB, ip/route/arp, `getevent -pl`                                                                                                                                    |
| `selinux.txt`, `kernel-cmdline.txt`                                                | trạng thái policy, boot cmdline                                                                                                                                               |
| `pm-packages*.txt`, `pm-permissions.txt`, `pm-features.txt`, `pm-libraries.txt`    | 87 package (có path APK), nhóm quyền, features, libs                                                                                                                          |
| `apk-inventory.txt`                                                                | `find` mọi APK trong /system/app, /system/priv-app, /vendor/app, /data/app kèm size                                                                                           |
| `dumpsys-package.txt`                                                              | dump chi tiết từng package (quyền đã cấp, chữ ký)                                                                                                                             |
| `settings-{global,secure,system}.txt`                                              | bảng settings provider                                                                                                                                                        |
| `services.txt`, `dumpsys-*.txt`                                                    | `service list` + dump: activity, battery, display, audio, media.camera, sensorservice, input, window, car_service, bluetooth_manager, wifi, location, telephony.registry, usb |
| `logcat-main.txt` (16,5 MB), `logcat-system.txt`, `logcat-events.txt`, `dmesg.txt` | full log từ boot gần nhất                                                                                                                                                     |
| `init-rcs.txt`                                                                     | ghép mọi /init*.rc, /vendor/etc/init/_.rc, /system/etc/init/_.rc                                                                                                              |
| `ecarx-services.txt`                                                               | dump gocsdk / gocsdk_auth / ecarx_core_server / fota_service / hal_mcuupdate_service                                                                                          |

## 4. App inventory (87 package)

### Sideloaded /data (chỉ root nhìn thấy)

| Package                                                     | Ghi chú                       |
| ----------------------------------------------------------- | ----------------------------- |
| `com.topjohnwu.magisk`                                      | Magisk manager — nguồn root   |
| `app.revanced.android.youtube` + `app.revanced.android.gms` | ReVanced YouTube + microG     |
| `com.alphainventor.filemanager`                             | Total Commander               |
| `com.android.vending`                                       | Play Store (chạy qua microG)  |
| `com.dmkcv.stagelight` (+ launcherplugin)                   | StageLight — helper ADB Wi-Fi |
| `com.geekit.wifi`, `com.ex.auto`                            | tool ngoài                    |

### App hệ thống đáng chú ý (vendor/Geely/ECarX)

| Package                                                                    | Ghi chú                                                                                                                         |
| -------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| `com.flyme.auto.*`                                                         | cả stack Flyme Auto: launcher, systemui, settings, hvac, keyserver, safe (bảo mật), customize, mediacontrol, radio/bt/usb music |
| `com.geely.controlcenter`, `com.geely.lifecontrol`                         | control center, life control                                                                                                    |
| `com.ecarx.*`, `ecarx.*`                                                   | XSF/EAS core service, debug tool, parking (camera 360 AVM)                                                                      |
| `com.njda.aauto` / `com.njda.carplay`                                      | bridge AndroidAuto / Apple CarPlay                                                                                              |
| `com.mediatek.engineermode`, `com.mediatek.mtklogger`, `com.mediatek.ygps` | tool kỹ thuật MTK còn nguyên                                                                                                    |
| `com.chinatsp.update`, `com.android.car.systemupdater`                     | 2 bộ OTA updater (TS + stock)                                                                                                   |
| `com.huawei.hisight/hiviewlite/nearby/dmsdpdevice`                         | thành phần Huawei HiCar                                                                                                         |
| `com.iqqijni.car.keyboard`                                                 | Sogou car input method (priv-app)                                                                                               |
| `com.jsbd.autotest`                                                        | app test nhà máy jsbd/Beidou                                                                                                    |

## 5. Fact runtime đáng chú ý (từ dump)

- `init.svc.*` trong props: ~100 service đang chạy — ECarX core (`gocsdk`,
  `gocsdk_auth`, `ecarx_core_server`), stack camera EVS (`evsapp`,
  `evsengine`), `hal_mcuupdate_service` (flasher MCU CAN), `fota_service`,
  CarPlay mdns/monitor, modem init MTK **đã stop** (không có SIM/data).
- Wi-Fi hotspot interface `ap0`, chip MTK CONSYS; Bluetooth qua
  `bluetooth-1-0`.
- `screen_off_timeout=0` (màn không bao giờ ngủ — đúng tính chất HU).
- `com.android.car.hvac.demo=true` — property demo mode HVAC.
- dumpsys battery là profile sạc giả/always-plugged đặc trưng của HU.

## 6. Giới hạn / lưu ý

- Toàn bộ trên dump với quyền root; shell thường sẽ mất `/data/app`, dmesg
  và phần lớn section dumpsys.
- Log chỉ tính từ lần boot gần nhất (`logcat -d`); muốn lịch sử nhiều boot
  thì kéo `mobilelog` từ storage của `com.mediatek.mtklogger`.
- `dumpsys telephony.registry` gần như rỗng — modem/SIM không hoạt động.
