# projects/usb-upgrade — Gói nâng cấp USB cho IHU689G

Source of truth để build gói USB OTA cho head unit **IHU689G** (Geely New
Coolray 2026 VN, Android 9). Sản phẩm duy nhất của project này là thư mục
`3C6525_SW0A5LV/` — copy ra **root** của USB (FAT32), cắm vào xe và nâng cấp từ
menu kỹ thuật.

## Cấu trúc

```
projects/usb-upgrade/
├── payload/                  # Nội dung update.zip (bản giải nén) — SỬA Ở ĐÂY
│   ├── META-INF/
│   │   ├── com/android/      # metadata, otacert
│   │   └── com/google/android/  # update-binary, updater-script
│   └── system/app/           # app nhúng vào /system (thêm app bằng embed.sh)
├── scripts/
│   ├── build.sh              # build: zip → ký SignApk → verify → md5.txt
│   ├── deploy.sh             # copy dist/3C6525_SW0A5LV/ ra USB (FAT32)
│   ├── embed.sh              # thêm app vào payload/system/app/ (+ set_metadata)
│   └── verify.sh             # kiểm tra chữ ký đúng thuật toán recovery Android 9
├── keys/                     # AOSP platform testkey (serial B3998086D056CFFA)
├── vendor/signapk/           # SignApk + BouncyCastle (toolchain ký, nhị phân)
└── dist/
    └── 3C6525_SW0A5LV/OS/    # ĐẦU RA: update.zip + md5.txt (copy mục này ra USB)
```

Nguyên tắc: `payload/` là nguồn thật; `dist/` chỉ là đầu ra (nhưng vẫn được
commit để có bản artifact); không phụ thuộc gì bên ngoài `projects/usb-upgrade/`.

## Build

```bash
cd projects/usb-upgrade
./scripts/build.sh                 # build + ký + verify → dist/3C6525_SW0A5LV/OS/
./scripts/deploy.sh BOBBY          # copy package đã build vào USB /Volumes/BOBBY
```

Yêu cầu: Java 17 (`brew install openjdk@17`), chạy trên macOS (`md5`, `sed -i ''`).

## Nhúng app vào payload

```bash
./scripts/embed.sh ~/Downloads/App.apk          # tên app = tên file
./scripts/embed.sh ~/Downloads/App.apk AppName  # đặt tên thư mục tùy ý
./scripts/build.sh                              # build lại sau khi embed
```

App được copy vào `payload/system/app/<Name>/` và thêm 2 dòng `set_metadata`
vào updater-script (insert ngay sau block Stagelight). Gỡ app: xoá
`payload/system/app/<Name>/` + xoá 2 dòng tương ứng trong updater-script.

Lưu ý tương thích: Android 9 (minSdk ≤ 28), arm64-v8a, không cần Google Play
Services (xe không có), UI landscape.

## Nâng cấp trên xe

1. Copy `dist/3C6525_SW0A5LV/` ra **root** USB (FAT32, cổng USB trái).
2. Chờ toast "Inserted USB Device", mở app Phone, nhập mã menu kỹ thuật
   `#*<MM+10><DD><HH>` (ví dụ 15:00 ngày 22/10 → `#*25223`).
3. 「U盘升级」 → chờ `XONG` → giữ cần gạt phải trên vô lăng đến khi HU restart.

## Kiểm chứng trước khi flash

```bash
md5 -q dist/3C6525_SW0A5LV/OS/update.zip          # khớp md5.txt
./scripts/verify.sh dist/3C6525_SW0A5LV/OS/update.zip
# PASS: whole-file signature verified (SHA-1|SHA-256) against otacert serial=0xb3998086d056cffa
```

`verify.sh` mô phỏng chính xác `verify_file()` của `bootable/recovery`
(android-9.0.0_r1): footer 6 byte, hash toàn file trừ EOCD comment, PKCS#7
SignedData không signed-attributes, trust anchor = `META-INF/com/android/otacert`
(chỉ cần bash + openssl + unzip, không cần Python).
