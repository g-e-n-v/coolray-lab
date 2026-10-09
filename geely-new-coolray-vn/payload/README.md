# payload/ — SOURCE OF TRUTH of the update package (self-contained)

This directory is the source of truth: `scripts/build-update.sh` zips exactly
`META-INF/` + `system/` from here and then signs it — **it reads nothing outside
`geely-new-coolray-vn/`** (no dependency on `referrences/`). Other files at the
`payload/` root (such as this README.md) are NOT packed into the zip.

Edit here → run `scripts/build-update.sh` → flash `dist/3C6525_SW0A5LV/`.
This payload was verified by flashing on the car on 21/09/2026 (StageLight only).

## Provenance

Originally generated from the checkbuy package `3C5625_SW0SX11_coolray_g`
(IHU628G — the build most similar to the car's IHU689G) with 3 transformations:
extracted verbatim, 4 metadata lines patched for IHU689G, CommunityPackMarket
removed. From now on, edit this directory directly and commit — the git history
is the change log. (The script that regenerated it from the checkbuy package was
retired from the pipeline but remains in git history if ever needed.)

## Per-file editing rules

| File                                          | Editable? | Notes                                                            |
| --------------------------------------------- | --------- | ---------------------------------------------------------------- |
| `META-INF/com/android/metadata`               | limited   | `post-timestamp` is auto-bumped at build time; leave the other 3 lines alone |
| `META-INF/com/google/android/updater-script`  | yes       | edify script — add/remove apps, create dirs… (see the embed template below) |
| `META-INF/com/google/android/update-binary`   | NO        | the vendor's binary edify interpreter; touching it breaks the package |
| `META-INF/com/android/otacert`                | NO        | recovery verifies the whole-file signature against this cert     |
| `META-INF/MANIFEST.MF`, `CERT.SF`, `CERT.RSA` | ignore    | SignApk regenerates them when signing (verified) — no manual edits needed |
| `system/app/<AppName>/<AppName>.apk`          | yes       | system-app APK (Android 9, arm64-v8a, no Google Services needed)  |

## Common tasks

**Embed an APK as a system app:**

```bash
./scripts/embed-app.sh <path/to/app.apk> [AppName]   # copy + set_metadata
./scripts/build-update.sh deploy <USB_VOLUME>        # build + copy to USB
```

**Remove an embedded app:** `rm -rf system/app/<AppName>/` then delete the 2
`set_metadata("/system/app/<AppName>...` lines in `updater-script`.

**Edit updater-script by hand:** keep valid edify syntax (each `set_metadata`
line must keep its trailing `;`); every app in `/system/app` needs 2 set_metadata
lines (dir 0755 + apk file 0644), as in the Stagelight template.

## Warnings

- APKs must be compatible with **Android 9 (minSdk ≤ 28)**, arm64-v8a, must not
  require Google Play Services, landscape UI. Recent Waze/YouTube builds require
  Android 10 → they cannot be installed.
- Before flashing a custom package: run `python3 scripts/verify-ota-signature.py
  dist/3C6525_SW0A5LV/OS/update.zip` (must PASS) and cross-check the md5 against
  md5.txt.
- NEVER tap 「CAN Configuration」/「Format Data」 in the engineering menu (brick).
  Flash procedure + menu codes: `../docs/flash-adb-unlock.md`.
