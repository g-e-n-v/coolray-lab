# Flash & Unlock ADB — Geely Coolray 2026 VN (IHU689G)

Toolset verified on the car (21/09/2026): flashing the CommunityPack package via
the engineering menu without disassembling the dash, signing a custom OTA package
for the IHU689G, and ADB unlock routes.

## 0. Verified car parameters (from the IHU log)

| Item            | Value                                                              |
| --------------- | ------------------------------------------------------------------ |
| Head unit       | IHU689G (ECARX, "Beidou"/jsbd firmware)                            |
| Firmware        | `3C6525_SW0A5LV0126H102000000` (targetName: `3C6525_SW0A5LV`)      |
| OS              | Android 9 (API 28), Flyme Auto 1.8.0, arm64-v8a                    |
| Protection      | No dm-verity on /system, SELinux permissive                        |
| Recovery        | Accepts packages signed with the AOSP platform key (serial `B3998086D056CFFA`) |
| Wi-Fi           | MTK CONSYS_ECARXP chip, hotspot interface `ap0`, country code `cn` |
| Google services | None                                                               |

## 1. Directory layout

```
geely-new-coolray-vn/
├── README.md                        # package overview + layout + build process
├── docs/flash-adb-unlock.md         # this file
├── keys/                            # aosp_platform.x509.pem, platform.pk8
│                                    #   (signing keys, accepted by the car's recovery)
├── vendor/signapk/                  # SignApk (patched to drop conscrypt, Java 17/ARM)
│                                    #   + BouncyCastle deps
├── scripts/
│   ├── build-update.sh              # build + sign + (optionally) copy to USB
│   ├── embed-app.sh                 # embed an APK as a system app into payload/
│   └── verify-ota-signature.py      # replicates Android 9 recovery's verify_file()
├── payload/                         # SOURCE OF TRUTH (self-contained) — payload with
│                                    #   patched metadata; edit by hand/embed-app.sh
│                                    #   to add apps (see payload/README.md)
└── dist/3C6525_SW0A5LV/OS/          # flash package (built from payload/)
    ├── update.zip
    └── md5.txt                      # 32 hex characters, NO newline
```

The build **depends on nothing outside this directory**. The stock packages for
3 other cars (coolray_l / coolray_g / x50_plus) and the Windows installer with
adb.exe are kept for reference/research only, under
`../../referrences/community-pack/`.

## 2. Flashing (procedure run successfully on the car)

1. FAT32 USB stick, copy the whole `dist/3C6525_SW0A5LV/` folder to the **root**
   of the stick:
   ```
   <USB>/
   └── 3C6525_SW0A5LV/
       └── OS/
           ├── update.zip
           └── md5.txt        # 32 hex characters, NO newline
   ```
2. Plug the USB into the **left port** with the **engine running**; wait for the
   "Inserted USB Device" toast.
3. Open the Phone app on the HU and enter the engineering menu code:
   `#*` + (month+10) + day + 12-hour clock hour.
   - Real example: 21/09 at ~18:00 → type `#*19216`.
   - The Russian guide says to zero-pad each part to 2 digits (e.g. 06/02 20:00
     → `#*120608`). If one form is not accepted, try the other.
4. Tap **「U盘升级」** (USB upgrade).
5. Wait for the progress bar to finish; the recovery screen shows `GOTOVO`
   (an accompanying `Status 7` is normal).
6. Press and hold the **right** joystick on the steering wheel until the HU
   reboots.
7. Open the **StageLight** app on the home screen.

The current flash package installs only **StageLight** into `/system/app/`
(CommunityPack Market was removed).

Note: the 2026 firmware also scans the path `JsbdUpgrade/OS/update.zip`. If the
HU says "ensure udisk plugged...", you can additionally copy update.zip into that
structure. The path verified on this car is the `3C6525_SW0A5LV` folder at the
USB root.

## 3. Unlocking ADB after flashing

**Option 1 — ADB over Wi-Fi via StageLight (recommended, using a Mac):**

1. Keep the **engine running** during the whole process (see §3.1 below).
2. Open **StageLight** on the HU, enable **「ADB Wi-Fi / 无线ADB」**.
3. The guide is explicit: after enabling it you **must reboot the HU** (hold the
   right joystick) before ADB Wi-Fi comes up.
4. Put the HU and the Mac on the same network:
   - If the HU runs its own hotspot, its IP is usually `192.168.43.1`; or
   - Connect the HU to your phone's hotspot (Settings, WLAN) and check the HU's IP.
5. On the Mac:
   ```bash
   adb connect <HU_IP>:5555     # the HU shows a dialog; tick "Always allow"
   adb install -r app.apk
   ```

**Option 2 — USB cable + pins 5-6 jumper:** requires dash disassembly; use only
when Wi-Fi is completely blocked (see the guide at checkbuy.ru/geely/guide).

**Option 3 — embed the APK into update.zip (no ADB needed):**
```bash
./scripts/embed-app.sh <app.apk> [AppName]   # copy into payload/system/app/ +
                                            # add set_metadata in updater-script
./scripts/build-update.sh deploy <USB_VOLUME>  # build + copy to USB, then flash as in §2
```
Suitable for apps that must be system apps (MANIFEST/CERT are regenerated at
signing; no manual edits). To remove an app: delete its folder under
`payload/system/app/<AppName>/` and the 2 corresponding set_metadata lines.
Details + per-file rules: `payload/README.md`. Each added app requires one flash.

### 3.1. Why Wi-Fi often "won't turn on" (found in the car's logs)

The IHU log shows that the vendor service `BDPowerManagerService` (Beidou, inside
`com.android.car`) **controls the Wi-Fi radio based on the car's power state
(MCU)**:

- Whenever the MCU switches to `powerState = 6` (power state change, e.g. engine
  off/ACC): it immediately calls `stop Hotspot` then `WifiService: stopSoftAp`
  (21/09 log: 18:17:02 and 18:26:28 — exactly when Wi-Fi was seen turning itself
  off).
- When back at `powerState = 7` it **only restores Bluetooth**
  (`persist.sys.jsbd.btstatus = 1`), never re-enables Wi-Fi. Across the entire
  log there is not a single `startSoftAp` line.

Practical consequences:

- **Wi-Fi enabled while the engine is off gets killed immediately** → always
  enable it with the engine running.
- If the Wi-Fi toggle still won't stay on even with the engine running: per 4PDA
  (topic 1001500), this model's international firmware **lacks the vendor app
  that controls the Wi-Fi hardware** → the community workaround is to install a
  helper app like **GeeKitWiFi**
  (`am start -n com.geekit.wifi/.WifiLaunchActivity`) via ADB, or embed that APK
  into the update.zip (Option 3) and flash it, because ADB over USB on Flyme
  1.8.0 usually does not respond.
- Another approach, verified on the EX2 line (IHU629G, same platform): open the
  **Wi-Fi settings inside the engineering menu** (different from the regular
  Settings), connect the HU to a phone hotspot, note the IP, then
  `adb connect IP:5555`.

## 4. Building a new package / embedding an APK

```bash
./scripts/embed-app.sh <app.apk> [AppName] # (optional) embed another system app
./scripts/build-update.sh                  # build → dist/3C6525_SW0A5LV/OS/
./scripts/build-update.sh deploy BOBBY     # build + copy to /Volumes/BOBBY
                                           # (auto-removes macOS ._ junk files, prints menu code)
```

The pipeline is self-contained and reads only from `payload/` (the source of
truth — editing rules: `payload/README.md`). `build-update.sh` zips the payload,
signs it whole-file with the key in `keys/`, auto-bumps `post-timestamp`, checks
the cert serial `B3998086D056CFFA`, verifies the signature with
`verify-ota-signature.py`, and writes `md5.txt` (32 hex chars, no newline).
Requires Java 17 (`brew install openjdk@17`).

SignApk was patched to drop conscrypt (UnsatisfiedLinkError on Java 17/ARM);
source at `vendor/signapk/SignApk.java`, jar at `vendor/signapk/SignApk.jar`.

## 5. Pulling logs from the car (diagnostics)

In the engineering menu tap **「拷贝IHU日志」** (copy IHU logs) → the USB stick
gets an `IHU689G_log_*` folder (recovery log, mobilelog/APLog, properties/
getprop). This is the source for finding the targetName
(`TestMain: targetName = 3C6525_SW0A5LV`), Wi-Fi state, firmware evidence
(e.g. `PQ2A.190405.003`, no dm-verity).

## 6. Warnings

- **NEVER tap 「CAN Configuration」 or 「Format Data」** in the engineering menu → brick.
- OEM OTA updates may close ADB and break CommunityPack; the pack only supports
  Flyme Auto 1.8.0-1.8.1.
- APKs must be compatible with **Android 9 (minSdk ≤ 28, not higher)**,
  arm64-v8a, no Google Play Services needed, landscape UI. (For example: current
  Waze and YouTube 21.37 require Android 10 and cannot be installed; older
  versions must be used.)
- macOS writes `._*` and `.Spotlight-V100` junk onto FAT32 USB sticks → the
  deploy step auto-removes them inside the package folder; ideally run
  `dot_clean` on the whole stick before unplugging.
- Always do a dry run before flashing a first custom-built package.

## 7. Sources

- Guide: https://checkbuy.ru/geely/guide (CommunityPack, jumper, ADB Wi-Fi)
- 4PDA: topic 1001500 (Coolray HU), 1109487 (Restyling 2025/Coolray L), 1085149 (SX11-A3)
- XDA: thread 4771849 (Binyue L Flyme Auto E 1.8.0)
- Telegram: t.me/CoolRayL, t.me/GeelyCoolrayL ("Geely Coolray L")
- wirthus/geely-docs (ADB activation on older GKUI models, code `#*32279`)
- AOSP SignApk + platform key: aosp-mirror/platform_build
