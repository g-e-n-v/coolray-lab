# Geely New Coolray VN 2026 — Phần cứng IHU689G (đã xác minh)

Tài liệu tổng hợp mọi thông tin đã xác minh về head unit (HU) của xe, dùng làm
baseline để phát triển firmware/update package. Ghi chú mức tin cậy:

- `[LOG]` — từ log thật của xe (mobilelog, dry-run log, getprop)
- `[FLASH]` — đã xác minh bằng flash thành công trên xe 21/09/2026
- `[META]` — từ metadata của các gói update.zip (phân tích 05/10/2026)
- `[WEB]` — nguồn ngoài (4PDA, XDA, checkbuy.ru), chưa kiểm chứng trực tiếp trên xe này

## 1. Nhận dạng xe & head unit

| Mục             | Giá trị                                                                            | Nguồn             |
| --------------- | ---------------------------------------------------------------------------------- | ----------------- |
| Xe              | Geely New Coolray 2026, bản Việt Nam (global spec)                                 | —                 |
| Head unit       | **IHU689G** (ECARX, firmware "Beidou"/jsbd)                                        | `[LOG]` `[FLASH]` |
| Firmware        | `3C6525_SW0A5LV0126H102000000` (targetName: `3C6525_SW0A5LV`)                      | `[LOG]`           |
| OS              | Android 9 (API 28), Flyme Auto 1.8.0, arm64-v8a                                    | `[LOG]`           |
| Build ID        | `PQ2A.190405.003` test-keys                                                        | `[META]` `[LOG]`  |
| Bảo vệ          | Không dm-verity trên /system, SELinux permissive                                   | `[LOG]`           |
| Recovery        | Chấp nhận gói ký bằng **AOSP testkey** (serial `B3998086D056CFFA`, fp `C8A2E9BC…`) | `[FLASH]`         |
| Google services | Không có                                                                           | `[LOG]`           |

## 2. Module phần cứng (ma trận đã xác nhận)

| Module         | Trạng thái                                                                 | Bằng chứng      |
| -------------- | -------------------------------------------------------------------------- | --------------- |
| **Wi-Fi**      | ✓ Có, chip MTK `CONSYS_ECARXP`, hotspot interface `ap0`, country code `cn` | `[LOG]`         |
| **GPS**        | ✓ Có                                                                       | Xác nhận chủ xe |
| **4G / SIM**   | × Không có                                                                 | Xác nhận chủ xe |
| Bluetooth      | ✓ Có (tự khôi phục sau power cycle: `persist.sys.jsbd.btstatus`)           | `[LOG]`         |
| FM radio tuner | Chưa kiểm chứng trên xe này                                                | —               |

## 3. Ánh xạ 3 phiên bản checkbuy.ru → model HU (mới xác minh 05/10/2026)

Giải nén 3 gói `install_market/*/OS/update.zip` từ git index: **payload 3 gói
giống nhau từng byte** (cùng `CommunityPackMarket.apk` `972b965091a7…`,
`Stagelight.apk` `3e3fab060ff6…`, cùng `update-binary`, cùng `updater-script`,
cùng AOSP testkey). Khác biệt duy nhất nằm ở **tên thư mục** và **`pre-device`
trong `META-INF/com/android/metadata`**:

| Gói                        | pre-device (`[META]`) | Xe                                   | WiFi                                  | GPS                                     | 4G                           |
| -------------------------- | --------------------- | ------------------------------------ | ------------------------------------- | --------------------------------------- | ---------------------------- |
| `3C5024_SW0SX11_coolray_l` | **IHU624G**           | Coolray L / Binyue L (TQ + nhập Nga) | ✓                                     | ✓ (Yandex Navigator chạy thật — drive2) | ✓ eSIM (thread hàn SIM 4PDA) |
| `3C5625_SW0SX11_coolray_g` | **IHU628G**           | Coolray G (bản global)               | ✓                                     | ✓                                       | ×                            |
| `3C6325_SW0SX11_x50_plus`  | **IHU634G**           | Belgee X50+                          | ✓ (hardware, khóa SW — 4PDA #204–208) | × "нету" (4PDA #207)                    | ×                            |
| **Xe này**                 | **IHU689G**           | Coolray VN                           | ✓ CONSYS                              | ✓                                       | ×                            |

Ghi chú thêm từ `[META]`: cả 3 gói checkbuy cùng `post-build`
`GEELY/full_IHU624G/…405:user/test-keys`, `post-timestamp 1750069892`
(= 16/06/2025 18:31:32 CST — trùng "Build Date" của IHU624G trong 4PDA #229).
Tức là checkbuy build trên một cây firmware, chỉ đổi target/`pre-device` cho
từng xe.

## 4. Kết luận: version tương đồng nhất

Theo tiêu chí loại trừ (phải có WiFi **và** GPS; không có 4G):

1. × `x50_plus` (IHU634G) — **loại**: thiếu GPS.
2. ⚠️ `coolray_l` (IHU624G) — có đủ WiFi+GPS nhưng **thừa 4G eSIM** → không khớp cấu hình mạng.
3. ✓ **`coolray_g` (IHU628G) — tương đồng nhất**: biến thể duy nhất khớp cả
   chiều có (WiFi+GPS) lẫn chiều không (no 4G). Hợp logic thị trường: "G" =
   Global, xe VN là New Coolray bản global.

Cùng-họ-4-HU (624/628/634/689): cùng Android 9 `PQ2A.190405.003 test-keys`,
recovery cùng chấp nhận AOSP testkey, cùng nền MTK/ECARX (E02-class,
MT6771/Helio P60 theo 4PDA cho IHU624G) với connectivity CONSYS.

**Lưu ý phát triển**: "tương đồng" ≠ "giống hệt" — IHU689G là model riêng
(firmware Beidou/jsbd). Dùng `coolray_g`/IHU628G làm baseline tham chiếu phần
cứng; giữ target name riêng `3C6525_SW0A5LV`; partition map/getprop đối chiếu
từ dry-run log của chính xe (`ihu689g/mobilelog.zip`, `recoverylog.zip`).

## 5. So sánh gói tự build vs gói checkbuy

Diff byte-level (05/10/2026, từ git index): gói `3C6525_SW0A5LV` **giống hệt**
gói checkbuy về payload (APK, update-binary, otacert, updater-script — diff
rỗng, kể cả block tạo `/data/misc/coolray`) và **cùng một key ký** (AOSP
testkey `B3998086D056CFFA`). Chỉ khác:

1. Tên thư mục/target: `3C6525_SW0A5LV`
2. 4 dòng metadata: `pre-device=IHU689G`, `post-build=GEELY/full_IHU689G/…20`,
   `post-build-incremental=20`, `post-timestamp` mới.

Cơ chế khớp của menu kỹ thuật 「U盘升级」: quét USB và khớp **đúng target name
= tên thư mục gốc USB** → gói checkbuy (3C5024/5625/6325…) sẽ không bao giờ
được xe này nhận.

## 6. Hành vi phần mềm liên quan phần cứng

- **Wi-Fi bị tắt theo nguồn xe** `[LOG]`: vendor service `BDPowerManagerService`
  (Beidou, trong `com.android.car`) gọi `stopSoftAp` mỗi khi MCU chuyển
  `powerState = 6`; khi `powerState = 7` chỉ khôi phục Bluetooth, không bao giờ
  `startSoftAp`. → Luôn bật Wi-Fi khi **nổ máy**.
- Nếu toggle Wi-Fi vẫn không bật khi nổ máy: firmware quốc tế dòng này có thể
  thiếu app vendor điều khiển radio Wi-Fi → cài **GeeKitWiFi**
  (`am start -n com.geekit.wifi/.WifiLaunchActivity`) qua ADB Wi-Fi/StageLight
  hoặc nhúng vào update.zip (4PDA topic 1001500). `[WEB]`
- Menu kỹ thuật: mã `#*` + (tháng+10) + ngày + giờ(12h) — trùng khớp công thức
  XDA thread 4771849 (Binyue L Flyme Auto E 1.8.0, bản global); mật khẩu hiện
  switch ADB trên bản global 1.8.0: `BICV1024` `[WEB]`; ADB USB trên 1.8.0
  thường không phản hồi → đi qua StageLight/ADB Wi-Fi.
- Trên dòng EX2 (IHU629G, cùng nền tảng): có mục Wi-Fi settings ngay trong menu
  kỹ thuật — đáng thử trên IHU689G. `[WEB]`

## 7. Nguồn

- Log xe: `ihu689g/` (mobilelog.zip, recoverylog.zip, dry-run), flash 21/09/2026
- Metadata & payload 3 gói: `community-pack/install_market/*/OS/update.zip`
  (giải nén từ git index 05/10/2026)
- Hướng dẫn chi tiết flash/unlock: `geely-new-coolray-vn/flash-adb-unlock/README.md`
- checkbuy.ru: /geely/guide, /geely/market, /geely/pro, /geely/morphius, /geely/changelog
- 4PDA: topic 1109487 (đã đọc đủ 12 trang), 1001500, 1085149
- XDA: thread 4771849; Drive2: bài Анастасия (Binyue L, 01/2026)
