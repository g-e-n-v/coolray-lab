package com.ex.auto;

import a1.r;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.car.Car;
import android.car.hardware.CarPropertyValue;
import android.car.hardware.property.CarPropertyManager;
import android.car.media.CarAudioManager;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.media.MediaPlayer;
import android.net.ConnectivityManager;
import android.net.LinkAddress;
import android.net.LinkProperties;
import android.net.NetworkCapabilities;
import android.net.ProxyInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.StatFs;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.GridLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.SeekBar;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ViewFlipper;
import androidx.activity.d;
import androidx.activity.result.b;
import androidx.core.widget.NestedScrollView;
import androidx.emoji2.text.m;
import androidx.fragment.app.q;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.HomeFloatingWidgetsService;
import com.ex.auto.MainActivity;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.R;
import com.geely.driveregenfloater.DriveRegenFloaterService;
import e.i;
import e.j;
import e.o;
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
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.NoRouteToHostException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLConnection;
import java.net.UnknownHostException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.net.ssl.SSLException;
import o2.e;
import o2.k;
import o2.t;
import w0.a0;
import w0.a9;
import w0.ac;
import w0.ae;
import w0.b6;
import w0.bc;
import w0.bd;
import w0.c4;
import w0.c8;
import w0.c9;
import w0.cc;
import w0.d5;
import w0.d9;
import w0.dc;
import w0.e8;
import w0.e9;
import w0.ec;
import w0.f2;
import w0.f9;
import w0.fc;
import w0.g9;
import w0.h0;
import w0.h4;
import w0.h9;
import w0.hb;
import w0.hc;
import w0.he;
import w0.ie;
import w0.j5;
import w0.j9;
import w0.jb;
import w0.jc;
import w0.k5;
import w0.k9;
import w0.kc;
import w0.l1;
import w0.m4;
import w0.m9;
import w0.ma;
import w0.me;
import w0.n;
import w0.n0;
import w0.n2;
import w0.n4;
import w0.nb;
import w0.nc;
import w0.ne;
import w0.o4;
import w0.oc;
import w0.p1;
import w0.p3;
import w0.pa;
import w0.pc;
import w0.q1;
import w0.qa;
import w0.qc;
import w0.qe;
import w0.r5;
import w0.r6;
import w0.rc;
import w0.s6;
import w0.sc;
import w0.sd;
import w0.sf;
import w0.t1;
import w0.t6;
import w0.tc;
import w0.u;
import w0.u6;
import w0.u8;
import w0.ub;
import w0.uc;
import w0.ud;
import w0.v1;
import w0.v8;
import w0.v9;
import w0.vc;
import w0.ve;
import w0.w5;
import w0.w8;
import w0.wa;
import w0.wb;
import w0.wc;
import w0.wd;
import w0.x8;
import w0.xa;
import w0.xb;
import w0.xc;
import w0.y6;
import w0.y8;
import w0.ya;
import w0.yf;
import w0.z;
import w0.z8;
import w0.z9;
import w0.zb;
import w0.zc;
import w0.zd;
import x1.a;
import x1.c;
import y1.f;
import y1.h;
import y1.p;
import y1.s;

/* JADX INFO: loaded from: classes.dex */
public class MainActivity extends j {

    /* JADX INFO: renamed from: z1, reason: collision with root package name */
    public static final /* synthetic */ int f1002z1 = 0;
    public long A0;
    public final d B0;
    public String C0;
    public String D0;
    public final ArrayList E;
    public Integer E0;
    public final ArrayList F;
    public long F0;
    public final int G;
    public final jc G0;
    public final int H;
    public boolean H0;
    public int I;
    public List I0;
    public final c J;
    public volatile boolean J0;
    public WifiManager K;
    public Boolean K0;
    public volatile Car L;
    public volatile boolean L0;
    public volatile CarPropertyManager M;
    public long M0;
    public volatile CarAudioManager N;
    public Boolean N0;
    public boolean O;
    public volatile o4 O0;
    public String P;
    public long P0;
    public long Q;
    public Toast Q0;
    public int R;
    public final ArrayList R0;
    public boolean S;
    public final boolean[] S0;
    public int T;
    public String T0;
    public int U;
    public volatile String U0;
    public final LinkedHashMap V;
    public volatile String V0;
    public final LinkedHashMap W;
    public MediaPlayer W0;
    public final LinkedHashMap X;
    public volatile Boolean X0;
    public final ArrayList Y;
    public long Y0;
    public final ArrayList Z;
    public volatile boolean Z0;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final c f1003a0;

    /* JADX INFO: renamed from: a1, reason: collision with root package name */
    public ProgressBar f1004a1;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public List f1005b0;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    public i f1006b1;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public int f1007c0;

    /* JADX INFO: renamed from: c1, reason: collision with root package name */
    public volatile Boolean f1008c1;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public Object f1009d0;

    /* JADX INFO: renamed from: d1, reason: collision with root package name */
    public volatile boolean f1010d1;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public int f1011e0;

    /* JADX INFO: renamed from: e1, reason: collision with root package name */
    public long f1012e1;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public List f1013f0;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    public volatile Boolean f1014f1;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public int f1015g0;

    /* JADX INFO: renamed from: g1, reason: collision with root package name */
    public long f1016g1;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public boolean f1017h0;

    /* JADX INFO: renamed from: h1, reason: collision with root package name */
    public volatile boolean f1018h1;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public CharSequence f1019i0;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    public final String f1020i1;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public String f1021j0;

    /* JADX INFO: renamed from: j1, reason: collision with root package name */
    public final int f1022j1;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public final c f1023k0;

    /* JADX INFO: renamed from: k1, reason: collision with root package name */
    public final jc f1024k1;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public boolean f1025l0;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    public final long f1026l1;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public boolean f1027m0;

    /* JADX INFO: renamed from: m1, reason: collision with root package name */
    public boolean f1028m1;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public boolean f1029n0;

    /* JADX INFO: renamed from: n1, reason: collision with root package name */
    public volatile boolean f1030n1;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public boolean f1031o0;

    /* JADX INFO: renamed from: o1, reason: collision with root package name */
    public String f1032o1;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public volatile boolean f1033p0;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    public String f1034p1;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public volatile Boolean f1035q0;
    public final int[] q1;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public volatile boolean f1036r0;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    public final int[] f1037r1;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public final AtomicInteger f1038s0;

    /* JADX INFO: renamed from: s1, reason: collision with root package name */
    public final Set f1039s1;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public m f1040t;
    public volatile boolean t0;

    /* JADX INFO: renamed from: t1, reason: collision with root package name */
    public final Set f1041t1;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public final AtomicInteger f1043u0;

    /* JADX INFO: renamed from: u1, reason: collision with root package name */
    public final AtomicInteger f1044u1;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public final StringBuilder f1046v0;

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    public Integer f1047v1;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public final Object f1049w0;
    public Integer w1;
    public boolean x0;

    /* JADX INFO: renamed from: x1, reason: collision with root package name */
    public final Set f1051x1;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public volatile boolean f1052y;
    public final jc y0;

    /* JADX INFO: renamed from: y1, reason: collision with root package name */
    public final Set f1053y1;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public volatile Boolean f1055z0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final c f1042u = new c(new h9(this, 20));

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final Handler f1045v = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final ThreadPoolExecutor f1048w = t1.C("manutencao", null, 6);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final ThreadPoolExecutor f1050x = t1.C("vehicle-panel", new l1(10), 2);

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final ScheduledThreadPoolExecutor f1054z = t1.a("car-command", new l1(11));
    public final AtomicInteger A = new AtomicInteger();
    public final ThreadPoolExecutor B = t1.C("state-reader", new l1(12), 2);
    public final ThreadPoolExecutor C = t1.C("lentas", null, 6);
    public final ArrayList D = new ArrayList();

    public MainActivity() {
        s.W(new a(78, k1.a.I("Correção do som de travamento")));
        this.E = new ArrayList();
        this.F = new ArrayList();
        this.G = 1;
        this.H = 2;
        this.I = 0;
        this.J = new c(new ub(this, 2));
        this.P = "";
        this.S = true;
        this.U = R.id.masterToolsTela;
        this.V = new LinkedHashMap();
        this.W = new LinkedHashMap();
        this.X = new LinkedHashMap();
        this.Y = new ArrayList();
        this.Z = new ArrayList();
        this.f1003a0 = new c(new ub(this, 7));
        p pVar = p.f4663a;
        this.f1005b0 = pVar;
        this.f1009d0 = pVar;
        this.f1013f0 = pVar;
        this.f1017h0 = true;
        this.f1019i0 = "";
        this.f1021j0 = "";
        this.f1023k0 = new c(new v8(this, 5));
        this.f1038s0 = new AtomicInteger();
        this.f1043u0 = new AtomicInteger();
        this.f1046v0 = new StringBuilder(8192);
        this.f1049w0 = new Object();
        this.y0 = new jc(this, 1);
        this.B0 = new d(16, this);
        this.G0 = new jc(this, 2);
        this.O0 = o4.f3974e;
        this.R0 = new ArrayList();
        this.S0 = new boolean[8];
        h.V(1, 2, 3, 6);
        this.f1020i1 = "/sys/devices/platform/1000b000.pinctrl/mt_gpio";
        this.f1022j1 = 151;
        this.f1024k1 = new jc(this, 0);
        this.f1026l1 = 30L;
        this.f1032o1 = "";
        this.f1034p1 = "";
        this.q1 = new int[]{0, 1};
        this.f1037r1 = new int[]{0, 1, 16777216};
        this.f1039s1 = k1.a.P(537003265, 537003266, 537003267);
        this.f1041t1 = k1.a.P(570491137, 570491138, 570491139);
        this.f1044u1 = new AtomicInteger();
        this.f1051x1 = k1.a.P(570491137, 570491138, 570491139);
        this.f1053y1 = k1.a.P(537003265, 537003266, 537003267);
    }

    public static void D1(View view) {
        if (view != null) {
            if (view instanceof ScrollView) {
                ((ScrollView) view).scrollTo(0, 0);
                return;
            }
            if (view instanceof NestedScrollView) {
                ((NestedScrollView) view).scrollTo(0, 0);
                return;
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i3 = 0; i3 < childCount; i3++) {
                    D1(viewGroup.getChildAt(i3));
                }
            }
        }
    }

    public static boolean F() {
        try {
            String strB = new kotlinx.coroutines.scheduling.h(5555).b(3000, "echo CANAL_OK");
            g.d(strB, "runShell(...)");
            return k.e0(strB, "CANAL_OK", false);
        } catch (Throwable unused) {
            return false;
        }
    }

    public static void F0(final MainActivity mainActivity, int i3, final String str, boolean z2, final h2.a aVar, l lVar, int i4) {
        if ((i4 & 4) != 0) {
            z2 = false;
        }
        final boolean z3 = z2;
        if ((i4 & 16) != 0) {
            lVar = null;
        }
        final l lVar2 = lVar;
        mainActivity.findViewById(i3).setOnClickListener(new View.OnClickListener(str, z3, lVar2, aVar) { // from class: w0.w9
            public final /* synthetic */ String b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ boolean f4436c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public final /* synthetic */ h2.l f4437d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final /* synthetic */ i2.e f4438e;

            /* JADX WARN: Multi-variable type inference failed */
            {
                this.f4438e = (i2.e) aVar;
            }

            /* JADX WARN: Type inference failed for: r4v7, types: [h2.a, i2.e] */
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i5 = MainActivity.f1002z1;
                MainActivity mainActivity2 = this.f4435a;
                SharedPreferences sharedPreferencesO0 = mainActivity2.o0();
                String str2 = this.b;
                boolean z4 = !sharedPreferencesO0.getBoolean(str2, this.f4436c);
                mainActivity2.o0().edit().putBoolean(str2, z4).apply();
                h2.l lVar3 = this.f4437d;
                if (lVar3 != null) {
                    lVar3.c(Boolean.valueOf(z4));
                }
                this.f4438e.a();
            }
        });
    }

    public static boolean G1(String str) {
        String strN = t1.n(str, "PHONE");
        if (strN == null) {
            return false;
        }
        if (!t1.K(strN)) {
            strN = null;
        }
        return (strN == null || k.e0(str, "Falha no ADB local", true) || k.e0(str, "exit_code=", true) || k.e0(str, "ERRO:", true) || k.e0(str, "REGRAS_NAO_ENCONTRADAS", true) || t1.e(str, strN) == c4.f3426c || !k.e0(str, "Salvo:", true)) ? false : true;
    }

    public static Class[] H(Object[] objArr) {
        Class<?> cls;
        ArrayList arrayList = new ArrayList(objArr.length);
        for (Object obj : objArr) {
            if (obj instanceof Integer) {
                cls = Integer.TYPE;
                g.b(cls);
            } else if (obj instanceof Boolean) {
                cls = Boolean.TYPE;
                g.b(cls);
            } else {
                cls = obj.getClass();
            }
            arrayList.add(cls);
        }
        return (Class[]) arrayList.toArray(new Class[0]);
    }

    public static String I(String str, String str2) {
        return "connadaptor_publicado_em_" + str2 + '_' + str;
    }

    public static void J1(final MainActivity mainActivity, final View view, final String str, final long j3, final int i3, final String str2, String str3, l lVar, l lVar2, boolean z2, String str4, h2.a aVar, int i4) {
        String str5 = null;
        String str6 = (i4 & 64) != 0 ? null : str3;
        final l lVar3 = (i4 & 128) != 0 ? null : lVar;
        final l lVar4 = (i4 & 256) != 0 ? null : lVar2;
        final boolean z3 = (i4 & 512) != 0 ? true : z2;
        String str7 = (i4 & 1024) != 0 ? null : str4;
        h2.a aVar2 = (i4 & 2048) != 0 ? null : aVar;
        mainActivity.getClass();
        if (str7 != null) {
            str5 = "main:" + str7 + ':' + System.nanoTime();
        }
        final String str8 = str5;
        if (str8 != null && !zd.b(str8)) {
            b.n(R.string.k_installer_already_running, 1, mainActivity, "getString(...)");
            return;
        }
        if (view != null) {
            view.setEnabled(false);
        }
        if (str6 != null) {
            mainActivity.t2(str6, 0);
        }
        final long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            final h2.a aVar3 = aVar2;
            mainActivity.C.execute(new Runnable() { // from class: w0.va
                @Override // java.lang.Runnable
                public final void run() {
                    String strConcat;
                    String str9 = str2;
                    int i5 = i3;
                    int i6 = MainActivity.f1002z1;
                    h2.a aVar4 = aVar3;
                    final MainActivity mainActivity2 = mainActivity;
                    String str10 = str8;
                    try {
                        if (aVar4 != null) {
                            strConcat = (String) aVar4.a();
                        } else {
                            e9 e9Var = new e9(mainActivity2, 17);
                            mainActivity2.getClass();
                            strConcat = m.x(str9, i5, e9Var, new l9(mainActivity2, 1));
                        }
                        if (str10 != null) {
                            androidx.emoji2.text.m mVar = zd.f4636a;
                            zd.a(str10);
                        }
                    } catch (Throwable th) {
                        try {
                            String message = th.getMessage();
                            if (message == null) {
                                message = th.getClass().getSimpleName();
                            }
                            strConcat = "ERROR: ".concat(message);
                            if (str10 != null) {
                            }
                        } catch (Throwable th2) {
                            if (str10 != null) {
                                androidx.emoji2.text.m mVar2 = zd.f4636a;
                                zd.a(str10);
                            }
                            throw th2;
                        }
                    }
                    final String str11 = strConcat;
                    long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
                    Handler handler = mainActivity2.f1045v;
                    final String str12 = str;
                    final h2.l lVar5 = lVar3;
                    final boolean z4 = z3;
                    final View view2 = view;
                    final h2.l lVar6 = lVar4;
                    Runnable runnable = new Runnable() { // from class: w0.ib
                        @Override // java.lang.Runnable
                        public final void run() {
                            View view3;
                            int i7 = MainActivity.f1002z1;
                            StringBuilder sb = new StringBuilder();
                            sb.append(str12);
                            sb.append('\n');
                            MainActivity mainActivity3 = mainActivity2;
                            mainActivity3.getClass();
                            String str13 = str11;
                            sb.append(MainActivity.v2(12000, str13));
                            mainActivity3.w("ADB", sb.toString());
                            h2.l lVar7 = lVar5;
                            String string = lVar7 != null ? (String) lVar7.c(str13) : null;
                            if (string == null) {
                                if (o2.k.e0(str13, "Falha no ADB local", true) || o2.k.e0(str13, "NAO_CONFIRMADO", true) || o2.k.e0(str13, "ERRO", true) || o2.k.e0(str13, "error", true) || o2.k.e0(str13, "not found", true) || o2.k.e0(str13, "No such", true) || o2.k.e0(str13, "Permission denied", true) || o2.k.e0(str13, "Read-only file system", true)) {
                                    string = mainActivity3.getString(R.string.k_not_completed_see_log);
                                    i2.g.d(string, "getString(...)");
                                } else {
                                    string = mainActivity3.getString(R.string.k_completed);
                                    i2.g.d(string, "getString(...)");
                                }
                            }
                            mainActivity3.t2(string, 1);
                            if (z4 && (view3 = view2) != null) {
                                view3.setEnabled(true);
                            }
                            h2.l lVar8 = lVar6;
                            if (lVar8 != null) {
                                lVar8.c(str13);
                            }
                            mainActivity3.n0().a();
                        }
                    };
                    long j4 = j3 - jCurrentTimeMillis2;
                    if (j4 < 0) {
                        j4 = 0;
                    }
                    handler.postDelayed(runnable, j4);
                }
            });
        } catch (Throwable th) {
            if (str8 != null) {
                m mVar = zd.f4636a;
                zd.a(str8);
            }
            if (view != null) {
                view.setEnabled(true);
            }
            String message = th.getMessage();
            if (message == null) {
                message = th.getClass().getSimpleName();
            }
            mainActivity.w("ADB", message);
        }
    }

    public static /* synthetic */ void K(MainActivity mainActivity, int i3) {
        mainActivity.J((i3 & 1) == 0, false);
    }

    public static String K0(String str) {
        Locale locale = Locale.US;
        g.d(locale, "US");
        String lowerCase = str.toLowerCase(locale);
        g.d(lowerCase, "toLowerCase(...)");
        StringBuilder sb = new StringBuilder();
        int length = lowerCase.length();
        for (int i3 = 0; i3 < length; i3++) {
            char cCharAt = lowerCase.charAt(i3);
            if (('0' <= cCharAt && cCharAt < ':') || ('a' <= cCharAt && cCharAt < 'g')) {
                sb.append(cCharAt);
            }
        }
        String string = sb.toString();
        g.d(string, "toString(...)");
        if (string.length() == 32) {
            return string;
        }
        return null;
    }

    public static String M(CharSequence charSequence) {
        String string = charSequence.toString();
        Pattern patternCompile = Pattern.compile("^[\\s\\p{So}\\p{Sk}\\p{Cn}]+");
        g.d(patternCompile, "compile(...)");
        g.e(string, "input");
        String strReplaceAll = patternCompile.matcher(string).replaceAll("");
        g.d(strReplaceAll, "replaceAll(...)");
        return k.E0(strReplaceAll).toString();
    }

    public static HttpURLConnection N0(String str) throws IOException {
        URLConnection uRLConnectionOpenConnection = new URL(str + (k.f0(str, '?') ? "&" : "?") + "nocache=" + System.currentTimeMillis()).openConnection();
        g.c(uRLConnectionOpenConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
        HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
        httpURLConnection.setConnectTimeout(10000);
        httpURLConnection.setReadTimeout(120000);
        httpURLConnection.setRequestMethod("GET");
        httpURLConnection.setRequestProperty("Cache-Control", "no-cache, no-store");
        httpURLConnection.setRequestProperty("Pragma", "no-cache");
        return httpURLConnection;
    }

    public static void Q0(MainActivity mainActivity, String str) {
        int i3;
        new w5(7);
        if (str.equals(mainActivity.P())) {
            return;
        }
        String strQ = mainActivity.Q(str);
        e.h hVar = new e.h(mainActivity);
        e.d dVar = (e.d) hVar.b;
        dVar.f1554d = mainActivity.getString(R.string.k_modo_confirm_title, strQ);
        if (str.equals("aa")) {
            i3 = R.string.k_modo_aa_msg;
        } else {
            i3 = str.equals("carplay") ? R.string.k_modo_carplay_msg : R.string.k_modo_ambos_msg;
        }
        dVar.f = mainActivity.getString(i3);
        dVar.f1562m = false;
        hVar.e(android.R.string.ok, new m9(mainActivity, str, 1));
        hVar.b(R.string.common_cancel, new jb());
        hVar.h();
    }

    /* JADX WARN: Code duplicated, block: B:131:0x0238  */
    /* JADX WARN: Code duplicated, block: B:139:0x0277 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:140:0x0279  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v43, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v14, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r10v16 */
    /* JADX WARN: Type inference failed for: r10v18 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v22 */
    /* JADX WARN: Type inference failed for: r10v25 */
    /* JADX WARN: Type inference failed for: r10v26 */
    /* JADX WARN: Type inference failed for: r10v27 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r10v9 */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v13 */
    /* JADX WARN: Type inference failed for: r11v18 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v21 */
    /* JADX WARN: Type inference failed for: r11v22 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4, types: [int] */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [java.lang.Object, java.lang.String] */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v4, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v10 */
    /* JADX WARN: Type inference failed for: r19v12 */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r19v3 */
    /* JADX WARN: Type inference failed for: r19v4 */
    /* JADX WARN: Type inference failed for: r19v5 */
    /* JADX WARN: Type inference failed for: r19v6 */
    /* JADX WARN: Type inference failed for: r19v9 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4, types: [int] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8, types: [android.content.Context, com.ex.auto.MainActivity] */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r28v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r28v1 */
    /* JADX WARN: Type inference failed for: r28v10 */
    /* JADX WARN: Type inference failed for: r28v11 */
    /* JADX WARN: Type inference failed for: r28v12 */
    /* JADX WARN: Type inference failed for: r28v13 */
    /* JADX WARN: Type inference failed for: r28v2 */
    /* JADX WARN: Type inference failed for: r28v3 */
    /* JADX WARN: Type inference failed for: r28v4 */
    /* JADX WARN: Type inference failed for: r28v5 */
    /* JADX WARN: Type inference failed for: r28v6 */
    /* JADX WARN: Type inference failed for: r28v7, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r28v8 */
    /* JADX WARN: Type inference failed for: r28v9 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v24, types: [h2.l] */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v27 */
    /* JADX WARN: Type inference failed for: r2v28 */
    /* JADX WARN: Type inference failed for: r2v29 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7, types: [h2.l] */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r31v1 */
    /* JADX WARN: Type inference failed for: r32v1 */
    /* JADX WARN: Type inference failed for: r32v10 */
    /* JADX WARN: Type inference failed for: r32v11 */
    /* JADX WARN: Type inference failed for: r32v2 */
    /* JADX WARN: Type inference failed for: r32v3, types: [h2.a] */
    /* JADX WARN: Type inference failed for: r32v4 */
    /* JADX WARN: Type inference failed for: r32v5 */
    /* JADX WARN: Type inference failed for: r32v6 */
    /* JADX WARN: Type inference failed for: r32v7 */
    /* JADX WARN: Type inference failed for: r32v8 */
    /* JADX WARN: Type inference failed for: r32v9 */
    /* JADX WARN: Type inference failed for: r4v10, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r4v11, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v21 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v7 */
    public static void X(MainActivity mainActivity, String str, File file, String str2, String str3, String str4, h2.a aVar, l lVar, int i3) throws Throwable {
        ?? r19;
        ?? r3;
        ?? r4;
        a aVar2;
        ?? r10;
        ?? r5;
        Throwable th;
        long j3;
        ?? r6;
        String str5 = (i3 & 8) != 0 ? null : str3;
        String str6 = (i3 & 16) != 0 ? null : str4;
        int i4 = (i3 & 32) != 0 ? 3 : 2;
        h2.a aVar3 = (i3 & 64) != 0 ? null : aVar;
        l lVar2 = (i3 & 128) != 0 ? null : lVar;
        mainActivity.getClass();
        boolean z2 = false;
        ?? r14 = str;
        String str7 = str5;
        ?? r7 = 0;
        Exception exc = null;
        ?? r8 = str6;
        ?? r11 = aVar3;
        ?? r12 = lVar2;
        ?? r32 = str4;
        while (r7 < i4) {
            int i5 = r7 + 1;
            try {
                try {
                    file.delete();
                    HttpURLConnection httpURLConnectionN0 = N0(r14);
                    long contentLengthLong = httpURLConnectionN0.getContentLengthLong();
                    try {
                        int responseCode = httpURLConnectionN0.getResponseCode();
                        try {
                            if (responseCode != 200) {
                                throw new IllegalStateException(mainActivity.a0(responseCode));
                            }
                            ?? inputStream = httpURLConnectionN0.getInputStream();
                            try {
                                FileOutputStream fileOutputStream = new FileOutputStream(file, z2);
                                try {
                                    try {
                                        byte[] bArr = new byte[65536];
                                        long j4 = 0;
                                        long j5 = 0;
                                        r7 = r7;
                                        r8 = r8;
                                        inputStream = inputStream;
                                        r11 = r11;
                                        r12 = r12;
                                        while (true) {
                                            int i6 = inputStream.read(bArr);
                                            if (i6 <= 0) {
                                                break;
                                            }
                                            ?? r33 = r11;
                                            try {
                                                fileOutputStream.write(bArr, 0, i6);
                                                ?? r31 = r12;
                                                long j6 = j4 + ((long) i6);
                                                try {
                                                    long jCurrentTimeMillis = System.currentTimeMillis();
                                                    if (r31 == 0 || jCurrentTimeMillis - j5 <= 400) {
                                                        str = inputStream;
                                                        j3 = j6;
                                                        r6 = r31;
                                                    } else {
                                                        str = inputStream;
                                                        j3 = j6;
                                                        try {
                                                            r6 = r31;
                                                            try {
                                                                r6.c(mainActivity.i0(str2, j3, contentLengthLong));
                                                                j5 = jCurrentTimeMillis;
                                                            } catch (Throwable th2) {
                                                                th = th2;
                                                                th = th;
                                                                try {
                                                                    throw th;
                                                                } catch (Throwable th3) {
                                                                    a1.b.p(fileOutputStream, th);
                                                                    throw th3;
                                                                }
                                                            }
                                                        } catch (Throwable th4) {
                                                            th = th4;
                                                            th = th;
                                                            throw th;
                                                        }
                                                    }
                                                    r7 = r7;
                                                    j4 = j3;
                                                    i5 = i5;
                                                    inputStream = str;
                                                    r12 = r6;
                                                    r8 = r8;
                                                    r11 = r33;
                                                } catch (Throwable th5) {
                                                    th = th5;
                                                    str = inputStream;
                                                }
                                            } catch (Throwable th6) {
                                                th = th6;
                                                str = inputStream;
                                                th = th;
                                                throw th;
                                            }
                                        }
                                        ?? r28 = inputStream;
                                        ?? r13 = r8;
                                        fileOutputStream.close();
                                        r28.close();
                                        try {
                                            httpURLConnectionN0.disconnect();
                                        } catch (Exception unused) {
                                        }
                                        long length = file.length();
                                        if (length <= 0) {
                                            throw new IllegalStateException(mainActivity.getString(R.string.k_download_empty));
                                        }
                                        if (contentLengthLong > 0 && length != contentLengthLong) {
                                            throw new IllegalStateException(mainActivity.getString(R.string.k_download_truncated, Long.valueOf(length), Long.valueOf(contentLengthLong)));
                                        }
                                        if (str7 != null) {
                                            String strH0 = h0(file, "SHA-256");
                                            if (!strH0.equalsIgnoreCase(str7)) {
                                                String string = mainActivity.getString(R.string.k_sha256_mismatch, k.C0(12, str7), k.C0(12, strH0));
                                                g.d(string, "getString(...)");
                                                throw new ac(string);
                                            }
                                        }
                                        if (r13 != 0) {
                                            ?? H0 = h0(file, "MD5");
                                            if (H0.equalsIgnoreCase(r13)) {
                                                return;
                                            }
                                            String string2 = mainActivity.getString(R.string.k_md5_mismatch, k.C0(8, r13), k.C0(8, H0));
                                            g.d(string2, "getString(...)");
                                            throw new ac(string2);
                                        }
                                        return;
                                    } catch (Throwable th7) {
                                        th = th7;
                                        Throwable th8 = th;
                                        try {
                                            throw th8;
                                        } catch (Throwable th9) {
                                            a1.b.p(str, th8);
                                            throw th9;
                                        }
                                    }
                                } catch (Throwable th10) {
                                    th = th10;
                                    str = inputStream;
                                }
                            } catch (Throwable th11) {
                                th = th11;
                                str = inputStream;
                            }
                        } catch (Throwable th12) {
                            th = th12;
                            try {
                                httpURLConnectionN0.disconnect();
                            } catch (Exception unused2) {
                            }
                            throw th;
                        }
                    } catch (Throwable th13) {
                        th = th13;
                    }
                } catch (Exception e3) {
                    e = e3;
                    exc = e;
                    file.delete();
                    Log.w("MainActivity", "download tentativa " + r12 + '/' + i4 + ": " + exc.getMessage());
                    if ((exc instanceof ac) || r32 == 0) {
                        if (r12 < i4) {
                            if (r8 != 0) {
                                String string3 = r7.getString(R.string.k_download_retry_progress, Integer.valueOf((int) r12), Integer.valueOf(i4));
                                g.d(string3, "getString(...)");
                                r8.c(string3);
                            }
                            long j7 = (long) r12;
                            try {
                                Thread.sleep(3000 * j7 * j7);
                            } catch (InterruptedException unused3) {
                            }
                        }
                        r3 = r12;
                        z2 = false;
                        r4 = r11;
                    } else {
                        try {
                            aVar2 = (a) r32.a();
                        } catch (Exception e4) {
                            b.o(e4, new StringBuilder("revalidar manifesto falhou: "), "MainActivity");
                            aVar2 = null;
                        }
                        if (aVar2 != null) {
                            Object obj = aVar2.f4641a;
                            Object obj2 = aVar2.b;
                            if (g.a(obj, r14)) {
                                if (str7 == null) {
                                    r5 = r11 == 0 ? "" : r11;
                                } else {
                                    r5 = str7;
                                }
                                if (r5.equalsIgnoreCase((String) obj2)) {
                                    if (r12 < i4) {
                                        if (r8 != 0) {
                                            String string4 = r7.getString(R.string.k_download_retry_progress, Integer.valueOf((int) r12), Integer.valueOf(i4));
                                            g.d(string4, "getString(...)");
                                            r8.c(string4);
                                        }
                                        long j8 = (long) r12;
                                        Thread.sleep(3000 * j8 * j8);
                                    }
                                    r3 = r12;
                                    z2 = false;
                                    r4 = r11;
                                }
                            }
                            StringBuilder sb = new StringBuilder();
                            sb.append(str2);
                            sb.append(": o manifesto mudou durante o download — seguindo o alvo novo (");
                            String str8 = (String) obj2;
                            sb.append(k.C0(12, str8));
                            sb.append(')');
                            r7.w("Update", sb.toString());
                            r14 = (String) obj;
                            if (str7 != null) {
                                str7 = str8;
                                r10 = r11;
                            } else {
                                r10 = str8;
                            }
                            r4 = r10;
                            r3 = r19 == true ? 1 : 0;
                            z2 = false;
                        } else {
                            if (r12 < i4) {
                                if (r8 != 0) {
                                    String string5 = r7.getString(R.string.k_download_retry_progress, Integer.valueOf((int) r12), Integer.valueOf(i4));
                                    g.d(string5, "getString(...)");
                                    r8.c(string5);
                                }
                                long j9 = (long) r12;
                                Thread.sleep(3000 * j9 * j9);
                            }
                            r3 = r12;
                            z2 = false;
                            r4 = r11;
                        }
                    }
                    r11 = r32;
                    r7 = r3;
                    r8 = r4;
                    r12 = r8;
                    r14 = r14;
                    r32 = r32;
                }
            } catch (Exception e5) {
                e = e5;
                r19 = r7;
                r32 = r11;
                r7 = mainActivity;
                r11 = r8;
                r8 = r12;
                r12 = i5;
                exc = e;
                file.delete();
                Log.w("MainActivity", "download tentativa " + r12 + '/' + i4 + ": " + exc.getMessage());
                if (exc instanceof ac) {
                    if (r12 < i4) {
                        if (r8 != 0) {
                            String string6 = r7.getString(R.string.k_download_retry_progress, Integer.valueOf((int) r12), Integer.valueOf(i4));
                            g.d(string6, "getString(...)");
                            r8.c(string6);
                        }
                        long j10 = (long) r12;
                        Thread.sleep(3000 * j10 * j10);
                    }
                    r3 = r12;
                    z2 = false;
                    r4 = r11;
                } else {
                    if (r12 < i4) {
                        if (r8 != 0) {
                            String string7 = r7.getString(R.string.k_download_retry_progress, Integer.valueOf((int) r12), Integer.valueOf(i4));
                            g.d(string7, "getString(...)");
                            r8.c(string7);
                        }
                        long j11 = (long) r12;
                        Thread.sleep(3000 * j11 * j11);
                    }
                    r3 = r12;
                    z2 = false;
                    r4 = r11;
                }
                r11 = r32;
                r7 = r3;
                r8 = r4;
                r12 = r8;
                r14 = r14;
                r32 = r32;
            }
        }
        if (exc == null) {
            throw new IllegalStateException(mainActivity.getString(R.string.k_download_failed_after_attempts, Integer.valueOf(i4)));
        }
    }

    public static Integer b1(CarPropertyManager carPropertyManager, int i3, int[] iArr, Set set) {
        int length = iArr.length;
        int i4 = 0;
        while (true) {
            if (i4 >= length) {
                return null;
            }
            CarPropertyValue carPropertyValueD = p1.d(carPropertyManager, i3, iArr[i4], 800L);
            if (carPropertyValueD != null && carPropertyValueD.getStatus() == 0) {
                Object value = carPropertyValueD.getValue();
                Integer num = value instanceof Integer ? (Integer) value : null;
                if (num != null && set.contains(num)) {
                    return num;
                }
            }
            i4++;
        }
    }

    public static final void b2(MainActivity mainActivity, int i3, int i4, int i5, int i6, h2.a aVar, boolean z2, l lVar) {
        SeekBar seekBar = (SeekBar) mainActivity.findViewById(i3);
        TextView textView = (TextView) mainActivity.findViewById(i4);
        seekBar.setMax(i6 - i5);
        seekBar.setProgress(k1.a.k(((Number) aVar.a()).intValue() - i5, 0, seekBar.getMax()));
        StringBuilder sb = new StringBuilder();
        sb.append(seekBar.getProgress() + i5);
        sb.append('%');
        textView.setText(sb.toString());
        seekBar.setOnSeekBarChangeListener(new sc(i5, textView, lVar, z2, mainActivity));
    }

    public static final TextView c2(MainActivity mainActivity, String str) {
        TextView textView = new TextView(mainActivity);
        textView.setText(str);
        textView.setTextSize(13.0f);
        textView.setGravity(17);
        textView.setTextColor(mainActivity.getColor(R.color.master_text));
        textView.setBackgroundResource(R.drawable.bg_master_chip);
        textView.setClickable(true);
        return textView;
    }

    public static final void d2(TextView textView, MainActivity mainActivity) {
        textView.setText(k1.a.k(mainActivity.o0().getInt("widget_apps_rows", 2), 1, 6) + " × " + k1.a.k(mainActivity.o0().getInt("widget_apps_cols", 3), 1, 6));
    }

    public static final void e2(TextView textView, MainActivity mainActivity, ec ecVar) {
        textView.setSelected(mainActivity.o0().getBoolean(ecVar.f3541c, false));
        textView.setTextColor(mainActivity.getColor(textView.isSelected() ? R.color.master_green : R.color.master_text_secondary));
    }

    public static final void f2(MainActivity mainActivity, TextView textView, TextView textView2) {
        boolean z2 = mainActivity.o0().getBoolean("widget_volume_vertical", false);
        boolean z3 = mainActivity.o0().getBoolean("widget_volume_signs", false);
        textView.setText(mainActivity.getString(z2 ? R.string.k_widget_volume_vertical : R.string.k_widget_volume_horizontal));
        textView2.setText(mainActivity.getString(z3 ? R.string.k_widget_volume_signs : R.string.k_widget_volume_slider));
        textView.setSelected(z2);
        textView2.setSelected(z3);
    }

    public static final a g2(MainActivity mainActivity, ec ecVar, bd bdVar, float f, String str, String str2, int i3, int i4) {
        LinearLayout linearLayout = new LinearLayout(mainActivity);
        linearLayout.setOrientation(1);
        LinearLayout linearLayout2 = new LinearLayout(mainActivity);
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(16);
        TextView textView = new TextView(mainActivity);
        textView.setText(str);
        textView.setTextSize(12.0f);
        textView.setMaxLines(1);
        textView.setTextColor(mainActivity.getColor(R.color.master_text_secondary));
        TextView textView2 = new TextView(mainActivity);
        textView2.setTextSize(12.0f);
        textView2.setGravity(8388613);
        textView2.setMaxLines(1);
        textView2.setTextColor(mainActivity.getColor(R.color.master_text_secondary));
        SeekBar seekBar = new SeekBar(mainActivity);
        seekBar.setMax(i4 - i3);
        seekBar.setProgress(k1.a.k(mainActivity.o0().getInt(str2, 100) - i3, 0, seekBar.getMax()));
        seekBar.setProgressTintList(ColorStateList.valueOf(mainActivity.getColor(R.color.master_green)));
        seekBar.setThumbTintList(ColorStateList.valueOf(mainActivity.getColor(R.color.master_green)));
        int progress = seekBar.getProgress() + i3;
        StringBuilder sb = new StringBuilder();
        sb.append(progress);
        sb.append('%');
        textView2.setText(sb.toString());
        seekBar.setOnSeekBarChangeListener(new rc(i3, mainActivity, str2, ecVar, bdVar, textView2));
        linearLayout2.addView(textView, new LinearLayout.LayoutParams(0, -2, 1.0f));
        linearLayout2.addView(textView2, new LinearLayout.LayoutParams((int) (46 * f), -2));
        linearLayout.addView(linearLayout2);
        linearLayout.addView(seekBar, new LinearLayout.LayoutParams(-1, (int) (38 * f)));
        return new a(linearLayout, seekBar);
    }

    public static String h0(File file, String str) throws NoSuchAlgorithmException, IOException {
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            byte[] bArr = new byte[8192];
            while (true) {
                int i3 = fileInputStream.read(bArr);
                if (i3 < 0) {
                    fileInputStream.close();
                    byte[] bArrDigest = messageDigest.digest();
                    g.d(bArrDigest, "digest(...)");
                    return f.b0(bArrDigest, new n2(29));
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

    public static void h1(MainActivity mainActivity) {
        mainActivity.B.execute(new f9(mainActivity, false, 9));
    }

    public static final void i2(int i3, int i4, MainActivity mainActivity, String str) {
        SeekBar seekBar = (SeekBar) mainActivity.findViewById(i3);
        seekBar.setProgress(mainActivity.o0().getInt(str, 50));
        ((TextView) mainActivity.findViewById(i4)).setText(mainActivity.D(seekBar.getProgress()));
        seekBar.setOnSeekBarChangeListener(new vc(mainActivity, str, i4));
    }

    public static final void j1(MainActivity mainActivity, int i3, int i4, n4 n4Var) {
        View viewFindViewById = mainActivity.findViewById(i3);
        if (viewFindViewById == null) {
            return;
        }
        m4 m4VarA = t1.A(i4, n4Var);
        viewFindViewById.setSelected(m4VarA == m4.f3879a);
        viewFindViewById.setActivated(m4VarA == m4.b);
    }

    public static String j2(String str) {
        g.e(str, "s");
        return b.i(str, "'", "'\\''", new StringBuilder("'"), '\'');
    }

    public static final Boolean k1(String str, String str2) {
        String str3;
        Integer numW;
        String strConcat = str2.concat("=(\\d+)");
        g.e(strConcat, "pattern");
        Pattern patternCompile = Pattern.compile(strConcat);
        g.d(patternCompile, "compile(...)");
        g.e(str, "input");
        Matcher matcher = patternCompile.matcher(str);
        g.d(matcher, "matcher(...)");
        e eVarB = k1.a.b(matcher, 0, str);
        if (eVarB == null || (str3 = (String) ((o2.d) eVarB.a()).get(1)) == null || (numW = o2.s.W(str3)) == null) {
            return null;
        }
        return Boolean.valueOf(numW.intValue() > 0);
    }

    public static String p2(String str) {
        StringBuilder sbM = b.m("\n            DEV_ABI=$(getprop ro.product.cpu.abi)\n            DEV_ABI_TOKEN=$(echo \"$DEV_ABI\" | tr '-' '_')\n            DENS=$(wm density 2>/dev/null | grep -oE '[0-9]+' | head -1)\n            if [ -z \"$DENS\" ]; then DENS=160; fi\n            if [ \"$DENS\" -le 120 ]; then BUCKET=ldpi\n            elif [ \"$DENS\" -le 160 ]; then BUCKET=mdpi\n            elif [ \"$DENS\" -le 213 ]; then BUCKET=tvdpi\n            elif [ \"$DENS\" -le 240 ]; then BUCKET=hdpi\n            elif [ \"$DENS\" -le 320 ]; then BUCKET=xhdpi\n            elif [ \"$DENS\" -le 480 ]; then BUCKET=xxhdpi\n            else BUCKET=xxxhdpi\n            fi\n            echo \"Device: abi=$DEV_ABI density=$DENS bucket=$BUCKET\"\n            find ", str, "/extracted -maxdepth 2 -name \"*.apk\" | sort > ", str, "/all_apks.txt\n            > ");
        b.q(sbM, str, "/filtered_apks.txt\n            ARCH_TOKENS=\"arm64_v8a armeabi_v7a armeabi x86_64 x86 mips64 mips\"\n            DPI_TOKENS=\"ldpi mdpi tvdpi hdpi xhdpi xxhdpi xxxhdpi\"\n            while IFS= read -r f; do\n              keep=1\n              for arch_tok in $ARCH_TOKENS; do\n                case \"$f\" in\n                  *\".$arch_tok.\"*)\n                    if [ \"$arch_tok\" != \"$DEV_ABI_TOKEN\" ]; then keep=0; fi\n                    ;;\n                esac\n              done\n              for dpi_tok in $DPI_TOKENS; do\n                case \"$f\" in\n                  *\".$dpi_tok.\"*)\n                    if [ \"$dpi_tok\" != \"$BUCKET\" ]; then keep=0; fi\n                    ;;\n                esac\n              done\n              if [ \"$keep\" -eq 1 ]; then echo \"$f\" >> ", str, "/filtered_apks.txt; fi\n            done < ");
        b.q(sbM, str, "/all_apks.txt\n            # Fallback POR CATEGORIA (docs/92): o filtro avalia cada split isolado, então se o pacote\n            # traz UM só split de densidade (norma em XAPK/APKM de APKPure/APKMirror) e ele não bate com\n            # o bucket do device, esse split é descartado — e o base.apk de um App Bundle não guarda os\n            # recursos por densidade → o app instala mas crasha no 1º inflate (recurso ausente). Aqui:\n            # se ZERO splits de densidade sobraram mas o pacote tinha algum, recupera todos (o Android\n            # escala densidade diferente; só não sabe inventar recurso não-instalado). Idem p/ ABI.\n            DPI_RE='\\.(ldpi|mdpi|tvdpi|hdpi|xhdpi|xxhdpi|xxxhdpi)\\.'\n            ABI_RE='\\.(arm64_v8a|armeabi_v7a|armeabi|x86_64|x86|mips64|mips)\\.'\n            TOTAL_DPI=$(grep -cE \"$DPI_RE\" ", str, "/all_apks.txt)\n            KEPT_DPI=$(grep -cE \"$DPI_RE\" ");
        b.q(sbM, str, "/filtered_apks.txt)\n            if [ \"$TOTAL_DPI\" -gt 0 ] && [ \"$KEPT_DPI\" -eq 0 ]; then\n              echo \"AVISO: nenhum split de densidade bate com $BUCKET -- mantendo todos (Android escala)\"\n              grep -E \"$DPI_RE\" ", str, "/all_apks.txt >> ");
        b.q(sbM, str, "/filtered_apks.txt\n              sort -u ", str, "/filtered_apks.txt > ");
        b.q(sbM, str, "/filtered_apks.tmp && mv ", str, "/filtered_apks.tmp ");
        b.q(sbM, str, "/filtered_apks.txt\n            fi\n            TOTAL_ABI=$(grep -cE \"$ABI_RE\" ", str, "/all_apks.txt)\n            KEPT_ABI=$(grep -cE \"$ABI_RE\" ");
        b.q(sbM, str, "/filtered_apks.txt)\n            if [ \"$TOTAL_ABI\" -gt 0 ] && [ \"$KEPT_ABI\" -eq 0 ]; then\n              echo \"AVISO: nenhum split de abi bate com $DEV_ABI -- mantendo todos\"\n              grep -E \"$ABI_RE\" ", str, "/all_apks.txt >> ");
        b.q(sbM, str, "/filtered_apks.txt\n              sort -u ", str, "/filtered_apks.txt > ");
        b.q(sbM, str, "/filtered_apks.tmp && mv ", str, "/filtered_apks.tmp ");
        b.q(sbM, str, "/filtered_apks.txt\n            fi\n            if [ ! -s ", str, "/filtered_apks.txt ]; then\n              echo \"AVISO: filtro de arch/densidade nao sobrou nenhum apk -- instalando tudo (fallback)\"\n              cp ");
        sbM.append(str);
        sbM.append("/all_apks.txt ");
        sbM.append(str);
        sbM.append("/filtered_apks.txt\n            fi\n        ");
        return o2.m.V(sbM.toString());
    }

    public static final void t1(MainActivity mainActivity, boolean z2, int i3) {
        TextView textView = (TextView) mainActivity.findViewById(i3);
        textView.setBackgroundResource(z2 ? R.drawable.bg_master_activate : R.drawable.bg_master_restart);
        textView.setTextColor(androidx.core.content.c.a(mainActivity, z2 ? R.color.master_green : R.color.master_text_secondary));
    }

    public static String u0(String str) {
        return o2.m.V("\n            CREATE_OUT=$(pm install-create -r -g -d 2>&1)\n            echo \"$CREATE_OUT\"\n            SESSION=$(echo \"$CREATE_OUT\" | grep -oE '[0-9]+' | head -1)\n            if [ -z \"$SESSION\" ]; then\n              echo \"Failure: nao foi possivel criar sessao de instalacao\"\n            else\n              IDX=0\n              while IFS= read -r apk; do\n                SIZE=$(stat -c%s \"$apk\" 2>/dev/null)\n                pm install-write -S \"$SIZE\" \"$SESSION\" \"split_$IDX\" \"$apk\" 2>&1\n                IDX=$((IDX+1))\n              done < " + str + "/filtered_apks.txt\n              pm install-commit \"$SESSION\" 2>&1\n            fi\n        ");
    }

    public static String v0() {
        List list;
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            if (networkInterfaces != null) {
                list = Collections.list(networkInterfaces);
                g.d(list, "list(...)");
            } else {
                list = null;
            }
            if (list == null) {
                list = p.f4663a;
            }
            for (NetworkInterface networkInterface : y1.g.i0(list, new b6(5))) {
                if (networkInterface.isUp() && !networkInterface.isLoopback()) {
                    Enumeration<InetAddress> inetAddresses = networkInterface.getInetAddresses();
                    g.d(inetAddresses, "getInetAddresses(...)");
                    ArrayList list2 = Collections.list(inetAddresses);
                    g.d(list2, "list(...)");
                    int size = list2.size();
                    int i3 = 0;
                    while (i3 < size) {
                        Object obj = list2.get(i3);
                        i3++;
                        InetAddress inetAddress = (InetAddress) obj;
                        if ((inetAddress instanceof Inet4Address) && !((Inet4Address) inetAddress).isLoopbackAddress() && ((Inet4Address) inetAddress).isSiteLocalAddress()) {
                            return ((Inet4Address) inetAddress).getHostAddress();
                        }
                    }
                }
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static String v2(int i3, String str) {
        String string = k.F0(str).toString();
        if (string.length() <= i3) {
            return string;
        }
        return k.C0(i3, string) + "\n… (" + (string.length() - i3) + " caracteres omitidos)";
    }

    public static String x0(String str, String str2) {
        String str3;
        String str4 = "\"" + str2 + "\"\\s*:\\s*\"([^\"]+)\"";
        g.e(str4, "pattern");
        Pattern patternCompile = Pattern.compile(str4);
        g.d(patternCompile, "compile(...)");
        Matcher matcher = patternCompile.matcher(str);
        g.d(matcher, "matcher(...)");
        e eVarB = k1.a.b(matcher, 0, str);
        if (eVarB == null || (str3 = (String) y1.g.c0(eVarB.a(), 1)) == null) {
            return null;
        }
        return t.c0(str3, "\\/", "/");
    }

    public final void A() {
        String strR = R();
        this.B.execute(new k9(1, this, S(strR), strR));
    }

    public final List A0() {
        try {
            PackageManager packageManager = getPackageManager();
            int i3 = 0;
            List<ApplicationInfo> installedApplications = packageManager.getInstalledApplications(0);
            g.d(installedApplications, "getInstalledApplications(...)");
            ArrayList arrayList = new ArrayList();
            for (Object obj : installedApplications) {
                ApplicationInfo applicationInfo = (ApplicationInfo) obj;
                int i4 = applicationInfo.flags;
                if ((i4 & 1) == 0 && (i4 & 128) == 0 && !g.a(applicationInfo.packageName, getPackageName())) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList(y1.i.X(arrayList));
            int size = arrayList.size();
            while (i3 < size) {
                Object obj2 = arrayList.get(i3);
                i3++;
                ApplicationInfo applicationInfo2 = (ApplicationInfo) obj2;
                arrayList2.add(new a(applicationInfo2.packageName, ((Object) packageManager.getApplicationLabel(applicationInfo2)) + " (" + applicationInfo2.packageName + ')'));
            }
            return y1.g.i0(arrayList2, new b6(6));
        } catch (Exception unused) {
            return p.f4663a;
        }
    }

    /* JADX WARN: Code duplicated, block: B:30:0x006b A[Catch: Exception -> 0x0076, TryCatch #1 {Exception -> 0x0076, blocks: (B:5:0x000c, B:7:0x0023, B:9:0x0029, B:10:0x002d, B:12:0x0033, B:14:0x0040, B:17:0x0047, B:19:0x004f, B:23:0x0059, B:25:0x005d, B:27:0x0063, B:30:0x006b, B:32:0x0071), top: B:84:0x000c }] */
    /* JADX WARN: Code duplicated, block: B:32:0x0071 A[Catch: Exception -> 0x0076, TRY_LEAVE, TryCatch #1 {Exception -> 0x0076, blocks: (B:5:0x000c, B:7:0x0023, B:9:0x0029, B:10:0x002d, B:12:0x0033, B:14:0x0040, B:17:0x0047, B:19:0x004f, B:23:0x0059, B:25:0x005d, B:27:0x0063, B:30:0x006b, B:32:0x0071), top: B:84:0x000c }] */
    public final void A1() {
        String strV0;
        Object bVar;
        List<LinkAddress> linkAddresses;
        Object next;
        InetAddress address;
        String hostAddress;
        WifiManager wifiManager = this.K;
        if (wifiManager == null) {
            g.h("wifiManager");
            throw null;
        }
        boolean zIsWifiEnabled = wifiManager.isWifiEnabled();
        boolean z2 = false;
        try {
            Object systemService = getSystemService("connectivity");
            g.c(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
            ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
            LinkProperties linkProperties = connectivityManager.getLinkProperties(connectivityManager.getActiveNetwork());
            if (linkProperties == null || (linkAddresses = linkProperties.getLinkAddresses()) == null) {
                strV0 = v0();
                if (strV0 == null) {
                    strV0 = A2();
                }
            } else {
                Iterator<T> it = linkAddresses.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                    InetAddress address2 = ((LinkAddress) next).getAddress();
                    if (address2 != null && (hostAddress = address2.getHostAddress()) != null && k.e0(hostAddress, ".", false) && !hostAddress.equals("127.0.0.1")) {
                        break;
                    }
                }
                LinkAddress linkAddress = (LinkAddress) next;
                strV0 = (linkAddress == null || (address = linkAddress.getAddress()) == null) ? null : address.getHostAddress();
                if (strV0 == null) {
                    strV0 = v0();
                    if (strV0 == null) {
                        strV0 = A2();
                    }
                }
            }
        } catch (Exception unused) {
            strV0 = v0();
            if (strV0 == null) {
                strV0 = A2();
            }
        }
        boolean z3 = strV0 == null || k.m0(strV0);
        TextView textView = (TextView) findViewById(R.id.masterTopIp);
        if (z3) {
            strV0 = getString(R.string.master_no_ip);
            g.d(strV0, "getString(...)");
        }
        textView.setText(strV0);
        textView.setAlpha((z3 || !q0()) ? 0.45f : 1.0f);
        if (zIsWifiEnabled) {
            try {
                WifiManager wifiManager2 = this.K;
                if (wifiManager2 == null) {
                    g.h("wifiManager");
                    throw null;
                }
                WifiInfo connectionInfo = wifiManager2.getConnectionInfo();
                bVar = Boolean.valueOf(!(connectionInfo != null && connectionInfo.getNetworkId() == -1));
                Object obj = Boolean.FALSE;
                if (bVar instanceof x1.b) {
                    bVar = obj;
                }
                if (((Boolean) bVar).booleanValue()) {
                    z2 = true;
                }
            } catch (Throwable th) {
                bVar = new x1.b(th);
            }
        }
        findViewById(R.id.masterTopWifi).setAlpha(z2 ? 1.0f : 0.45f);
    }

    public final String A2() {
        try {
            WifiManager wifiManager = this.K;
            if (wifiManager == null) {
                g.h("wifiManager");
                throw null;
            }
            WifiInfo connectionInfo = wifiManager.getConnectionInfo();
            int ipAddress = connectionInfo != null ? connectionInfo.getIpAddress() : 0;
            if (ipAddress == 0) {
                return getString(R.string.master_no_ip);
            }
            StringBuilder sb = new StringBuilder();
            sb.append(ipAddress & 255);
            sb.append('.');
            sb.append((ipAddress >> 8) & 255);
            sb.append('.');
            sb.append((ipAddress >> 16) & 255);
            sb.append('.');
            sb.append((ipAddress >> 24) & 255);
            return sb.toString();
        } catch (Exception unused) {
            return getString(R.string.master_no_ip);
        }
    }

    public final void B(String str, String str2) {
        String strH0;
        String str3 = str.equals("aa") ? "ambos" : "aa";
        int i3 = u.f4288a;
        g.e(str2, "versao");
        File file = new File(u.c(str3, str2));
        String strG = u.g(str3, str2);
        if (file.isFile()) {
            try {
                strH0 = h0(file, "MD5");
            } catch (Exception unused) {
                strH0 = null;
            }
            if (strH0 != null && strH0.equalsIgnoreCase(strG)) {
                x("Update", "outra variante (" + str3 + ") já estava em cache");
                return;
            }
        }
        new Thread(new z(this, str2, str3, file, 8)).start();
    }

    public final List B0() {
        List listO0 = k.o0(H1(12000, o2.m.V("\n            " + e8.v() + "\n            for dir in " + j2("/sdcard/Download") + ' ' + j2("/storage/emulated/0/Download") + "; do\n              [ -d \"$dir\" ] || continue\n              for f in \"$dir\"/*.apk \"$dir\"/*.APK \"$dir\"/*.xapk \"$dir\"/*.XAPK \"$dir\"/*.apkm \"$dir\"/*.APKM; do\n                [ -f \"$f\" ] && echo \"$f\"\n              done\n            done\n        ")));
        ArrayList arrayList = new ArrayList(y1.i.X(listO0));
        Iterator it = listO0.iterator();
        while (it.hasNext()) {
            arrayList.add(t.c0(k.E0((String) it.next()).toString(), "/sdcard/", "/storage/emulated/0/"));
        }
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            String str = (String) obj;
            if (t.Z(str, ".apk", true) || t.Z(str, ".xapk", true) || t.Z(str, ".apkm", true)) {
                if (t.d0(str, "/sdcard/Download") || t.d0(str, "/storage/emulated/0/Download")) {
                    arrayList2.add(obj);
                }
            }
        }
        return y1.g.Z(arrayList2);
    }

    public final void B1(int i3) {
        TextView textView = (TextView) findViewById(i3);
        if (textView == null) {
            return;
        }
        CharSequence text = textView.getText();
        textView.setText(getString(R.string.master_reiniciando));
        textView.setAlpha(0.6f);
        textView.setEnabled(false);
        this.C.execute(new x8(this, 27));
        this.f1045v.postDelayed(new nc(this, SystemClock.elapsedRealtime(), textView, text), 1000L);
    }

    public final void C() {
        this.f1025l0 = true;
        String string = getString(R.string.k_activating);
        g.d(string, "getString(...)");
        D0(string, true);
        String string2 = getString(R.string.k_activating);
        g.d(string2, "getString(...)");
        t2(string2, 0);
        this.C.execute(new ma(this, 10));
    }

    public final List C0() {
        List listO0 = k.o0(H1(15000, "seen=\"\"\nfor root in /storage/* /mnt/media_rw/* /mnt/usb* /mnt/media_rw/usb*; do\n  [ -d \"$root\" ] || continue\n  case \"$root\" in\n    /storage/emulated|/storage/self|/storage/emulated/*|/storage/self/*) continue ;;\n  esac\n  grep -qE \"[[:space:]]${root}[[:space:]]\" /proc/mounts || continue\n  for f in \"$root\"/*.apk \"$root\"/*.xapk \"$root\"/*.apkm \"$root\"/*/*.apk \"$root\"/*/*.xapk \"$root\"/*/*.apkm \"$root\"/*/*/*.apk \"$root\"/*/*/*.xapk \"$root\"/*/*/*.apkm; do\n    [ -f \"$f\" ] || continue\n    bn=$(basename \"$f\" | tr ' ' '_')\n    sz=$(stat -c '%s' \"$f\" 2>/dev/null)\n    key=\"${bn}_${sz}\"\n    case \" $seen \" in\n      *\" $key \"*) continue ;;\n    esac\n    seen=\"$seen $key\"\n    echo \"$f\"\n  done\ndone"));
        ArrayList arrayList = new ArrayList(y1.i.X(listO0));
        Iterator it = listO0.iterator();
        while (it.hasNext()) {
            arrayList.add(k.E0((String) it.next()).toString());
        }
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i3 = 0;
        int i4 = 0;
        while (i4 < size) {
            Object obj = arrayList.get(i4);
            i4++;
            String str = (String) obj;
            if (t.d0(str, "/") && (t.Z(str, ".apk", true) || t.Z(str, ".xapk", true) || t.Z(str, ".apkm", true))) {
                arrayList2.add(obj);
            }
        }
        ArrayList arrayList3 = new ArrayList();
        int size2 = arrayList2.size();
        while (i3 < size2) {
            Object obj2 = arrayList2.get(i3);
            i3++;
            String str2 = (String) obj2;
            if (!t.d0(str2, "/storage/emulated") && !t.d0(str2, "/storage/self")) {
                arrayList3.add(obj2);
            }
        }
        return y1.g.Z(arrayList3);
    }

    public final void C1() {
        Integer numW;
        SeekBar seekBar = (SeekBar) findViewById(R.id.masterToolsBrightness);
        if (seekBar == null) {
            return;
        }
        try {
            try {
                numW = Integer.valueOf(Settings.System.getInt(getContentResolver(), "screen_brightness"));
            } catch (Throwable unused) {
                numW = null;
            }
        } catch (Throwable unused2) {
            numW = o2.s.W(k.E0(f2.d.h0(new File("/sys/class/leds/lcd-backlight/brightness"))).toString());
        }
        if (numW != null) {
            seekBar.setProgress(k1.a.k(((k1.a.k(numW.intValue(), 0, 255) * 100) + 127) / 255, 5, 100));
        }
        TextView textView = (TextView) findViewById(R.id.masterToolsBrightnessValue);
        if (textView != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(seekBar.getProgress());
            sb.append('%');
            textView.setText(sb.toString());
        }
    }

    public final String D(int i3) {
        if (i3 <= 0) {
            String string = getString(R.string.k_brightness_off_label);
            g.d(string, "getString(...)");
            return string;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(i3);
        sb.append('%');
        return sb.toString();
    }

    public final void D0(String str, boolean z2) {
        int[] iArr = {R.id.masterAndroidActivate, R.id.masterAndroidRestart};
        for (int i3 = 0; i3 < 2; i3++) {
            TextView textView = (TextView) findViewById(iArr[i3]);
            if (textView != null) {
                textView.setEnabled(!z2);
                textView.setAlpha(z2 ? 0.6f : 1.0f);
                if (z2 && str.length() > 0) {
                    textView.setText(str);
                }
            }
        }
        if (z2) {
            return;
        }
        e1();
        s1();
    }

    public final String E() {
        return u.c(P(), R());
    }

    public final void E0(int i3, h2.a aVar, h2.a aVar2) {
        findViewById(i3).setOnClickListener(new y6(aVar2, aVar, this, 2));
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final String E1() {
        String lowerCase;
        String strG0 = G0();
        int i3 = u.f4288a;
        String str = null;
        if (strG0 != null) {
            lowerCase = strG0.toLowerCase(Locale.ROOT);
            g.d(lowerCase, "toLowerCase(...)");
        } else {
            lowerCase = null;
        }
        if (lowerCase != null) {
            switch (lowerCase.hashCode()) {
                case -542402810:
                    if (lowerCase.equals("260459e68360a4ff5c3720d84a2acddd")) {
                        str = "v1111cp";
                    }
                    break;
                case 536239582:
                    if (lowerCase.equals("4b37f46239a938fa164d4a0bdc65a399")) {
                        str = "v1111cp-only";
                    }
                    break;
                case 1244948583:
                    if (lowerCase.equals("d49ab03b18a5c5e21928c59c465394d7")) {
                        str = "v1111aa";
                    }
                    break;
                case 1466524563:
                    if (lowerCase.equals("0c280b07f92a3538bcda1aae2e8b0746")) {
                        str = "v1114aa";
                    }
                    break;
                case 1788734330:
                    if (lowerCase.equals("4b0e1de041032ee63ef0c223926d7889")) {
                        str = "v1114cp";
                    }
                    break;
            }
        }
        return str == null ? u(strG0) : str;
    }

    public final String F1(String str) {
        try {
            return getPackageManager().getApplicationLabel(getPackageManager().getApplicationInfo(str, 0)).toString();
        } catch (Exception unused) {
            return str;
        }
    }

    public final int G(Object... objArr) {
        Object objW0 = w0("getAVASMode", Arrays.copyOf(objArr, objArr.length));
        Integer num = objW0 instanceof Integer ? (Integer) objW0 : null;
        if (num != null) {
            return num.intValue();
        }
        return -1;
    }

    public final String G0() {
        String strH0;
        String str = null;
        try {
            ApplicationInfo applicationInfo = getPackageManager().getApplicationInfo("com.njda.adapter", 0);
            g.d(applicationInfo, "getApplicationInfo(...)");
            File file = new File(applicationInfo.sourceDir);
            String str2 = applicationInfo.sourceDir + '|' + file.length() + '|' + file.lastModified();
            if (g.a(str2, this.U0)) {
                str = this.V0;
            } else {
                try {
                    strH0 = h0(file, "MD5");
                } catch (Throwable unused) {
                    strH0 = null;
                }
                this.U0 = str2;
                this.V0 = strH0;
                str = strH0;
            }
        } catch (Throwable unused2) {
        }
        return str;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:17:0x00c3  */
    public final String H0(File file) {
        boolean zExists;
        String str;
        try {
            return h0(file, "MD5");
        } catch (Exception unused) {
            Log.w("CaFix", "sem permissão de leitura em " + file.getAbsolutePath() + " — normalizando dono/modo");
            if (!F()) {
                x("Update", file.getName() + ": sem leitura e o canal ADB local está fora — ligue o ADB no app antes de tentar de novo");
                ae aeVar = ae.f3361a;
                ae.b("CaFix", file.getName() + " ilegível e canal ADB local fora — causa é o canal, não o arquivo", false);
                return null;
            }
            try {
                H1(8000, e8.v());
            } catch (Exception unused2) {
            }
            try {
                try {
                    String strH0 = h0(file, "MD5");
                    x("Update", file.getName() + ": permissão corrigida, leitura OK");
                    return strH0;
                } catch (Exception unused3) {
                    zExists = file.exists();
                    StringBuilder sb = new StringBuilder();
                    sb.append(file.getName());
                    sb.append(": ilegível mesmo após corrigir permissão — ");
                    if (zExists) {
                        str = "e não consegui apagar";
                    } else {
                        str = "apagado, será baixado de novo";
                    }
                    sb.append(str);
                    x("Update", sb.toString());
                    return null;
                }
            } catch (Exception unused4) {
                StringBuilder sb2 = new StringBuilder("rm -f ");
                String absolutePath = file.getAbsolutePath();
                g.d(absolutePath, "getAbsolutePath(...)");
                sb2.append(j2(absolutePath));
                sb2.append(" 2>&1; echo RM_FEITO");
                H1(8000, sb2.toString());
                zExists = file.exists();
                StringBuilder sb3 = new StringBuilder();
                sb3.append(file.getName());
                sb3.append(": ilegível mesmo após corrigir permissão — ");
                if (zExists) {
                    str = "apagado, será baixado de novo";
                } else {
                    str = "e não consegui apagar";
                }
                sb3.append(str);
                x("Update", sb3.toString());
                return null;
            }
        }
    }

    public final String H1(int i3, String str) {
        if (o0().getBoolean("adb_port_migrated", false)) {
            return "";
        }
        try {
            String strB = new kotlinx.coroutines.scheduling.h(5555).b(i3, str);
            g.b(strB);
            return k.m0(strB) ? getString(R.string.k_command_sent_no_output, str) : strB;
        } catch (Exception e3) {
            String message = e3.getMessage();
            if (message == null) {
                message = e3.getClass().getSimpleName();
            }
            return "Falha no ADB local: ".concat(message);
        }
    }

    public final void I0() {
        h4 h4Var;
        String str;
        File file = new File("/data/local/tmp/fixes/ca_fix.apk");
        File file2 = null;
        String string = o0().getString("connadaptor_arquivo_modo", null);
        String string2 = o0().getString("connadaptor_arquivo_versao", null);
        if (string != null && !k.m0(string) && string2 != null && !k.m0(string2)) {
            file2 = new File(u.c(string, string2));
        }
        boolean zIsFile = file.isFile();
        boolean z2 = false;
        boolean z3 = file2 != null && file2.isFile();
        if (zIsFile) {
            h4Var = h4.b;
            if (!z3 && string != null && !k.m0(string) && string2 != null && !k.m0(string2)) {
                h4Var = h4.f3658a;
            }
        } else {
            h4Var = h4.f3659c;
        }
        int iOrdinal = h4Var.ordinal();
        if (iOrdinal == 0) {
            g.b(file2);
            String absolutePath = file2.getAbsolutePath();
            StringBuilder sb = new StringBuilder("mv -f ");
            String absolutePath2 = file.getAbsolutePath();
            g.d(absolutePath2, "getAbsolutePath(...)");
            sb.append(j2(absolutePath2));
            sb.append(' ');
            g.b(absolutePath);
            sb.append(j2(absolutePath));
            sb.append(" 2>&1 && chown system:system ");
            sb.append(j2(absolutePath));
            sb.append(" 2>/dev/null; chmod 664 ");
            sb.append(j2(absolutePath));
            sb.append(" 2>/dev/null; echo MIG_OK");
            if (k.e0(H1(30000, sb.toString()), "MIG_OK", false) && new File(absolutePath).isFile()) {
                z2 = true;
            }
            ae aeVar = ae.f3361a;
            StringBuilder sb2 = new StringBuilder("migração do nome fixo: ca_fix.apk -> ");
            sb2.append(new File(absolutePath).getName());
            sb2.append(" — ");
            b.r(sb2, z2 ? "movido" : "FALHOU", "ConnAdaptor", true);
            return;
        }
        if (iOrdinal != 1) {
            if (iOrdinal != 2) {
                throw new q();
            }
            return;
        }
        StringBuilder sb3 = new StringBuilder("rm -f ");
        String absolutePath3 = file.getAbsolutePath();
        g.d(absolutePath3, "getAbsolutePath(...)");
        sb3.append(j2(absolutePath3));
        sb3.append("; echo MIG_RM");
        H1(15000, sb3.toString());
        ae aeVar2 = ae.f3361a;
        StringBuilder sb4 = new StringBuilder("migração do nome fixo: ca_fix.apk descartado (");
        if (file2 == null || !file2.isFile()) {
            str = "sem procedência gravada";
        } else {
            str = "o arquivo de " + string + '/' + string2 + " já estava no lugar";
        }
        sb4.append(str);
        sb4.append(')');
        ae.b("ConnAdaptor", sb4.toString(), false);
    }

    public final void I1() {
        Log.i("KeyServerAtivador", "runKeyServerApply(userInitiated=true) iniciando");
        this.f1033p0 = true;
        this.f1035q0 = Boolean.TRUE;
        v1();
        String string = getString(R.string.k_keyserver_checking);
        g.d(string, "getString(...)");
        t2(string, 0);
        this.f1045v.postDelayed(new ma(this, 5), 180000L);
        this.C.execute(new ma(this, 6));
    }

    public final void J(boolean z2, boolean z3) {
        String string = getString(R.string.connadaptor_update_checking);
        g.d(string, "getString(...)");
        S1(string);
        String strR = R();
        String strP = P();
        ae aeVar = ae.f3361a;
        ae.b("ConnAdaptor", "checagem: alvo=" + strR + '/' + strP + " ativarDepois=" + z3, false);
        this.C.execute(new a1.l(this, strR, strP, z3, z2));
    }

    public final i J0(String str, String str2) {
        float f = getResources().getDisplayMetrics().density;
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        int i3 = (int) (28 * f);
        int i4 = (int) (24 * f);
        linearLayout.setPadding(i3, i4, i3, i4);
        linearLayout.setBackgroundResource(R.drawable.bg_master_help_dialog);
        ProgressBar progressBar = new ProgressBar(this);
        progressBar.setIndeterminate(true);
        int i5 = (int) (44 * f);
        linearLayout.addView(progressBar, new LinearLayout.LayoutParams(i5, i5));
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(1);
        linearLayout2.setPadding((int) (20 * f), 0, 0, 0);
        TextView textView = new TextView(this);
        textView.setText(str);
        textView.setTextSize(21.0f);
        textView.setTextColor(getColor(R.color.master_text));
        textView.setTypeface(null, 1);
        linearLayout2.addView(textView);
        if (!k.m0(str2)) {
            TextView textView2 = new TextView(this);
            textView2.setText(str2);
            textView2.setTextSize(15.0f);
            textView2.setTextColor(getColor(R.color.master_text_secondary));
            textView2.setPadding(0, (int) (6 * f), 0, 0);
            linearLayout2.addView(textView2);
        }
        linearLayout.addView(linearLayout2, new LinearLayout.LayoutParams(0, -2, 1.0f));
        e.h hVar = new e.h(this);
        e.d dVar = (e.d) hVar.b;
        dVar.f1568s = linearLayout;
        dVar.f1562m = false;
        return hVar.h();
    }

    public final String K1(int i3, String str) {
        try {
            String strX = w0.m.x(str, i3, null, new n(0));
            return k.m0(strX) ? getString(R.string.k_command_sent_no_output, str) : strX;
        } catch (Exception e3) {
            String message = e3.getMessage();
            if (message == null) {
                message = e3.getClass().getSimpleName();
            }
            return "Falha no ADB local: ".concat(message);
        }
    }

    /* JADX WARN: Code duplicated, block: B:6:0x002d  */
    public final void L() {
        String string = getString(R.string.update_checking);
        g.d(string, "getString(...)");
        Z1(string);
        int i3 = u.f4288a;
        SharedPreferences sharedPreferencesO0 = o0();
        g.d(sharedPreferencesO0, "<get-prefs>(...)");
        if (u.a(sharedPreferencesO0)) {
            K(this, 3);
        } else {
            SharedPreferences sharedPreferencesO1 = o0();
            g.d(sharedPreferencesO1, "<get-prefs>(...)");
            if (u.b(sharedPreferencesO1)) {
                K(this, 3);
            }
        }
        this.C.execute(new x8(this, 26));
    }

    public final void L0() {
        if (o0().getBoolean("aa_wifi_help_seen", false)) {
            s();
        } else {
            o0().edit().putBoolean("aa_wifi_help_seen", true).apply();
            k2();
        }
    }

    public final int L1(int i3) {
        List list = this.I0;
        if (list == null) {
            g.h("navSections");
            throw null;
        }
        Iterator it = list.iterator();
        int i4 = 0;
        while (it.hasNext()) {
            if (((fc) it.next()).f3594a == i3) {
                return i4;
            }
            i4++;
        }
        return -1;
    }

    public final void M0() {
        wd wdVar = wd.f4450a;
        int i3 = 29;
        if (wd.a(this) || wd.j(this)) {
            String string = getString(R.string.k_modo_oficina_restaurando);
            g.d(string, "getString(...)");
            h9 h9Var = new h9(this, 5);
            t2(string, 0);
            this.C.execute(new a1.i(h9Var, i3, this));
            return;
        }
        final PackageManager packageManager = getPackageManager();
        List<ApplicationInfo> installedApplications = packageManager.getInstalledApplications(512);
        g.d(installedApplications, "getInstalledApplications(...)");
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = installedApplications.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            ApplicationInfo applicationInfo = (ApplicationInfo) next;
            boolean zA = g.a(applicationInfo.packageName, getPackageName());
            boolean z2 = (applicationInfo.flags & 129) != 0;
            int applicationEnabledSetting = packageManager.getApplicationEnabledSetting(applicationInfo.packageName);
            if (!zA && !z2 && (applicationEnabledSetting == 2 || applicationEnabledSetting == 3)) {
                arrayList.add(next);
            }
        }
        ArrayList arrayList2 = new ArrayList(y1.i.X(arrayList));
        int size = arrayList.size();
        int i4 = 0;
        while (i4 < size) {
            Object obj = arrayList.get(i4);
            i4++;
            ApplicationInfo applicationInfo2 = (ApplicationInfo) obj;
            String str = applicationInfo2.packageName;
            g.d(str, "packageName");
            arrayList2.add(new yf(str, packageManager.getApplicationLabel(applicationInfo2).toString()));
        }
        final List<yf> listI0 = y1.g.i0(arrayList2, new a2.a(new l[]{new ya(28), new ya(i3)}));
        if (listI0.isEmpty()) {
            zc zcVar = new zc(new ContextThemeWrapper(e8.p(this), R.style.Theme_TelaPretaCentral_MasterDialog), R.style.Theme_TelaPretaCentral_MasterDialog);
            zcVar.g(R.string.oficina_restaurar);
            e.d dVar = (e.d) zcVar.b;
            dVar.f = dVar.f1552a.getText(R.string.oficina_sem_apps_desativados);
            zcVar.e(R.string.common_ok, null);
            zcVar.h();
            return;
        }
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(e8.p(this), R.style.Theme_TelaPretaCentral_MasterPlatformDialog);
        float f = contextThemeWrapper.getResources().getDisplayMetrics().density;
        LinearLayout linearLayout = new LinearLayout(contextThemeWrapper);
        linearLayout.setOrientation(1);
        int i5 = (int) (24 * f);
        linearLayout.setPadding(i5, 0, i5, 0);
        final ArrayList arrayList3 = new ArrayList(y1.i.X(listI0));
        for (yf yfVar : listI0) {
            CheckBox checkBox = new CheckBox(contextThemeWrapper);
            checkBox.setText(yfVar.b + '\n' + yfVar.f4594a);
            checkBox.setMinHeight((int) (((float) 64) * f));
            linearLayout.addView(checkBox);
            arrayList3.add(checkBox);
        }
        final CheckBox checkBox2 = new CheckBox(contextThemeWrapper);
        checkBox2.setText(R.string.oficina_selecionar_todos);
        checkBox2.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: w0.uf
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z3) {
                ArrayList arrayList4 = arrayList3;
                int size2 = arrayList4.size();
                int i6 = 0;
                while (i6 < size2) {
                    Object obj2 = arrayList4.get(i6);
                    i6++;
                    ((CheckBox) obj2).setChecked(z3);
                }
            }
        });
        linearLayout.addView(checkBox2, 0);
        ScrollView scrollView = new ScrollView(contextThemeWrapper);
        scrollView.addView(linearLayout);
        scrollView.setLayoutParams(new ViewGroup.LayoutParams(-1, (int) (300 * f)));
        zc zcVar2 = new zc(new ContextThemeWrapper(e8.p(this), R.style.Theme_TelaPretaCentral_MasterDialog), R.style.Theme_TelaPretaCentral_MasterDialog);
        e.d dVar2 = (e.d) zcVar2.b;
        zcVar2.g(R.string.oficina_restaurar);
        dVar2.f = dVar2.f1552a.getText(R.string.oficina_recuperacao_explicacao);
        dVar2.f1568s = scrollView;
        zcVar2.b(R.string.common_cancel, null);
        zcVar2.e(R.string.oficina_restaurar, null);
        final i iVarA = zcVar2.a();
        iVarA.setOnShowListener(new DialogInterface.OnShowListener() { // from class: w0.vf
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                final e.i iVar = iVarA;
                final Button buttonC = iVar.c(-1);
                int i6 = 0;
                buttonC.setEnabled(false);
                final ArrayList arrayList4 = arrayList3;
                int size2 = arrayList4.size();
                while (i6 < size2) {
                    Object obj2 = arrayList4.get(i6);
                    i6++;
                    ((CheckBox) obj2).setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: w0.wf
                        @Override // android.widget.CompoundButton.OnCheckedChangeListener
                        public final void onCheckedChanged(CompoundButton compoundButton, boolean z3) {
                            ArrayList arrayList5 = arrayList4;
                            boolean z4 = false;
                            if (!arrayList5.isEmpty()) {
                                int size3 = arrayList5.size();
                                int i7 = 0;
                                while (i7 < size3) {
                                    Object obj3 = arrayList5.get(i7);
                                    i7++;
                                    if (((CheckBox) obj3).isChecked()) {
                                        z4 = true;
                                        break;
                                    }
                                }
                            }
                            buttonC.setEnabled(z4);
                        }
                    });
                }
                final List list = listI0;
                final CheckBox checkBox3 = checkBox2;
                final MainActivity mainActivity = this;
                final PackageManager packageManager2 = packageManager;
                buttonC.setOnClickListener(new View.OnClickListener() { // from class: w0.xf
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        ArrayList arrayList5 = new ArrayList();
                        Iterator it2 = list.iterator();
                        int i7 = 0;
                        while (true) {
                            boolean zHasNext = it2.hasNext();
                            ArrayList arrayList6 = arrayList4;
                            if (!zHasNext) {
                                buttonC.setEnabled(false);
                                e.i iVar2 = iVar;
                                iVar2.setCancelable(false);
                                iVar2.c(-2).setEnabled(false);
                                int size3 = arrayList6.size();
                                int i8 = 0;
                                while (i8 < size3) {
                                    Object obj3 = arrayList6.get(i8);
                                    i8++;
                                    ((CheckBox) obj3).setEnabled(false);
                                }
                                checkBox3.setEnabled(false);
                                new Thread(new z(arrayList5, mainActivity, packageManager2, iVar2, 9)).start();
                                return;
                            }
                            Object next2 = it2.next();
                            int i9 = i7 + 1;
                            if (i7 < 0) {
                                y1.h.W();
                                throw null;
                            }
                            if (((CheckBox) arrayList6.get(i7)).isChecked()) {
                                arrayList5.add(next2);
                            }
                            i7 = i9;
                        }
                    }
                });
            }
        });
        iVarA.show();
    }

    public final void M1(int i3, int i4, int... iArr) {
        ViewFlipper viewFlipper = (ViewFlipper) findViewById(i3);
        viewFlipper.setDisplayedChild(i4);
        int length = iArr.length;
        int i5 = 0;
        int i6 = 0;
        while (i5 < length) {
            int i7 = i6 + 1;
            LinearLayout linearLayout = (LinearLayout) findViewById(iArr[i5]);
            int i8 = i6 == i4 ? 1 : 0;
            linearLayout.setBackgroundResource(i8 != 0 ? R.drawable.bg_master_tools_selected : android.R.color.transparent);
            linearLayout.getChildAt(0).setVisibility(i8 != 0 ? 0 : 4);
            View childAt = linearLayout.getChildAt(linearLayout.getChildCount() >= 4 ? 2 : 1);
            TextView textView = childAt instanceof TextView ? (TextView) childAt : null;
            if (textView != null) {
                textView.setTypeface(null, i8);
            }
            i5++;
            i6 = i7;
        }
        View childAt2 = viewFlipper.getChildAt(i4);
        if (childAt2 != null) {
            childAt2.post(new v9(this, viewFlipper, i4, 0));
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x001c  */
    public final void N(final int i3, int i4, final boolean z2) {
        final boolean z3;
        if (i3 != this.f1038s0.get()) {
            return;
        }
        final int iG = G(new Object[0]);
        if (iG < 0) {
            z3 = false;
        } else {
            if ((iG == 0) == z2) {
                z3 = true;
            } else {
                z3 = false;
            }
        }
        if (z3 || i4 >= 2) {
            this.f1045v.post(new Runnable() { // from class: w0.eb
                @Override // java.lang.Runnable
                public final void run() {
                    int i5 = i3;
                    MainActivity mainActivity = this;
                    int i6 = iG;
                    boolean z4 = z3;
                    boolean z5 = z2;
                    if (i5 != mainActivity.f1038s0.get() || mainActivity.isFinishing() || mainActivity.isDestroyed()) {
                        return;
                    }
                    mainActivity.t0 = false;
                    if (i6 >= 0) {
                        mainActivity.f1036r0 = i6 == 0;
                    }
                    if (z4) {
                        mainActivity.o0().edit().putBoolean("avas_muted_saved", z5).apply();
                    } else {
                        Toast.makeText(mainActivity, R.string.k_car_command_unconfirmed, 1).show();
                    }
                    View viewFindViewById = mainActivity.findViewById(R.id.masterAudioAvasRow);
                    if (viewFindViewById != null) {
                        viewFindViewById.setEnabled(true);
                    }
                    mainActivity.g1();
                }
            });
            return;
        }
        try {
            this.f1054z.schedule(new xa(this, i3, z2, i4), 500L, TimeUnit.MILLISECONDS);
        } catch (RejectedExecutionException unused) {
            this.t0 = false;
        }
    }

    public final void N1(int i3) {
        int[] iArr = {R.id.masterNavInicio, R.id.masterNavFerramentas, R.id.masterNavRede, R.id.masterNavAudio, R.id.masterNavApps, R.id.masterNavAtalhos, R.id.masterNavConfig, R.id.masterNavAbout};
        for (int i4 = 0; i4 < 8; i4++) {
            int i5 = iArr[i4];
            LinearLayout linearLayout = (LinearLayout) findViewById(i5);
            linearLayout.getChildAt(0).setVisibility(i5 == i3 ? 0 : 4);
            View childAt = linearLayout.getChildAt(2);
            TextView textView = childAt instanceof TextView ? (TextView) childAt : null;
            if (textView != null) {
                textView.setTypeface(null, i5 == i3 ? 1 : 0);
            }
        }
    }

    public final boolean O() {
        try {
            String str = getPackageManager().getApplicationInfo("com.njda.adapter", 0).sourceDir;
            g.d(str, "sourceDir");
            return k.e0(str, "/data/app/", false);
        } catch (Throwable unused) {
            return false;
        }
    }

    public final void O0() {
        Boolean bool = this.f1014f1;
        boolean zBooleanValue = bool != null ? bool.booleanValue() : o0().getBoolean("gestures_enabled", false);
        if (this.S0[1]) {
            ((MasterToggleView) findViewById(R.id.masterToolsGesturesSwitch)).setActive(zBooleanValue);
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0056  */
    /* JADX WARN: Code duplicated, block: B:8:0x002b  */
    public final void O1(boolean z2) {
        String string;
        String string2;
        this.f1017h0 = z2;
        TextView textView = (TextView) findViewById(R.id.masterAndroidActivate);
        if (textView != null) {
            if (z2) {
                string2 = getString(R.string.xml_ativar_2);
            } else {
                int i3 = u.f4288a;
                SharedPreferences sharedPreferencesO0 = o0();
                g.d(sharedPreferencesO0, "<get-prefs>(...)");
                if (u.a(sharedPreferencesO0)) {
                    string2 = getString(R.string.xml_desativar);
                } else {
                    string2 = getString(R.string.xml_ativar_2);
                }
            }
            g.b(string2);
            textView.setText(string2);
        }
        TextView textView2 = (TextView) findViewById(R.id.masterCarplayActivate);
        if (textView2 != null) {
            if (z2) {
                string = getString(R.string.xml_ativar_2);
            } else {
                int i4 = u.f4288a;
                SharedPreferences sharedPreferencesO1 = o0();
                g.d(sharedPreferencesO1, "<get-prefs>(...)");
                if (u.b(sharedPreferencesO1)) {
                    string = getString(R.string.xml_desativar);
                } else {
                    string = getString(R.string.xml_ativar_2);
                }
            }
            g.b(string);
            textView2.setText(string);
        }
        X0();
    }

    public final String P() {
        String string = o0().getString("connadaptor_modo", "ambos");
        return string == null ? "ambos" : string;
    }

    public final void P0() {
        Boolean bool = this.X0;
        boolean zBooleanValue = bool != null ? bool.booleanValue() : o0().getBoolean("rvc_black_bg", false);
        if (this.S0[1]) {
            ((MasterToggleView) findViewById(R.id.masterToolsSecurityRvcSwitch)).setActive(zBooleanValue);
        }
    }

    public final void P1(int i3) {
        if (i3 == this.I) {
            return;
        }
        this.I = i3;
        this.E.clear();
        this.F.clear();
        o1();
        int i4 = this.G;
        p pVar = p.f4663a;
        if (i3 != i4) {
            Q1("", pVar);
            n1();
        } else {
            String string = getString(R.string.k_tap_list_to_read_pendrive);
            g.d(string, "getString(...)");
            Q1(string, pVar);
        }
    }

    public final String Q(String str) {
        int i3;
        if (str.equals("aa")) {
            i3 = R.string.k_modo_aa;
        } else {
            i3 = str.equals("carplay") ? R.string.k_modo_carplay : R.string.k_modo_ambos;
        }
        String string = getString(i3);
        g.d(string, "getString(...)");
        return string;
    }

    public final void Q1(String str, List list) {
        List listI;
        if (list.isEmpty()) {
            if (str.length() <= 0) {
                str = "—";
            }
            listI = k1.a.I(str);
        } else {
            listI = list;
        }
        this.f1013f0 = listI;
        this.f1015g0 = 0;
        list.isEmpty();
        o1();
    }

    public final String R() {
        String str = null;
        String string = o0().getString("connadaptor_versao_alvo", null);
        if (string != null) {
            if (k.m0(string)) {
                string = null;
            }
            if (string != null) {
                return string;
            }
        }
        String str2 = "";
        try {
            Object objInvoke = Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, "ro.build.version.versionname", "");
            String str3 = objInvoke instanceof String ? (String) objInvoke : null;
            if (str3 != null) {
                str2 = str3;
            }
            Pattern patternCompile = Pattern.compile("H(\\d{4})\\d*$");
            g.d(patternCompile, "compile(...)");
            Matcher matcher = patternCompile.matcher(str2);
            g.d(matcher, "matcher(...)");
            e eVarB = k1.a.b(matcher, 0, str2);
            if (eVarB != null) {
                str = (String) ((o2.d) eVarB.a()).get(1);
            }
        } catch (Throwable unused) {
        }
        if (str != null && !str.equals("1111") && !str.equals("1114")) {
            ae aeVar = ae.f3361a;
            b.p("central reporta fábrica ", str, " — não há artefato publicado para ela; a ativação vai recusar por VERSION_DOWNGRADE", "ConnAdaptor", false);
        }
        return (g.a(str, "1114") || g.a(str, "1111")) ? str : "1111";
    }

    public final void R0(final String str) {
        final String strR = R();
        if (str.equals(strR)) {
            return;
        }
        final String strS = S(str);
        e.h hVar = new e.h(this);
        hVar.g(R.string.k_connadaptor_versao_confirm_title);
        String string = getString(R.string.k_connadaptor_versao_confirm_msg, strS);
        e.d dVar = (e.d) hVar.b;
        dVar.f = string;
        dVar.f1562m = false;
        hVar.f(getString(R.string.k_connadaptor_versao_confirm_ok, strS), new DialogInterface.OnClickListener() { // from class: w0.q9
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i3) {
                int i4 = MainActivity.f1002z1;
                MainActivity mainActivity = this.f4109a;
                SharedPreferences.Editor editorEdit = mainActivity.o0().edit();
                String str2 = str;
                editorEdit.putString("connadaptor_versao_alvo", str2).apply();
                mainActivity.w("Update", "ConnAdaptor: versão alvo " + strR + " -> " + str2);
                mainActivity.A();
                mainActivity.s1();
                mainActivity.B.execute(new c9(mainActivity, strS, 8));
            }
        });
        hVar.b(R.string.common_cancel, null);
        hVar.h();
    }

    public final void R1(boolean z2) {
        if (this.t0) {
            b.n(R.string.k_toast_wait_processing, 0, this, "getString(...)");
            return;
        }
        int iIncrementAndGet = this.f1038s0.incrementAndGet();
        this.t0 = true;
        this.f1036r0 = z2;
        g1();
        String string = getString(R.string.k_applying);
        g.d(string, "getString(...)");
        t2(string, 0);
        View viewFindViewById = findViewById(R.id.masterAudioAvasRow);
        if (viewFindViewById != null) {
            viewFindViewById.setEnabled(false);
        }
        try {
            this.f1054z.execute(new wa(z2, this, iIncrementAndGet, 1));
        } catch (RejectedExecutionException unused) {
            this.t0 = false;
            View viewFindViewById2 = findViewById(R.id.masterAudioAvasRow);
            if (viewFindViewById2 != null) {
                viewFindViewById2.setEnabled(true);
            }
        }
    }

    public final String S(String str) {
        String string = getString(g.a(str, "1114") ? R.string.k_connadaptor_versao_1114 : R.string.k_connadaptor_versao_1111);
        g.d(string, "getString(...)");
        return string;
    }

    public final void S0() {
        TextView textView;
        MasterToggleView masterToggleView = (MasterToggleView) findViewById(R.id.masterAppsPerfJitSwitch);
        if (masterToggleView == null || (textView = (TextView) findViewById(R.id.masterAppsPerfJitState)) == null) {
            return;
        }
        this.B.execute(new hb(this, masterToggleView, textView, 1));
    }

    public final void S1(String str) {
        this.f1032o1 = str;
        Y0();
    }

    public final long T() {
        return getPackageManager().getPackageInfo(getPackageName(), 0).getLongVersionCode();
    }

    public final void T0() {
        TextView textView;
        MasterToggleView masterToggleView = (MasterToggleView) findViewById(R.id.masterAppsPerfVideoSwitch);
        if (masterToggleView == null || (textView = (TextView) findViewById(R.id.masterAppsPerfVideoState)) == null) {
            return;
        }
        this.B.execute(new hb(this, masterToggleView, textView, 0));
    }

    public final void T1(int i3) {
        int i4;
        if (i3 != 1) {
            i4 = i3 != 3 ? 570491138 : 570491139;
        } else {
            i4 = 570491137;
        }
        l0().edit().putInt("saved_drive", i4).apply();
        i1(null, null);
        a1();
    }

    public final String U() {
        String strH0;
        try {
            ApplicationInfo applicationInfo = getPackageManager().getApplicationInfo("com.njda.adapter", 0);
            g.d(applicationInfo, "getApplicationInfo(...)");
            getPackageManager().getPackageInfo("com.njda.adapter", 0);
            File file = new File(applicationInfo.sourceDir);
            String str = applicationInfo.sourceDir + '|' + file.length() + '|' + file.lastModified();
            if (g.a(str, this.U0)) {
                strH0 = this.V0;
            } else {
                try {
                    strH0 = h0(file, "MD5");
                } catch (Throwable unused) {
                    strH0 = null;
                }
                this.U0 = str;
                this.V0 = strH0;
            }
            String strT = t(strH0);
            if (strT == null && (strT = u(strH0)) == null) {
                String str2 = applicationInfo.sourceDir;
                g.d(str2, "sourceDir");
                strT = k.e0(str2, "/data/app/", false) ? getString(R.string.k_connadaptor_build_desconhecida) : getString(R.string.k_connadaptor_build_fabrica);
                g.b(strT);
            }
            StringBuilder sb = new StringBuilder();
            sb.append(strH0 != null ? k.C0(8, strH0) : "?");
            sb.append(" · ");
            sb.append(strT);
            return sb.toString();
        } catch (Throwable unused2) {
            return getString(R.string.k_connadaptor_build_ausente);
        }
    }

    public final void U0(LinearLayout linearLayout, String str) {
        linearLayout.removeAllViews();
        TextView textView = new TextView(this);
        textView.setText(str);
        textView.setTextSize(16.0f);
        textView.setTextColor(getColor(R.color.master_text_secondary));
        textView.setPadding(0, (int) (18 * textView.getResources().getDisplayMetrics().density), 0, 0);
        linearLayout.addView(textView);
    }

    public final void U1(String str) {
        int i3;
        o0().edit().putString("theme_mode", str).putBoolean("light_mode", str.equals("light")).apply();
        if (str.equals("light")) {
            i3 = 1;
        } else {
            i3 = str.equals("auto") ? -1 : 2;
        }
        o.q(i3);
        wd wdVar = wd.f4450a;
        Iterator it = wd.b.iterator();
        while (it.hasNext()) {
            try {
                stopService(new Intent(this, (Class<?>) it.next()));
            } catch (Throwable unused) {
            }
        }
        wd.d(this);
        recreate();
    }

    public final Integer V() {
        Object obj;
        String string;
        String string2;
        StringBuilder sb;
        try {
            ArrayList arrayListG0 = f2.d.g0(new File(this.f1020i1));
            int size = arrayListG0.size();
            int i3 = 0;
            do {
                if (i3 >= size) {
                    obj = null;
                    break;
                }
                obj = arrayListG0.get(i3);
                i3++;
                string2 = k.E0((String) obj).toString();
                sb = new StringBuilder();
                sb.append(this.f1022j1);
                sb.append(':');
            } while (!t.d0(string2, sb.toString()));
            String str = (String) obj;
            if (str != null && (string = k.E0(k.y0(str, ":", str)).toString()) != null) {
                Character chValueOf = 2 < string.length() ? Character.valueOf(string.charAt(2)) : null;
                if (chValueOf != null) {
                    int iDigit = Character.digit((int) chValueOf.charValue(), 10);
                    Integer numValueOf = Integer.valueOf(iDigit);
                    if (iDigit >= 0) {
                        return numValueOf;
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public final void V0(String str, String str2, String str3) {
        String strH = r5.h(str, str3, !g.a(str, getPackageName()));
        if (k.m0(strH)) {
            return;
        }
        if (this.f1030n1) {
            b.n(R.string.k_toast_wait_processing, 0, this, "getString(...)");
            return;
        }
        this.f1030n1 = true;
        String string = getString(R.string.master_perf_busy_title);
        g.d(string, "getString(...)");
        String string2 = getString(R.string.master_perf_busy_msg, str2);
        g.d(string2, "getString(...)");
        this.C.execute(new qa(this, strH, J0(string, string2), str, str2));
    }

    public final void V1(boolean z2) {
        this.S = z2;
        findViewById(R.id.masterToolsInterfaceItems).setVisibility(z2 ? 0 : 8);
        findViewById(R.id.masterToolsInterfaceChevron).animate().rotation(z2 ? 0.0f : -90.0f).setDuration(160L).start();
    }

    public final void W(hc hcVar, e9 e9Var) throws Throwable {
        K1(8000, e8.v());
        File file = new File(getCacheDir(), "CentralEXAuto-update-staging.apk");
        long j3 = hcVar.f3676a;
        X(this, hcVar.f3677c, file, hcVar.b, null, null, new h9(this, 19), e9Var, 48);
        PackageInfo packageArchiveInfo = getPackageManager().getPackageArchiveInfo(file.getAbsolutePath(), 64);
        if (packageArchiveInfo == null) {
            file.delete();
            throw new IllegalStateException(getString(R.string.k_update_apk_unreadable));
        }
        if (!g.a(packageArchiveInfo.packageName, getPackageName())) {
            file.delete();
            String str = packageArchiveInfo.packageName;
            if (str == null) {
                str = "?";
            }
            throw new IllegalStateException(getString(R.string.k_update_apk_wrong_pkg, str));
        }
        long longVersionCode = packageArchiveInfo.getLongVersionCode();
        if (longVersionCode != j3) {
            file.delete();
            throw new IllegalStateException(getString(R.string.k_update_apk_wrong_vc, Long.valueOf(j3), Long.valueOf(longVersionCode)));
        }
        Signature[] signatureArr = packageArchiveInfo.signatures;
        if (signatureArr == null) {
            signatureArr = new Signature[0];
        }
        ArrayList arrayList = new ArrayList(signatureArr.length);
        for (Signature signature : signatureArr) {
            byte[] bArrDigest = MessageDigest.getInstance("SHA-256").digest(signature.toByteArray());
            g.d(bArrDigest, "digest(...)");
            arrayList.add(f.b0(bArrDigest, new ya(8)));
        }
        if (!arrayList.contains("c8a2e9bccf597c2fb6dc66bee293fc13f2fc47ec77bc6b2b0d52c11f51192ab8")) {
            file.delete();
            throw new IllegalStateException(getString(R.string.k_update_apk_wrong_cert));
        }
        String strH0 = h0(file, "SHA-256");
        q2(file, "/data/local/tmp/CentralEXAuto-update.apk", "update", true);
        String strH1 = h0(new File("/data/local/tmp/CentralEXAuto-update.apk"), "SHA-256");
        if (!strH1.equalsIgnoreCase(strH0)) {
            throw new IllegalStateException(getString(R.string.k_tmp_content_mismatch, k.C0(16, strH0), k.C0(16, strH1)));
        }
    }

    public final void W0() {
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.masterAppsPerfList);
        if (linearLayout == null) {
            return;
        }
        if (this.f1030n1) {
            b.n(R.string.k_toast_wait_processing, 0, this, "getString(...)");
            return;
        }
        this.f1030n1 = true;
        String string = getString(R.string.master_perf_scanning);
        g.d(string, "getString(...)");
        U0(linearLayout, string);
        this.B.execute(new x8(this, 20));
    }

    public final void W1(String str) {
        getSharedPreferences("temp_batt_pill_prefs", 0).edit().putString("pill_mode", str).apply();
        TempBattPillFloaterService tempBattPillFloaterService = TempBattPillFloaterService.f1198v;
        TempBattPillFloaterService tempBattPillFloaterService2 = TempBattPillFloaterService.f1198v;
        if (tempBattPillFloaterService2 != null) {
            SharedPreferences sharedPreferences = tempBattPillFloaterService2.b;
            if (sharedPreferences == null) {
                g.h("pillPrefs");
                throw null;
            }
            sharedPreferences.edit().putString("pill_mode", str).apply();
            tempBattPillFloaterService2.f();
        }
    }

    public final void X0() {
        int i3;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jElapsedRealtime - this.P0 >= 3000) {
            this.P0 = jElapsedRealtime;
            try {
                this.B.execute(new x8(this, 7));
            } catch (RejectedExecutionException unused) {
            }
        }
        int i4 = u.f4288a;
        SharedPreferences sharedPreferencesO0 = o0();
        g.d(sharedPreferencesO0, "<get-prefs>(...)");
        boolean zA = u.a(sharedPreferencesO0);
        TextView textView = (TextView) findViewById(R.id.masterAndroidStatus);
        int i5 = R.string.master_connected;
        if (textView != null) {
            if (zA) {
                int iOrdinal = this.O0.ordinal();
                if (iOrdinal == 0) {
                    i3 = R.string.master_connected;
                } else if (iOrdinal == 1) {
                    i3 = R.string.master_aa_na_rede;
                } else if (iOrdinal != 2) {
                    i3 = iOrdinal != 3 ? R.string.master_placeholder : R.string.master_disconnected;
                } else {
                    i3 = R.string.master_aa_so_bt;
                }
            } else {
                i3 = R.string.master_mode_off;
            }
            textView.setText(getString(i3));
        }
        TextView textView2 = (TextView) findViewById(R.id.masterCarplayStatus);
        if (textView2 != null) {
            Boolean bool = this.N0;
            SharedPreferences sharedPreferencesO1 = o0();
            g.d(sharedPreferencesO1, "<get-prefs>(...)");
            if (!u.b(sharedPreferencesO1)) {
                i5 = R.string.master_mode_off;
            } else if (bool == null) {
                i5 = R.string.master_placeholder;
            } else if (!bool.booleanValue()) {
                i5 = R.string.master_disconnected;
            }
            String string = getString(i5);
            g.d(string, "getString(...)");
            textView2.setText(string);
        }
    }

    public final void X1(int i3) {
        int i4;
        if (i3 != 1) {
            i4 = i3 != 3 ? 537003266 : 537003267;
        } else {
            i4 = 537003265;
        }
        l0().edit().putInt("saved_regen", i4).apply();
        i1(null, null);
        a1();
    }

    public final void Y() {
        if (DriveRegenFloaterService.M) {
            return;
        }
        try {
            startForegroundService(new Intent(this, (Class<?>) DriveRegenFloaterService.class));
        } catch (Exception unused) {
        }
    }

    public final void Y0() {
        TextView textView;
        if (this.S0[2] && (textView = (TextView) findViewById(R.id.masterNetworkConnadaptorStatus)) != null) {
            List listU = f.U(new String[]{this.f1034p1, this.f1032o1});
            ArrayList arrayList = new ArrayList();
            for (Object obj : listU) {
                if (!k.m0((String) obj)) {
                    arrayList.add(obj);
                }
            }
            textView.setText(y1.g.e0(arrayList, "\n", null, 62));
        }
    }

    public final void Y1(int i3) {
        o0().edit().putInt("screen_rest_timeout_sec", i3).apply();
        if (i3 > 0 && !o0().getBoolean("quick_access_enabled", false)) {
            o0().edit().putBoolean("quick_access_enabled", true).apply();
            startService(new Intent(this, (Class<?>) QuickAccessFloaterService.class));
            b.n(R.string.k_screen_rest_enabled_quick_access, 1, this, "getString(...)");
        }
        v1();
    }

    public final String Z(Throwable th) {
        if (th instanceof r6) {
            return a0(((r6) th).f4150a);
        }
        if (th instanceof s6) {
            String string = getString(R.string.k_car_still_connecting);
            g.d(string, "getString(...)");
            return string;
        }
        if ((th instanceof UnknownHostException) || (th instanceof NoRouteToHostException) || (th instanceof ConnectException) || (th instanceof SocketTimeoutException) || (th instanceof SSLException)) {
            String string2 = getString(R.string.k_no_internet_or_check_failed);
            g.d(string2, "getString(...)");
            return string2;
        }
        ae aeVar = ae.f3361a;
        ae.b("Update", "falha ao verificar: " + th.getClass().getSimpleName() + ": " + th.getMessage(), false);
        String string3 = getString(R.string.k_no_internet_or_check_failed);
        g.b(string3);
        return string3;
    }

    public final void Z0(String str) {
        try {
            MediaPlayer mediaPlayer = this.W0;
            if (mediaPlayer != null) {
                mediaPlayer.release();
            }
            MediaPlayer mediaPlayer2 = new MediaPlayer();
            mediaPlayer2.setDataSource(str);
            mediaPlayer2.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: w0.fa
                @Override // android.media.MediaPlayer.OnCompletionListener
                public final void onCompletion(MediaPlayer mediaPlayer3) {
                    int i3 = MainActivity.f1002z1;
                    mediaPlayer3.release();
                    MainActivity mainActivity = this.f3590a;
                    if (mainActivity.W0 == mediaPlayer3) {
                        mainActivity.W0 = null;
                    }
                }
            });
            mediaPlayer2.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: w0.ga
                @Override // android.media.MediaPlayer.OnErrorListener
                public final boolean onError(MediaPlayer mediaPlayer3, int i3, int i4) {
                    int i5 = MainActivity.f1002z1;
                    mediaPlayer3.release();
                    MainActivity mainActivity = this.f3633a;
                    if (mainActivity.W0 != mediaPlayer3) {
                        return true;
                    }
                    mainActivity.W0 = null;
                    return true;
                }
            });
            mediaPlayer2.prepare();
            mediaPlayer2.start();
            this.W0 = mediaPlayer2;
        } catch (Exception e3) {
            ae aeVar = ae.f3361a;
            ae.b("AVAS", "preview falhou: " + e3.getClass().getSimpleName() + ": " + e3.getMessage(), false);
            String string = getString(R.string.k_preview_failed, "");
            g.d(string, "getString(...)");
            t2(string, 0);
        }
    }

    public final void Z1(CharSequence charSequence) {
        TextView textView;
        this.f1019i0 = charSequence;
        if (!this.S0[6] || (textView = (TextView) findViewById(R.id.masterConfigUpdateStatus)) == null) {
            return;
        }
        textView.setText(charSequence);
    }

    public final String a0(int i3) {
        if (i3 == 403) {
            String string = getString(R.string.k_update_http_403);
            g.d(string, "getString(...)");
            return string;
        }
        if (i3 != 429) {
            String string2 = getString(R.string.k_update_http_outro, Integer.valueOf(i3));
            g.d(string2, "getString(...)");
            return string2;
        }
        String string3 = getString(R.string.k_update_http_429);
        g.d(string3, "getString(...)");
        return string3;
    }

    public final void a1() {
        int i3 = l0().getInt("saved_drive", -1);
        int i4 = l0().getInt("saved_regen", -1);
        ae aeVar = ae.f3361a;
        StringBuilder sb = new StringBuilder("toque → salvo drive=");
        sb.append(i3);
        sb.append(" regen=");
        sb.append(i4);
        sb.append("; watchdog vivo=");
        int[] iArr = CentralWatchdogService.S2;
        sb.append(CentralWatchdogService.U2);
        sb.append(", floater=");
        sb.append(DriveRegenFloaterService.M);
        ae.b("DriveRegen", sb.toString(), false);
        x("Condução", "toque na tela: drive=" + i3 + " regen=" + i4);
        final int iIncrementAndGet = this.f1044u1.incrementAndGet();
        this.f1045v.postDelayed(new a9(this, iIncrementAndGet, 2), 1000L);
        if (t1.Y("main")) {
            ae.b("DriveRegen", "entregue ao watchdog", false);
            x("Condução", "quem escreve: watchdog (fila única)");
            return;
        }
        ae.b("DriveRegen", "watchdog recusou — escrevendo por conta própria", false);
        x("Condução", "quem escreve: a própria tela (watchdog fora do ar)");
        sendBroadcast(new Intent("UPDATE_DRIVE_REGEN_MODES"));
        final int i5 = l0().getInt("saved_regen", 537003266);
        final int i6 = l0().getInt("saved_drive", 570491138);
        final CarPropertyManager carPropertyManager = this.M;
        if (carPropertyManager == null) {
            Y();
            return;
        }
        try {
            this.f1054z.execute(new Runnable() { // from class: w0.n9
                @Override // java.lang.Runnable
                public final void run() {
                    int i7;
                    int i8 = i6;
                    MainActivity mainActivity = this;
                    int i9 = mainActivity.f1044u1.get();
                    int i10 = iIncrementAndGet;
                    if (i10 != i9) {
                        return;
                    }
                    boolean z2 = false;
                    int[] iArr2 = {0, 1};
                    int i11 = 0;
                    while (true) {
                        i7 = i5;
                        if (i11 >= 2) {
                            break;
                        }
                        if (p1.l(carPropertyManager, 537003264, iArr2[i11], i7)) {
                            z2 = true;
                            break;
                        }
                        i11++;
                    }
                    StringBuilder sbK = androidx.activity.result.b.k("toque na tela: regen=", i7, " escrita=");
                    sbK.append(z2 ? "aceita" : "recusada");
                    mainActivity.x("Condução", sbK.toString());
                    if (!z2) {
                        mainActivity.f1045v.post(new ma(mainActivity, 2));
                    }
                    try {
                        mainActivity.f1054z.schedule(new na(i10, mainActivity, i8, 0, (byte) 0), 450L, TimeUnit.MILLISECONDS);
                    } catch (RejectedExecutionException unused) {
                    }
                }
            });
        } catch (RejectedExecutionException unused) {
            if (isFinishing() || isDestroyed()) {
                return;
            }
            Y();
        }
    }

    public final void a2() {
        final View viewFindViewById = findViewById(R.id.masterNetworkWifiTitle);
        if (viewFindViewById != null) {
            viewFindViewById.setClickable(true);
            viewFindViewById.setFocusable(true);
            final a1.i iVar = new a1.i(viewFindViewById, 24, this);
            viewFindViewById.setOnTouchListener(new View.OnTouchListener() { // from class: w0.t9
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    MainActivity mainActivity = this.f4272a;
                    ArrayList arrayList = mainActivity.R0;
                    Handler handler = mainActivity.f1045v;
                    int i3 = MainActivity.f1002z1;
                    int actionMasked = motionEvent.getActionMasked();
                    a1.i iVar2 = iVar;
                    View view2 = viewFindViewById;
                    if (actionMasked == 0) {
                        ae aeVar = ae.f3361a;
                        ae.b("ADB", "atalho do ADB: dedo na tela, contando 2s", false);
                        boolean z2 = !mainActivity.o0().getBoolean("adb_gpio_enabled", false);
                        for (int i4 = 2; i4 > 0; i4--) {
                            wa waVar = new wa(mainActivity, z2, i4);
                            arrayList.add(waVar);
                            handler.postDelayed(waVar, (2 - i4) * 1000);
                        }
                        handler.postDelayed(iVar2, ((long) 2) * 1000);
                        ViewParent parent = view2.getParent();
                        if (parent != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                    } else if (actionMasked == 1 || actionMasked == 3) {
                        ViewParent parent2 = view2.getParent();
                        if (parent2 != null) {
                            parent2.requestDisallowInterceptTouchEvent(false);
                        }
                        handler.removeCallbacks(iVar2);
                        int size = arrayList.size();
                        int i5 = 0;
                        while (i5 < size) {
                            Object obj = arrayList.get(i5);
                            i5++;
                            handler.removeCallbacks((Runnable) obj);
                        }
                        arrayList.clear();
                        Toast toast = mainActivity.Q0;
                        if (toast != null) {
                            toast.cancel();
                        }
                        mainActivity.Q0 = null;
                        return false;
                    }
                    return false;
                }
            });
        }
        int[] iArr = {R.id.masterNetworkWifiNav, R.id.masterNetworkAndroidNav};
        int i3 = 0;
        int i4 = 0;
        while (i3 < 2) {
            findViewById(iArr[i3]).setOnClickListener(new g9(i4, this, iArr, 0));
            i3++;
            i4++;
        }
        F0(this, R.id.masterNetworkWifiAutoRow, "wifi_auto_enable_on_wake", false, new pc(0, this, MainActivity.class, "refreshMasterNetworkState", "refreshMasterNetworkState()V", 8), new qc(1, this, MainActivity.class, "onWifiAutoEnableChanged", "onWifiAutoEnableChanged(Z)V", 4), 4);
        F0(this, R.id.masterNetworkTelemetryRow, "telemetry_autostart", false, new pc(0, this, MainActivity.class, "refreshMasterNetworkState", "refreshMasterNetworkState()V", 9), new qc(1, this, MainActivity.class, "onTelemetryAutostartChanged", "onTelemetryAutostartChanged(Z)V", 5), 4);
        F0(this, R.id.masterNetworkPhoneSyncRow, "phone_sync_enabled", false, new pc(0, this, MainActivity.class, "refreshMasterNetworkState", "refreshMasterNetworkState()V", 10), new qc(1, this, MainActivity.class, "onPhoneSyncChanged", "onPhoneSyncChanged(Z)V", 6), 4);
        F0(this, R.id.masterNetworkAndroidKeepOpenRow, "ap_sempre_aberto", false, new pc(0, this, MainActivity.class, "refreshMasterNetworkState", "refreshMasterNetworkState()V", 11), null, 20);
        F0(this, R.id.masterNetworkAndroidProxyRow, "auto_proxy_enabled", false, new pc(0, this, MainActivity.class, "refreshMasterNetworkState", "refreshMasterNetworkState()V", 6), new qc(1, this, MainActivity.class, "onAutoProxyChanged", "onAutoProxyChanged(Z)V", 2), 4);
        for (Map.Entry entry : s.X(new a(Integer.valueOf(R.id.masterNetworkAndroidActivate), new v8(this, 28)), new a(Integer.valueOf(R.id.masterNetworkAndroidRestart), new v8(this, 29)), new a(Integer.valueOf(R.id.masterNetworkAndroidInstructions), new h9(this, 0)), new a(Integer.valueOf(R.id.masterNetworkAndroidPreferredPhone), new h9(this, 1)), new a(Integer.valueOf(R.id.masterNetworkAndroidCreateRoutes), new h9(this, 2))).entrySet()) {
            findViewById(((Number) entry.getKey()).intValue()).setOnClickListener(new d9((h2.a) entry.getValue(), this, 1));
        }
        F0(this, R.id.masterNetworkAndroidAutoRoutesSwitch, "auto_route_on_aa_connect", false, new pc(0, this, MainActivity.class, "refreshMasterNetworkState", "refreshMasterNetworkState()V", 7), new qc(1, this, MainActivity.class, "onAutoRouteChanged", "onAutoRouteChanged(Z)V", 3), 4);
        findViewById(R.id.masterNetworkModoAa).setOnClickListener(new y8(this, 15));
        findViewById(R.id.masterNetworkModoAmbos).setOnClickListener(new y8(this, 16));
        findViewById(R.id.masterNetworkVersao1111).setOnClickListener(new y8(this, 17));
        findViewById(R.id.masterNetworkVersao1114).setOnClickListener(new y8(this, 12));
        A();
        findViewById(R.id.masterNetworkWifiHelp).setOnClickListener(new y8(this, 13));
        findViewById(R.id.masterNetworkAndroidHelp).setOnClickListener(new y8(this, 14));
        M1(R.id.masterNetworkPageFlipper, 0, Arrays.copyOf(iArr, 2));
        s1();
    }

    public final boolean b0(boolean z2) {
        int i3 = this.f1022j1;
        try {
            f2.d.i0(new File(this.f1020i1), "out " + i3 + ' ' + (z2 ? 1 : 0) + '\n');
            Integer numV = V();
            boolean z3 = numV != null && numV.intValue() == z2;
            ae aeVar = ae.f3361a;
            StringBuilder sb = new StringBuilder("GPIO ");
            sb.append(i3);
            sb.append(" por sysfs: pedi ");
            sb.append(z2 ? 1 : 0);
            sb.append(", li ");
            Object obj = numV;
            if (numV == null) {
                obj = "n/d";
            }
            sb.append(obj);
            sb.append(z3 ? "" : " — vou tentar pelo ADB local");
            ae.b("ADB", sb.toString(), false);
            return z3;
        } catch (Throwable th) {
            ae aeVar2 = ae.f3361a;
            StringBuilder sbK = b.k("GPIO ", i3, " por sysfs falhou: ");
            sbK.append(th.getMessage());
            ae.b("ADB", sbK.toString(), false);
            return false;
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, java.util.Map] */
    public final wb c0(String str) throws Exception {
        String str2;
        a aVar = (a) u.f4292g.get(str);
        if (aVar != null) {
            String str3 = (String) aVar.f4641a;
            String str4 = (String) aVar.b;
            try {
                byte[] bArr = u6.f4334a;
                SharedPreferences sharedPreferencesO0 = o0();
                g.d(sharedPreferencesO0, "<get-prefs>(...)");
                t6 t6VarD = u6.d(this, sharedPreferencesO0, str3, 0L);
                Log.i("DistAux", str4 + " pela distribuicao propria: vc=" + t6VarD.f4262a);
                return new wb(t6VarD.f4262a, t6VarD.b, t6VarD.f4263c, null, null, str4);
            } catch (Exception e3) {
                if (t1.c(str, u.f4293h) == d5.b) {
                    Log.w("DistAux", str4 + " indisponivel na distribuicao propria (" + e3.getMessage() + ") — e nao ha reserva no GitHub desde 23/09/2026");
                    throw e3;
                }
                Log.w("DistAux", str4 + " indisponivel na distribuicao propria (" + e3.getMessage() + "); usando o GitHub");
            }
        }
        String strR0 = r0(str);
        Pattern patternCompile = Pattern.compile("\"versionCode\"\\s*:\\s*(\\d+)");
        g.d(patternCompile, "compile(...)");
        Matcher matcher = patternCompile.matcher(strR0);
        g.d(matcher, "matcher(...)");
        e eVarB = k1.a.b(matcher, 0, strR0);
        Long lY = (eVarB == null || (str2 = (String) y1.g.c0(eVarB.a(), 1)) == null) ? null : o2.s.Y(str2);
        long jLongValue = lY != null ? lY.longValue() : 0L;
        String strX0 = x0(strR0, "versionName");
        if (strX0 == null) {
            strX0 = String.valueOf(jLongValue);
        }
        String str5 = strX0;
        String strX1 = x0(strR0, "apkUrl");
        String strX2 = x0(strR0, "pageUrl");
        if (strX1 == null && strX2 == null) {
            throw new IllegalStateException("sem apkUrl nem pageUrl em ".concat(str));
        }
        return new wb(jLongValue, str5, strX1, x0(strR0, "sha256"), strX2, null);
    }

    public final void c1() {
        MasterToggleView masterToggleView;
        if (!this.S0[1] || (masterToggleView = (MasterToggleView) findViewById(R.id.masterToolsAcSingleStepSwitch)) == null) {
            return;
        }
        masterToggleView.setActive(o0().getBoolean("gestures_ac_swipe_single_step", false));
    }

    /* JADX WARN: Type inference failed for: r6v0, types: [java.lang.Object, java.util.Map] */
    public final zb d0(String str, String str2) throws Exception {
        a aVar;
        String string;
        int i3 = u.f4288a;
        g.e(str, "versao");
        String str3 = (String) y1.g.b0(u.f(str2, str));
        Exception e3 = null;
        String str4 = (str3 == null || (aVar = (a) u.f4292g.get(str3)) == null) ? null : (String) aVar.f4641a;
        if (str4 != null) {
            try {
                byte[] bArr = u6.f4334a;
                SharedPreferences sharedPreferencesO0 = o0();
                g.d(sharedPreferencesO0, "<get-prefs>(...)");
                t6 t6VarD = u6.d(this, sharedPreferencesO0, str4, 0L);
                Log.i("CaFix", "manifesto pela distribuicao propria: vc=" + t6VarD.f4262a);
                return new zb("", t6VarD.f4263c, t6VarD.f4262a, t6VarD.f4264d, t6VarD.f4265e);
            } catch (Exception e4) {
                String str5 = (String) y1.g.b0(u.f(str2, str));
                if (str5 != null && t1.c(str5, u.f4293h) == d5.b) {
                    ae aeVar = ae.f3361a;
                    ae.b("ConnAdaptor", "manifesto indisponível: " + e4.getMessage() + "; sem reserva no GitHub", false);
                    throw e4;
                }
                Log.w("CaFix", "distribuicao propria indisponivel (" + e4.getMessage() + "); usando o GitHub");
            }
        }
        boolean z2 = true;
        for (String str6 : u.f(str2, str)) {
            try {
                String strR0 = r0(str6);
                String strX0 = x0(strR0, "md5");
                if (strX0 == null || (string = k.E0(strX0).toString()) == null) {
                    throw new IllegalStateException(str6 + " sem md5");
                }
                String strX1 = x0(strR0, "apkUrl");
                if (strX1 != null) {
                    return new zb(string, strX1, 0L, "", 0L);
                }
                throw new IllegalStateException(str6 + " sem apkUrl");
            } catch (Exception e5) {
                e3 = e5;
                StringBuilder sbL = b.l("manifesto ", str6, " falhou: ");
                sbL.append(e3.getMessage());
                Log.w("CaFix", sbL.toString());
                Pattern patternCompile = Pattern.compile("HTTP 4\\d\\d");
                g.d(patternCompile, "compile(...)");
                String message = e3.getMessage();
                if (message == null) {
                    message = "";
                }
                Matcher matcher = patternCompile.matcher(message);
                g.d(matcher, "matcher(...)");
                if (k1.a.b(matcher, 0, message) == null) {
                    z2 = false;
                }
            }
        }
        if (z2) {
            throw new IllegalStateException(getString(R.string.k_connadaptor_versao_nao_publicada, S(str)));
        }
        if (e3 != null) {
            throw e3;
        }
        throw new IllegalStateException(getString(R.string.k_connadaptor_versao_nao_publicada, S(str)));
    }

    public final void d1() {
        String string = getString(o0().getBoolean("adb_gpio_enabled", false) ? R.string.master_adb_ligando : R.string.master_adb_desligando);
        g.d(string, "getString(...)");
        Toast toast = this.Q0;
        if (toast != null) {
            toast.cancel();
        }
        this.Q0 = t2(string, 0);
    }

    public final void e1() {
        if (this.f1025l0) {
            return;
        }
        this.B.execute(new ma(this, 3));
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object, java.util.Map] */
    public final bc f0() throws Exception {
        a aVar = (a) u.f4292g.get("https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/geelyautokeyserver-patch.json");
        if (aVar != null) {
            String str = (String) aVar.f4641a;
            try {
                byte[] bArr = u6.f4334a;
                SharedPreferences sharedPreferencesO0 = o0();
                g.d(sharedPreferencesO0, "<get-prefs>(...)");
                t6 t6VarD = u6.d(this, sharedPreferencesO0, str, 0L);
                Log.i("DistAux", "keyserver pela distribuicao propria: vc=" + t6VarD.f4262a);
                return new bc(t6VarD.f4262a, t6VarD.b, t6VarD.f4263c, "");
            } catch (Exception e3) {
                if (t1.c("https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/geelyautokeyserver-patch.json", u.f4293h) == d5.b) {
                    Log.w("DistAux", "keyserver indisponivel na distribuicao propria (" + e3.getMessage() + ") — e nao ha reserva no GitHub desde 23/09/2026");
                    throw e3;
                }
                Log.w("DistAux", "keyserver indisponivel na distribuicao propria (" + e3.getMessage() + "); usando o GitHub");
            }
        }
        String strR0 = r0("https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/geelyautokeyserver-patch.json");
        String strX0 = x0(strR0, "apkUrl");
        if (strX0 == null) {
            throw new IllegalStateException("geelyautokeyserver-patch.json sem apkUrl");
        }
        String strX1 = x0(strR0, "sha256");
        if (strX1 == null) {
            throw new IllegalStateException("geelyautokeyserver-patch.json sem sha256");
        }
        String strX2 = x0(strR0, "versionName");
        if (strX2 == null) {
            strX2 = "?";
        }
        return new bc(0L, strX2, strX0, strX1);
    }

    public final void f1() {
        long longVersionCode;
        a aVarC;
        String str = "?";
        try {
            String str2 = getPackageManager().getPackageInfo(getPackageName(), 0).versionName;
            if (str2 != null) {
                str = str2;
            }
        } catch (Exception unused) {
        }
        try {
            longVersionCode = getPackageManager().getPackageInfo(getPackageName(), 0).getLongVersionCode();
        } catch (Exception unused2) {
            longVersionCode = -1;
        }
        try {
            aVarC = qe.f4124a.c(this);
        } catch (Throwable unused3) {
            aVarC = null;
        }
        String string = aVarC == null ? getString(R.string.k_pacotes_vazio) : getString(R.string.k_pacotes_contagem, aVarC.f4641a, aVarC.b);
        g.b(string);
        this.f1021j0 = getString(R.string.k_version_footer, str, Long.valueOf(longVersionCode)) + '\n' + string;
        ((TextView) findViewById(R.id.masterVersion)).setText(this.f1021j0);
    }

    public final hc g0() {
        String str;
        byte[] bArr = u6.f4334a;
        SharedPreferences sharedPreferencesO0 = o0();
        g.d(sharedPreferencesO0, "<get-prefs>(...)");
        String packageName = getPackageName();
        g.d(packageName, "getPackageName(...)");
        t6 t6VarD = u6.d(this, sharedPreferencesO0, packageName, T());
        qe qeVar = qe.f4124a;
        SharedPreferences sharedPreferencesO1 = o0();
        g.d(sharedPreferencesO1, "<get-prefs>(...)");
        qeVar.g(this, sharedPreferencesO1, t6VarD.f4267h, T());
        qe.f(this, t6VarD.f4268i);
        runOnUiThread(new ma(this, 21));
        ie ieVarB = qeVar.b(this);
        if (ieVarB != null) {
            w0.p pVar = new w0.p(this);
            Collection collectionValues = ieVarB.f.values();
            ArrayList arrayList = new ArrayList();
            for (Object obj : collectionValues) {
                he heVar = (he) obj;
                if (heVar.f3681c && heVar.b.equals("userCheck")) {
                    arrayList.add(obj);
                }
            }
            int size = arrayList.size();
            int i3 = 0;
            while (i3 < size) {
                int i4 = i3 + 1;
                he heVar2 = (he) arrayList.get(i3);
                try {
                    o2.h hVar = ne.f3953a;
                    me meVarA = ne.a(heVar2, pVar, new LinkedHashMap());
                    ae aeVar = ae.f3361a;
                    StringBuilder sb = new StringBuilder();
                    sb.append(heVar2.f3680a);
                    sb.append('[');
                    sb.append("userCheck");
                    sb.append("] → ");
                    sb.append(meVarA.f3916a);
                    sb.append(" (");
                    sb.append(meVarA.b);
                    sb.append(" passos, ");
                    sb.append(meVarA.f3917c);
                    sb.append("ms");
                    String str2 = meVarA.f3919e;
                    if (str2 != null) {
                        str = ", " + str2;
                        if (str == null) {
                            str = "";
                        }
                    } else {
                        str = "";
                    }
                    sb.append(str);
                    sb.append(')');
                    ae.b("PlaybookSync", sb.toString(), false);
                } catch (Exception e3) {
                    ae aeVar2 = ae.f3361a;
                    ae.b("PlaybookSync", heVar2.f3680a + "[userCheck] explodiu: " + e3.getMessage(), false);
                }
                i3 = i4;
            }
        }
        return new hc(t6VarD.f4262a, t6VarD.b, t6VarD.f4263c);
    }

    public final void g1() {
        MasterToggleView masterToggleView = (MasterToggleView) findViewById(R.id.masterAudioAvasSwitch);
        if (masterToggleView != null) {
            masterToggleView.setActive(this.f1036r0);
        }
    }

    public final void h2() {
        for (Map.Entry entry : s.X(new a(Integer.valueOf(R.id.masterToolsTela), 0), new a(Integer.valueOf(R.id.masterToolsNotifications), 1), new a(Integer.valueOf(R.id.masterToolsStatus), 2), new a(Integer.valueOf(R.id.masterToolsCar), 3), new a(Integer.valueOf(R.id.masterToolsClimate), 4), new a(Integer.valueOf(R.id.masterToolsSecurity), 5)).entrySet()) {
            final int iIntValue = ((Number) entry.getKey()).intValue();
            final int iIntValue2 = ((Number) entry.getValue()).intValue();
            findViewById(iIntValue).setOnClickListener(new View.OnClickListener() { // from class: w0.vb
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    int i3 = MainActivity.f1002z1;
                    this.f4399a.o2(iIntValue2, iIntValue);
                }
            });
        }
        findViewById(R.id.masterToolsInterfaceHeader).setOnClickListener(new w8(this, 2));
        findViewById(R.id.masterToolsPipNativoRow).setOnClickListener(new w8(this, 5));
        findViewById(R.id.masterToolsPipNativoHelp).setOnClickListener(new w8(this, 9));
        findViewById(R.id.masterToolsGesturesRow).setOnClickListener(new w8(this, 10));
        findViewById(R.id.masterToolsGesturesHelp).setOnClickListener(new w8(this, 11));
        F0(this, R.id.masterToolsRememberBrightnessRow, "remember_brightness", false, new tc(0, this, MainActivity.class, "refreshMasterToolsState", "refreshMasterToolsState()V", 8), new qc(1, this, MainActivity.class, "onRememberBrightnessChanged", "onRememberBrightnessChanged(Z)V", 17), 4);
        E0(R.id.masterToolsSplitRow, new tc(0, this, MainActivity.class, "refreshMasterToolsState", "refreshMasterToolsState()V", 9), new v8(this, 11));
        E0(R.id.masterToolsPipRow, new pc(0, this, MainActivity.class, "refreshMasterToolsState", "refreshMasterToolsState()V", 12), new v8(this, 12));
        F0(this, R.id.masterToolsNotificationBatteryRow, "status_battery_enabled", false, new pc(0, this, MainActivity.class, "refreshMasterToolsState", "refreshMasterToolsState()V", 13), new qc(1, this, MainActivity.class, "onStatusBatteryChanged", "onStatusBatteryChanged(Z)V", 7), 4);
        F0(this, R.id.masterToolsNotificationTempRow, "status_temp_ext_enabled", false, new pc(0, this, MainActivity.class, "refreshMasterToolsState", "refreshMasterToolsState()V", 14), new qc(1, this, MainActivity.class, "onStatusTempExtChanged", "onStatusTempExtChanged(Z)V", 8), 4);
        F0(this, R.id.masterToolsNotificationWifiRow, "status_wifi_enabled", false, new pc(0, this, MainActivity.class, "refreshMasterToolsState", "refreshMasterToolsState()V", 15), new qc(1, this, MainActivity.class, "onStatusWifiChanged", "onStatusWifiChanged(Z)V", 9), 4);
        F0(this, R.id.masterToolsNotificationSignalRow, "status_signal_enabled", false, new pc(0, this, MainActivity.class, "refreshMasterToolsState", "refreshMasterToolsState()V", 16), new qc(1, this, MainActivity.class, "onStatusSignalChanged", "onStatusSignalChanged(Z)V", 10), 4);
        int i3 = 4;
        findViewById(R.id.masterToolsStatusBatteryRow).setOnClickListener(new a0(this, i3, "batt"));
        findViewById(R.id.masterToolsStatusHvacRow).setOnClickListener(new a0(this, i3, "temp"));
        findViewById(R.id.masterToolsStatusExternalTempRow).setOnClickListener(new a0(this, i3, "exttemp"));
        F0(this, R.id.masterToolsStatusBrightnessRow, "status_brightness_enabled", false, new pc(0, this, MainActivity.class, "refreshMasterToolsState", "refreshMasterToolsState()V", 17), new qc(1, this, MainActivity.class, "onStatusBrightnessChanged", "onStatusBrightnessChanged(Z)V", 11), 4);
        E0(R.id.masterToolsStatusBrightness2EnabledRow, new pc(0, this, MainActivity.class, "refreshMasterToolsState", "refreshMasterToolsState()V", 18), new v8(this, 13));
        F0(this, R.id.masterToolsStatusTripRow, "status_trip_km_enabled", false, new pc(0, this, MainActivity.class, "refreshMasterToolsState", "refreshMasterToolsState()V", 19), new qc(1, this, MainActivity.class, "onStatusTripKmChanged", "onStatusTripKmChanged(Z)V", 12), 4);
        F0(this, R.id.masterToolsStatusTotalRow, "status_total_km_enabled", false, new pc(0, this, MainActivity.class, "refreshMasterToolsState", "refreshMasterToolsState()V", 20), new qc(1, this, MainActivity.class, "onStatusTotalKmChanged", "onStatusTotalKmChanged(Z)V", 13), 4);
        E0(R.id.masterToolsStatusResetTripRow, null, new v8(this, 14));
        F0(this, R.id.masterToolsFloatingEnabledRow, "temp_batt_pill_enabled", false, new pc(0, this, MainActivity.class, "refreshMasterToolsState", "refreshMasterToolsState()V", 21), new qc(1, this, MainActivity.class, "onTempBattPillEnabledChanged", "onTempBattPillEnabledChanged(Z)V", 14), 4);
        E0(R.id.masterToolsFloatingModeTemp, new pc(0, this, MainActivity.class, "refreshMasterToolsState", "refreshMasterToolsState()V", 22), new ub(this, 4));
        E0(R.id.masterToolsFloatingModeBattery, new pc(0, this, MainActivity.class, "refreshMasterToolsState", "refreshMasterToolsState()V", 23), new ub(this, 5));
        E0(R.id.masterToolsFloatingModeBoth, new pc(0, this, MainActivity.class, "refreshMasterToolsState", "refreshMasterToolsState()V", 24), new ub(this, 6));
        E0(R.id.masterToolsFloatingTextWhite, new pc(0, this, MainActivity.class, "refreshMasterToolsState", "refreshMasterToolsState()V", 25), new v8(this, 0));
        E0(R.id.masterToolsFloatingTextBlack, new pc(0, this, MainActivity.class, "refreshMasterToolsState", "refreshMasterToolsState()V", 26), new v8(this, 1));
        findViewById(R.id.masterToolsCarWheelControlsRow).setOnClickListener(new w8(this, 0));
        F0(this, R.id.masterToolsCarWheelMediaRow, "swc_media_control_enabled", false, new pc(0, this, MainActivity.class, "refreshMasterToolsState", "refreshMasterToolsState()V", 27), new n2(26), 4);
        F0(this, R.id.masterToolsCarCameraDriveRow, "camera_on_drive", false, new pc(0, this, MainActivity.class, "refreshMasterToolsState", "refreshMasterToolsState()V", 28), null, 16);
        E0(R.id.masterToolsClimateProgramsRow, null, new v8(this, 2));
        F0(this, R.id.masterToolsClimateRecircRow, "recirc_guard_enabled", false, new pc(0, this, MainActivity.class, "refreshMasterToolsState", "refreshMasterToolsState()V", 29), new n2(this), 4);
        F0(this, R.id.masterToolsClimateWindowRow, "window_driver_on_door", false, new tc(0, this, MainActivity.class, "refreshMasterToolsState", "refreshMasterToolsState()V", 0), new qc(1, this, MainActivity.class, "onWindowDriverOnDoorChanged", "onWindowDriverOnDoorChanged(Z)V", 15), 4);
        F0(this, R.id.masterToolsClimateOppositeWindowRow, "window_opposite_on_door", false, new tc(0, this, MainActivity.class, "refreshMasterToolsState", "refreshMasterToolsState()V", 1), new qc(1, this, MainActivity.class, "onWindowOppositeOnDoorChanged", "onWindowOppositeOnDoorChanged(Z)V", 16), 4);
        findViewById(R.id.masterToolsSecurityRvcRow).setOnClickListener(new w8(this, 1));
        findViewById(R.id.masterToolsSecurityTurnCameraRow).setOnClickListener(new y6(new c8(2, this, MainActivity.class, "onRearCamPipSwitch", "onRearCamPipSwitch(ZLkotlin/jvm/functions/Function0;)V", 2), new v8(this, 3), new tc(0, this, MainActivity.class, "refreshToolsAfterAction", "refreshToolsAfterAction()V", 2)));
        E0(R.id.masterToolsSecurityTurnCameraHoldRow, new tc(0, this, MainActivity.class, "refreshMasterToolsState", "refreshMasterToolsState()V", 3), new v8(this, 4));
        findViewById(R.id.masterToolsSecurityAebRow).setOnClickListener(new y6(new c8(2, this, MainActivity.class, "onAebSwitch", "onAebSwitch(ZLkotlin/jvm/functions/Function0;)V", 3), new v8(this, 6), new tc(0, this, MainActivity.class, "refreshToolsAfterAction", "refreshToolsAfterAction()V", 4)));
        E0(R.id.masterToolsSecurityAebRestoreRow, new tc(0, this, MainActivity.class, "refreshToolsAfterAction", "refreshToolsAfterAction()V", 5), new v8(this, 7));
        findViewById(R.id.masterToolsSecuritySpeedLockRow).setOnClickListener(new y6(new c8(2, this, MainActivity.class, "onSpeedLockSwitch", "onSpeedLockSwitch(ZLkotlin/jvm/functions/Function0;)V", 4), new v8(this, 8), new tc(0, this, MainActivity.class, "refreshToolsAfterAction", "refreshToolsAfterAction()V", 6)));
        E0(R.id.masterToolsManageGestures, null, new v8(this, 9));
        E0(R.id.masterToolsAcSingleStepRow, new tc(0, this, MainActivity.class, "refreshMasterToolsState", "refreshMasterToolsState()V", 7), new v8(this, 10));
        for (Map.Entry entry2 : s.X(new a(Integer.valueOf(R.id.masterToolsRestOff), 0), new a(Integer.valueOf(R.id.masterToolsRest30), 30), new a(Integer.valueOf(R.id.masterToolsRest60), 60), new a(Integer.valueOf(R.id.masterToolsRest120), 120)).entrySet()) {
            findViewById(((Number) entry2.getKey()).intValue()).setOnClickListener(new a1.n(this, ((Number) entry2.getValue()).intValue(), 4));
        }
        SeekBar seekBar = (SeekBar) findViewById(R.id.masterToolsBrightness);
        seekBar.setMin(5);
        C1();
        seekBar.setOnSeekBarChangeListener(new u8(1, this));
        i2(R.id.masterToolsStatusBrightness1, R.id.masterToolsStatusBrightness1Value, this, "status_brightness_pct");
        i2(R.id.masterToolsStatusBrightness2, R.id.masterToolsStatusBrightness2Value, this, "status_brightness_pct2");
        SharedPreferences sharedPreferences = getSharedPreferences("temp_batt_pill_prefs", 0);
        SeekBar seekBar2 = (SeekBar) findViewById(R.id.masterToolsFloatingSize);
        seekBar2.setMax(150);
        seekBar2.setProgress(sharedPreferences.getInt("pill_size_pct", 100) - 50);
        seekBar2.setOnSeekBarChangeListener(new uc(this, sharedPreferences, 0));
        SeekBar seekBar3 = (SeekBar) findViewById(R.id.masterToolsFloatingAlpha);
        seekBar3.setProgress(sharedPreferences.getInt("pill_alpha", 85));
        seekBar3.setOnSeekBarChangeListener(new uc(this, sharedPreferences, 1));
        findViewById(R.id.masterToolsHelp).setOnClickListener(new w8(this, 3));
        findViewById(R.id.masterToolsNotificationsHelp).setOnClickListener(new w8(this, 4));
        findViewById(R.id.masterToolsStatusHelp).setOnClickListener(new w8(this, 6));
        findViewById(R.id.masterToolsClimateHelp).setOnClickListener(new w8(this, 7));
        findViewById(R.id.masterToolsSecurityHelp).setOnClickListener(new w8(this, 8));
        o2(0, R.id.masterToolsTela);
    }

    public final String i0(String str, long j3, long j4) {
        double d3 = j3 / 1048576.0d;
        String string = k.m0(str) ? getString(R.string.k_downloading_plain) : getString(R.string.k_downloading_named, str);
        g.b(string);
        return j4 > 0 ? String.format("%s: %d%% (%.1f/%.1f MB)", Arrays.copyOf(new Object[]{string, Integer.valueOf((int) ((j3 * ((long) 100)) / j4)), Double.valueOf(d3), Double.valueOf(j4 / 1048576.0d)}, 4)) : String.format("%s: %.1f MB", Arrays.copyOf(new Object[]{string, Double.valueOf(d3)}, 2));
    }

    public final void i1(Integer num, Integer num2) {
        if (num != null) {
            this.f1047v1 = num;
        }
        if (num2 != null) {
            this.w1 = num2;
        }
        SharedPreferences sharedPreferencesH = DriveRegenFloaterService.h(this);
        n4 n4VarB = t1.B(sharedPreferencesH.contains("saved_drive") ? Integer.valueOf(sharedPreferencesH.getInt("saved_drive", 0)) : null, this.w1, this.f1051x1);
        n4 n4VarB2 = t1.B(sharedPreferencesH.contains("saved_regen") ? Integer.valueOf(sharedPreferencesH.getInt("saved_regen", 0)) : null, this.f1047v1, this.f1053y1);
        j1(this, R.id.masterRegenLow, 537003265, n4VarB2);
        j1(this, R.id.masterRegenMedium, 537003266, n4VarB2);
        j1(this, R.id.masterRegenHigh, 537003267, n4VarB2);
        j1(this, R.id.masterDriveEco, 570491137, n4VarB);
        j1(this, R.id.masterDriveComfort, 570491138, n4VarB);
        j1(this, R.id.masterDriveSport, 570491139, n4VarB);
    }

    public final void j0() {
        if (o0().getBoolean("quick_access_enabled", false) || o0().getBoolean("gestures_enabled", false)) {
            try {
                startService(new Intent(this, (Class<?>) QuickAccessFloaterService.class));
                int i3 = QuickAccessFloaterService.t0;
                QuickAccessFloaterService quickAccessFloaterService = QuickAccessFloaterService.x0;
                if (quickAccessFloaterService == null) {
                    return;
                }
                quickAccessFloaterService.f1134a.post(new ve(17, quickAccessFloaterService));
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v21 */
    /* JADX WARN: Type inference failed for: r11v22, types: [android.view.View, android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r11v24, types: [android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r12v5, types: [android.view.View, android.view.ViewGroup, android.widget.LinearLayout] */
    /* JADX WARN: Type inference failed for: r13v32 */
    /* JADX WARN: Type inference failed for: r13v38 */
    /* JADX WARN: Type inference failed for: r13v45 */
    /* JADX WARN: Type inference failed for: r1v0, types: [android.content.Context, android.content.ContextWrapper, com.ex.auto.MainActivity, e.j, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v20, types: [e.j] */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r1v28 */
    /* JADX WARN: Type inference failed for: r1v29 */
    /* JADX WARN: Type inference failed for: r2v48, types: [android.view.ViewGroup, android.widget.GridLayout] */
    /* JADX WARN: Type inference failed for: r2v53, types: [android.view.ViewGroup, android.widget.GridLayout] */
    /* JADX WARN: Type inference failed for: r32v1, types: [android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r3v81, types: [android.view.View, android.view.ViewGroup, android.widget.LinearLayout] */
    /* JADX WARN: Type inference failed for: r7v3, types: [java.lang.Object, java.util.List] */
    /* JADX WARN: Type inference failed for: r8v4, types: [android.view.View, android.view.ViewGroup, android.widget.LinearLayout] */
    public final void k0(int i3) {
        int i4;
        long j3;
        String str;
        String str2;
        ?? r11;
        char c3;
        int i5;
        String language;
        ?? r3;
        String str3;
        final ?? r4 = this;
        if (i3 > 0) {
            boolean[] zArr = r4.S0;
            if (i3 >= zArr.length || zArr[i3]) {
                return;
            }
            switch (i3) {
                case 1:
                    i4 = R.id.stubTools;
                    break;
                case 2:
                    i4 = R.id.stubNetwork;
                    break;
                case 3:
                    i4 = R.id.stubAudio;
                    break;
                case 4:
                    i4 = R.id.stubApps;
                    break;
                case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                    i4 = R.id.stubShortcuts;
                    break;
                case MusicClient.TYPE_GESTURE /* 6 */:
                    i4 = R.id.stubConfig;
                    break;
                case PlaybackState.STATE_ERROR /* 7 */:
                    i4 = R.id.stubAbout;
                    break;
                default:
                    i4 = 0;
                    break;
            }
            if (i4 == 0) {
                return;
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            ViewStub viewStub = (ViewStub) r4.findViewById(i4);
            int i6 = 1;
            zArr[i3] = true;
            String str4 = "ArranqueUI";
            if (viewStub != null) {
                try {
                    viewStub.inflate();
                } catch (Throwable th) {
                    b.s(th, b.k("seção ", i3, " não inflou: "), "ArranqueUI");
                    return;
                }
            }
            long jElapsedRealtime2 = SystemClock.elapsedRealtime();
            int i7 = 11;
            int i8 = 26;
            int i9 = 24;
            int i10 = 23;
            int i11 = 22;
            int i12 = 10;
            int i13 = 25;
            ?? r5 = r4;
            switch (i3) {
                case 1:
                    j3 = jElapsedRealtime;
                    str = "ArranqueUI";
                    r4.h2();
                    r4.v1();
                    r3 = r4;
                    break;
                case 2:
                    j3 = jElapsedRealtime;
                    str = "ArranqueUI";
                    r4.a2();
                    r4.s1();
                    r3 = r4;
                    break;
                case 3:
                    j3 = jElapsedRealtime;
                    str = "ArranqueUI";
                    int i14 = 19;
                    int i15 = 21;
                    int i16 = 20;
                    Spinner spinner = (Spinner) r4.findViewById(R.id.masterAudioLockSpinner);
                    Spinner spinner2 = (Spinner) r4.findViewById(R.id.masterAudioAvasSpinner);
                    g.b(spinner);
                    r4.s2(spinner, r4.f1005b0, r4.f1007c0);
                    g.b(spinner2);
                    r4.s2(spinner2, r4.f1009d0, r4.f1011e0);
                    spinner.setOnItemSelectedListener(new oc(r4, 1));
                    spinner2.setOnItemSelectedListener(new oc(r4, 2));
                    int i17 = 18;
                    for (Map.Entry entry : s.X(new a(Integer.valueOf(R.id.masterAudioMediaBrowser), new h9(r4, 9)), new a(Integer.valueOf(R.id.masterAudioLockPreview), new h9(r4, 12)), new a(Integer.valueOf(R.id.masterAudioCopyUsb), new h9(r4, 13)), new a(Integer.valueOf(R.id.masterAudioLockRestore), new h9(r4, 15)), new a(Integer.valueOf(R.id.masterAudioLockDelete), new h9(r4, 16)), new a(Integer.valueOf(R.id.masterAudioAvasPreview), new h9(r4, 17)), new a(Integer.valueOf(R.id.masterAudioAvasApply), new h9(r4, i17))).entrySet()) {
                        r4.findViewById(((Number) entry.getKey()).intValue()).setOnClickListener(new d9((h2.a) entry.getValue(), r4, 2));
                    }
                    r4.findViewById(R.id.masterAudioLockApplyReboot).setOnClickListener(new y8(r4, i15));
                    r4.findViewById(R.id.masterAudioLockApplyPersistent).setOnClickListener(new y8(r4, i11));
                    E0(R.id.masterAudioAvasRow, new pc(0, this, MainActivity.class, "refreshMasterAudioState", "refreshMasterAudioState()V", 0), new h9(this, 10));
                    F0(this, R.id.masterAudioPauseDoorRow, "pause_audio_on_door", false, new pc(0, this, MainActivity.class, "refreshMasterAudioState", "refreshMasterAudioState()V", 1), null, 20);
                    F0(this, R.id.masterAudioMediaBarRow, "media_bar_floater_enabled", false, new pc(0, this, MainActivity.class, "refreshMasterAudioState", "refreshMasterAudioState()V", 2), new qc(1, this, MainActivity.class, "onMediaBarFloaterChanged", "onMediaBarFloaterChanged(Z)V", 0), 4);
                    F0(this, R.id.masterAudioLyricsRow, "lyrics_floater_enabled", false, new pc(0, this, MainActivity.class, "refreshMasterAudioState", "refreshMasterAudioState()V", 3), new qc(1, this, MainActivity.class, "onLyricsFloaterChanged", "onLyricsFloaterChanged(Z)V", 1), 4);
                    MainActivity mainActivity = this;
                    mainActivity.E0(R.id.masterAudioLyricsConfig, new pc(0, this, MainActivity.class, "refreshMasterAudioState", "refreshMasterAudioState()V", 4), new h9(mainActivity, i7));
                    mainActivity.findViewById(R.id.masterAudioLockHelp).setOnClickListener(new y8(mainActivity, i17));
                    mainActivity.findViewById(R.id.masterAudioAvasHelp).setOnClickListener(new y8(mainActivity, i14));
                    mainActivity.findViewById(R.id.masterAudioMediaHelp).setOnClickListener(new y8(mainActivity, i16));
                    mainActivity.q1();
                    mainActivity.q1();
                    r3 = mainActivity;
                    break;
                case 4:
                    j3 = jElapsedRealtime;
                    int i18 = 5;
                    str = "ArranqueUI";
                    int[] iArr = {R.id.masterAppsInstallerNav, R.id.masterAppsCatalogNav, R.id.masterAppsPerfNav};
                    int i19 = 0;
                    int i20 = 0;
                    while (i19 < 3) {
                        r4.findViewById(iArr[i19]).setOnClickListener(new g9(i20, r4, iArr, 2));
                        i19++;
                        i20++;
                    }
                    for (Map.Entry entry2 : s.X(new a(Integer.valueOf(R.id.masterAppsSourceInternal), new h9(r4, 24)), new a(Integer.valueOf(R.id.masterAppsSourceUsb), new h9(r4, i13)), new a(Integer.valueOf(R.id.masterAppsSourceInstalled), new h9(r4, i8)), new a(Integer.valueOf(R.id.masterAppsRefreshFiles), new h9(r4, 27)), new a(Integer.valueOf(R.id.masterAppsInstallFile), new h9(r4, 28)), new a(Integer.valueOf(R.id.masterAppsDeleteFile), new h9(r4, 29)), new a(Integer.valueOf(R.id.masterAppsCopyUsb), new ub(r4, 0)), new a(Integer.valueOf(R.id.masterAppsManageKeepAlive), new ub(r4, 1)), new a(Integer.valueOf(R.id.masterAppsPerfRefresh), new ub(r4, 3)), new a(Integer.valueOf(R.id.masterAppsPerfJitRow), new h9(r4, i11)), new a(Integer.valueOf(R.id.masterAppsPerfVideoRow), new h9(r4, 23))).entrySet()) {
                        r4.findViewById(((Number) entry2.getKey()).intValue()).setOnClickListener(new d9((h2.a) entry2.getValue(), r4, 3));
                    }
                    Spinner spinner3 = (Spinner) r4.findViewById(R.id.masterAppsFileSpinner);
                    g.b(spinner3);
                    r4.s2(spinner3, r4.f1013f0, r4.f1015g0);
                    final int i21 = 0;
                    spinner3.setOnItemSelectedListener(new oc(r4, 0));
                    r4.findViewById(R.id.masterAppsInstallerHelp).setOnClickListener(new y8(r4, 29));
                    r4.findViewById(R.id.masterAppsKeepAliveHelp).setOnClickListener(new View.OnClickListener(r4) { // from class: w0.tb
                        public final /* synthetic */ MainActivity b;

                        {
                            this.b = r4;
                        }

                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            int i22 = i21;
                            MainActivity mainActivity2 = this.b;
                            switch (i22) {
                                case 0:
                                    int i23 = MainActivity.f1002z1;
                                    String string = mainActivity2.getString(R.string.master_help_keepalive_title);
                                    mainActivity2.n2(string, androidx.activity.result.b.g(string, "getString(...)", mainActivity2, R.string.master_help_keepalive_items, "getString(...)"));
                                    break;
                                case 1:
                                    int i24 = MainActivity.f1002z1;
                                    String string2 = mainActivity2.getString(R.string.master_help_catalog_title);
                                    mainActivity2.n2(string2, androidx.activity.result.b.g(string2, "getString(...)", mainActivity2, R.string.master_help_catalog_items, "getString(...)"));
                                    break;
                                default:
                                    int i25 = MainActivity.f1002z1;
                                    String string3 = mainActivity2.getString(R.string.master_help_perf_title);
                                    mainActivity2.n2(string3, androidx.activity.result.b.g(string3, "getString(...)", mainActivity2, R.string.master_help_perf_items, "getString(...)"));
                                    break;
                            }
                        }
                    });
                    final int i22 = 1;
                    r4.findViewById(R.id.masterAppsCatalogHelp).setOnClickListener(new View.OnClickListener(r4) { // from class: w0.tb
                        public final /* synthetic */ MainActivity b;

                        {
                            this.b = r4;
                        }

                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            int i23 = i22;
                            MainActivity mainActivity2 = this.b;
                            switch (i23) {
                                case 0:
                                    int i24 = MainActivity.f1002z1;
                                    String string = mainActivity2.getString(R.string.master_help_keepalive_title);
                                    mainActivity2.n2(string, androidx.activity.result.b.g(string, "getString(...)", mainActivity2, R.string.master_help_keepalive_items, "getString(...)"));
                                    break;
                                case 1:
                                    int i25 = MainActivity.f1002z1;
                                    String string2 = mainActivity2.getString(R.string.master_help_catalog_title);
                                    mainActivity2.n2(string2, androidx.activity.result.b.g(string2, "getString(...)", mainActivity2, R.string.master_help_catalog_items, "getString(...)"));
                                    break;
                                default:
                                    int i26 = MainActivity.f1002z1;
                                    String string3 = mainActivity2.getString(R.string.master_help_perf_title);
                                    mainActivity2.n2(string3, androidx.activity.result.b.g(string3, "getString(...)", mainActivity2, R.string.master_help_perf_items, "getString(...)"));
                                    break;
                            }
                        }
                    });
                    final int i23 = 2;
                    r4.findViewById(R.id.masterAppsPerfHelp).setOnClickListener(new View.OnClickListener(r4) { // from class: w0.tb
                        public final /* synthetic */ MainActivity b;

                        {
                            this.b = r4;
                        }

                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            int i24 = i23;
                            MainActivity mainActivity2 = this.b;
                            switch (i24) {
                                case 0:
                                    int i25 = MainActivity.f1002z1;
                                    String string = mainActivity2.getString(R.string.master_help_keepalive_title);
                                    mainActivity2.n2(string, androidx.activity.result.b.g(string, "getString(...)", mainActivity2, R.string.master_help_keepalive_items, "getString(...)"));
                                    break;
                                case 1:
                                    int i26 = MainActivity.f1002z1;
                                    String string2 = mainActivity2.getString(R.string.master_help_catalog_title);
                                    mainActivity2.n2(string2, androidx.activity.result.b.g(string2, "getString(...)", mainActivity2, R.string.master_help_catalog_items, "getString(...)"));
                                    break;
                                default:
                                    int i27 = MainActivity.f1002z1;
                                    String string3 = mainActivity2.getString(R.string.master_help_perf_title);
                                    mainActivity2.n2(string3, androidx.activity.result.b.g(string3, "getString(...)", mainActivity2, R.string.master_help_perf_items, "getString(...)"));
                                    break;
                            }
                        }
                    });
                    p3 p3VarN0 = r4.n0();
                    p3VarN0.b.c(p3VarN0.f);
                    p3VarN0.f4049e = false;
                    ?? r6 = (GridLayout) r4.findViewById(R.id.masterAppsCatalogGrid);
                    r6.removeAllViews();
                    ArrayList arrayList = r4.Z;
                    arrayList.clear();
                    String string = r4.getString(R.string.master_file_manager);
                    g.d(string, "getString(...)");
                    List<kc> listU = f.U(new kc[]{new kc(R.string.master_catalog_desc_file_manager, r4, string, "com.amaze.filemanager"), new kc(R.string.master_catalog_desc_geely_battery, r4, "Capy", "com.timhss.geelybattery"), new kc(R.string.master_catalog_desc_ei_sapo, r4, "Ei Sapo", "com.geely.eisapo"), new kc(R.string.master_catalog_desc_dual_dashcam, r4, "DualDashcam", "br.com.central.dualdashcam"), new kc(R.string.master_catalog_desc_logger, r4, "Logger", "com.geely.connadaptorlogger"), new kc(R.string.master_catalog_desc_firefox, r4, "Firefox", "org.mozilla.firefox"), new kc(R.string.master_catalog_desc_microg, r4, "microG", "app.revanced.android.gms"), new kc(R.string.master_catalog_desc_chromium, r4, "Chromium", "org.bromite.chromium")});
                    float f = r4.getResources().getDisplayMetrics().density;
                    for (final kc kcVar : listU) {
                        ?? linearLayout = new LinearLayout(r4);
                        linearLayout.setOrientation(1);
                        int i24 = (int) (18 * f);
                        int i25 = (int) (16 * f);
                        linearLayout.setPadding(i24, i25, i24, i25);
                        linearLayout.setBackgroundResource(R.drawable.bg_master_inner_card);
                        ?? linearLayout2 = new LinearLayout(r4);
                        linearLayout2.setOrientation(0);
                        linearLayout2.setGravity(16);
                        wc wcVar = new wc(r4);
                        String str5 = kcVar.f3810c;
                        String str6 = kcVar.f3809a;
                        wcVar.setAppId(str5);
                        wcVar.setContentDescription(str6);
                        int i26 = (int) (66 * f);
                        linearLayout2.addView(wcVar, new LinearLayout.LayoutParams(i26, i26));
                        LinearLayout linearLayout3 = new LinearLayout(r4);
                        linearLayout3.setOrientation(1);
                        linearLayout3.setPadding(i25, 0, 0, 0);
                        TextView textView = new TextView(r4);
                        textView.setText(str6);
                        textView.setTextSize(20.0f);
                        textView.setTextColor(r4.getColor(R.color.master_text));
                        textView.setTypeface(null, 1);
                        textView.setMaxLines(1);
                        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
                        textView.setEllipsize(truncateAt);
                        linearLayout3.addView(textView);
                        TextView textView2 = new TextView(r4);
                        textView2.setText(r4.getString(kcVar.b));
                        textView2.setTextSize(14.0f);
                        textView2.setTextColor(r4.getColor(R.color.master_text_secondary));
                        textView2.setMaxLines(2);
                        textView2.setEllipsize(truncateAt);
                        textView2.setPadding(0, (int) (i18 * f), 0, 0);
                        linearLayout3.addView(textView2);
                        linearLayout2.addView(linearLayout3, new LinearLayout.LayoutParams(0, -2, 1.0f));
                        linearLayout.addView(linearLayout2, new LinearLayout.LayoutParams(-1, -2));
                        LinearLayout linearLayout4 = new LinearLayout(r4);
                        linearLayout4.setOrientation(0);
                        linearLayout4.setGravity(8388629);
                        TextView textView3 = new TextView(r4);
                        textView3.setText(kcVar.a().f4512e);
                        textView3.setTextSize(14.0f);
                        textView3.setTextColor(r4.getColor(R.color.master_text_secondary));
                        textView3.setMaxLines(2);
                        textView3.setEllipsize(truncateAt);
                        linearLayout4.addView(textView3, new LinearLayout.LayoutParams(0, -2, 1.0f));
                        TextView textView4 = new TextView(r4);
                        textView4.setText(r4.getString(R.string.common_install));
                        textView4.setTextSize(16.0f);
                        textView4.setGravity(17);
                        textView4.setMinWidth((int) (130 * f));
                        textView4.setTextColor(r4.getColor(R.color.master_green));
                        textView4.setBackgroundResource(R.drawable.bg_master_activate);
                        textView4.setClickable(true);
                        textView4.setFocusable(true);
                        textView4.setForeground(r4.getDrawable(android.R.drawable.list_selector_background));
                        final int i27 = 0;
                        textView4.setOnClickListener(new View.OnClickListener() { // from class: w0.u9
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                int i28 = i27;
                                MainActivity mainActivity2 = r4;
                                kc kcVar2 = kcVar;
                                switch (i28) {
                                    case 0:
                                        int i29 = MainActivity.f1002z1;
                                        if (!kcVar2.a().f) {
                                            androidx.activity.result.b.n(R.string.k_toast_wait_processing, 0, mainActivity2, "getString(...)");
                                        } else {
                                            String string2 = kcVar2.a().f4511d == null ? mainActivity2.getString(R.string.k_installing_named, kcVar2.f3809a) : mainActivity2.getString(R.string.k_checking_available_version);
                                            i2.g.b(string2);
                                            mainActivity2.t2(string2, 0);
                                            xb xbVarA = kcVar2.a();
                                            if (xbVarA.f) {
                                                String str7 = xbVarA.f4511d;
                                                if (str7 == null) {
                                                    mainActivity2.s0(xbVarA);
                                                } else {
                                                    String str8 = xbVarA.b;
                                                    xbVarA.f = false;
                                                    xbVarA.b(mainActivity2.getString(R.string.k_checking_available_version));
                                                    xbVarA.a();
                                                    mainActivity2.C.execute(new la(mainActivity2, str8, xbVarA, str7));
                                                }
                                            }
                                            mainActivity2.n0().a();
                                        }
                                        break;
                                    default:
                                        int i30 = MainActivity.f1002z1;
                                        if (kcVar2.a().f4511d != null) {
                                            if (!kcVar2.a().f4513g) {
                                                androidx.activity.result.b.n(R.string.k_toast_wait_processing, 0, mainActivity2, "getString(...)");
                                            } else {
                                                kcVar2.a().f4513g = false;
                                                kcVar2.a().f = false;
                                                kcVar2.a().b(mainActivity2.getString(R.string.k_removing));
                                                String string3 = mainActivity2.getString(R.string.k_removing);
                                                i2.g.d(string3, "getString(...)");
                                                mainActivity2.t2(string3, 0);
                                                mainActivity2.C.execute(new a1.g(mainActivity2, kcVar2.f3810c, new y2(kcVar2, 7, mainActivity2), 18));
                                                mainActivity2.n0().a();
                                            }
                                            break;
                                        }
                                        break;
                                }
                            }
                        });
                        int i28 = (int) (46 * f);
                        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, i28);
                        layoutParams.setMarginStart((int) (12 * f));
                        linearLayout4.addView(textView4, layoutParams);
                        TextView textView5 = new TextView(r4);
                        textView5.setText(r4.getString(R.string.master_catalog_remove));
                        textView5.setTextSize(16.0f);
                        textView5.setGravity(17);
                        textView5.setTextColor(r4.getColor(R.color.cx_danger_dim));
                        textView5.setBackgroundResource(R.drawable.bg_master_restart);
                        final int i29 = 1;
                        textView5.setClickable(true);
                        textView5.setFocusable(true);
                        textView5.setForeground(r4.getDrawable(android.R.drawable.list_selector_background));
                        textView5.setVisibility(8);
                        textView5.setOnClickListener(new View.OnClickListener() { // from class: w0.u9
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                int i210 = i29;
                                MainActivity mainActivity2 = r4;
                                kc kcVar2 = kcVar;
                                switch (i210) {
                                    case 0:
                                        int i211 = MainActivity.f1002z1;
                                        if (!kcVar2.a().f) {
                                            androidx.activity.result.b.n(R.string.k_toast_wait_processing, 0, mainActivity2, "getString(...)");
                                        } else {
                                            String string2 = kcVar2.a().f4511d == null ? mainActivity2.getString(R.string.k_installing_named, kcVar2.f3809a) : mainActivity2.getString(R.string.k_checking_available_version);
                                            i2.g.b(string2);
                                            mainActivity2.t2(string2, 0);
                                            xb xbVarA = kcVar2.a();
                                            if (xbVarA.f) {
                                                String str7 = xbVarA.f4511d;
                                                if (str7 == null) {
                                                    mainActivity2.s0(xbVarA);
                                                } else {
                                                    String str8 = xbVarA.b;
                                                    xbVarA.f = false;
                                                    xbVarA.b(mainActivity2.getString(R.string.k_checking_available_version));
                                                    xbVarA.a();
                                                    mainActivity2.C.execute(new la(mainActivity2, str8, xbVarA, str7));
                                                }
                                            }
                                            mainActivity2.n0().a();
                                        }
                                        break;
                                    default:
                                        int i30 = MainActivity.f1002z1;
                                        if (kcVar2.a().f4511d != null) {
                                            if (!kcVar2.a().f4513g) {
                                                androidx.activity.result.b.n(R.string.k_toast_wait_processing, 0, mainActivity2, "getString(...)");
                                            } else {
                                                kcVar2.a().f4513g = false;
                                                kcVar2.a().f = false;
                                                kcVar2.a().b(mainActivity2.getString(R.string.k_removing));
                                                String string3 = mainActivity2.getString(R.string.k_removing);
                                                i2.g.d(string3, "getString(...)");
                                                mainActivity2.t2(string3, 0);
                                                mainActivity2.C.execute(new a1.g(mainActivity2, kcVar2.f3810c, new y2(kcVar2, 7, mainActivity2), 18));
                                                mainActivity2.n0().a();
                                            }
                                            break;
                                        }
                                        break;
                                }
                            }
                        });
                        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams((int) (116 * f), i28);
                        layoutParams2.setMarginStart((int) (10 * f));
                        linearLayout4.addView(textView5, layoutParams2);
                        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
                        layoutParams3.topMargin = (int) (13 * f);
                        linearLayout.addView(linearLayout4, layoutParams3);
                        GridLayout.LayoutParams layoutParams4 = new GridLayout.LayoutParams();
                        layoutParams4.width = 0;
                        layoutParams4.height = (int) (174 * f);
                        layoutParams4.columnSpec = GridLayout.spec(Integer.MIN_VALUE, 1.0f);
                        int i30 = (int) (6 * f);
                        layoutParams4.setMargins(i30, i30, i30, i30);
                        r6.addView(linearLayout, layoutParams4);
                        arrayList.add(new cc(kcVar.f3810c, kcVar.a(), textView3, wcVar, textView4, textView5));
                        i18 = 5;
                    }
                    r4.M1(R.id.masterAppsPageFlipper, 0, Arrays.copyOf(iArr, 3));
                    r4.o1();
                    r4.o1();
                    r3 = r4;
                    break;
                case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                    String str7 = "";
                    int[] iArr2 = {R.id.masterShortcutsBarNav, R.id.masterShortcutsWidgetsNav};
                    int i31 = 0;
                    int i32 = 0;
                    for (int i33 = 2; i31 < i33; i33 = 2) {
                        r4.findViewById(iArr2[i31]).setOnClickListener(new g9(i32, r4, iArr2, i6));
                        i31++;
                        i32++;
                    }
                    final SharedPreferences sharedPreferences = r4.getSharedPreferences("quick_access_prefs", 0);
                    float f3 = r4.getResources().getDisplayMetrics().density;
                    r4.findViewById(R.id.masterShortcutsBarEnabledRow).setOnClickListener(new y8(r4, i8));
                    ?? r7 = (GridLayout) r4.findViewById(R.id.masterShortcutsItemsGrid);
                    r7.removeAllViews();
                    LinkedHashMap linkedHashMap = r4.V;
                    linkedHashMap.clear();
                    Iterator it = QuickAccessFloaterService.f1131v0.iterator();
                    while (true) {
                        int[] iArr3 = iArr2;
                        float f4 = f3;
                        if (!it.hasNext()) {
                            j3 = jElapsedRealtime;
                            final int i34 = 0;
                            final int i35 = 1;
                            int[] iArr4 = iArr3;
                            String str8 = "getString(...)";
                            final int i36 = 1;
                            b2(r4, R.id.masterShortcutsIconSize, R.id.masterShortcutsIconSizeValue, 50, 300, new h2.a() { // from class: w0.sb
                                @Override // h2.a
                                public final Object a() {
                                    int i37;
                                    int i38 = i34;
                                    SharedPreferences sharedPreferences2 = sharedPreferences;
                                    switch (i38) {
                                        case 0:
                                            int i39 = MainActivity.f1002z1;
                                            i37 = sharedPreferences2.getInt("qa_icon_size_pct", 100);
                                            break;
                                        case 1:
                                            int i40 = MainActivity.f1002z1;
                                            i37 = sharedPreferences2.getInt("qa_panel_width_pct", 100);
                                            break;
                                        case 2:
                                            int i41 = MainActivity.f1002z1;
                                            i37 = sharedPreferences2.getInt("qa_panel_height_pct", 100);
                                            break;
                                        default:
                                            int i42 = MainActivity.f1002z1;
                                            i37 = sharedPreferences2.getInt("qa_tab_alpha", 90);
                                            break;
                                    }
                                    return Integer.valueOf(i37);
                                }
                            }, true, new l() { // from class: w0.pb
                                @Override // h2.l
                                public final Object c(Object obj) {
                                    switch (i35) {
                                        case 0:
                                            SharedPreferences sharedPreferences2 = sharedPreferences;
                                            int iIntValue = ((Integer) obj).intValue();
                                            int i37 = MainActivity.f1002z1;
                                            sharedPreferences2.edit().putInt("qa_tab_alpha", iIntValue).apply();
                                            int i38 = QuickAccessFloaterService.t0;
                                            QuickAccessFloaterService quickAccessFloaterService = QuickAccessFloaterService.x0;
                                            if (quickAccessFloaterService != null) {
                                                int iK = k1.a.k(iIntValue, 0, 100);
                                                quickAccessFloaterService.t().edit().putInt("qa_tab_alpha", iK).apply();
                                                quickAccessFloaterService.f1134a.post(new ue(iK, quickAccessFloaterService));
                                            }
                                            break;
                                        case 1:
                                            SharedPreferences sharedPreferences3 = sharedPreferences;
                                            int iIntValue2 = ((Integer) obj).intValue();
                                            int i39 = MainActivity.f1002z1;
                                            sharedPreferences3.edit().putInt("qa_icon_size_pct", iIntValue2).apply();
                                            int i40 = QuickAccessFloaterService.t0;
                                            QuickAccessFloaterService quickAccessFloaterService2 = QuickAccessFloaterService.x0;
                                            if (quickAccessFloaterService2 != null) {
                                                quickAccessFloaterService2.t().edit().putInt("qa_icon_size_pct", k1.a.k(iIntValue2, 50, 300)).apply();
                                                quickAccessFloaterService2.f1134a.post(new ve(1, quickAccessFloaterService2));
                                            }
                                            break;
                                        case 2:
                                            SharedPreferences sharedPreferences4 = sharedPreferences;
                                            int iIntValue3 = ((Integer) obj).intValue();
                                            int i41 = MainActivity.f1002z1;
                                            sharedPreferences4.edit().putInt("qa_panel_width_pct", iIntValue3).apply();
                                            int i42 = QuickAccessFloaterService.t0;
                                            QuickAccessFloaterService quickAccessFloaterService3 = QuickAccessFloaterService.x0;
                                            if (quickAccessFloaterService3 != null) {
                                                quickAccessFloaterService3.t().edit().putInt("qa_panel_width_pct", k1.a.k(iIntValue3, 50, 200)).apply();
                                                quickAccessFloaterService3.f1134a.post(new ve(2, quickAccessFloaterService3));
                                            }
                                            break;
                                        default:
                                            SharedPreferences sharedPreferences5 = sharedPreferences;
                                            int iIntValue4 = ((Integer) obj).intValue();
                                            int i43 = MainActivity.f1002z1;
                                            sharedPreferences5.edit().putInt("qa_panel_height_pct", iIntValue4).apply();
                                            int i44 = QuickAccessFloaterService.t0;
                                            QuickAccessFloaterService quickAccessFloaterService4 = QuickAccessFloaterService.x0;
                                            if (quickAccessFloaterService4 != null) {
                                                quickAccessFloaterService4.t().edit().putInt("qa_panel_height_pct", k1.a.k(iIntValue4, 50, 200)).apply();
                                                quickAccessFloaterService4.f1134a.post(new ve(3, quickAccessFloaterService4));
                                            }
                                            break;
                                    }
                                    return x1.e.f4647c;
                                }
                            });
                            h2.a aVar = new h2.a() { // from class: w0.sb
                                @Override // h2.a
                                public final Object a() {
                                    int i37;
                                    int i38 = i36;
                                    SharedPreferences sharedPreferences2 = sharedPreferences;
                                    switch (i38) {
                                        case 0:
                                            int i39 = MainActivity.f1002z1;
                                            i37 = sharedPreferences2.getInt("qa_icon_size_pct", 100);
                                            break;
                                        case 1:
                                            int i40 = MainActivity.f1002z1;
                                            i37 = sharedPreferences2.getInt("qa_panel_width_pct", 100);
                                            break;
                                        case 2:
                                            int i41 = MainActivity.f1002z1;
                                            i37 = sharedPreferences2.getInt("qa_panel_height_pct", 100);
                                            break;
                                        default:
                                            int i42 = MainActivity.f1002z1;
                                            i37 = sharedPreferences2.getInt("qa_tab_alpha", 90);
                                            break;
                                    }
                                    return Integer.valueOf(i37);
                                }
                            };
                            final int i37 = 2;
                            l lVar = new l() { // from class: w0.pb
                                @Override // h2.l
                                public final Object c(Object obj) {
                                    switch (i37) {
                                        case 0:
                                            SharedPreferences sharedPreferences2 = sharedPreferences;
                                            int iIntValue = ((Integer) obj).intValue();
                                            int i38 = MainActivity.f1002z1;
                                            sharedPreferences2.edit().putInt("qa_tab_alpha", iIntValue).apply();
                                            int i39 = QuickAccessFloaterService.t0;
                                            QuickAccessFloaterService quickAccessFloaterService = QuickAccessFloaterService.x0;
                                            if (quickAccessFloaterService != null) {
                                                int iK = k1.a.k(iIntValue, 0, 100);
                                                quickAccessFloaterService.t().edit().putInt("qa_tab_alpha", iK).apply();
                                                quickAccessFloaterService.f1134a.post(new ue(iK, quickAccessFloaterService));
                                            }
                                            break;
                                        case 1:
                                            SharedPreferences sharedPreferences3 = sharedPreferences;
                                            int iIntValue2 = ((Integer) obj).intValue();
                                            int i310 = MainActivity.f1002z1;
                                            sharedPreferences3.edit().putInt("qa_icon_size_pct", iIntValue2).apply();
                                            int i40 = QuickAccessFloaterService.t0;
                                            QuickAccessFloaterService quickAccessFloaterService2 = QuickAccessFloaterService.x0;
                                            if (quickAccessFloaterService2 != null) {
                                                quickAccessFloaterService2.t().edit().putInt("qa_icon_size_pct", k1.a.k(iIntValue2, 50, 300)).apply();
                                                quickAccessFloaterService2.f1134a.post(new ve(1, quickAccessFloaterService2));
                                            }
                                            break;
                                        case 2:
                                            SharedPreferences sharedPreferences4 = sharedPreferences;
                                            int iIntValue3 = ((Integer) obj).intValue();
                                            int i41 = MainActivity.f1002z1;
                                            sharedPreferences4.edit().putInt("qa_panel_width_pct", iIntValue3).apply();
                                            int i42 = QuickAccessFloaterService.t0;
                                            QuickAccessFloaterService quickAccessFloaterService3 = QuickAccessFloaterService.x0;
                                            if (quickAccessFloaterService3 != null) {
                                                quickAccessFloaterService3.t().edit().putInt("qa_panel_width_pct", k1.a.k(iIntValue3, 50, 200)).apply();
                                                quickAccessFloaterService3.f1134a.post(new ve(2, quickAccessFloaterService3));
                                            }
                                            break;
                                        default:
                                            SharedPreferences sharedPreferences5 = sharedPreferences;
                                            int iIntValue4 = ((Integer) obj).intValue();
                                            int i43 = MainActivity.f1002z1;
                                            sharedPreferences5.edit().putInt("qa_panel_height_pct", iIntValue4).apply();
                                            int i44 = QuickAccessFloaterService.t0;
                                            QuickAccessFloaterService quickAccessFloaterService4 = QuickAccessFloaterService.x0;
                                            if (quickAccessFloaterService4 != null) {
                                                quickAccessFloaterService4.t().edit().putInt("qa_panel_height_pct", k1.a.k(iIntValue4, 50, 200)).apply();
                                                quickAccessFloaterService4.f1134a.post(new ve(3, quickAccessFloaterService4));
                                            }
                                            break;
                                    }
                                    return x1.e.f4647c;
                                }
                            };
                            MainActivity mainActivity2 = this;
                            b2(mainActivity2, R.id.masterShortcutsHandleWidth, R.id.masterShortcutsHandleWidthValue, 50, 200, aVar, true, lVar);
                            final int i38 = 3;
                            b2(mainActivity2, R.id.masterShortcutsHandleHeight, R.id.masterShortcutsHandleHeightValue, 50, 200, new h2.a() { // from class: w0.sb
                                @Override // h2.a
                                public final Object a() {
                                    int i39;
                                    int i310 = i37;
                                    SharedPreferences sharedPreferences2 = sharedPreferences;
                                    switch (i310) {
                                        case 0:
                                            int i311 = MainActivity.f1002z1;
                                            i39 = sharedPreferences2.getInt("qa_icon_size_pct", 100);
                                            break;
                                        case 1:
                                            int i40 = MainActivity.f1002z1;
                                            i39 = sharedPreferences2.getInt("qa_panel_width_pct", 100);
                                            break;
                                        case 2:
                                            int i41 = MainActivity.f1002z1;
                                            i39 = sharedPreferences2.getInt("qa_panel_height_pct", 100);
                                            break;
                                        default:
                                            int i42 = MainActivity.f1002z1;
                                            i39 = sharedPreferences2.getInt("qa_tab_alpha", 90);
                                            break;
                                    }
                                    return Integer.valueOf(i39);
                                }
                            }, true, new l() { // from class: w0.pb
                                @Override // h2.l
                                public final Object c(Object obj) {
                                    switch (i38) {
                                        case 0:
                                            SharedPreferences sharedPreferences2 = sharedPreferences;
                                            int iIntValue = ((Integer) obj).intValue();
                                            int i39 = MainActivity.f1002z1;
                                            sharedPreferences2.edit().putInt("qa_tab_alpha", iIntValue).apply();
                                            int i310 = QuickAccessFloaterService.t0;
                                            QuickAccessFloaterService quickAccessFloaterService = QuickAccessFloaterService.x0;
                                            if (quickAccessFloaterService != null) {
                                                int iK = k1.a.k(iIntValue, 0, 100);
                                                quickAccessFloaterService.t().edit().putInt("qa_tab_alpha", iK).apply();
                                                quickAccessFloaterService.f1134a.post(new ue(iK, quickAccessFloaterService));
                                            }
                                            break;
                                        case 1:
                                            SharedPreferences sharedPreferences3 = sharedPreferences;
                                            int iIntValue2 = ((Integer) obj).intValue();
                                            int i311 = MainActivity.f1002z1;
                                            sharedPreferences3.edit().putInt("qa_icon_size_pct", iIntValue2).apply();
                                            int i40 = QuickAccessFloaterService.t0;
                                            QuickAccessFloaterService quickAccessFloaterService2 = QuickAccessFloaterService.x0;
                                            if (quickAccessFloaterService2 != null) {
                                                quickAccessFloaterService2.t().edit().putInt("qa_icon_size_pct", k1.a.k(iIntValue2, 50, 300)).apply();
                                                quickAccessFloaterService2.f1134a.post(new ve(1, quickAccessFloaterService2));
                                            }
                                            break;
                                        case 2:
                                            SharedPreferences sharedPreferences4 = sharedPreferences;
                                            int iIntValue3 = ((Integer) obj).intValue();
                                            int i41 = MainActivity.f1002z1;
                                            sharedPreferences4.edit().putInt("qa_panel_width_pct", iIntValue3).apply();
                                            int i42 = QuickAccessFloaterService.t0;
                                            QuickAccessFloaterService quickAccessFloaterService3 = QuickAccessFloaterService.x0;
                                            if (quickAccessFloaterService3 != null) {
                                                quickAccessFloaterService3.t().edit().putInt("qa_panel_width_pct", k1.a.k(iIntValue3, 50, 200)).apply();
                                                quickAccessFloaterService3.f1134a.post(new ve(2, quickAccessFloaterService3));
                                            }
                                            break;
                                        default:
                                            SharedPreferences sharedPreferences5 = sharedPreferences;
                                            int iIntValue4 = ((Integer) obj).intValue();
                                            int i43 = MainActivity.f1002z1;
                                            sharedPreferences5.edit().putInt("qa_panel_height_pct", iIntValue4).apply();
                                            int i44 = QuickAccessFloaterService.t0;
                                            QuickAccessFloaterService quickAccessFloaterService4 = QuickAccessFloaterService.x0;
                                            if (quickAccessFloaterService4 != null) {
                                                quickAccessFloaterService4.t().edit().putInt("qa_panel_height_pct", k1.a.k(iIntValue4, 50, 200)).apply();
                                                quickAccessFloaterService4.f1134a.post(new ve(3, quickAccessFloaterService4));
                                            }
                                            break;
                                    }
                                    return x1.e.f4647c;
                                }
                            });
                            final int i39 = 0;
                            b2(mainActivity2, R.id.masterShortcutsOpacity, R.id.masterShortcutsOpacityValue, 0, 100, new h2.a() { // from class: w0.sb
                                @Override // h2.a
                                public final Object a() {
                                    int i310;
                                    int i311 = i38;
                                    SharedPreferences sharedPreferences2 = sharedPreferences;
                                    switch (i311) {
                                        case 0:
                                            int i312 = MainActivity.f1002z1;
                                            i310 = sharedPreferences2.getInt("qa_icon_size_pct", 100);
                                            break;
                                        case 1:
                                            int i40 = MainActivity.f1002z1;
                                            i310 = sharedPreferences2.getInt("qa_panel_width_pct", 100);
                                            break;
                                        case 2:
                                            int i41 = MainActivity.f1002z1;
                                            i310 = sharedPreferences2.getInt("qa_panel_height_pct", 100);
                                            break;
                                        default:
                                            int i42 = MainActivity.f1002z1;
                                            i310 = sharedPreferences2.getInt("qa_tab_alpha", 90);
                                            break;
                                    }
                                    return Integer.valueOf(i310);
                                }
                            }, true, new l() { // from class: w0.pb
                                @Override // h2.l
                                public final Object c(Object obj) {
                                    switch (i39) {
                                        case 0:
                                            SharedPreferences sharedPreferences2 = sharedPreferences;
                                            int iIntValue = ((Integer) obj).intValue();
                                            int i310 = MainActivity.f1002z1;
                                            sharedPreferences2.edit().putInt("qa_tab_alpha", iIntValue).apply();
                                            int i311 = QuickAccessFloaterService.t0;
                                            QuickAccessFloaterService quickAccessFloaterService = QuickAccessFloaterService.x0;
                                            if (quickAccessFloaterService != null) {
                                                int iK = k1.a.k(iIntValue, 0, 100);
                                                quickAccessFloaterService.t().edit().putInt("qa_tab_alpha", iK).apply();
                                                quickAccessFloaterService.f1134a.post(new ue(iK, quickAccessFloaterService));
                                            }
                                            break;
                                        case 1:
                                            SharedPreferences sharedPreferences3 = sharedPreferences;
                                            int iIntValue2 = ((Integer) obj).intValue();
                                            int i312 = MainActivity.f1002z1;
                                            sharedPreferences3.edit().putInt("qa_icon_size_pct", iIntValue2).apply();
                                            int i40 = QuickAccessFloaterService.t0;
                                            QuickAccessFloaterService quickAccessFloaterService2 = QuickAccessFloaterService.x0;
                                            if (quickAccessFloaterService2 != null) {
                                                quickAccessFloaterService2.t().edit().putInt("qa_icon_size_pct", k1.a.k(iIntValue2, 50, 300)).apply();
                                                quickAccessFloaterService2.f1134a.post(new ve(1, quickAccessFloaterService2));
                                            }
                                            break;
                                        case 2:
                                            SharedPreferences sharedPreferences4 = sharedPreferences;
                                            int iIntValue3 = ((Integer) obj).intValue();
                                            int i41 = MainActivity.f1002z1;
                                            sharedPreferences4.edit().putInt("qa_panel_width_pct", iIntValue3).apply();
                                            int i42 = QuickAccessFloaterService.t0;
                                            QuickAccessFloaterService quickAccessFloaterService3 = QuickAccessFloaterService.x0;
                                            if (quickAccessFloaterService3 != null) {
                                                quickAccessFloaterService3.t().edit().putInt("qa_panel_width_pct", k1.a.k(iIntValue3, 50, 200)).apply();
                                                quickAccessFloaterService3.f1134a.post(new ve(2, quickAccessFloaterService3));
                                            }
                                            break;
                                        default:
                                            SharedPreferences sharedPreferences5 = sharedPreferences;
                                            int iIntValue4 = ((Integer) obj).intValue();
                                            int i43 = MainActivity.f1002z1;
                                            sharedPreferences5.edit().putInt("qa_panel_height_pct", iIntValue4).apply();
                                            int i44 = QuickAccessFloaterService.t0;
                                            QuickAccessFloaterService quickAccessFloaterService4 = QuickAccessFloaterService.x0;
                                            if (quickAccessFloaterService4 != null) {
                                                quickAccessFloaterService4.t().edit().putInt("qa_panel_height_pct", k1.a.k(iIntValue4, 50, 200)).apply();
                                                quickAccessFloaterService4.f1134a.post(new ve(3, quickAccessFloaterService4));
                                            }
                                            break;
                                    }
                                    return x1.e.f4647c;
                                }
                            });
                            String string2 = mainActivity2.getString(R.string.k_widget_float_drive_regen_title);
                            g.d(string2, str8);
                            ec ecVar = new ec(string2, "widget_float_drive_regen_enabled", "widget_float_drive_regen_pinned", "widget_float_drive_regen_size_pct", "widget_float_drive_regen_alpha_pct", "drive_regen");
                            String string3 = mainActivity2.getString(R.string.k_widget_float_fan_title);
                            g.d(string3, str8);
                            ec ecVar2 = new ec(string3, "widget_float_fan_enabled", "widget_float_fan_pinned", "widget_float_fan_size_pct", "widget_float_fan_alpha_pct", "fan");
                            String string4 = mainActivity2.getString(R.string.k_widget_float_temp_title);
                            g.d(string4, str8);
                            ec ecVar3 = new ec(string4, "widget_float_temp_enabled", "widget_float_temp_pinned", "widget_float_temp_size_pct", "widget_float_temp_alpha_pct", "temp");
                            String string5 = mainActivity2.getString(R.string.k_widget_float_vent_title);
                            g.d(string5, str8);
                            ec ecVar4 = new ec(string5, "widget_float_vent_enabled", "widget_float_vent_pinned", "widget_float_vent_size_pct", "widget_float_vent_alpha_pct", "vent");
                            String string6 = mainActivity2.getString(R.string.k_widget_float_vent_fan_title);
                            g.d(string6, str8);
                            ec ecVar5 = new ec(string6, "widget_float_vent_fan_enabled", "widget_float_vent_fan_pinned", "widget_float_vent_fan_size_pct", "widget_float_vent_fan_alpha_pct", "vent_fan");
                            String string7 = mainActivity2.getString(R.string.k_widget_float_sysinfo_title);
                            g.d(string7, str8);
                            ec ecVar6 = new ec(string7, "widget_float_sysinfo_enabled", "widget_float_sysinfo_pinned", "widget_float_sysinfo_size_pct", "widget_float_sysinfo_alpha_pct", "sysinfo");
                            String string8 = mainActivity2.getString(R.string.k_widget_apps_title);
                            g.d(string8, str8);
                            ec ecVar7 = new ec(string8, "widget_float_apps_enabled", "widget_float_apps_pinned", "widget_float_apps_size_pct", "widget_float_apps_alpha_pct", "apps");
                            String string9 = mainActivity2.getString(R.string.k_widget_volume_title);
                            g.d(string9, str8);
                            ec ecVar8 = new ec(string9, "widget_float_volume_enabled", "widget_float_volume_pinned", "widget_float_volume_size_pct", "widget_float_volume_alpha_pct", "volume");
                            String string10 = mainActivity2.getString(R.string.k_widget_float_heating_title);
                            g.d(string10, str8);
                            List<ec> listU2 = f.U(new ec[]{ecVar, ecVar2, ecVar3, ecVar4, ecVar5, ecVar6, ecVar7, ecVar8, new ec(string10, "widget_float_heating_enabled", "widget_float_heating_pinned", "widget_float_heating_size_pct", "widget_float_heating_alpha_pct", "heating")});
                            GridLayout gridLayout = (GridLayout) mainActivity2.findViewById(R.id.masterWidgetsGrid);
                            gridLayout.removeAllViews();
                            LinkedHashMap linkedHashMap2 = mainActivity2.W;
                            linkedHashMap2.clear();
                            LinkedHashMap linkedHashMap3 = mainActivity2.X;
                            linkedHashMap3.clear();
                            ArrayList arrayList2 = mainActivity2.Y;
                            arrayList2.clear();
                            final MainActivity mainActivity3 = mainActivity2;
                            ?? r13 = gridLayout;
                            for (final ec ecVar9 : listU2) {
                                ?? linearLayout5 = new LinearLayout(mainActivity3);
                                linearLayout5.setOrientation(i36);
                                int i40 = (int) (16 * f4);
                                LinkedHashMap linkedHashMap4 = linkedHashMap3;
                                int i41 = (int) (14 * f4);
                                linearLayout5.setPadding(i40, i41, i40, i41);
                                linearLayout5.setBackgroundResource(R.drawable.bg_master_inner_card);
                                LinearLayout linearLayout6 = new LinearLayout(mainActivity3);
                                linearLayout6.setOrientation(0);
                                linearLayout6.setGravity(16);
                                linearLayout6.setMinimumHeight((int) (44 * f4));
                                TextView textView6 = new TextView(mainActivity3);
                                String str9 = ecVar9.f3540a;
                                String str10 = ecVar9.b;
                                String str11 = ecVar9.f3543e;
                                LinkedHashMap linkedHashMap5 = linkedHashMap2;
                                String str12 = ecVar9.f3542d;
                                String str13 = str4;
                                String str14 = ecVar9.f;
                                textView6.setText(str9);
                                textView6.setTextSize(15.0f);
                                textView6.setMaxLines(2);
                                textView6.setLineSpacing(0.0f, 0.92f);
                                textView6.setTypeface(null, 1);
                                textView6.setTextColor(mainActivity3.getColor(R.color.master_text));
                                int[] iArr5 = iArr4;
                                List list = listU2;
                                final int i42 = 0;
                                linearLayout6.addView(textView6, new LinearLayout.LayoutParams(0, -2, 1.0f));
                                String string11 = mainActivity3.getString(R.string.master_widget_pin);
                                g.d(string11, str8);
                                final TextView textViewC2 = c2(mainActivity3, string11);
                                e2(textViewC2, mainActivity3, ecVar9);
                                textViewC2.setOnClickListener(new View.OnClickListener(mainActivity3) { // from class: w0.qb
                                    public final /* synthetic */ MainActivity b;

                                    {
                                        this.b = mainActivity3;
                                    }

                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        int i43 = i42;
                                        int i44 = 1;
                                        TextView textView7 = textViewC2;
                                        ec ecVar10 = ecVar9;
                                        MainActivity mainActivity4 = this.b;
                                        switch (i43) {
                                            case 0:
                                                int i45 = MainActivity.f1002z1;
                                                SharedPreferences.Editor editorEdit = mainActivity4.o0().edit();
                                                String str15 = ecVar10.f3541c;
                                                editorEdit.putBoolean(str15, true ^ mainActivity4.o0().getBoolean(str15, false)).apply();
                                                MainActivity.e2(textView7, mainActivity4, ecVar10);
                                                List list2 = HomeFloatingWidgetsService.f926a0;
                                                t1.z(mainActivity4);
                                                break;
                                            default:
                                                int i46 = MainActivity.f1002z1;
                                                int iK = k1.a.k(mainActivity4.o0().getInt("widget_apps_rows", 2), 1, 6);
                                                int iK2 = k1.a.k(mainActivity4.o0().getInt("widget_apps_cols", 3), 1, 6);
                                                int i47 = iK2 < 4 ? iK2 + 1 : 2;
                                                if (iK2 < 4) {
                                                    i44 = iK;
                                                } else if (iK < 3) {
                                                    i44 = iK + 1;
                                                }
                                                mainActivity4.o0().edit().putInt("widget_apps_rows", i44).putInt("widget_apps_cols", i47).apply();
                                                MainActivity.d2(textView7, mainActivity4);
                                                List list3 = HomeFloatingWidgetsService.f926a0;
                                                t1.z(mainActivity4);
                                                t1.U(ecVar10.f);
                                                break;
                                        }
                                    }
                                });
                                ?? r32 = r13;
                                int i43 = (int) (32 * f4);
                                LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams((int) (66 * f4), i43);
                                int i44 = (int) (8 * f4);
                                layoutParams5.setMarginEnd(i44);
                                linearLayout6.addView(textViewC2, layoutParams5);
                                MasterToggleView masterToggleView = new MasterToggleView(mainActivity3, null);
                                linearLayout6.addView(masterToggleView, new LinearLayout.LayoutParams((int) (56 * f4), i43));
                                linearLayout5.addView(linearLayout6);
                                bd bdVar = new bd(mainActivity3);
                                bdVar.setWidgetKey(str14);
                                bdVar.setSizePercent(mainActivity3.o0().getInt(str12, 100));
                                bdVar.setBackgroundPercent(mainActivity3.o0().getInt(str11, 100));
                                bdVar.setGlobalBackgroundPercent(mainActivity3.o0().getInt("widget_bg_opacity_pct", 100));
                                arrayList2.add(bdVar);
                                LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-1, (int) (110 * f4));
                                layoutParams6.topMargin = i44;
                                linearLayout5.addView(bdVar, layoutParams6);
                                if (str14.equals("apps")) {
                                    LinearLayout linearLayout7 = new LinearLayout(mainActivity3);
                                    linearLayout7.setOrientation(0);
                                    linearLayout7.setGravity(16);
                                    String string12 = mainActivity3.getString(R.string.master_widget_manage);
                                    g.d(string12, str8);
                                    TextView textViewC3 = c2(mainActivity3, string12);
                                    textViewC3.setBackgroundResource(R.drawable.bg_master_state_inactive);
                                    textViewC3.setOnClickListener(new y8(mainActivity3, 23));
                                    int i45 = (int) (38 * f4);
                                    LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(0, i45, 1.0f);
                                    layoutParams7.setMarginEnd(i44);
                                    linearLayout7.addView(textViewC3, layoutParams7);
                                    final TextView textViewC4 = c2(mainActivity3, str7);
                                    textViewC4.setBackgroundResource(R.drawable.bg_master_state_inactive);
                                    d2(textViewC4, mainActivity3);
                                    final int i46 = 1;
                                    textViewC4.setOnClickListener(new View.OnClickListener(mainActivity3) { // from class: w0.qb
                                        public final /* synthetic */ MainActivity b;

                                        {
                                            this.b = mainActivity3;
                                        }

                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            int i47 = i46;
                                            int i48 = 1;
                                            TextView textView7 = textViewC4;
                                            ec ecVar10 = ecVar9;
                                            MainActivity mainActivity4 = this.b;
                                            switch (i47) {
                                                case 0:
                                                    int i49 = MainActivity.f1002z1;
                                                    SharedPreferences.Editor editorEdit = mainActivity4.o0().edit();
                                                    String str15 = ecVar10.f3541c;
                                                    editorEdit.putBoolean(str15, true ^ mainActivity4.o0().getBoolean(str15, false)).apply();
                                                    MainActivity.e2(textView7, mainActivity4, ecVar10);
                                                    List list2 = HomeFloatingWidgetsService.f926a0;
                                                    t1.z(mainActivity4);
                                                    break;
                                                default:
                                                    int i410 = MainActivity.f1002z1;
                                                    int iK = k1.a.k(mainActivity4.o0().getInt("widget_apps_rows", 2), 1, 6);
                                                    int iK2 = k1.a.k(mainActivity4.o0().getInt("widget_apps_cols", 3), 1, 6);
                                                    int i411 = iK2 < 4 ? iK2 + 1 : 2;
                                                    if (iK2 < 4) {
                                                        i48 = iK;
                                                    } else if (iK < 3) {
                                                        i48 = iK + 1;
                                                    }
                                                    mainActivity4.o0().edit().putInt("widget_apps_rows", i48).putInt("widget_apps_cols", i411).apply();
                                                    MainActivity.d2(textView7, mainActivity4);
                                                    List list3 = HomeFloatingWidgetsService.f926a0;
                                                    t1.z(mainActivity4);
                                                    t1.U(ecVar10.f);
                                                    break;
                                            }
                                        }
                                    });
                                    linearLayout7.addView(textViewC4, new LinearLayout.LayoutParams((int) (74 * f4), i45));
                                    LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(-1, -2);
                                    layoutParams8.topMargin = i44;
                                    linearLayout5.addView(linearLayout7, layoutParams8);
                                }
                                if (str14.equals("heating")) {
                                    String string13 = mainActivity3.getString(R.string.master_widget_manage);
                                    g.d(string13, str8);
                                    TextView textViewC5 = c2(mainActivity3, string13);
                                    textViewC5.setBackgroundResource(R.drawable.bg_master_state_inactive);
                                    textViewC5.setOnClickListener(new y8(mainActivity3, 24));
                                    LinearLayout.LayoutParams layoutParams9 = new LinearLayout.LayoutParams(-1, (int) (38 * f4));
                                    layoutParams9.topMargin = i44;
                                    linearLayout5.addView(textViewC5, layoutParams9);
                                }
                                if (str14.equals("volume")) {
                                    LinearLayout linearLayout8 = new LinearLayout(mainActivity3);
                                    linearLayout8.setOrientation(0);
                                    final TextView textViewC6 = c2(mainActivity3, str7);
                                    final TextView textViewC7 = c2(mainActivity3, str7);
                                    r11 = linearLayout5;
                                    final int i47 = 0;
                                    str2 = str7;
                                    textViewC6.setOnClickListener(new View.OnClickListener(mainActivity3) { // from class: w0.rb
                                        public final /* synthetic */ MainActivity b;

                                        {
                                            this.b = mainActivity3;
                                        }

                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            int i48 = i47;
                                            TextView textView7 = textViewC7;
                                            TextView textView8 = textViewC6;
                                            ec ecVar10 = ecVar9;
                                            MainActivity mainActivity4 = this.b;
                                            switch (i48) {
                                                case 0:
                                                    int i49 = MainActivity.f1002z1;
                                                    mainActivity4.o0().edit().putBoolean("widget_volume_vertical", !mainActivity4.o0().getBoolean("widget_volume_vertical", false)).apply();
                                                    MainActivity.f2(mainActivity4, textView8, textView7);
                                                    List list2 = HomeFloatingWidgetsService.f926a0;
                                                    t1.U(ecVar10.f);
                                                    break;
                                                default:
                                                    int i50 = MainActivity.f1002z1;
                                                    mainActivity4.o0().edit().putBoolean("widget_volume_signs", !mainActivity4.o0().getBoolean("widget_volume_signs", false)).apply();
                                                    MainActivity.f2(mainActivity4, textView8, textView7);
                                                    List list3 = HomeFloatingWidgetsService.f926a0;
                                                    t1.U(ecVar10.f);
                                                    break;
                                            }
                                        }
                                    });
                                    final int i48 = 1;
                                    mainActivity3 = this;
                                    textViewC7.setOnClickListener(new View.OnClickListener(mainActivity3) { // from class: w0.rb
                                        public final /* synthetic */ MainActivity b;

                                        {
                                            this.b = mainActivity3;
                                        }

                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            int i49 = i48;
                                            TextView textView7 = textViewC7;
                                            TextView textView8 = textViewC6;
                                            ec ecVar10 = ecVar9;
                                            MainActivity mainActivity4 = this.b;
                                            switch (i49) {
                                                case 0:
                                                    int i410 = MainActivity.f1002z1;
                                                    mainActivity4.o0().edit().putBoolean("widget_volume_vertical", !mainActivity4.o0().getBoolean("widget_volume_vertical", false)).apply();
                                                    MainActivity.f2(mainActivity4, textView8, textView7);
                                                    List list2 = HomeFloatingWidgetsService.f926a0;
                                                    t1.U(ecVar10.f);
                                                    break;
                                                default:
                                                    int i50 = MainActivity.f1002z1;
                                                    mainActivity4.o0().edit().putBoolean("widget_volume_signs", !mainActivity4.o0().getBoolean("widget_volume_signs", false)).apply();
                                                    MainActivity.f2(mainActivity4, textView8, textView7);
                                                    List list3 = HomeFloatingWidgetsService.f926a0;
                                                    t1.U(ecVar10.f);
                                                    break;
                                            }
                                        }
                                    });
                                    f2(mainActivity3, textViewC6, textViewC7);
                                    int i49 = (int) (38 * f4);
                                    i5 = 0;
                                    LinearLayout.LayoutParams layoutParams10 = new LinearLayout.LayoutParams(0, i49, 1.0f);
                                    c3 = 4;
                                    int i50 = (int) (4 * f4);
                                    layoutParams10.setMarginEnd(i50);
                                    linearLayout8.addView(textViewC6, layoutParams10);
                                    LinearLayout.LayoutParams layoutParams11 = new LinearLayout.LayoutParams(0, i49, 1.0f);
                                    layoutParams11.setMarginStart(i50);
                                    linearLayout8.addView(textViewC7, layoutParams11);
                                    LinearLayout.LayoutParams layoutParams12 = new LinearLayout.LayoutParams(-1, -2);
                                    layoutParams12.topMargin = i44;
                                    r11.addView(linearLayout8, layoutParams12);
                                } else {
                                    str2 = str7;
                                    r11 = linearLayout5;
                                    c3 = 4;
                                    i5 = 0;
                                }
                                LinearLayout linearLayout9 = new LinearLayout(mainActivity3);
                                linearLayout9.setOrientation(i5);
                                linearLayout9.setGravity(16);
                                linearLayout9.setPadding(i5, i44, i5, i5);
                                String string14 = mainActivity3.getString(R.string.master_size);
                                g.d(string14, str8);
                                float f5 = f4;
                                a aVarG2 = g2(mainActivity3, ecVar9, bdVar, f5, string14, str12, 50, 200);
                                LinearLayout linearLayout10 = (LinearLayout) aVarG2.f4641a;
                                SeekBar seekBar = (SeekBar) aVarG2.b;
                                String string15 = mainActivity3.getString(R.string.master_transparency);
                                g.d(string15, str8);
                                a aVarG3 = g2(mainActivity3, ecVar9, bdVar, f5, string15, str11, 0, 100);
                                LinearLayout linearLayout11 = (LinearLayout) aVarG3.f4641a;
                                SeekBar seekBar2 = (SeekBar) aVarG3.b;
                                LinearLayout.LayoutParams layoutParams13 = new LinearLayout.LayoutParams(0, -2, 1.0f);
                                int i51 = (int) (6 * f5);
                                layoutParams13.setMarginEnd(i51);
                                linearLayout9.addView(linearLayout10, layoutParams13);
                                LinearLayout.LayoutParams layoutParams14 = new LinearLayout.LayoutParams(0, -2, 1.0f);
                                layoutParams14.setMarginStart(i51);
                                linearLayout9.addView(linearLayout11, layoutParams14);
                                r11.addView(linearLayout9);
                                a0 a0Var = new a0(mainActivity3, 5, ecVar9);
                                textView6.setOnClickListener(a0Var);
                                masterToggleView.setOnClickListener(a0Var);
                                linkedHashMap5.put(str10, masterToggleView);
                                linkedHashMap4.put(str10, new a(seekBar, seekBar2));
                                GridLayout.LayoutParams layoutParams15 = new GridLayout.LayoutParams();
                                layoutParams15.width = 0;
                                layoutParams15.height = -2;
                                layoutParams15.columnSpec = GridLayout.spec(Integer.MIN_VALUE, 1.0f);
                                int i52 = (int) (5 * f5);
                                layoutParams15.setMargins(i52, i52, i52, i52);
                                r32.addView(r11, layoutParams15);
                                linkedHashMap3 = linkedHashMap4;
                                linkedHashMap2 = linkedHashMap5;
                                str8 = str8;
                                str4 = str13;
                                iArr4 = iArr5;
                                listU2 = list;
                                str7 = str2;
                                arrayList2 = arrayList2;
                                i36 = 1;
                                r13 = r32;
                                f4 = f5;
                                mainActivity3 = mainActivity3;
                            }
                            str = str4;
                            mainActivity3.findViewById(R.id.masterWidgetsEnabledRow).setOnClickListener(new a0(listU2, 6, mainActivity3));
                            mainActivity3.findViewById(R.id.masterWidgetsLockRow).setOnClickListener(new y8(mainActivity3, 25));
                            int i53 = 21;
                            b2(mainActivity3, R.id.masterWidgetsBackground, R.id.masterWidgetsBackgroundValue, 0, 100, new h9(mainActivity3, i53), false, new e9(mainActivity3, i53));
                            mainActivity3.findViewById(R.id.masterShortcutsBarHelp).setOnClickListener(new y8(mainActivity3, 27));
                            mainActivity3.findViewById(R.id.masterShortcutsWidgetsHelp).setOnClickListener(new y8(mainActivity3, 28));
                            mainActivity3.M1(R.id.masterShortcutsPageFlipper, 0, Arrays.copyOf(iArr4, 2));
                            mainActivity3.u1();
                            mainActivity3.u1();
                            r3 = mainActivity3;
                        } else {
                            String str15 = (String) it.next();
                            LinearLayout linearLayout12 = new LinearLayout(r4);
                            linearLayout12.setOrientation(0);
                            linearLayout12.setGravity(16);
                            int i54 = (int) (14 * f4);
                            linearLayout12.setPadding(i54, 0, i54, 0);
                            linearLayout12.setBackgroundResource(R.drawable.bg_master_inner_card);
                            linearLayout12.setClickable(true);
                            linearLayout12.setFocusable(true);
                            sf sfVar = new sf(r4);
                            sfVar.setIconId(str15);
                            int i55 = (int) (17 * f4);
                            sfVar.setPadding(i55, i55, i55, i55);
                            Iterator it2 = it;
                            int i56 = (int) (66 * f4);
                            linearLayout12.addView(sfVar, new LinearLayout.LayoutParams(i56, -1));
                            TextView textView7 = new TextView(r4);
                            int i57 = QuickAccessFloaterService.t0;
                            textView7.setText(e8.C(r4, str15));
                            textView7.setTextSize(17.0f);
                            textView7.setMaxLines(1);
                            textView7.setEllipsize(TextUtils.TruncateAt.END);
                            textView7.setTextColor(r4.getColor(R.color.master_text));
                            linearLayout12.addView(textView7, new LinearLayout.LayoutParams(0, -2, 1.0f));
                            MasterToggleView masterToggleView2 = new MasterToggleView(r4, null);
                            linearLayout12.addView(masterToggleView2, new LinearLayout.LayoutParams((int) (56 * f4), (int) (32 * f4)));
                            linkedHashMap.put(str15, masterToggleView2);
                            y6 y6Var = new y6(str15, sharedPreferences, r4, 5);
                            linearLayout12.setOnClickListener(y6Var);
                            masterToggleView2.setOnClickListener(y6Var);
                            GridLayout.LayoutParams layoutParams16 = new GridLayout.LayoutParams();
                            layoutParams16.width = 0;
                            layoutParams16.height = i56;
                            layoutParams16.columnSpec = GridLayout.spec(Integer.MIN_VALUE, 1.0f);
                            int i58 = (int) (5 * f4);
                            layoutParams16.setMargins(i58, i58, i58, i58);
                            r7.addView(linearLayout12, layoutParams16);
                            iArr2 = iArr3;
                            it = it2;
                            f3 = f4;
                            jElapsedRealtime = jElapsedRealtime;
                        }
                        break;
                    }
                    break;
                case MusicClient.TYPE_GESTURE /* 6 */:
                    r4.findViewById(R.id.masterConfigThemeLight).setOnClickListener(new y8(r4, i6));
                    r4.findViewById(R.id.masterConfigThemeDark).setOnClickListener(new y8(r4, 7));
                    r4.findViewById(R.id.masterConfigThemeAuto).setOnClickListener(new y8(r4, i12));
                    r4.findViewById(R.id.masterConfigLanguageRow).setOnClickListener(new y8(r4, i7));
                    for (Map.Entry entry3 : s.X(new a(Integer.valueOf(R.id.masterConfigRestOff), new v8(r4, i11)), new a(Integer.valueOf(R.id.masterConfigRest10), new v8(r4, i10)), new a(Integer.valueOf(R.id.masterConfigRest30), new v8(r4, i9)), new a(Integer.valueOf(R.id.masterConfigRest60), new v8(r4, i13)), new a(Integer.valueOf(R.id.masterConfigRest120), new v8(r4, i8)), new a(Integer.valueOf(R.id.masterConfigCheckUpdates), new v8(r4, 27)), new a(Integer.valueOf(R.id.masterConfigWorkshop), new v8(r4, 18)), new a(Integer.valueOf(R.id.masterConfigWorkshopRestore), new v8(r4, 19)), new a(Integer.valueOf(R.id.masterConfigShowLog), new v8(r4, 20)), new a(Integer.valueOf(R.id.masterConfigRestart), new v8(r4, 21))).entrySet()) {
                        r4.findViewById(((Number) entry3.getKey()).intValue()).setOnClickListener(new d9((h2.a) entry3.getValue(), r4, 0));
                    }
                    int i59 = 25;
                    int i60 = 3;
                    int i61 = 2;
                    MainActivity mainActivity4 = this;
                    F0(mainActivity4, R.id.masterConfigAutoUpdateRow, "auto_update_enabled", true, new pc(0, this, MainActivity.class, "refreshMasterConfigState", "refreshMasterConfigState()V", 5), null, 16);
                    Locale locale = mainActivity4.getResources().getConfiguration().getLocales().get(0);
                    if (locale == null || (language = locale.getLanguage()) == null) {
                        language = "";
                    }
                    if (language.equalsIgnoreCase("ru")) {
                        mainActivity4.findViewById(R.id.masterConfigTtl65Row).setVisibility(0);
                        mainActivity4.findViewById(R.id.masterConfigTtl65Divider).setVisibility(0);
                        mainActivity4.findViewById(R.id.masterConfigTtl65Row).setOnClickListener(new y8(mainActivity4, i61));
                        mainActivity4.B.execute(new x8(mainActivity4, i59));
                    }
                    mainActivity4.findViewById(R.id.masterConfigOverlayOpen).setOnClickListener(new y8(mainActivity4, i60));
                    mainActivity4.findViewById(R.id.masterConfigSilenceTboxRow).setOnClickListener(new y8(mainActivity4, 4));
                    mainActivity4.findViewById(R.id.masterConfigSilenceAvmRow).setOnClickListener(new y8(mainActivity4, 5));
                    mainActivity4.findViewById(R.id.masterConfigPreferencesHelp).setOnClickListener(new y8(mainActivity4, 6));
                    mainActivity4.findViewById(R.id.masterConfigUpdatesHelp).setOnClickListener(new y8(mainActivity4, 8));
                    mainActivity4.findViewById(R.id.masterConfigSystemHelp).setOnClickListener(new y8(mainActivity4, 9));
                    mainActivity4.r1();
                    mainActivity4.r1();
                    r5 = mainActivity4;
                default:
                    j3 = jElapsedRealtime;
                    str = "ArranqueUI";
                    r3 = r5;
                    break;
            }
            long jElapsedRealtime3 = SystemClock.elapsedRealtime();
            ViewFlipper viewFlipper = (ViewFlipper) r3.findViewById(R.id.masterContentFlipper);
            View childAt = viewFlipper != null ? viewFlipper.getChildAt(i3) : null;
            if (childAt != null && viewFlipper.getWidth() > 0 && viewFlipper.getHeight() > 0) {
                try {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(viewFlipper.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(viewFlipper.getHeight(), 1073741824));
                    childAt.layout(0, 0, childAt.getMeasuredWidth(), childAt.getMeasuredHeight());
                } catch (Throwable th2) {
                    str3 = str;
                    b.s(th2, b.k("pré-medida da seção ", i3, " falhou: "), str3);
                }
            }
            str3 = str;
            StringBuilder sbK = b.k("seção ", i3, ": inflar=");
            sbK.append(jElapsedRealtime2 - j3);
            sbK.append("ms configurar=");
            sbK.append(jElapsedRealtime3 - jElapsedRealtime2);
            sbK.append("ms pre_medida=");
            sbK.append(SystemClock.elapsedRealtime() - jElapsedRealtime3);
            sbK.append("ms");
            Log.i(str3, sbK.toString());
        }
    }

    public final void k2() {
        String string = getString(R.string.k_aa_wifi_help_title);
        String strG = b.g(string, "getString(...)", this, R.string.k_aa_wifi_help_message, "getString(...)");
        e.h hVar = new e.h(this);
        e.d dVar = (e.d) hVar.b;
        dVar.f1554d = string;
        dVar.f = strG;
        hVar.f(getString(R.string.k_got_it), null);
        hVar.h();
    }

    public final SharedPreferences l0() {
        return (SharedPreferences) this.J.a();
    }

    public final void l1() {
        O0();
        v1();
    }

    public final void l2(String str, String str2) {
        String string;
        Object next;
        String string2;
        a aVar;
        if (k.e0(str, "exit_code=0", false)) {
            aVar = new a(Boolean.TRUE, getString(R.string.k_install_success_named, str2));
        } else {
            if (k.e0(str, "INSTALL_FAILURE: apkm_corrompido", false)) {
                string = getString(R.string.k_apkm_corrupted);
            } else if (k.e0(str, "INSTALL_FAILED_UPDATE_INCOMPATIBLE", false)) {
                string = getString(R.string.k_signature_incompatible);
            } else if (k.e0(str, "INSTALL_FAILED_INVALID_APK", false) || k.e0(str, "INSTALL_PARSE_FAILED", false)) {
                string = getString(R.string.k_file_corrupted_invalid);
            } else if (k.e0(str, "INSTALL_FAILED_INSUFFICIENT_STORAGE", false)) {
                string = getString(R.string.k_insufficient_storage);
            } else if (k.e0(str, "INSTALL_FAILED_VERSION_DOWNGRADE", false)) {
                string = getString(R.string.k_installed_version_newer);
            } else if (k.e0(str, "INSTALL_FAILED_ALREADY_EXISTS", false)) {
                string = getString(R.string.k_same_version_already_installed);
            } else if (k.e0(str, "exit_code=41", false) || (k.e0(str, "cp:", false) && k.e0(str, "exit", false))) {
                string = getString(R.string.k_file_transfer_failed);
            } else if (k.e0(str, "INSTALL_FAILED_ABORTED", false)) {
                string = getString(R.string.k_install_cancelled_by_system);
            } else if (k.e0(str, "Failure", false)) {
                Iterator it = k.o0(str).iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!k.e0((String) next, "Failure", false));
                String str3 = (String) next;
                if (str3 == null || (string2 = k.E0(str3).toString()) == null) {
                    string2 = "";
                }
                string = getString(R.string.k_install_failure_detail, string2);
            } else if (k.e0(str, "exit_code=12", false)) {
                string = getString(R.string.k_copy_to_device_failed);
            } else if (k.e0(str, "exit_code=13", false)) {
                string = getString(R.string.k_xapk_decompress_failed);
            } else {
                string = k.e0(str, "exit_code=14", false) ? getString(R.string.k_xapk_no_apk_found) : getString(R.string.k_error_installing_named, str2);
            }
            g.b(string);
            aVar = new a(Boolean.FALSE, string);
        }
        boolean zBooleanValue = ((Boolean) aVar.f4641a).booleanValue();
        String str4 = (String) aVar.b;
        if (isFinishing()) {
            return;
        }
        e.h hVar = new e.h(this);
        String string3 = getString(zBooleanValue ? R.string.k_installer_done_title : R.string.k_install_error_title);
        e.d dVar = (e.d) hVar.b;
        dVar.f1554d = string3;
        dVar.f = str4;
        hVar.f(getString(R.string.common_ok), null);
        hVar.h();
        if (zBooleanValue) {
            this.f1045v.postDelayed(new ma(this, 8), 500L);
        }
    }

    public final String m0(String str) {
        try {
            String str2 = getPackageManager().getPackageInfo(str, 0).versionName;
            String string = str2 != null ? k.E0(str2).toString() : null;
            if (string == null || k.m0(string) || g.a(string, "null")) {
                return null;
            }
            return string;
        } catch (Throwable unused) {
        }
    }

    public final void m1(boolean z2) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (z2 || jElapsedRealtime - this.f1016g1 >= 3000) {
            this.f1016g1 = jElapsedRealtime;
            try {
                this.B.execute(new nb(this, 3));
            } catch (RejectedExecutionException unused) {
            }
        }
    }

    public final void m2(final int i3, int i4) {
        final long jElapsedRealtime = SystemClock.elapsedRealtime();
        p3 p3VarN0 = n0();
        p3VarN0.b.c(p3VarN0.f);
        p3VarN0.f4049e = false;
        k0(i3);
        final ViewFlipper viewFlipper = (ViewFlipper) findViewById(R.id.masterContentFlipper);
        viewFlipper.setDisplayedChild(i3);
        N1(i4);
        if (i3 == 0) {
            z(false);
        }
        if (i3 == 1) {
            o2(0, R.id.masterToolsTela);
        } else if (i3 == 2) {
            M1(R.id.masterNetworkPageFlipper, 0, R.id.masterNetworkWifiNav, R.id.masterNetworkAndroidNav);
        } else if (i3 == 4) {
            M1(R.id.masterAppsPageFlipper, 0, R.id.masterAppsInstallerNav, R.id.masterAppsCatalogNav);
        } else if (i3 == 5) {
            M1(R.id.masterShortcutsPageFlipper, 0, R.id.masterShortcutsBarNav, R.id.masterShortcutsWidgetsNav);
        }
        this.f1045v.post(new a9(this, i3, 0));
        final long jElapsedRealtime2 = SystemClock.elapsedRealtime() - jElapsedRealtime;
        View childAt = viewFlipper.getChildAt(i3);
        if (childAt != null) {
            childAt.post(new Runnable(this) { // from class: w0.b9
                @Override // java.lang.Runnable
                public final void run() {
                    int i5 = MainActivity.f1002z1;
                    ViewFlipper viewFlipper2 = viewFlipper;
                    int i6 = i3;
                    MainActivity.D1(viewFlipper2.getChildAt(i6));
                    Log.i("ArranqueUI", "troca p/ seção " + i6 + ": chamada=" + jElapsedRealtime2 + "ms ate_o_quadro=" + (SystemClock.elapsedRealtime() - jElapsedRealtime) + "ms");
                }
            });
        }
    }

    public final p3 n0() {
        return (p3) this.f1023k0.a();
    }

    public final void n1() {
        this.B.execute(new a9(this.I, this, 4));
    }

    public final void n2(String str, String str2) {
        final float f = getResources().getDisplayMetrics().density;
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        int i3 = (int) (30 * f);
        linearLayout.setPadding(i3, (int) (24 * f), i3, (int) (28 * f));
        linearLayout.setBackgroundResource(R.drawable.bg_master_help_dialog);
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(16);
        TextView textView = new TextView(this);
        textView.setText(str);
        textView.setTextColor(getColor(R.color.master_text));
        textView.setTextSize(26.0f);
        textView.setTypeface(null, 1);
        linearLayout2.addView(textView, new LinearLayout.LayoutParams(0, -2, 1.0f));
        TextView textView2 = new TextView(this);
        textView2.setText("×");
        textView2.setGravity(17);
        textView2.setTextSize(32.0f);
        textView2.setTextColor(getColor(R.color.master_text_secondary));
        textView2.setClickable(true);
        textView2.setFocusable(true);
        int i4 = (int) (48 * f);
        linearLayout2.addView(textView2, new LinearLayout.LayoutParams(i4, i4));
        linearLayout.addView(linearLayout2);
        TextView textView3 = new TextView(this);
        textView3.setText(y1.g.e0(k.v0(str2, new String[]{"\n"}, 0, 6), "\n\n", new n2(28), 30));
        textView3.setTextColor(getColor(R.color.master_text_secondary));
        textView3.setTextSize(18.0f);
        textView3.setLineSpacing(0.0f, 1.15f);
        textView3.setPadding(0, (int) (10 * f), (int) (8 * f), 0);
        ScrollView scrollView = new ScrollView(this);
        scrollView.setVerticalScrollBarEnabled(true);
        scrollView.addView(textView3);
        linearLayout.addView(scrollView, new LinearLayout.LayoutParams(-1, (int) (430 * f)));
        e.h hVar = new e.h(this);
        ((e.d) hVar.b).f1568s = linearLayout;
        final i iVarA = hVar.a();
        textView2.setOnClickListener(new w0.i(5, iVarA));
        iVarA.setOnShowListener(new DialogInterface.OnShowListener() { // from class: w0.ba
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                int i5 = MainActivity.f1002z1;
                Window window = iVarA.getWindow();
                if (window != null) {
                    window.setBackgroundDrawableResource(android.R.color.transparent);
                    window.setDimAmount(0.68f);
                    window.addFlags(2);
                    window.setLayout((int) (720 * f), -2);
                }
            }
        });
        iVarA.show();
    }

    public final SharedPreferences o0() {
        return (SharedPreferences) this.f1042u.a();
    }

    public final void o1() {
        int i3;
        if (!this.S0[4] || isFinishing() || isDestroyed()) {
            return;
        }
        int[] iArr = {R.id.masterAppsSourceInternal, R.id.masterAppsSourceUsb, R.id.masterAppsSourceInstalled};
        int i4 = 0;
        int i5 = 0;
        while (true) {
            boolean z2 = true;
            if (i4 >= 3) {
                break;
            }
            int i6 = i5 + 1;
            View viewFindViewById = findViewById(iArr[i4]);
            if (this.I != i5) {
                z2 = false;
            }
            viewFindViewById.setSelected(z2);
            i4++;
            i5 = i6;
        }
        View viewFindViewById2 = findViewById(R.id.masterAppsFileSpinner);
        g.d(viewFindViewById2, "findViewById(...)");
        s2((Spinner) viewFindViewById2, this.f1013f0, this.f1015g0);
        boolean z3 = this.I == this.H;
        ((TextView) findViewById(R.id.masterAppsInstallFile)).setText(getString(z3 ? R.string.k_uninstall_with_icon : R.string.k_install_with_icon));
        findViewById(R.id.masterAppsDeleteFile).setVisibility(z3 ? 8 : 0);
        findViewById(R.id.masterAppsCopyUsb).setVisibility(z3 ? 8 : 0);
        ArrayList arrayList = this.Z;
        int size = arrayList.size();
        int i7 = 0;
        while (i7 < size) {
            Object obj = arrayList.get(i7);
            i7++;
            cc ccVar = (cc) obj;
            xb xbVar = ccVar.b;
            TextView textView = ccVar.f3439c;
            wc wcVar = ccVar.f3440d;
            TextView textView2 = ccVar.f;
            TextView textView3 = ccVar.f3441e;
            boolean z4 = xbVar.f4511d != null;
            String strM = M(xbVar.f4512e);
            String string = getString(z4 ? R.string.k_check_update_with_icon : R.string.k_install_with_icon);
            g.d(string, "getString(...)");
            String strM2 = M(string);
            xb xbVar2 = ccVar.b;
            boolean z5 = xbVar2.f;
            boolean z6 = xbVar2.f4513g;
            dc dcVar = new dc(strM, strM2, z4, z5, z6);
            if (!g.a(ccVar.f3442g, dcVar)) {
                if (!g.a(textView.getText().toString(), strM)) {
                    textView.setText(strM);
                }
                if (!g.a(textView3.getText().toString(), strM2)) {
                    textView3.setText(strM2);
                }
                textView3.setEnabled(z5);
                textView3.setAlpha(1.0f);
                textView3.setBackgroundResource((!z5 || z4) ? R.drawable.bg_master_restart : R.drawable.bg_master_activate);
                if (z5) {
                    i3 = z4 ? R.color.master_text_secondary : R.color.master_green;
                } else {
                    i3 = R.color.master_text_muted;
                }
                textView3.setTextColor(getColor(i3));
                textView2.setVisibility(z4 ? 0 : 8);
                textView2.setEnabled(z6);
                textView2.setAlpha(z6 ? 1.0f : 0.45f);
                ccVar.f3442g = dcVar;
            }
            if (z4) {
                if (wcVar.getAppIcon() == null && !ccVar.f3443h) {
                    String str = ccVar.f3438a;
                    ccVar.f3443h = true;
                    this.B.execute(new a1.g(this, str, ccVar, 16));
                }
            } else if (wcVar.getAppIcon() != null) {
                wcVar.setAppIcon(null);
            }
        }
    }

    public final void o2(int i3, int i4) {
        ViewFlipper viewFlipper = (ViewFlipper) findViewById(R.id.masterToolsPageFlipper);
        viewFlipper.setDisplayedChild(i3);
        ScrollView scrollView = (ScrollView) findViewById(R.id.masterToolsPageScroll);
        if (scrollView != null) {
            scrollView.post(new z9(scrollView, 0));
        }
        int[] iArr = {R.id.masterToolsTela, R.id.masterToolsNotifications, R.id.masterToolsStatus};
        int i5 = 0;
        int i6 = 0;
        while (true) {
            if (i6 >= 3) {
                i6 = -1;
                break;
            } else if (i4 == iArr[i6]) {
                break;
            } else {
                i6++;
            }
        }
        boolean z2 = i6 >= 0;
        if (z2) {
            this.T = i3;
            this.U = i4;
        }
        V1(z2);
        int i7 = 0;
        while (true) {
            int i8 = android.R.color.transparent;
            if (i7 >= 3) {
                break;
            }
            int i9 = iArr[i7];
            LinearLayout linearLayout = (LinearLayout) findViewById(i9);
            int i10 = i9 == i4 ? 1 : 0;
            if (i10 != 0) {
                i8 = R.drawable.bg_master_tools_selected;
            }
            linearLayout.setBackgroundResource(i8);
            linearLayout.getChildAt(0).setVisibility(i10 != 0 ? 0 : 4);
            View childAt = linearLayout.getChildAt(1);
            TextView textView = childAt instanceof TextView ? (TextView) childAt : null;
            if (textView != null) {
                textView.setTypeface(null, i10);
            }
            i7++;
        }
        int i11 = R.id.masterToolsCar;
        int[] iArr2 = {R.id.masterToolsCar, R.id.masterToolsClimate, R.id.masterToolsSecurity};
        int i12 = 0;
        while (i12 < 3) {
            int i13 = iArr2[i12];
            int i14 = i11;
            LinearLayout linearLayout2 = (LinearLayout) findViewById(i13);
            int i15 = i13 == i4 ? 1 : i5;
            linearLayout2.setBackgroundResource(i15 != 0 ? R.drawable.bg_master_tools_selected : 17170445);
            View childAt2 = linearLayout2.getChildAt(1);
            TextView textView2 = childAt2 instanceof TextView ? (TextView) childAt2 : null;
            if (textView2 != null) {
                textView2.setTypeface(null, i15);
            }
            i12++;
            i11 = i14;
            i5 = 0;
        }
        for (Map.Entry entry : s.X(new a(Integer.valueOf(i11), Integer.valueOf(R.id.masterToolsCarChevron)), new a(Integer.valueOf(R.id.masterToolsClimate), Integer.valueOf(R.id.masterToolsClimateChevron)), new a(Integer.valueOf(R.id.masterToolsSecurity), Integer.valueOf(R.id.masterToolsSecurityChevron))).entrySet()) {
            findViewById(((Number) entry.getValue()).intValue()).animate().rotation(i4 == ((Number) entry.getKey()).intValue() ? 90.0f : 0.0f).setDuration(160L).start();
        }
        View childAt3 = viewFlipper.getChildAt(i3);
        if (childAt3 != null) {
            childAt3.post(new v9(this, viewFlipper, i3, 1));
        }
        v1();
    }

    /* JADX WARN: Type inference failed for: r4v30, types: [android.car.hardware.property.CarPropertyManager, android.car.media.CarAudioManager] */
    /* JADX WARN: Type inference failed for: r4v31 */
    /* JADX WARN: Type inference failed for: r4v32 */
    @Override // e.j, androidx.activity.h, android.app.Activity
    public final void onCreate(Bundle bundle) throws PackageManager.NameNotFoundException {
        boolean z2;
        super.onCreate(bundle);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        int i3 = 0;
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_main, (ViewGroup) null, false);
        if (viewInflate == null) {
            throw new NullPointerException("rootView");
        }
        this.f1040t = new m(29, (FrameLayout) viewInflate);
        long jElapsedRealtime2 = SystemClock.elapsedRealtime();
        m mVar = this.f1040t;
        if (mVar == null) {
            g.h("binding");
            throw null;
        }
        setContentView((FrameLayout) mVar.b);
        this.P = "inflate=" + (jElapsedRealtime2 - jElapsedRealtime) + "ms setContent=" + (SystemClock.elapsedRealtime() - jElapsedRealtime2) + "ms";
        this.Q = jElapsedRealtime;
        w("App", "Sessão iniciada");
        Object systemService = getApplicationContext().getSystemService("wifi");
        g.c(systemService, "null cannot be cast to non-null type android.net.wifi.WifiManager");
        this.K = (WifiManager) systemService;
        this.C.execute(new x8(this, 4));
        k5 k5Var = k5.f3786a;
        SharedPreferences sharedPreferencesO0 = o0();
        g.d(sharedPreferencesO0, "<get-prefs>(...)");
        k5.h(this);
        int i4 = 12;
        if (!sharedPreferencesO0.getBoolean("dr_sent_v2", false)) {
            new Handler(Looper.getMainLooper()).postDelayed(new a1.i(this, i4, sharedPreferencesO0), 12000L);
        }
        SharedPreferences sharedPreferencesO1 = o0();
        g.d(sharedPreferencesO1, "<get-prefs>(...)");
        new Handler(Looper.getMainLooper()).postDelayed(new j5(sharedPreferencesO1, 2), 6000L);
        SharedPreferences sharedPreferencesO2 = o0();
        g.d(sharedPreferencesO2, "<get-prefs>(...)");
        k5.m(this, sharedPreferencesO2);
        PackageInfo packageInfo = getPackageManager().getPackageInfo(getPackageName(), 0);
        long longVersionCode = packageInfo.getLongVersionCode();
        g.d(o0(), "<get-prefs>(...)");
        String strValueOf = packageInfo.versionName;
        if (strValueOf == null) {
            strValueOf = String.valueOf(longVersionCode);
        }
        g.e(strValueOf, "versionName");
        k5.h(this);
        int i5 = 6;
        this.C.execute(new x8(this, i5));
        this.I0 = f.U(new fc[]{new fc(R.id.masterNavInicio, i3), new fc(R.id.masterNavFerramentas, 1), new fc(R.id.masterNavRede, 2, new v8(this, 15)), new fc(R.id.masterNavAudio, 3, new v8(this, 16)), new fc(R.id.masterNavApps, 4, new v8(this, 17)), new fc(R.id.masterNavAtalhos, 5), new fc(R.id.masterNavConfig, i5)});
        long jElapsedRealtime3 = SystemClock.elapsedRealtime();
        findViewById(R.id.masterNavInicio).setOnClickListener(new w8(this, i4));
        findViewById(R.id.masterNavFerramentas).setOnClickListener(new w8(this, 22));
        findViewById(R.id.masterNavRede).setOnClickListener(new w8(this, 23));
        findViewById(R.id.masterNavAudio).setOnClickListener(new w8(this, 24));
        findViewById(R.id.masterNavApps).setOnClickListener(new w8(this, 25));
        findViewById(R.id.masterNavAtalhos).setOnClickListener(new w8(this, 26));
        findViewById(R.id.masterNavConfig).setOnClickListener(new w8(this, 27));
        findViewById(R.id.masterNavAbout).setOnClickListener(new w8(this, 28));
        findViewById(R.id.masterTopWifi).setOnClickListener(new w8(this, 29));
        View viewFindViewById = findViewById(R.id.masterTopSerialBox);
        int i6 = 13;
        if (viewFindViewById != null) {
            TextView textView = (TextView) findViewById(R.id.masterTopSerial);
            String str = this.T0;
            if (str != null) {
                textView.setText(str);
                viewFindViewById.setVisibility(0);
            } else {
                try {
                    this.B.execute(new a1.g(this, textView, viewFindViewById, i6));
                } catch (RejectedExecutionException unused) {
                }
            }
        }
        x2(this.M != null);
        findViewById(R.id.masterAndroidActivate).setOnClickListener(new y8(this, 0));
        findViewById(R.id.masterCarplayActivate).setOnClickListener(new w8(this, i6));
        findViewById(R.id.masterAndroidRestart).setOnClickListener(new w8(this, 14));
        findViewById(R.id.masterCarplayRestart).setOnClickListener(new w8(this, 15));
        findViewById(R.id.masterDriveEco).setOnClickListener(new w8(this, 16));
        findViewById(R.id.masterDriveComfort).setOnClickListener(new w8(this, 17));
        findViewById(R.id.masterDriveSport).setOnClickListener(new w8(this, 18));
        findViewById(R.id.masterRegenLow).setOnClickListener(new w8(this, 19));
        findViewById(R.id.masterRegenMedium).setOnClickListener(new w8(this, 20));
        findViewById(R.id.masterRegenHigh).setOnClickListener(new w8(this, 21));
        SharedPreferences sharedPreferencesO3 = o0();
        g.d(sharedPreferencesO3, "<get-prefs>(...)");
        i.s sVar = new i.s(this, sharedPreferencesO3);
        sVar.f2145c = (ImageView) findViewById(R.id.masterHomeCar);
        findViewById(R.id.masterCarColorDropdown).setOnClickListener(new w0.i(i5, sVar));
        String str2 = "green";
        String string = sharedPreferencesO3.getString("master_home_car_color", "green");
        if (string != null) {
            if (!((List) sVar.f2147e).contains(string)) {
                string = null;
            }
            if (string != null) {
                str2 = string;
            }
        }
        sVar.a(str2, false);
        N1(R.id.masterNavInicio);
        ((ImageView) findViewById(R.id.masterTopBatteryIcon)).setImageDrawable(new xc(this));
        PackageInfo packageInfo2 = getPackageManager().getPackageInfo(getPackageName(), 0);
        long longVersionCode2 = packageInfo2.getLongVersionCode();
        TextView textView2 = (TextView) findViewById(R.id.masterVersion);
        StringBuilder sb = new StringBuilder("v");
        Object objValueOf = packageInfo2.versionName;
        if (objValueOf == null) {
            objValueOf = Long.valueOf(longVersionCode2);
        }
        sb.append(objValueOf);
        sb.append(" (");
        sb.append(longVersionCode2);
        sb.append(')');
        textView2.setText(sb.toString());
        this.P += " master=" + (SystemClock.elapsedRealtime() - jElapsedRealtime3) + "ms";
        try {
            ?? r4 = 0;
            try {
                this.L = Car.createCar(this, null, 0L, new a1.p(this, 2));
                z2 = false;
                try {
                    x2(false);
                } catch (Throwable unused2) {
                    r4 = 0;
                    this.M = r4;
                    this.N = r4;
                    x2(z2);
                }
            } catch (Throwable unused3) {
                z2 = false;
                this.M = r4;
                this.N = r4;
                x2(z2);
            }
        } catch (Throwable unused4) {
            z2 = false;
        }
        startForegroundService(new Intent(this, (Class<?>) CentralWatchdogService.class));
        boolean z3 = BlackoutFloaterService.f795p;
        if (BlackoutFloaterService.f795p) {
            stopService(new Intent(this, (Class<?>) BlackoutFloaterService.class));
        }
        if (DriveRegenFloaterService.M) {
            stopService(new Intent(this, (Class<?>) DriveRegenFloaterService.class));
        }
        o0().edit().putBoolean("blackout_enabled", false).putBoolean("drive_regen_enabled", false).apply();
        Settings.canDrawOverlays(this);
        r2(0);
    }

    @Override // e.j, android.app.Activity
    public final void onDestroy() {
        this.A.incrementAndGet();
        p3 p3VarN0 = n0();
        p3VarN0.b.c(p3VarN0.f);
        p3VarN0.f4049e = false;
        try {
            Car car = this.L;
            if (car != null) {
                car.disconnect();
            }
        } catch (Exception unused) {
        }
        try {
            MediaPlayer mediaPlayer = this.W0;
            if (mediaPlayer != null) {
                mediaPlayer.release();
            }
        } catch (Exception unused2) {
        }
        this.W0 = null;
        this.f1048w.shutdownNow();
        this.f1050x.shutdownNow();
        this.f1054z.shutdownNow();
        this.B.shutdownNow();
        this.C.shutdownNow();
        super.onDestroy();
    }

    @Override // e.j, android.app.Activity
    public final void onPause() {
        super.onPause();
        ud udVar = ud.f4348a;
        if (udVar.f()) {
            ae aeVar = ae.f3361a;
            ae.b("Metricas", "ao sair da tela — " + udVar.e(), false);
        }
        this.O = false;
        p3 p3VarN0 = n0();
        p3VarN0.b.c(p3VarN0.f);
        p3VarN0.f4049e = false;
        this.f1045v.removeCallbacks(this.B0);
        try {
            unregisterReceiver(this.G0);
        } catch (Exception unused) {
        }
        try {
            unregisterReceiver(this.f1024k1);
        } catch (Exception unused2) {
        }
        try {
            unregisterReceiver(this.y0);
        } catch (Exception unused3) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:31:0x00e1  */
    @Override // e.j, android.app.Activity
    public final void onResume() {
        File filesDir;
        String strConcat;
        String lowerCase;
        w0.s sVar = w0.s.b;
        w0.s sVar2 = w0.s.f4188a;
        w0.s sVar3 = w0.s.f4189c;
        Handler handler = this.f1045v;
        super.onResume();
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
        z(false);
        ThreadPoolExecutor threadPoolExecutor = this.C;
        threadPoolExecutor.execute(new x8(this, 0));
        long jT = T();
        if (o0().getLong("connadaptor_checado_na_vc", -1L) != jT) {
            o0().edit().putLong("connadaptor_checado_na_vc", jT).apply();
            try {
                strConcat = getPackageManager().getApplicationInfo("com.njda.adapter", 0).sourceDir;
            } catch (Throwable th) {
                strConcat = "ERRO: ".concat(th.getClass().getSimpleName());
            }
            if (O()) {
                String strP = P();
                int i3 = u.f4288a;
                String strG = u.g(strP, R());
                Locale locale = Locale.ROOT;
                String lowerCase2 = strG.toLowerCase(locale);
                g.d(lowerCase2, "toLowerCase(...)");
                String strG0 = G0();
                if (strG0 != null) {
                    lowerCase = strG0.toLowerCase(locale);
                    g.d(lowerCase, "toLowerCase(...)");
                } else {
                    lowerCase = null;
                }
                String string = o0().getString("connadaptor_expected_md5", null);
                String string2 = o0().getString("connadaptor_arquivo_modo", null);
                String strE = u.e(lowerCase);
                if (strE == null) {
                    sVar = sVar3;
                } else if (strE.equals(u.e(lowerCase2))) {
                    sVar = sVar2;
                } else {
                    List listU = f.U(new String[]{"aa", "carplay", "ambos"});
                    if (!listU.isEmpty()) {
                        Iterator it = listU.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                String str = (String) it.next();
                                if ((g.a(str, strP) || !strE.equals(u.e(u.g(str, "1111")))) && (g.a(str, strP) || !strE.equals(u.e(u.g(str, "1114"))))) {
                                }
                            } else if (strE.equals(u.e(string))) {
                                sVar = sVar3;
                            } else {
                                sVar = sVar3;
                            }
                        }
                    } else if (strE.equals(u.e(string)) || string2 == null || k.m0(string2)) {
                        sVar = sVar3;
                    } else if (string2.equals(strP)) {
                        sVar = sVar2;
                    }
                }
                if (sVar == sVar3) {
                    ae aeVar2 = ae.f3361a;
                    StringBuilder sbL = b.l("não dá para dizer se o ConnAdaptor é do modo ", strP, " (em uso ");
                    sbL.append(lowerCase != null ? k.C0(8, lowerCase) : "ilegível");
                    sbL.append(") — sem build conhecida nem procedência gravada. Não afirmo nada.");
                    ae.b("Modo", sbL.toString(), false);
                } else if (sVar == sVar2) {
                    ae aeVar3 = ae.f3361a;
                    StringBuilder sbL2 = b.l("ConnAdaptor confere com o modo ", strP, " (");
                    sbL2.append(lowerCase != null ? k.C0(8, lowerCase) : null);
                    sbL2.append(')');
                    ae.b("Modo", sbL2.toString(), false);
                } else {
                    ae aeVar4 = ae.f3361a;
                    StringBuilder sbM = b.m("ConnAdaptor NÃO confere com o modo ", strP, " — em uso ", lowerCase, ", esperado ");
                    sbM.append(lowerCase2);
                    ae.b("Modo", sbM.toString(), false);
                    e.h hVar = new e.h(this);
                    hVar.g(R.string.k_connadaptor_errado_titulo);
                    ((e.d) hVar.b).f = getString(R.string.k_connadaptor_errado_msg, Q(strP));
                    hVar.e(R.string.k_modo_trocar_ok, new z8(this, 2));
                    hVar.b(android.R.string.cancel, null);
                    hVar.h();
                }
            } else {
                ae aeVar5 = ae.f3361a;
                ae.b("Modo", "verificação do modo: ConnAdaptor não está instalado em /data/app — sourceDir=" + strConcat, false);
            }
        }
        int i4 = 1;
        if (o0().getBoolean("crash_detected", false) || o0().getBoolean("auto_apply_paused", false)) {
            e.h hVar2 = new e.h(this);
            e.d dVar = (e.d) hVar2.b;
            dVar.f1554d = getString(R.string.k_forced_restart_title);
            dVar.f = getString(R.string.k_forced_restart_message);
            hVar2.f(getString(R.string.k_continue_btn), new z8(this, 0));
            hVar2.c(getString(R.string.k_disable_all_btn), new z8(this, i4));
            dVar.f1562m = false;
            hVar2.h();
        }
        j0();
        jc jcVar = this.G0;
        IntentFilter intentFilter = new IntentFilter("com.ex.auto.wifimanager.STATUS_UPDATE");
        intentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
        intentFilter.addAction("android.net.wifi.STATE_CHANGE");
        registerReceiver(jcVar, intentFilter);
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction("com.ex.auto.AUTO_PROXY_APPLIED");
        intentFilter2.addAction("com.ex.auto.AUTO_ROUTE_APPLIED");
        intentFilter2.addAction("com.ex.auto.DRIVE_REGEN_RECUSADO");
        intentFilter2.addAction("com.ex.auto.USB_WATCHDOG_APPLIED");
        registerReceiver(this.f1024k1, intentFilter2);
        registerReceiver(this.y0, new IntentFilter("com.ex.auto.PHONE_SYNC_APPLIED"));
        this.O = true;
        handler.post(this.B0);
        if (this.Q > 0) {
            Log.i("ArranqueUI", this.P + " total_ate_resume=" + (SystemClock.elapsedRealtime() - this.Q) + "ms");
            m mVar = this.f1040t;
            if (mVar == null) {
                g.h("binding");
                throw null;
            }
            ((FrameLayout) mVar.b).post(new x8(this, i4));
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        Settings.canDrawOverlays(this);
        v1();
        i1(null, null);
        A1();
        long jElapsedRealtime2 = SystemClock.elapsedRealtime() - jElapsedRealtime;
        if (jElapsedRealtime2 >= 20) {
            Log.i("ArranqueUI", "fase refreshUi=" + jElapsedRealtime2 + "ms");
        }
        if (this.R == 4 && this.S0[4]) {
            o1();
        }
        long jElapsedRealtime3 = SystemClock.elapsedRealtime();
        e1();
        long jElapsedRealtime4 = SystemClock.elapsedRealtime() - jElapsedRealtime3;
        if (jElapsedRealtime4 >= 20) {
            Log.i("ArranqueUI", "fase bindStatus=" + jElapsedRealtime4 + "ms");
        }
        f1();
        if (this.R == L1(R.id.masterNavAudio)) {
            long jElapsedRealtime5 = SystemClock.elapsedRealtime();
            h1(this);
            long jElapsedRealtime6 = SystemClock.elapsedRealtime() - jElapsedRealtime5;
            if (jElapsedRealtime6 >= 20) {
                Log.i("ArranqueUI", "fase carlockWavs=" + jElapsedRealtime6 + "ms");
            }
        }
        long j3 = 60;
        if (System.currentTimeMillis() > (this.f1026l1 * ((long) 24) * j3 * j3 * ((long) 1000)) + 1791332089486L) {
            e.h hVar3 = new e.h(this);
            e.d dVar2 = (e.d) hVar3.b;
            dVar2.f1554d = getString(R.string.k_update_required_title);
            dVar2.f = getString(R.string.k_update_required_message);
            dVar2.f1562m = false;
            hVar3.f(getString(R.string.k_update_now_btn), new z8(this, 27));
            hVar3.c(getString(R.string.k_close_btn), new z8(this, 28));
            hVar3.h();
        }
        long jElapsedRealtime7 = SystemClock.elapsedRealtime();
        int i5 = 3;
        if (o0().getBoolean("device_banned", false)) {
            e.h hVar4 = new e.h(this);
            String string3 = getString(R.string.k_ban_blocked_message);
            e.d dVar3 = (e.d) hVar4.b;
            dVar3.f = string3;
            dVar3.f1562m = false;
            hVar4.f(getString(R.string.common_ok), new z8(this, 18));
            i iVarA = hVar4.a();
            iVarA.show();
            boolean z2 = n0.f3926a;
            SharedPreferences sharedPreferencesO0 = o0();
            g.d(sharedPreferencesO0, "<get-prefs>(...)");
            new Thread(new a1.i(sharedPreferencesO0, 5, new q1(i5, iVarA))).start();
        }
        long jElapsedRealtime8 = SystemClock.elapsedRealtime() - jElapsedRealtime7;
        if (jElapsedRealtime8 >= 20) {
            Log.i("ArranqueUI", "fase banState=" + jElapsedRealtime8 + "ms");
        }
        boolean z3 = sd.f4234a;
        SharedPreferences sharedPreferencesO1 = o0();
        g.d(sharedPreferencesO1, "<get-prefs>(...)");
        sd.b(this, sharedPreferencesO1);
        boolean z4 = n0.f3926a;
        SharedPreferences sharedPreferencesO2 = o0();
        g.d(sharedPreferencesO2, "<get-prefs>(...)");
        n0.a(this, sharedPreferencesO2);
        k5 k5Var = k5.f3786a;
        SharedPreferences sharedPreferencesO3 = o0();
        g.d(sharedPreferencesO3, "<get-prefs>(...)");
        if (k5.f(sharedPreferencesO3) && q0()) {
            threadPoolExecutor.execute(new x8(this, 2));
        }
        if (this.H0) {
            return;
        }
        this.H0 = true;
        handler.postDelayed(new x8(this, i5), 6000L);
    }

    public final void p0(String str, String str2, String str3) {
        o0().edit().putString(u.i(str2, str3), str).putString("connadaptor_expected_md5", str).putString("connadaptor_arquivo_versao", str3).putString("connadaptor_arquivo_modo", str2).apply();
    }

    public final void p1() {
        boolean zA = g.a(o0().getString("master_carlock_apply_mode", "reboot"), "persistent");
        findViewById(R.id.masterAudioLockApplyReboot).setSelected(!zA);
        findViewById(R.id.masterAudioLockApplyPersistent).setSelected(zA);
    }

    public final boolean q0() {
        boolean z2;
        String host;
        try {
            Object systemService = getSystemService("connectivity");
            g.c(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
            ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
            NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
            if (networkCapabilities == null || !networkCapabilities.hasCapability(12) || !networkCapabilities.hasCapability(16)) {
                try {
                    Object systemService2 = getSystemService("connectivity");
                    g.c(systemService2, "null cannot be cast to non-null type android.net.ConnectivityManager");
                    Object objInvoke = ConnectivityManager.class.getMethod("getGlobalProxy", null).invoke((ConnectivityManager) systemService2, null);
                    ProxyInfo proxyInfo = objInvoke instanceof ProxyInfo ? (ProxyInfo) objInvoke : null;
                    z2 = (proxyInfo == null || (host = proxyInfo.getHost()) == null || k.m0(host)) ? false : true;
                } catch (Exception unused) {
                }
                if (!z2) {
                    return false;
                }
            }
            return true;
        } catch (Exception unused2) {
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.Object, java.util.List] */
    public final void q1() {
        if (this.S0[3]) {
            Spinner spinner = (Spinner) findViewById(R.id.masterAudioLockSpinner);
            Spinner spinner2 = (Spinner) findViewById(R.id.masterAudioAvasSpinner);
            g.b(spinner);
            s2(spinner, this.f1005b0, this.f1007c0);
            g.b(spinner2);
            s2(spinner2, this.f1009d0, this.f1011e0);
            ((MasterToggleView) findViewById(R.id.masterAudioAvasSwitch)).setActive(this.f1036r0);
            ((MasterToggleView) findViewById(R.id.masterAudioPauseDoorSwitch)).setActive(o0().getBoolean("pause_audio_on_door", false));
            ((MasterToggleView) findViewById(R.id.masterAudioMediaBarSwitch)).setActive(o0().getBoolean("media_bar_floater_enabled", false));
            ((MasterToggleView) findViewById(R.id.masterAudioLyricsSwitch)).setActive(o0().getBoolean("lyrics_floater_enabled", false));
            p1();
        }
    }

    public final void q2(File file, String str, String str2, boolean z2) {
        String absolutePath = file.getAbsolutePath();
        g.d(absolutePath, "getAbsolutePath(...)");
        String strV = o2.m.V("\n                setenforce 0 2>/dev/null || true\n                " + e8.v() + "\n                echo \"== copiar APK para tmp (pm install) ==\"\n                chmod 644 " + j2(absolutePath) + " 2>/dev/null || true\n                rm -f " + j2(str) + " 2>/dev/null || true\n                cp -f " + j2(absolutePath) + ' ' + j2(str) + " 2>&1 || exit 47\n                sync 2>/dev/null || true\n                chown root:root " + j2(str) + " 2>&1 || true\n                chmod 644 " + j2(str) + " 2>&1 || true\n                restorecon -v " + j2(str) + " 2>/dev/null || true\n                ls -l " + j2(str) + " 2>&1\n            ");
        String strK1 = z2 ? K1(120000, strV) : H1(120000, strV);
        if (k.e0(strK1, "Falha no ADB local", true)) {
            file.delete();
            throw new IllegalStateException(k.E0(strK1).toString());
        }
        File file2 = new File(str);
        if (file2.isFile() && file2.length() == file.length()) {
        } else {
            throw new IllegalStateException(getString(R.string.k_copy_to_path_failed, str2, str, Long.valueOf(file.length()), Long.valueOf(file2.isFile() ? file2.length() : -1L), k.E0(strK1).toString()));
        }
    }

    public final String r0(String str) throws IOException {
        HttpURLConnection httpURLConnectionN0 = N0(str);
        try {
            if (httpURLConnectionN0.getResponseCode() != 200) {
                throw new IllegalStateException(a0(httpURLConnectionN0.getResponseCode()));
            }
            InputStream inputStream = httpURLConnectionN0.getInputStream();
            g.d(inputStream, "getInputStream(...)");
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, o2.a.f2622a), 8192);
            try {
                String strZ = a1.b.Z(bufferedReader);
                bufferedReader.close();
                try {
                    httpURLConnectionN0.disconnect();
                } catch (Exception unused) {
                }
                return strZ;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    a1.b.p(bufferedReader, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            try {
                httpURLConnectionN0.disconnect();
            } catch (Exception unused2) {
            }
            throw th3;
        }
    }

    /* JADX WARN: Code duplicated, block: B:52:0x0100  */
    public final void r1() {
        String string;
        boolean zBooleanValue;
        View viewFindViewById = findViewById(R.id.masterConfigWorkshop);
        wd wdVar = wd.f4450a;
        viewFindViewById.setEnabled((wd.a(this) || wd.j(this)) ? false : true);
        if (this.S0[6]) {
            String string2 = o0().getString("theme_mode", null);
            if (string2 == null) {
                string2 = o0().contains("light_mode") ? o0().getBoolean("light_mode", false) ? "light" : "dark" : "auto";
            }
            findViewById(R.id.masterConfigThemeLight).setSelected(string2.equals("light"));
            findViewById(R.id.masterConfigThemeDark).setSelected(string2.equals("dark"));
            findViewById(R.id.masterConfigThemeAuto).setSelected(string2.equals("auto"));
            String language = getResources().getConfiguration().getLocales().get(0).getLanguage();
            if (language == null) {
                string = getString(R.string.master_language_portuguese);
            } else {
                int iHashCode = language.hashCode();
                if (iHashCode != 3241) {
                    if (iHashCode != 3246) {
                        if (iHashCode != 3651) {
                            if (iHashCode != 3700) {
                                if (iHashCode == 3763 && language.equals("vi")) {
                                    string = getString(R.string.master_language_vietnamese);
                                } else {
                                    string = getString(R.string.master_language_portuguese);
                                }
                            } else if (language.equals("th")) {
                                string = getString(R.string.master_language_thai);
                            } else {
                                string = getString(R.string.master_language_portuguese);
                            }
                        } else if (language.equals("ru")) {
                            string = getString(R.string.master_language_russian);
                        } else {
                            string = getString(R.string.master_language_portuguese);
                        }
                    } else if (language.equals("es")) {
                        string = getString(R.string.master_language_spanish);
                    } else {
                        string = getString(R.string.master_language_portuguese);
                    }
                } else if (language.equals("en")) {
                    string = getString(R.string.master_language_english);
                } else {
                    string = getString(R.string.master_language_portuguese);
                }
            }
            g.b(string);
            ((TextView) findViewById(R.id.masterConfigLanguageValue)).setText(string);
            int i3 = o0().getInt("screen_rest_timeout_sec", 0);
            for (Map.Entry entry : s.X(new a(Integer.valueOf(R.id.masterConfigRestOff), 0), new a(Integer.valueOf(R.id.masterConfigRest10), 10), new a(Integer.valueOf(R.id.masterConfigRest30), 30), new a(Integer.valueOf(R.id.masterConfigRest60), 60), new a(Integer.valueOf(R.id.masterConfigRest120), 120)).entrySet()) {
                findViewById(((Number) entry.getKey()).intValue()).setSelected(i3 == ((Number) entry.getValue()).intValue());
            }
            TextView textView = (TextView) findViewById(R.id.masterConfigChannelValue);
            int i4 = u.f4288a;
            SharedPreferences sharedPreferencesO0 = o0();
            g.d(sharedPreferencesO0, "<get-prefs>(...)");
            String string3 = sharedPreferencesO0.getString("canal_efetivo", "stable");
            textView.setText(string3 != null ? string3 : "stable");
            ((MasterToggleView) findViewById(R.id.masterConfigAutoUpdateSwitch)).setActive(o0().getBoolean("auto_update_enabled", true));
            ((MasterToggleView) findViewById(R.id.masterConfigSilenceTboxSwitch)).setActive(o0().getBoolean("silence_tbox_log", false));
            ((MasterToggleView) findViewById(R.id.masterConfigSilenceAvmSwitch)).setActive(o0().getBoolean("silence_avm_log", false));
            ((TextView) findViewById(R.id.masterConfigUpdateStatus)).setText(this.f1019i0);
            ((TextView) findViewById(R.id.masterConfigShowLog)).setText(getString(R.string.master_show_log));
            ((TextView) findViewById(R.id.masterConfigVersion)).setText(this.f1021j0);
            MasterToggleView masterToggleView = (MasterToggleView) findViewById(R.id.masterConfigTtl65Switch);
            Boolean bool = this.K0;
            if (bool != null) {
                zBooleanValue = bool.booleanValue();
            } else {
                SharedPreferences sharedPreferencesO1 = o0();
                g.d(sharedPreferencesO1, "<get-prefs>(...)");
                zBooleanValue = sharedPreferencesO1.getBoolean("ttl_65_ativo", false);
            }
            masterToggleView.setActive(zBooleanValue);
            boolean zCanDrawOverlays = Settings.canDrawOverlays(this);
            findViewById(R.id.masterConfigOverlayRow).setVisibility(!zCanDrawOverlays ? 0 : 8);
            findViewById(R.id.masterConfigOverlayDivider).setVisibility(zCanDrawOverlays ? 8 : 0);
        }
    }

    public final void r2(int i3) {
        List list = this.I0;
        if (list == null) {
            g.h("navSections");
            throw null;
        }
        fc fcVar = (fc) y1.g.c0(list, i3);
        if (fcVar == null) {
            return;
        }
        this.R = i3;
        m2(fcVar.b, fcVar.f3594a);
        fcVar.f3595c.a();
    }

    public final void s() {
        if (this.f1025l0) {
            b.n(R.string.k_applying, 0, this, "getString(...)");
            return;
        }
        if (O()) {
            ae aeVar = ae.f3361a;
            ae.b("Desativar", "usuário pediu para reverter o ConnAdaptor pro de fábrica", false);
            this.f1025l0 = true;
            String string = getString(R.string.k_deactivating_android_auto);
            g.d(string, "getString(...)");
            D0(string, true);
            String string2 = getString(R.string.k_deactivating_android_auto);
            g.d(string2, "getString(...)");
            int i3 = 7;
            J1(this, null, string2, 5000L, 60000, "", getString(R.string.k_deactivating_android_auto), new e9(this, i3), new e9(this, 8), false, null, new h9(this, i3), 1536);
            return;
        }
        if (o0().getBoolean("connadaptor_ja_ativado", false)) {
            C();
            return;
        }
        e.h hVar = new e.h(this);
        e.d dVar = (e.d) hVar.b;
        dVar.f1554d = getString(R.string.k_ativar_titulo);
        dVar.f = getString(R.string.k_ativar_precisa_reiniciar);
        hVar.f(getString(R.string.xml_ativar), new z8(this, 12));
        hVar.b(android.R.string.cancel, null);
        hVar.h();
    }

    public final void s0(xb xbVar) {
        String str = xbVar.b;
        String str2 = xbVar.f4510c;
        String str3 = xbVar.f4509a;
        xbVar.f = false;
        xbVar.f4513g = false;
        xbVar.b(getString(R.string.k_downloading_manifest));
        xbVar.a();
        this.C.execute(new qa(this, str, str2, str3, xbVar, 0));
    }

    public final void s1() {
        Set<BluetoothDevice> bondedDevices;
        Object next;
        if (this.S0[2]) {
            String strP = P();
            t1(this, strP.equals("aa"), R.id.masterNetworkModoAa);
            t1(this, !strP.equals("aa"), R.id.masterNetworkModoAmbos);
            String strR = R();
            t1(this, !g.a(strR, "1114"), R.id.masterNetworkVersao1111);
            t1(this, g.a(strR, "1114"), R.id.masterNetworkVersao1114);
            Y0();
            ((MasterToggleView) findViewById(R.id.masterNetworkAndroidProxySwitch)).setActive(b.t((MasterToggleView) findViewById(R.id.masterNetworkAndroidAutoRoutesSwitch), b.t((MasterToggleView) findViewById(R.id.masterNetworkAndroidKeepOpenSwitch), b.t((MasterToggleView) findViewById(R.id.masterNetworkPhoneSyncSwitch), b.t((MasterToggleView) findViewById(R.id.masterNetworkTelemetrySwitch), b.t((MasterToggleView) findViewById(R.id.masterNetworkWifiAutoSwitch), o0().getBoolean("wifi_auto_enable_on_wake", false), this, "telemetry_autostart", false), this, "phone_sync_enabled", false), this, "ap_sempre_aberto", false), this, "auto_route_on_aa_connect", false), this, "auto_proxy_enabled", false));
            ((TextView) findViewById(R.id.masterNetworkAndroidActivate)).setText(getString(this.f1017h0 ? R.string.xml_ativar : R.string.xml_desativar));
            TextView textView = (TextView) findViewById(R.id.masterNetworkAndroidPreferredPhone);
            String name = null;
            String string = o0().getString("auto_connect_preferred_bt", null);
            if (string == null || k.m0(string)) {
                string = null;
            }
            if (string == null) {
                string = getString(R.string.k_celular_preferido_qualquer);
                g.d(string, "getString(...)");
            } else {
                try {
                    BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
                    if (defaultAdapter != null && defaultAdapter.isEnabled() && (bondedDevices = defaultAdapter.getBondedDevices()) != null) {
                        Iterator<T> it = bondedDevices.iterator();
                        do {
                            if (!it.hasNext()) {
                                next = null;
                                break;
                            }
                            next = it.next();
                        } while (!t.a0(((BluetoothDevice) next).getAddress(), string));
                        BluetoothDevice bluetoothDevice = (BluetoothDevice) next;
                        if (bluetoothDevice != null) {
                            name = bluetoothDevice.getName();
                        }
                    }
                } catch (Throwable unused) {
                }
                if (name != null) {
                    string = name;
                }
            }
            textView.setText(string);
            ((TextView) findViewById(R.id.masterNetworkAndroidCreateRoutes)).setText(getString(this.x0 ? R.string.k_remove_routes : R.string.k_create_routes_short));
        }
    }

    public final void s2(Spinner spinner, List list, int i3) {
        SpinnerAdapter adapter = spinner.getAdapter();
        ArrayList arrayList = null;
        if (adapter != null) {
            l2.c cVarT = k1.a.T(0, adapter.getCount());
            ArrayList arrayList2 = new ArrayList(y1.i.X(cVarT));
            Iterator it = cVarT.iterator();
            while (true) {
                l2.b bVar = (l2.b) it;
                if (!bVar.f2428c) {
                    break;
                }
                Object item = adapter.getItem(bVar.nextInt());
                String string = item != null ? item.toString() : null;
                if (string == null) {
                    string = "";
                }
                arrayList2.add(string);
            }
            arrayList = arrayList2;
        }
        if (!g.a(arrayList, list)) {
            ArrayAdapter arrayAdapter = new ArrayAdapter(this, R.layout.item_master_spinner, list);
            arrayAdapter.setDropDownViewResource(R.layout.item_master_spinner);
            spinner.setAdapter((SpinnerAdapter) arrayAdapter);
        }
        if (i3 < 0 || i3 >= list.size() || spinner.getSelectedItemPosition() == i3) {
            return;
        }
        spinner.setSelection(i3, false);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final String t(String str) {
        String lowerCase;
        if (str != null) {
            lowerCase = str.toLowerCase(Locale.ROOT);
            g.d(lowerCase, "toLowerCase(...)");
        } else {
            lowerCase = null;
        }
        if (lowerCase != null) {
            switch (lowerCase.hashCode()) {
                case -542402810:
                    if (lowerCase.equals("260459e68360a4ff5c3720d84a2acddd")) {
                        return getString(R.string.k_connadaptor_build_corrigido_para, S("1111"));
                    }
                    break;
                case 536239582:
                    if (lowerCase.equals("4b37f46239a938fa164d4a0bdc65a399")) {
                        return getString(R.string.k_connadaptor_build_so_carplay);
                    }
                    break;
                case 1244948583:
                    if (lowerCase.equals("d49ab03b18a5c5e21928c59c465394d7")) {
                        return getString(R.string.k_connadaptor_build_so_aa, S("1111"));
                    }
                    break;
                case 1466524563:
                    if (lowerCase.equals("0c280b07f92a3538bcda1aae2e8b0746")) {
                        return getString(R.string.k_connadaptor_build_so_aa, S("1114"));
                    }
                    break;
                case 1735603348:
                    if (lowerCase.equals("19593246e356874905f072cd82af107b")) {
                        return getString(R.string.k_connadaptor_build_base);
                    }
                    break;
                case 1788734330:
                    if (lowerCase.equals("4b0e1de041032ee63ef0c223926d7889")) {
                        return getString(R.string.k_connadaptor_build_corrigido_para, S("1114"));
                    }
                    break;
            }
        }
        return null;
    }

    public final String t0() {
        String strJ2 = j2("/data/local/tmp/CentralEXAuto-update.apk");
        StringBuilder sb = new StringBuilder("\n            setenforce 0 2>/dev/null || true\n            ");
        sb.append(e8.v());
        sb.append("\n            echo \"== instalando update CentralEX ==\"\n            ls -l ");
        sb.append(strJ2);
        sb.append(" 2>&1 || exit 50\n            chown root:root ");
        sb.append(strJ2);
        b.q(sb, " 2>&1 || true\n            chmod 644 ", strJ2, " 2>&1 || true\n            restorecon -v ", strJ2);
        sb.append(" 2>/dev/null || true\n            ");
        sb.append(o2.m.V("\n            echo \"== pm install ==\"\n            pm install -r -g -d " + strJ2 + " 2>&1\n            code=$?\n            echo \"exit_code=$code\"\n            exit $code\n    "));
        sb.append("\n        ");
        return K1(90000, o2.m.V(sb.toString()));
    }

    public final Toast t2(CharSequence charSequence, int i3) {
        Toast toastMakeText = Toast.makeText(this, charSequence, i3);
        toastMakeText.setGravity(17, 0, 0);
        toastMakeText.show();
        return toastMakeText;
    }

    public final String u(String str) {
        String string;
        String string2;
        String string3 = o0().getString("connadaptor_expected_md5", null);
        String string4 = o0().getString("connadaptor_arquivo_modo", null);
        String string5 = o0().getString("connadaptor_arquivo_versao", null);
        int i3 = u.f4288a;
        if (str != null && (string = k.E0(str).toString()) != null) {
            Locale locale = Locale.ROOT;
            String lowerCase = string.toLowerCase(locale);
            g.d(lowerCase, "toLowerCase(...)");
            if (lowerCase.length() <= 0) {
                lowerCase = null;
            }
            if (lowerCase != null && string3 != null && (string2 = k.E0(string3).toString()) != null) {
                String lowerCase2 = string2.toLowerCase(locale);
                g.d(lowerCase2, "toLowerCase(...)");
                if (lowerCase2.length() <= 0) {
                    lowerCase2 = null;
                }
                if (lowerCase2 != null && lowerCase.equals(lowerCase2) && string4 != null && !k.m0(string4) && string5 != null && !k.m0(string5)) {
                    return u.h(string4, string5);
                }
            }
        }
        return null;
    }

    public final void u1() {
        boolean z2;
        boolean z3;
        Iterable<String> iterableG0;
        boolean z4;
        if (this.S0[5]) {
            SharedPreferences sharedPreferences = getSharedPreferences("quick_access_prefs", 0);
            ((MasterToggleView) findViewById(R.id.masterShortcutsBarEnabledSwitch)).setActive(o0().getBoolean("quick_access_enabled", false));
            Iterator it = this.V.entrySet().iterator();
            while (true) {
                z2 = true;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry entry = (Map.Entry) it.next();
                String str = (String) entry.getKey();
                ((MasterToggleView) entry.getValue()).setActive(sharedPreferences.getBoolean("qa_visible_" + str, true ^ QuickAccessFloaterService.f1132w0.contains(str)));
            }
            LinearLayout linearLayout = (LinearLayout) findViewById(R.id.masterShortcutsPreview);
            linearLayout.removeAllViews();
            float f = getResources().getDisplayMetrics().density;
            float fK = k1.a.k(sharedPreferences.getInt("qa_tab_alpha", 90), 0, 100) / 100.0f;
            findViewById(R.id.masterShortcutsPreviewContainer).setAlpha(1.0f);
            TextView textView = (TextView) findViewById(R.id.masterShortcutsPreviewHandle);
            textView.setAlpha(fK);
            ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
            layoutParams.width = (int) (((int) ((k1.a.k(sharedPreferences.getInt("qa_panel_width_pct", 100), 50, 200) * 38) / 100.0f)) * f);
            layoutParams.height = (int) (((int) ((k1.a.k(sharedPreferences.getInt("qa_panel_height_pct", 100), 50, 200) * 64) / 100.0f)) * f);
            textView.setLayoutParams(layoutParams);
            int iK = k1.a.k((int) ((k1.a.k(sharedPreferences.getInt("qa_icon_size_pct", 100), 50, 300) * 36.0f) / 100.0f), 18, 36);
            int i3 = (70 - iK) / 2;
            if (i3 < 17) {
                i3 = 17;
            }
            int i4 = (58 - iK) / 2;
            if (i4 < 11) {
                i4 = 11;
            }
            String string = sharedPreferences.getString("qa_icon_order", null);
            if (string == null || k.m0(string)) {
                z3 = true;
                iterableG0 = QuickAccessFloaterService.f1131v0;
            } else {
                List listV0 = k.v0(string, new String[]{","}, 0, 6);
                ArrayList arrayList = new ArrayList(y1.i.X(listV0));
                Iterator it2 = listV0.iterator();
                while (it2.hasNext()) {
                    arrayList.add(k.E0((String) it2.next()).toString());
                }
                ArrayList arrayList2 = new ArrayList();
                int size = arrayList.size();
                int i5 = 0;
                while (i5 < size) {
                    Object obj = arrayList.get(i5);
                    i5++;
                    boolean z5 = z2;
                    if (QuickAccessFloaterService.f1131v0.contains((String) obj)) {
                        arrayList2.add(obj);
                    }
                    z2 = z5;
                }
                z3 = z2;
                List list = QuickAccessFloaterService.f1131v0;
                ArrayList arrayList3 = new ArrayList();
                for (Object obj2 : list) {
                    if (!arrayList2.contains((String) obj2)) {
                        arrayList3.add(obj2);
                    }
                }
                iterableG0 = y1.g.g0(arrayList2, arrayList3);
            }
            for (String str2 : iterableG0) {
                if (sharedPreferences.getBoolean("qa_visible_" + str2, !QuickAccessFloaterService.f1132w0.contains(str2))) {
                    sf sfVar = new sf(this);
                    sfVar.setIconId(str2);
                    sfVar.setBackgroundResource(R.drawable.bg_master_quick_button);
                    int i6 = (int) (i3 * f);
                    int i7 = (int) (i4 * f);
                    sfVar.setPadding(i6, i7, i6, i7);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams((int) (70 * f), (int) (58 * f));
                    layoutParams2.setMarginEnd((int) (8 * f));
                    linearLayout.addView(sfVar, layoutParams2);
                }
            }
            LinkedHashMap linkedHashMap = this.W;
            Set setKeySet = linkedHashMap.keySet();
            g.d(setKeySet, "<get-keys>(...)");
            if (setKeySet.isEmpty()) {
                z4 = false;
                break;
            }
            Iterator it3 = setKeySet.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    z4 = false;
                    break;
                }
                if (o0().getBoolean((String) it3.next(), false)) {
                    z4 = z3;
                    break;
                }
            }
            ((MasterToggleView) findViewById(R.id.masterWidgetsEnabledSwitch)).setActive(z4);
            ((MasterToggleView) findViewById(R.id.masterWidgetsLockSwitch)).setActive(o0().getBoolean("widgets_poslock_all", false));
            for (Map.Entry entry2 : linkedHashMap.entrySet()) {
                ((MasterToggleView) entry2.getValue()).setActive(o0().getBoolean((String) entry2.getKey(), false));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [y1.p] */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Iterable] */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.util.ArrayList] */
    public final h0 u2(long j3, int... iArr) {
        ?? I;
        int length = iArr.length;
        if (length == 0) {
            I = p.f4663a;
        } else if (length != 1) {
            I = new ArrayList(iArr.length);
            for (int i3 : iArr) {
                I.add(Integer.valueOf(i3));
            }
        } else {
            I = k1.a.I(Integer.valueOf(iArr[0]));
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = I.iterator();
        while (it.hasNext()) {
            View viewFindViewById = findViewById(((Number) it.next()).intValue());
            if (viewFindViewById != null) {
                arrayList.add(viewFindViewById);
            }
        }
        int size = arrayList.size();
        int i4 = 0;
        while (i4 < size) {
            Object obj = arrayList.get(i4);
            i4++;
            View view = (View) obj;
            view.setEnabled(false);
            view.setAlpha(0.5f);
        }
        f2 f2Var = new f2(6, arrayList);
        r rVar = new r(7, f2Var);
        this.f1045v.postDelayed(rVar, j3);
        return new h0(this, rVar, f2Var, 3);
    }

    public final void v(String str) {
        String strP = P();
        if (str.equals(strP)) {
            return;
        }
        o0().edit().putString("connadaptor_modo", str).apply();
        ae aeVar = ae.f3361a;
        ae.b("Modo", "modo de projeção: " + strP + " -> " + str, false);
        boolean zJ = u.j(str);
        if (!str.equals("aa")) {
            str.equals("ambos");
        }
        String string = getString(R.string.k_modo_aplicando, Q(str));
        g.d(string, "getString(...)");
        t2(string, 0);
        if (O()) {
            K(this, 3);
        }
        int i3 = 1;
        ThreadPoolExecutor threadPoolExecutor = this.C;
        if (zJ) {
            try {
                v1.f4363a.b();
            } catch (Throwable unused) {
            }
            startForegroundService(new Intent(this, (Class<?>) CentralWatchdogService.class).putExtra("reaplicar_patch_monitor", true));
        } else {
            try {
                v1.f4363a.c();
            } catch (Throwable unused2) {
            }
            threadPoolExecutor.execute(new ma(this, 13));
        }
        e1();
        e1();
        threadPoolExecutor.execute(new c9(str, this, i3));
    }

    public final void v1() {
        int i3;
        if (this.S0[1]) {
            MasterToggleView masterToggleView = (MasterToggleView) findViewById(R.id.masterToolsPipNativoSwitch);
            Boolean bool = this.f1008c1;
            masterToggleView.setActive(bool != null ? bool.booleanValue() : o0().getBoolean("pip_overlay_enabled", false));
            MasterToggleView masterToggleView2 = (MasterToggleView) findViewById(R.id.masterToolsGesturesSwitch);
            Boolean bool2 = this.f1014f1;
            masterToggleView2.setActive(bool2 != null ? bool2.booleanValue() : o0().getBoolean("gestures_enabled", false));
            m1(false);
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (jElapsedRealtime - this.f1012e1 >= 3000) {
                this.f1012e1 = jElapsedRealtime;
                if (!this.f1010d1) {
                    try {
                        this.B.execute(new nb(this, 5));
                    } catch (RejectedExecutionException unused) {
                    }
                }
            }
            ((MasterToggleView) findViewById(R.id.masterToolsRememberBrightnessSwitch)).setActive(o0().getBoolean("remember_brightness", false));
            C1();
            ((MasterToggleView) findViewById(R.id.masterToolsFloatingEnabledSwitch)).setActive(b.t((MasterToggleView) findViewById(R.id.masterToolsStatusTotalSwitch), b.t((MasterToggleView) findViewById(R.id.masterToolsStatusTripSwitch), b.t((MasterToggleView) findViewById(R.id.masterToolsStatusBrightness2Switch), b.t((MasterToggleView) findViewById(R.id.masterToolsStatusBrightnessSwitch), b.t((MasterToggleView) findViewById(R.id.masterToolsStatusExternalTempSwitch), b.t((MasterToggleView) findViewById(R.id.masterToolsStatusHvacSwitch), b.t((MasterToggleView) findViewById(R.id.masterToolsStatusBatterySwitch), b.t((MasterToggleView) findViewById(R.id.masterToolsAcSingleStepSwitch), b.t((MasterToggleView) findViewById(R.id.masterToolsNotificationSignalSwitch), b.t((MasterToggleView) findViewById(R.id.masterToolsNotificationWifiSwitch), b.t((MasterToggleView) findViewById(R.id.masterToolsNotificationTempSwitch), b.t((MasterToggleView) findViewById(R.id.masterToolsNotificationBatterySwitch), o0().getBoolean("status_battery_enabled", false), this, "status_temp_ext_enabled", false), this, "status_wifi_enabled", false), this, "status_signal_enabled", false), this, "gestures_ac_swipe_single_step", false), this, "hvac_digital_batt", false), this, "hvac_digital_temp", false), this, "hvac_digital_ext_temp", false), this, "status_brightness_enabled", false), this, "status_brightness2_enabled", false), this, "status_trip_km_enabled", false), this, "status_total_km_enabled", false), this, "temp_batt_pill_enabled", false));
            SharedPreferences sharedPreferences = getSharedPreferences("temp_batt_pill_prefs", 0);
            String string = sharedPreferences.getString("pill_mode", "both");
            findViewById(R.id.masterToolsFloatingModeTemp).setSelected(g.a(string, "temp"));
            findViewById(R.id.masterToolsFloatingModeBattery).setSelected(g.a(string, "batt"));
            findViewById(R.id.masterToolsFloatingModeBoth).setSelected(g.a(string, "both"));
            boolean z2 = sharedPreferences.getBoolean("pill_text_white", true);
            findViewById(R.id.masterToolsFloatingTextWhite).setSelected(z2);
            findViewById(R.id.masterToolsFloatingTextBlack).setSelected(!z2);
            Boolean bool3 = this.f1035q0;
            ((MasterToggleView) findViewById(R.id.masterToolsClimateOppositeWindowSwitch)).setActive(b.t((MasterToggleView) findViewById(R.id.masterToolsClimateWindowSwitch), b.t((MasterToggleView) findViewById(R.id.masterToolsClimateRecircSwitch), b.t((MasterToggleView) findViewById(R.id.masterToolsCarCameraDriveSwitch), b.t((MasterToggleView) findViewById(R.id.masterToolsCarWheelMediaSwitch), b.t((MasterToggleView) findViewById(R.id.masterToolsCarWheelControlsSwitch), bool3 != null ? bool3.booleanValue() : o0().getBoolean("keyserver_bind_enabled", false), this, "swc_media_control_enabled", false), this, "camera_on_drive", false), this, "recirc_guard_enabled", false), this, "window_driver_on_door", false), this, "window_opposite_on_door", false));
            l2.c cVarT = k1.a.T(0, 3);
            ArrayList arrayList = new ArrayList(y1.i.X(cVarT));
            Iterator it = cVarT.iterator();
            while (true) {
                l2.b bVar = (l2.b) it;
                if (!bVar.f2428c) {
                    break;
                } else {
                    arrayList.add(t1.O(this, bVar.nextInt()));
                }
            }
            if (arrayList.isEmpty()) {
                i3 = 0;
            } else {
                int size = arrayList.size();
                i3 = 0;
                int i4 = 0;
                while (i4 < size) {
                    Object obj = arrayList.get(i4);
                    i4++;
                    if (((w0.k) obj) != null && (i3 = i3 + 1) < 0) {
                        throw new ArithmeticException("Count overflow has happened.");
                    }
                }
            }
            ((TextView) findViewById(R.id.masterToolsClimateProgramsCount)).setText(i3 == 0 ? getString(R.string.master_none_active) : getResources().getQuantityString(R.plurals.master_active_program_count, i3, Integer.valueOf(i3)));
            Boolean bool4 = this.X0;
            ((MasterToggleView) findViewById(R.id.masterToolsSecurityRvcSwitch)).setActive(bool4 != null ? bool4.booleanValue() : o0().getBoolean("rvc_black_bg", false));
            w1(false);
            ((MasterToggleView) findViewById(R.id.masterToolsSecurityTurnCameraHoldSwitch)).setActive(b.t((MasterToggleView) findViewById(R.id.masterToolsSecurityTurnCameraSwitch), o0().getBoolean("rear_cam_turn_signal_enabled", false), this, "rear_cam_hold_open_5s", false));
            boolean z3 = o0().getBoolean("aeb_desired", o0().getBoolean("aeb_state_saved", false));
            boolean z4 = o0().getBoolean("aeb_state_saved", z3);
            ((MasterToggleView) findViewById(R.id.masterToolsSecurityAebSwitch)).setActive(z3);
            TextView textView = (TextView) findViewById(R.id.masterToolsSecurityAebStatus);
            textView.setText(getString(z4 ? R.string.master_aeb_active : R.string.master_aeb_inactive));
            textView.setTextColor(getColor(z4 ? R.color.master_green : R.color.master_text_muted));
            textView.setBackgroundResource(z4 ? R.drawable.bg_master_state_active : R.drawable.bg_master_state_inactive);
            ((MasterToggleView) findViewById(R.id.masterToolsSecurityAebRestoreSwitch)).setActive(o0().getBoolean("aeb_restore_on_boot", false));
            Boolean bool5 = this.f1055z0;
            ((MasterToggleView) findViewById(R.id.masterToolsSecuritySpeedLockSwitch)).setActive(bool5 != null ? bool5.booleanValue() : o0().getBoolean("speed_auto_lock_enabled", true));
            x1(false);
            int i5 = o0().getInt("screen_rest_timeout_sec", 0);
            int i6 = R.id.masterToolsRestOff;
            int[] iArr = {R.id.masterToolsRestOff, R.id.masterToolsRest30, R.id.masterToolsRest60, R.id.masterToolsRest120};
            for (int i7 = 0; i7 < 4; i7++) {
                findViewById(iArr[i7]).setSelected(false);
            }
            if (i5 == 30) {
                i6 = R.id.masterToolsRest30;
            } else if (i5 == 60) {
                i6 = R.id.masterToolsRest60;
            } else if (i5 == 120) {
                i6 = R.id.masterToolsRest120;
            }
            findViewById(i6).setSelected(true);
        }
    }

    public final void w(String str, String str2) {
        String str3 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US).format(new Date());
        String string = k.F0(str2).toString();
        synchronized (this.f1049w0) {
            StringBuilder sb = this.f1046v0;
            sb.append('[');
            sb.append(str3);
            sb.append("] ");
            sb.append(str);
            sb.append(": ");
            sb.append(string);
            sb.append('\n');
            if (this.f1046v0.length() > 200000) {
                this.f1046v0.delete(0, this.f1046v0.length() - 100000);
                this.f1046v0.insert(0, "[... log truncado ...]\n");
            }
        }
    }

    public final Object w0(String str, Object... objArr) {
        CarAudioManager carAudioManager = this.N;
        if (carAudioManager == null) {
            return null;
        }
        try {
            Class<?> cls = carAudioManager.getClass();
            Class[] clsArrH = H(objArr);
            return cls.getMethod(str, (Class[]) Arrays.copyOf(clsArrH, clsArrH.length)).invoke(carAudioManager, Arrays.copyOf(objArr, objArr.length));
        } catch (Exception unused) {
            return null;
        }
    }

    public final void w1(boolean z2) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (z2 || jElapsedRealtime - this.Y0 >= 3000) {
            this.Y0 = jElapsedRealtime;
            try {
                this.B.execute(new x8(this, 5));
            } catch (RejectedExecutionException unused) {
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x004a  */
    public final void w2(Float f) {
        String string;
        Integer numValueOf = f != null ? Integer.valueOf(k1.a.k(Math.round(f.floatValue()), 0, 100)) : null;
        if (!g.a(numValueOf, this.E0) || this.E0 == null) {
            this.E0 = numValueOf;
            TextView textView = (TextView) findViewById(R.id.masterTopBattery);
            if (numValueOf != null) {
                int iIntValue = numValueOf.intValue();
                StringBuilder sb = new StringBuilder();
                sb.append(iIntValue);
                sb.append('%');
                string = sb.toString();
                if (string == null) {
                    string = "—";
                }
            } else {
                string = "—";
            }
            textView.setText(string);
            ImageView imageView = (ImageView) findViewById(R.id.masterTopBatteryIcon);
            Drawable drawable = imageView.getDrawable();
            xc xcVar = drawable instanceof xc ? (xc) drawable : null;
            if (xcVar == null) {
                xcVar = new xc(this);
                imageView.setImageDrawable(xcVar);
            }
            xcVar.f4518e = k1.a.k(numValueOf != null ? numValueOf.intValue() : 0, 0, 100);
            xcVar.invalidateSelf();
        }
    }

    public final void x(String str, String str2) {
        this.f1045v.post(new k9(0, this, str, str2));
    }

    public final void x1(boolean z2) {
        CarPropertyManager carPropertyManager = this.M;
        if (carPropertyManager == null) {
            return;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (z2 || jElapsedRealtime - this.A0 >= 3000) {
            this.A0 = jElapsedRealtime;
            try {
                this.B.execute(new j9(carPropertyManager, this, 0));
            } catch (RejectedExecutionException unused) {
            }
        }
    }

    public final void x2(boolean z2) {
        TextView textView = (TextView) findViewById(R.id.masterTopCarStatus);
        String string = getString(z2 ? R.string.k_car_connected : R.string.k_car_disconnected);
        g.d(string, "getString(...)");
        textView.setText(k.r0(string, "🚗 "));
        findViewById(R.id.masterTopCarDot).setBackgroundTintList(ColorStateList.valueOf(getColor(z2 ? R.color.master_green : R.color.master_status_off)));
    }

    public final void y(boolean z2) {
        CarPropertyManager carPropertyManager = this.M;
        if (carPropertyManager == null) {
            b.n(R.string.k_car_not_connected_short, 0, this, "getString(...)");
        } else {
            try {
                this.f1054z.execute(new pa(carPropertyManager, z2 ? 2 : 1, this, z2));
            } catch (RejectedExecutionException unused) {
            }
        }
    }

    public final boolean y0() {
        String string;
        Integer numW;
        try {
            StringBuilder sb = new StringBuilder("grep -c ");
            sb.append(j2(" " + u.f4311z + ' '));
            sb.append(" /proc/mounts");
            String str = (String) y1.g.f0(k.o0(k.E0(H1(8000, sb.toString())).toString()));
            return (str == null || (string = k.E0(str).toString()) == null || (numW = o2.s.W(string)) == null || numW.intValue() <= 0) ? false : true;
        } catch (Exception unused) {
            return false;
        }
    }

    public final void y1() {
        v1();
        v1();
    }

    public final Long y2(File file) {
        try {
            PackageInfo packageArchiveInfo = getPackageManager().getPackageArchiveInfo(file.getAbsolutePath(), 0);
            if (packageArchiveInfo == null) {
                return null;
            }
            return Long.valueOf(packageArchiveInfo.getLongVersionCode());
        } catch (Throwable unused) {
            return null;
        }
    }

    public final void z(boolean z2) {
        X0();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (z2 || jElapsedRealtime - this.M0 >= 2000) {
            this.M0 = jElapsedRealtime;
            int[] iArr = CentralWatchdogService.S2;
            CentralWatchdogService centralWatchdogService = CentralWatchdogService.V2;
            if (centralWatchdogService != null) {
                if (centralWatchdogService.f832f2) {
                    CentralWatchdogService centralWatchdogService2 = CentralWatchdogService.V2;
                    if (centralWatchdogService2 != null) {
                        centralWatchdogService2.r0();
                    }
                    CentralWatchdogService centralWatchdogService3 = CentralWatchdogService.V2;
                    if (centralWatchdogService3 != null) {
                        boolean z3 = centralWatchdogService3.f817b2;
                    }
                    CentralWatchdogService centralWatchdogService4 = CentralWatchdogService.V2;
                    if (centralWatchdogService4 != null && centralWatchdogService4.f821c2) {
                        CentralWatchdogService centralWatchdogService5 = CentralWatchdogService.V2;
                        this.N0 = Boolean.valueOf(centralWatchdogService5 != null && centralWatchdogService5.Z1);
                    }
                    X0();
                }
            }
        }
    }

    public final List z0() {
        String strJ2 = j2("/data/data/com.aurora.store/cache/Downloads");
        List listO0 = k.o0(H1(10000, o2.m.V("\n            [ -d " + strJ2 + " ] || exit 0\n            for pkgdir in " + strJ2 + "/*/; do\n              [ -d \"$pkgdir\" ] || continue\n              for vcdir in \"$pkgdir\"*/; do\n                [ -f \"${vcdir}base.apk\" ] || continue\n                echo \"${vcdir%/}\"\n              done\n            done\n        ")));
        ArrayList arrayList = new ArrayList(y1.i.X(listO0));
        Iterator it = listO0.iterator();
        while (it.hasNext()) {
            arrayList.add(k.E0((String) it.next()).toString());
        }
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            if (t.d0((String) obj, "/data/data/com.aurora.store/cache/Downloads/")) {
                arrayList2.add(obj);
            }
        }
        return y1.g.Z(arrayList2);
    }

    public final void z1() {
        String str;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (this.D0 == null || jElapsedRealtime - this.F0 > 30000) {
            this.F0 = jElapsedRealtime;
            try {
                str = String.format("%.1f GB", Arrays.copyOf(new Object[]{Double.valueOf(new StatFs(Environment.getDataDirectory().getPath()).getAvailableBytes() / 1.073741824E9d)}, 1));
            } catch (Exception unused) {
                str = "n/d";
            }
            if (!str.equals(this.D0)) {
                this.D0 = str;
                ((TextView) findViewById(R.id.masterTopStorage)).setText(str);
            }
        }
        CarPropertyManager carPropertyManager = this.M;
        if (carPropertyManager == null) {
            this.w1 = null;
            this.f1047v1 = null;
            i1(null, null);
            ((TextView) findViewById(R.id.masterTop12v)).setText("n/d");
            w2(null);
            x2(false);
            return;
        }
        if (this.f1052y) {
            return;
        }
        this.f1052y = true;
        try {
            this.f1050x.execute(new pa(this, carPropertyManager, this.R == L1(R.id.masterNavInicio), this.f1044u1.get()));
        } catch (RejectedExecutionException unused2) {
            this.f1052y = false;
        }
    }

    public final void z2(File file, String str, long j3) {
        PackageInfo packageArchiveInfo = getPackageManager().getPackageArchiveInfo(file.getAbsolutePath(), 64);
        if (packageArchiveInfo == null) {
            throw new IllegalStateException("APK ilegível");
        }
        if (!g.a(packageArchiveInfo.packageName, str)) {
            throw new IllegalStateException("APK de outro pacote: " + packageArchiveInfo.packageName);
        }
        long longVersionCode = packageArchiveInfo.getLongVersionCode();
        if (j3 > 0 && longVersionCode != j3) {
            throw new IllegalStateException("APK é vc=" + longVersionCode + ", manifesto prometeu " + j3);
        }
        Signature[] signatureArr = packageArchiveInfo.signatures;
        int i3 = 0;
        if (signatureArr == null) {
            signatureArr = new Signature[0];
        }
        ArrayList arrayList = new ArrayList(signatureArr.length);
        for (Signature signature : signatureArr) {
            byte[] bArrDigest = MessageDigest.getInstance("SHA-256").digest(signature.toByteArray());
            g.d(bArrDigest, "digest(...)");
            arrayList.add(f.b0(bArrDigest, new ya(2)));
        }
        if (!arrayList.isEmpty()) {
            int size = arrayList.size();
            while (i3 < size) {
                Object obj = arrayList.get(i3);
                i3++;
                if (t.a0((String) obj, "c8a2e9bccf597c2fb6dc66bee293fc13f2fc47ec77bc6b2b0d52c11f51192ab8")) {
                    return;
                }
            }
        }
        throw new IllegalStateException("APK não está assinado com a chave de plataforma");
    }
}
