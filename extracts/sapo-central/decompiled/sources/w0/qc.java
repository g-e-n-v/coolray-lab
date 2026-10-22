package w0;

import android.app.NotificationManager;
import android.content.Intent;
import android.net.wifi.WifiManager;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.LyricsFloaterService;
import com.ex.auto.MainActivity;
import com.ex.auto.MediaBarFloaterService;
import com.ex.auto.PhoneSyncService;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.R;
import com.ex.auto.TempBattPillFloaterService;
import com.ex.auto.VhalProviderService;
import ecarx.xsf.mediacenter.session.PlaybackState;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class qc extends i2.e implements h2.l {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ int f4119i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ qc(int i3, Object obj, Class cls, String str, String str2, int i4) {
        super(i3, obj, cls, str, str2);
        this.f4119i = i4;
    }

    @Override // h2.l
    public final Object c(Object obj) {
        switch (this.f4119i) {
            case 0:
                boolean zBooleanValue = ((Boolean) obj).booleanValue();
                MainActivity mainActivity = (MainActivity) this.b;
                int i3 = MainActivity.f1002z1;
                mainActivity.getClass();
                Intent intent = new Intent(mainActivity, (Class<?>) MediaBarFloaterService.class);
                if (zBooleanValue) {
                    mainActivity.startForegroundService(intent);
                } else {
                    mainActivity.stopService(intent);
                }
                return x1.e.f4647c;
            case 1:
                boolean zBooleanValue2 = ((Boolean) obj).booleanValue();
                MainActivity mainActivity2 = (MainActivity) this.b;
                int i4 = MainActivity.f1002z1;
                mainActivity2.getClass();
                Intent intent2 = new Intent(mainActivity2, (Class<?>) LyricsFloaterService.class);
                if (zBooleanValue2) {
                    mainActivity2.startForegroundService(intent2);
                } else {
                    mainActivity2.stopService(intent2);
                }
                return x1.e.f4647c;
            case 2:
                boolean zBooleanValue3 = ((Boolean) obj).booleanValue();
                MainActivity mainActivity3 = (MainActivity) this.b;
                int i5 = MainActivity.f1002z1;
                mainActivity3.getClass();
                String string = mainActivity3.getString(zBooleanValue3 ? R.string.k_activating_proxy : R.string.k_removing_proxy);
                i2.g.d(string, "getString(...)");
                mainActivity3.t2(string, 0);
                Intent intentPutExtra = new Intent(mainActivity3, (Class<?>) CentralWatchdogService.class).putExtra("auto_proxy_changed", zBooleanValue3);
                i2.g.d(intentPutExtra, "putExtra(...)");
                mainActivity3.startService(intentPutExtra);
                if (zBooleanValue3 && mainActivity3.o0().getBoolean("auto_route_on_aa_connect", false)) {
                    mainActivity3.o0().edit().putBoolean("auto_route_on_aa_connect", false).apply();
                    mainActivity3.startService(new Intent(mainActivity3, (Class<?>) CentralWatchdogService.class).putExtra("auto_route_changed", false));
                }
                return x1.e.f4647c;
            case 3:
                boolean zBooleanValue4 = ((Boolean) obj).booleanValue();
                MainActivity mainActivity4 = (MainActivity) this.b;
                int i6 = MainActivity.f1002z1;
                mainActivity4.getClass();
                mainActivity4.startService(new Intent(mainActivity4, (Class<?>) CentralWatchdogService.class).putExtra("auto_route_changed", zBooleanValue4));
                if (zBooleanValue4 && mainActivity4.o0().getBoolean("auto_proxy_enabled", false)) {
                    mainActivity4.o0().edit().putBoolean("auto_proxy_enabled", false).apply();
                    Intent intentPutExtra2 = new Intent(mainActivity4, (Class<?>) CentralWatchdogService.class).putExtra("auto_proxy_changed", false);
                    i2.g.d(intentPutExtra2, "putExtra(...)");
                    mainActivity4.startService(intentPutExtra2);
                }
                return x1.e.f4647c;
            case 4:
                boolean zBooleanValue5 = ((Boolean) obj).booleanValue();
                MainActivity mainActivity5 = (MainActivity) this.b;
                int i7 = MainActivity.f1002z1;
                mainActivity5.getClass();
                if (zBooleanValue5) {
                    try {
                        WifiManager wifiManager = mainActivity5.K;
                        if (wifiManager == null) {
                            i2.g.h("wifiManager");
                            throw null;
                        }
                        if (!wifiManager.isWifiEnabled()) {
                            WifiManager wifiManager2 = mainActivity5.K;
                            if (wifiManager2 == null) {
                                i2.g.h("wifiManager");
                                throw null;
                            }
                            wifiManager2.setWifiEnabled(true);
                        }
                    } catch (Exception unused) {
                    }
                }
                String string2 = mainActivity5.getString(zBooleanValue5 ? R.string.k_wifi_auto_enable_on : R.string.k_wifi_auto_enable_off);
                i2.g.b(string2);
                mainActivity5.t2(string2, 0);
                return x1.e.f4647c;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                boolean zBooleanValue6 = ((Boolean) obj).booleanValue();
                MainActivity mainActivity6 = (MainActivity) this.b;
                int i8 = MainActivity.f1002z1;
                mainActivity6.o0().edit().putBoolean("telemetry_on", zBooleanValue6).apply();
                VhalProviderService.c(mainActivity6, zBooleanValue6);
                int i9 = QuickAccessFloaterService.t0;
                QuickAccessFloaterService quickAccessFloaterService = QuickAccessFloaterService.x0;
                if (quickAccessFloaterService != null) {
                    quickAccessFloaterService.J();
                }
                mainActivity6.t2(zBooleanValue6 ? "Telemetria ligada (porta 47800)" : "Telemetria desligada", 0);
                return x1.e.f4647c;
            case MusicClient.TYPE_GESTURE /* 6 */:
                boolean zBooleanValue7 = ((Boolean) obj).booleanValue();
                MainActivity mainActivity7 = (MainActivity) this.b;
                int i10 = MainActivity.f1002z1;
                mainActivity7.getClass();
                boolean z2 = PhoneSyncService.f1102z;
                Intent intent3 = new Intent(mainActivity7, (Class<?>) PhoneSyncService.class);
                try {
                    if (zBooleanValue7) {
                        mainActivity7.startForegroundService(intent3);
                    } else {
                        mainActivity7.stopService(intent3);
                    }
                    break;
                } catch (Exception unused2) {
                }
                String string3 = zBooleanValue7 ? mainActivity7.getString(R.string.k_phone_sync_on, 47801) : mainActivity7.getString(R.string.k_phone_sync_off);
                i2.g.b(string3);
                mainActivity7.t2(string3, 0);
                return x1.e.f4647c;
            case PlaybackState.STATE_ERROR /* 7 */:
                boolean zBooleanValue8 = ((Boolean) obj).booleanValue();
                MainActivity mainActivity8 = (MainActivity) this.b;
                int i11 = MainActivity.f1002z1;
                mainActivity8.getClass();
                if (zBooleanValue8) {
                    mainActivity8.startForegroundService(new Intent(mainActivity8, (Class<?>) CentralWatchdogService.class));
                } else {
                    int i12 = pg.f4073a;
                    pg.d(mainActivity8);
                }
                int[] iArr = CentralWatchdogService.S2;
                t1.W();
                String string4 = mainActivity8.getString(zBooleanValue8 ? R.string.k_battery_icon_on : R.string.k_battery_icon_off);
                i2.g.b(string4);
                mainActivity8.t2(string4, 0);
                return x1.e.f4647c;
            case 8:
                boolean zBooleanValue9 = ((Boolean) obj).booleanValue();
                MainActivity mainActivity9 = (MainActivity) this.b;
                int i13 = MainActivity.f1002z1;
                mainActivity9.getClass();
                if (zBooleanValue9) {
                    mainActivity9.startForegroundService(new Intent(mainActivity9, (Class<?>) CentralWatchdogService.class));
                } else {
                    int i14 = pg.f4073a;
                    pg.e(mainActivity9);
                }
                int[] iArr2 = CentralWatchdogService.S2;
                t1.W();
                mainActivity9.t2(zBooleanValue9 ? "Temperatura externa na barra ligada" : "Temperatura externa na barra desligada", 0);
                return x1.e.f4647c;
            case 9:
                boolean zBooleanValue10 = ((Boolean) obj).booleanValue();
                MainActivity mainActivity10 = (MainActivity) this.b;
                int i15 = MainActivity.f1002z1;
                mainActivity10.getClass();
                if (zBooleanValue10) {
                    mainActivity10.startForegroundService(new Intent(mainActivity10, (Class<?>) CentralWatchdogService.class));
                }
                int[] iArr3 = CentralWatchdogService.S2;
                CentralWatchdogService centralWatchdogService = CentralWatchdogService.V2;
                if (centralWatchdogService != null) {
                    centralWatchdogService.f811a.post(new v2(centralWatchdogService, 5));
                }
                String string5 = mainActivity10.getString(zBooleanValue10 ? R.string.k_wifi_icon_on : R.string.k_wifi_icon_off);
                i2.g.b(string5);
                mainActivity10.t2(string5, 0);
                return x1.e.f4647c;
            case 10:
                boolean zBooleanValue11 = ((Boolean) obj).booleanValue();
                MainActivity mainActivity11 = (MainActivity) this.b;
                int i16 = MainActivity.f1002z1;
                if (zBooleanValue11) {
                    mainActivity11.getClass();
                    mainActivity11.startForegroundService(new Intent(mainActivity11, (Class<?>) CentralWatchdogService.class));
                } else {
                    NotificationManager notificationManager = (NotificationManager) mainActivity11.getApplicationContext().getSystemService(NotificationManager.class);
                    if (notificationManager != null) {
                        notificationManager.cancel(15030);
                    }
                }
                int[] iArr4 = CentralWatchdogService.S2;
                t1.W();
                String string6 = mainActivity11.getString(zBooleanValue11 ? R.string.k_signal_icon_on : R.string.k_signal_icon_off);
                i2.g.b(string6);
                mainActivity11.t2(string6, 0);
                return x1.e.f4647c;
            case 11:
                boolean zBooleanValue12 = ((Boolean) obj).booleanValue();
                MainActivity mainActivity12 = (MainActivity) this.b;
                int i17 = MainActivity.f1002z1;
                mainActivity12.getClass();
                if (zBooleanValue12) {
                    mainActivity12.startForegroundService(new Intent(mainActivity12, (Class<?>) CentralWatchdogService.class));
                }
                int[] iArr5 = CentralWatchdogService.S2;
                CentralWatchdogService centralWatchdogService2 = CentralWatchdogService.V2;
                if (centralWatchdogService2 != null) {
                    centralWatchdogService2.f811a.post(new v2(centralWatchdogService2, 0));
                }
                String string7 = mainActivity12.getString(zBooleanValue12 ? R.string.k_brightness_icon_on : R.string.k_brightness_icon_off);
                i2.g.b(string7);
                mainActivity12.t2(string7, 0);
                return x1.e.f4647c;
            case 12:
                boolean zBooleanValue13 = ((Boolean) obj).booleanValue();
                MainActivity mainActivity13 = (MainActivity) this.b;
                int i18 = MainActivity.f1002z1;
                mainActivity13.getClass();
                if (zBooleanValue13) {
                    mainActivity13.startForegroundService(new Intent(mainActivity13, (Class<?>) CentralWatchdogService.class));
                } else {
                    int i19 = pg.f4073a;
                    pg.g(mainActivity13);
                }
                int[] iArr6 = CentralWatchdogService.S2;
                t1.W();
                String string8 = mainActivity13.getString(zBooleanValue13 ? R.string.k_status_km_trip_on : R.string.k_status_km_trip_off);
                i2.g.b(string8);
                mainActivity13.t2(string8, 0);
                return x1.e.f4647c;
            case 13:
                boolean zBooleanValue14 = ((Boolean) obj).booleanValue();
                MainActivity mainActivity14 = (MainActivity) this.b;
                int i20 = MainActivity.f1002z1;
                mainActivity14.getClass();
                if (zBooleanValue14) {
                    mainActivity14.startForegroundService(new Intent(mainActivity14, (Class<?>) CentralWatchdogService.class));
                } else {
                    int i21 = pg.f4073a;
                    pg.f(mainActivity14);
                }
                int[] iArr7 = CentralWatchdogService.S2;
                t1.W();
                String string9 = mainActivity14.getString(zBooleanValue14 ? R.string.k_status_km_total_on : R.string.k_status_km_total_off);
                i2.g.b(string9);
                mainActivity14.t2(string9, 0);
                return x1.e.f4647c;
            case 14:
                boolean zBooleanValue15 = ((Boolean) obj).booleanValue();
                MainActivity mainActivity15 = (MainActivity) this.b;
                int i22 = MainActivity.f1002z1;
                mainActivity15.getClass();
                if (zBooleanValue15) {
                    mainActivity15.startService(new Intent(mainActivity15, (Class<?>) TempBattPillFloaterService.class));
                } else {
                    mainActivity15.stopService(new Intent(mainActivity15, (Class<?>) TempBattPillFloaterService.class));
                }
                return x1.e.f4647c;
            case 15:
                boolean zBooleanValue16 = ((Boolean) obj).booleanValue();
                MainActivity mainActivity16 = (MainActivity) this.b;
                int i23 = MainActivity.f1002z1;
                if (zBooleanValue16) {
                    mainActivity16.getClass();
                    mainActivity16.startForegroundService(new Intent(mainActivity16, (Class<?>) CentralWatchdogService.class));
                } else if (mainActivity16.o0().getBoolean("window_opposite_on_door", false)) {
                    mainActivity16.o0().edit().putBoolean("window_opposite_on_door", false).apply();
                }
                String string10 = mainActivity16.getString(zBooleanValue16 ? R.string.k_window_follows_door_on : R.string.k_window_follows_door_off);
                i2.g.b(string10);
                mainActivity16.t2(string10, 0);
                return x1.e.f4647c;
            case 16:
                boolean zBooleanValue17 = ((Boolean) obj).booleanValue();
                MainActivity mainActivity17 = (MainActivity) this.b;
                int i24 = MainActivity.f1002z1;
                if (zBooleanValue17) {
                    mainActivity17.o0().edit().putBoolean("window_driver_on_door", true).apply();
                    mainActivity17.startForegroundService(new Intent(mainActivity17, (Class<?>) CentralWatchdogService.class));
                }
                String string11 = mainActivity17.getString(zBooleanValue17 ? R.string.k_window_opposite_on : R.string.k_window_opposite_off);
                i2.g.b(string11);
                mainActivity17.t2(string11, 0);
                return x1.e.f4647c;
            default:
                boolean zBooleanValue18 = ((Boolean) obj).booleanValue();
                MainActivity mainActivity18 = (MainActivity) this.b;
                int i25 = MainActivity.f1002z1;
                if (zBooleanValue18) {
                    mainActivity18.getClass();
                    mainActivity18.startForegroundService(new Intent(mainActivity18, (Class<?>) CentralWatchdogService.class));
                    mainActivity18.f1048w.execute(new x8(mainActivity18, 9));
                    e.h hVar = new e.h(mainActivity18);
                    e.d dVar = (e.d) hVar.b;
                    dVar.f1554d = mainActivity18.getString(R.string.k_remember_brightness_howto_title);
                    dVar.f = mainActivity18.getString(R.string.k_remember_brightness_howto_msg);
                    hVar.f(mainActivity18.getString(R.string.common_ok), null);
                    hVar.h();
                } else {
                    androidx.activity.result.b.n(R.string.k_wont_remember_brightness, 0, mainActivity18, "getString(...)");
                }
                return x1.e.f4647c;
        }
    }
}
