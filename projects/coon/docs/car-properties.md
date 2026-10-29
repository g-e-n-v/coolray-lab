# Car properties đã verify trên xe (Coolray VN 2026, IHU689G)

Bảng mapping **logical (AdapterAPI)** ↔ **physical (VHAL)** bắt trực tiếp qua logcat
khi chuyển mode trên xe. Nguồn: `dumps/mode-capture/capture.log` (10/24/2026,
10:15–10:17, pid 2518 = `com.flyme.auto.settings` qua `VehicleModules`/`MyCar`).

## Chế độ lái (4 mode)

- Logical func: `DM_FUNC_DRIVE_MODE_SELECT` = **570491136**
- Physical VHAL: `PHEV_DRV_MODE_SET` = **557850837** (`0x214020d5`), areaId 0,
  đọc `CarPropertyManager.getIntProperty(557850837, 0)`

| Physical | Logical | Mode |
| --- | --- | --- |
| 1 | 570491138 | COMFORT (Thoải mái) |
| 2 | 570491137 | ECO (Tiết kiệm) |
| 3 | 570491139 | DYNAMIC (Thể thao) |
| 6 | 570491201 | ADAPTIVE (Thông minh — xe xăng; hybrid dùng AUTOTERRAIN 570491216) |

## Độ siết vô lăng ("Hỗ trợ lái" trong Settings)

- Logical func: `SETTING_FUNC_STEERING_ASSISTANCE_LEVEL` = **537331712**
- Physical VHAL: `DRIVE_SWC_EPS_MODE` = **557850626** (`0x21402002`), areaId 0

| Physical | Logical | Mức |
| --- | --- | --- |
| 1 | 537331715 | LOW (Chế độ thoải mái) |
| 9 | 537331714 | MEDIUM (Tiêu chuẩn) |
| 3 | 537331713 | HIGH (Thể thao) |

Lưu ý physical MEDIUM = **9** (không tuần tự) — đừng tự suy 1/2/3.

## Toggle "trợ lực vô lăng theo chế độ lái"

- Logical func: `DM_FUNC_STEERING_WHEEL_FEEL_SYNC_DRIVEMODE` = **570688256**
- Physical VHAL: `DRIVE_EPS_TORQ_SYN_SET` = **557850628** (`0x21402004`), areaId 0
- 1 = bật (theo mode lái), 0 = tắt (tự chọn mức). Khi bật, app vẫn nhận giá trị
  mức hiện hành qua `DRIVE_SWC_EPS_MODE`.

## Cách đọc/ghi trong app

```kotlin
val cpm = (car.getCarManager(Car.PROPERTY_SERVICE) as CarPropertyManager)
val mode = cpm.getIntProperty(557850837, 0)      // 1=COMFORT 2=ECO 3=SPORT 6=ADAPTIVE
val steer = cpm.getIntProperty(557850626, 0)     // 1=LOW 9=MEDIUM 3=HIGH
val sync = cpm.getIntProperty(557850628, 0)      // 1=sync on
```

Đường thay thế (chuẩn app Geely/Flyme, mapping tự động): dùng wrapper
`com.ecarx.xui.adaptapi.car.Car.createWrapper(ctx)` (boot classpath
`/system/framework/AdapterAPI.jar`) → `getWrappedPropertyId(2, logicalId)` +
`getPropertyValue(logicalValue)` — pattern tham khảo
`extracts/hu-apks/jadx-settings/sources/com/flyme/auto/api/ECarXAdaptApi/AutoFuncImpl.java`
(`setEnum`/`getEnum`).

## Bằng chứng (trích log)

- `[capture.log:10:15:14]` `car callback getAdaptValue : functionId =
  DM_FUNC_DRIVE_MODE_SELECT(570491136) , properId = PHEV_DRV_MODE_SET(557850837)`
  + `properValue = 2 adapterValue = 570491137` (ECO)
- `[capture.log:10:15:18]` `properValue = 6` → `setValue:570491201` (ADAPTIVE)
- `[capture.log:10:15:39]` `DRIVE_SWC_EPS_MODE(557850626) ... properValue = 3
  adapterValue = 537331713` (HIGH)
- `[capture.log:10:15:40]` `properValue = 9 adapterValue = 537331714` (MEDIUM)
- `[capture.log:10:16:42]` `setProperty ... DRIVE_EPS_TORQ_SYN_SET(557850628)
  adapterValue = true properValue = 1`

## IDs liên quan chưa verify giá trị (tham khảo từ dump VHAL)

- `AP_DRIVE_MODE_SET_STATUS` 557854720 (`0x21403000`) — echo set từ HU
- `PHEV_DRV_MODE` 557850839 (`0x214020d7`) — trạng thái mode do xe báo
- `EPS_CUSTOM_STEER_MODE` 557887493 / `EPS_CUSTOM_STEER_MODE_SELECTION`
  557885173 — bản custom steer (không dùng trên UI xe này)
- `MCU_KEY_CODE_DRIVING_MODE` 557884999 — phím vật lý DRIVE MODE
