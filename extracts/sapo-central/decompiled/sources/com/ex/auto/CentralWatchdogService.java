package com.ex.auto;

import a1.i;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothClass;
import android.bluetooth.BluetoothDevice;
import android.car.Car;
import android.car.hardware.property.CarPropertyManager;
import android.car.media.CarAudioManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Icon;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.ParcelUuid;
import android.os.SystemClock;
import android.util.Log;
import android.view.View;
import android.view.WindowManager;
import androidx.activity.result.b;
import androidx.fragment.app.q;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.CentralWatchdogService;
import com.geely.driveregenfloater.DriveRegenFloaterService;
import ecarx.xsf.mediacenter.session.PlaybackState;
import h2.l;
import i2.g;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.NetworkInterface;
import java.net.Socket;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import k1.a;
import o2.d;
import o2.h;
import o2.k;
import o2.s;
import o2.t;
import w0.a2;
import w0.a3;
import w0.a4;
import w0.ae;
import w0.b2;
import w0.b3;
import w0.c3;
import w0.c5;
import w0.d2;
import w0.e2;
import w0.e3;
import w0.e4;
import w0.ee;
import w0.f1;
import w0.f2;
import w0.f3;
import w0.f4;
import w0.f5;
import w0.h3;
import w0.i2;
import w0.j2;
import w0.j5;
import w0.k2;
import w0.k3;
import w0.k5;
import w0.l1;
import w0.l4;
import w0.lh;
import w0.m;
import w0.n;
import w0.n1;
import w0.n2;
import w0.n3;
import w0.o;
import w0.o2;
import w0.od;
import w0.p1;
import w0.p2;
import w0.pg;
import w0.q1;
import w0.q2;
import w0.qe;
import w0.qg;
import w0.r0;
import w0.r5;
import w0.r6;
import w0.re;
import w0.rg;
import w0.s3;
import w0.se;
import w0.t1;
import w0.t6;
import w0.te;
import w0.u;
import w0.u3;
import w0.u6;
import w0.v;
import w0.v1;
import w0.v2;
import w0.w1;
import w0.wd;
import w0.x1;
import w0.x2;
import w0.y1;
import w0.z;
import w0.z1;
import x1.c;
import y1.e;
import y1.f;
import y1.p;
import y1.r;

/* JADX INFO: loaded from: classes.dex */
public final class CentralWatchdogService extends Service {
    public static volatile boolean U2;
    public static volatile CentralWatchdogService V2;
    public static volatile long X2;
    public static volatile long Y2;
    public volatile boolean A;
    public long A0;
    public volatile long A1;
    public volatile Car B;
    public boolean B0;
    public volatile CarPropertyManager C;
    public int D;
    public boolean E;
    public boolean E0;
    public volatile long F;
    public int F0;
    public volatile Car G;
    public volatile CarPropertyManager H;
    public f3 H0;
    public int I;
    public c3 I0;
    public Integer J;
    public int K;
    public volatile boolean K2;
    public int L;
    public volatile long L0;
    public volatile boolean L2;
    public int M;
    public volatile long M0;
    public volatile long P0;
    public volatile long Q1;
    public volatile long Q2;
    public volatile long R1;
    public volatile long T;
    public int U;
    public volatile long U1;
    public volatile boolean V;
    public boolean W0;
    public int X0;
    public volatile boolean Y;
    public int Y0;
    public volatile long Y1;
    public int Z0;
    public volatile boolean Z1;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public volatile Boolean f812a0;

    /* JADX INFO: renamed from: a1, reason: collision with root package name */
    public c3 f813a1;

    /* JADX INFO: renamed from: a2, reason: collision with root package name */
    public volatile boolean f814a2;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public volatile String f815b0;

    /* JADX INFO: renamed from: b2, reason: collision with root package name */
    public volatile boolean f817b2;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public volatile String f819c0;

    /* JADX INFO: renamed from: c1, reason: collision with root package name */
    public String f820c1;

    /* JADX INFO: renamed from: c2, reason: collision with root package name */
    public volatile boolean f821c2;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public volatile String f823d0;

    /* JADX INFO: renamed from: e1, reason: collision with root package name */
    public volatile boolean f828e1;
    public WindowManager f;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    public volatile long f831f1;

    /* JADX INFO: renamed from: f2, reason: collision with root package name */
    public volatile boolean f832f2;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public View f833g;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public long f834g0;
    public c3 g2;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile Car f836h;

    /* JADX INFO: renamed from: h2, reason: collision with root package name */
    public volatile boolean f839h2;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile CarPropertyManager f840i;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public String f841i0;

    /* JADX INFO: renamed from: i2, reason: collision with root package name */
    public c3 f843i2;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public volatile Car f844j;

    /* JADX INFO: renamed from: j2, reason: collision with root package name */
    public volatile String f847j2;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public volatile CarPropertyManager f848k;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public long f849k0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public volatile Car f852l;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public volatile boolean f853l0;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    public volatile boolean f854l1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public volatile CarPropertyManager f856m;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public int f857m0;

    /* JADX INFO: renamed from: m1, reason: collision with root package name */
    public volatile long f858m1;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public volatile boolean f861n0;

    /* JADX INFO: renamed from: n1, reason: collision with root package name */
    public c3 f862n1;

    /* JADX INFO: renamed from: n2, reason: collision with root package name */
    public volatile boolean f863n2;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public volatile Integer f864o;

    /* JADX INFO: renamed from: o1, reason: collision with root package name */
    public volatile long f866o1;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public f1 f869p0;

    /* JADX INFO: renamed from: p2, reason: collision with root package name */
    public volatile long f871p2;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public volatile Car f872q;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public e3 f873q0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public volatile CarPropertyManager f875r;

    /* JADX INFO: renamed from: r2, reason: collision with root package name */
    public Object f878r2;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f879s;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public int f880s0;

    /* JADX INFO: renamed from: s1, reason: collision with root package name */
    public volatile boolean f881s1;
    public int s2;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public volatile Car f882t;
    public int t2;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public volatile CarPropertyManager f884u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f887v;

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    public volatile long f889v1;
    public x1 v2;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Boolean f890w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Boolean f892x;

    /* JADX INFO: renamed from: x1, reason: collision with root package name */
    public volatile CountDownLatch f893x1;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Boolean f894y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Boolean f896z;

    /* JADX INFO: renamed from: z1, reason: collision with root package name */
    public volatile boolean f898z1;
    public v2 z2;
    public static final int[] S2 = {0, 1};
    public static final int[] T2 = {0, 1, 16777216};
    public static final AtomicReference W2 = new AtomicReference("idle");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Handler f811a = new Handler(Looper.getMainLooper());
    public final ThreadPoolExecutor b = t1.C("tbox", new l1(2), 2);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicInteger f818c = new AtomicInteger(0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ScheduledThreadPoolExecutor f822d = t1.a("drive-regen", new l1(3));

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final c f826e = new c(new d2(this, 11));

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final HashMap f860n = new HashMap();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final HashMap f868p = new HashMap();
    public final long N = 4000;
    public final long O = 30000;
    public final h3 P = new h3(0);
    public final c3 Q = new c3(this, 9);
    public volatile long R = SystemClock.elapsedRealtime();
    public final long S = 60000;
    public final long W = 3000;
    public final p2 X = new p2(this, 2);
    public final c3 Z = new c3(this, 10);

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final AtomicInteger f827e0 = new AtomicInteger(0);

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final AtomicBoolean f830f0 = new AtomicBoolean(false);

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public final ThreadPoolExecutor f837h0 = t1.C("rotas-root", new l1(4), 2);

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public long f845j0 = 5000;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public volatile String f865o0 = "boot";

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public final a3 f876r0 = new a3(this, 10);
    public final a3 t0 = new a3(this, 5);

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public final a3 f885u0 = new a3(this, 3);

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public final String f888v0 = "hxcommon";

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public final long f891w0 = 2000;
    public final String x0 = "com.flyme.auto.launcher";
    public final String y0 = "AppListActivity";

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public long f897z0 = -1;
    public final h C0 = new h("\\d+");
    public final a3 D0 = new a3(this, 9);
    public int G0 = 166;
    public final c3 J0 = new c3(this, 7);
    public final d2 K0 = new d2(this, 12);
    public volatile l4 N0 = l4.f3830c;
    public final d2 O0 = new d2(this, 14);
    public final long Q0 = 12000;
    public final c3 R0 = new c3(this, 8);
    public final int S0 = 2;
    public final long T0 = 3000;
    public final int U0 = 14;
    public final int V0 = 60;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    public final a3 f816b1 = new a3(this, 0);

    /* JADX INFO: renamed from: d1, reason: collision with root package name */
    public final AtomicBoolean f824d1 = new AtomicBoolean(false);

    /* JADX INFO: renamed from: g1, reason: collision with root package name */
    public final long f835g1 = 60000;

    /* JADX INFO: renamed from: h1, reason: collision with root package name */
    public final long f838h1 = 90000;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    public final long f842i1 = 15000;

    /* JADX INFO: renamed from: j1, reason: collision with root package name */
    public final long f846j1 = 5000;

    /* JADX INFO: renamed from: k1, reason: collision with root package name */
    public final long f850k1 = 75000;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    public final long f870p1 = SystemClock.elapsedRealtime();
    public final long q1 = 150000;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    public final LinkedHashMap f877r1 = new LinkedHashMap();

    /* JADX INFO: renamed from: t1, reason: collision with root package name */
    public final int f883t1 = 6;

    /* JADX INFO: renamed from: u1, reason: collision with root package name */
    public final long f886u1 = 10000;
    public final Object w1 = new Object();

    /* JADX INFO: renamed from: y1, reason: collision with root package name */
    public final String f895y1 = "for p in $(ip rule show 2>/dev/null | grep -wE 'ap0|wlan1' | awk -F: '{print $1}'); do ip rule del prio $p 2>/dev/null; done; ip link show wlan1 >/dev/null 2>&1 || { MAC=$(cat /sys/class/net/ap0/address); ip link add wlan1 type veth peer name wlan1_p; ip link set wlan1 address $MAC; ip addr add 192.168.20.1/32 dev wlan1; ip link set wlan1 up; }; ip link show wlan1 >/dev/null 2>&1 && echo sim || echo nao";
    public volatile long B1 = SystemClock.elapsedRealtime();
    public final long C1 = 300000;
    public final long D1 = 60000;
    public final long E1 = 5000;
    public final c3 F1 = new c3(this, 0);
    public final HashMap G1 = new HashMap();
    public final long H1 = 75000;
    public final long I1 = 5000;
    public final long J1 = 3000;
    public final int K1 = 4;
    public final long L1 = 60000;
    public final e M1 = new e();
    public final String N1 = "00000000-deca-fade-deca-deafdecacafe";
    public final int O1 = 8000;
    public final int P1 = 12000;
    public final long S1 = 300000;
    public final long T1 = 12000;
    public final long V1 = 20000;
    public final AtomicBoolean W1 = new AtomicBoolean(false);
    public final AtomicInteger X1 = new AtomicInteger(0);

    /* JADX INFO: renamed from: d2, reason: collision with root package name */
    public final AtomicInteger f825d2 = new AtomicInteger();

    /* JADX INFO: renamed from: e2, reason: collision with root package name */
    public long f829e2 = -10000;

    /* JADX INFO: renamed from: k2, reason: collision with root package name */
    public final String f851k2 = "bt_religar_apos_carplay";

    /* JADX INFO: renamed from: l2, reason: collision with root package name */
    public final long f855l2 = 3000;

    /* JADX INFO: renamed from: m2, reason: collision with root package name */
    public final c3 f859m2 = new c3(this, 1);

    /* JADX INFO: renamed from: o2, reason: collision with root package name */
    public volatile int f867o2 = -1;

    /* JADX INFO: renamed from: q2, reason: collision with root package name */
    public final long f874q2 = 30000;
    public final b3 u2 = new b3(this, 4);
    public final k3 w2 = new k3();
    public final a3 x2 = new a3(this, 8);
    public final b3 y2 = new b3(this, 3);
    public final b3 A2 = new b3(this, 2);
    public final Set B2 = Collections.synchronizedSet(new LinkedHashSet());
    public final b3 C2 = new b3(this, 1);
    public final p2 D2 = new p2(this, 23);
    public final a3 E2 = new a3(this, 4);
    public final b3 F2 = new b3(this, 0);
    public final AtomicBoolean G2 = new AtomicBoolean(false);
    public final int H2 = 5;
    public final long I2 = 8000;
    public final long J2 = 12000;
    public final a3 M2 = new a3(this, 1);
    public final int N2 = 2;
    public final long O2 = 600000;
    public final a3 P2 = new a3(this, 6);
    public final a3 R2 = new a3(this, 2);

    public static final void C(CentralWatchdogService centralWatchdogService, int i3, long j3, l lVar) {
        try {
            centralWatchdogService.f822d.schedule(new v(centralWatchdogService, lVar, i3, 3), j3, TimeUnit.MILLISECONDS);
        } catch (RejectedExecutionException unused) {
        }
    }

    public static final String R(String str, String str2) {
        String str3;
        String string;
        String strConcat = str2.concat("=(.*)");
        g.e(strConcat, "pattern");
        Pattern patternCompile = Pattern.compile(strConcat);
        g.d(patternCompile, "compile(...)");
        Matcher matcher = patternCompile.matcher(str);
        g.d(matcher, "matcher(...)");
        o2.e eVarB = a.b(matcher, 0, str);
        return (eVarB == null || (str3 = (String) ((d) eVarB.a()).get(1)) == null || (string = k.E0(str3).toString()) == null) ? "" : string;
    }

    public static void V0(CentralWatchdogService centralWatchdogService) {
        if (U2) {
            if (centralWatchdogService.r()) {
                centralWatchdogService.O0();
                return;
            }
            ae aeVar = ae.f3361a;
            ae.b("CentralWatchdog", "AA trigger: não armo — Android Auto sem fio não habilitado (" + centralWatchdogService.P() + ')', false);
        }
    }

    public static HttpURLConnection W0(String str) throws IOException {
        String str2;
        if (k.f0(str, '?')) {
            str2 = str + "&nocache=" + System.currentTimeMillis();
        } else {
            str2 = str + "?nocache=" + System.currentTimeMillis();
        }
        URLConnection uRLConnectionOpenConnection = new URL(str2).openConnection();
        g.c(uRLConnectionOpenConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
        HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
        httpURLConnection.setConnectTimeout(10000);
        httpURLConnection.setReadTimeout(120000);
        httpURLConnection.setRequestMethod("GET");
        httpURLConnection.setRequestProperty("Cache-Control", "no-cache, no-store");
        httpURLConnection.setRequestProperty("Pragma", "no-cache");
        return httpURLConnection;
    }

    public static String X0(int i3, String str) {
        try {
            String strX = m.x(str, i3, null, new n(0));
            return k.m0(strX) ? "sem saída" : strX;
        } catch (Exception e3) {
            return "Falha no ADB local: " + e3.getMessage();
        }
    }

    public static String Y0(String str) {
        return b.i(str, "'", "'\\''", new StringBuilder("'"), '\'');
    }

    public static String Z0(File file) throws NoSuchAlgorithmException, IOException {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            byte[] bArr = new byte[8192];
            while (true) {
                int i3 = fileInputStream.read(bArr);
                if (i3 < 0) {
                    fileInputStream.close();
                    byte[] bArrDigest = messageDigest.digest();
                    g.d(bArrDigest, "digest(...)");
                    return f.b0(bArrDigest, new o(22));
                }
                messageDigest.update(bArr, 0, i3);
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                a1.b.p(fileInputStream, th);
                throw th2;
            }
        }
    }

    public static String a1() {
        return o2.m.V("\n            for _d in " + Y0("/data/local/tmp") + ' ' + Y0("/data/local/tmp/apks") + ' ' + Y0("/data/local/tmp/sons") + ' ' + Y0("/data/local/tmp/fixes") + "; do\n              mkdir -p \"$_d\" 2>/dev/null || true\n              chmod 755 \"$_d\" 2>/dev/null || true\n            done\n        ");
    }

    public static boolean b() {
        return k.e0(c(6000, "dumpsys activity activities 2>/dev/null | grep -i AutoMainActivity"), "AutoMainActivity", true);
    }

    public static String c(int i3, String str) {
        try {
            return new kotlinx.coroutines.scheduling.h(5555).b(i3, str);
        } catch (Exception e3) {
            Log.w("CentralWatchdog", "AA trigger: aaShell falhou (\"" + k.C0(40, str) + "\"): " + e3.getMessage());
            return "";
        }
    }

    public static boolean d1() {
        try {
            return g.a(k.E0(c(10000, "ip link show wlan1 >/dev/null 2>&1 && echo sim || echo nao")).toString(), "sim");
        } catch (Throwable unused) {
            return false;
        }
    }

    public static final void e(CentralWatchdogService centralWatchdogService) {
        if (centralWatchdogService.f848k != null) {
            return;
        }
        try {
            centralWatchdogService.f844j = Car.createCar(centralWatchdogService, null, 0L, new b2(centralWatchdogService, 1));
        } catch (Exception e3) {
            b.o(e3, new StringBuilder("initStatusTempCar: "), "CentralWatchdog");
        }
    }

    public static final void f(CentralWatchdogService centralWatchdogService, boolean z2) {
        centralWatchdogService.f815b0 = null;
        centralWatchdogService.f841i0 = null;
        centralWatchdogService.f845j0 = 5000L;
        centralWatchdogService.f849k0 = 0L;
        centralWatchdogService.f857m0 = 0;
        centralWatchdogService.f827e0.incrementAndGet();
        centralWatchdogService.f823d0 = null;
        centralWatchdogService.f819c0 = null;
        if (centralWatchdogService.W().getBoolean("auto_route_on_aa_connect", false)) {
            centralWatchdogService.f819c0 = null;
            centralWatchdogService.f837h0.execute(new e2(centralWatchdogService, centralWatchdogService.f827e0.get(), 6));
        }
        if (centralWatchdogService.W().getBoolean("auto_proxy_enabled", false)) {
            new Thread(new k2(centralWatchdogService, z2, 1)).start();
        }
    }

    public static final boolean g(CentralWatchdogService centralWatchdogService, String str) {
        try {
            Socket socket = new Socket();
            try {
                socket.connect(new InetSocketAddress(str, 8080), 1500);
                socket.setSoTimeout(2000);
                OutputStream outputStream = socket.getOutputStream();
                Charset charset = o2.a.f2622a;
                byte[] bytes = "GET http://connectivitycheck.gstatic.com/generate_204 HTTP/1.1\r\nHost: connectivitycheck.gstatic.com\r\nConnection: close\r\n\r\n".getBytes(charset);
                g.d(bytes, "getBytes(...)");
                outputStream.write(bytes);
                outputStream.flush();
                InputStream inputStream = socket.getInputStream();
                g.d(inputStream, "getInputStream(...)");
                String line = new BufferedReader(new InputStreamReader(inputStream, charset), 8192).readLine();
                if (line == null) {
                    socket.close();
                    return false;
                }
                boolean zE0 = k.e0(line, "204", false);
                socket.close();
                return zE0;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    a1.b.p(socket, th);
                    throw th2;
                }
            }
        } catch (Exception unused) {
            return false;
        }
        return false;
    }

    public static final void h(CentralWatchdogService centralWatchdogService, String str) {
        if (t1.K(str) && centralWatchdogService.f830f0.compareAndSet(false, true)) {
            int i3 = centralWatchdogService.f827e0.get();
            centralWatchdogService.f834g0 = SystemClock.elapsedRealtime() + 12000;
            centralWatchdogService.f837h0.execute(new i2(str, centralWatchdogService, i3));
        }
    }

    public static final void i(CentralWatchdogService centralWatchdogService, String str) {
        CarPropertyManager carPropertyManager = centralWatchdogService.f884u;
        if (carPropertyManager == null) {
            return;
        }
        if (g.a(centralWatchdogService.f896z, Boolean.TRUE)) {
            new Thread(new i(carPropertyManager, 7, str)).start();
            return;
        }
        Log.i("CentralWatchdog", "recircGuard(" + str + "): recirc não estava ligada (ou desconhecida) — nada a fazer");
    }

    public static final void j(CentralWatchdogService centralWatchdogService, x2 x2Var) {
        X0(8000, a1());
        File file = new File(centralWatchdogService.getCacheDir(), "CentralEXAuto-update-staging.apk");
        Exception e3 = null;
        for (int i3 = 1; i3 < 4; i3++) {
            try {
                file.delete();
                HttpURLConnection httpURLConnectionW0 = W0(x2Var.f4489c);
                long contentLengthLong = httpURLConnectionW0.getContentLengthLong();
                try {
                    if (httpURLConnectionW0.getResponseCode() != 200) {
                        throw new IllegalStateException("HTTP " + httpURLConnectionW0.getResponseCode());
                    }
                    InputStream inputStream = httpURLConnectionW0.getInputStream();
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(file, false);
                        try {
                            g.b(inputStream);
                            a1.b.r(inputStream, fileOutputStream);
                            fileOutputStream.close();
                            inputStream.close();
                            try {
                                httpURLConnectionW0.disconnect();
                            } catch (Exception unused) {
                            }
                            long length = file.length();
                            if (length <= 0) {
                                throw new IllegalStateException("download vazio");
                            }
                            if (contentLengthLong > 0 && length != contentLengthLong) {
                                throw new IllegalStateException("download truncado (" + length + '/' + contentLengthLong + ')');
                            }
                            Z0(file);
                            centralWatchdogService.b1(file, x2Var);
                            String absolutePath = file.getAbsolutePath();
                            g.d(absolutePath, "getAbsolutePath(...)");
                            String strY0 = Y0(absolutePath);
                            String strY1 = Y0("/data/local/tmp/CentralEXAuto-update.apk");
                            StringBuilder sb = new StringBuilder("\n            setenforce 0 2>/dev/null || true\n            ");
                            sb.append(a1());
                            sb.append("\n            chmod 644 ");
                            sb.append(strY0);
                            sb.append(" 2>/dev/null || true\n            rm -f ");
                            sb.append(strY1);
                            sb.append(" 2>/dev/null || true\n            cp -f ");
                            sb.append(strY0);
                            sb.append(' ');
                            sb.append(strY1);
                            b.q(sb, " 2>&1 || exit 47\n            sync 2>/dev/null || true\n            chown root:root ", strY1, " 2>&1 || true\n            chmod 644 ", strY1);
                            b.q(sb, " 2>&1 || true\n            restorecon -v ", strY1, " 2>/dev/null || true\n            ls -l ", strY1);
                            sb.append(" 2>&1\n        ");
                            String strX0 = X0(120000, o2.m.V(sb.toString()));
                            if (k.e0(strX0, "exit 47", false) || k.e0(strX0, "Falha no ADB", false)) {
                                file.delete();
                                throw new IllegalStateException("Cópia para tmp falhou: ".concat(k.D0(200, strX0)));
                            }
                            File file2 = new File("/data/local/tmp/CentralEXAuto-update.apk");
                            if (file2.isFile() && file2.length() == file.length()) {
                                return;
                            }
                            StringBuilder sb2 = new StringBuilder("Tamanho staging=");
                            sb2.append(file.length());
                            sb2.append(" dest=");
                            sb2.append(file2.isFile() ? file2.length() : -1L);
                            throw new IllegalStateException(sb2.toString());
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                a1.b.p(fileOutputStream, th);
                                throw th2;
                            }
                        }
                    } catch (Throwable th3) {
                        try {
                            throw th3;
                        } catch (Throwable th4) {
                            a1.b.p(inputStream, th3);
                            throw th4;
                        }
                    }
                } catch (Throwable th5) {
                    try {
                        httpURLConnectionW0.disconnect();
                    } catch (Exception unused2) {
                    }
                    throw th5;
                }
            } catch (Exception e4) {
                e3 = e4;
                file.delete();
                StringBuilder sb3 = new StringBuilder("auto-update download tentativa ");
                sb3.append(i3);
                sb3.append("/3: ");
                b.o(e3, sb3, "CentralWatchdog");
                if (i3 < 3) {
                    try {
                        Thread.sleep(((long) i3) * 2000);
                    } catch (InterruptedException unused3) {
                    }
                }
            }
        }
        if (e3 == null) {
            throw new IllegalStateException("download falhou após 3 tentativas");
        }
    }

    public static final x2 k(CentralWatchdogService centralWatchdogService) {
        try {
            byte[] bArr = u6.f4334a;
            SharedPreferences sharedPreferencesW = centralWatchdogService.W();
            String packageName = centralWatchdogService.getPackageName();
            g.d(packageName, "getPackageName(...)");
            t6 t6VarD = u6.d(centralWatchdogService, sharedPreferencesW, packageName, centralWatchdogService.getPackageManager().getPackageInfo(centralWatchdogService.getPackageName(), 0).getLongVersionCode());
            qe qeVar = qe.f4124a;
            qe.f(centralWatchdogService, t6VarD.f4268i);
            try {
                qeVar.g(centralWatchdogService, centralWatchdogService.W(), t6VarD.f4267h, centralWatchdogService.getPackageManager().getPackageInfo(centralWatchdogService.getPackageName(), 0).getLongVersionCode());
            } catch (Exception e3) {
                b.o(e3, new StringBuilder("sync de playbook: "), "CentralWatchdog");
            }
            return new x2(t6VarD.f4262a, t6VarD.b, t6VarD.f4263c);
        } catch (r6 e4) {
            if (!g.a(e4.b, "device_banned")) {
                throw e4;
            }
            try {
                File file = new File(centralWatchdogService.getFilesDir(), "playbook");
                new File(file, "current.bin").delete();
                new File(file, "previous.bin").delete();
                centralWatchdogService.getSharedPreferences("tela_preta_prefs", 0).edit().remove("playbook_valido_ate").remove("playbook_maior_versao_vista").apply();
                ae aeVar = ae.f3361a;
                ae.b("PlaybookStore", "blob revogado e apagado do disco", false);
            } catch (Throwable th) {
                ae aeVar2 = ae.f3361a;
                ae.b("PlaybookStore", "falha ao revogar o blob: " + th.getMessage(), false);
            }
            centralWatchdogService.W().edit().putBoolean("device_banned", true).apply();
            ae aeVar3 = ae.f3361a;
            ae.b("CentralWatchdog", "aparelho bloqueado pelo servidor — blob apagado", false);
            throw e4;
        }
    }

    public static boolean k0(CarPropertyManager carPropertyManager, int i3, boolean z2, int i4, boolean z3) {
        String str = z3 ? "oposta " : "";
        Integer numC = p1.c(carPropertyManager, 322964416, i3);
        if (numC == null) {
            Log.w("CentralWatchdog", String.format(b.h("windowDriver leitura ", str, "0x%x falhou (timeout/erro)"), Arrays.copyOf(new Object[]{Integer.valueOf(i3)}, 1)));
            return false;
        }
        int iIntValue = numC.intValue();
        if (z2) {
            if (iIntValue > 7) {
                Log.i("CentralWatchdog", String.format(b.h("janela ", str, "0x%x não está fechada (pos=%d) — porta 0x%x abriu, não mexe"), Arrays.copyOf(new Object[]{Integer.valueOf(i3), numC, Integer.valueOf(i4)}, 3)));
                return false;
            }
            if (p1.l(carPropertyManager, 322964416, i3, 10)) {
                Log.i("CentralWatchdog", String.format(b.h("janela ", str, "0x%x → POS %d (porta 0x%x aberta)"), Arrays.copyOf(new Object[]{Integer.valueOf(i3), 10, Integer.valueOf(i4)}, 3)));
                return true;
            }
            Log.w("CentralWatchdog", String.format(b.h("windowDriver set ", str, "0x%x falhou"), Arrays.copyOf(new Object[]{Integer.valueOf(i3)}, 1)));
            return false;
        }
        if (Math.abs(iIntValue - 10) > 3) {
            Log.i("CentralWatchdog", String.format(b.h("janela ", str, "0x%x não está mais perto de POS %d (pos=%d) — porta 0x%x fechou, não mexe"), Arrays.copyOf(new Object[]{Integer.valueOf(i3), 10, numC, Integer.valueOf(i4)}, 4)));
            return false;
        }
        if (p1.l(carPropertyManager, 322964416, i3, 0)) {
            Log.i("CentralWatchdog", String.format(b.h("janela ", str, "0x%x → POS 0 (porta 0x%x fechada)"), Arrays.copyOf(new Object[]{Integer.valueOf(i3), Integer.valueOf(i4)}, 2)));
            return true;
        }
        Log.w("CentralWatchdog", String.format(b.h("windowDriver set ", str, "0x%x falhou"), Arrays.copyOf(new Object[]{Integer.valueOf(i3)}, 1)));
        return false;
    }

    public static final String l(CentralWatchdogService centralWatchdogService) {
        File file = new File("/data/local/tmp/CentralEXAuto-update.apk");
        if (!file.isFile()) {
            ae aeVar = ae.f3361a;
            ae.b("AutoUpdate", "install abortado: apk ausente em /data/local/tmp/CentralEXAuto-update.apk", false);
            return "apk ausente";
        }
        if (!k.m0("")) {
            try {
                String strZ0 = Z0(file);
                if (!strZ0.equalsIgnoreCase("")) {
                    ae aeVar2 = ae.f3361a;
                    ae.b("AutoUpdate", "install abortado por sha: got=" + k.C0(12, strZ0) + " esp=" + k.C0(12, ""), false);
                    return "sha_mismatch got=" + k.C0(12, strZ0) + " esp=" + k.C0(12, "") + " — install abortado";
                }
            } catch (Exception e3) {
                return "sha erro: " + e3.getMessage();
            }
        }
        String strY0 = Y0("/data/local/tmp/CentralEXAuto-update.apk");
        String str = "pm install -r -g -d " + strY0 + " > " + Y0("/data/local/tmp/last_update_install.log") + " 2>&1; sleep 3; monkey -p com.ex.auto -c android.intent.category.LAUNCHER 1 >/dev/null 2>&1";
        StringBuilder sb = new StringBuilder("\n            setenforce 0 2>/dev/null || true\n            ");
        sb.append(a1());
        sb.append("\n            ls -l ");
        sb.append(strY0);
        sb.append(" 2>&1 || { echo \"ETAPA=apk_ausente\"; exit 50; }\n            echo \"ETAPA=apk_ok\"\n            chown root:root ");
        sb.append(strY0);
        b.q(sb, " 2>/dev/null || true\n            chmod 644 ", strY0, " 2>/dev/null || true\n            restorecon -v ", strY0);
        sb.append(" 2>/dev/null || true\n            echo \"ETAPA=rotulado\"\n            setsid sh -c \"");
        sb.append(str);
        sb.append("\" </dev/null >/dev/null 2>&1 &\n            echo \"ETAPA=destacado_pid=$!\"\n            echo \"install_detached_launched\"\n        ");
        String strV = o2.m.V(sb.toString());
        ae aeVar3 = ae.f3361a;
        ae.b("AutoUpdate", "script (" + strV.length() + " ch): " + t.c0(strV, "\n", " ⏎ "), false);
        String strX0 = X0(30000, strV);
        ae.b("AutoUpdate", "shell respondeu (" + strX0.length() + " ch): " + k.D0(400, strX0), false);
        return strX0;
    }

    public static String m(int i3, String str) {
        try {
            return m.x(str + '\n', i3, null, new n(1));
        } catch (Throwable th) {
            Log.w("CentralWatchdog", "adb (desempenho): ".concat(th.getClass().getSimpleName()));
            return "";
        }
    }

    public static boolean n0() {
        try {
            String strC = c(6000, "dumpsys activity activities 2>/dev/null | grep -m1 mResumedActivity");
            return k.e0(strC, "AutoMainActivity", true) || k.e0(strC, "com.njda.aauto", true) || k.e0(strC, "com.njda.carplay", true);
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean o0() {
        if (v()) {
            try {
                if (NetworkInterface.getByName("wlan1") != null) {
                    Integer numW = s.W(k.E0(c(6000, "netstat -tln 2>/dev/null | grep -cE '3051[56]'")).toString());
                    if ((numW != null ? numW.intValue() : 0) > 0) {
                        return true;
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    public static String p0(String str) {
        try {
            Object objInvoke = Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, str);
            String str2 = objInvoke instanceof String ? (String) objInvoke : null;
            return str2 == null ? "" : str2;
        } catch (Throwable unused) {
            return "";
        }
    }

    public static final boolean q0(CentralWatchdogService centralWatchdogService, String str, int i3) {
        return U2 && centralWatchdogService.f827e0.get() == i3 && g.a(centralWatchdogService.f815b0, str) && centralWatchdogService.W().getBoolean("auto_route_on_aa_connect", false);
    }

    public static boolean v() {
        try {
            NetworkInterface byName = NetworkInterface.getByName("ap0");
            return byName != null && byName.isUp() && byName.getInetAddresses().hasMoreElements();
        } catch (Throwable unused) {
            return false;
        }
    }

    /* JADX INFO: Removed unreachable split cross block B:49:0x0086 */
    public final void A() {
        int i3 = W().getInt("avas_sound_type_saved", -1);
        if (i3 <= 0) {
            return;
        }
        Car car = null;
        try {
            try {
                Car carCreateCar = Car.createCar(this);
                try {
                    Object carManager = carCreateCar.getCarManager("property");
                    CarPropertyManager carPropertyManager = carManager instanceof CarPropertyManager ? (CarPropertyManager) carManager : null;
                    if (carPropertyManager == null) {
                        try {
                            carCreateCar.disconnect();
                            return;
                        } catch (Exception unused) {
                            return;
                        }
                    }
                    for (int i4 : u.f4289c) {
                        try {
                            AtomicInteger atomicInteger = p1.f4042a;
                            int i5 = u.b;
                            Integer numC = p1.c(carPropertyManager, i5, i4);
                            if (numC != null) {
                                int iIntValue = numC.intValue();
                                if (iIntValue == i3) {
                                    Log.i("CentralWatchdog", "AVAS tipo de som já em " + i3 + ", nenhuma ação necessária");
                                    break;
                                }
                                carPropertyManager.setIntProperty(i5, i4, i3);
                                Log.i("CentralWatchdog", "AVAS tipo de som restaurado para " + i3 + " após boot (era " + iIntValue + ')');
                                break;
                            }
                        } catch (Throwable th) {
                            Log.w("CentralWatchdog", "applyAvasSoundTypeIfNeeded area=" + i4 + ": " + th.getMessage());
                        }
                    }
                    carCreateCar.disconnect();
                } catch (Throwable th2) {
                    th = th2;
                    car = carCreateCar;
                    try {
                        Log.w("CentralWatchdog", "applyAvasSoundTypeIfNeeded falhou: " + th.getMessage());
                        if (car != null) {
                            car.disconnect();
                        }
                    } catch (Throwable th3) {
                        if (car != null) {
                            try {
                                car.disconnect();
                            } catch (Exception unused2) {
                            }
                        }
                        throw th3;
                    }
                }
            } catch (Exception unused3) {
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    public final void A0() {
        this.G = null;
        this.H = null;
        int i3 = this.I;
        if (i3 >= 5) {
            Log.w("CentralWatchdog", "rearCamTurnSignal: desisti após 5 tentativas");
        } else {
            this.I = i3 + 1;
            this.f811a.postDelayed(new x1(this, 6), 30000L);
        }
    }

    public final boolean B() {
        if (F("patch do CarplayMonitor")) {
            j0("patch suprimido pela trava");
            return true;
        }
        String string = W().getString("connadaptor_modo", "ambos");
        String str = string != null ? string : "ambos";
        if (u.j(str)) {
            if (K()) {
                return E0("passada única (bind + reinício)", true);
            }
            ae aeVar = ae.f3361a;
            ae.b("CentralWatchdog", "script de boot: sem CarPlay — rodando SEM a seção do monitor (" + P() + ')', false);
            return E0("sem CarPlay (sem monitor)", false);
        }
        ae aeVar2 = ae.f3361a;
        ae.b("CentralWatchdog", "script de boot: modo " + str + " — rodando SEM a seção do CarplayMonitor", false);
        return E0("modo " + str + " (sem monitor)", false);
    }

    public final void B0() {
        this.f882t = null;
        this.f884u = null;
        int i3 = this.f887v;
        if (i3 >= 5) {
            Log.w("CentralWatchdog", "recircGuard: desisti após 5 tentativas");
        } else {
            this.f887v = i3 + 1;
            this.f811a.postDelayed(new x1(this, 19), 30000L);
        }
    }

    public final void C0() {
        this.f872q = null;
        this.f875r = null;
        int i3 = this.f879s;
        if (i3 >= 5) {
            Log.w("CentralWatchdog", "swcModes: desisti após 5 tentativas");
        } else {
            this.f879s = i3 + 1;
            this.f811a.postDelayed(new x1(this, 28), 30000L);
        }
    }

    public final void D(final String str) {
        SharedPreferences sharedPreferences;
        int i3 = 0;
        if (this.f840i == null) {
            ae aeVar = ae.f3361a;
            b.p("condução/regeneração (", str, "): sem CarPropertyManager — nada escrito", "CentralWatchdog", false);
            return;
        }
        try {
            sharedPreferences = createDeviceProtectedStorageContext().getSharedPreferences("drive_regen_prefs", 0);
        } catch (Exception unused) {
            sharedPreferences = getSharedPreferences("drive_regen_prefs", 0);
        }
        final boolean zContains = sharedPreferences.contains("saved_drive");
        final boolean zContains2 = sharedPreferences.contains("saved_regen");
        if (!zContains && !zContains2) {
            ae aeVar2 = ae.f3361a;
            b.p("condução/regeneração (", str, "): nada salvo — não imponho padrão por cima do que está no carro", "CentralWatchdog", false);
            return;
        }
        final int i4 = sharedPreferences.getInt("saved_drive", 570491138);
        final int i5 = sharedPreferences.getInt("saved_regen", 537003266);
        int iIncrementAndGet = this.f818c.incrementAndGet();
        Log.i("CentralWatchdog", "applyDriveRegenSavedModes: drive=" + i4 + " regen=" + i5 + " reason=" + str + " gen=" + iIncrementAndGet);
        ae aeVar3 = ae.f3361a;
        StringBuilder sb = new StringBuilder("condução/regeneração (");
        sb.append(str);
        sb.append("): aplicando drive=");
        sb.append(i4);
        sb.append(" regen=");
        sb.append(i5);
        ae.b("CentralWatchdog", sb.toString(), false);
        final int i6 = 0;
        final int i7 = iIncrementAndGet;
        C(this, i7, 0L, new l() { // from class: w0.t2
            @Override // h2.l
            public final Object c(Object obj) {
                int i8 = i6;
                boolean z2 = false;
                int i9 = i7;
                String str2 = str;
                int i10 = i4;
                boolean z3 = zContains;
                CarPropertyManager carPropertyManager = (CarPropertyManager) obj;
                switch (i8) {
                    case 0:
                        int[] iArr = CentralWatchdogService.S2;
                        i2.g.e(carPropertyManager, "cpm");
                        if (z3) {
                            int[] iArr2 = CentralWatchdogService.T2;
                            for (int i11 = 0; i11 < 3; i11++) {
                                if (p1.l(carPropertyManager, 570491136, iArr2[i11], i10)) {
                                    z2 = true;
                                }
                            }
                        }
                        Log.i("CentralWatchdog", "drive write ok=" + z2 + " reason=" + str2 + " gen=" + i9);
                        break;
                    default:
                        int[] iArr3 = CentralWatchdogService.S2;
                        i2.g.e(carPropertyManager, "cpm");
                        if (z3) {
                            int[] iArr4 = CentralWatchdogService.S2;
                            for (int i12 = 0; i12 < 2; i12++) {
                                if (p1.l(carPropertyManager, 537003264, iArr4[i12], i10)) {
                                    z2 = true;
                                }
                            }
                        }
                        Log.i("CentralWatchdog", "regen write ok=" + z2 + " reason=" + str2 + " gen=" + i9);
                        break;
                }
                return x1.e.f4647c;
            }
        });
        final int i8 = 1;
        C(this, i7, 450L, new l() { // from class: w0.t2
            @Override // h2.l
            public final Object c(Object obj) {
                int i9 = i8;
                boolean z2 = false;
                int i10 = i7;
                String str2 = str;
                int i11 = i5;
                boolean z3 = zContains2;
                CarPropertyManager carPropertyManager = (CarPropertyManager) obj;
                switch (i9) {
                    case 0:
                        int[] iArr = CentralWatchdogService.S2;
                        i2.g.e(carPropertyManager, "cpm");
                        if (z3) {
                            int[] iArr2 = CentralWatchdogService.T2;
                            for (int i12 = 0; i12 < 3; i12++) {
                                if (p1.l(carPropertyManager, 570491136, iArr2[i12], i11)) {
                                    z2 = true;
                                }
                            }
                        }
                        Log.i("CentralWatchdog", "drive write ok=" + z2 + " reason=" + str2 + " gen=" + i10);
                        break;
                    default:
                        int[] iArr3 = CentralWatchdogService.S2;
                        i2.g.e(carPropertyManager, "cpm");
                        if (z3) {
                            int[] iArr4 = CentralWatchdogService.S2;
                            for (int i13 = 0; i13 < 2; i13++) {
                                if (p1.l(carPropertyManager, 537003264, iArr4[i13], i11)) {
                                    z2 = true;
                                }
                            }
                        }
                        Log.i("CentralWatchdog", "regen write ok=" + z2 + " reason=" + str2 + " gen=" + i10);
                        break;
                }
                return x1.e.f4647c;
            }
        });
        final List listU = f.U(new Long[]{1800L, 4200L, 8000L, 16000L});
        if (zContains2) {
            Iterator it = listU.iterator();
            final int i9 = 0;
            while (it.hasNext()) {
                final int i10 = i7;
                final int i11 = 0;
                C(this, i10, ((Number) it.next()).longValue(), new l(this) { // from class: w0.u2
                    public final /* synthetic */ CentralWatchdogService b;

                    {
                        this.b = this;
                    }

                    @Override // h2.l
                    public final Object c(Object obj) {
                        Integer numValueOf;
                        Integer numValueOf2;
                        int i12 = i11;
                        List list = listU;
                        int i13 = i9;
                        int i14 = i10;
                        int i15 = i5;
                        CentralWatchdogService centralWatchdogService = this.b;
                        switch (i12) {
                            case 0:
                                CarPropertyManager carPropertyManager = (CarPropertyManager) obj;
                                int[] iArr = CentralWatchdogService.S2;
                                i2.g.e(carPropertyManager, "cpm");
                                int[] iArr2 = CentralWatchdogService.S2;
                                int i16 = 0;
                                while (true) {
                                    if (i16 < 2) {
                                        Integer numC = p1.c(carPropertyManager, 537003264, iArr2[i16]);
                                        if (numC != null) {
                                            numValueOf = Integer.valueOf(numC.intValue());
                                        } else {
                                            i16++;
                                        }
                                    } else {
                                        numValueOf = null;
                                    }
                                }
                                if (numValueOf != null && numValueOf.intValue() == i15) {
                                    Log.i("CentralWatchdog", "regen reassert: HAL já em " + numValueOf + ", gen=" + i14 + " — não reaplicar");
                                } else {
                                    boolean z2 = i13 == y1.h.U(list);
                                    Log.i("CentralWatchdog", "regen reassert: HAL=" + numValueOf + " want=" + i15 + " gen=" + i14 + " — reaplicando");
                                    for (int i17 = 0; i17 < 2 && !p1.l(carPropertyManager, 537003264, iArr2[i17], i15); i17++) {
                                    }
                                    if (z2 && numValueOf != null && numValueOf.intValue() != i15) {
                                        centralWatchdogService.s("regen", numValueOf, i15);
                                    }
                                }
                                break;
                            default:
                                CarPropertyManager carPropertyManager2 = (CarPropertyManager) obj;
                                int[] iArr3 = CentralWatchdogService.S2;
                                i2.g.e(carPropertyManager2, "cpm");
                                int[] iArr4 = CentralWatchdogService.T2;
                                int i18 = 0;
                                while (true) {
                                    if (i18 < 3) {
                                        Integer numC2 = p1.c(carPropertyManager2, 570491136, iArr4[i18]);
                                        if (numC2 != null) {
                                            numValueOf2 = Integer.valueOf(numC2.intValue());
                                        } else {
                                            i18++;
                                        }
                                    } else {
                                        numValueOf2 = null;
                                    }
                                }
                                if (numValueOf2 != null && numValueOf2.intValue() == i15) {
                                    Log.i("CentralWatchdog", "drive reassert: HAL já em " + numValueOf2 + ", gen=" + i14 + " — não reaplicar");
                                } else {
                                    boolean z3 = i13 == y1.h.U(list);
                                    Log.i("CentralWatchdog", "drive reassert: HAL=" + numValueOf2 + " want=" + i15 + " gen=" + i14 + " — reaplicando");
                                    for (int i19 = 0; i19 < 3 && !p1.l(carPropertyManager2, 570491136, iArr4[i19], i15); i19++) {
                                    }
                                    if (z3 && numValueOf2 != null && numValueOf2.intValue() != i15) {
                                        centralWatchdogService.s("drive", numValueOf2, i15);
                                    }
                                }
                                break;
                        }
                        return x1.e.f4647c;
                    }
                });
                i7 = i10;
                i9++;
            }
        }
        final int i12 = i7;
        final List listU2 = f.U(new Long[]{2000L, 4500L, 9000L, 18000L});
        if (!zContains) {
            return;
        }
        Iterator it2 = listU2.iterator();
        while (true) {
            final int i13 = i3;
            if (!it2.hasNext()) {
                return;
            }
            i3 = i13 + 1;
            final int i14 = 1;
            C(this, i12, ((Number) it2.next()).longValue(), new l(this) { // from class: w0.u2
                public final /* synthetic */ CentralWatchdogService b;

                {
                    this.b = this;
                }

                @Override // h2.l
                public final Object c(Object obj) {
                    Integer numValueOf;
                    Integer numValueOf2;
                    int i15 = i14;
                    List list = listU2;
                    int i16 = i13;
                    int i17 = i12;
                    int i18 = i4;
                    CentralWatchdogService centralWatchdogService = this.b;
                    switch (i15) {
                        case 0:
                            CarPropertyManager carPropertyManager = (CarPropertyManager) obj;
                            int[] iArr = CentralWatchdogService.S2;
                            i2.g.e(carPropertyManager, "cpm");
                            int[] iArr2 = CentralWatchdogService.S2;
                            int i19 = 0;
                            while (true) {
                                if (i19 < 2) {
                                    Integer numC = p1.c(carPropertyManager, 537003264, iArr2[i19]);
                                    if (numC != null) {
                                        numValueOf = Integer.valueOf(numC.intValue());
                                    } else {
                                        i19++;
                                    }
                                } else {
                                    numValueOf = null;
                                }
                            }
                            if (numValueOf != null && numValueOf.intValue() == i18) {
                                Log.i("CentralWatchdog", "regen reassert: HAL já em " + numValueOf + ", gen=" + i17 + " — não reaplicar");
                            } else {
                                boolean z2 = i16 == y1.h.U(list);
                                Log.i("CentralWatchdog", "regen reassert: HAL=" + numValueOf + " want=" + i18 + " gen=" + i17 + " — reaplicando");
                                for (int i110 = 0; i110 < 2 && !p1.l(carPropertyManager, 537003264, iArr2[i110], i18); i110++) {
                                }
                                if (z2 && numValueOf != null && numValueOf.intValue() != i18) {
                                    centralWatchdogService.s("regen", numValueOf, i18);
                                }
                            }
                            break;
                        default:
                            CarPropertyManager carPropertyManager2 = (CarPropertyManager) obj;
                            int[] iArr3 = CentralWatchdogService.S2;
                            i2.g.e(carPropertyManager2, "cpm");
                            int[] iArr4 = CentralWatchdogService.T2;
                            int i111 = 0;
                            while (true) {
                                if (i111 < 3) {
                                    Integer numC2 = p1.c(carPropertyManager2, 570491136, iArr4[i111]);
                                    if (numC2 != null) {
                                        numValueOf2 = Integer.valueOf(numC2.intValue());
                                    } else {
                                        i111++;
                                    }
                                } else {
                                    numValueOf2 = null;
                                }
                            }
                            if (numValueOf2 != null && numValueOf2.intValue() == i18) {
                                Log.i("CentralWatchdog", "drive reassert: HAL já em " + numValueOf2 + ", gen=" + i17 + " — não reaplicar");
                            } else {
                                boolean z3 = i16 == y1.h.U(list);
                                Log.i("CentralWatchdog", "drive reassert: HAL=" + numValueOf2 + " want=" + i18 + " gen=" + i17 + " — reaplicando");
                                for (int i112 = 0; i112 < 3 && !p1.l(carPropertyManager2, 570491136, iArr4[i112], i18); i112++) {
                                }
                                if (z3 && numValueOf2 != null && numValueOf2.intValue() != i18) {
                                    centralWatchdogService.s("drive", numValueOf2, i18);
                                }
                            }
                            break;
                    }
                    return x1.e.f4647c;
                }
            });
        }
    }

    public final void D0() {
        this.f852l = null;
        this.f856m = null;
        int i3 = this.t2;
        if (i3 >= 5) {
            Log.w("CentralWatchdog", "windowDriver: desisti após 5 tentativas");
        } else {
            this.t2 = i3 + 1;
            this.f811a.postDelayed(new x1(this, 18), 30000L);
        }
    }

    public final void E(int i3, String str) {
        Pattern patternCompile = Pattern.compile("^\\d{1,3}(\\.\\d{1,3}){3}$");
        g.d(patternCompile, "compile(...)");
        g.e(str, "input");
        if (patternCompile.matcher(str).matches()) {
            new Thread(new i2(this, str, i3, 2)).start();
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x004c  */
    public final boolean E0(String str, boolean z2) throws InterruptedException {
        Boolean boolValueOf;
        boolean zI;
        int i3 = 0;
        if (z2) {
            AtomicBoolean atomicBoolean = this.f824d1;
            int i4 = 0;
            while (atomicBoolean.get() && i4 < 60000) {
                Thread.sleep(2000L);
                i4 += 2000;
            }
            if (i4 > 0) {
                ae aeVar = ae.f3361a;
                StringBuilder sbL = b.l("bind do monitor (", str, "): esperei ");
                sbL.append(i4 / 1000);
                sbL.append("s a avaliação de saúde terminar");
                ae.b("CentralWatchdog", sbL.toString(), false);
                if (atomicBoolean.get()) {
                    b.p("bind do monitor (", str, "): desisto desta vez — a saúde não terminou em 60s e rodar junto já derrubou a central antes", "CentralWatchdog", false);
                    zI = false;
                } else {
                    zI = I(str);
                }
            } else {
                zI = I(str);
            }
            boolValueOf = Boolean.valueOf(zI);
        } else {
            boolValueOf = null;
        }
        try {
            String strE0 = t1.e0(this, false);
            if (strE0 == null) {
                ae aeVar2 = ae.f3361a;
                ae.b("CentralWatchdog", "script de boot: não consegui gravar o arquivo, pulando o resto", false);
                if (boolValueOf != null) {
                    return boolValueOf.booleanValue();
                }
            } else {
                ae aeVar3 = ae.f3361a;
                ae.b("CentralWatchdog", "script de boot: executando (" + str + ") — log em " + t1.f4253h, false);
                String strC = c(120000, strE0);
                if (!k.m0(strC)) {
                    n2.b bVar = new n2.b(new n2.d(new n2.c(k.n0(strC), new o(27), 2), true, new o(28)));
                    while (bVar.hasNext()) {
                        Log.i("CentralWatchdog", "boot: " + ((String) bVar.next()));
                    }
                    boolean z3 = boolValueOf == null;
                    boolean zA = g.a(boolValueOf, Boolean.TRUE);
                    if (zA) {
                        W().edit().putLong("bootscript_epoch_ok", System.currentTimeMillis() - SystemClock.elapsedRealtime()).apply();
                    }
                    if (z3) {
                        ae aeVar4 = ae.f3361a;
                        ae.b("CentralWatchdog", "script de boot: rodou sem a seção do monitor (não se aplica a esta central/modo) — nada a confirmar", false);
                    } else if (zA) {
                        ae aeVar5 = ae.f3361a;
                        ae.b("CentralWatchdog", "script de boot: patch do monitor CONFIRMADO", false);
                    } else {
                        List listW = n2.g.W(new n2.d(new n2.c(k.n0(strC), new o(29), 2), true, new n2(i3)));
                        String strE1 = !listW.isEmpty() ? y1.g.e0(listW, " | ", null, 62) : t.c0(k.D0(200, k.E0(strC).toString()), "\n", " ");
                        ae aeVar6 = ae.f3361a;
                        ae.b("CentralWatchdog", "script de boot: rodou mas NÃO confirmou o patch — " + strE1, false);
                    }
                    if (zA) {
                        long jCurrentTimeMillis = System.currentTimeMillis() - SystemClock.elapsedRealtime();
                        if (Math.abs(jCurrentTimeMillis - W().getLong("boot_toast_epoch", 0L)) < 60000) {
                            ae aeVar7 = ae.f3361a;
                            ae.b("CentralWatchdog", "aviso 'pode conectar o celular' já dado neste boot — não repete", false);
                        } else {
                            W().edit().putLong("boot_toast_epoch", jCurrentTimeMillis).apply();
                            this.f811a.post(new j2(this, 9));
                        }
                    }
                    return !g.a(boolValueOf, Boolean.FALSE);
                }
                ae.b("CentralWatchdog", "script de boot: saída VAZIA — o shell não executou", false);
                if (boolValueOf != null) {
                    return boolValueOf.booleanValue();
                }
            }
            return false;
        } catch (Throwable th) {
            ae aeVar8 = ae.f3361a;
            ae.b("CentralWatchdog", "script de boot falhou: " + th.getClass().getSimpleName() + ": " + th.getMessage(), false);
            if (boolValueOf != null) {
                return boolValueOf.booleanValue();
            }
            return false;
        }
    }

    public final boolean F(String str) {
        if (!W().getBoolean("auto_apply_paused", false)) {
            return false;
        }
        if (!this.B2.add(str)) {
            return true;
        }
        ae aeVar = ae.f3361a;
        ae.b("CentralWatchdog", "SUPRIMIDO pela trava de aplicação automática: ".concat(str), false);
        return true;
    }

    public final void F0() {
        if (F("script de boot (patch do CarplayMonitor)")) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - SystemClock.elapsedRealtime();
        long j3 = W().getLong("bootscript_epoch_ok", 0L);
        if (j3 != 0 && Math.abs(jCurrentTimeMillis - j3) < 60000) {
            boolean z2 = false;
            try {
                String str = u.f4310y;
                String string = k.E0(c(15000, "grep -F ' " + str + " ' /proc/mounts >/dev/null 2>&1 && md5sum " + str + " | awk '{print $1}' || echo NAO_MONTADO")).toString();
                g.e(string, "md5");
                List list = w1.f4416a;
                boolean z3 = string.equals("77d40d3b4cb19b29796e3ebcb82c4560") || string.equals("1aaec42940be4f8d5a09384c04f5f109");
                if (!z3) {
                    ae aeVar = ae.f3361a;
                    ae.b("CentralWatchdog", "bind do monitor ausente ou desconhecido (" + string + ") — vai refazer", false);
                }
                z2 = z3;
            } catch (Throwable th) {
                ae aeVar2 = ae.f3361a;
                ae.b("CentralWatchdog", "não deu pra conferir o bind do monitor: " + th.getMessage(), false);
            }
            if (z2) {
                Log.i("CentralWatchdog", "script de boot: já confirmado neste boot e bind presente — não repete");
                return;
            }
        }
        o(1);
        this.f811a.postDelayed(new p2(this, 24), 25000L);
    }

    public final void G(String str) {
        boolean zEquals;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j3 = jElapsedRealtime - this.f831f1;
        Politica politica = Politica.f1126a;
        int i3 = 1;
        se seVarD = Politica.d(1, j3);
        if (seVarD != null) {
            zEquals = Integer.valueOf(seVarD.f4236a).equals(3);
        } else {
            zEquals = j3 < this.f835g1;
        }
        if (!zEquals) {
            this.f831f1 = jElapsedRealtime;
            new Thread(new a2(this, str, i3)).start();
            return;
        }
        ae aeVar = ae.f3361a;
        StringBuilder sbL = b.l("saúde (", str, "): pulada — a anterior terminou há ");
        sbL.append(j3 / ((long) 1000));
        sbL.append("s (carência, ");
        sbL.append(seVarD != null ? "política nativa" : "fallback Kotlin");
        sbL.append(')');
        ae.b("CentralWatchdog", sbL.toString(), false);
    }

    public final void G0() {
        this.F = SystemClock.elapsedRealtime();
        if (!F("AEB") && W().getBoolean("aeb_restore_on_boot", false)) {
            this.f811a.postDelayed(new p2(this, 26), 15000L);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v27 */
    public final void H(String str) throws InterruptedException {
        int i3;
        boolean zM = M();
        ?? r3 = zM;
        if (n0()) {
            r3 = (zM ? 1 : 0) | 2;
        }
        Politica politica = Politica.f1126a;
        se seVarD = Politica.d(r3, -1L);
        if (seVarD != null) {
            i3 = seVarD.f4236a;
        } else if ((r3 & 1) == 0) {
            i3 = 1;
        } else {
            i3 = (r3 & 2) != 0 ? 2 : 0;
        }
        if (seVarD == null) {
            ae aeVar = ae.f3361a;
            b.p("saúde (", str, "): decidindo pelo fallback Kotlin — a .so não respondeu", "CentralWatchdog", false);
        }
        if (i3 == 1) {
            ae aeVar2 = ae.f3361a;
            b.p("saúde (", str, "): pulada — ConnAdaptor de fábrica, não há projeção sem fio nossa para consertar (e o force-stop derrubaria o Android Auto com fio)", "CentralWatchdog", false);
            return;
        }
        if (i3 == 2) {
            ae aeVar3 = ae.f3361a;
            b.p("saúde (", str, "): adiada — há projeção em primeiro plano; não vou derrubá-la para consertar a sem fio", "CentralWatchdog", false);
            return;
        }
        if (this.f824d1.compareAndSet(false, true)) {
            try {
                Q(str);
                return;
            } finally {
                this.f831f1 = SystemClock.elapsedRealtime();
                this.f824d1.set(false);
            }
        }
        int i4 = (int) (seVarD != null ? seVarD.b : 90000L);
        int i5 = 0;
        while (this.f824d1.get() && i5 < i4) {
            Thread.sleep(2000L);
            i5 += 2000;
        }
        ae aeVar4 = ae.f3361a;
        StringBuilder sbL = b.l("saúde (", str, "): já havia uma avaliação em curso — esperei ");
        sbL.append(i5 / 1000);
        sbL.append("s em vez de rodar em paralelo");
        ae.b("CentralWatchdog", sbL.toString(), false);
    }

    public final void H0() {
        if (!F("AVAS (mudo)") && W().getBoolean("avas_muted_saved", false)) {
            this.f811a.postDelayed(new p2(this, 4), 12000L);
        }
    }

    public final boolean I(String str) {
        try {
            this.K2 = true;
            String strF0 = t1.f0(this);
            if (strF0 == null) {
                this.K2 = false;
                return false;
            }
            ae aeVar = ae.f3361a;
            ae.b("CentralWatchdog", "bind do monitor: início (" + str + ") — comando de " + strF0.length() + " bytes", false);
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            String strC = c(90000, strF0);
            long jElapsedRealtime2 = SystemClock.elapsedRealtime() - jElapsedRealtime;
            if (k.m0(strC)) {
                ae.b("CentralWatchdog", "bind do monitor: saída VAZIA em " + jElapsedRealtime2 + "ms — o adbd local não executou", false);
                this.K2 = false;
                return false;
            }
            n2.b bVar = new n2.b(new n2.d(new n2.c(k.n0(strC), new o(23), 2), true, new o(24)));
            while (bVar.hasNext()) {
                Log.i("CentralWatchdog", "monitor: " + ((String) bVar.next()));
            }
            boolean z2 = k.e0(strC, "MONITOR_BIND_OK", false) || k.e0(strC, "MONITOR_JA_PATCHADO_EM_EXECUCAO", false) || k.e0(strC, "MONITOR_JA_MONTADO", false);
            String strE0 = y1.g.e0(n2.g.W(new n2.d(new n2.c(k.n0(strC), new o(25), 2), true, new o(26))), " | ", null, 62);
            if (strE0.length() == 0) {
                strE0 = t.c0(k.D0(160, k.E0(strC).toString()), "\n", " ");
            }
            ae aeVar2 = ae.f3361a;
            StringBuilder sb = new StringBuilder();
            sb.append("bind do monitor: ");
            sb.append(z2 ? "OK" : "NÃO confirmado");
            sb.append(" em ");
            sb.append(jElapsedRealtime2);
            sb.append("ms — ");
            sb.append(strE0);
            ae.b("CentralWatchdog", sb.toString(), false);
            if (z2) {
                W().edit().putLong("bootscript_epoch_ok", System.currentTimeMillis() - SystemClock.elapsedRealtime()).apply();
                j0("bind confirmado");
            }
            this.K2 = false;
            return z2;
        } catch (Throwable th) {
            try {
                ae aeVar3 = ae.f3361a;
                ae.b("CentralWatchdog", "bind do monitor: exceção " + th.getClass().getSimpleName() + ": " + th.getMessage(), false);
                return false;
            } finally {
                this.K2 = false;
            }
        }
    }

    public final void I0() {
        if (!F("AVAS (som)") && W().getInt("avas_sound_type_saved", -1) > 0) {
            this.f811a.postDelayed(new x1(this, 1), 12000L);
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0039  */
    public final void J() {
        BluetoothAdapter defaultAdapter;
        boolean z2;
        if (n("BT no arranque", new d2(this, 15))) {
            return;
        }
        try {
            defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        } catch (Throwable unused) {
            defaultAdapter = null;
        }
        String string = W().getString("auto_connect_preferred_bt", null);
        int i3 = 2;
        if (defaultAdapter != null) {
            try {
                if (defaultAdapter.getProfileConnectionState(11) == 2 || defaultAdapter.getProfileConnectionState(16) == 2) {
                    z2 = true;
                } else {
                    z2 = false;
                }
            } catch (Throwable unused2) {
            }
        } else {
            z2 = false;
        }
        boolean z3 = defaultAdapter != null && defaultAdapter.isEnabled();
        boolean z4 = W().getBoolean("ap_sempre_aberto", false);
        boolean zC1 = c1();
        f4 f4Var = f4.f3581c;
        if (!zC1) {
            if (z3) {
                if (string != null && !k.m0(string) && !z2) {
                    f4Var = f4.b;
                }
            } else if (z4) {
                f4Var = f4.f3580a;
            }
        }
        int iOrdinal = f4Var.ordinal();
        if (iOrdinal == 0) {
            ae aeVar = ae.f3361a;
            ae.b("CentralWatchdog", "BT (arranque): carro subiu sem Bluetooth e o AP fica sempre aberto — ligando", true);
            V(1, "AP sempre aberto");
            this.f811a.postDelayed(new p2(this, 22), 15000L);
            return;
        }
        if (iOrdinal != 1) {
            if (iOrdinal != 2) {
                throw new q();
            }
        } else {
            if (string == null) {
                return;
            }
            ae aeVar2 = ae.f3361a;
            ae.b("CentralWatchdog", "BT (arranque): o celular preferido nao chegou sozinho — discando para ele", true);
            try {
                m.i(this, string, new n2(i3));
            } catch (Throwable th) {
                b.s(th, new StringBuilder("btNoArranque: "), "CentralWatchdog");
            }
        }
    }

    public final void J0() {
        if (!F("gestos do volante") && W().getBoolean("gestures_enabled", false)) {
            this.f811a.postDelayed(new p2(this, 21), 55000L);
        }
    }

    public final boolean K() {
        if (!M()) {
            return false;
        }
        int i3 = u.f4288a;
        return u.b(W());
    }

    public final void K0() {
        if (F("Ar Digital")) {
            return;
        }
        if ((W().getBoolean("hvac_digital_temp", false) || W().getBoolean("hvac_digital_batt", false)) && this.G2.compareAndSet(false, true)) {
            T0(1);
        }
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00b1  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v3, types: [y1.p] */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.util.Collection] */
    /* JADX WARN: Type inference failed for: r2v9, types: [java.util.ArrayList] */
    public final void L() {
        ?? arrayList;
        boolean zBooleanValue;
        boolean z2;
        if (r()) {
            try {
                BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
                if (defaultAdapter == null) {
                    z0("adapter nulo");
                    return;
                }
                int profileConnectionState = defaultAdapter.getProfileConnectionState(11);
                int profileConnectionState2 = defaultAdapter.getProfileConnectionState(16);
                if (profileConnectionState != 2 && profileConnectionState2 != 2) {
                    Log.i("CentralWatchdog", "AA trigger: BT não conectado ao iniciar (a2dp_sink=" + profileConnectionState + " headset_client=" + profileConnectionState2 + ", tentativa " + (this.s2 + 1) + ')');
                    z0("ainda desconectado");
                    return;
                }
                if (!p()) {
                    ae aeVar = ae.f3361a;
                    ae.b("CentralWatchdog", "AA trigger: Bluetooth conectado sem telefone Android — não armo", false);
                    return;
                }
                try {
                    Set<BluetoothDevice> bondedDevices = defaultAdapter.getBondedDevices();
                    if (bondedDevices == null) {
                        bondedDevices = r.f4665a;
                    }
                    arrayList = new ArrayList();
                    for (Object obj : bondedDevices) {
                        BluetoothDevice bluetoothDevice = (BluetoothDevice) obj;
                        try {
                            Object objInvoke = BluetoothDevice.class.getMethod("isConnected", null).invoke(bluetoothDevice, null);
                            Boolean bool = objInvoke instanceof Boolean ? (Boolean) objInvoke : null;
                            zBooleanValue = bool != null ? bool.booleanValue() : false;
                        } catch (Throwable unused) {
                        }
                        if (zBooleanValue) {
                            g.b(bluetoothDevice);
                            if (l0(bluetoothDevice)) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                        } else {
                            z2 = false;
                        }
                        if (z2) {
                            arrayList.add(obj);
                        }
                    }
                } catch (Throwable unused2) {
                    arrayList = p.f4663a;
                }
                if (!arrayList.isEmpty()) {
                    ae aeVar2 = ae.f3361a;
                    ae.b("CentralWatchdog", "AA trigger: BT já conectado ao iniciar, mas o aparelho é Apple — não armo o gatilho do Android Auto (ele adiaria as injeções de CarPlay)", false);
                    return;
                }
                ae aeVar3 = ae.f3361a;
                ae.b("CentralWatchdog", "AA trigger: BT já conectado ao iniciar o serviço (a2dp_sink=" + profileConnectionState + " headset_client=" + profileConnectionState2 + ", tentativa " + (this.s2 + 1) + ')', false);
                this.f811a.postDelayed(new p2(this, 28), 1500L);
            } catch (Exception e3) {
                Log.w("CentralWatchdog", "checkAlreadyConnectedAaBt: " + e3.getMessage());
                z0("exceção");
            }
        }
    }

    public final void L0(boolean z2) {
        try {
            Intent intent = new Intent();
            intent.setComponent(new ComponentName("br.com.central.dualdashcam", "br.com.central.dualdashcam.camera.RearCamPipService"));
            intent.setAction(z2 ? "br.com.central.dualdashcam.action.SHOW_REAR_PIP" : "br.com.central.dualdashcam.action.HIDE_REAR_PIP");
            startService(intent);
            StringBuilder sb = new StringBuilder("rearCamTurnSignal: enviado ");
            sb.append(z2 ? "SHOW" : "HIDE");
            sb.append(" pro DualDashcam");
            Log.i("CentralWatchdog", sb.toString());
        } catch (Throwable th) {
            b.s(th, new StringBuilder("rearCamTurnSignal: falha ao acionar DualDashcam (RearCamPipService ainda não existe? não instalado?): "), "CentralWatchdog");
        }
    }

    public final boolean M() {
        try {
            String str = getPackageManager().getApplicationInfo("com.njda.adapter", 0).sourceDir;
            g.d(str, "sourceDir");
            return k.e0(str, "/data/app/", false);
        } catch (Throwable unused) {
            return false;
        }
    }

    public final boolean M0() {
        if (this.Z1) {
            return true;
        }
        return this.f839h2 && u();
    }

    public final void N() {
        this.f811a.removeCallbacks(this.E2);
        this.f811a.removeCallbacks(this.D2);
        this.f818c.incrementAndGet();
        this.M = 0;
        try {
            CarPropertyManager carPropertyManager = this.f840i;
            if (carPropertyManager != null) {
                carPropertyManager.unregisterCallback(this.C2);
            }
        } catch (Throwable unused) {
        }
        try {
            Car car = this.f836h;
            if (car != null) {
                car.disconnect();
            }
        } catch (Throwable unused2) {
        }
        this.f836h = null;
        this.f840i = null;
    }

    public final void N0(String str) {
        Boolean boolValueOf;
        Boolean boolValueOf2;
        boolean zC1;
        Set<BluetoothDevice> bondedDevices;
        if (W().getBoolean("sombra_projecao", false)) {
            try {
                Boolean boolValueOf3 = null;
                boolean z2 = true;
                try {
                    BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
                    boolValueOf = (defaultAdapter == null || !defaultAdapter.isEnabled() || (bondedDevices = defaultAdapter.getBondedDevices()) == null) ? null : Boolean.valueOf(!bondedDevices.isEmpty());
                } catch (Throwable unused) {
                }
                try {
                    String strC = c(6000, "ip link show ap0 2>/dev/null | head -1");
                    if (k.m0(strC)) {
                        boolValueOf2 = null;
                    } else {
                        boolValueOf2 = Boolean.valueOf(k.e0(strC, "state UP", false) || k.e0(strC, "UP,", false));
                    }
                } catch (Throwable unused2) {
                }
                try {
                    String strC2 = c(6000, "ip link show wlan1 2>/dev/null | head -1");
                    if (!k.m0(strC2)) {
                        if (!k.e0(strC2, "state UP", false) && !k.e0(strC2, "UP,", false)) {
                            z2 = false;
                        }
                        boolValueOf3 = Boolean.valueOf(z2);
                    }
                } catch (Throwable unused3) {
                }
                Boolean boolValueOf4 = Boolean.valueOf(b());
                try {
                    zC1 = c1();
                } catch (Throwable unused4) {
                    zC1 = false;
                }
                s3 s3Var = new s3(boolValueOf, boolValueOf2, boolValueOf3, boolValueOf4, zC1);
                int i3 = this.X1.get();
                long jElapsedRealtime = 0;
                if (this.Y1 != 0) {
                    jElapsedRealtime = SystemClock.elapsedRealtime() - this.Y1;
                }
                u3 u3VarV = t1.v(s3Var, i3, jElapsedRealtime);
                ae aeVar = ae.f3361a;
                ae.b("CentralWatchdog", t1.M(u3VarV, str), false);
            } catch (Throwable th) {
                b.s(th, new StringBuilder("sombra falhou (ignorado): "), "CentralWatchdog");
            }
        }
    }

    public final boolean O() {
        return this.f866o1 == 0 && SystemClock.elapsedRealtime() - this.f870p1 < this.q1 && K();
    }

    public final void O0() {
        if (this.W0) {
            return;
        }
        this.W0 = true;
        this.X0 = 0;
        this.Y0 = 0;
        this.Z0 = 0;
        ae aeVar = ae.f3361a;
        ae.b("CentralWatchdog", "AA trigger: sessão iniciada (BT conectado)", false);
        new Thread(new x1(this, 26)).start();
    }

    public final String P() {
        String string = W().getString("connadaptor_modo", "ambos");
        StringBuilder sbL = b.l("modo=", string != null ? string : "ambos", " ativado=");
        sbL.append(M());
        sbL.append(" carplay=");
        sbL.append(K());
        sbL.append(" androidauto=");
        sbL.append(r());
        return sbL.toString();
    }

    public final void P0() {
        Handler handler = this.f811a;
        a3 a3Var = this.t0;
        handler.removeCallbacks(a3Var);
        this.f880s0 = 0;
        boolean zIsEmpty = t1.N(this).isEmpty();
        new Thread(new y1(0, !zIsEmpty)).start();
        if (zIsEmpty) {
            return;
        }
        handler.post(a3Var);
    }

    /* JADX WARN: Code duplicated, block: B:110:0x0257  */
    /* JADX WARN: Code duplicated, block: B:123:0x02af  */
    /* JADX WARN: Code duplicated, block: B:125:0x02bc  */
    /* JADX WARN: Code duplicated, block: B:127:0x02c9  */
    /* JADX WARN: Code duplicated, block: B:128:0x02e0  */
    /* JADX WARN: Code duplicated, block: B:129:0x02fd  */
    /* JADX WARN: Code duplicated, block: B:131:0x0306  */
    /* JADX WARN: Code duplicated, block: B:132:0x030c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:134:0x030f  */
    /* JADX WARN: Code duplicated, block: B:140:0x0320 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:155:0x03c4  */
    /* JADX WARN: Code duplicated, block: B:157:0x03c8 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:161:0x03da A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:162:0x03dc A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:163:0x03de A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:164:0x03e0  */
    /* JADX WARN: Code duplicated, block: B:166:0x03e5  */
    /* JADX WARN: Code duplicated, block: B:169:0x040b  */
    /* JADX WARN: Code duplicated, block: B:170:0x040d  */
    /* JADX WARN: Code duplicated, block: B:172:0x0410  */
    /* JADX WARN: Code duplicated, block: B:174:0x0416  */
    /* JADX WARN: Code duplicated, block: B:175:0x0418  */
    /* JADX WARN: Code duplicated, block: B:177:0x041b  */
    /* JADX WARN: Code duplicated, block: B:178:0x041d  */
    /* JADX WARN: Code duplicated, block: B:180:0x0420  */
    /* JADX WARN: Code duplicated, block: B:183:0x0428  */
    /* JADX WARN: Code duplicated, block: B:185:0x042b  */
    /* JADX WARN: Code duplicated, block: B:187:0x0435  */
    /* JADX WARN: Code duplicated, block: B:230:0x0523 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:231:0x0525  */
    /* JADX WARN: Code duplicated, block: B:232:0x0528 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:233:0x052a  */
    /* JADX WARN: Code duplicated, block: B:234:0x0546  */
    /* JADX WARN: Code duplicated, block: B:237:0x0564  */
    /* JADX WARN: Code duplicated, block: B:241:0x0595  */
    /* JADX WARN: Code duplicated, block: B:253:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:39:0x00fe  */
    /* JADX WARN: Instruction removed from duplicated block: B:233:0x052a, please report this as an issue */
    public final void Q(String str) throws InterruptedException {
        boolean z2;
        boolean zE0;
        String str2;
        boolean z3;
        boolean z4;
        long j3;
        boolean z5;
        String string;
        int i3;
        String str3;
        String string2;
        boolean z6;
        boolean z7;
        boolean z8;
        String str4;
        String str5;
        boolean z9;
        String str6;
        a0.g gVar;
        long jCurrentTimeMillis;
        boolean z10;
        f5 f5Var;
        Boolean bool;
        Integer numW;
        Integer numW2;
        Integer numW3;
        f5 f5Var2 = f5.b;
        int i4 = 0;
        while (this.K2 && i4 < 40000) {
            Thread.sleep(2000L);
            i4 += 2000;
        }
        if (i4 > 0) {
            ae aeVar = ae.f3361a;
            StringBuilder sbL = b.l("saúde (", str, "): esperei ");
            sbL.append(i4 / 1000);
            sbL.append("s o bind do monitor terminar");
            ae.b("CentralWatchdog", sbL.toString(), false);
        }
        String str7 = u.f4310y;
        String strC = c(20000, "echo WPP=$(netstat -tln 2>/dev/null | grep -cE '3051[56]'); echo UDC=$(cat /sys/class/udc/*/state 2>/dev/null | head -1); echo HOSTS=$(ls /sys/bus/usb/devices/ 2>/dev/null | wc -l); echo WLAN1=$(ip link show wlan1 >/dev/null 2>&1 && echo sim || echo nao); echo CPMNT=$(grep -cF ' " + str7 + " ' /proc/mounts); echo CPMD5=$(md5sum " + str7 + " 2>/dev/null | awk '{print $1}')");
        Pattern patternCompile = Pattern.compile("WPP=\\d+");
        g.d(patternCompile, "compile(...)");
        g.e(strC, "input");
        if (!patternCompile.matcher(strC).find()) {
            ae aeVar2 = ae.f3361a;
            StringBuilder sbL2 = b.l("saúde (", str, "): sem resposta do canal ADB — não decido nada (saída: ");
            sbL2.append(k.C0(80, t.c0(strC, "\n", " ")));
            sbL2.append(')');
            ae.b("CentralWatchdog", sbL2.toString(), false);
            return;
        }
        Integer numW4 = s.W(R(strC, "WPP"));
        boolean z11 = (numW4 != null ? numW4.intValue() : 0) > 0;
        boolean z12 = R(strC, "UDC").equals("configured") && R(strC, "HOSTS").equals("0");
        if (R(strC, "CPMNT").equals("0")) {
            z2 = false;
        } else {
            String strR = R(strC, "CPMD5");
            List list = w1.f4416a;
            if (strR.equals("77d40d3b4cb19b29796e3ebcb82c4560") || strR.equals("1aaec42940be4f8d5a09384c04f5f109")) {
                z2 = true;
            } else {
                z2 = false;
            }
        }
        try {
            String str8 = getPackageManager().getApplicationInfo("com.njda.adapter", 0).sourceDir;
            g.d(str8, "sourceDir");
            zE0 = k.e0(str8, "/data/app/", false);
        } catch (Throwable unused) {
            zE0 = false;
        }
        if (z2) {
            str2 = "ok";
        } else {
            str2 = K() ? "FORA" : "nao se aplica (modo AA)";
        }
        ae aeVar3 = ae.f3361a;
        StringBuilder sbL3 = b.l("saúde (", str, "): WPP=");
        b.q(sbL3, z11 ? "ok" : "FORA", " CarplayMonitor=", str2, " ConnAdaptor=");
        sbL3.append(zE0 ? "instalado" : "de fábrica");
        b.r(sbL3, z12 ? " · ADB/cabo em modo device" : "", "CentralWatchdog", false);
        boolean zEquals = R(strC, "WLAN1").equals("sim");
        if (z11) {
            this.f828e1 = false;
        }
        if (z11 && t.d0(str, "AA trigger")) {
            j3 = 1000;
            long j4 = this.Q1;
            if (j4 != 0) {
                z4 = z11;
                if (System.currentTimeMillis() - j4 >= this.T1) {
                    List listV0 = k.v0(k.E0(c(15000, "logcat -d -v time -t '" + new SimpleDateFormat("MM-dd HH:mm:ss.SSS", Locale.US).format(new Date(j4 - 1000)) + "' 2>/dev/null | awk '{n++} /DADAO_AASDK|DADAO_AAUTO/{d++} /WPP is not Ready/{r++} /notifyWppDeviceAvailable.*state false/{r++} END{print n+0, d+0, r+0}'")).toString(), new String[]{" "}, 0, 6);
                    String str9 = (String) y1.g.c0(listV0, 0);
                    if (str9 == null || (numW = s.W(str9)) == null) {
                        gVar = new a0.g((Boolean) null, false);
                    } else {
                        int iIntValue = numW.intValue();
                        String str10 = (String) y1.g.c0(listV0, 1);
                        if (str10 == null || (numW2 = s.W(str10)) == null) {
                            gVar = new a0.g((Boolean) null, false);
                        } else {
                            int iIntValue2 = numW2.intValue();
                            String str11 = (String) y1.g.c0(listV0, 2);
                            int iIntValue3 = (str11 == null || (numW3 = s.W(str11)) == null) ? 0 : numW3.intValue();
                            if (iIntValue < 50) {
                                gVar = new a0.g((Boolean) null, iIntValue3 > 0);
                            } else {
                                gVar = new a0.g(Boolean.valueOf(iIntValue2 == 0), iIntValue3 > 0);
                            }
                        }
                    }
                }
                jCurrentTimeMillis = (System.currentTimeMillis() - this.Q1) / ((long) 1000);
                z10 = gVar.f13a;
                Boolean bool2 = (Boolean) gVar.b;
                if (z10 && !g.a(bool2, Boolean.TRUE)) {
                    f5Var = f5.f3583a;
                } else {
                    f5Var = f5Var2;
                }
                if (f5Var == f5Var2 || !gVar.f13a) {
                    z3 = zEquals;
                    bool = (Boolean) gVar.b;
                    if (g.a(bool, Boolean.TRUE)) {
                        if (SystemClock.elapsedRealtime() - this.R1 < this.S1) {
                            StringBuilder sb = new StringBuilder("saúde (");
                            sb.append(str);
                            sb.append("): daemon do AA segue mudo (convite há ");
                            sb.append(jCurrentTimeMillis);
                            b.r(sb, "s), mas já reiniciei por isso há menos de 5 min — não insisto", "CentralWatchdog", false);
                        } else {
                            this.R1 = SystemClock.elapsedRealtime();
                            StringBuilder sb2 = new StringBuilder("saúde (");
                            sb2.append(str);
                            sb2.append("): WPP=ok, mas o daemon do AA não escreveu nada desde o convite de ");
                            sb2.append(jCurrentTimeMillis);
                            b.r(sb2, "s atrás (zero linhas do daemon) — vivo e mudo; trato como sem WPP", "CentralWatchdog", false);
                            z5 = true;
                        }
                    } else if (g.a(bool, Boolean.FALSE)) {
                        b.p("saúde (", str, "): daemon do AA reagiu ao convite — a demora não é dele", "CentralWatchdog", false);
                    } else if (bool != null) {
                        throw new q();
                    }
                } else {
                    z3 = zEquals;
                    if (SystemClock.elapsedRealtime() - this.R1 < this.S1) {
                        StringBuilder sb3 = new StringBuilder("saúde (");
                        sb3.append(str);
                        sb3.append("): o daemon do AA RECUSOU (WPP nao pronto) desde o convite de ");
                        sb3.append(jCurrentTimeMillis);
                        b.r(sb3, "s atras, mas ja reiniciei ha menos de 5 min — nao insisto", "CentralWatchdog", false);
                    } else {
                        this.R1 = SystemClock.elapsedRealtime();
                        StringBuilder sb4 = new StringBuilder("saúde (");
                        sb4.append(str);
                        sb4.append("): porta 30515/30516 escutando, mas o daemon do AA RECUSOU desde o convite de ");
                        sb4.append(jCurrentTimeMillis);
                        b.r(sb4, "s atras (\"WPP is not Ready\") — o veredito dele vence o socket; trato como sem WPP", "CentralWatchdog", false);
                        z5 = true;
                    }
                }
                if (!z4 || z3) {
                    string = null;
                } else {
                    String string3 = k.E0(c(10000, "pidof AAutoMonitor")).toString();
                    b.p("saúde (", str, "): wlan1 NÃO existe — o WPP não tem onde bindar. Recriando pelo ConnAdaptor", "CentralWatchdog", false);
                    c(15000, "setenforce 0 2>/dev/null; am force-stop com.njda.adapter");
                    Thread.sleep(1500L);
                    String string4 = k.E0(c(20000, "am startservice com.njda.adapter/.core.AdapterService 2>&1 || monkey -p com.njda.adapter -c android.intent.category.LAUNCHER 1 2>&1")).toString();
                    StringBuilder sbL4 = b.l("saúde (", str, "): pedindo subida do ConnAdaptor — ");
                    sbL4.append(k.C0(160, string4));
                    ae.b("CentralWatchdog", sbL4.toString(), false);
                    int i5 = 0;
                    while (i5 < 20000) {
                        Thread.sleep(j3);
                        i5 += 1000;
                        if (g.a(k.E0(c(10000, "ip link show wlan1 >/dev/null 2>&1 && echo sim || echo nao")).toString(), "sim")) {
                            break;
                        }
                    }
                    boolean zA = g.a(k.E0(c(10000, "ip link show wlan1 >/dev/null 2>&1 && echo sim || echo nao")).toString(), "sim");
                    ae aeVar4 = ae.f3361a;
                    StringBuilder sbL5 = b.l("saúde (", str, "): wlan1 ");
                    if (zA) {
                        str6 = "criada em " + (i5 / 1000) + 's';
                    } else {
                        str6 = "NÃO nasceu";
                    }
                    b.r(sbL5, str6, "CentralWatchdog", false);
                    if (zA) {
                        this.f828e1 = false;
                    }
                    string = string3;
                }
                if (z4 && !z3 && !d1()) {
                    ae aeVar5 = ae.f3361a;
                    b.p("saúde (", str, "): sem wlan1 não reinicio o AAutoMonitor — o WPP não teria onde bindar", "CentralWatchdog", false);
                } else if (z4 || z5) {
                    if (string != null) {
                        i3 = 10000;
                    } else {
                        i3 = 10000;
                        string = k.E0(c(10000, "pidof AAutoMonitor")).toString();
                        Thread.sleep(6000L);
                    }
                    str3 = string;
                    string2 = k.E0(c(i3, "pidof AAutoMonitor")).toString();
                    if (str3.length() == 0) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (z6) {
                        if (string2.length() == 0) {
                            z9 = true;
                        } else {
                            z9 = false;
                        }
                        if (z9) {
                            z7 = true;
                        } else {
                            z7 = false;
                        }
                    } else {
                        z7 = false;
                    }
                    if (!z7 || str3.equals(string2)) {
                        z8 = false;
                    } else {
                        z8 = true;
                    }
                    if (z7) {
                        ae aeVar6 = ae.f3361a;
                        b.p("saúde (", str, "): AAutoMonitor MORTO (sem pid) — reiniciando", "CentralWatchdog", false);
                    }
                    if (!z12 || this.f828e1 || (!z7 && z8)) {
                        if (z12) {
                            str4 = "o USB está em modo device — desligue o ADB para o Android Auto subir";
                        } else if (z8) {
                            str4 = "está em crash-loop (pid " + str3 + " → " + string2 + ')';
                        } else {
                            str4 = "um reinício já foi tentado neste ciclo e não adiantou";
                        }
                        ae aeVar7 = ae.f3361a;
                        ae.b("CentralWatchdog", "saúde (" + str + "): AAutoMonitor sem WPP e reiniciar não resolve — " + str4, false);
                    } else {
                        ae aeVar8 = ae.f3361a;
                        StringBuilder sbL6 = b.l("saúde (", str, "): AAutoMonitor ");
                        sbL6.append(z5 ? "vivo e mudo" : "sem WPP");
                        sbL6.append(" — reiniciando");
                        ae.b("CentralWatchdog", sbL6.toString(), false);
                        int i6 = 10000;
                        c(10000, "setprop ctl.restart ".concat(Politica.b(7)));
                        int i7 = 0;
                        while (i7 < 15000) {
                            Thread.sleep(j3);
                            i7 += 1000;
                            Integer numW5 = s.W(k.E0(c(i6, "netstat -tln 2>/dev/null | grep -cE '3051[56]'")).toString());
                            if ((numW5 != null ? numW5.intValue() : 0) > 0) {
                                i6 = 10000;
                                break;
                            }
                            i6 = 10000;
                        }
                        Integer numW6 = s.W(k.E0(c(i6, "netstat -tln 2>/dev/null | grep -cE '3051[56]'")).toString());
                        boolean z13 = (numW6 != null ? numW6.intValue() : 0) > 0;
                        this.f828e1 = !z13;
                        ae aeVar9 = ae.f3361a;
                        StringBuilder sbL7 = b.l("saúde (", str, "): WPP ");
                        if (z13) {
                            str5 = "subiu em " + (i7 / 1000) + 's';
                        } else {
                            str5 = "NÃO subiu — não insisto até o próximo boot";
                        }
                        b.r(sbL7, str5, "CentralWatchdog", false);
                        if (z13) {
                            i0("WPP no ar");
                        }
                        if (z13) {
                            Integer numW7 = s.W(k.E0(c(10000, "grep -cE '[[:space:]]ap0$' /proc/net/arp")).toString());
                            if ((numW7 != null ? numW7.intValue() : 0) > 0 && r()) {
                                b.p("saúde (", str, "): há celular no ap0 — cutucando o Android Auto", "CentralWatchdog", false);
                                this.f811a.post(new x1(this, 17));
                            }
                        }
                    }
                }
                if (!z2 || !K()) {
                    if (z2) {
                    }
                    ae aeVar10 = ae.f3361a;
                    StringBuilder sbL8 = b.l("saúde (", str, "): CarplayMonitor fora, mas não conserto — ");
                    sbL8.append(P());
                    ae.b("CentralWatchdog", sbL8.toString(), false);
                }
                ae aeVar11 = ae.f3361a;
                ae.b("CentralWatchdog", "saúde (" + str + "): CarplayMonitor sem o patch — refazendo o bind", false);
                StringBuilder sb5 = new StringBuilder("saúde/");
                sb5.append(str);
                I(sb5.toString());
                return;
            }
            z4 = z11;
            gVar = new a0.g((Boolean) null, false);
            jCurrentTimeMillis = (System.currentTimeMillis() - this.Q1) / ((long) 1000);
            z10 = gVar.f13a;
            Boolean bool3 = (Boolean) gVar.b;
            if (z10) {
                f5Var = f5Var2;
            } else {
                f5Var = f5.f3583a;
            }
            if (f5Var == f5Var2) {
                z3 = zEquals;
                bool = (Boolean) gVar.b;
                if (g.a(bool, Boolean.TRUE)) {
                    if (SystemClock.elapsedRealtime() - this.R1 < this.S1) {
                        StringBuilder sb6 = new StringBuilder("saúde (");
                        sb6.append(str);
                        sb6.append("): daemon do AA segue mudo (convite há ");
                        sb6.append(jCurrentTimeMillis);
                        b.r(sb6, "s), mas já reiniciei por isso há menos de 5 min — não insisto", "CentralWatchdog", false);
                    } else {
                        this.R1 = SystemClock.elapsedRealtime();
                        StringBuilder sb7 = new StringBuilder("saúde (");
                        sb7.append(str);
                        sb7.append("): WPP=ok, mas o daemon do AA não escreveu nada desde o convite de ");
                        sb7.append(jCurrentTimeMillis);
                        b.r(sb7, "s atrás (zero linhas do daemon) — vivo e mudo; trato como sem WPP", "CentralWatchdog", false);
                        z5 = true;
                    }
                } else if (g.a(bool, Boolean.FALSE)) {
                    b.p("saúde (", str, "): daemon do AA reagiu ao convite — a demora não é dele", "CentralWatchdog", false);
                } else if (bool != null) {
                    throw new q();
                }
            } else {
                z3 = zEquals;
                bool = (Boolean) gVar.b;
                if (g.a(bool, Boolean.TRUE)) {
                    if (SystemClock.elapsedRealtime() - this.R1 < this.S1) {
                        StringBuilder sb8 = new StringBuilder("saúde (");
                        sb8.append(str);
                        sb8.append("): daemon do AA segue mudo (convite há ");
                        sb8.append(jCurrentTimeMillis);
                        b.r(sb8, "s), mas já reiniciei por isso há menos de 5 min — não insisto", "CentralWatchdog", false);
                    } else {
                        this.R1 = SystemClock.elapsedRealtime();
                        StringBuilder sb9 = new StringBuilder("saúde (");
                        sb9.append(str);
                        sb9.append("): WPP=ok, mas o daemon do AA não escreveu nada desde o convite de ");
                        sb9.append(jCurrentTimeMillis);
                        b.r(sb9, "s atrás (zero linhas do daemon) — vivo e mudo; trato como sem WPP", "CentralWatchdog", false);
                        z5 = true;
                    }
                } else if (g.a(bool, Boolean.FALSE)) {
                    b.p("saúde (", str, "): daemon do AA reagiu ao convite — a demora não é dele", "CentralWatchdog", false);
                } else if (bool != null) {
                    throw new q();
                }
            }
            if (z4) {
                string = null;
            } else {
                string = null;
            }
            if (z4) {
                if (z4) {
                    if (string != null) {
                        i3 = 10000;
                    } else {
                        i3 = 10000;
                        string = k.E0(c(10000, "pidof AAutoMonitor")).toString();
                        Thread.sleep(6000L);
                    }
                    str3 = string;
                    string2 = k.E0(c(i3, "pidof AAutoMonitor")).toString();
                    if (str3.length() == 0) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (z6) {
                        z7 = false;
                    } else {
                        if (string2.length() == 0) {
                            z9 = true;
                        } else {
                            z9 = false;
                        }
                        if (z9) {
                            z7 = true;
                        } else {
                            z7 = false;
                        }
                    }
                    if (z7) {
                        z8 = false;
                    } else {
                        z8 = false;
                    }
                    if (z7) {
                        ae aeVar12 = ae.f3361a;
                        b.p("saúde (", str, "): AAutoMonitor MORTO (sem pid) — reiniciando", "CentralWatchdog", false);
                    }
                    if (z12) {
                        if (z12) {
                            str4 = "o USB está em modo device — desligue o ADB para o Android Auto subir";
                        } else if (z8) {
                            str4 = "está em crash-loop (pid " + str3 + " → " + string2 + ')';
                        } else {
                            str4 = "um reinício já foi tentado neste ciclo e não adiantou";
                        }
                        ae aeVar13 = ae.f3361a;
                        ae.b("CentralWatchdog", "saúde (" + str + "): AAutoMonitor sem WPP e reiniciar não resolve — " + str4, false);
                    } else {
                        if (z12) {
                            str4 = "o USB está em modo device — desligue o ADB para o Android Auto subir";
                        } else if (z8) {
                            str4 = "está em crash-loop (pid " + str3 + " → " + string2 + ')';
                        } else {
                            str4 = "um reinício já foi tentado neste ciclo e não adiantou";
                        }
                        ae aeVar14 = ae.f3361a;
                        ae.b("CentralWatchdog", "saúde (" + str + "): AAutoMonitor sem WPP e reiniciar não resolve — " + str4, false);
                    }
                } else {
                    if (string != null) {
                        i3 = 10000;
                    } else {
                        i3 = 10000;
                        string = k.E0(c(10000, "pidof AAutoMonitor")).toString();
                        Thread.sleep(6000L);
                    }
                    str3 = string;
                    string2 = k.E0(c(i3, "pidof AAutoMonitor")).toString();
                    if (str3.length() == 0) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (z6) {
                        z7 = false;
                    } else {
                        if (string2.length() == 0) {
                            z9 = true;
                        } else {
                            z9 = false;
                        }
                        if (z9) {
                            z7 = true;
                        } else {
                            z7 = false;
                        }
                    }
                    if (z7) {
                        z8 = false;
                    } else {
                        z8 = false;
                    }
                    if (z7) {
                        ae aeVar15 = ae.f3361a;
                        b.p("saúde (", str, "): AAutoMonitor MORTO (sem pid) — reiniciando", "CentralWatchdog", false);
                    }
                    if (z12) {
                        if (z12) {
                            str4 = "o USB está em modo device — desligue o ADB para o Android Auto subir";
                        } else if (z8) {
                            str4 = "está em crash-loop (pid " + str3 + " → " + string2 + ')';
                        } else {
                            str4 = "um reinício já foi tentado neste ciclo e não adiantou";
                        }
                        ae aeVar16 = ae.f3361a;
                        ae.b("CentralWatchdog", "saúde (" + str + "): AAutoMonitor sem WPP e reiniciar não resolve — " + str4, false);
                    } else {
                        if (z12) {
                            str4 = "o USB está em modo device — desligue o ADB para o Android Auto subir";
                        } else if (z8) {
                            str4 = "está em crash-loop (pid " + str3 + " → " + string2 + ')';
                        } else {
                            str4 = "um reinício já foi tentado neste ciclo e não adiantou";
                        }
                        ae aeVar17 = ae.f3361a;
                        ae.b("CentralWatchdog", "saúde (" + str + "): AAutoMonitor sem WPP e reiniciar não resolve — " + str4, false);
                    }
                }
            } else if (z4) {
                if (string != null) {
                    i3 = 10000;
                } else {
                    i3 = 10000;
                    string = k.E0(c(10000, "pidof AAutoMonitor")).toString();
                    Thread.sleep(6000L);
                }
                str3 = string;
                string2 = k.E0(c(i3, "pidof AAutoMonitor")).toString();
                if (str3.length() == 0) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (z6) {
                    z7 = false;
                } else {
                    if (string2.length() == 0) {
                        z9 = true;
                    } else {
                        z9 = false;
                    }
                    if (z9) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                }
                if (z7) {
                    z8 = false;
                } else {
                    z8 = false;
                }
                if (z7) {
                    ae aeVar18 = ae.f3361a;
                    b.p("saúde (", str, "): AAutoMonitor MORTO (sem pid) — reiniciando", "CentralWatchdog", false);
                }
                if (z12) {
                    if (z12) {
                        str4 = "o USB está em modo device — desligue o ADB para o Android Auto subir";
                    } else if (z8) {
                        str4 = "está em crash-loop (pid " + str3 + " → " + string2 + ')';
                    } else {
                        str4 = "um reinício já foi tentado neste ciclo e não adiantou";
                    }
                    ae aeVar19 = ae.f3361a;
                    ae.b("CentralWatchdog", "saúde (" + str + "): AAutoMonitor sem WPP e reiniciar não resolve — " + str4, false);
                } else {
                    if (z12) {
                        str4 = "o USB está em modo device — desligue o ADB para o Android Auto subir";
                    } else if (z8) {
                        str4 = "está em crash-loop (pid " + str3 + " → " + string2 + ')';
                    } else {
                        str4 = "um reinício já foi tentado neste ciclo e não adiantou";
                    }
                    ae aeVar110 = ae.f3361a;
                    ae.b("CentralWatchdog", "saúde (" + str + "): AAutoMonitor sem WPP e reiniciar não resolve — " + str4, false);
                }
            } else {
                if (string != null) {
                    i3 = 10000;
                } else {
                    i3 = 10000;
                    string = k.E0(c(10000, "pidof AAutoMonitor")).toString();
                    Thread.sleep(6000L);
                }
                str3 = string;
                string2 = k.E0(c(i3, "pidof AAutoMonitor")).toString();
                if (str3.length() == 0) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (z6) {
                    z7 = false;
                } else {
                    if (string2.length() == 0) {
                        z9 = true;
                    } else {
                        z9 = false;
                    }
                    if (z9) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                }
                if (z7) {
                    z8 = false;
                } else {
                    z8 = false;
                }
                if (z7) {
                    ae aeVar111 = ae.f3361a;
                    b.p("saúde (", str, "): AAutoMonitor MORTO (sem pid) — reiniciando", "CentralWatchdog", false);
                }
                if (z12) {
                    if (z12) {
                        str4 = "o USB está em modo device — desligue o ADB para o Android Auto subir";
                    } else if (z8) {
                        str4 = "está em crash-loop (pid " + str3 + " → " + string2 + ')';
                    } else {
                        str4 = "um reinício já foi tentado neste ciclo e não adiantou";
                    }
                    ae aeVar112 = ae.f3361a;
                    ae.b("CentralWatchdog", "saúde (" + str + "): AAutoMonitor sem WPP e reiniciar não resolve — " + str4, false);
                } else {
                    if (z12) {
                        str4 = "o USB está em modo device — desligue o ADB para o Android Auto subir";
                    } else if (z8) {
                        str4 = "está em crash-loop (pid " + str3 + " → " + string2 + ')';
                    } else {
                        str4 = "um reinício já foi tentado neste ciclo e não adiantou";
                    }
                    ae aeVar113 = ae.f3361a;
                    ae.b("CentralWatchdog", "saúde (" + str + "): AAutoMonitor sem WPP e reiniciar não resolve — " + str4, false);
                }
            }
            if (!z2) {
            }
            if (z2) {
                ae aeVar114 = ae.f3361a;
                StringBuilder sbL9 = b.l("saúde (", str, "): CarplayMonitor fora, mas não conserto — ");
                sbL9.append(P());
                ae.b("CentralWatchdog", sbL9.toString(), false);
            }
        }
        z3 = zEquals;
        z4 = z11;
        j3 = 1000;
        z5 = false;
        if (z4) {
            string = null;
        } else {
            string = null;
        }
        if (z4) {
            if (z4) {
                if (string != null) {
                    i3 = 10000;
                } else {
                    i3 = 10000;
                    string = k.E0(c(10000, "pidof AAutoMonitor")).toString();
                    Thread.sleep(6000L);
                }
                str3 = string;
                string2 = k.E0(c(i3, "pidof AAutoMonitor")).toString();
                if (str3.length() == 0) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (z6) {
                    z7 = false;
                } else {
                    if (string2.length() == 0) {
                        z9 = true;
                    } else {
                        z9 = false;
                    }
                    if (z9) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                }
                if (z7) {
                    z8 = false;
                } else {
                    z8 = false;
                }
                if (z7) {
                    ae aeVar115 = ae.f3361a;
                    b.p("saúde (", str, "): AAutoMonitor MORTO (sem pid) — reiniciando", "CentralWatchdog", false);
                }
                if (z12) {
                    if (z12) {
                        str4 = "o USB está em modo device — desligue o ADB para o Android Auto subir";
                    } else if (z8) {
                        str4 = "está em crash-loop (pid " + str3 + " → " + string2 + ')';
                    } else {
                        str4 = "um reinício já foi tentado neste ciclo e não adiantou";
                    }
                    ae aeVar116 = ae.f3361a;
                    ae.b("CentralWatchdog", "saúde (" + str + "): AAutoMonitor sem WPP e reiniciar não resolve — " + str4, false);
                } else {
                    if (z12) {
                        str4 = "o USB está em modo device — desligue o ADB para o Android Auto subir";
                    } else if (z8) {
                        str4 = "está em crash-loop (pid " + str3 + " → " + string2 + ')';
                    } else {
                        str4 = "um reinício já foi tentado neste ciclo e não adiantou";
                    }
                    ae aeVar117 = ae.f3361a;
                    ae.b("CentralWatchdog", "saúde (" + str + "): AAutoMonitor sem WPP e reiniciar não resolve — " + str4, false);
                }
            } else {
                if (string != null) {
                    i3 = 10000;
                } else {
                    i3 = 10000;
                    string = k.E0(c(10000, "pidof AAutoMonitor")).toString();
                    Thread.sleep(6000L);
                }
                str3 = string;
                string2 = k.E0(c(i3, "pidof AAutoMonitor")).toString();
                if (str3.length() == 0) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (z6) {
                    z7 = false;
                } else {
                    if (string2.length() == 0) {
                        z9 = true;
                    } else {
                        z9 = false;
                    }
                    if (z9) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                }
                if (z7) {
                    z8 = false;
                } else {
                    z8 = false;
                }
                if (z7) {
                    ae aeVar118 = ae.f3361a;
                    b.p("saúde (", str, "): AAutoMonitor MORTO (sem pid) — reiniciando", "CentralWatchdog", false);
                }
                if (z12) {
                    if (z12) {
                        str4 = "o USB está em modo device — desligue o ADB para o Android Auto subir";
                    } else if (z8) {
                        str4 = "está em crash-loop (pid " + str3 + " → " + string2 + ')';
                    } else {
                        str4 = "um reinício já foi tentado neste ciclo e não adiantou";
                    }
                    ae aeVar119 = ae.f3361a;
                    ae.b("CentralWatchdog", "saúde (" + str + "): AAutoMonitor sem WPP e reiniciar não resolve — " + str4, false);
                } else {
                    if (z12) {
                        str4 = "o USB está em modo device — desligue o ADB para o Android Auto subir";
                    } else if (z8) {
                        str4 = "está em crash-loop (pid " + str3 + " → " + string2 + ')';
                    } else {
                        str4 = "um reinício já foi tentado neste ciclo e não adiantou";
                    }
                    ae aeVar1110 = ae.f3361a;
                    ae.b("CentralWatchdog", "saúde (" + str + "): AAutoMonitor sem WPP e reiniciar não resolve — " + str4, false);
                }
            }
        } else if (z4) {
            if (string != null) {
                i3 = 10000;
            } else {
                i3 = 10000;
                string = k.E0(c(10000, "pidof AAutoMonitor")).toString();
                Thread.sleep(6000L);
            }
            str3 = string;
            string2 = k.E0(c(i3, "pidof AAutoMonitor")).toString();
            if (str3.length() == 0) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (z6) {
                z7 = false;
            } else {
                if (string2.length() == 0) {
                    z9 = true;
                } else {
                    z9 = false;
                }
                if (z9) {
                    z7 = true;
                } else {
                    z7 = false;
                }
            }
            if (z7) {
                z8 = false;
            } else {
                z8 = false;
            }
            if (z7) {
                ae aeVar1111 = ae.f3361a;
                b.p("saúde (", str, "): AAutoMonitor MORTO (sem pid) — reiniciando", "CentralWatchdog", false);
            }
            if (z12) {
                if (z12) {
                    str4 = "o USB está em modo device — desligue o ADB para o Android Auto subir";
                } else if (z8) {
                    str4 = "está em crash-loop (pid " + str3 + " → " + string2 + ')';
                } else {
                    str4 = "um reinício já foi tentado neste ciclo e não adiantou";
                }
                ae aeVar1112 = ae.f3361a;
                ae.b("CentralWatchdog", "saúde (" + str + "): AAutoMonitor sem WPP e reiniciar não resolve — " + str4, false);
            } else {
                if (z12) {
                    str4 = "o USB está em modo device — desligue o ADB para o Android Auto subir";
                } else if (z8) {
                    str4 = "está em crash-loop (pid " + str3 + " → " + string2 + ')';
                } else {
                    str4 = "um reinício já foi tentado neste ciclo e não adiantou";
                }
                ae aeVar1113 = ae.f3361a;
                ae.b("CentralWatchdog", "saúde (" + str + "): AAutoMonitor sem WPP e reiniciar não resolve — " + str4, false);
            }
        } else {
            if (string != null) {
                i3 = 10000;
            } else {
                i3 = 10000;
                string = k.E0(c(10000, "pidof AAutoMonitor")).toString();
                Thread.sleep(6000L);
            }
            str3 = string;
            string2 = k.E0(c(i3, "pidof AAutoMonitor")).toString();
            if (str3.length() == 0) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (z6) {
                z7 = false;
            } else {
                if (string2.length() == 0) {
                    z9 = true;
                } else {
                    z9 = false;
                }
                if (z9) {
                    z7 = true;
                } else {
                    z7 = false;
                }
            }
            if (z7) {
                z8 = false;
            } else {
                z8 = false;
            }
            if (z7) {
                ae aeVar1114 = ae.f3361a;
                b.p("saúde (", str, "): AAutoMonitor MORTO (sem pid) — reiniciando", "CentralWatchdog", false);
            }
            if (z12) {
                if (z12) {
                    str4 = "o USB está em modo device — desligue o ADB para o Android Auto subir";
                } else if (z8) {
                    str4 = "está em crash-loop (pid " + str3 + " → " + string2 + ')';
                } else {
                    str4 = "um reinício já foi tentado neste ciclo e não adiantou";
                }
                ae aeVar1115 = ae.f3361a;
                ae.b("CentralWatchdog", "saúde (" + str + "): AAutoMonitor sem WPP e reiniciar não resolve — " + str4, false);
            } else {
                if (z12) {
                    str4 = "o USB está em modo device — desligue o ADB para o Android Auto subir";
                } else if (z8) {
                    str4 = "está em crash-loop (pid " + str3 + " → " + string2 + ')';
                } else {
                    str4 = "um reinício já foi tentado neste ciclo e não adiantou";
                }
                ae aeVar1116 = ae.f3361a;
                ae.b("CentralWatchdog", "saúde (" + str + "): AAutoMonitor sem WPP e reiniciar não resolve — " + str4, false);
            }
        }
        if (!z2) {
        }
        if (z2) {
            ae aeVar1117 = ae.f3361a;
            StringBuilder sbL10 = b.l("saúde (", str, "): CarplayMonitor fora, mas não conserto — ");
            sbL10.append(P());
            ae.b("CentralWatchdog", sbL10.toString(), false);
        }
    }

    public final void Q0() {
        Handler handler = this.f811a;
        a3 a3Var = this.f876r0;
        handler.removeCallbacks(a3Var);
        if (W().getBoolean("status_temp_ext_enabled", false) || W().getBoolean("status_battery_enabled", false) || W().getBoolean("status_total_km_enabled", false) || W().getBoolean("status_trip_km_enabled", false) || W().getBoolean("status_signal_enabled", false) || W().getBoolean("status_wifi_enabled", false)) {
            handler.post(a3Var);
            return;
        }
        int i3 = pg.f4073a;
        pg.c(this);
        pg.f(this);
        pg.g(this);
        NotificationManager notificationManager = (NotificationManager) getApplicationContext().getSystemService(NotificationManager.class);
        if (notificationManager != null) {
            notificationManager.cancel(15030);
        }
    }

    public final void R0(String str) {
        this.W0 = false;
        this.f811a.removeCallbacks(this.f816b1);
        ae aeVar = ae.f3361a;
        StringBuilder sbL = b.l("AA trigger: parado (", str, ") após ");
        sbL.append((((long) this.Y0) * this.T0) / ((long) 1000));
        sbL.append("s, ");
        sbL.append(this.X0);
        sbL.append(" pedido(s) de saúde");
        ae.b("CentralWatchdog", sbL.toString(), false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v41 */
    /* JADX WARN: Type inference failed for: r2v42 */
    /* JADX WARN: Type inference failed for: r2v43 */
    /* JADX WARN: Type inference failed for: r2v44 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    public final void S(String str) {
        ?? r3;
        h2.a d2Var;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j3 = jElapsedRealtime - this.R;
        int i3 = 0;
        if (j3 < this.S) {
            ae aeVar = ae.f3361a;
            StringBuilder sbL = b.l("despertar (", str, "): ignorado — outro despertar/boot há ");
            sbL.append(j3 / ((long) 1000));
            sbL.append('s');
            ae.b("CentralWatchdog", sbL.toString(), false);
            return;
        }
        this.R = jElapsedRealtime;
        this.B1 = jElapsedRealtime;
        this.f898z1 = false;
        ae aeVar2 = ae.f3361a;
        b.p("despertar (", str, "): janela de arranque reaberta (AP/WiFi/BT conforme os toggles)", "CentralWatchdog", false);
        K0();
        int i4 = 6;
        this.f811a.postDelayed(new p2(this, i4), 5000L);
        this.f811a.postDelayed(new p2(this, 10), 8000L);
        Politica politica = Politica.f1126a;
        boolean zV = v();
        if (this.f814a2) {
            r3 = zV;
            r3 = (zV ? 1 : 0) | 4;
        }
        r3 = zV;
        ?? r4 = r3;
        if (c1()) {
            r4 = (r3 == true ? 1 : 0) | 8;
        }
        int i5 = r4;
        if (SystemClock.elapsedRealtime() < this.Q2) {
            i5 = (r4 == true ? 1 : 0) | 16;
        }
        ArrayList arrayListG = Politica.g(i5);
        int i6 = 7;
        if (arrayListG != null) {
            StringBuilder sbL2 = b.l("despertar (", str, "): plano nativo com ");
            sbL2.append(arrayListG.size());
            sbL2.append(" passo(s)");
            ae.b("CentralWatchdog", sbL2.toString(), false);
            int size = arrayListG.size();
            int i7 = 0;
            while (i7 < size) {
                Object obj = arrayListG.get(i7);
                i7++;
                re reVar = (re) obj;
                int i8 = 1;
                switch (reVar.f4181a) {
                    case 1:
                        d2Var = new d2(this, i8);
                        break;
                    case 2:
                        d2Var = new d2(this, 2);
                        break;
                    case 3:
                        d2Var = new d2(this, 3);
                        break;
                    case 4:
                        d2Var = new d2(this, 4);
                        break;
                    case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                        d2Var = new d2(this, 5);
                        break;
                    case MusicClient.TYPE_GESTURE /* 6 */:
                        d2Var = new d2(this, i4);
                        break;
                    case PlaybackState.STATE_ERROR /* 7 */:
                        d2Var = new d2(this, i6);
                        break;
                    default:
                        d2Var = new f2(i3, reVar);
                        break;
                }
                long j4 = reVar.b;
                if (j4 > 0) {
                    this.f811a.postDelayed(new n1(d2Var, i8), j4);
                } else if (U2) {
                    d2Var.a();
                }
                i6 = 7;
                i4 = 6;
            }
        } else {
            if (this.f814a2 && !v()) {
                this.f814a2 = false;
                b.p("despertar (", str, "): sessão do AA anterior ao sono descartada (ap0 fora do ar) — o daemon será renovado", "CentralWatchdog", false);
            }
            this.f811a.postDelayed(new p2(this, 11), 500L);
            this.f811a.postDelayed(new p2(this, 12), 8000L);
            this.f811a.postDelayed(new p2(this, 13), this.f842i1);
            this.f811a.postDelayed(new p2(this, 14), this.f838h1);
        }
        if (r() && !this.W0) {
            this.s2 = 0;
            this.f811a.postDelayed(new p2(this, 15), 3000L);
        }
        if (K()) {
            this.f811a.postDelayed(new p2(this, 16), 3000L);
        }
        this.f815b0 = null;
        this.f841i0 = null;
        this.f827e0.incrementAndGet();
        this.f834g0 = 0L;
        if (t()) {
            this.f811a.removeCallbacks(this.M2);
            this.f811a.postDelayed(this.M2, 5000L);
        }
        if (!W().getBoolean("auto_apply_paused", false)) {
            if (W().getBoolean("avas_muted_saved", false)) {
                this.f811a.postDelayed(new p2(this, 17), 5000L);
            }
            if (W().getInt("avas_sound_type_saved", -1) > 0) {
                this.f811a.postDelayed(new p2(this, 18), 5000L);
            }
            if (W().getBoolean("aeb_restore_on_boot", false)) {
                this.f811a.postDelayed(new p2(this, 7), 8000L);
            }
            if (!DriveRegenFloaterService.M) {
                this.f811a.postDelayed(new p2(this, 8), 6000L);
            }
        }
        if (W().getBoolean("remember_brightness", false)) {
            this.f811a.postDelayed(new p2(this, 9), 4000L);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r4v0, types: [x1.b] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.util.ArrayList] */
    public final boolean S0(BluetoothDevice bluetoothDevice) {
        Object bVar;
        ?? bVar2;
        UUID uuid;
        p pVar = p.f4663a;
        if (!l0(bluetoothDevice)) {
            try {
                BluetoothClass bluetoothClass = bluetoothDevice.getBluetoothClass();
                bVar = bluetoothClass != null ? Integer.valueOf(bluetoothClass.getMajorDeviceClass()) : null;
            } catch (Throwable th) {
                bVar = new x1.b(th);
            }
            if (bVar instanceof x1.b) {
                bVar = null;
            }
            Integer num = (Integer) bVar;
            try {
                ParcelUuid[] uuids = bluetoothDevice.getUuids();
                if (uuids != null) {
                    bVar2 = new ArrayList();
                    int length = uuids.length;
                    for (int i3 = 0; i3 < length; i3++) {
                        ParcelUuid parcelUuid = uuids[i3];
                        String string = (parcelUuid == null || (uuid = parcelUuid.getUuid()) == null) ? null : uuid.toString();
                        if (string != null) {
                            bVar2.add(string);
                        }
                    }
                } else {
                    bVar2 = pVar;
                }
            } catch (Throwable th2) {
                bVar2 = new x1.b(th2);
            }
            ?? r3 = pVar;
            if (!(bVar2 instanceof x1.b)) {
                r3 = bVar2;
            }
            List<String> list = (List) r3;
            if (num != null && num.intValue() == 1024) {
                return false;
            }
            if (num != null && num.intValue() == 1280) {
                return false;
            }
            if (num == null || num.intValue() != 512) {
                if (list.isEmpty()) {
                    return false;
                }
                for (String str : list) {
                    if (t.a0(str, "0000111f-0000-1000-8000-00805f9b34fb") || t.a0(str, "00001112-0000-1000-8000-00805f9b34fb")) {
                    }
                }
                return false;
            }
        }
        return true;
    }

    public final void T(CarPropertyManager carPropertyManager, int i3, int i4) {
        String string;
        Integer numC = p1.c(carPropertyManager, 322964416, i3);
        if (numC != null && numC.intValue() <= 13) {
            if (p1.l(carPropertyManager, 322964416, i3, 0)) {
                Log.i("CentralWatchdog", String.format("janela 0x%x → POS 0 (última porta 0x%x fechou; filete do episódio)", Arrays.copyOf(new Object[]{Integer.valueOf(i3), Integer.valueOf(i4)}, 2)));
            } else {
                Log.w("CentralWatchdog", String.format("windowDriver: falhou fechar o filete de 0x%x", Arrays.copyOf(new Object[]{Integer.valueOf(i3)}, 1)));
            }
            this.f864o = null;
            return;
        }
        Integer numValueOf = Integer.valueOf(i3);
        Integer numValueOf2 = Integer.valueOf(i4);
        if (numC == null || (string = numC.toString()) == null) {
            string = "?";
        }
        Log.i("CentralWatchdog", String.format("janela 0x%x: última porta (0x%x) fechou, mas a janela está em %s — aberta além do filete ou ilegível, não mexo", Arrays.copyOf(new Object[]{numValueOf, numValueOf2, string}, 3)));
        this.f864o = null;
    }

    public final void T0(int i3) {
        Long l3;
        if (i3 == 1) {
            l3 = 25000L;
        } else if (i3 != 2) {
            l3 = i3 != 3 ? null : 120000L;
        } else {
            l3 = 45000L;
        }
        if (l3 != null) {
            this.f811a.postDelayed(new e2(this, i3, 7), l3.longValue());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0088, code lost:
    
        if (v() != false) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean U(java.lang.String r14, boolean r15) throws java.lang.InterruptedException {
        /*
            Method dump skipped, instruction units count: 651
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ex.auto.CentralWatchdogService.U(java.lang.String, boolean):boolean");
    }

    public final void U0() {
        f3 f3Var = this.H0;
        if (f3Var != null) {
            try {
                getContentResolver().unregisterContentObserver(f3Var);
            } catch (Exception unused) {
            }
        }
        this.H0 = null;
        c3 c3Var = this.I0;
        if (c3Var != null) {
            try {
                unregisterReceiver(c3Var);
            } catch (Exception unused2) {
            }
        }
        this.I0 = null;
    }

    public final void V(int i3, String str) {
        BluetoothAdapter defaultAdapter;
        boolean zEnable;
        if (n("BT (" + str + ')', new z1(this, str, 1))) {
            return;
        }
        if (this.f854l1) {
            ae aeVar = ae.f3361a;
            b.p("BT (", str, "): desligamento foi intencional (usuário ou CarPlay) — respeitando", "CentralWatchdog", false);
            return;
        }
        try {
            defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        } catch (Throwable unused) {
            defaultAdapter = null;
        }
        if (defaultAdapter == null) {
            ae aeVar2 = ae.f3361a;
            b.p("BT (", str, "): sem adaptador neste aparelho", "CentralWatchdog", false);
            return;
        }
        if (defaultAdapter.isEnabled()) {
            if (i3 > 1) {
                ae aeVar3 = ae.f3361a;
                ae.b("CentralWatchdog", "BT (" + str + "): ligado na tentativa " + i3, false);
            }
            W().edit().putBoolean("bt_desligado_por_nos", false).apply();
            return;
        }
        try {
            SystemClock.elapsedRealtime();
            ae aeVar4 = ae.f3361a;
            ae.b("CentralWatchdog", "BT (" + str + "): RELIGANDO (tentativa " + i3 + ')', false);
            zEnable = defaultAdapter.enable();
        } catch (Throwable th) {
            ae aeVar5 = ae.f3361a;
            StringBuilder sbL = b.l("BT (", str, "): enable() lançou ");
            sbL.append(th.getClass().getSimpleName());
            sbL.append(": ");
            sbL.append(th.getMessage());
            ae.b("CentralWatchdog", sbL.toString(), false);
            zEnable = false;
        }
        ae aeVar6 = ae.f3361a;
        StringBuilder sbL2 = b.l("BT (", str, "): estava desligado — enable() ");
        sbL2.append(zEnable ? "aceito" : "recusado");
        sbL2.append(" (tentativa ");
        sbL2.append(i3);
        sbL2.append(')');
        ae.b("CentralWatchdog", sbL2.toString(), false);
        if (i3 < this.f883t1) {
            this.f811a.postDelayed(new i2(this, str, i3, 6), this.f886u1);
        }
    }

    public final SharedPreferences W() {
        Object objA = this.f826e.a();
        g.d(objA, "getValue(...)");
        return (SharedPreferences) objA;
    }

    public final void X() {
        if (W().getBoolean("aeb_restore_on_boot", false) && this.C == null) {
            try {
                this.B = Car.createCar(this, null, 0L, new b2(this, 0));
            } catch (Throwable th) {
                Log.w("CentralWatchdog", "initAebObserver: " + th.getMessage());
                y0();
            }
        }
    }

    public final void Y() {
        if (this.f840i != null) {
            return;
        }
        try {
            this.f836h = Car.createCar(this, null, 0L, new b2(this, 4));
        } catch (Throwable th) {
            b.s(th, new StringBuilder("initDriveRegenCar falhou: "), "CentralWatchdog");
        }
    }

    public final void Z() {
        if (W().getBoolean("rear_cam_turn_signal_enabled", false) && this.H == null) {
            Log.i("CentralWatchdog", "rearCamTurnSignal: conectando ao Car... (tentativa " + (this.I + 1) + ')');
            try {
                this.G = Car.createCar(this, null, 0L, new b2(this, 5));
            } catch (Throwable th) {
                Log.w("CentralWatchdog", "initRearCamTurnSignal: " + th.getMessage());
                A0();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:41:0x0078  */
    /* JADX WARN: Code duplicated, block: B:42:0x007a  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v14 */
    /* JADX WARN: Type inference failed for: r10v16 */
    /* JADX WARN: Type inference failed for: r10v18 */
    /* JADX WARN: Type inference failed for: r10v19 */
    /* JADX WARN: Type inference failed for: r10v21 */
    /* JADX WARN: Type inference failed for: r10v23 */
    /* JADX WARN: Type inference failed for: r10v34 */
    /* JADX WARN: Type inference failed for: r10v35 */
    /* JADX WARN: Type inference failed for: r10v36 */
    /* JADX WARN: Type inference failed for: r10v37 */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v3 */
    public final void a(boolean z2) throws InterruptedException {
        boolean zBindService;
        w0.a aVar;
        ?? r10;
        ?? r11;
        ?? r12;
        w0.b bVar = w0.b.b;
        w0.b bVar2 = w0.b.f3372c;
        if (z2 && !p()) {
            ae aeVar = ae.f3361a;
            ae.b("CentralWatchdog", "AA trigger: sem telefone Android conectado — AP e Wi-Fi preservados", false);
            return;
        }
        if (z2 && !o0()) {
            ae aeVar2 = ae.f3361a;
            ae.b("CentralWatchdog", "AA trigger: casa ainda não pronta — abrindo o AP antes do convite (sem broadcast)", false);
            if (!U("AA trigger antes do convite", false)) {
                ae.b("CentralWatchdog", c1() ? "AA trigger: Wi‑Fi cliente venceu o rádio — convite pelo caminho histórico (ConnAdaptor arbitra)" : "AA trigger: AP não subiu pelo caminho direto — convite pelo caminho histórico, sem nova espera", false);
                z2 = false;
            }
        }
        int i3 = 0;
        while (z2 && i3 < 30000 && !o0()) {
            Thread.sleep(1000L);
            i3 += 1000;
        }
        boolean zO0 = o0();
        if (zO0 && z2) {
            int i4 = 0;
            while (true) {
                if (i4 >= this.O1) {
                    r10 = false;
                    r11 = false;
                    break;
                }
                Thread.sleep(1000L);
                i4 += 1000;
                if (this.f814a2 || b()) {
                    r11 = false;
                    r10 = true;
                    break;
                }
                if (this.f867o2 < 0) {
                    Integer numW = s.W(k.E0(c(6000, "grep -cE '[[:space:]]ap0$' /proc/net/arp")).toString());
                    if ((numW != null ? numW.intValue() : 0) > 0) {
                        r12 = true;
                    } else {
                        r12 = false;
                    }
                } else if (this.f867o2 > 0) {
                    r12 = true;
                } else {
                    r12 = false;
                }
                if (r12 != false) {
                    r10 = false;
                    r11 = true;
                    break;
                }
            }
            if (r10 == false && r11 != false) {
                int i5 = 0;
                while (i5 < this.P1 && r10 == false) {
                    Thread.sleep(1000L);
                    i5 += 1000;
                    r10 = this.f814a2 || b();
                }
                i4 += i5;
            }
            if (r10 == true) {
                ae aeVar3 = ae.f3361a;
                ae.b("CentralWatchdog", "AA trigger: o celular conectou sozinho em " + (i4 / 1000) + "s — sem convite", false);
                return;
            }
            ae aeVar4 = ae.f3361a;
            StringBuilder sb = new StringBuilder("AA trigger: ");
            StringBuilder sb2 = r11 != false ? new StringBuilder("celular no ap0 mas sem conexão em ") : new StringBuilder("nenhum celular no ap0 em ");
            sb2.append(i4 / 1000);
            sb2.append('s');
            sb.append(sb2.toString());
            sb.append(" — convidando");
            ae.b("CentralWatchdog", sb.toString(), false);
        }
        boolean z3 = !z2 || (this.W0 && p());
        boolean zM0 = M0();
        boolean z4 = this.f814a2 || b();
        if (((!z3 || zM0 || z4) ? false : true) != true) {
            ae aeVar5 = ae.f3361a;
            ae.b("CentralWatchdog", "AA trigger: convite cancelado na hora de enviar — carplay=" + zM0 + " gatilho=" + z3 + " aa=" + z4, false);
            return;
        }
        ae aeVar6 = ae.f3361a;
        StringBuilder sb3 = new StringBuilder("AA trigger: convite ao celular ");
        sb3.append(zO0 ? "com AP e WPP prontos" : "SEM a casa pronta (esperei " + (i3 / 1000) + "s) — vai assim mesmo");
        b.r(sb3, (i3 <= 0 || !zO0) ? "" : " após " + (i3 / 1000) + "s de espera", "CentralWatchdog", false);
        String string = this.f820c1;
        w0.c cVar = null;
        Object obj = null;
        if (string == null && ((string = W().getString("auto_connect_preferred_bt", null)) == null || k.m0(string))) {
            string = null;
        }
        try {
            try {
                ArrayBlockingQueue arrayBlockingQueue = new ArrayBlockingQueue(1);
                w0.c cVar2 = new w0.c(arrayBlockingQueue, 0);
                try {
                    Intent intent = new Intent("androidauto.device.service").setPackage("com.njda.adapter");
                    g.d(intent, "setPackage(...)");
                    try {
                        zBindService = bindService(intent, cVar2, 1);
                    } catch (Throwable th) {
                        Log.w("AaDeviceBinder", "bindService lançou: " + th.getMessage());
                        zBindService = false;
                    }
                    if (zBindService) {
                        IBinder iBinder = (IBinder) arrayBlockingQueue.poll(6000L, TimeUnit.MILLISECONDS);
                        if (iBinder == null) {
                            Log.w("AaDeviceBinder", "serviço não conectou em 6000ms");
                        } else {
                            List listG = t1.G(iBinder);
                            if (listG != null) {
                                if (listG.isEmpty()) {
                                    Log.i("AaDeviceBinder", "getDeviceList vazio — celular não pareado/reconhecido; nada a conectar");
                                } else {
                                    if (string != null) {
                                        for (Object obj2 : listG) {
                                            if (t.a0(((w0.a) obj2).b, string)) {
                                                obj = obj2;
                                                break;
                                            }
                                        }
                                        aVar = (w0.a) obj;
                                        if (aVar == null) {
                                        }
                                    } else {
                                        aVar = (w0.a) y1.g.a0(listG);
                                    }
                                    StringBuilder sb4 = new StringBuilder();
                                    sb4.append("conectando '");
                                    sb4.append(aVar.f3337d);
                                    sb4.append("' (");
                                    sb4.append(aVar.b);
                                    sb4.append(") — ");
                                    sb4.append(listG.size());
                                    sb4.append(" na lista, alvo do ACL=");
                                    if (string == null) {
                                        string = "(qualquer)";
                                    }
                                    sb4.append(string);
                                    Log.i("AaDeviceBinder", sb4.toString());
                                    bVar = t1.s(iBinder, aVar) ? w0.b.f3371a : bVar2;
                                }
                                try {
                                    unbindService(cVar2);
                                } catch (Throwable unused) {
                                }
                            }
                        }
                        unbindService(cVar2);
                        bVar = bVar2;
                    } else {
                        Log.w("AaDeviceBinder", "bindService recusou (androidauto.device.service em com.njda.adapter)");
                        bVar = bVar2;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    cVar = cVar2;
                    try {
                        Log.w("AaDeviceBinder", "connect falhou: " + th.getClass().getSimpleName() + ": " + th.getMessage());
                        if (cVar != null) {
                            unbindService(cVar);
                        }
                    } catch (Throwable th3) {
                        if (cVar != null) {
                            try {
                                unbindService(cVar);
                            } catch (Throwable unused2) {
                            }
                        }
                        throw th3;
                    }
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (Throwable unused3) {
        }
        int iOrdinal = bVar.ordinal();
        if (iOrdinal == 0) {
            this.Q1 = System.currentTimeMillis();
            ae aeVar7 = ae.f3361a;
            ae.b("CentralWatchdog", "AA trigger: connectDevice aceito por binder (sem broadcast)", false);
        } else if (iOrdinal == 1) {
            ae aeVar8 = ae.f3361a;
            ae.b("CentralWatchdog", "AA trigger: telefone não reconhecido pelo ConnAdaptor — sem broadcast de conexão", false);
        } else {
            if (iOrdinal != 2) {
                throw new q();
            }
            ae aeVar9 = ae.f3361a;
            ae.b("CentralWatchdog", "AA trigger: binder não serviu — caindo pro broadcast", false);
            try {
                sendBroadcast(new Intent("com.bd.systemui.aa.foreground"));
                ae.b("CentralWatchdog", "AA trigger: broadcast com.bd.systemui.aa.foreground enviado", false);
            } catch (Exception e3) {
                b.o(e3, new StringBuilder("AA trigger: broadcast falhou: "), "CentralWatchdog");
            }
        }
    }

    public final void a0() {
        if (W().getBoolean("recirc_guard_enabled", false) && this.f884u == null) {
            Log.i("CentralWatchdog", "recircGuard: conectando ao Car... (tentativa " + (this.f887v + 1) + ')');
            try {
                this.f882t = Car.createCar(this, null, 0L, new b2(this, 3));
            } catch (Throwable th) {
                Log.w("CentralWatchdog", "initRecircGuard: " + th.getMessage());
                B0();
            }
        }
    }

    public final void b0() {
        if (W().getBoolean("keyserver_bind_enabled", false) && this.f875r == null) {
            Log.i("CentralWatchdog", "swcModes: conectando ao Car... (tentativa " + (this.f879s + 1) + ')');
            try {
                this.f872q = Car.createCar(this, null, 0L, new b2(this, 2));
            } catch (Throwable th) {
                Log.w("CentralWatchdog", "initSwcModesControl: " + th.getMessage());
                C0();
            }
        }
    }

    public final void b1(File file, x2 x2Var) {
        long j3 = x2Var.f4488a;
        PackageInfo packageArchiveInfo = getPackageManager().getPackageArchiveInfo(file.getAbsolutePath(), 64);
        if (packageArchiveInfo == null) {
            throw new IllegalStateException("APK ilegível");
        }
        if (!g.a(packageArchiveInfo.packageName, getPackageName())) {
            throw new IllegalStateException("APK de outro pacote: " + packageArchiveInfo.packageName);
        }
        long longVersionCode = packageArchiveInfo.getLongVersionCode();
        if (longVersionCode != j3) {
            throw new IllegalStateException("APK é vc=" + longVersionCode + ", manifesto prometeu " + j3);
        }
        Signature[] signatureArr = packageArchiveInfo.signatures;
        if (signatureArr == null) {
            signatureArr = new Signature[0];
        }
        ArrayList arrayList = new ArrayList(signatureArr.length);
        for (Signature signature : signatureArr) {
            byte[] bArrDigest = MessageDigest.getInstance("SHA-256").digest(signature.toByteArray());
            g.d(bArrDigest, "digest(...)");
            arrayList.add(f.b0(bArrDigest, new o(21)));
        }
        if (!arrayList.contains("c8a2e9bccf597c2fb6dc66bee293fc13f2fc47ec77bc6b2b0d52c11f51192ab8")) {
            throw new IllegalStateException("APK não assinado com a nossa chave de plataforma");
        }
    }

    public final void c0() {
        if (this.f856m != null) {
            return;
        }
        Log.i("CentralWatchdog", "windowDriver: conectando ao Car... (tentativa " + (this.t2 + 1) + ')');
        try {
            this.f852l = Car.createCar(this, null, 0L, new b2(this, 6));
        } catch (Throwable th) {
            Log.w("CentralWatchdog", "initWindowDriverTrigger: " + th.getMessage());
            D0();
        }
    }

    public final boolean c1() {
        try {
            Object systemService = getApplicationContext().getSystemService("wifi");
            g.c(systemService, "null cannot be cast to non-null type android.net.wifi.WifiManager");
            WifiManager wifiManager = (WifiManager) systemService;
            return wifiManager.isWifiEnabled() || wifiManager.getWifiState() == 2;
        } catch (Throwable unused) {
            return false;
        }
    }

    public final void d(String str) {
        try {
            Object systemService = getApplicationContext().getSystemService("wifi");
            g.c(systemService, "null cannot be cast to non-null type android.net.wifi.WifiManager");
            WifiManager wifiManager = (WifiManager) systemService;
            Method declaredMethod = wifiManager.getClass().getDeclaredMethod("startSoftAp", Class.forName("android.net.wifi.WifiConfiguration"));
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(wifiManager, null);
            ae aeVar = ae.f3361a;
            ae.b("CentralWatchdog", str + ": startSoftAp chamado (mesmo caminho do ConnAdaptor)", false);
        } catch (Throwable th) {
            ae aeVar2 = ae.f3361a;
            ae.b("CentralWatchdog", str + ": startSoftAp FALHOU — " + th.getClass().getSimpleName() + ": " + th.getMessage(), false);
        }
    }

    public final void d0(BluetoothDevice bluetoothDevice, String str) {
        String address;
        String name;
        e eVar;
        long j3;
        String str2;
        if (!K()) {
            Log.i("CentralWatchdog", "CarPlay identity (" + str + "): não roda — CarPlay desligado no modo/toggle");
            return;
        }
        try {
            address = bluetoothDevice.getAddress();
        } catch (Throwable unused) {
            address = null;
        }
        if (address == null) {
            return;
        }
        try {
            name = bluetoothDevice.getName();
        } catch (Throwable unused2) {
            name = null;
        }
        String string = W().getString("auto_connect_preferred_bt", null);
        if (string != null) {
            k.m0(string);
        }
        if (!l0(bluetoothDevice)) {
            Log.i("CentralWatchdog", "CarPlay identity (" + str + "): " + address + " não parece Apple — ignorado");
            return;
        }
        if (this.W0 && (str2 = this.f820c1) != null && !str2.equalsIgnoreCase(address)) {
            ae aeVar = ae.f3361a;
            b.r(b.l("CarPlay identity (", str, "): adiado — Android Auto em sessão com "), this.f820c1, "CentralWatchdog", false);
            return;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        while (true) {
            eVar = this.M1;
            boolean zIsEmpty = eVar.isEmpty();
            j3 = this.L1;
            if (zIsEmpty) {
                break;
            }
            if (!eVar.isEmpty()) {
                if (jElapsedRealtime - ((Number) eVar.b[eVar.f4659a]).longValue() <= j3) {
                    break;
                } else {
                    eVar.removeFirst();
                }
            } else {
                throw new NoSuchElementException("ArrayDeque is empty.");
            }
        }
        if (eVar.f4660c >= this.K1) {
            ae aeVar2 = ae.f3361a;
            StringBuilder sbL = b.l("CarPlay identity (", str, "): recusado — ");
            sbL.append(eVar.f4660c);
            sbL.append(" injeções em ");
            sbL.append(j3 / ((long) 1000));
            sbL.append("s (teto anti-loop)");
            ae.b("CentralWatchdog", sbL.toString(), false);
            return;
        }
        HashMap map = this.G1;
        Long l3 = (Long) map.get(address);
        long jLongValue = jElapsedRealtime - (l3 != null ? l3.longValue() : 0L);
        if (jLongValue >= (g.a(str, "ACTION_UUID") ? this.J1 : this.H1)) {
            map.put(address, Long.valueOf(jElapsedRealtime));
            eVar.addLast(Long.valueOf(jElapsedRealtime));
            new Thread(new z(this, address, name, str, 2)).start();
        } else {
            ae aeVar3 = ae.f3361a;
            StringBuilder sbL2 = b.l("CarPlay identity (", str, "): ignorado — injeção há ");
            sbL2.append(jLongValue / ((long) 1000));
            sbL2.append("s ");
            b.r(sbL2, g.a(str, "ACTION_UUID") ? "(debounce do UUID)" : "(carência anti-colisão)", "CentralWatchdog", false);
        }
    }

    public final void e0(int i3, String str) {
        BluetoothAdapter defaultAdapter;
        boolean zK = K();
        int i4 = 0;
        if (i3 == 0) {
            ae aeVar = ae.f3361a;
            StringBuilder sbL = b.l("CarPlay identity (", str, "): entrada, ");
            sbL.append(P());
            ae.b("CentralWatchdog", sbL.toString(), false);
        }
        if (zK) {
            Set<BluetoothDevice> bondedDevices = null;
            try {
                defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            } catch (Throwable unused) {
                defaultAdapter = null;
            }
            if (defaultAdapter != null) {
                try {
                    if (defaultAdapter.isEnabled()) {
                        bondedDevices = defaultAdapter.getBondedDevices();
                    }
                } catch (Throwable unused2) {
                }
            }
            if (bondedDevices == null || bondedDevices.isEmpty()) {
                if (i3 >= 18) {
                    ae aeVar2 = ae.f3361a;
                    b.p("CarPlay identity (", str, "): DESISTINDO — Bluetooth nunca ficou pronto em ~3 min. O CarPlay vai depender do próximo ACTION_UUID do iPhone.", "CentralWatchdog", false);
                    return;
                }
                if (i3 == 0 || i3 % 6 == 0) {
                    ae aeVar3 = ae.f3361a;
                    StringBuilder sbL2 = b.l("CarPlay identity (", str, "): Bluetooth ainda não pronto (tentativa ");
                    sbL2.append(i3 + 1);
                    sbL2.append("), aguardando");
                    ae.b("CentralWatchdog", sbL2.toString(), false);
                }
                this.f811a.postDelayed(new i2(this, i3, str, 7), 10000L);
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (Object obj : bondedDevices) {
                BluetoothDevice bluetoothDevice = (BluetoothDevice) obj;
                g.b(bluetoothDevice);
                if (l0(bluetoothDevice)) {
                    arrayList.add(obj);
                }
            }
            if (arrayList.isEmpty()) {
                ae aeVar4 = ae.f3361a;
                StringBuilder sbL3 = b.l("CarPlay identity (", str, "): nenhum aparelho Apple pareado (pareados=");
                sbL3.append(bondedDevices.size());
                sbL3.append(')');
                ae.b("CentralWatchdog", sbL3.toString(), false);
                return;
            }
            int size = arrayList.size();
            while (i4 < size) {
                Object obj2 = arrayList.get(i4);
                i4++;
                BluetoothDevice bluetoothDevice2 = (BluetoothDevice) obj2;
                g.b(bluetoothDevice2);
                d0(bluetoothDevice2, str);
            }
        }
    }

    public final void f0() {
        List listM0;
        synchronized (this.f877r1) {
            Collection collectionValues = this.f877r1.values();
            g.d(collectionValues, "<get-values>(...)");
            listM0 = y1.g.m0(collectionValues);
            this.f877r1.clear();
        }
        Iterator it = listM0.iterator();
        while (it.hasNext()) {
            try {
                ((h2.a) it.next()).a();
            } catch (Throwable th) {
                b.s(th, new StringBuilder("ação pós-monitor: "), "CentralWatchdog");
            }
        }
    }

    public final void g0(int i3, String str) {
        BluetoothAdapter defaultAdapter;
        if (n("BT (" + str + ')', new q2(this, str, i3))) {
            return;
        }
        if (c1()) {
            ae aeVar = ae.f3361a;
            b.p("BT (", str, "): não ligo sozinho — o WiFi cliente está no ar e a rádio é uma só", "CentralWatchdog", false);
            return;
        }
        try {
            defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        } catch (Throwable unused) {
            defaultAdapter = null;
        }
        if (defaultAdapter == null || defaultAdapter.isEnabled()) {
            V(1, str);
        } else if (M()) {
            new Thread(new i2(this, i3, str, 5)).start();
        } else {
            V(1, str);
        }
    }

    public final void h0(String str) {
        a4 a4Var;
        int i3 = 0;
        if (W().getBoolean("ap_sempre_aberto", false)) {
            if (n("AP sempre aberto (" + str + ')', new z1(this, str, i3))) {
                return;
            }
            boolean z2 = c1() || (str.equals("boot") && W().getBoolean("wifi_cliente_ativo_antes", false)) || (!str.equals("conexão BT") && W().getBoolean("wifi_auto_enable_on_wake", false));
            if (W().getBoolean("ap_sempre_aberto", false)) {
                a4Var = z2 ? a4.b : a4.f3345a;
            } else {
                a4Var = a4.f3346c;
            }
            int iOrdinal = a4Var.ordinal();
            if (iOrdinal != 0) {
                if (iOrdinal != 1) {
                    if (iOrdinal != 2) {
                        throw new q();
                    }
                    return;
                } else {
                    ae aeVar = ae.f3361a;
                    b.p("AP sempre aberto (", str, "): abrindo com o WiFi cliente no ar — ele deve cair por ~28 s e voltar sozinho (convivência medida em 25/09)", "CentralWatchdog", false);
                }
            }
            new Thread(new a2(this, str, i3)).start();
        }
    }

    public final void i0(String str) {
        if (W().getBoolean("sombra_projecao", false)) {
            this.Y1 = SystemClock.elapsedRealtime();
            Log.i("CentralWatchdog", "sombra: avanço observado (" + str + ')');
        }
    }

    public final void j0(String str) {
        if (this.f866o1 != 0) {
            return;
        }
        this.f866o1 = SystemClock.elapsedRealtime();
        ae aeVar = ae.f3361a;
        StringBuilder sbL = b.l("CarplayMonitor pronto (", str, ") ");
        sbL.append((this.f866o1 - this.f870p1) / ((long) 1000));
        sbL.append("s após o serviço subir — liberando BT e AP");
        ae.b("CentralWatchdog", sbL.toString(), false);
        this.f811a.post(new j2(this, 8));
    }

    public final boolean l0(BluetoothDevice bluetoothDevice) {
        String name;
        UUID uuid;
        String string;
        try {
            ParcelUuid[] uuids = bluetoothDevice.getUuids();
            if (uuids != null) {
                for (ParcelUuid parcelUuid : uuids) {
                    if (parcelUuid != null && (uuid = parcelUuid.getUuid()) != null && (string = uuid.toString()) != null && string.equalsIgnoreCase(this.N1)) {
                        return true;
                    }
                }
            }
        } catch (Throwable unused) {
        }
        try {
            name = bluetoothDevice.getName();
        } catch (Throwable unused2) {
            name = null;
        }
        return (name != null && k.e0(name, "iphone", true)) || (name != null && k.e0(name, "ipad", true));
    }

    public final boolean m0(String str) throws InterruptedException {
        String string;
        String string2 = k.E0(c(5000, "setenforce 0 2>/dev/null; getenforce")).toString();
        if (!v()) {
            ae aeVar = ae.f3361a;
            ae.b("CentralWatchdog", "wlan1 (" + str + "): ausente e ap0 fechado (SELinux=" + string2 + ") — o adapter cria quando o AP subir", false);
            return false;
        }
        String string3 = k.E0(c(15000, this.f895y1)).toString();
        boolean Z = t.Z(string3, "sim", false);
        ae aeVar2 = ae.f3361a;
        if (Z) {
            string = "wlan1 (" + str + "): criada por nós com o script do adapter (MAC do ap0 clonado, SELinux=" + string2 + ')';
        } else {
            StringBuilder sbM = b.m("wlan1 (", str, "): o script não criou (SELinux=", string2, ", saída: ");
            sbM.append(k.C0(80, string3));
            sbM.append(") — caio no conserto pelo adapter");
            string = sbM.toString();
        }
        ae.b("CentralWatchdog", string, false);
        if (Z) {
            v0(str);
        }
        return Z;
    }

    public final boolean n(String str, h2.a aVar) {
        boolean zContainsKey;
        if (!O()) {
            return false;
        }
        synchronized (this.f877r1) {
            zContainsKey = this.f877r1.containsKey(str);
            this.f877r1.put(str, aVar);
        }
        if (!zContainsKey) {
            ae aeVar = ae.f3361a;
            ae.b("CentralWatchdog", str + ": adiado até o CarplayMonitor ficar pronto (boot com CarPlay)", false);
        }
        if (!this.f881s1) {
            this.f881s1 = true;
            long jElapsedRealtime = (this.f870p1 + this.q1) - SystemClock.elapsedRealtime();
            if (jElapsedRealtime < 0) {
                jElapsedRealtime = 0;
            }
            this.f811a.postDelayed(new x1(this, 24), jElapsedRealtime + 500);
        }
        return true;
    }

    public final void o(int i3) {
        this.f811a.postDelayed(new e2(this, i3, 5), i3 == 1 ? this.I2 : this.J2);
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:243:0x07e9  */
    @Override // android.app.Service
    public final void onCreate() {
        File filesDir;
        long longVersionCode;
        String str;
        String str2;
        boolean z2;
        boolean z3;
        String str3;
        te teVar;
        boolean z4;
        String absolutePath;
        boolean z5;
        BluetoothAdapter defaultAdapter;
        boolean zDisable;
        e4 e4Var = e4.f3523a;
        e4 e4Var2 = e4.b;
        super.onCreate();
        ae aeVar = ae.f3361a;
        if (ae.b == null) {
            try {
                filesDir = getExternalFilesDir(null);
                if (filesDir == null) {
                    filesDir = getFilesDir();
                }
            } catch (Throwable unused) {
                filesDir = getFilesDir();
            }
            ae.b = filesDir;
        }
        U2 = true;
        V2 = this;
        f1 f1Var = new f1(this);
        f1Var.b.registerOnSharedPreferenceChangeListener(f1Var.f3575l);
        f1Var.d();
        this.f869p0 = f1Var;
        String string = getString(R.string.k_watchdog_channel);
        g.d(string, "getString(...)");
        String string2 = getString(R.string.app_name);
        g.d(string2, "getString(...)");
        startForeground(77, t1.E(this, "central_watchdog", string, string2, android.R.drawable.ic_menu_compass, getString(R.string.k_watchdog_active), 32));
        wd wdVar = wd.f4450a;
        int i3 = 7;
        if (wd.a(this)) {
            f1 f1Var2 = this.f869p0;
            if (f1Var2 != null) {
                f1Var2.a();
            }
            this.f869p0 = null;
            ee.f3548a.b(this);
            if (W().getBoolean("phone_sync_enabled", false)) {
                try {
                    startForegroundService(new Intent(this, (Class<?>) PhoneSyncService.class));
                } catch (Exception unused2) {
                }
            }
            wd.i(this);
            wd.l(this);
            wd.e(this);
            this.f811a.postDelayed(new a3(this, i3), 15000L);
            return;
        }
        int i4 = 2;
        new Handler(Looper.getMainLooper()).post(new e.l(getApplicationContext(), i4));
        try {
            Object systemService = getSystemService("window");
            g.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
            this.f = (WindowManager) systemService;
            View view = new View(this);
            view.setBackgroundColor(0);
            this.f833g = view;
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(1, 1, 2038, 280, -2);
            layoutParams.gravity = 8388659;
            layoutParams.x = 0;
            layoutParams.y = 0;
            WindowManager windowManager = this.f;
            g.b(windowManager);
            windowManager.addView(this.f833g, layoutParams);
        } catch (Exception e3) {
            b.o(e3, new StringBuilder("Overlay invisível falhou (sem SYSTEM_ALERT_WINDOW?): "), "CentralWatchdog");
        }
        registerReceiver(this.Q, new IntentFilter("android.intent.action.SCREEN_ON"));
        try {
            registerReceiver(this.P, new IntentFilter("android.intent.action.ACTION_SHUTDOWN"));
        } catch (Exception e4) {
            b.o(e4, new StringBuilder("não consegui observar o desligamento: "), "CentralWatchdog");
        }
        registerReceiver(this.Z, new IntentFilter("android.net.wifi.STATE_CHANGE"));
        if (this.f862n1 == null) {
            c3 c3Var = new c3(this, 6);
            try {
                registerReceiver(c3Var, new IntentFilter("android.bluetooth.adapter.action.STATE_CHANGED"));
                this.f862n1 = c3Var;
            } catch (Throwable th) {
                ae aeVar2 = ae.f3361a;
                ae.b("CentralWatchdog", "não deu pra observar o estado do Bluetooth: " + th.getMessage(), false);
            }
        }
        this.f854l1 = false;
        try {
            longVersionCode = getPackageManager().getPackageInfo(getPackageName(), 0).getLongVersionCode();
        } catch (Exception unused3) {
            longVersionCode = 0;
        }
        long j3 = W().getLong("vc_ultimo_arranque", 0L);
        boolean z6 = (j3 == 0 || longVersionCode == 0 || j3 == longVersionCode) ? false : true;
        if (longVersionCode != 0 && j3 != longVersionCode) {
            W().edit().putLong("vc_ultimo_arranque", longVersionCode).apply();
        }
        boolean z7 = z6 && W().getBoolean("wifi_cliente_ativo_antes", false);
        if (z7) {
            this.Q2 = SystemClock.elapsedRealtime() + 600000;
        }
        if (z6) {
            ae aeVar3 = ae.f3361a;
            StringBuilder sb = new StringBuilder("arranque logo após update (");
            sb.append(j3);
            sb.append(" → ");
            sb.append(longVersionCode);
            sb.append("): ");
            b.r(sb, z7 ? "havia WiFi cliente ligado — não preparo projeção (BT/AP)" : "não havia WiFi cliente — sigo o arranque normal", "CentralWatchdog", false);
        }
        this.f811a.postDelayed(new x1(this, i4), 4000L);
        this.f811a.postDelayed(new j2(this, 14), 5000L);
        if (!z7 && SystemClock.elapsedRealtime() <= 180000 && O()) {
            try {
                defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            } catch (Throwable unused4) {
                defaultAdapter = null;
            }
            if (defaultAdapter != null && defaultAdapter.isEnabled()) {
                this.f858m1 = SystemClock.elapsedRealtime() + ((long) 8000);
                W().edit().putBoolean("bt_desligado_por_nos", true).apply();
                try {
                    zDisable = defaultAdapter.disable();
                } catch (Throwable unused5) {
                    zDisable = false;
                }
                ae aeVar4 = ae.f3361a;
                ae.b("CentralWatchdog", "BT (boot com CarPlay): desligado até o CarplayMonitor ficar pronto — disable() ".concat(zDisable ? "aceito" : "recusado"), false);
            }
        }
        int i5 = 22;
        if (z7) {
            ae aeVar5 = ae.f3361a;
            ae.b("CentralWatchdog", "BT: adiado para a próxima partida (arranque pós-update)", false);
        } else if (W().getBoolean("bt_desligado_por_nos", false)) {
            ae aeVar6 = ae.f3361a;
            ae.b("CentralWatchdog", "BT: havia marca de desligamento nosso pendente — devolvendo agora", false);
            this.f811a.postDelayed(new j2(this, i5), 2000L);
        } else {
            this.f811a.postDelayed(new j2(this, 24), 8000L);
        }
        this.f811a.postDelayed(new j2(this, 25), 25000L);
        if (!z7) {
            this.f811a.postDelayed(new j2(this, 26), 2000L);
        }
        if (W().getBoolean("ttl_65_ativo", false)) {
            this.f811a.postDelayed(new j2(this, 27), 30000L);
        }
        this.f811a.postDelayed(new j2(this, 28), this.f842i1);
        this.f811a.postDelayed(new j2(this, 29), this.f838h1);
        long jCurrentTimeMillis = System.currentTimeMillis() - SystemClock.elapsedRealtime();
        long j4 = W().getLong("last_boot_epoch", 0L);
        int i6 = (j4 > 0L ? 1 : (j4 == 0L ? 0 : -1));
        if (i6 == 0 || Math.abs(jCurrentTimeMillis - j4) > 60000) {
            boolean z8 = W().getBoolean("boot_stable", true);
            List listU = f.U(new String[]{"sys.boot.reason", "persist.sys.boot.reason", "ro.boot.bootreason"});
            ArrayList arrayList = new ArrayList(y1.i.X(listU));
            Iterator it = listU.iterator();
            while (it.hasNext()) {
                arrayList.add(p0((String) it.next()));
            }
            ArrayList arrayList2 = new ArrayList();
            int size = arrayList.size();
            int i7 = 0;
            while (i7 < size) {
                Object obj = arrayList.get(i7);
                i7++;
                int i8 = i6;
                String str4 = (String) obj;
                if (k.m0(str4)) {
                    str3 = str;
                } else {
                    str3 = str;
                    if (!str4.equals("0")) {
                        arrayList2.add(obj);
                    }
                }
                i6 = i8;
                str = str3;
            }
            int i9 = i6;
            str2 = str;
            String lowerCase = y1.g.e0(arrayList2, ",", null, 62).toLowerCase(Locale.ROOT);
            g.d(lowerCase, "toLowerCase(...)");
            Long lValueOf = i9 == 0 ? null : Long.valueOf(jCurrentTimeMillis - j4);
            e4 e4Var3 = lValueOf == null ? e4.f3524c : (lValueOf.longValue() < 600000 && !z8) ? e4Var : e4Var2;
            if (e4Var3 != e4Var2 || z8 || lValueOf == null) {
                z2 = false;
            } else {
                ae aeVar7 = ae.f3361a;
                z2 = false;
                ae.b("CentralWatchdog", "boot anterior durou " + (lValueOf.longValue() / ((long) 1000)) + "s — nao conto como curto (a flag de estabilidade dizia que nao estabilizou; quem manda e a duracao medida)", false);
            }
            if (e4Var3 == e4Var) {
                int i10 = W().getInt("boots_curtos_seguidos", z2 ? 1 : 0) + 1;
                Long l3 = lValueOf;
                List listU2 = f.U(new String[]{"panic", "watchdog", "hw_reset", "wdt", "hard_reset"});
                if (listU2.isEmpty()) {
                    z3 = false;
                    break;
                }
                Iterator it2 = listU2.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        if (k.e0(lowerCase, (String) it2.next(), false)) {
                            z3 = true;
                            break;
                        }
                    } else {
                        z3 = false;
                        break;
                    }
                }
                if (i10 >= 2 || z3) {
                    W().edit().putBoolean("crash_detected", true).putBoolean("auto_apply_paused", true).putInt("boots_estaveis_seguidos", 0).putInt("boots_curtos_seguidos", i10).apply();
                    ae aeVar8 = ae.f3361a;
                    StringBuilder sbK = b.k("TRAVA ARMADA: ", i10, " boot(s) curto(s) seguidos");
                    sbK.append(z3 ? " + motivo indica queda" : "");
                    sbK.append(" (motivo='");
                    if (k.m0(lowerCase)) {
                        lowerCase = "(vazio)";
                    }
                    sbK.append(lowerCase);
                    sbK.append("') — aplicação automática suspensa");
                    z2 = false;
                    ae.b("CentralWatchdog", sbK.toString(), false);
                } else {
                    W().edit().putInt("boots_curtos_seguidos", i10).apply();
                    ae aeVar9 = ae.f3361a;
                    StringBuilder sb2 = new StringBuilder("boot anterior foi curto (");
                    sb2.append(l3 != null ? Long.valueOf(l3.longValue() / ((long) 1000)) : "?");
                    sb2.append("s) (");
                    sb2.append(i10);
                    sb2.append("/2, motivo='");
                    if (k.m0(lowerCase)) {
                        lowerCase = "(vazio)";
                    }
                    sb2.append(lowerCase);
                    sb2.append("') — isolado ainda não arma a trava");
                    z2 = false;
                    ae.b("CentralWatchdog", sb2.toString(), false);
                }
            } else if (W().getBoolean("auto_apply_paused", z2)) {
                int i11 = W().getInt("boots_estaveis_seguidos", z2 ? 1 : 0) + 1;
                if (i11 >= 3) {
                    W().edit().putBoolean("auto_apply_paused", z2).putBoolean("crash_detected", z2).putInt("boots_estaveis_seguidos", z2 ? 1 : 0).putInt("boots_curtos_seguidos", z2 ? 1 : 0).apply();
                    ae aeVar10 = ae.f3361a;
                    ae.b("CentralWatchdog", "TRAVA SOLTA sozinha: " + i11 + " boots estáveis seguidos — aplicação automática religada", z2);
                } else {
                    W().edit().putInt("boots_estaveis_seguidos", i11).apply();
                    ae aeVar11 = ae.f3361a;
                    z2 = false;
                    ae.b("CentralWatchdog", "trava ainda armada: " + i11 + "/3 boots estáveis", false);
                }
            } else if (z8 && W().getInt("boots_curtos_seguidos", z2 ? 1 : 0) != 0) {
                W().edit().putInt("boots_curtos_seguidos", z2 ? 1 : 0).apply();
            }
            W().edit().putLong("last_boot_epoch", jCurrentTimeMillis).putBoolean("boot_stable", z2).apply();
        } else {
            str2 = "phone_sync_enabled";
        }
        new Thread(new r0(2, this)).start();
        k5 k5Var = k5.f3786a;
        SharedPreferences sharedPreferencesW = W();
        k5.h(this);
        int i12 = 0;
        new Handler(Looper.getMainLooper()).postDelayed(new j5(sharedPreferencesW, i12), 12000L);
        k5.m(this, W());
        this.f811a.postDelayed(new p2(this, i12), 18000L);
        registerReceiver(this.J0, new IntentFilter("com.ex.auto.ACTION_APPLY_STATUS_BRIGHTNESS"));
        s0();
        registerReceiver(this.R0, new IntentFilter("com.ex.auto.ACTION_APPLY_STATUS_WIFI"));
        try {
            registerReceiver(this.F1, new IntentFilter("android.net.wifi.WIFI_AP_STATE_CHANGED"));
        } catch (Throwable th2) {
            ae aeVar12 = ae.f3361a;
            ae.b("CentralWatchdog", "não deu pra ouvir o estado do AP: " + th2.getMessage(), false);
        }
        t0();
        if (this.f813a1 == null) {
            c3 c3Var2 = new c3(this, 2);
            this.f813a1 = c3Var2;
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.bluetooth.device.action.ACL_CONNECTED");
            intentFilter.addAction("android.bluetooth.device.action.ACL_DISCONNECTED");
            intentFilter.addAction("android.bluetooth.device.action.UUID");
            intentFilter.addAction("android.bluetooth.device.action.BOND_STATE_CHANGED");
            try {
                registerReceiver(c3Var2, intentFilter);
            } catch (Exception e5) {
                b.o(e5, new StringBuilder("aaBtReceiver: "), "CentralWatchdog");
                this.f813a1 = null;
            }
        }
        int i13 = 4;
        if (this.f843i2 == null) {
            c3 c3Var3 = new c3(this, i13);
            this.f843i2 = c3Var3;
            try {
                registerReceiver(c3Var3, new IntentFilter("com.njda.carplay.broadcast"));
            } catch (Exception e6) {
                b.o(e6, new StringBuilder("carplayStateReceiver: "), "CentralWatchdog");
                this.f843i2 = null;
            }
        }
        if (this.g2 == null) {
            c3 c3Var4 = new c3(this, 3);
            this.g2 = c3Var4;
            try {
                registerReceiver(c3Var4, new IntentFilter("com.njda.aauto.broadcast"));
            } catch (Exception e7) {
                b.o(e7, new StringBuilder("aaStateReceiver: "), "CentralWatchdog");
                this.g2 = null;
            }
        }
        int i14 = 10;
        new Thread(new x1(this, i14)).start();
        r0();
        this.f832f2 = (this.g2 == null || this.f843i2 == null) ? false : true;
        if (this.f878r2 == null) {
            try {
                Object systemService2 = getSystemService("wifi");
                g.c(systemService2, "null cannot be cast to non-null type android.net.wifi.WifiManager");
                Class<?> cls = Class.forName("android.net.wifi.WifiManager$SoftApCallback");
                Object objNewProxyInstance = Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InvocationHandler() { // from class: w0.s2
                    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
                    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
                    @Override // java.lang.reflect.InvocationHandler
                    public final Object invoke(Object obj2, Method method, Object[] objArr) {
                        CentralWatchdogService centralWatchdogService = this.f4195a;
                        int[] iArr = CentralWatchdogService.S2;
                        String name = method.getName();
                        if (name != null) {
                            switch (name.hashCode()) {
                                case -1815233389:
                                    if (name.equals("onNumClientsChanged")) {
                                        Object objA0 = objArr != null ? y1.f.a0(objArr, 0) : null;
                                        Integer num = objA0 instanceof Integer ? (Integer) objA0 : null;
                                        int iIntValue = num != null ? num.intValue() : 0;
                                        if (iIntValue != centralWatchdogService.f867o2) {
                                            ae aeVar13 = ae.f3361a;
                                            ae.b("CentralWatchdog", "hotspot: " + iIntValue + " celular(es) associado(s)", false);
                                        }
                                        if (iIntValue == 0 && centralWatchdogService.f867o2 > 0) {
                                            centralWatchdogService.f871p2 = System.currentTimeMillis();
                                        }
                                        centralWatchdogService.f867o2 = iIntValue;
                                    }
                                    break;
                                case -1776922004:
                                    if (name.equals("toString")) {
                                        return "SoftApCallbackProxy";
                                    }
                                    break;
                                case -1415467934:
                                    if (name.equals("onStateChanged")) {
                                        Object objA1 = objArr != null ? y1.f.a0(objArr, 0) : null;
                                        Integer num2 = objA1 instanceof Integer ? (Integer) objA1 : null;
                                        if (num2 != null && num2.intValue() == 11) {
                                            centralWatchdogService.f867o2 = 0;
                                            return null;
                                        }
                                    }
                                    break;
                                case -1295482945:
                                    if (name.equals("equals")) {
                                        return Boolean.FALSE;
                                    }
                                    break;
                                case 147696667:
                                    if (name.equals("hashCode")) {
                                        return Integer.valueOf(System.identityHashCode(centralWatchdogService));
                                    }
                                    break;
                            }
                        }
                        return null;
                    }
                });
                WifiManager.class.getMethod("registerSoftApCallback", cls, Handler.class).invoke((WifiManager) systemService2, objNewProxyInstance, this.f811a);
                this.f878r2 = objNewProxyInstance;
                Log.i("CentralWatchdog", "SoftApCallback registrado (contagem de clientes do hotspot por evento)");
            } catch (Throwable th3) {
                ae aeVar13 = ae.f3361a;
                ae.b("CentralWatchdog", "SoftApCallback indisponível (" + th3.getClass().getSimpleName() + ") — usando tráfego do ap0", false);
            }
        }
        try {
            lh.f3858a.a(this, this.O0);
            if (c1()) {
                this.L0 = SystemClock.elapsedRealtime();
            }
        } catch (Throwable th4) {
            b.s(th4, new StringBuilder("carimbo da STA: "), "CentralWatchdog");
        }
        int i15 = 15;
        this.f811a.postDelayed(new x1(this, i15), 3000L);
        this.f811a.postDelayed(new x1(this, 22), 5000L);
        this.f811a.postDelayed(new x1(this, 25), 20000L);
        this.f811a.postDelayed(new j2(this, 0), 20000L);
        this.f811a.postDelayed(new j2(this, i13), 20000L);
        this.f811a.postDelayed(new j2(this, 7), 20000L);
        this.f811a.postDelayed(new j2(this, 11), 20000L);
        this.F = SystemClock.elapsedRealtime();
        this.f811a.postDelayed(new j2(this, 12), 20000L);
        if (W().getBoolean("rvc_black_bg", false)) {
            this.f811a.postDelayed(new j2(this, 13), 40000L);
        }
        if (W().getBoolean("vcodec_60fps", false)) {
            this.f811a.postDelayed(new j2(this, i15), 45000L);
        }
        String string3 = W().getString("jit_restaurar", null);
        Pattern patternCompile = Pattern.compile("^wifi=([01]),ap=([01])$");
        g.d(patternCompile, "compile(...)");
        if (string3 == null) {
            teVar = null;
        } else {
            Matcher matcher = patternCompile.matcher(string3);
            g.d(matcher, "matcher(...)");
            o2.e eVar = !matcher.matches() ? null : new o2.e(matcher, string3);
            if (eVar == null) {
                teVar = null;
            } else {
                teVar = new te(g.a(((d) eVar.a()).get(1), "1"), g.a(((d) eVar.a()).get(2), "1"));
            }
        }
        if (teVar != null) {
            W().edit().remove("jit_restaurar").apply();
            z4 = false;
            this.f811a.postDelayed(new o2(teVar, this, 0), 15000L);
        } else {
            z4 = false;
        }
        if (W().getBoolean("perf_auto_otimizar", z4)) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j5 = W().getLong("perf_rodada_elapsed", 0L);
            h hVar = r5.f4148a;
            if (j5 <= 0 || jElapsedRealtime < j5) {
                this.f811a.postDelayed(new j2(this, 16), 300000L);
            }
        }
        new Thread(new j2(this, 17)).start();
        K0();
        if (!F("PiP nativo")) {
            this.f811a.postDelayed(new x1(this, 0), 40000L);
        }
        this.f811a.postDelayed(new j2(this, 18), 33000L);
        Handler handler = this.f811a;
        a3 a3Var = this.f885u0;
        handler.removeCallbacks(a3Var);
        handler.postDelayed(a3Var, 10000L);
        if (this.f873q0 == null) {
            Object systemService3 = getSystemService("connectivity");
            ConnectivityManager connectivityManager = systemService3 instanceof ConnectivityManager ? (ConnectivityManager) systemService3 : null;
            if (connectivityManager != null) {
                e3 e3Var = new e3(this);
                this.f873q0 = e3Var;
                try {
                    connectivityManager.registerDefaultNetworkCallback(e3Var);
                } catch (Exception e8) {
                    b.o(e8, new StringBuilder("netCallback: "), "CentralWatchdog");
                    this.f873q0 = null;
                }
            }
        }
        this.f811a.postDelayed(new j2(this, 19), 20000L);
        P0();
        ae aeVar14 = ae.f3361a;
        ae.b("CentralWatchdog", "AutoRota: monitor rotas=" + W().getBoolean("auto_route_on_aa_connect", false) + " proxy=" + W().getBoolean("auto_proxy_enabled", false), false);
        if (t()) {
            this.f811a.postDelayed(this.M2, 6000L);
        }
        H0();
        I0();
        G0();
        J0();
        F0();
        if (!F("condução/regeneração")) {
            this.f811a.postDelayed(new p2(this, 5), 20000L);
        }
        if (W().getBoolean("telemetry_autostart", false)) {
            this.f811a.postDelayed(new j2(this, 20), 15000L);
        }
        try {
            File externalFilesDir = getExternalFilesDir(null);
            t1.f4252g = externalFilesDir == null;
            if (externalFilesDir == null) {
                externalFilesDir = getFilesDir();
            }
            absolutePath = new File(externalFilesDir, "central_boot.log").getAbsolutePath();
        } catch (Throwable unused6) {
            absolutePath = "/data/local/tmp/fixes/central_boot.log";
        }
        t1.f4253h = absolutePath;
        ee.f3548a.b(this);
        if (W().getBoolean(str2, false)) {
            this.f811a.postDelayed(new j2(this, 21), 12000L);
        }
        n3.a(new d2(this, 9));
        n3.a(new d2(this, i14));
        this.f811a.postDelayed(this.R2, 60000L);
        this.f811a.postDelayed(this.P2, this.O2);
        this.f811a.postDelayed(new j2(this, 23), 60000L);
        List listU3 = f.U(new String[]{"carplay_identity_inject", "auto_carplay_trigger", "auto_aa_trigger"});
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : listU3) {
            if (W().contains((String) obj2)) {
                arrayList3.add(obj2);
            }
        }
        if (arrayList3.isEmpty()) {
            z5 = false;
        } else {
            SharedPreferences.Editor editorEdit = W().edit();
            int size2 = arrayList3.size();
            int i16 = 0;
            while (i16 < size2) {
                Object obj3 = arrayList3.get(i16);
                i16++;
                editorEdit.remove((String) obj3);
            }
            editorEdit.apply();
            ae aeVar15 = ae.f3361a;
            z5 = false;
            ae.b("CentralWatchdog", "limpeza: chaves-sombra removidas (" + y1.g.e0(arrayList3, null, null, 63) + ") — quem decide CarPlay/Android Auto agora é só o modo", false);
        }
        ae aeVar16 = ae.f3361a;
        ae.b("CentralWatchdog", "anúncio SDP CarPlay: " + P(), z5);
        if (K()) {
            v1.f4363a.b();
        }
        wd wdVar2 = wd.f4450a;
        wd.d(this);
        wd.l(this);
        wd.e(this);
        new Handler(Looper.getMainLooper()).post(new e.l(getApplicationContext(), 2));
        this.f811a.post(this.D0);
        Log.i("CentralWatchdog", "CentralWatchdogService iniciado");
    }

    @Override // android.app.Service
    public final void onDestroy() {
        f1 f1Var = this.f869p0;
        if (f1Var != null) {
            f1Var.a();
        }
        this.f869p0 = null;
        this.f827e0.incrementAndGet();
        this.f837h0.shutdownNow();
        U2 = false;
        V2 = null;
        this.f811a.removeCallbacksAndMessages(null);
        try {
            unregisterReceiver(this.Q);
        } catch (Exception unused) {
        }
        try {
            unregisterReceiver(this.P);
        } catch (Exception unused2) {
        }
        try {
            unregisterReceiver(this.Z);
        } catch (Exception unused3) {
        }
        try {
            unregisterReceiver(this.J0);
        } catch (Exception unused4) {
        }
        U0();
        try {
            unregisterReceiver(this.R0);
        } catch (Exception unused5) {
        }
        try {
            unregisterReceiver(this.F1);
        } catch (Exception unused6) {
        }
        lh lhVar = lh.f3858a;
        lhVar.b(this, this.K0);
        try {
            lhVar.b(this, this.O0);
        } catch (Throwable unused7) {
        }
        e3 e3Var = this.f873q0;
        if (e3Var != null) {
            try {
                Object systemService = getSystemService("connectivity");
                g.c(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
                ((ConnectivityManager) systemService).unregisterNetworkCallback(e3Var);
            } catch (Exception unused8) {
            }
        }
        this.f873q0 = null;
        c3 c3Var = this.f813a1;
        if (c3Var != null) {
            try {
                unregisterReceiver(c3Var);
            } catch (Exception unused9) {
            }
        }
        this.f813a1 = null;
        c3 c3Var2 = this.f843i2;
        if (c3Var2 != null) {
            try {
                unregisterReceiver(c3Var2);
            } catch (Exception unused10) {
            }
        }
        this.f843i2 = null;
        this.f811a.removeCallbacks(this.f816b1);
        this.W0 = false;
        this.X0 = 0;
        this.Y0 = 0;
        this.Z0 = 0;
        v1.f4363a.c();
        N();
        try {
            Car car = this.f844j;
            if (car != null) {
                car.disconnect();
            }
        } catch (Exception unused11) {
        }
        this.f844j = null;
        this.f848k = null;
        try {
            CarPropertyManager carPropertyManager = this.f856m;
            if (carPropertyManager != null) {
                carPropertyManager.unregisterCallback(this.u2);
            }
        } catch (Exception unused12) {
        }
        try {
            Car car2 = this.f852l;
            if (car2 != null) {
                car2.disconnect();
            }
        } catch (Exception unused13) {
        }
        this.f852l = null;
        this.f856m = null;
        try {
            od.f3992a.q();
        } catch (Throwable unused14) {
        }
        try {
            CarPropertyManager carPropertyManager2 = this.f875r;
            if (carPropertyManager2 != null) {
                carPropertyManager2.unregisterCallback(this.w2);
            }
        } catch (Exception unused15) {
        }
        try {
            Car car3 = this.f872q;
            if (car3 != null) {
                car3.disconnect();
            }
        } catch (Exception unused16) {
        }
        this.f872q = null;
        this.f875r = null;
        int i3 = rg.f4184a;
        rg.f4185c = false;
        Handler handler = rg.f4186d;
        if (handler != null) {
            handler.removeCallbacks(rg.f);
        }
        Log.i("SwcModeCtrl", "stop");
        this.f811a.removeCallbacks(this.x2);
        try {
            CarPropertyManager carPropertyManager3 = this.f884u;
            if (carPropertyManager3 != null) {
                carPropertyManager3.unregisterCallback(this.y2);
            }
        } catch (Exception unused17) {
        }
        try {
            Car car4 = this.f882t;
            if (car4 != null) {
                car4.disconnect();
            }
        } catch (Exception unused18) {
        }
        this.f882t = null;
        this.f884u = null;
        try {
            CarPropertyManager carPropertyManager4 = this.C;
            if (carPropertyManager4 != null) {
                carPropertyManager4.unregisterCallback(this.F2);
            }
        } catch (Exception unused19) {
        }
        try {
            Car car5 = this.B;
            if (car5 != null) {
                car5.disconnect();
            }
        } catch (Exception unused20) {
        }
        this.B = null;
        this.C = null;
        try {
            CarPropertyManager carPropertyManager5 = this.H;
            if (carPropertyManager5 != null) {
                carPropertyManager5.unregisterCallback(this.A2);
            }
        } catch (Exception unused21) {
        }
        try {
            Car car6 = this.G;
            if (car6 != null) {
                car6.disconnect();
            }
        } catch (Exception unused22) {
        }
        this.G = null;
        this.H = null;
        v2 v2Var = this.z2;
        if (v2Var != null) {
            this.f811a.removeCallbacks(v2Var);
            this.z2 = null;
        }
        View view = this.f833g;
        if (view != null) {
            try {
                WindowManager windowManager = this.f;
                if (windowManager != null) {
                    windowManager.removeView(view);
                }
            } catch (Exception unused23) {
            }
        }
        this.b.shutdownNow();
        this.f822d.shutdownNow();
        Log.i("CentralWatchdog", "CentralWatchdogService destruído");
        super.onDestroy();
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i3, int i4) {
        String stringExtra;
        String stringExtra2;
        wd wdVar = wd.f4450a;
        int i5 = 1;
        if (!wd.a(this)) {
            if (intent != null && (stringExtra2 = intent.getStringExtra("motivo_inicio")) != null) {
                this.f865o0 = stringExtra2;
                if (stringExtra2.equals("boot")) {
                    K0();
                }
            }
            if (intent != null) {
                int i6 = 0;
                if (intent.hasExtra("auto_proxy_changed")) {
                    this.f841i0 = null;
                    if (!intent.getBooleanExtra("auto_proxy_changed", false)) {
                        new Thread(new p2(this, 19)).start();
                    }
                    this.f811a.removeCallbacks(this.M2);
                    if (t()) {
                        this.f811a.post(this.M2);
                    }
                } else if (intent.hasExtra("auto_route_changed")) {
                    this.f827e0.incrementAndGet();
                    this.f834g0 = 0L;
                    if (!intent.getBooleanExtra("auto_route_changed", false)) {
                        this.f819c0 = null;
                        this.f837h0.execute(new e2(this, this.f827e0.get(), 6));
                    }
                    this.f811a.removeCallbacks(this.M2);
                    if (t()) {
                        this.f811a.post(this.M2);
                    }
                } else if (intent.hasExtra("reaplicar_patch_monitor")) {
                    ae aeVar = ae.f3361a;
                    ae.b("CentralWatchdog", "patch do monitor pedido pelo toggle do CarPlay sem fio", false);
                    W().edit().putLong("bootscript_epoch_ok", 0L).apply();
                    o(1);
                } else if (intent.hasExtra("zerar_viagem")) {
                    q1 q1Var = new q1(i5, this);
                    CentralWatchdogService centralWatchdogService = V2;
                    if (centralWatchdogService == null) {
                        q1Var.c(Boolean.FALSE);
                    } else {
                        new Thread(new i(centralWatchdogService, 8, q1Var)).start();
                    }
                } else if (intent.hasExtra("crash_action") && (stringExtra = intent.getStringExtra("crash_action")) != null) {
                    int iHashCode = stringExtra.hashCode();
                    if (iHashCode != -934426579) {
                        if (iHashCode == 1353652170 && stringExtra.equals("disable_all")) {
                            W().edit().putBoolean("crash_detected", false).putBoolean("auto_apply_paused", false).putBoolean("avas_muted_saved", false).putInt("avas_sound_type_saved", -1).putBoolean("aeb_restore_on_boot", false).putBoolean("gestures_restore_on_boot", false).putBoolean("gestures_enabled", false).apply();
                            W().edit().putInt("boots_curtos_seguidos", 0).apply();
                            this.B2.clear();
                            ae aeVar2 = ae.f3361a;
                            ae.b("CentralWatchdog", "desativar tudo: o usuário optou por NÃO reaplicar (AVAS, AEB e gestos desligados; trava solta)", false);
                        }
                    } else if (stringExtra.equals("resume")) {
                        W().edit().putBoolean("crash_detected", false).putBoolean("auto_apply_paused", false).apply();
                        H0();
                        I0();
                        G0();
                        J0();
                        if (!F("condução/regeneração")) {
                            this.f811a.postDelayed(new p2(this, 5), 20000L);
                        }
                        F0();
                        K0();
                        if (!F("PiP nativo")) {
                            this.f811a.postDelayed(new x1(this, i6), 40000L);
                        }
                        W().edit().putInt("boots_estaveis_seguidos", 0).putInt("boots_curtos_seguidos", 0).apply();
                        this.B2.clear();
                        ae aeVar3 = ae.f3361a;
                        ae.b("CentralWatchdog", "continuar aplicando: restores reagendados (Ar Digital, script de boot, AVAS, AEB, gestos, drive/regen)", false);
                    }
                }
                if (t()) {
                    this.f811a.removeCallbacks(this.M2);
                    this.f811a.post(this.M2);
                }
            }
        }
        return 1;
    }

    public final boolean p() {
        BluetoothAdapter defaultAdapter;
        Object obj;
        boolean zBooleanValue;
        Object obj2 = null;
        try {
            defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        } catch (Throwable unused) {
            defaultAdapter = null;
        }
        if (defaultAdapter == null) {
            return false;
        }
        try {
            Set<BluetoothDevice> bondedDevices = defaultAdapter.getBondedDevices();
            if (bondedDevices == null) {
                bondedDevices = r.f4665a;
            }
            ArrayList arrayList = new ArrayList();
            for (Object obj3 : bondedDevices) {
                try {
                    Object objInvoke = BluetoothDevice.class.getMethod("isConnected", null).invoke((BluetoothDevice) obj3, null);
                    Boolean bool = objInvoke instanceof Boolean ? (Boolean) objInvoke : null;
                    zBooleanValue = bool != null ? bool.booleanValue() : false;
                } catch (Throwable unused2) {
                }
                if (zBooleanValue) {
                    arrayList.add(obj3);
                }
            }
            ArrayList arrayList2 = new ArrayList();
            int size = arrayList.size();
            int i3 = 0;
            while (true) {
                if (i3 >= size) {
                    break;
                }
                Object obj4 = arrayList.get(i3);
                i3++;
                BluetoothDevice bluetoothDevice = (BluetoothDevice) obj4;
                g.b(bluetoothDevice);
                if (S0(bluetoothDevice) && !l0(bluetoothDevice)) {
                    arrayList2.add(obj4);
                }
            }
            int size2 = arrayList2.size();
            int i4 = 0;
            do {
                if (i4 >= size2) {
                    obj = null;
                    break;
                }
                obj = arrayList2.get(i4);
                i4++;
            } while (!t.a0(((BluetoothDevice) obj).getAddress(), this.f820c1));
            BluetoothDevice bluetoothDevice2 = (BluetoothDevice) obj;
            if (bluetoothDevice2 == null) {
                int size3 = arrayList2.size();
                int i5 = 0;
                while (i5 < size3) {
                    Object obj5 = arrayList2.get(i5);
                    i5++;
                    if (t.a0(((BluetoothDevice) obj5).getAddress(), W().getString("auto_connect_preferred_bt", null))) {
                        obj2 = obj5;
                        break;
                    }
                }
                bluetoothDevice2 = (BluetoothDevice) obj2;
                if (bluetoothDevice2 == null) {
                    bluetoothDevice2 = (BluetoothDevice) y1.g.b0(arrayList2);
                }
            }
            if (bluetoothDevice2 != null) {
                this.f820c1 = bluetoothDevice2.getAddress();
            }
            return bluetoothDevice2 != null;
        } catch (Throwable unused3) {
            return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0027  */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, java.util.Map] */
    public final boolean q(CarPropertyManager carPropertyManager, int i3) {
        boolean zA;
        Set setKeySet = u.f4305t.keySet();
        if (setKeySet == null || !setKeySet.isEmpty()) {
            Iterator it = setKeySet.iterator();
            while (it.hasNext()) {
                int iIntValue = ((Number) it.next()).intValue();
                if (iIntValue != i3) {
                    Integer numC = p1.c(carPropertyManager, 373295872, iIntValue);
                    if (numC != null && numC.intValue() == 1) {
                        zA = true;
                    } else if (numC != null && numC.intValue() == 2) {
                        zA = false;
                    } else {
                        zA = g.a(this.f860n.get(Integer.valueOf(iIntValue)), Boolean.TRUE);
                    }
                } else {
                    zA = false;
                }
                if (zA) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean r() {
        if (!M()) {
            return false;
        }
        int i3 = u.f4288a;
        return u.a(W());
    }

    public final void r0() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        synchronized (this) {
            if (jElapsedRealtime - this.f829e2 < 5000) {
                return;
            }
            this.f829e2 = jElapsedRealtime;
            n3.b("projection-state", new d2(this, 13));
        }
    }

    public final void s(String str, Integer num, int i3) {
        ae aeVar = ae.f3361a;
        ae.b("CentralWatchdog", "condução/regeneração: o carro NÃO aceitou " + str + '=' + i3 + " (ficou em " + num + ')', false);
        try {
            sendBroadcast(new Intent("com.ex.auto.DRIVE_REGEN_RECUSADO").putExtra("qual", str).putExtra("hal", num != null ? num.intValue() : -1).putExtra("querido", i3));
        } catch (Exception e3) {
            b.o(e3, new StringBuilder("anunciarRecusa: "), "CentralWatchdog");
        }
    }

    public final void s0() {
        if (!W().getBoolean("status_brightness_enabled", false)) {
            NotificationManager notificationManager = (NotificationManager) getApplicationContext().getSystemService(NotificationManager.class);
            if (notificationManager != null) {
                notificationManager.cancel(15022);
                return;
            }
            return;
        }
        wd wdVar = wd.f4450a;
        if (wd.a(this)) {
            return;
        }
        Context applicationContext = getApplicationContext();
        NotificationManager notificationManager2 = (NotificationManager) applicationContext.getSystemService(NotificationManager.class);
        if (notificationManager2 == null) {
            return;
        }
        String string = applicationContext.getString(R.string.k_brightness_icon_channel);
        g.d(string, "getString(...)");
        NotificationChannel notificationChannel = new NotificationChannel("central_ex_status_brightness", string, 2);
        notificationChannel.setShowBadge(false);
        notificationManager2.createNotificationChannel(notificationChannel);
        int i3 = (int) (36 * applicationContext.getResources().getDisplayMetrics().density);
        if (i3 < 1) {
            i3 = 1;
        }
        float f = i3;
        int i4 = (int) (f / 0.61f);
        if (i4 < 1) {
            i4 = 1;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i4, i4, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint(1);
        paint.setColor(-1);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(0.06f * f);
        paint.setStrokeCap(Paint.Cap.ROUND);
        float f3 = i4 / 2.0f;
        float f4 = 0.22f * f;
        float f5 = f * 0.32f;
        float f6 = f * 0.46f;
        int i5 = 0;
        while (i5 < 8) {
            double radians = Math.toRadians(i5 * 45);
            float fCos = (float) Math.cos(radians);
            float fSin = (float) Math.sin(radians);
            canvas.drawLine((fCos * f5) + f3, (fSin * f5) + f3, (fCos * f6) + f3, (fSin * f6) + f3, paint);
            i5++;
            f4 = f4;
        }
        Paint paint2 = new Paint(1);
        paint2.setColor(-1);
        paint2.setStyle(Paint.Style.FILL);
        canvas.drawCircle(f3, f3, f4, paint2);
        g.b(bitmapCreateBitmap);
        Icon iconCreateWithBitmap = Icon.createWithBitmap(bitmapCreateBitmap);
        g.d(iconCreateWithBitmap, "createWithBitmap(...)");
        Notification notificationBuild = new Notification.Builder(applicationContext, "central_ex_status_brightness").setSmallIcon(iconCreateWithBitmap).setContentTitle(applicationContext.getString(R.string.k_brightness_icon_title)).setContentText(applicationContext.getString(R.string.k_brightness_icon_text)).setContentIntent(PendingIntent.getBroadcast(applicationContext, 99, new Intent("com.ex.auto.ACTION_APPLY_STATUS_BRIGHTNESS"), 201326592)).setOngoing(true).setShowWhen(false).build();
        g.d(notificationBuild, "build(...)");
        Bundle bundle = notificationBuild.extras;
        bundle.putBoolean("flag_status_icon_notification", true);
        bundle.putInt("flag_status_icon_id", 99);
        bundle.putString("flag_status_icon_describe", "StatusIcon_BrightnessApply");
        bundle.putParcelable("flag_status_icon_icon", iconCreateWithBitmap);
        bundle.putParcelable("flag_status_icon_pressed_icon", iconCreateWithBitmap);
        bundle.putBoolean("flag_status_icon_hide", false);
        bundle.putInt("flag_status_icon_rank", 30);
        bundle.putInt("flag_status_icon_space_x", 1);
        bundle.putBoolean("flag_status_icon_is_pick_on", false);
        bundle.putInt("flag_status_icon_specific_width", 0);
        try {
            notificationManager2.notify(15022, notificationBuild);
        } catch (Throwable unused) {
        }
    }

    public final boolean t() {
        return W().getBoolean("auto_route_on_aa_connect", false) || W().getBoolean("auto_proxy_enabled", false);
    }

    public final void t0() {
        boolean z2 = W().getBoolean("status_wifi_enabled", false);
        Log.i("CentralWatchdog", "refreshStatusWifiIcon: pref=" + z2);
        d2 d2Var = this.K0;
        if (z2) {
            lh.f3858a.a(this, d2Var);
            u0();
        } else {
            lh.f3858a.b(this, d2Var);
            NotificationManager notificationManager = (NotificationManager) getApplicationContext().getSystemService(NotificationManager.class);
            if (notificationManager != null) {
                notificationManager.cancel(15024);
            }
        }
        Q0();
    }

    public final boolean u() {
        long jCurrentTimeMillis = System.currentTimeMillis() - this.f871p2;
        if (this.f871p2 > 0 && jCurrentTimeMillis < this.f874q2) {
            ae aeVar = ae.f3361a;
            ae.b("CentralWatchdog", "ap0: estação saiu há " + (jCurrentTimeMillis / ((long) 1000)) + "s — dentro da carência, trato como sessão em curso", false);
            return true;
        }
        if (this.f867o2 >= 0) {
            return this.f867o2 > 0;
        }
        try {
            File file = new File("/sys/class/net/ap0/statistics/rx_packets");
            if (file.exists()) {
                Long lY = s.Y(k.E0(f2.d.h0(file)).toString());
                if (lY != null) {
                    long jLongValue = lY.longValue();
                    Thread.sleep(2000L);
                    Long lY2 = s.Y(k.E0(f2.d.h0(file)).toString());
                    if (lY2 == null || lY2.longValue() - jLongValue > 20) {
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:45:0x009b  */
    public final void u0() {
        qg qgVar;
        int i3;
        int iArgb;
        String string;
        if (W().getBoolean("status_wifi_enabled", false)) {
            Log.i("CentralWatchdog", "refreshStatusWifiIconAppearance: chamando StatusWifiIcon.show");
            wd wdVar = wd.f4450a;
            if (wd.a(this)) {
                return;
            }
            Context applicationContext = getApplicationContext();
            g.b(applicationContext);
            Object systemService = applicationContext.getApplicationContext().getSystemService("wifi");
            WifiManager wifiManager = systemService instanceof WifiManager ? (WifiManager) systemService : null;
            qg qgVar2 = qg.b;
            qg qgVar3 = qg.f4128a;
            int i4 = 3;
            if (wifiManager != null && wifiManager.isWifiEnabled()) {
                Object systemService2 = applicationContext.getApplicationContext().getSystemService("connectivity");
                ConnectivityManager connectivityManager = systemService2 instanceof ConnectivityManager ? (ConnectivityManager) systemService2 : null;
                NetworkInfo networkInfo = connectivityManager != null ? connectivityManager.getNetworkInfo(1) : null;
                if (networkInfo == null || !networkInfo.isConnected()) {
                    qgVar = qgVar2;
                } else {
                    WifiInfo connectionInfo = wifiManager.getConnectionInfo();
                    qgVar = qg.f4132g;
                    if (connectionInfo != null) {
                        int rssi = connectionInfo.getRssi();
                        if (rssi <= -100 || rssi >= 0) {
                            qgVar = qgVar2;
                        } else {
                            int iCalculateSignalLevel = WifiManager.calculateSignalLevel(rssi, 5);
                            if (iCalculateSignalLevel == 0) {
                                qgVar = qg.f4129c;
                            } else if (iCalculateSignalLevel == 1) {
                                qgVar = qg.f4130d;
                            } else if (iCalculateSignalLevel == 2) {
                                qgVar = qg.f4131e;
                            } else if (iCalculateSignalLevel == 3) {
                                qgVar = qg.f;
                            }
                        }
                    }
                }
            } else {
                qgVar = qgVar3;
            }
            NotificationManager notificationManager = (NotificationManager) applicationContext.getSystemService(NotificationManager.class);
            if (notificationManager == null) {
                return;
            }
            NotificationChannel notificationChannel = new NotificationChannel("central_ex_status_wifi", applicationContext.getString(R.string.k_wifi_icon_channel), 2);
            notificationChannel.setShowBadge(false);
            notificationManager.createNotificationChannel(notificationChannel);
            int i5 = (int) (36 * applicationContext.getResources().getDisplayMetrics().density);
            if (i5 < 1) {
                i5 = 1;
            }
            float f = i5;
            int i6 = (int) (f / 0.61f);
            if (i6 < 1) {
                i6 = 1;
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i6, i6, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            float f3 = i6 / 2.0f;
            float f4 = (0.3f * f) + f3;
            switch (qgVar.ordinal()) {
                case 0:
                case 1:
                case 2:
                    i4 = 0;
                    break;
                case 3:
                    i4 = 1;
                    break;
                case 4:
                    i4 = 2;
                    break;
                case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                    break;
                case MusicClient.TYPE_GESTURE /* 6 */:
                    i4 = 4;
                    break;
                default:
                    throw new q();
            }
            int iArgb2 = Color.argb(70, 255, 255, 255);
            int iOrdinal = qgVar.ordinal();
            if (iOrdinal != 0) {
                iArgb = iOrdinal != 1 ? -1 : -7829368;
                i3 = 255;
            } else {
                i3 = 255;
                iArgb = Color.argb(140, 255, 255, 255);
            }
            int iArgb3 = qgVar == qgVar3 ? Color.argb(140, i3, i3, i3) : -1;
            Paint paint = new Paint(1);
            paint.setColor(iArgb);
            paint.setStyle(Paint.Style.FILL);
            canvas.drawCircle(f3, f4, 0.07f * f, paint);
            Paint paint2 = new Paint(1);
            paint2.setStyle(Paint.Style.STROKE);
            paint2.setStrokeWidth(0.075f * f);
            paint2.setStrokeCap(Paint.Cap.ROUND);
            int i7 = 1;
            while (i7 < 5) {
                float f5 = ((i7 * 0.105f) + 0.1f) * f;
                float f6 = f4;
                int i8 = iArgb3;
                int i9 = iArgb2;
                float f7 = f;
                RectF rectF = new RectF(f3 - f5, f6 - f5, f3 + f5, f6 + f5);
                paint2.setColor((qgVar == qgVar2 || i7 > i4) ? i9 : i8);
                canvas.drawArc(rectF, 215.0f, 110.0f, false, paint2);
                i7++;
                f4 = f6;
                iArgb3 = i8;
                iArgb2 = i9;
                f = f7;
            }
            g.b(bitmapCreateBitmap);
            Icon iconCreateWithBitmap = Icon.createWithBitmap(bitmapCreateBitmap);
            g.d(iconCreateWithBitmap, "createWithBitmap(...)");
            PendingIntent broadcast = PendingIntent.getBroadcast(applicationContext, 98, new Intent("com.ex.auto.ACTION_APPLY_STATUS_WIFI"), 201326592);
            Notification.Builder contentTitle = new Notification.Builder(applicationContext, "central_ex_status_wifi").setSmallIcon(iconCreateWithBitmap).setContentTitle(applicationContext.getString(R.string.k_wifi_icon_title));
            int iOrdinal2 = qgVar.ordinal();
            if (iOrdinal2 == 0) {
                string = applicationContext.getString(R.string.k_wifi_icon_text_off);
                g.d(string, "getString(...)");
            } else if (iOrdinal2 != 1) {
                string = applicationContext.getString(R.string.k_wifi_icon_text_on);
                g.d(string, "getString(...)");
            } else {
                string = applicationContext.getString(R.string.k_wifi_icon_text_searching);
                g.d(string, "getString(...)");
            }
            Notification notificationBuild = contentTitle.setContentText(string).setContentIntent(broadcast).setOngoing(true).setShowWhen(false).build();
            g.d(notificationBuild, "build(...)");
            Bundle bundle = notificationBuild.extras;
            bundle.putBoolean("flag_status_icon_notification", true);
            bundle.putInt("flag_status_icon_id", 98);
            bundle.putString("flag_status_icon_describe", "StatusIcon_WifiApply");
            bundle.putParcelable("flag_status_icon_icon", iconCreateWithBitmap);
            bundle.putParcelable("flag_status_icon_pressed_icon", iconCreateWithBitmap);
            bundle.putBoolean("flag_status_icon_hide", false);
            bundle.putInt("flag_status_icon_rank", 31);
            bundle.putInt("flag_status_icon_space_x", 1);
            bundle.putBoolean("flag_status_icon_is_pick_on", false);
            bundle.putInt("flag_status_icon_specific_width", 0);
            try {
                notificationManager.notify(15024, notificationBuild);
            } catch (Throwable th) {
                Log.w("StatusWifiIcon", "notify falhou", th);
            }
        }
    }

    public final void v0(String str) throws InterruptedException {
        String str2;
        if (this.f898z1) {
            return;
        }
        int i3 = 0;
        while (i3 < 8000 && !d1()) {
            Thread.sleep(1000L);
            i3 += 1000;
        }
        if (!d1()) {
            ae aeVar = ae.f3361a;
            StringBuilder sbL = b.l("wlan1 (", str, "): não nasceu em ");
            sbL.append(i3 / 1000);
            sbL.append("s — não reinicio o daemon");
            ae.b("CentralWatchdog", sbL.toString(), false);
            return;
        }
        this.f898z1 = true;
        c(10000, "setprop ctl.restart ".concat(Politica.b(7)));
        int i4 = 0;
        while (i4 < 10000) {
            Thread.sleep(1000L);
            i4 += 1000;
            Integer numW = s.W(k.E0(c(10000, "netstat -tln 2>/dev/null | grep -cE '3051[56]'")).toString());
            if ((numW != null ? numW.intValue() : 0) > 0) {
                break;
            }
        }
        Integer numW2 = s.W(k.E0(c(10000, "netstat -tln 2>/dev/null | grep -cE '3051[56]'")).toString());
        boolean z2 = (numW2 != null ? numW2.intValue() : 0) > 0;
        ae aeVar2 = ae.f3361a;
        StringBuilder sbL2 = b.l("wlan1 (", str, "): daemon nasceu antes da interface — reiniciado; WPP ");
        if (z2) {
            str2 = "no ar em " + (i4 / 1000) + 's';
        } else {
            str2 = "NÃO subiu em 10s";
        }
        b.r(sbL2, str2, "CentralWatchdog", false);
        if (z2) {
            i0("wlan1 + WPP");
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, java.util.Map] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object, java.util.Map] */
    public final boolean w(String str) {
        String str2;
        String strH;
        StringBuilder sb;
        String str3;
        List<String> list = (List) u.A.get(str);
        if (list == null) {
            return false;
        }
        boolean z2 = W().getBoolean(str, false);
        String str4 = "";
        String str5 = z2 ? "S" : "";
        boolean z3 = true;
        for (String str6 : list) {
            String str7 = "log.tag." + str6;
            try {
                Class.forName("android.os.SystemProperties").getMethod("set", String.class, String.class).invoke(null, str7, str5);
            } catch (Throwable th) {
                b.s(th, b.l("setProp ", str7, " falhou: "), "CentralWatchdog");
            }
            String strP0 = p0("log.tag." + str6);
            if (!(z2 ? strP0.equals("S") : !strP0.equals("S"))) {
                if (z2) {
                    try {
                        sb = new StringBuilder();
                        sb.append("setprop log.tag.");
                        sb.append(str6);
                        str3 = " S";
                    } catch (Throwable unused) {
                    }
                } else {
                    sb = new StringBuilder();
                    sb.append("setprop log.tag.");
                    sb.append(str6);
                    str3 = " ''";
                }
                sb.append(str3);
                c(6000, sb.toString());
                strP0 = p0("log.tag." + str6);
            }
            str4 = strP0;
            if (!(z2 ? str4.equals("S") : !str4.equals("S"))) {
                z3 = false;
            }
        }
        Iterable iterable = (List) u.A.get(str);
        if (iterable == null) {
            iterable = p.f4663a;
        }
        String strE0 = y1.g.e0(iterable, ",", null, 62);
        ae aeVar = ae.f3361a;
        StringBuilder sb2 = new StringBuilder();
        if (g.a(str, "silence_tbox_log")) {
            str2 = "log do TBox";
        } else if (g.a(str, "silence_avm_log")) {
            str2 = "log da camera 360";
        } else {
            str2 = "log (" + str + ')';
        }
        sb2.append(str2);
        sb2.append(": ");
        if (z3 && z2) {
            strH = b.h("silenciado (", strE0, "=S)");
        } else if (z3) {
            strH = "normal";
        } else {
            strH = "falha ao aplicar (desejado=" + str5 + ", atual=" + str4 + ')';
        }
        b.r(sb2, strH, "CentralWatchdog", false);
        return z3;
    }

    public final void w0(String str) throws InterruptedException {
        c5 c5Var;
        String str2;
        String string;
        Integer numW;
        if (r()) {
            synchronized (this) {
                if (SystemClock.elapsedRealtime() - this.U1 < this.V1) {
                    return;
                }
                this.U1 = SystemClock.elapsedRealtime();
                if (!d1()) {
                    ae aeVar = ae.f3361a;
                    b.p("daemon do AA (", str, "): sem wlan1 — a saúde precoce cuida", "CentralWatchdog", false);
                    return;
                }
                String strC = c(6000, "dumpsys activity activities 2>/dev/null | grep -i AutoMainActivity; echo FIM_SONDA");
                Object objValueOf = null;
                Object objValueOf2 = !k.e0(strC, "FIM_SONDA", false) ? null : Boolean.valueOf(k.e0(strC, "AutoMainActivity", true));
                String strC2 = c(6000, "netstat -tn 2>/dev/null | grep -E ':3051[56] ' | grep -c ESTABLISHED; echo FIM_SONDA");
                if (k.e0(strC2, "FIM_SONDA", false)) {
                    n2.c cVarN0 = k.n0(strC2);
                    Iterator it = cVarN0.b.iterator();
                    while (it.hasNext()) {
                        Object objC = ((l) cVarN0.f2529c).c(it.next());
                        if (s.W(k.E0((String) objC).toString()) != null) {
                            objValueOf = objC;
                            break;
                        }
                    }
                    String str3 = (String) objValueOf;
                    objValueOf = Boolean.valueOf(((str3 == null || (string = k.E0(str3).toString()) == null || (numW = s.W(string)) == null) ? 0 : numW.intValue()) > 0);
                }
                if (this.f814a2) {
                    c5Var = c5.b;
                } else {
                    Boolean bool = Boolean.TRUE;
                    if (g.a(objValueOf2, bool) || g.a(objValueOf, bool)) {
                        c5Var = c5.b;
                    } else {
                        c5Var = (objValueOf2 == null && objValueOf == null) ? c5.b : c5.f3428a;
                    }
                }
                if (c5Var == c5.b) {
                    ae aeVar2 = ae.f3361a;
                    StringBuilder sbL = b.l("daemon do AA (", str, "): NAO renovo — flag=");
                    sbL.append(this.f814a2);
                    sbL.append(" activity=");
                    if (objValueOf2 == null) {
                        objValueOf2 = "nao li";
                    }
                    sbL.append(objValueOf2);
                    sbL.append(" wpp=");
                    if (objValueOf == null) {
                        objValueOf = "nao li";
                    }
                    sbL.append(objValueOf);
                    ae.b("CentralWatchdog", sbL.toString(), false);
                    return;
                }
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                c(10000, "setprop ctl.restart ".concat(Politica.b(7)));
                int i3 = 0;
                while (i3 < 10000) {
                    Thread.sleep(1000L);
                    i3 += 1000;
                    Integer numW2 = s.W(k.E0(c(6000, "netstat -tln 2>/dev/null | grep -cE '3051[56]'")).toString());
                    if ((numW2 != null ? numW2.intValue() : 0) > 0) {
                        break;
                    }
                }
                Integer numW3 = s.W(k.E0(c(6000, "netstat -tln 2>/dev/null | grep -cE '3051[56]'")).toString());
                boolean z2 = (numW3 != null ? numW3.intValue() : 0) > 0;
                ae aeVar3 = ae.f3361a;
                StringBuilder sbL2 = b.l("daemon do AA (", str, "): renovado antes de o celular fechar a conexão — WPP ");
                if (z2) {
                    str2 = "no ar em " + ((SystemClock.elapsedRealtime() - jElapsedRealtime) / ((long) 1000)) + 's';
                } else {
                    str2 = "NÃO subiu em 10s";
                }
                b.r(sbL2, str2, "CentralWatchdog", false);
                if (z2) {
                    i0("daemon renovado");
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0068 A[Catch: all -> 0x006e, TRY_ENTER, TryCatch #2 {all -> 0x006e, blocks: (B:20:0x0068, B:24:0x0072, B:25:0x0078), top: B:35:0x0066 }] */
    /* JADX WARN: Code duplicated, block: B:23:0x0070 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:24:0x0072 A[Catch: all -> 0x006e, TryCatch #2 {all -> 0x006e, blocks: (B:20:0x0068, B:24:0x0072, B:25:0x0078), top: B:35:0x0066 }] */
    /* JADX WARN: Code duplicated, block: B:25:0x0078 A[Catch: all -> 0x006e, TRY_LEAVE, TryCatch #2 {all -> 0x006e, blocks: (B:20:0x0068, B:24:0x0072, B:25:0x0078), top: B:35:0x0066 }] */
    public final void x() {
        boolean zE0;
        boolean z2;
        if (F("ConnAdaptor / AA WiFi")) {
            return;
        }
        try {
            String str = getPackageManager().getApplicationInfo("com.njda.adapter", 0).sourceDir;
            g.d(str, "sourceDir");
            zE0 = k.e0(str, "/data/app/", false);
        } catch (Throwable unused) {
            zE0 = false;
        }
        try {
            ArrayList arrayListG0 = f2.d.g0(new File("/proc/mounts"));
            try {
                if (!arrayListG0.isEmpty()) {
                    int size = arrayListG0.size();
                    int i3 = 0;
                    while (true) {
                        if (i3 < size) {
                            Object obj = arrayListG0.get(i3);
                            i3++;
                            if (k.e0((String) obj, ' ' + u.f4308w + ' ', false)) {
                                z2 = true;
                                break;
                            }
                        }
                    }
                    if (zE0) {
                        Log.i("CentralWatchdog", "ConnAdaptor: instalado como update (pm) — nada a fazer");
                    } else if (z2) {
                        Log.w("CentralWatchdog", "ConnAdaptor: há um bind LEGADO montado sobre o /system. Isso derruba a instalação na próxima varredura de pacotes — use Desativar e Ativar.");
                    } else {
                        ae aeVar = ae.f3361a;
                        ae.b("CentralWatchdog", "ConnAdaptor está de FÁBRICA. Não reinstalamos sozinhos: use o botão Ativar. (Se você não desativou: ou o sistema reverteu a atualização, ou este boot desfez um bind legado — procure CONNADAPTOR=LIMPANDO_BIND_LEGADO.)", false);
                    }
                    return;
                }
                if (zE0) {
                    Log.i("CentralWatchdog", "ConnAdaptor: instalado como update (pm) — nada a fazer");
                } else if (z2) {
                    Log.w("CentralWatchdog", "ConnAdaptor: há um bind LEGADO montado sobre o /system. Isso derruba a instalação na próxima varredura de pacotes — use Desativar e Ativar.");
                } else {
                    ae aeVar2 = ae.f3361a;
                    ae.b("CentralWatchdog", "ConnAdaptor está de FÁBRICA. Não reinstalamos sozinhos: use o botão Ativar. (Se você não desativou: ou o sistema reverteu a atualização, ou este boot desfez um bind legado — procure CONNADAPTOR=LIMPANDO_BIND_LEGADO.)", false);
                }
                return;
            } catch (Throwable th) {
                b.s(th, new StringBuilder("checagem do ConnAdaptor falhou: "), "CentralWatchdog");
                return;
            }
        } catch (Throwable unused2) {
        }
        z2 = false;
    }

    public final void x0() {
        this.E0 = false;
        this.F0 = 0;
        U0();
        new Thread(new e2(this, this.G0, 0)).start();
    }

    public final void y() {
        if (!W().getBoolean("aeb_restore_on_boot", false)) {
            return;
        }
        boolean z2 = W().getBoolean("aeb_desired", W().getBoolean("aeb_state_saved", false));
        Car car = null;
        Object objValueOf = null;
        try {
            try {
                Car carCreateCar = Car.createCar(this);
                try {
                    Object carManager = carCreateCar.getCarManager("property");
                    CarPropertyManager carPropertyManager = carManager instanceof CarPropertyManager ? (CarPropertyManager) carManager : null;
                    if (carPropertyManager == null) {
                        try {
                            carCreateCar.disconnect();
                            return;
                        } catch (Exception unused) {
                            return;
                        }
                    }
                    AtomicInteger atomicInteger = p1.f4042a;
                    int i3 = u.f4288a;
                    Integer numC = p1.c(carPropertyManager, i3, 0);
                    if (numC != null) {
                        objValueOf = Boolean.valueOf(numC.intValue() != 0);
                    }
                    if (g.a(objValueOf, Boolean.valueOf(z2))) {
                        Log.i("CentralWatchdog", "AEB já em " + z2 + ", nenhuma ação necessária");
                    } else {
                        carPropertyManager.setIntProperty(i3, 0, z2 ? 1 : 0);
                        Log.i("CentralWatchdog", "AEB restaurado para " + z2 + " (era " + objValueOf + ')');
                    }
                    carCreateCar.disconnect();
                } catch (Throwable th) {
                    th = th;
                    car = carCreateCar;
                    try {
                        Log.w("CentralWatchdog", "applyAebIfNeeded falhou: " + th.getMessage());
                        if (car == null) {
                        } else {
                            car.disconnect();
                        }
                    } catch (Throwable th2) {
                        if (car != null) {
                            try {
                                car.disconnect();
                            } catch (Exception unused2) {
                            }
                        }
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Exception unused3) {
        }
    }

    public final void y0() {
        this.B = null;
        this.C = null;
        int i3 = this.D;
        if (i3 >= 5) {
            Log.w("CentralWatchdog", "aebObserver: desisti após 5 tentativas");
        } else {
            this.D = i3 + 1;
            this.f811a.postDelayed(new x1(this, 21), 30000L);
        }
    }

    public final void z() {
        if (!W().getBoolean("avas_muted_saved", false)) {
            return;
        }
        Car car = null;
        try {
            try {
                Car carCreateCar = Car.createCar(this);
                try {
                    Object carManager = carCreateCar.getCarManager("audio");
                    CarAudioManager carAudioManager = carManager instanceof CarAudioManager ? (CarAudioManager) carManager : null;
                    if (carAudioManager == null) {
                        try {
                            carCreateCar.disconnect();
                            return;
                        } catch (Exception unused) {
                            return;
                        }
                    }
                    Object objInvoke = carAudioManager.getClass().getMethod("getAVASMode", null).invoke(carAudioManager, null);
                    Integer num = objInvoke instanceof Integer ? (Integer) objInvoke : null;
                    if (num == null) {
                        try {
                            carCreateCar.disconnect();
                            return;
                        } catch (Exception unused2) {
                            return;
                        }
                    }
                    int iIntValue = num.intValue();
                    if (iIntValue != 0) {
                        carAudioManager.getClass().getMethod("setAVASMode", Integer.TYPE).invoke(carAudioManager, 0);
                        Log.i("CentralWatchdog", "AVAS restaurado para mudo após boot (era modo=" + iIntValue + ')');
                    } else {
                        Log.i("CentralWatchdog", "AVAS já estava mudo, nenhuma ação necessária");
                    }
                    carCreateCar.disconnect();
                } catch (Throwable th) {
                    th = th;
                    car = carCreateCar;
                    try {
                        Log.w("CentralWatchdog", "applyAvasMuteIfNeeded falhou: " + th.getMessage());
                        if (car == null) {
                        } else {
                            car.disconnect();
                        }
                    } catch (Throwable th2) {
                        if (car != null) {
                            try {
                                car.disconnect();
                            } catch (Exception unused3) {
                            }
                        }
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Exception unused4) {
        }
    }

    public final void z0(String str) {
        int i3 = this.s2;
        if (i3 >= 3) {
            return;
        }
        this.s2 = i3 + 1;
        StringBuilder sbL = b.l("AA trigger: retentando checkAlreadyConnectedAaBt (", str, "), tentativa ");
        sbL.append(this.s2 + 1);
        sbL.append("/4");
        Log.i("CentralWatchdog", sbL.toString());
        this.f811a.postDelayed(new x1(this, 9), 3000L);
    }
}
