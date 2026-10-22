# Coolray Lab

Workspace cho xe **Geely New Coolray 2026 VN** (head unit IHU689G, Android 9).

## Cấu trúc

| Thư mục                 | Nội dung                                                                                           |
| ----------------------- | -------------------------------------------------------------------------------------------------- |
| `projects/usb-upgrade/` | Source of truth để build gói USB OTA → `dist/3C6525_SW0A5LV/` (copy root USB, nhấn nâng cấp từ xe) |
| `docs/`                 | Tài liệu: baseline phần cứng IHU689G, hu-adb-dump, split-screen recipe                             |
| `extracts/`             | (tạm giữ) extract apk sapo-central                                                                 |

## Build gói USB

```bash
cd projects/usb-upgrade
./scripts/build-update.sh              # build + sign → dist/3C6525_SW0A5LV/OS/update.zip
./scripts/build-update.sh BOBBY        # build rồi copy thẳng vào USB /Volumes/BOBBY
```

Sau đó copy folder `dist/3C6525_SW0A5LV/` vào root của USB, cắm vào xe và nâng cấp
từ menu kỹ thuật.

Chi tiết: `projects/usb-upgrade/scripts/` — xem từng script và baseline trong `docs/`.
