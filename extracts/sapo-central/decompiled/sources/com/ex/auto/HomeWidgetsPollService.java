package com.ex.auto;

import a1.i;
import android.app.Service;
import android.appwidget.AppWidgetManager;
import android.car.Car;
import android.car.hardware.property.CarPropertyManager;
import android.content.ComponentName;
import android.content.Intent;
import android.content.SharedPreferences;
import android.media.AudioManager;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import androidx.activity.d;
import androidx.activity.result.b;
import com.ex.auto.HomeWidgetsPollService;
import com.geely.driveregenfloater.DriveRegenFloaterService;
import i2.g;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import k1.a;
import w0.ae;
import w0.e8;
import w0.f2;
import w0.l1;
import w0.p1;
import w0.t1;
import w0.v6;
import w0.v7;
import w0.x7;
import w0.z0;
import x1.c;

/* JADX INFO: loaded from: classes.dex */
public final class HomeWidgetsPollService extends Service {
    public static final /* synthetic */ int E = 0;
    public Toast C;
    public TextView D;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public volatile boolean f954d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile boolean f955e;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile Car f958i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public volatile CarPropertyManager f959j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public volatile Integer f960k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public volatile Integer f961l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public volatile Integer f962m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public volatile Float f963n;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public volatile Integer f966q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public volatile Boolean f967r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public volatile Boolean f968s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public volatile Boolean f969t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public volatile Boolean f970u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public volatile Boolean f971v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public volatile Integer f972w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public volatile Integer f973x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public volatile Boolean f974y;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Handler f952a = new Handler(Looper.getMainLooper());
    public final ThreadPoolExecutor b = t1.C("home-widget-vhal", new l1(8), 2);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ThreadPoolExecutor f953c = t1.C("home-widget-command", new l1(9), 2);
    public final AtomicInteger f = new AtomicInteger();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AtomicLong f956g = new AtomicLong();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AtomicInteger f957h = new AtomicInteger();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final c f964o = new c(new f2(3, this));

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final long f965p = 60000;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final d f975z = new d(14, this);
    public final ConcurrentLinkedQueue A = new ConcurrentLinkedQueue();
    public final long B = 6000;

    public static final boolean a(AppWidgetManager appWidgetManager, HomeWidgetsPollService homeWidgetsPollService, Class cls) {
        int[] appWidgetIds = appWidgetManager.getAppWidgetIds(new ComponentName(homeWidgetsPollService, (Class<?>) cls));
        g.d(appWidgetIds, "getAppWidgetIds(...)");
        return !(appWidgetIds.length == 0);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:14:0x0030  */
    /* JADX WARN: Code duplicated, block: B:16:0x0036  */
    /* JADX WARN: Code duplicated, block: B:17:0x0039  */
    /* JADX WARN: Code duplicated, block: B:20:0x0041  */
    /* JADX WARN: Code duplicated, block: B:22:0x0047  */
    /* JADX WARN: Code duplicated, block: B:26:0x0073  */
    /* JADX WARN: Code duplicated, block: B:28:0x0079  */
    /* JADX WARN: Code duplicated, block: B:29:0x007b  */
    /* JADX WARN: Code duplicated, block: B:32:0x0082  */
    /* JADX WARN: Code duplicated, block: B:34:0x0088  */
    /* JADX WARN: Code duplicated, block: B:35:0x0092  */
    /* JADX WARN: Code duplicated, block: B:37:0x0095  */
    /* JADX WARN: Code duplicated, block: B:38:0x00b2  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final void b(String str, CarPropertyManager carPropertyManager) {
        float f;
        Float fD;
        HomeWidgetsPollService homeWidgetsPollService;
        int i3;
        Integer numValueOf;
        Float fD2;
        AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(this);
        String strS = null;
        switch (str.hashCode()) {
            case -1740637569:
                if (!str.equals("com.ex.auto.widget.FAN_PLUS")) {
                    strS = s(str);
                } else {
                    if (str.equals("com.ex.auto.widget.FAN_PLUS")) {
                        i3 = 1;
                    } else {
                        i3 = -1;
                    }
                    numValueOf = this.f962m;
                    if (numValueOf == null) {
                        fD2 = d("fan");
                        if (fD2 != null) {
                            numValueOf = Integer.valueOf((int) fD2.floatValue());
                        } else {
                            numValueOf = null;
                        }
                    }
                    if (numValueOf != null) {
                        this.f962m = Integer.valueOf(a.k(numValueOf.intValue() + i3, 0, 7));
                        Integer num = this.f962m;
                        g.b(num);
                        e("fan", num.intValue());
                        strS = s(str);
                    }
                }
                break;
            case -846993154:
                if (!str.equals("com.ex.auto.widget.TEMP_MINUS")) {
                    strS = s(str);
                } else {
                    if (str.equals("com.ex.auto.widget.TEMP_PLUS")) {
                        f = 1.0f;
                    } else {
                        f = -1.0f;
                    }
                    fD = this.f963n;
                    if (fD == null) {
                        fD = d("temp");
                    }
                    if (fD != null) {
                        this.f963n = Float.valueOf(a.j(Math.round(fD.floatValue() + f), 17.0f, 32.0f));
                        Float f3 = this.f963n;
                        g.b(f3);
                        e("temp", f3.floatValue());
                        strS = s(str);
                    }
                }
                break;
            case -581419220:
                if (!str.equals("com.ex.auto.widget.TEMP_PLUS")) {
                    strS = s(str);
                } else {
                    if (str.equals("com.ex.auto.widget.TEMP_PLUS")) {
                        f = 1.0f;
                    } else {
                        f = -1.0f;
                    }
                    fD = this.f963n;
                    if (fD == null) {
                        fD = d("temp");
                    }
                    if (fD != null) {
                        this.f963n = Float.valueOf(a.j(Math.round(fD.floatValue() + f), 17.0f, 32.0f));
                        Float f4 = this.f963n;
                        g.b(f4);
                        e("temp", f4.floatValue());
                        strS = s(str);
                    }
                }
                break;
            case 1871943691:
                if (!str.equals("com.ex.auto.widget.FAN_MINUS")) {
                    strS = s(str);
                } else {
                    if (str.equals("com.ex.auto.widget.FAN_PLUS")) {
                        i3 = 1;
                    } else {
                        i3 = -1;
                    }
                    numValueOf = this.f962m;
                    if (numValueOf == null) {
                        fD2 = d("fan");
                        if (fD2 != null) {
                            numValueOf = Integer.valueOf((int) fD2.floatValue());
                        } else {
                            numValueOf = null;
                        }
                    }
                    if (numValueOf != null) {
                        this.f962m = Integer.valueOf(a.k(numValueOf.intValue() + i3, 0, 7));
                        Integer num2 = this.f962m;
                        g.b(num2);
                        e("fan", num2.intValue());
                        strS = s(str);
                    }
                }
                break;
            default:
                strS = s(str);
                break;
        }
        if (strS != null) {
            p(strS);
        }
        i();
        boolean z2 = strS == null;
        this.f956g.incrementAndGet();
        this.f.incrementAndGet();
        try {
            homeWidgetsPollService = this;
            try {
                this.f953c.execute(new x7(homeWidgetsPollService, str, carPropertyManager, appWidgetManager, z2));
            } catch (RejectedExecutionException unused) {
                homeWidgetsPollService.f.decrementAndGet();
            }
        } catch (RejectedExecutionException unused2) {
            homeWidgetsPollService = this;
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final void c(String str, CarPropertyManager carPropertyManager) {
        switch (str.hashCode()) {
            case -2098662015:
                if (str.equals("com.ex.auto.widget.DRIVE_NEXT")) {
                    int[] iArr = v7.f4377c;
                    int i3 = iArr[v7.p(iArr, this.f960k, 1)];
                    v7.r(this, carPropertyManager, i3);
                    this.f960k = Integer.valueOf(i3);
                    break;
                }
                break;
            case -2098590527:
                if (str.equals("com.ex.auto.widget.DRIVE_PREV")) {
                    int[] iArr2 = v7.f4377c;
                    int i4 = iArr2[v7.p(iArr2, this.f960k, -1)];
                    v7.r(this, carPropertyManager, i4);
                    this.f960k = Integer.valueOf(i4);
                    break;
                }
                break;
            case -2040621029:
                if (str.equals("com.ex.auto.widget.VENT_FACE_FLOOR")) {
                    v7.y(carPropertyManager, 3);
                    this.f966q = 3;
                    break;
                }
                break;
            case -2025624646:
                if (str.equals("com.ex.auto.widget.FRONT_MAX_DEFROST_TOGGLE")) {
                    Boolean boolF = this.f970u;
                    boolean z2 = !((boolF == null && (boolF = v7.f(carPropertyManager)) == null) ? false : boolF.booleanValue());
                    v7.t(carPropertyManager, z2);
                    this.f970u = Boolean.valueOf(z2);
                    break;
                }
                break;
            case -1899378174:
                if (str.equals("com.ex.auto.widget.VENT_WINDSHIELD")) {
                    v7.y(carPropertyManager, 4);
                    this.f966q = 4;
                    break;
                }
                break;
            case -1740637569:
                if (str.equals("com.ex.auto.widget.FAN_PLUS")) {
                    q(carPropertyManager, 1);
                    break;
                }
                break;
            case -1393080336:
                if (str.equals("com.ex.auto.widget.RECIRC_TOGGLE")) {
                    Boolean boolI = this.f968s;
                    boolean z3 = !((boolI == null && (boolI = v7.i(carPropertyManager)) == null) ? false : boolI.booleanValue());
                    v7.v(carPropertyManager, z3);
                    this.f968s = Boolean.valueOf(z3);
                    break;
                }
                break;
            case -1262930418:
                if (str.equals("com.ex.auto.widget.WINDSHIELD_HEAT_TOGGLE")) {
                    Boolean boolN = this.f971v;
                    boolean z4 = !((boolN == null && (boolN = v7.n(carPropertyManager)) == null) ? false : boolN.booleanValue());
                    v7.A(carPropertyManager, z4);
                    this.f971v = Boolean.valueOf(z4);
                    break;
                }
                break;
            case -895512040:
                if (str.equals("com.ex.auto.widget.AC_TOGGLE")) {
                    Boolean boolD = this.f974y;
                    boolean z5 = !((boolD == null && (boolD = v7.d(carPropertyManager)) == null) ? false : boolD.booleanValue());
                    v7.q(carPropertyManager, z5);
                    this.f974y = Boolean.valueOf(z5);
                    break;
                }
                break;
            case -846993154:
                if (str.equals("com.ex.auto.widget.TEMP_MINUS")) {
                    r(carPropertyManager, -1.0f);
                    break;
                }
                break;
            case -629076346:
                if (str.equals("com.ex.auto.widget.DRIVE_SPORT")) {
                    v7.r(this, carPropertyManager, 570491139);
                    this.f960k = 570491139;
                    break;
                }
                break;
            case -581419220:
                if (str.equals("com.ex.auto.widget.TEMP_PLUS")) {
                    r(carPropertyManager, 1.0f);
                    break;
                }
                break;
            case -365752430:
                if (str.equals("com.ex.auto.widget.REAR_DEFROST_TOGGLE")) {
                    Boolean boolH = this.f967r;
                    boolean z6 = !((boolH == null && (boolH = v7.h(carPropertyManager)) == null) ? false : boolH.booleanValue());
                    v7.u(carPropertyManager, z6);
                    this.f967r = Boolean.valueOf(z6);
                    break;
                }
                break;
            case -297972642:
                if (str.equals("com.ex.auto.widget.DRIVE_COMFORT")) {
                    v7.r(this, carPropertyManager, 570491138);
                    this.f960k = 570491138;
                    break;
                }
                break;
            case -248536901:
                if (str.equals("com.ex.auto.widget.VENT_FLOOR")) {
                    v7.y(carPropertyManager, 2);
                    this.f966q = 2;
                    break;
                }
                break;
            case 331360605:
                if (str.equals("com.ex.auto.widget.REGEN_HIGH")) {
                    v7.w(this, carPropertyManager, 537003267);
                    this.f961l = 537003267;
                    break;
                }
                break;
            case 331536046:
                if (str.equals("com.ex.auto.widget.REGEN_NEXT")) {
                    int[] iArr3 = v7.f4378d;
                    int i5 = iArr3[v7.p(iArr3, this.f961l, 1)];
                    v7.w(this, carPropertyManager, i5);
                    this.f961l = Integer.valueOf(i5);
                    break;
                }
                break;
            case 331607534:
                if (str.equals("com.ex.auto.widget.REGEN_PREV")) {
                    int[] iArr4 = v7.f4378d;
                    int i6 = iArr4[v7.p(iArr4, this.f961l, -1)];
                    v7.w(this, carPropertyManager, i6);
                    this.f961l = Integer.valueOf(i6);
                    break;
                }
                break;
            case 347934499:
                if (str.equals("com.ex.auto.widget.DRIVE_ECO")) {
                    v7.r(this, carPropertyManager, 570491137);
                    this.f960k = 570491137;
                    break;
                }
                break;
            case 1100350382:
                if (str.equals("com.ex.auto.widget.VENT_FACE")) {
                    v7.y(carPropertyManager, 1);
                    this.f966q = 1;
                    break;
                }
                break;
            case 1100593220:
                if (str.equals("com.ex.auto.widget.VENT_NEXT")) {
                    int[] iArr5 = v7.b;
                    int i7 = iArr5[v7.p(iArr5, this.f966q, 1)];
                    v7.y(carPropertyManager, i7);
                    this.f966q = Integer.valueOf(i7);
                    break;
                }
                break;
            case 1100664708:
                if (str.equals("com.ex.auto.widget.VENT_PREV")) {
                    int[] iArr6 = v7.b;
                    int i8 = iArr6[v7.p(iArr6, this.f966q, -1)];
                    v7.y(carPropertyManager, i8);
                    this.f966q = Integer.valueOf(i8);
                    break;
                }
                break;
            case 1147541365:
                if (str.equals("com.ex.auto.widget.VENT_FLOOR_WINDSHIELD")) {
                    v7.y(carPropertyManager, 6);
                    this.f966q = 6;
                    break;
                }
                break;
            case 1204109181:
                if (str.equals("com.ex.auto.widget.SEAT_HEAT_DRIVER_CYCLE")) {
                    g(carPropertyManager, 1, true);
                    break;
                }
                break;
            case 1221108851:
                if (str.equals("com.ex.auto.widget.SEAT_HEAT_PASSENGER_CYCLE")) {
                    g(carPropertyManager, 4, false);
                    break;
                }
                break;
            case 1673261081:
                if (str.equals("com.ex.auto.widget.REGEN_LOW")) {
                    v7.w(this, carPropertyManager, 537003265);
                    this.f961l = 537003265;
                    break;
                }
                break;
            case 1673261837:
                if (str.equals("com.ex.auto.widget.REGEN_MID")) {
                    v7.w(this, carPropertyManager, 537003266);
                    this.f961l = 537003266;
                    break;
                }
                break;
            case 1871943691:
                if (str.equals("com.ex.auto.widget.FAN_MINUS")) {
                    q(carPropertyManager, -1);
                    break;
                }
                break;
            case 1905687174:
                if (str.equals("com.ex.auto.widget.WHEEL_HEAT_TOGGLE")) {
                    Boolean boolM = this.f969t;
                    boolean z7 = !((boolM == null && (boolM = v7.m(carPropertyManager)) == null) ? false : boolM.booleanValue());
                    v7.z(carPropertyManager, z7);
                    this.f969t = Boolean.valueOf(z7);
                    break;
                }
                break;
        }
    }

    public final Float d(String str) {
        c cVar = this.f964o;
        long j3 = ((SharedPreferences) cVar.a()).getLong(str.concat("_ts"), 0L);
        if (j3 <= 0 || System.currentTimeMillis() - j3 > this.f965p) {
            return null;
        }
        float f = ((SharedPreferences) cVar.a()).getFloat(str, Float.NaN);
        Float fValueOf = Float.valueOf(f);
        if (Float.isNaN(f)) {
            return null;
        }
        return fValueOf;
    }

    public final void e(String str, float f) {
        ((SharedPreferences) this.f964o.a()).edit().putFloat(str, f).putLong(str.concat("_ts"), System.currentTimeMillis()).apply();
    }

    public final void f() {
        try {
            this.f958i = Car.createCar(this, null, 0L, new z0(this, this.f957h.incrementAndGet(), 1));
        } catch (Exception e3) {
            b.o(e3, new StringBuilder("connectCar: "), "HomeWidgetsPoll");
        }
    }

    public final void g(CarPropertyManager carPropertyManager, int i3, boolean z2) {
        Integer numJ = z2 ? this.f972w : this.f973x;
        int iIntValue = ((numJ == null && (numJ = v7.j(carPropertyManager, i3)) == null) ? -1 : numJ.intValue()) + 1;
        if (iIntValue > 4) {
            iIntValue = 0;
        }
        int[] iArr = v7.f4376a;
        g.e(carPropertyManager, "cpm");
        p1.l(carPropertyManager, 356517131, i3, iIntValue);
        Integer numValueOf = Integer.valueOf(iIntValue);
        if (z2) {
            this.f972w = numValueOf;
        } else {
            this.f973x = numValueOf;
        }
    }

    public final void h(CarPropertyManager carPropertyManager) {
        int i3 = 0;
        while (true) {
            String str = (String) this.A.poll();
            if (str == null) {
                break;
            }
            i3++;
            b(str, carPropertyManager);
        }
        if (i3 > 0) {
            ae aeVar = ae.f3361a;
            ae.b("HomeWidgetsPoll", "volante/widget: " + i3 + " ação(ões) da fila aplicada(s) depois do Car conectar", false);
        }
    }

    public final void i() {
        try {
            Object systemService = getSystemService("audio");
            g.c(systemService, "null cannot be cast to non-null type android.media.AudioManager");
            ((AudioManager) systemService).playSoundEffect(0);
        } catch (Exception unused) {
        }
    }

    public final void j(AppWidgetManager appWidgetManager) {
        ComponentName componentName = new ComponentName(this, (Class<?>) DriveRegenWidgetProvider.class);
        int i3 = DriveRegenWidgetProvider.f909a;
        appWidgetManager.updateAppWidget(componentName, t1.i(this, this.f960k, this.f961l));
        ComponentName componentName2 = new ComponentName(this, (Class<?>) DriveModeVerticalWidgetProvider.class);
        int i4 = DriveModeVerticalWidgetProvider.f908a;
        appWidgetManager.updateAppWidget(componentName2, t1.g(this, this.f960k));
        ComponentName componentName3 = new ComponentName(this, (Class<?>) RegenVerticalWidgetProvider.class);
        int i5 = RegenVerticalWidgetProvider.f1177a;
        appWidgetManager.updateAppWidget(componentName3, e8.f(this, this.f961l));
    }

    public final void k(AppWidgetManager appWidgetManager) {
        ComponentName componentName = new ComponentName(this, (Class<?>) FanSpeedWidgetProvider.class);
        int[] iArr = FanSpeedWidgetProvider.f923a;
        appWidgetManager.updateAppWidget(componentName, t1.h(this, this.f962m, R.layout.widget_fan_speed));
        ComponentName componentName2 = new ComponentName(this, (Class<?>) FanSpeedVerticalWidgetProvider.class);
        int i3 = FanSpeedVerticalWidgetProvider.f922a;
        appWidgetManager.updateAppWidget(componentName2, t1.h(this, this.f962m, R.layout.widget_fan_speed_vertical));
    }

    public final void l(AppWidgetManager appWidgetManager) {
        v6 v6Var = new v6(this.f969t, this.f967r, this.f970u, this.f971v, this.f972w, this.f973x);
        ComponentName componentName = new ComponentName(this, (Class<?>) HeatingTestWidgetProvider.class);
        int i3 = HeatingTestWidgetProvider.f925a;
        appWidgetManager.updateAppWidget(componentName, t1.j(this, v6Var));
    }

    public final void m(AppWidgetManager appWidgetManager) {
        ComponentName componentName = new ComponentName(this, (Class<?>) TemperatureWidgetProvider.class);
        int i3 = TemperatureWidgetProvider.f1219a;
        appWidgetManager.updateAppWidget(componentName, e8.e(this, this.f963n, R.layout.widget_temperature));
        ComponentName componentName2 = new ComponentName(this, (Class<?>) TemperatureVerticalWidgetProvider.class);
        int i4 = TemperatureVerticalWidgetProvider.f1218a;
        appWidgetManager.updateAppWidget(componentName2, e8.e(this, this.f963n, R.layout.widget_temperature_vertical));
    }

    public final void n(AppWidgetManager appWidgetManager) {
        ComponentName componentName = new ComponentName(this, (Class<?>) HvacDirectionFanWidgetProvider.class);
        int[] iArr = HvacDirectionFanWidgetProvider.f976a;
        appWidgetManager.updateAppWidget(componentName, e8.h(this, this.f966q, this.f968s, this.f962m, this.f974y));
    }

    public final void o(AppWidgetManager appWidgetManager) {
        ComponentName componentName = new ComponentName(this, (Class<?>) HvacDirectionWidgetProvider.class);
        int i3 = HvacDirectionWidgetProvider.f978a;
        appWidgetManager.updateAppWidget(componentName, e8.i(this, this.f966q, this.f968s));
        ComponentName componentName2 = new ComponentName(this, (Class<?>) HvacDirectionVerticalWidgetProvider.class);
        int i4 = HvacDirectionVerticalWidgetProvider.f977a;
        appWidgetManager.updateAppWidget(componentName2, e8.g(this, this.f966q, this.f968s));
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        f();
        this.f952a.post(this.f975z);
    }

    @Override // android.app.Service
    public final void onDestroy() {
        this.f955e = true;
        this.f957h.incrementAndGet();
        super.onDestroy();
        this.f952a.removeCallbacksAndMessages(null);
        this.b.shutdownNow();
        this.f953c.shutdownNow();
        try {
            Car car = this.f958i;
            if (car != null) {
                car.disconnect();
            }
        } catch (Exception unused) {
        }
        this.f958i = null;
        this.f959j = null;
    }

    /* JADX WARN: Code duplicated, block: B:92:0x0218  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i3, int i4) {
        Integer numValueOf;
        boolean zC;
        String str;
        Integer numValueOf2 = null;
        String action = intent != null ? intent.getAction() : null;
        if (g.a(action, "com.ex.auto.widget.REFRESH_OPACITY")) {
            AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(this);
            g.b(appWidgetManager);
            j(appWidgetManager);
            k(appWidgetManager);
            m(appWidgetManager);
            o(appWidgetManager);
            n(appWidgetManager);
            l(appWidgetManager);
            return 2;
        }
        if (g.a(action, "com.ex.auto.widget.WHEEL_MODE_ENTERED")) {
            i();
            return 2;
        }
        final int i5 = 0;
        if (g.a(action, "com.ex.auto.widget.WHEEL_MODE_EXITED")) {
            i();
            this.f952a.postDelayed(new Runnable(this) { // from class: w0.w7
                public final /* synthetic */ HomeWidgetsPollService b;

                {
                    this.b = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    switch (i5) {
                        case 0:
                            HomeWidgetsPollService homeWidgetsPollService = this.b;
                            int i6 = HomeWidgetsPollService.E;
                            homeWidgetsPollService.i();
                            break;
                        default:
                            HomeWidgetsPollService homeWidgetsPollService2 = this.b;
                            CarPropertyManager carPropertyManager = homeWidgetsPollService2.f959j;
                            if (carPropertyManager == null) {
                                int i7 = 0;
                                while (homeWidgetsPollService2.A.poll() != null) {
                                    i7++;
                                }
                                if (i7 > 0) {
                                    ae aeVar = ae.f3361a;
                                    StringBuilder sbK = androidx.activity.result.b.k("volante/widget: ", i7, " ação(ões) descartada(s) — o Car não conectou em ");
                                    sbK.append(homeWidgetsPollService2.B);
                                    sbK.append("ms");
                                    ae.b("HomeWidgetsPoll", sbK.toString(), false);
                                }
                            } else {
                                homeWidgetsPollService2.h(carPropertyManager);
                            }
                            break;
                    }
                }
            }, 140L);
            return 2;
        }
        if (action == null || !a.P("com.ex.auto.widget.DRIVE_ECO", "com.ex.auto.widget.DRIVE_COMFORT", "com.ex.auto.widget.DRIVE_SPORT", "com.ex.auto.widget.REGEN_LOW", "com.ex.auto.widget.REGEN_MID", "com.ex.auto.widget.REGEN_HIGH", "com.ex.auto.widget.DRIVE_NEXT", "com.ex.auto.widget.DRIVE_PREV", "com.ex.auto.widget.REGEN_NEXT", "com.ex.auto.widget.REGEN_PREV", "com.ex.auto.widget.FAN_MINUS", "com.ex.auto.widget.FAN_PLUS", "com.ex.auto.widget.TEMP_MINUS", "com.ex.auto.widget.TEMP_PLUS", "com.ex.auto.widget.VENT_FACE", "com.ex.auto.widget.VENT_FLOOR", "com.ex.auto.widget.VENT_FACE_FLOOR", "com.ex.auto.widget.VENT_WINDSHIELD", "com.ex.auto.widget.VENT_FLOOR_WINDSHIELD", "com.ex.auto.widget.VENT_NEXT", "com.ex.auto.widget.VENT_PREV", "com.ex.auto.widget.REAR_DEFROST_TOGGLE", "com.ex.auto.widget.RECIRC_TOGGLE", "com.ex.auto.widget.WHEEL_HEAT_TOGGLE", "com.ex.auto.widget.FRONT_MAX_DEFROST_TOGGLE", "com.ex.auto.widget.WINDSHIELD_HEAT_TOGGLE", "com.ex.auto.widget.SEAT_HEAT_DRIVER_CYCLE", "com.ex.auto.widget.SEAT_HEAT_PASSENGER_CYCLE", "com.ex.auto.widget.AC_TOGGLE").contains(action)) {
            return 2;
        }
        final int i6 = 1;
        switch (action.hashCode()) {
            case -2098662015:
                if (!action.equals("com.ex.auto.widget.DRIVE_NEXT")) {
                    numValueOf = null;
                } else {
                    int[] iArr = v7.f4377c;
                    Integer num = this.f960k;
                    numValueOf = Integer.valueOf(iArr[v7.p(iArr, Integer.valueOf(num != null ? num.intValue() : DriveRegenFloaterService.h(this).getInt("saved_drive", 570491138)), 1)]);
                }
                break;
            case -2098590527:
                if (!action.equals("com.ex.auto.widget.DRIVE_PREV")) {
                    numValueOf = null;
                } else {
                    int[] iArr2 = v7.f4377c;
                    Integer num2 = this.f960k;
                    numValueOf = Integer.valueOf(iArr2[v7.p(iArr2, Integer.valueOf(num2 != null ? num2.intValue() : DriveRegenFloaterService.h(this).getInt("saved_drive", 570491138)), -1)]);
                }
                break;
            case -629076346:
                numValueOf = !action.equals("com.ex.auto.widget.DRIVE_SPORT") ? null : 570491139;
                break;
            case -297972642:
                numValueOf = !action.equals("com.ex.auto.widget.DRIVE_COMFORT") ? null : 570491138;
                break;
            case 347934499:
                numValueOf = !action.equals("com.ex.auto.widget.DRIVE_ECO") ? null : 570491137;
                break;
            default:
                numValueOf = null;
                break;
        }
        switch (action.hashCode()) {
            case 331360605:
                if (action.equals("com.ex.auto.widget.REGEN_HIGH")) {
                    numValueOf2 = 537003267;
                }
                break;
            case 331536046:
                if (action.equals("com.ex.auto.widget.REGEN_NEXT")) {
                    int[] iArr3 = v7.f4378d;
                    Integer num3 = this.f961l;
                    numValueOf2 = Integer.valueOf(iArr3[v7.p(iArr3, Integer.valueOf(num3 != null ? num3.intValue() : DriveRegenFloaterService.h(this).getInt("saved_regen", 537003266)), 1)]);
                }
                break;
            case 331607534:
                if (action.equals("com.ex.auto.widget.REGEN_PREV")) {
                    int[] iArr4 = v7.f4378d;
                    Integer num4 = this.f961l;
                    numValueOf2 = Integer.valueOf(iArr4[v7.p(iArr4, Integer.valueOf(num4 != null ? num4.intValue() : DriveRegenFloaterService.h(this).getInt("saved_regen", 537003266)), -1)]);
                }
                break;
            case 1673261081:
                if (action.equals("com.ex.auto.widget.REGEN_LOW")) {
                    numValueOf2 = 537003265;
                }
                break;
            case 1673261837:
                if (action.equals("com.ex.auto.widget.REGEN_MID")) {
                    numValueOf2 = 537003266;
                }
                break;
        }
        if (numValueOf == null && numValueOf2 == null) {
            zC = false;
        } else {
            if (numValueOf != null) {
                this.f960k = Integer.valueOf(numValueOf.intValue());
            }
            if (numValueOf2 != null) {
                this.f961l = Integer.valueOf(numValueOf2.intValue());
            }
            zC = v7.c(this, numValueOf, numValueOf2);
            ae aeVar = ae.f3361a;
            StringBuilder sbL = b.l("condução/regeneração pelo widget: '", action, "' → ");
            String str2 = "";
            if (numValueOf != null) {
                str = "drive=" + numValueOf.intValue() + ' ';
                if (str == null) {
                    str = "";
                }
            } else {
                str = "";
            }
            sbL.append(str);
            if (numValueOf2 != null) {
                String str3 = "regen=" + numValueOf2.intValue() + ' ';
                if (str3 != null) {
                    str2 = str3;
                }
            }
            sbL.append(str2);
            b.r(sbL, zC ? "— gravado, watchdog assumiu a escrita" : "— gravado, escrita direta", "HomeWidgetsPoll", false);
        }
        if (zC) {
            return 2;
        }
        CarPropertyManager carPropertyManager = this.f959j;
        if (carPropertyManager != null) {
            b(action, carPropertyManager);
            return 2;
        }
        this.A.add(action);
        ae aeVar2 = ae.f3361a;
        b.p("volante/widget: '", action, "' chegou antes do Car conectar — na fila", "HomeWidgetsPoll", false);
        if (this.f959j == null && this.f958i == null) {
            f();
        }
        this.f952a.postDelayed(new Runnable(this) { // from class: w0.w7
            public final /* synthetic */ HomeWidgetsPollService b;

            {
                this.b = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i6) {
                    case 0:
                        HomeWidgetsPollService homeWidgetsPollService = this.b;
                        int i7 = HomeWidgetsPollService.E;
                        homeWidgetsPollService.i();
                        break;
                    default:
                        HomeWidgetsPollService homeWidgetsPollService2 = this.b;
                        CarPropertyManager carPropertyManager2 = homeWidgetsPollService2.f959j;
                        if (carPropertyManager2 == null) {
                            int i8 = 0;
                            while (homeWidgetsPollService2.A.poll() != null) {
                                i8++;
                            }
                            if (i8 > 0) {
                                ae aeVar3 = ae.f3361a;
                                StringBuilder sbK = androidx.activity.result.b.k("volante/widget: ", i8, " ação(ões) descartada(s) — o Car não conectou em ");
                                sbK.append(homeWidgetsPollService2.B);
                                sbK.append("ms");
                                ae.b("HomeWidgetsPoll", sbK.toString(), false);
                            }
                        } else {
                            homeWidgetsPollService2.h(carPropertyManager2);
                        }
                        break;
                }
            }
        }, this.B);
        return 2;
    }

    public final void p(String str) {
        if (!g.a(Looper.myLooper(), Looper.getMainLooper())) {
            this.f952a.post(new i(this, 17, str));
            return;
        }
        try {
            Toast toast = this.C;
            if (toast == null) {
                View viewInflate = LayoutInflater.from(this).inflate(R.layout.toast_wheel_feedback, (ViewGroup) null);
                this.D = (TextView) viewInflate.findViewById(R.id.txt_wheel_toast);
                Toast toast2 = new Toast(this);
                toast2.setDuration(0);
                toast2.setView(viewInflate);
                this.C = toast2;
                toast = toast2;
            }
            TextView textView = this.D;
            if (textView != null) {
                textView.setText(str);
            }
            toast.show();
        } catch (Exception e3) {
            b.o(e3, new StringBuilder("showWheelToast: "), "HomeWidgetsPoll");
        }
    }

    public final void q(CarPropertyManager carPropertyManager, int i3) {
        int iK;
        Integer num = this.f962m;
        if (num != null) {
            iK = num.intValue();
        } else {
            Integer numE = this.f962m;
            if (numE == null) {
                Float fD = d("fan");
                numE = fD != null ? Integer.valueOf((int) fD.floatValue()) : null;
            }
            iK = a.k(((numE == null && (numE = v7.e(carPropertyManager)) == null) ? 3 : numE.intValue()) + i3, 0, 7);
        }
        v7.s(carPropertyManager, iK);
        this.f962m = Integer.valueOf(iK);
        e("fan", iK);
    }

    public final void r(CarPropertyManager carPropertyManager, float f) {
        float fJ;
        Float f3 = this.f963n;
        if (f3 != null) {
            fJ = f3.floatValue();
        } else {
            Float fK = this.f963n;
            if (fK == null) {
                fK = d("temp");
            }
            fJ = a.j(Math.round(((fK == null && (fK = v7.k(carPropertyManager)) == null) ? 22.0f : fK.floatValue()) + f), 17.0f, 32.0f);
        }
        v7.x(carPropertyManager, fJ);
        this.f963n = Float.valueOf(fJ);
        e("temp", fJ);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0044  */
    /* JADX WARN: Code duplicated, block: B:25:0x005b  */
    /* JADX WARN: Code duplicated, block: B:40:0x0093  */
    /* JADX WARN: Code duplicated, block: B:41:0x0098  */
    /* JADX WARN: Code duplicated, block: B:49:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:50:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:66:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:71:0x010f  */
    public final String s(String str) {
        float fFloatValue;
        int iIntValue;
        String string = "—";
        switch (str) {
            case "com.ex.auto.widget.DRIVE_NEXT":
            case "com.ex.auto.widget.DRIVE_PREV":
                if (!str.equals("com.ex.auto.widget.DRIVE_NEXT")) {
                    return null;
                }
                Integer num = this.f960k;
                if (num != null && num.intValue() == 570491137) {
                    string = getString(R.string.k_widget_lbl_drive_eco);
                    g.d(string, "getString(...)");
                } else if (num != null && num.intValue() == 570491138) {
                    string = getString(R.string.k_widget_lbl_drive_comfort);
                    g.d(string, "getString(...)");
                } else if (num != null && num.intValue() == 570491139) {
                    string = getString(R.string.k_widget_lbl_drive_sport);
                    g.d(string, "getString(...)");
                }
                return getString(R.string.k_drive_mode_toast, string);
            case "com.ex.auto.widget.FAN_PLUS":
                if (!str.equals("com.ex.auto.widget.FAN_PLUS")) {
                    return null;
                }
                Integer num2 = this.f962m;
                if (num2 != null) {
                    iIntValue = num2.intValue();
                } else {
                    iIntValue = 0;
                }
                return getString(R.string.k_fan_speed_toast, Integer.valueOf(iIntValue));
            case "com.ex.auto.widget.TEMP_MINUS":
            case "com.ex.auto.widget.TEMP_PLUS":
                if (!str.equals("com.ex.auto.widget.TEMP_MINUS")) {
                    return null;
                }
                Float f = this.f963n;
                if (f != null) {
                    fFloatValue = f.floatValue();
                } else {
                    fFloatValue = 0.0f;
                }
                return getString(R.string.k_hvac_temp_toast, Float.valueOf(fFloatValue));
            case "com.ex.auto.widget.REGEN_NEXT":
            case "com.ex.auto.widget.REGEN_PREV":
                if (!str.equals("com.ex.auto.widget.REGEN_NEXT")) {
                    return null;
                }
                Integer num3 = this.f961l;
                if (num3 != null && num3.intValue() == 537003265) {
                    string = getString(R.string.k_widget_lbl_regen_low);
                    g.d(string, "getString(...)");
                } else if (num3 != null && num3.intValue() == 537003266) {
                    string = getString(R.string.k_widget_lbl_regen_mid);
                    g.d(string, "getString(...)");
                } else if (num3 != null && num3.intValue() == 537003267) {
                    string = getString(R.string.k_widget_lbl_regen_high);
                    g.d(string, "getString(...)");
                }
                return getString(R.string.k_regen_toast, string);
            case "com.ex.auto.widget.FAN_MINUS":
                if (!str.equals("com.ex.auto.widget.FAN_PLUS")) {
                    return null;
                }
                Integer num4 = this.f962m;
                if (num4 != null) {
                    iIntValue = num4.intValue();
                } else {
                    iIntValue = 0;
                }
                return getString(R.string.k_fan_speed_toast, Integer.valueOf(iIntValue));
            default:
                return null;
        }
    }
}
