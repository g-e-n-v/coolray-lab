# Flash & Unlock ADB — Geely Coolray 2026 VN (IHU689G)

Bộ công cụ đã kiểm chứng trên xe (21/09/2026): flash gói CommunityPack qua menu
kỹ thuật không cần tháo taplo, ký gói OTA riêng cho IHU689G, và các đường unlock ADB.

## 0. Thông số xe đã xác minh (từ log IHU)

| Mục             | Giá trị                                                             |
| --------------- | ------------------------------------------------------------------- |
| Head unit       | IHU689G (ECARX, "Beidou"/jsbd firmware)                             |
| Firmware        | `3C6525_SW0A5LV0126H102000000` (targetName: `3C6525_SW0A5LV`)       |
| OS              | Android 9 (API 28), Flyme Auto 1.8.0, arm64-v8a                     |
| Bảo vệ          | Không dm-verity trên /system, SELinux permissive                    |
| Recovery        | Chấp nhận gói ký bằng AOSP platform key (serial `B3998086D056CFFA`) |
| Wi-Fi           | Chip MTK CONSYS_ECARXP, hotspot interface `ap0`, country code `cn`  |
| Google services | Không có                                                            |

## 1. Cấu trúc thư mục

```
geely-new-coolray-vn/
├── README.md                        # mô tả gói + cách build
├── 3C6525_SW0A5LV/OS/               # gói flash (payload = checkbuy coolray_g)
│   ├── update.zip
│   └── md5.txt                      # 32 ký tự hex, KHÔNG có xuống dòng
├── tools/                           # SignApk (patch bỏ conscrypt, chạy Java 17/ARM)
│   ├── build-update.sh              # build + ký + (tùy chọn) copy ra USB
│   ├── prepare-payload.sh           # tạo payload từ checkbuy coolray_g
│   ├── aosp_platform.x509.pem, platform.pk8   # khóa ký (recovery xe đã chấp nhận)
│   ├── SignApk.jar, SignApk.java, *.jar       # signer + BouncyCastle deps
│   └── verify_ota_signature.py      # mô phỏng verify_file() của recovery Android 9
└── packages/src/payload-real/       # payload đã patch metadata (tự sinh)
```

Gói stock cho 3 xe khác (coolray_l / coolray_g / x50_plus) nằm ở
`../../community-pack/install_market/`. Installer Windows kèm adb.exe nằm ở
`../../community-pack/CommunityPack.Installer-2.3.17-win-x64/`.

## 2. Flash (quy trình đã chạy thành công trên xe)

1. USB FAT32, copy nguyên thư mục `3C6525_SW0A5LV/` vào **gốc** USB:
   ```
   <USB>/
   └── 3C6525_SW0A5LV/
       └── OS/
           ├── update.zip
           └── md5.txt        # 32 ký tự hex, KHÔNG có xuống dòng
   ```
2. Cắm USB vào **cổng trái**, xe **đang nổ máy**, chờ toast "Inserted USB Device".
3. Mở app Điện thoại trên GU, nhập mã menu kỹ thuật: `#*` + (tháng+10) + ngày + giờ 12h.
   - Ví dụ đã dùng thật: 21/09 lúc ~18h gõ `#*19216`.
   - Theo guide Nga thì pad 2 chữ số mỗi phần (vd 06/02 20:00 gõ `#*120608`).
     Nếu một mã không nhận, thử dạng còn lại.
4. Bấm **「U盘升级」** (nâng cấp từ USB).
5. Chờ progress bar chạy xong, màn recovery hiện `GOTOVO` (kèm `Status 7` là bình thường).
6. Giữ lâu joystick **phải** trên vô-lăng cho tới khi GU khởi động lại.
7. Mở app **StageLight** trên màn hình chính.

Gói flash hiện tại chỉ cài **StageLight** vào `/system/app/` (đã bỏ
CommunityPack Market).

Lưu ý: firmware 2026 cũng có đường quét `JsbdUpgrade/OS/update.zip`. Nếu GU báo
"ensure udisk plugged...", có thể copy update.zip vào thêm cấu trúc đó. Đường
đã verify trên xe này là thư mục `3C6525_SW0A5LV` ở gốc USB.

## 3. Unlock ADB sau khi flash

**Cách 1 — ADB Wi-Fi qua StageLight (khuyến nghị, dùng Mac):**

1. Xe **nổ máy** trong suốt quá trình (xem mục 3.1 bên dưới).
2. Mở **StageLight** trên GU, bật **「ADB Wi-Fi / 无线ADB」**.
3. Guide ghi rõ: sau khi bật **phải reboot GU** (giữ joystick phải) thì ADB Wi-Fi mới lên.
4. Cho GU và Mac chung mạng:
   - GU tự phát hotspot thì IP thường là `192.168.43.1`; hoặc
   - GU nối vào hotspot điện thoại (Cài đặt, WLAN), xem IP của GU.
5. Trên Mac:
   ```bash
   adb connect <IP_GU>:5555     # GU hiện hộp thoại, tích "Luôn cho phép"
   adb install -r app.apk
   ```

**Cách 2 — cáp USB + jumper chân 5-6:** phải tháo taplo, chỉ dùng khi Wi-Fi bị
chặn hoàn toàn (xem hướng dẫn checkbuy.ru/geely/guide).

**Cách 3 — nhúng APK vào update.zip (không cần ADB):** thêm APK vào
`packages/src/payload-real/system/app/<TênApp>/<TênApp>.apk` (nhìn theo cấu trúc
Stagelight), sửa `updater-script` thêm 2 dòng set_metadata tương tự, rồi
chạy `tools/build-update.sh deploy <TÊN_USB>` và flash lại như mục 2. Phù hợp app
cần làm system app. Mỗi lần thêm app phải flash 1 lần.

### 3.1. Vì sao Wi-Fi hay "không mở được" (phát hiện từ log xe)

Log IHU cho thấy dịch vụ vendor `BDPowerManagerService` (Beidou, trong
`com.android.car`) **điều khiển radio Wi-Fi theo trạng thái nguồn xe (MCU)**:

- Mỗi khi MCU chuyển `powerState = 6` (đổi trạng thái nguồn, vd tắt máy/ACC):
  nó gọi `stop Hotspot` rồi `WifiService: stopSoftAp` ngay lập tức
  (log 21/09: 18:17:02 và 18:26:28, đúng các thời điểm bật Wi-Fi bị tự tắt).
- Khi về `powerState = 7` nó **chỉ khôi phục Bluetooth**
  (`persist.sys.jsbd.btstatus = 1`), không bao giờ bật lại Wi-Fi. Trong toàn bộ
  log không có một dòng `startSoftAp` nào.

Hệ quả thực tế:

- **Bật Wi-Fi lúc xe không nổ máy thì bị tắt ngay** → luôn bật khi nổ máy.
- Nếu toggle Wi-Fi vẫn không bật nổi cả khi nổ máy: theo 4PDA (topic 1001500),
  firmware quốc tế của dòng này **thiếu app vendor điều khiển phần cứng Wi-Fi**
  → giải pháp cộng đồng là cài app hỗ trợ kiểu **GeeKitWiFi**
  (`am start -n com.geekit.wifi/.WifiLaunchActivity`) qua ADB, hoặc nhúng APK
  đó vào gói update.zip (Cách 4) rồi flash, vì ADB USB trên Flyme 1.8.0 thường
  không phản hồi.
- Cách dùng khác đã kiểm chứng trên dòng EX2 (IHU629G, cùng nền tảng): vào
  **Wi-Fi settings ngay trong menu kỹ thuật** (khác Settings thường), cho GU nối
  hotspot điện thoại, xem IP rồi `adb connect IP:5555`.

## 4. Build gói mới / nhúng APK

```bash
cd tools
./build-update.sh                # build gói → ../3C6525_SW0A5LV/OS/
./build-update.sh deploy BOBBY   # build + copy ra /Volumes/BOBBY
                                 # (tự xóa file rac ._ của macOS, tự in mã menu)
```

Script: `prepare-payload.sh` giải nén gói checkbuy `coolray_g` làm payload
(giống hệt từng byte) và patch 4 dòng metadata cho IHU689G, rồi zip từ
`packages/src/`, ký whole-file bằng AOSP platform key, tự bump
`post-timestamp`, kiểm tra cert serial `B3998086D056CFFA`, verify chữ ký
bằng `verify_ota_signature.py`, ghi `md5.txt` (32 hex, không xuống dòng).
Yêu cầu Java 17 (`brew install openjdk@17`).

SignApk đã được patch bỏ conscrypt (lỗi UnsatisfiedLinkError trên Java 17/ARM),
nguồn tại `tools/SignApk.java`, jar tại `tools/SignApk.jar`.

## 5. Lấy log từ xe (chẩn đoán)

Trong menu kỹ thuật bấm **「拷贝IHU日志」** (copy IHU logs) → USB sinh thư mục
`IHU689G_log_*` (recovery log, mobilelog/APLog, properties/getprop). Đây là nguồn
để tìm targetName (`TestMain: targetName = 3C6525_SW0A5LV`), trạng thái Wi-Fi,
bằng chứng fw (vd `PQ2A.190405.003`, không dm-verity).

## 6. Cảnh báo

- **Tuyệt đối không bấm 「CAN Configuration」 hay 「Format Data」** trong menu kỹ thuật → brick.
- OTA từ hãng có thể đóng ADB và phá CommunityPack; pack chỉ hỗ trợ Flyme Auto 1.8.0-1.8.1.
- APK phải tương thích **Android 9 (minSdk ≤ 28, không cao hơn)**, arm64-v8a, không
  cần Google Play Services, UI ngang. (Ví dụ: Waze bản mới và YouTube 21.37 đều
  đòi Android 10 nên không cài được; phải dùng bản cũ hơn.)
- macOS ghi file rác `._*` và `.Spotlight-V100` lên USB FAT32 → script deploy tự
  xóa trong thư mục gói; tốt nhất `dot_clean` cả USB trước khi rút.
- Luôn chạy dry-run trước khi flash gói tự build lần đầu.

## 7. Nguồn

- Guide: https://checkbuy.ru/geely/guide (CommunityPack, jumper, ADB Wi-Fi)
- 4PDA: topic 1001500 (ГУ Coolray), 1109487 (Restyling 2025/Coolray L), 1085149 (SX11-A3)
- XDA: thread 4771849 (Binyue L Flyme Auto E 1.8.0)
- Telegram: t.me/CoolRayL, t.me/GeelyCoolrayL ("Geely Coolray L")
- wirthus/geely-docs (ADB activation dòng GKUI cũ, mã `#*32279`)
- AOSP SignApk + platform key: aosp-mirror/platform_build
