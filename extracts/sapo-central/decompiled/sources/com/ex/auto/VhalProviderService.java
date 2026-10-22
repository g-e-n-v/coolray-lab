package com.ex.auto;

import a1.p;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.car.Car;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.SystemClock;
import android.util.Log;
import com.ex.auto.VhalProviderService;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.util.ArrayDeque;
import org.json.JSONException;
import org.json.JSONObject;
import q0.c;
import w0.ch;
import w0.l3;
import w0.m;
import w0.m3;
import w0.wg;
import w0.xg;

/* JADX INFO: loaded from: classes.dex */
public class VhalProviderService extends Service {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static volatile boolean f1233l = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static volatile int f1234m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static volatile c f1235n = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static volatile long f1236o = -1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final Object f1237p = new Object();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final ArrayDeque f1238q = new ArrayDeque();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static long f1239r = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Car f1240a;
    public xg b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ServerSocket f1241c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public volatile boolean f1242d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public m3 f1243e;
    public ch f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public m3 f1244g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public l3 f1245h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile wg f1246i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public volatile boolean f1247j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public volatile long f1248k = 1000;

    public static void a(JSONObject jSONObject, String str, Float f, float f3, float f4) throws JSONException {
        if (f == null || f.isNaN() || f.isInfinite() || f.floatValue() < f3 || f.floatValue() > f4) {
            return;
        }
        jSONObject.put(str, Math.round(((double) f.floatValue()) * 100.0d) / 100.0d);
    }

    public static wg b(long j3) {
        c cVar = f1235n;
        if (!f1233l || cVar == null || j3 < 0 || SystemClock.elapsedRealtime() - cVar.b > j3) {
            return null;
        }
        return ((wg) cVar.f2853c).a();
    }

    public static void c(Context context, boolean z2) {
        Intent intent = new Intent(context, (Class<?>) VhalProviderService.class);
        try {
            if (z2) {
                context.startForegroundService(intent);
            } else {
                context.stopService(intent);
            }
        } catch (Exception unused) {
        }
    }

    public final String d() {
        wg wgVar = this.f1246i;
        if (wgVar == null) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            a(jSONObject, "speed", wgVar.f4457a, 0.0f, 320.0f);
            Integer num = wgVar.b;
            if (num != null) {
                jSONObject.put("gear", num.intValue());
            }
            String str = wgVar.f4458c;
            if (str != null) {
                jSONObject.put("gearLabel", str);
            }
            a(jSONObject, "soc", wgVar.f4459d, 0.0f, 100.0f);
            a(jSONObject, "power", wgVar.f4461g, -400.0f, 400.0f);
            jSONObject.put("powerSrc", "soc");
            Integer num2 = wgVar.f4479y;
            if (num2 != null) {
                jSONObject.put("dischgPwrRaw", num2.intValue());
            }
            Integer num3 = wgVar.f4480z;
            if (num3 != null) {
                jSONObject.put("dischgCurrRaw", num3.intValue());
            }
            Integer num4 = wgVar.A;
            if (num4 != null) {
                jSONObject.put("dischgVoltRaw", num4.intValue());
            }
            a(jSONObject, "range", wgVar.f4460e, 0.0f, 2000.0f);
            a(jSONObject, "odo", wgVar.f, 1.0f, 2000000.0f);
            a(jSONObject, "driveFlow", wgVar.f4465k, -100.0f, 100.0f);
            a(jSONObject, "battFlow", wgVar.f4466l, -100.0f, 100.0f);
            a(jSONObject, "outTemp", wgVar.f4470p, -60.0f, 90.0f);
            a(jSONObject, "setTemp", wgVar.f4469o, 10.0f, 35.0f);
            a(jSONObject, "aux12v", wgVar.f4471q, 6.0f, 18.0f);
            a(jSONObject, "chargeKw", wgVar.G, 0.0f, 400.0f);
            Boolean bool = wgVar.E;
            if (bool != null) {
                jSONObject.put("charging", bool.booleanValue());
            }
            Boolean bool2 = wgVar.F;
            if (bool2 != null) {
                jSONObject.put("dcfc", bool2.booleanValue());
            }
            Integer num5 = wgVar.f4472r;
            if (num5 != null) {
                jSONObject.put("ign", num5.intValue());
            }
            Integer num6 = wgVar.f4462h;
            if (num6 != null) {
                jSONObject.put("consumoMedio100Raw", num6.intValue());
            }
            Integer num7 = wgVar.f4463i;
            if (num7 != null) {
                jSONObject.put("potMediaIpkRaw", num7.intValue());
            }
            Integer num8 = wgVar.f4464j;
            if (num8 != null) {
                jSONObject.put("odoEvdtRaw", num8.intValue());
            }
            a(jSONObject, "tripAKm", wgVar.f4473s, 0.0f, 1000000.0f);
            a(jSONObject, "tripBKm", wgVar.f4474t, 0.0f, 1000000.0f);
            Integer num9 = wgVar.f4475u;
            if (num9 != null) {
                jSONObject.put("tripATimeRaw", num9.intValue());
            }
            Integer num10 = wgVar.f4476v;
            if (num10 != null) {
                jSONObject.put("tripBTimeRaw", num10.intValue());
            }
            a(jSONObject, "tripAAvgKmh", wgVar.f4477w, 0.0f, 400.0f);
            a(jSONObject, "tripBAvgKmh", wgVar.f4478x, 0.0f, 400.0f);
            Boolean bool3 = wgVar.H;
            if (bool3 != null) {
                jSONObject.put("vhalLive", bool3.booleanValue());
            }
            String str2 = wgVar.I;
            if (str2 != null && !str2.equals("unknown")) {
                jSONObject.put("carId", wgVar.I);
            }
            return jSONObject.toString();
        } catch (Exception unused) {
            return null;
        }
    }

    public final void e() {
        ((NotificationManager) getSystemService("notification")).notify(51, new Notification.Builder(this, "vhal_provider").setContentTitle("VHAL Provider (p/ celular)").setContentText("porta 47800 • clientes: " + f1234m).setSmallIcon(android.R.drawable.ic_menu_share).setOngoing(true).build());
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        ((NotificationManager) getSystemService("notification")).createNotificationChannel(new NotificationChannel("vhal_provider", "VHAL Provider", 2));
        m3 m3Var = new m3(this, 1);
        this.f1243e = m3Var;
        this.f = new ch(m3Var);
        ch.Q = new m();
        m3 m3Var2 = new m3(this, 0);
        this.f1244g = m3Var2;
        this.f1245h = new l3(m3Var2);
    }

    @Override // android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        this.f1242d = false;
        f1233l = false;
        f1235n = null;
        try {
            ServerSocket serverSocket = this.f1241c;
            if (serverSocket != null) {
                serverSocket.close();
            }
        } catch (Exception unused) {
        }
        Car car = this.f1240a;
        if (car != null) {
            try {
                car.disconnect();
            } catch (Exception unused2) {
            }
        }
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i3, int i4) {
        startForeground(51, new Notification.Builder(this, "vhal_provider").setContentTitle("VHAL Provider (p/ celular)").setContentText("iniciando…").setSmallIcon(android.R.drawable.ic_menu_share).setOngoing(true).build());
        if (f1233l) {
            return 1;
        }
        f1233l = true;
        this.f1242d = true;
        try {
            this.f1240a = Car.createCar(this, null, 0L, new p(this, 5));
        } catch (Exception e3) {
            Log.e("VhalProvider", "car", e3);
        }
        final int i5 = 0;
        new Thread(new Runnable(this) { // from class: w0.gh
            public final /* synthetic */ VhalProviderService b;

            {
                this.b = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                Integer num;
                Float f;
                switch (i5) {
                    case 0:
                        VhalProviderService vhalProviderService = this.b;
                        boolean z2 = VhalProviderService.f1233l;
                        try {
                            ServerSocket serverSocket = new ServerSocket();
                            vhalProviderService.f1241c = serverSocket;
                            serverSocket.setReuseAddress(true);
                            vhalProviderService.f1241c.bind(new InetSocketAddress(47800));
                            vhalProviderService.e();
                            while (vhalProviderService.f1242d) {
                                new Thread(new ab(vhalProviderService, 12, vhalProviderService.f1241c.accept()), "vhal-client").start();
                            }
                        } catch (Exception e4) {
                            androidx.activity.result.b.o(e4, new StringBuilder("serve end: "), "VhalProvider");
                            return;
                        }
                        break;
                    default:
                        VhalProviderService vhalProviderService2 = this.b;
                        while (vhalProviderService2.f1242d) {
                            try {
                                xg xgVar = vhalProviderService2.b;
                                if (xgVar != null) {
                                    wg wgVarB = xgVar.b();
                                    vhalProviderService2.f1246i = wgVarB;
                                    VhalProviderService.f1235n = new q0.c(wgVarB);
                                    long jCurrentTimeMillis = System.currentTimeMillis();
                                    vhalProviderService2.f1247j = (wgVarB == null || (num = wgVarB.b) == null || num.intValue() != 8 || (f = wgVarB.f4457a) == null || f.floatValue() <= 1.0f) ? false : true;
                                    vhalProviderService2.f.b(wgVarB, jCurrentTimeMillis);
                                    vhalProviderService2.f1245h.c(wgVarB, jCurrentTimeMillis);
                                }
                            } catch (Throwable unused) {
                            }
                            try {
                                Thread.sleep(vhalProviderService2.f1247j ? VhalProviderService.f1236o > 0 ? VhalProviderService.f1236o : vhalProviderService2.f1248k : VhalProviderService.f1234m > 0 ? 1500L : 6000L);
                            } catch (InterruptedException unused2) {
                            }
                        }
                        break;
                }
            }
        }, "vhal-server").start();
        final int i6 = 1;
        new Thread(new Runnable(this) { // from class: w0.gh
            public final /* synthetic */ VhalProviderService b;

            {
                this.b = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                Integer num;
                Float f;
                switch (i6) {
                    case 0:
                        VhalProviderService vhalProviderService = this.b;
                        boolean z2 = VhalProviderService.f1233l;
                        try {
                            ServerSocket serverSocket = new ServerSocket();
                            vhalProviderService.f1241c = serverSocket;
                            serverSocket.setReuseAddress(true);
                            vhalProviderService.f1241c.bind(new InetSocketAddress(47800));
                            vhalProviderService.e();
                            while (vhalProviderService.f1242d) {
                                new Thread(new ab(vhalProviderService, 12, vhalProviderService.f1241c.accept()), "vhal-client").start();
                            }
                        } catch (Exception e4) {
                            androidx.activity.result.b.o(e4, new StringBuilder("serve end: "), "VhalProvider");
                            return;
                        }
                        break;
                    default:
                        VhalProviderService vhalProviderService2 = this.b;
                        while (vhalProviderService2.f1242d) {
                            try {
                                xg xgVar = vhalProviderService2.b;
                                if (xgVar != null) {
                                    wg wgVarB = xgVar.b();
                                    vhalProviderService2.f1246i = wgVarB;
                                    VhalProviderService.f1235n = new q0.c(wgVarB);
                                    long jCurrentTimeMillis = System.currentTimeMillis();
                                    vhalProviderService2.f1247j = (wgVarB == null || (num = wgVarB.b) == null || num.intValue() != 8 || (f = wgVarB.f4457a) == null || f.floatValue() <= 1.0f) ? false : true;
                                    vhalProviderService2.f.b(wgVarB, jCurrentTimeMillis);
                                    vhalProviderService2.f1245h.c(wgVarB, jCurrentTimeMillis);
                                }
                            } catch (Throwable unused) {
                            }
                            try {
                                Thread.sleep(vhalProviderService2.f1247j ? VhalProviderService.f1236o > 0 ? VhalProviderService.f1236o : vhalProviderService2.f1248k : VhalProviderService.f1234m > 0 ? 1500L : 6000L);
                            } catch (InterruptedException unused2) {
                            }
                        }
                        break;
                }
            }
        }, "vhal-poll").start();
        return 1;
    }
}
