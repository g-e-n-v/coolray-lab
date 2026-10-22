package a1;

import android.car.Car;
import android.car.hardware.property.CarPropertyManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import android.view.View;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.AppPipFloaterService;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.HomeFloatingWidgetsService;
import com.ex.auto.HomeWidgetsPollService;
import com.ex.auto.InstallerActivity;
import com.ex.auto.LyricsFloaterService;
import com.ex.auto.MainActivity;
import com.ex.auto.MasterToggleView;
import com.ex.auto.R;
import com.geely.hvacstepperv2.TempStepperService;
import e.e0;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.FutureTask;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import w0.a6;
import w0.ab;
import w0.ae;
import w0.c0;
import w0.d0;
import w0.da;
import w0.j5;
import w0.k5;
import w0.mg;
import w0.n0;
import w0.n3;
import w0.o4;
import w0.p1;
import w0.pg;
import w0.q1;
import w0.v2;
import w0.v7;
import w0.vd;
import w0.xb;
import w0.ya;
import w0.z4;
import w0.zd;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class i implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f34a;
    public final /* synthetic */ Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f35c;

    public /* synthetic */ i(Object obj, int i3, Object obj2) {
        this.f34a = i3;
        this.b = obj;
        this.f35c = obj2;
    }

    /* JADX WARN: Code duplicated, block: B:299:0x034a A[EXC_TOP_SPLITTER, PHI: r6
      0x034a: PHI (r6v14 java.io.File) = (r6v22 java.io.File), (r6v15 java.io.File), (r6v15 java.io.File) binds: [B:127:0x03a2, B:121:0x0375, B:112:0x0348] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v101, types: [java.lang.Iterable, java.lang.Object, java.util.Collection, java.util.List] */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r6v25 */
    @Override // java.lang.Runnable
    public final void run() throws JSONException {
        boolean z2;
        JSONArray jSONArrayOptJSONArray;
        CarPropertyManager carPropertyManager;
        List listI;
        int i3 = 3;
        int i4 = 2;
        JSONArray jSONArray = 0;
        File file = null;
        Float fK = null;
        boolean z3 = true;
        boolean z4 = true;
        boolean z5 = true;
        boolean z6 = true;
        boolean z7 = true;
        final int i5 = 0;
        switch (this.f34a) {
            case 0:
                TempStepperService tempStepperService = (TempStepperService) this.b;
                a aVar = (a) this.f35c;
                int i6 = aVar.b;
                int i7 = aVar.f18a;
                if (tempStepperService.f1298k == null) {
                    tempStepperService.m(0, "CarService indisponível");
                    return;
                }
                if ((i7 * 60) + i6 < 10) {
                    tempStepperService.m(0, "Programa inválido ou tempo demasiado curto");
                    return;
                }
                tempStepperService.n();
                tempStepperService.p();
                tempStepperService.a();
                int iK = tempStepperService.k();
                int iMax = Math.max(1, Math.min(tempStepperService.f1311x, Math.max(1, Math.min(8, aVar.f19c))));
                int iMax2 = Math.max(1, Math.min(tempStepperService.f1311x, Math.max(1, Math.min(8, aVar.f20d))));
                if (tempStepperService.c()) {
                    if (!p1.k(tempStepperService.f1298k, 356517120, iK, iMax)) {
                        Log.e("HvacStepperV2", "Ventoinha inicial: escrita falhou");
                        tempStepperService.m(0, "Não foi possível definir ventoinha");
                        return;
                    }
                    tempStepperService.U = true;
                    tempStepperService.V = iMax;
                    tempStepperService.W = SystemClock.uptimeMillis() + 750;
                    tempStepperService.X = new k(tempStepperService, iK, iMax2, i5);
                    if (tempStepperService.c()) {
                        tempStepperService.f1303p.postDelayed(tempStepperService.X, ((long) ((i7 * 60) + i6)) * 1000);
                    }
                    Log.i("HvacStepperV2", "Programa ventoinha: " + aVar.a() + " → após " + ((i7 * 60) + i6) + "s nível " + iMax2);
                    tempStepperService.q("fan_pr");
                    tempStepperService.f(new f(tempStepperService, i3));
                    tempStepperService.m(0, aVar.a());
                    return;
                }
                return;
            case 1:
                TempStepperService tempStepperService2 = (TempStepperService) this.b;
                Car car = (Car) this.f35c;
                int[] iArr = TempStepperService.f1285c0;
                try {
                    try {
                        tempStepperService2.F = false;
                        tempStepperService2.f1303p.removeCallbacks(tempStepperService2.G);
                        Log.d("HvacStepperV2", "Polling parado");
                        tempStepperService2.n();
                        tempStepperService2.a();
                        tempStepperService2.o();
                        if (car != null) {
                            car.disconnect();
                        }
                        tempStepperService2.f1298k = null;
                        break;
                    } catch (Exception e3) {
                        Log.w("HvacStepperV2", "Limpeza CarService: " + e3.getMessage());
                        break;
                    }
                    return;
                } finally {
                    tempStepperService2.f1302o.quitSafely();
                }
            case 2:
                e0 e0Var = (e0) this.b;
                Runnable runnable = (Runnable) this.f35c;
                e0Var.getClass();
                try {
                    runnable.run();
                    return;
                } finally {
                    e0Var.a();
                }
            case 3:
                ((u.b) this.b).e((Typeface) this.f35c);
                return;
            case 4:
                AppPipFloaterService appPipFloaterService = (AppPipFloaterService) this.b;
                mg mgVar = (mg) this.f35c;
                mg mgVar2 = appPipFloaterService.f776i;
                if (mgVar2 == null || mgVar2.b != mgVar.b) {
                    return;
                }
                String string = appPipFloaterService.getString(R.string.k_pip_app_closed_itself);
                i2.g.d(string, "getString(...)");
                appPipFloaterService.k(string);
                appPipFloaterService.f776i = null;
                appPipFloaterService.f778k = null;
                appPipFloaterService.l();
                appPipFloaterService.f775h.removeCallbacks(appPipFloaterService.f789v);
                return;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                SharedPreferences sharedPreferences = (SharedPreferences) this.b;
                q1 q1Var = (q1) this.f35c;
                try {
                    k5 k5Var = k5.f3786a;
                    String string2 = o2.k.E0(k5.a()).toString();
                    if (o2.k.m0(string2)) {
                        jSONArray = jSONArrayOptJSONArray;
                        z2 = true;
                    } else {
                        String strC = n0.c();
                        if (strC != null) {
                            jSONArrayOptJSONArray = new JSONObject(strC).optJSONArray("entries");
                        }
                        if (strC == null || jSONArray == 0) {
                            jSONArray = jSONArrayOptJSONArray;
                            z2 = true;
                        } else {
                            String strB = n0.b(string2);
                            Iterable iterableT = k1.a.T(0, jSONArray.length());
                            if (!(iterableT instanceof Collection) || !((Collection) iterableT).isEmpty()) {
                                Iterator it = iterableT.iterator();
                                while (true) {
                                    if (((l2.b) it).f2428c) {
                                        String strOptString = jSONArray.getJSONObject(((l2.b) it).nextInt()).optString("hash", "");
                                        i2.g.b(strOptString);
                                        if (!o2.k.m0(strOptString) && strOptString.equalsIgnoreCase(strB)) {
                                            jSONArray = jSONArrayOptJSONArray;
                                            z2 = true;
                                        }
                                    }
                                }
                            }
                            z2 = false;
                        }
                    }
                } catch (Exception e4) {
                    Log.d("BanChecker", "recheckWhileBlocked: " + e4.getMessage());
                }
                if (!z2) {
                    sharedPreferences.edit().putBoolean("device_banned", false).apply();
                    Log.i("BanChecker", "recheckWhileBlocked: XDSN não está mais na banlist.json — desbloqueado");
                }
                n0.b.post(new d0(q1Var, z2, z3 ? 1 : 0));
                return;
            case MusicClient.TYPE_GESTURE /* 6 */:
                FutureTask futureTask = (FutureTask) this.b;
                String str = (String) this.f35c;
                ConcurrentHashMap concurrentHashMap = p1.f4044d;
                try {
                    futureTask.run();
                    return;
                } finally {
                    concurrentHashMap.remove(str, futureTask);
                }
            case PlaybackState.STATE_ERROR /* 7 */:
                CarPropertyManager carPropertyManager2 = (CarPropertyManager) this.b;
                String str2 = (String) this.f35c;
                int[] iArr2 = CentralWatchdogService.S2;
                try {
                    Thread.sleep(700L);
                    v7.v(carPropertyManager2, true);
                    Log.i("CentralWatchdog", "recircGuard(" + str2 + "): recirc estava ligada — reaplicada");
                    return;
                } catch (Throwable th) {
                    androidx.activity.result.b.s(th, androidx.activity.result.b.l("recircGuard(", str2, ") falhou: "), "CentralWatchdog");
                    return;
                }
            case 8:
                CentralWatchdogService centralWatchdogService = (CentralWatchdogService) this.b;
                h2.l lVar = (h2.l) this.f35c;
                if (centralWatchdogService.f848k == null) {
                    centralWatchdogService.f811a.post(new v2(centralWatchdogService, i4));
                }
                int i8 = pg.f4073a;
                CarPropertyManager carPropertyManager3 = centralWatchdogService.f848k;
                if (carPropertyManager3 != null && (fK = pg.k(carPropertyManager3, 289407492)) == null) {
                    fK = pg.k(carPropertyManager3, 291504644);
                }
                if (fK != null) {
                    centralWatchdogService.W().edit().putFloat("trip_start_odometer_km", fK.floatValue()).apply();
                    centralWatchdogService.f811a.post(new v2(centralWatchdogService, i3));
                }
                if (lVar != null) {
                    lVar.c(Boolean.valueOf(fK != null));
                    return;
                }
                return;
            case 9:
                CentralWatchdogService centralWatchdogService2 = (CentralWatchdogService) this.b;
                try {
                    centralWatchdogService2.f896z = v7.i((CarPropertyManager) this.f35c);
                    break;
                } catch (Throwable unused) {
                }
                centralWatchdogService2.A = false;
                return;
            case 10:
                h2.a aVar2 = (h2.a) this.b;
                String str3 = (String) this.f35c;
                ConcurrentHashMap.KeySetView keySetView = n3.b;
                try {
                    aVar2.a();
                    return;
                } finally {
                    keySetView.remove(str3);
                }
            case 11:
                ((h2.l) this.b).c(Boolean.valueOf(((i2.j) this.f35c).f2289a));
                return;
            case 12:
                new Thread(new j5((MainActivity) this.b, (SharedPreferences) this.f35c)).start();
                return;
            case 13:
                JSONArray jSONArray2 = (JSONArray) this.b;
                Context context = (Context) this.f35c;
                int length = jSONArray2.length();
                while (i5 < length) {
                    String string3 = jSONArray2.getString(i5);
                    i2.g.b(string3);
                    if (o2.t.d0(string3, "com.ex.auto.") || o2.t.d0(string3, "com.geely.driveregenfloater.")) {
                        try {
                            context.startService(new Intent().setClassName(context.getPackageName(), string3));
                        } catch (Throwable unused2) {
                        }
                    }
                    i5++;
                }
                return;
            case 14:
                Context context2 = (Context) this.b;
                CountDownLatch countDownLatch = (CountDownLatch) this.f35c;
                context2.stopService(new Intent(context2, (Class<?>) CentralWatchdogService.class));
                new Handler(Looper.getMainLooper()).postDelayed(new a6(countDownLatch, i5), 500L);
                return;
            case 15:
                HomeFloatingWidgetsService homeFloatingWidgetsService = (HomeFloatingWidgetsService) this.b;
                h2.l lVar2 = (h2.l) this.f35c;
                List list = HomeFloatingWidgetsService.f926a0;
                try {
                    if (!homeFloatingWidgetsService.f930d && (carPropertyManager = homeFloatingWidgetsService.f) != null) {
                        lVar2.c(carPropertyManager);
                        break;
                    }
                    return;
                } finally {
                    homeFloatingWidgetsService.f936k = SystemClock.elapsedRealtime() + 3000;
                    homeFloatingWidgetsService.f934i.decrementAndGet();
                }
            case 16:
                HomeFloatingWidgetsService homeFloatingWidgetsService2 = (HomeFloatingWidgetsService) this.b;
                h2.a aVar3 = (h2.a) this.f35c;
                if (homeFloatingWidgetsService2.f930d) {
                    return;
                }
                aVar3.a();
                return;
            case 17:
                HomeWidgetsPollService homeWidgetsPollService = (HomeWidgetsPollService) this.b;
                String str4 = (String) this.f35c;
                int i9 = HomeWidgetsPollService.E;
                homeWidgetsPollService.p(str4);
                return;
            case 18:
                final InstallerActivity installerActivity = (InstallerActivity) this.b;
                Uri uri = (Uri) this.f35c;
                int i10 = InstallerActivity.f979v;
                installerActivity.runOnUiThread(new Runnable() { // from class: w0.i8
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i11 = i5;
                        InstallerActivity installerActivity2 = installerActivity;
                        switch (i11) {
                            case 0:
                                TextView textView = installerActivity2.f980t;
                                if (textView != null) {
                                    textView.setText(installerActivity2.getString(R.string.k_installer_copying));
                                    return;
                                } else {
                                    i2.g.h("tvStatus");
                                    throw null;
                                }
                            default:
                                int i12 = InstallerActivity.f979v;
                                String string4 = installerActivity2.getString(R.string.k_installer_cancelled);
                                i2.g.d(string4, "getString(...)");
                                installerActivity2.w(string4, false);
                                return;
                        }
                    }
                });
                String str5 = installerActivity.f981u;
                try {
                    try {
                        File fileV = installerActivity.v(uri);
                        file = i2.g.a(uri.getScheme(), "file") ? null : fileV;
                        if (!fileV.isFile() || fileV.length() <= 0) {
                            String string4 = installerActivity.getString(R.string.k_installer_invalid_apk);
                            i2.g.d(string4, "getString(...)");
                            throw new IllegalArgumentException(string4.toString());
                        }
                        if (installerActivity.getPackageManager().getPackageArchiveInfo(fileV.getAbsolutePath(), 0) == null) {
                            String string5 = installerActivity.getString(R.string.k_installer_invalid_apk);
                            i2.g.d(string5, "getString(...)");
                            throw new IllegalArgumentException(string5.toString());
                        }
                        if (installerActivity.s(fileV, installerActivity.getPackageManager().getPackageArchiveInfo(fileV.getAbsolutePath(), 0))) {
                            installerActivity.runOnUiThread(new i(installerActivity, 19, fileV));
                            String strT = InstallerActivity.t(fileV);
                            installerActivity.runOnUiThread(new c0((Object) installerActivity, o2.k.e0(strT, "Success", true), (Object) strT, (int) (z4 ? 1 : 0)));
                            if (file != null) {
                                file.delete();
                            }
                            break;
                        } else {
                            final boolean z8 = z5 ? 1 : 0;
                            installerActivity.runOnUiThread(new Runnable() { // from class: w0.i8
                                @Override // java.lang.Runnable
                                public final void run() {
                                    int i11 = z8;
                                    InstallerActivity installerActivity2 = installerActivity;
                                    switch (i11) {
                                        case 0:
                                            TextView textView = installerActivity2.f980t;
                                            if (textView != null) {
                                                textView.setText(installerActivity2.getString(R.string.k_installer_copying));
                                                return;
                                            } else {
                                                i2.g.h("tvStatus");
                                                throw null;
                                            }
                                        default:
                                            int i12 = InstallerActivity.f979v;
                                            String string6 = installerActivity2.getString(R.string.k_installer_cancelled);
                                            i2.g.d(string6, "getString(...)");
                                            installerActivity2.w(string6, false);
                                            return;
                                    }
                                }
                            });
                            if (file != null) {
                                try {
                                    file.delete();
                                    break;
                                } catch (Throwable unused3) {
                                }
                            }
                        }
                        androidx.emoji2.text.m mVar = zd.f4636a;
                        zd.a(str5);
                        return;
                    } catch (Exception e5) {
                        installerActivity.runOnUiThread(new i(installerActivity, 20, e5));
                        if (0 != 0) {
                            file.delete();
                        }
                    }
                } catch (Throwable th2) {
                    if (0 != 0) {
                        try {
                            jSONArray.delete();
                            break;
                        } catch (Throwable unused4) {
                        }
                    }
                    androidx.emoji2.text.m mVar2 = zd.f4636a;
                    zd.a(str5);
                    throw th2;
                }
                break;
            case 19:
                InstallerActivity installerActivity2 = (InstallerActivity) this.b;
                File file2 = (File) this.f35c;
                TextView textView = installerActivity2.f980t;
                if (textView != null) {
                    textView.setText(installerActivity2.getString(R.string.k_installer_installing, file2.getName()));
                    return;
                } else {
                    i2.g.h("tvStatus");
                    throw null;
                }
            case 20:
                InstallerActivity installerActivity3 = (InstallerActivity) this.b;
                Exception exc = (Exception) this.f35c;
                int i11 = InstallerActivity.f979v;
                String message = exc.getMessage();
                if (message == null) {
                    message = installerActivity3.getString(R.string.k_installer_unknown_error);
                    i2.g.d(message, "getString(...)");
                }
                installerActivity3.w(message, false);
                return;
            case 21:
                LyricsFloaterService lyricsFloaterService = (LyricsFloaterService) this.b;
                View view = (View) this.f35c;
                ScrollView scrollView = lyricsFloaterService.f996p;
                if (scrollView != null) {
                    int height = view.getHeight() + (view.getTop() - 260);
                    if (height < 0) {
                        height = 0;
                    }
                    scrollView.smoothScrollTo(0, height);
                    return;
                }
                return;
            case 22:
                i2.j jVar = (i2.j) this.b;
                LyricsFloaterService lyricsFloaterService2 = (LyricsFloaterService) this.f35c;
                Set set = LyricsFloaterService.f982v;
                jVar.f2289a = true;
                lyricsFloaterService2.l();
                return;
            case 23:
                MainActivity mainActivity = (MainActivity) this.b;
                z4 z4Var = (z4) this.f35c;
                int i12 = MainActivity.f1002z1;
                if (mainActivity.isFinishing() || mainActivity.isDestroyed()) {
                    return;
                }
                mainActivity.f1008c1 = Boolean.valueOf(z4Var == z4.f4610a || z4Var == z4.f4612d);
                SharedPreferences.Editor editorEdit = mainActivity.o0().edit();
                Boolean bool = mainActivity.f1008c1;
                Boolean bool2 = Boolean.TRUE;
                editorEdit.putBoolean("pip_overlay_enabled", i2.g.a(bool, bool2)).apply();
                if (mainActivity.S0[1]) {
                    ((MasterToggleView) mainActivity.findViewById(R.id.masterToolsPipNativoSwitch)).setActive(i2.g.a(mainActivity.f1008c1, bool2));
                    return;
                }
                return;
            case 24:
                View view2 = (View) this.b;
                final MainActivity mainActivity2 = (MainActivity) this.f35c;
                int i13 = MainActivity.f1002z1;
                view2.performHapticFeedback(0);
                String string6 = mainActivity2.getString(!mainActivity2.o0().getBoolean("adb_gpio_enabled", false) ? R.string.master_adb_ligando : R.string.master_adb_desligando);
                i2.g.d(string6, "getString(...)");
                Toast toast = mainActivity2.Q0;
                if (toast != null) {
                    toast.cancel();
                }
                mainActivity2.Q0 = mainActivity2.t2(string6, 0);
                ae aeVar = ae.f3361a;
                ae.b("ADB", "GPIO alternado pelo atalho de 2s no título Wi-Fi", false);
                boolean z9 = mainActivity2.o0().getBoolean("adb_gpio_enabled", false);
                final boolean z10 = !z9;
                String str6 = !z9 ? "1" : "0";
                final String str7 = "echo \"out 151 " + str6 + "\" > /sys/devices/platform/1000b000.pinctrl/mt_gpio; echo gpio_151=" + str6;
                k5 k5Var2 = k5.f3786a;
                SharedPreferences sharedPreferencesO0 = mainActivity2.o0();
                i2.g.d(sharedPreferencesO0, "<get-prefs>(...)");
                String string7 = sharedPreferencesO0.getString("recovery_name", "");
                if (o2.t.a0(string7 != null ? o2.k.E0(string7).toString() : null, "IBANES") || !mainActivity2.b0(z10)) {
                    SharedPreferences sharedPreferencesO1 = mainActivity2.o0();
                    i2.g.d(sharedPreferencesO1, "<get-prefs>(...)");
                    k5.e(mainActivity2, sharedPreferencesO1, new h2.l() { // from class: w0.za
                        @Override // h2.l
                        public final Object c(Object obj) {
                            boolean zBooleanValue = ((Boolean) obj).booleanValue();
                            int i14 = MainActivity.f1002z1;
                            MainActivity mainActivity3 = mainActivity2;
                            boolean z11 = z10;
                            if (zBooleanValue || mainActivity3.b0(z11)) {
                                mainActivity3.o0().edit().putBoolean("adb_gpio_enabled", z11).apply();
                                mainActivity3.d1();
                            } else {
                                String string8 = mainActivity3.getString(R.string.k_changing_adb_gpio);
                                i2.g.d(string8, "getString(...)");
                                MainActivity.J1(mainActivity3, null, string8, 2000L, 10000, str7, null, null, new jf(mainActivity3, z11, 2), false, null, null, 3776);
                            }
                            return x1.e.f4647c;
                        }
                    });
                    return;
                } else {
                    mainActivity2.o0().edit().putBoolean("adb_gpio_enabled", z10).apply();
                    mainActivity2.d1();
                    SharedPreferences sharedPreferencesO2 = mainActivity2.o0();
                    i2.g.d(sharedPreferencesO2, "<get-prefs>(...)");
                    k5.e(mainActivity2, sharedPreferencesO2, new ya(z6 ? 1 : 0));
                    return;
                }
            case 25:
                MainActivity mainActivity3 = (MainActivity) this.b;
                ?? r3 = this.f35c;
                ArrayList arrayList = mainActivity3.D;
                arrayList.clear();
                arrayList.addAll(r3);
                if (r3.isEmpty()) {
                    listI = k1.a.I(mainActivity3.getString(R.string.k_no_wav_loaded));
                } else {
                    ArrayList arrayList2 = new ArrayList(y1.i.X(r3));
                    Iterator it2 = r3.iterator();
                    while (it2.hasNext()) {
                        arrayList2.add(o2.k.z0((String) it2.next(), '/'));
                    }
                    listI = arrayList2;
                }
                mainActivity3.f1005b0 = listI;
                mainActivity3.f1007c0 = k1.a.k(mainActivity3.f1007c0, 0, Math.max(0, listI.size() - 1));
                mainActivity3.q1();
                return;
            case 26:
                MainActivity mainActivity4 = (MainActivity) this.b;
                o4 o4Var = (o4) this.f35c;
                int i14 = MainActivity.f1002z1;
                if (mainActivity4.isFinishing() || mainActivity4.isDestroyed() || o4Var == mainActivity4.O0) {
                    return;
                }
                mainActivity4.O0 = o4Var;
                mainActivity4.X0();
                return;
            case 27:
                MainActivity mainActivity5 = (MainActivity) this.b;
                ArrayList arrayList3 = (ArrayList) this.f35c;
                int i15 = MainActivity.f1002z1;
                if (mainActivity5.isFinishing()) {
                    return;
                }
                String strE0 = y1.g.e0(arrayList3, "\n\n", new ya(i5), 30);
                e.h hVar = new e.h(mainActivity5);
                String string8 = mainActivity5.getString(R.string.k_dep_update_title);
                e.d dVar = (e.d) hVar.b;
                dVar.f1554d = string8;
                dVar.f = mainActivity5.getString(R.string.k_dep_update_message, strE0);
                hVar.f(mainActivity5.getString(R.string.k_dep_update_go), new da(mainActivity5, arrayList3, z7 ? 1 : 0));
                hVar.c(mainActivity5.getString(R.string.common_not_now), new da(mainActivity5, arrayList3, i4));
                hVar.h();
                return;
            case 28:
                MainActivity mainActivity6 = (MainActivity) this.b;
                LinkedHashMap linkedHashMap = (LinkedHashMap) this.f35c;
                int i16 = MainActivity.f1002z1;
                if (mainActivity6.isFinishing() || mainActivity6.isDestroyed()) {
                    return;
                }
                for (xb xbVar : ((Map) mainActivity6.f1003a0.a()).values()) {
                    String str8 = (String) linkedHashMap.get(xbVar.f4509a);
                    xbVar.f4511d = str8;
                    xbVar.b(str8 == null ? mainActivity6.getString(R.string.k_not_installed) : mainActivity6.getString(R.string.k_installed_version, str8));
                    xbVar.a();
                }
                mainActivity6.o1();
                return;
            default:
                h2.a aVar4 = (h2.a) this.b;
                MainActivity mainActivity7 = (MainActivity) this.f35c;
                int i17 = MainActivity.f1002z1;
                mainActivity7.runOnUiThread(new ab(mainActivity7, (vd) aVar4.a()));
                return;
        }
    }
}
