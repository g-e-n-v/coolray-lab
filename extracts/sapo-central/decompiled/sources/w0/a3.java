package w0;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.car.hardware.property.CarPropertyManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Icon;
import android.os.Bundle;
import android.os.SystemClock;
import android.telephony.ServiceState;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.MainActivity;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.R;
import com.ex.auto.VhalProviderService;
import com.geely.driveregenfloater.DriveRegenFloaterService;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final class a3 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3344a;
    public final /* synthetic */ CentralWatchdogService b;

    public /* synthetic */ a3(CentralWatchdogService centralWatchdogService, int i3) {
        this.f3344a = i3;
        this.b = centralWatchdogService;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        CarPropertyManager carPropertyManager;
        int i3 = 2;
        int i4 = 1;
        Object[] objArr = 0;
        switch (this.f3344a) {
            case 0:
                int[] iArr = CentralWatchdogService.S2;
                if (CentralWatchdogService.U2) {
                    CentralWatchdogService centralWatchdogService = this.b;
                    if (centralWatchdogService.W0) {
                        centralWatchdogService.Y0++;
                        centralWatchdogService.Z0++;
                        n3.a(new y2(centralWatchdogService, objArr == true ? 1 : 0, this));
                        break;
                    }
                }
                break;
            case 1:
                int[] iArr2 = CentralWatchdogService.S2;
                if (CentralWatchdogService.U2) {
                    if (!this.b.t()) {
                        this.b.f815b0 = null;
                        this.b.f841i0 = null;
                    } else {
                        int i5 = this.b.f827e0.get();
                        ExecutorService executorService = n3.f3929a;
                        n3.a(new q2(this.b, i5, this, i4));
                    }
                    break;
                }
                break;
            case 2:
                int[] iArr3 = CentralWatchdogService.S2;
                if (CentralWatchdogService.U2) {
                    wd wdVar = wd.f4450a;
                    wd.l(this.b);
                    if (!this.b.W().getBoolean("auto_update_enabled", true)) {
                        CentralWatchdogService.W2.set("auto-update desligado (Config → Atualizações)");
                        this.b.f811a.postDelayed(this, 60000L);
                    } else {
                        ExecutorService executorService2 = n3.f3929a;
                        n3.a(new y2(this.b, i4, this));
                    }
                    break;
                }
                break;
            case 3:
                int[] iArr4 = CentralWatchdogService.S2;
                if (CentralWatchdogService.U2) {
                    if (this.b.W().getBoolean("remember_brightness", false)) {
                        ExecutorService executorService3 = n3.f3929a;
                        n3.b("brightness-memory", new d2(this.b, 17));
                    }
                    this.b.f811a.postDelayed(this, 8000L);
                    break;
                }
                break;
            case 4:
                int[] iArr5 = CentralWatchdogService.S2;
                if (CentralWatchdogService.U2) {
                    CarPropertyManager carPropertyManager2 = this.b.f840i;
                    if (carPropertyManager2 != null && !DriveRegenFloaterService.M) {
                        ExecutorService executorService4 = n3.f3929a;
                        n3.b("drive-regen-gear", new y2(this.b, i3, carPropertyManager2));
                    }
                    CentralWatchdogService centralWatchdogService2 = this.b;
                    int i6 = centralWatchdogService2.M;
                    long j3 = (i6 != 8 && (i6 < 16 || i6 > 4096)) ? centralWatchdogService2.N : centralWatchdogService2.O;
                    if (CentralWatchdogService.U2) {
                        this.b.f811a.postDelayed(this, j3);
                    }
                    break;
                }
                break;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                int[] iArr6 = CentralWatchdogService.S2;
                if (CentralWatchdogService.U2) {
                    final List listN = t1.N(this.b);
                    if (!listN.isEmpty()) {
                        CentralWatchdogService centralWatchdogService3 = this.b;
                        int i7 = centralWatchdogService3.f880s0;
                        final boolean z2 = i7 % 3 == 0;
                        centralWatchdogService3.f880s0 = i7 + 1;
                        n3.b("keep-alive", new h2.a() { // from class: w0.d3
                            /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Object, java.util.List] */
                            @Override // h2.a
                            public final Object a() {
                                boolean z3;
                                StringBuilder sb = new StringBuilder("setenforce 0 2>/dev/null || true\n");
                                Iterator it = listN.iterator();
                                while (true) {
                                    boolean zHasNext = it.hasNext();
                                    z3 = z2;
                                    if (zHasNext) {
                                        String str = (String) it.next();
                                        sb.append("pid=$(pidof '" + str + "' 2>/dev/null)\n");
                                        sb.append("if [ -n \"$pid\" ]; then\n  for p in $pid; do echo -900 > /proc/$p/oom_score_adj 2>/dev/null; done\n");
                                        sb.append("  echo \"KeepAliveProbe " + str + " pid=$pid adj=$(cat /proc/$(echo $pid | cut -d' ' -f1)/oom_score_adj 2>&1)\"\n");
                                        sb.append("else\n");
                                        sb.append("  echo \"KeepAliveProbe " + str + " not_running\"\n");
                                        sb.append("fi\n");
                                        if (z3) {
                                            sb.append("dumpsys deviceidle whitelist +'" + str + "' 2>&1\n");
                                            sb.append("am set-standby-bucket '" + str + "' active 2>&1\n");
                                            sb.append("cmd appops set '" + str + "' RUN_ANY_IN_BACKGROUND allow 2>&1\n");
                                            sb.append("cmd appops set '" + str + "' RUN_IN_BACKGROUND allow 2>&1\n");
                                        }
                                    } else {
                                        try {
                                            break;
                                        } catch (Exception e3) {
                                            androidx.activity.result.b.o(e3, new StringBuilder("keepAlive: "), "CentralWatchdog");
                                        }
                                    }
                                }
                                String string = sb.toString();
                                i2.g.d(string, "toString(...)");
                                String strX = m.x(string, 8000, null, new n(0));
                                if (z3) {
                                    Log.i("CentralWatchdog", "keepAlive: " + o2.k.E0(strX).toString());
                                }
                                return x1.e.f4647c;
                            }
                        });
                        this.b.f811a.postDelayed(this, 10000L);
                        break;
                    }
                }
                break;
            case MusicClient.TYPE_GESTURE /* 6 */:
                int[] iArr7 = CentralWatchdogService.S2;
                if (CentralWatchdogService.U2) {
                    ud udVar = ud.f4348a;
                    if (udVar.f()) {
                        ae aeVar = ae.f3361a;
                        ae.b("Metricas", udVar.e(), false);
                    }
                    CentralWatchdogService centralWatchdogService4 = this.b;
                    centralWatchdogService4.f811a.postDelayed(this, centralWatchdogService4.O2);
                    break;
                }
                break;
            case PlaybackState.STATE_ERROR /* 7 */:
                int[] iArr8 = CentralWatchdogService.S2;
                if (CentralWatchdogService.U2) {
                    wd wdVar2 = wd.f4450a;
                    if (wd.a(this.b)) {
                        wd.l(this.b);
                        this.b.f811a.postDelayed(this, 15000L);
                        break;
                    }
                }
                break;
            case 8:
                int[] iArr9 = CentralWatchdogService.S2;
                if (CentralWatchdogService.U2 && (carPropertyManager = this.b.f884u) != null) {
                    if (!this.b.A) {
                        this.b.A = true;
                        try {
                            n3.f3929a.execute(new a1.i(this.b, 9, carPropertyManager));
                        } catch (RejectedExecutionException unused) {
                            this.b.A = false;
                        }
                    }
                    this.b.f811a.postDelayed(this, 2500L);
                }
                break;
            case 9:
                int[] iArr10 = CentralWatchdogService.S2;
                if (CentralWatchdogService.U2) {
                    int i8 = this.b.W().getInt("screen_rest_timeout_sec", 0);
                    if (i8 > 0) {
                        int i9 = QuickAccessFloaterService.t0;
                        if (!QuickAccessFloaterService.f1133z0) {
                            ExecutorService executorService5 = n3.f3929a;
                            n3.a(new q2(this.b, i8, this, i3));
                        } else {
                            this.b.A0 = SystemClock.elapsedRealtime();
                            CentralWatchdogService centralWatchdogService5 = this.b;
                            centralWatchdogService5.B0 = false;
                            centralWatchdogService5.f811a.postDelayed(this, centralWatchdogService5.f891w0);
                        }
                    } else {
                        CentralWatchdogService centralWatchdogService6 = this.b;
                        centralWatchdogService6.f897z0 = -1L;
                        centralWatchdogService6.f811a.postDelayed(this, centralWatchdogService6.f891w0);
                    }
                    break;
                }
                break;
            default:
                int[] iArr11 = CentralWatchdogService.S2;
                if (CentralWatchdogService.U2) {
                    wd wdVar3 = wd.f4450a;
                    if (!this.b.W().getBoolean("modo_oficina", false)) {
                        final boolean z3 = this.b.W().getBoolean("status_temp_ext_enabled", false);
                        final boolean z4 = this.b.W().getBoolean("status_battery_enabled", false);
                        final boolean z5 = this.b.W().getBoolean("status_total_km_enabled", false);
                        final boolean z6 = this.b.W().getBoolean("status_trip_km_enabled", false);
                        final boolean z7 = this.b.W().getBoolean("status_signal_enabled", false);
                        boolean z8 = this.b.W().getBoolean("status_wifi_enabled", false);
                        if (z3 || z4 || z5 || z6 || z7 || z8) {
                            if ((z3 || z4 || z5 || z6) && this.b.f848k == null) {
                                CentralWatchdogService.e(this.b);
                            }
                            ExecutorService executorService6 = n3.f3929a;
                            final CentralWatchdogService centralWatchdogService7 = this.b;
                            n3.b("status-icons", new h2.a() { // from class: w0.i3
                                /* JADX WARN: Code duplicated, block: B:11:0x0037  */
                                /* JADX WARN: Code duplicated, block: B:43:0x0099  */
                                /* JADX WARN: Code duplicated, block: B:52:0x00af  */
                                @Override // h2.a
                                public final Object a() {
                                    Float fR;
                                    Float fL;
                                    Float f;
                                    float f3;
                                    boolean z9;
                                    int i10;
                                    int level;
                                    boolean z10;
                                    boolean z11 = z3;
                                    final CentralWatchdogService centralWatchdogService8 = centralWatchdogService7;
                                    final boolean z12 = z4;
                                    final boolean z13 = z5;
                                    final boolean z14 = z6;
                                    final boolean z15 = z7;
                                    Float fValueOf = Float.valueOf(0.0f);
                                    wg wgVarB = VhalProviderService.b(2000L);
                                    final Float fK = null;
                                    if (!z11) {
                                        fR = null;
                                    } else if (wgVarB == null || (fR = wgVarB.f4470p) == null) {
                                        int i11 = pg.f4073a;
                                        CarPropertyManager carPropertyManager3 = centralWatchdogService8.f848k;
                                        if (carPropertyManager3 == null) {
                                            fR = null;
                                        } else {
                                            AtomicInteger atomicInteger = p1.f4042a;
                                            fR = e8.R(p1.c(carPropertyManager3, pg.f4073a, 0));
                                        }
                                    }
                                    if (!z12) {
                                        fL = null;
                                    } else if (wgVarB == null || (fL = wgVarB.f4459d) == null) {
                                        int i12 = pg.f4073a;
                                        fL = pg.l(centralWatchdogService8.f848k);
                                    }
                                    if (z13 || z14) {
                                        if (wgVarB == null || (f = wgVarB.f) == null) {
                                            int i13 = pg.f4073a;
                                            CarPropertyManager carPropertyManager4 = centralWatchdogService8.f848k;
                                            if (carPropertyManager4 != null && (fK = pg.k(carPropertyManager4, 289407492)) == null) {
                                                fK = pg.k(carPropertyManager4, 291504644);
                                            }
                                        } else {
                                            fK = f;
                                        }
                                    }
                                    final Float f4 = fR;
                                    final i2.l lVar = new i2.l();
                                    final Float f5 = fL;
                                    final i2.j jVar = new i2.j();
                                    if (z15) {
                                        f3 = 0.0f;
                                        try {
                                            TelephonyManager telephonyManager = (TelephonyManager) centralWatchdogService8.getSystemService(TelephonyManager.class);
                                            if (telephonyManager != null) {
                                                try {
                                                    SignalStrength signalStrength = telephonyManager.getSignalStrength();
                                                    if (signalStrength != null) {
                                                        level = signalStrength.getLevel();
                                                    } else {
                                                        level = 0;
                                                    }
                                                } catch (Throwable unused2) {
                                                    i10 = 0;
                                                }
                                            } else {
                                                level = 0;
                                            }
                                            i10 = level;
                                            lVar.f2291a = i10;
                                            if (telephonyManager != null) {
                                                try {
                                                    ServiceState serviceState = telephonyManager.getServiceState();
                                                    if (serviceState == null || serviceState.getState() != 0) {
                                                        z10 = false;
                                                    } else {
                                                        z10 = true;
                                                    }
                                                } catch (Throwable unused3) {
                                                }
                                            } else {
                                                z10 = false;
                                            }
                                            jVar.f2289a = z10;
                                        } catch (Throwable unused4) {
                                        }
                                    } else {
                                        f3 = 0.0f;
                                    }
                                    Log.i("KmIconProbe", "totalKmOn=" + z13 + " tripKmOn=" + z14 + " odo=" + fK);
                                    final i2.m mVar = new i2.m();
                                    if (!z14 || fK == null || fK.floatValue() <= f3) {
                                        z9 = z11;
                                    } else {
                                        int[] iArr12 = CentralWatchdogService.S2;
                                        float f6 = centralWatchdogService8.W().getFloat("trip_start_odometer_km", -1.0f);
                                        z9 = z11;
                                        if (f6 <= f3) {
                                            centralWatchdogService8.W().edit().putFloat("trip_start_odometer_km", fK.floatValue()).apply();
                                            ae aeVar2 = ae.f3361a;
                                            ae.b("CentralWatchdog", "viagem: início gravado pela primeira vez em " + ((int) fK.floatValue()) + " km", false);
                                            mVar.f2292a = fValueOf;
                                        } else if (f6 > fK.floatValue()) {
                                            mVar.f2292a = fValueOf;
                                            if (!centralWatchdogService8.L2) {
                                                centralWatchdogService8.L2 = true;
                                                ae aeVar3 = ae.f3361a;
                                                ae.b("CentralWatchdog", "viagem: odômetro (" + ((int) fK.floatValue()) + ") < início guardado (" + ((int) f6) + ") — leitura suspeita, mantendo o início", false);
                                            }
                                        } else {
                                            mVar.f2292a = Float.valueOf(fK.floatValue() - f6);
                                            centralWatchdogService8.L2 = false;
                                        }
                                    }
                                    final boolean z16 = z9;
                                    centralWatchdogService8.f811a.post(new Runnable() { // from class: w0.j3
                                        /* JADX WARN: Multi-variable type inference failed */
                                        /* JADX WARN: Type inference failed for: r10v1 */
                                        /* JADX WARN: Type inference failed for: r10v2, types: [boolean, int] */
                                        /* JADX WARN: Type inference failed for: r10v20 */
                                        /* JADX WARN: Type inference failed for: r10v21 */
                                        /* JADX WARN: Type inference failed for: r4v16, types: [android.content.Intent] */
                                        /* JADX WARN: Type inference failed for: r7v10, types: [int] */
                                        /* JADX WARN: Type inference failed for: r7v26 */
                                        /* JADX WARN: Type inference failed for: r7v49 */
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            boolean z17;
                                            i2.l lVar2;
                                            Class cls;
                                            String str;
                                            ?? r10;
                                            int i14;
                                            String strI;
                                            x3 x3Var;
                                            boolean z18;
                                            String str2;
                                            int i15;
                                            String strValueOf;
                                            CentralWatchdogService centralWatchdogService9 = centralWatchdogService8;
                                            boolean z19 = z16;
                                            Float f7 = f4;
                                            boolean z20 = z12;
                                            Float f8 = f5;
                                            boolean z21 = z13;
                                            Float f9 = fK;
                                            boolean z22 = z14;
                                            i2.m mVar2 = mVar;
                                            boolean z23 = z15;
                                            i2.l lVar3 = lVar;
                                            i2.j jVar2 = jVar;
                                            wd wdVar4 = wd.f4450a;
                                            int[] iArr13 = CentralWatchdogService.S2;
                                            if (!centralWatchdogService9.W().getBoolean("modo_oficina", false) && CentralWatchdogService.U2) {
                                                String str3 = "";
                                                if (z19) {
                                                    int i16 = pg.f4073a;
                                                    if (wd.a(centralWatchdogService9)) {
                                                        z17 = z23;
                                                        lVar2 = lVar3;
                                                    } else {
                                                        if (f7 != null) {
                                                            int iRound = Math.round(f7.floatValue());
                                                            if (iRound < -100 || iRound > 100) {
                                                                i15 = -65536;
                                                                strValueOf = "X";
                                                                str2 = "";
                                                            } else {
                                                                strValueOf = String.valueOf(iRound);
                                                                str2 = "°C";
                                                                i15 = -1;
                                                            }
                                                        } else {
                                                            str2 = "";
                                                            i15 = -1;
                                                            strValueOf = "?";
                                                        }
                                                        String string = centralWatchdogService9.getString(R.string.k_temp_icon_title);
                                                        i2.g.d(string, "getString(...)");
                                                        String string2 = f7 != 0 ? centralWatchdogService9.getString(R.string.k_temp_icon_text, Integer.valueOf(Math.round(f7.floatValue()))) : centralWatchdogService9.getString(R.string.k_status_unavailable);
                                                        i2.g.b(string2);
                                                        Context applicationContext = centralWatchdogService9.getApplicationContext();
                                                        i2.g.d(applicationContext, "getApplicationContext(...)");
                                                        z17 = z23;
                                                        lVar2 = lVar3;
                                                        pg.j(centralWatchdogService9, 15021, 15, 22, "StatusIcon_OutsideTemperature", string, string2, pg.a(applicationContext, strValueOf, str2, i15, 10, true, false, 0.82f), null);
                                                    }
                                                } else {
                                                    z17 = z23;
                                                    lVar2 = lVar3;
                                                    int i17 = pg.f4073a;
                                                    pg.e(centralWatchdogService9);
                                                }
                                                if (z20) {
                                                    int i18 = pg.f4073a;
                                                    if (wd.a(centralWatchdogService9)) {
                                                        cls = MainActivity.class;
                                                        str = "getApplicationContext(...)";
                                                        r10 = 1;
                                                    } else {
                                                        if (f8 != null) {
                                                            int iRound2 = Math.round(f8.floatValue());
                                                            strI = pg.i(f8.floatValue());
                                                            i14 = iRound2 >= 80 ? -14696587 : iRound2 < 20 ? -30208 : -1;
                                                            str3 = "%";
                                                        } else {
                                                            i14 = -1;
                                                            strI = "?";
                                                        }
                                                        String str4 = str3;
                                                        String string3 = centralWatchdogService9.getString(R.string.k_battery_icon_title);
                                                        i2.g.d(string3, "getString(...)");
                                                        String string4 = f8 != null ? centralWatchdogService9.getString(R.string.k_battery_icon_text, pg.i(f8.floatValue())) : centralWatchdogService9.getString(R.string.k_status_unavailable);
                                                        i2.g.b(string4);
                                                        Context applicationContext2 = centralWatchdogService9.getApplicationContext();
                                                        str = r8;
                                                        i2.g.d(applicationContext2, str);
                                                        Icon iconA = pg.a(applicationContext2, strI, str4, i14, 10, true, false, 0.82f);
                                                        Context applicationContext3 = centralWatchdogService9.getApplicationContext();
                                                        i2.g.d(applicationContext3, str);
                                                        Intent intentAddFlags = new Intent("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER").setClassName("com.flyme.auto.energy", "com.flyme.auto.energy.EnergyActivity").addFlags(270532608);
                                                        i2.g.d(intentAddFlags, "addFlags(...)");
                                                        try {
                                                            x3Var = applicationContext3.getPackageManager().resolveActivity(intentAddFlags, 0) != null ? x3.f4490a : x3.b;
                                                        } catch (Throwable unused5) {
                                                        }
                                                        int iOrdinal = x3Var.ordinal();
                                                        if (iOrdinal != 0) {
                                                            z18 = true;
                                                            if (iOrdinal != 1) {
                                                                throw new androidx.fragment.app.q();
                                                            }
                                                            intentAddFlags = new Intent(applicationContext3, (Class<?>) MainActivity.class).addFlags(268435456);
                                                            i2.g.d(intentAddFlags, "addFlags(...)");
                                                        } else {
                                                            z18 = true;
                                                        }
                                                        PendingIntent activity = PendingIntent.getActivity(applicationContext3, 97, intentAddFlags, 201326592);
                                                        i2.g.d(activity, "getActivity(...)");
                                                        cls = MainActivity.class;
                                                        pg.j(centralWatchdogService9, 15020, 97, 32, "StatusIcon_BatteryPercent", string3, string4, iconA, activity);
                                                        r10 = z18;
                                                    }
                                                } else {
                                                    cls = MainActivity.class;
                                                    str = r8;
                                                    r10 = 1;
                                                    int i19 = pg.f4073a;
                                                    pg.d(centralWatchdogService9);
                                                }
                                                if (z21) {
                                                    int i20 = pg.f4073a;
                                                    wd wdVar5 = wd.f4450a;
                                                    if (!wd.a(centralWatchdogService9)) {
                                                        String strValueOf2 = f9 != null ? String.valueOf(Math.round(f9.floatValue())) : "?";
                                                        String string5 = centralWatchdogService9.getString(R.string.k_total_km_icon_title);
                                                        i2.g.d(string5, r2);
                                                        String string6 = f9 != null ? centralWatchdogService9.getString(R.string.k_total_km_icon_text, Integer.valueOf(Math.round(f9.floatValue()))) : centralWatchdogService9.getString(R.string.k_status_unavailable);
                                                        i2.g.b(string6);
                                                        Context applicationContext4 = centralWatchdogService9.getApplicationContext();
                                                        i2.g.d(applicationContext4, str);
                                                        pg.j(centralWatchdogService9, 15028, 96, 33, "StatusIcon_TotalMileage", string5, string6, pg.a(applicationContext4, strValueOf2, "km", -1, 0, false, true, 0.55f), null);
                                                    }
                                                } else {
                                                    int i21 = pg.f4073a;
                                                    pg.f(centralWatchdogService9);
                                                }
                                                if (z22) {
                                                    int i22 = pg.f4073a;
                                                    Float f10 = (Float) mVar2.f2292a;
                                                    wd wdVar6 = wd.f4450a;
                                                    if (!wd.a(centralWatchdogService9)) {
                                                        String strValueOf3 = f10 != null ? String.valueOf(Math.round(f10.floatValue())) : "?";
                                                        PendingIntent foregroundService = PendingIntent.getForegroundService(centralWatchdogService9.getApplicationContext(), 94, new Intent(centralWatchdogService9.getApplicationContext(), (Class<?>) CentralWatchdogService.class).putExtra("zerar_viagem", r10), 201326592);
                                                        String string7 = centralWatchdogService9.getString(R.string.k_trip_km_icon_title);
                                                        i2.g.d(string7, r2);
                                                        String string8 = f10 != null ? centralWatchdogService9.getString(R.string.k_trip_km_icon_text, Integer.valueOf(Math.round(f10.floatValue()))) : centralWatchdogService9.getString(R.string.k_status_unavailable);
                                                        i2.g.b(string8);
                                                        Context applicationContext5 = centralWatchdogService9.getApplicationContext();
                                                        i2.g.d(applicationContext5, str);
                                                        pg.j(centralWatchdogService9, 15026, 94, 23, "StatusIcon_TripMileage", string7, string8, pg.a(applicationContext5, strValueOf3, "km", -1, 0, false, true, 0.55f), foregroundService);
                                                    }
                                                } else {
                                                    int i23 = pg.f4073a;
                                                    pg.g(centralWatchdogService9);
                                                }
                                                if (z17) {
                                                    int i24 = lVar2.f2291a;
                                                    boolean z24 = jVar2.f2289a;
                                                    wd wdVar7 = wd.f4450a;
                                                    if (!wd.a(centralWatchdogService9)) {
                                                        int iK = z24 ? k1.a.k(i24, 0, 4) : 0;
                                                        Context applicationContext6 = centralWatchdogService9.getApplicationContext();
                                                        i2.g.d(applicationContext6, str);
                                                        int iU = (int) (e8.u(applicationContext6, 56) / 0.61f);
                                                        ?? r7 = iU;
                                                        if (iU < r10) {
                                                            r7 = r10;
                                                        }
                                                        int iU2 = e8.u(applicationContext6, 8);
                                                        int iU3 = e8.u(applicationContext6, 10);
                                                        int iU4 = e8.u(applicationContext6, 6);
                                                        Bitmap bitmapCreateBitmap = Bitmap.createBitmap((3 * iU4) + (iU3 * 4) + (iU2 * 2), r7, Bitmap.Config.ARGB_8888);
                                                        Canvas canvas = new Canvas(bitmapCreateBitmap);
                                                        Paint paint = new Paint((int) r10);
                                                        float fU = e8.u(applicationContext6, 2);
                                                        float f11 = (float) r7;
                                                        float f12 = f11 * 0.92f;
                                                        float f13 = 0.55f * f11;
                                                        float f14 = f11 * 0.1f;
                                                        int i25 = 0;
                                                        for (int i26 = 4; i25 < i26; i26 = 4) {
                                                            boolean z25 = z24;
                                                            float f15 = i25;
                                                            float f16 = ((iU3 + iU4) * f15) + iU2;
                                                            float f17 = f14;
                                                            float f18 = f13 - ((f15 / (4 - 1.0f)) * (f13 - f14));
                                                            paint.setColor(i25 < iK ? -1 : 1090519039);
                                                            canvas.drawRoundRect(new RectF(f16, f18, iU3 + f16, f12), fU, fU, paint);
                                                            i25++;
                                                            f14 = f17;
                                                            z24 = z25;
                                                            iU2 = iU2;
                                                        }
                                                        boolean z26 = z24;
                                                        Icon iconCreateWithBitmap = Icon.createWithBitmap(bitmapCreateBitmap);
                                                        i2.g.d(iconCreateWithBitmap, "createWithBitmap(...)");
                                                        String string9 = !z26 ? centralWatchdogService9.getString(R.string.k_signal_icon_no_service) : centralWatchdogService9.getString(R.string.k_signal_icon_text, Integer.valueOf(iK));
                                                        i2.g.b(string9);
                                                        String string10 = centralWatchdogService9.getString(R.string.k_signal_icon_title);
                                                        i2.g.d(string10, r2);
                                                        Context applicationContext7 = centralWatchdogService9.getApplicationContext();
                                                        NotificationManager notificationManager = (NotificationManager) applicationContext7.getSystemService(NotificationManager.class);
                                                        if (notificationManager != null) {
                                                            NotificationChannel notificationChannel = new NotificationChannel("central_ex_status_signal", applicationContext7.getString(R.string.k_signal_icon_channel), 2);
                                                            notificationChannel.setShowBadge(false);
                                                            notificationManager.createNotificationChannel(notificationChannel);
                                                            Notification notificationBuild = new Notification.Builder(applicationContext7, "central_ex_status_signal").setSmallIcon(iconCreateWithBitmap).setContentTitle(string10).setContentText(string9).setContentIntent(PendingIntent.getActivity(applicationContext7, 93, new Intent(applicationContext7, (Class<?>) cls), 201326592)).setOngoing(true).setShowWhen(false).build();
                                                            i2.g.d(notificationBuild, "build(...)");
                                                            Bundle bundle = notificationBuild.extras;
                                                            bundle.putBoolean("flag_status_icon_notification", true);
                                                            bundle.putInt("flag_status_icon_id", 93);
                                                            bundle.putString("flag_status_icon_describe", "StatusIcon_PhoneSignal");
                                                            bundle.putParcelable("flag_status_icon_icon", iconCreateWithBitmap);
                                                            bundle.putParcelable("flag_status_icon_pressed_icon", iconCreateWithBitmap);
                                                            bundle.putBoolean("flag_status_icon_hide", false);
                                                            bundle.putInt("flag_status_icon_rank", 33);
                                                            bundle.putInt("flag_status_icon_space_x", 1);
                                                            bundle.putBoolean("flag_status_icon_is_pick_on", false);
                                                            bundle.putInt("flag_status_icon_specific_width", 0);
                                                            try {
                                                                notificationManager.notify(15030, notificationBuild);
                                                            } catch (Throwable unused6) {
                                                            }
                                                        }
                                                    }
                                                } else {
                                                    NotificationManager notificationManager2 = (NotificationManager) centralWatchdogService9.getApplicationContext().getSystemService(NotificationManager.class);
                                                    if (notificationManager2 != null) {
                                                        notificationManager2.cancel(15030);
                                                    }
                                                }
                                                centralWatchdogService9.u0();
                                            }
                                        }
                                    });
                                    return x1.e.f4647c;
                                }
                            });
                            this.b.f811a.postDelayed(this, 15000L);
                        } else {
                            int i10 = pg.f4073a;
                            pg.c(this.b);
                            pg.f(this.b);
                            pg.g(this.b);
                            NotificationManager notificationManager = (NotificationManager) this.b.getApplicationContext().getSystemService(NotificationManager.class);
                            if (notificationManager != null) {
                                notificationManager.cancel(15030);
                            }
                        }
                    } else {
                        wd.i(this.b);
                        wd.l(this.b);
                        this.b.f811a.postDelayed(this, 15000L);
                    }
                    break;
                }
                break;
        }
    }
}
