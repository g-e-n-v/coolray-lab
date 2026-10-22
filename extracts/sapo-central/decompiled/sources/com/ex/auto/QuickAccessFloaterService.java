package com.ex.auto;

import a1.o;
import android.app.AlertDialog;
import android.app.Service;
import android.car.Car;
import android.car.hardware.property.CarPropertyManager;
import android.car.media.CarAudioManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.activity.d;
import androidx.fragment.app.q;
import com.ex.auto.QuickAccessFloaterService;
import g0.a;
import h2.l;
import i2.g;
import i2.m;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import kotlinx.coroutines.scheduling.h;
import l2.b;
import o2.k;
import w0.a0;
import w0.ab;
import w0.b7;
import w0.d0;
import w0.d4;
import w0.df;
import w0.e8;
import w0.ef;
import w0.eh;
import w0.hf;
import w0.hg;
import w0.i9;
import w0.j0;
import w0.jf;
import w0.k0;
import w0.kf;
import w0.l1;
import w0.lh;
import w0.m4;
import w0.mg;
import w0.n;
import w0.n4;
import w0.p1;
import w0.pf;
import w0.sf;
import w0.t1;
import w0.u;
import w0.ue;
import w0.v2;
import w0.ve;
import w0.w;
import w0.we;
import w0.xe;
import w0.y2;
import w0.y6;
import w0.z0;
import w0.ze;
import x1.c;
import y1.f;
import y1.i;

/* JADX INFO: loaded from: classes.dex */
public final class QuickAccessFloaterService extends Service {
    public static volatile QuickAccessFloaterService x0;
    public static volatile boolean y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public static volatile boolean f1133z0;
    public boolean A;
    public float F;
    public int G;
    public boolean H;
    public volatile Car J;
    public volatile CarPropertyManager K;
    public volatile CarAudioManager L;
    public volatile boolean M;
    public volatile boolean N;
    public volatile boolean Q;
    public long U;
    public a V;
    public pf W;
    public LinearLayout X;
    public TextView Y;
    public WindowManager b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public WindowManager.LayoutParams f1137c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public eh f1139d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public LinearLayout f1141e;
    public TextView f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public LinearLayout f1144g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public LinearLayout f1146h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public LinearLayout f1148i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public TextView f1150j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public TextView f1152k;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public volatile Toast f1153k0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public TextView f1154l;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public Integer f1155l0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public TextView f1156m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public TextView f1158n;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public volatile Integer f1159n0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public TextView f1160o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public TextView f1162p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public TextView f1164q;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public volatile Float f1165q0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public sf f1166r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public sf f1168s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public sf f1170t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public volatile Boolean f1171u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public sf f1172v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public sf f1173w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public sf f1174x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public sf f1175y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f1176z;
    public static final int t0 = Politica.h(26);

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public static final int f1130u0 = u.f4288a;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public static final List f1131v0 = f.U(new String[]{"wifi", "drive_regen", "aa_activate", "aa_reset", "avas", "screen_off", "aeb", "telemetry", "split_screen", "app_pip", "power_off", "close_apps", "screen_rest", "recirc_guard", "karaoke", "fullscreen", "cronometro", "regressiva"});

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public static final Set f1132w0 = k1.a.P("telemetry", "power_off");
    public static final int A0 = Color.parseColor("#F20B131E");
    public static final int B0 = Color.parseColor("#0F1722");
    public static final int C0 = Color.parseColor("#0B1521");
    public static final int D0 = Color.parseColor("#1C68EF");
    public static final int E0 = Color.parseColor("#2E7DFF");
    public static final int F0 = Color.parseColor("#1FBF75");
    public static final int G0 = Color.parseColor("#E85D5D");
    public static final int H0 = Color.parseColor("#EAF2F8");
    public static final int I0 = Color.parseColor("#7E8CA0");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Handler f1134a = new Handler(Looper.getMainLooper());
    public final c B = new c(new ze(6, this));
    public final c C = new c(new ze(7, this));
    public final c D = new c(new ze(8, this));
    public final c E = new c(new ze(9, this));
    public final ve I = new ve(12, this);
    public final ScheduledThreadPoolExecutor O = t1.a("quick-access-car", new l1(15));
    public final AtomicInteger P = new AtomicInteger();
    public int R = 166;
    public int S = 1;
    public int T = 1;
    public final d Z = new d(18, this);

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final ze f1135a0 = new ze(10, this);

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final pf f1136b0 = new pf(1, this);

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public final pf f1138c0 = new pf(7, this);

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public final pf f1140d0 = new pf(0, this);

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final pf f1142e0 = new pf(6, this);

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final pf f1143f0 = new pf(4, this);

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public final pf f1145g0 = new pf(2, this);

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public final pf f1147h0 = new pf(3, this);

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public final pf f1149i0 = new pf(8, this);

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public final pf f1151j0 = new pf(9, this);

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public final int[] f1157m0 = {1, 49, 5, 0};

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public final AtomicInteger f1161o0 = new AtomicInteger();

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public final AtomicInteger f1163p0 = new AtomicInteger();

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public final Set f1167r0 = k1.a.P(570491137, 570491138, 570491139);

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public final Set f1169s0 = k1.a.P(537003265, 537003266, 537003267);

    public static String I(int i3, String str) {
        try {
            return new h(5555).b(i3, str);
        } catch (Exception e3) {
            return "ADB_FAIL: " + e3.getMessage();
        }
    }

    public static void n(AlertDialog alertDialog) {
        Button button = alertDialog.getButton(-2);
        int i3 = D0;
        if (button != null) {
            button.setTextColor(i3);
        }
        Button button2 = alertDialog.getButton(-1);
        if (button2 != null) {
            button2.setTextColor(i3);
        }
    }

    public final Integer A(int i3, int[] iArr, Set set) {
        Integer numC;
        CarPropertyManager carPropertyManager = this.K;
        if (carPropertyManager != null) {
            for (int i4 : iArr) {
                try {
                    numC = p1.c(carPropertyManager, i3, i4);
                } catch (Throwable unused) {
                    numC = null;
                }
                if (numC != null && set.contains(numC)) {
                    return numC;
                }
            }
        }
        return null;
    }

    public final sf B(String str) {
        sf sfVar = new sf(this);
        float fX = x();
        sfVar.setIconId(str);
        sfVar.setIconColor(Integer.valueOf(H0));
        int i3 = (int) (13 * fX);
        if (i3 < 5) {
            i3 = 5;
        }
        int iP = p(i3);
        sfVar.setPadding(iP, iP, iP, iP);
        sfVar.setGravity(17);
        int i4 = (int) (16 * fX);
        if (i4 < 4) {
            i4 = 4;
        }
        sfVar.setBackground(M(C0, i4, Integer.valueOf(B0), 1));
        sfVar.setOnClickListener(new y6(this, str, sfVar, 8));
        return sfVar;
    }

    public final TextView C(int i3, String str) {
        TextView textView = new TextView(this);
        String upperCase = str.toUpperCase(Locale.ROOT);
        g.d(upperCase, "toUpperCase(...)");
        textView.setText(upperCase);
        textView.setTextSize(x() * 10.0f);
        textView.setTextColor(i3);
        textView.setLetterSpacing(0.08f);
        textView.setTypeface(textView.getTypeface(), 1);
        return textView;
    }

    public final TextView D(String str, int i3, h2.a aVar) {
        TextView textView = new TextView(this);
        textView.setText(str);
        textView.setTextSize(x() * 12.0f);
        textView.setGravity(17);
        textView.setTag(Integer.valueOf(i3));
        textView.setTextColor(H0);
        int iX = (int) (x() * 12);
        if (iX < 4) {
            iX = 4;
        }
        textView.setBackground(M(i3, iX, null, 0));
        textView.setOnClickListener(new a0(aVar, 8, this));
        return textView;
    }

    public final void E(String str, ArrayList arrayList) {
        int i3;
        if (arrayList.isEmpty()) {
            return;
        }
        try {
            m mVar = new m();
            ArrayList arrayList2 = new ArrayList(i.X(arrayList));
            int size = arrayList.size();
            int i4 = 0;
            int i5 = 0;
            while (i5 < size) {
                Object obj = arrayList.get(i5);
                i5++;
                x1.d dVar = (x1.d) obj;
                String str2 = (String) dVar.f4645a;
                List<Drawable> list = (List) dVar.b;
                h2.a aVar = (h2.a) dVar.f4646c;
                LinearLayout linearLayout = new LinearLayout(this);
                linearLayout.setOrientation(i4);
                linearLayout.setGravity(16);
                linearLayout.setClickable(true);
                linearLayout.setFocusable(true);
                linearLayout.setBackgroundResource(R.drawable.bg_preset_chip);
                linearLayout.setBackgroundTintList(ColorStateList.valueOf(getColor(R.color.cx_surface_alt)));
                linearLayout.setPadding(p(16), p(12), p(16), p(12));
                linearLayout.setOnClickListener(new y6(mVar, this, aVar, 9));
                for (Drawable drawable : list) {
                    ImageView imageView = new ImageView(this);
                    if (drawable != null) {
                        imageView.setImageDrawable(drawable);
                    } else {
                        imageView.setImageResource(android.R.drawable.sym_def_app_icon);
                    }
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(p(56), p(56));
                    layoutParams.setMarginEnd(p(12));
                    linearLayout.addView(imageView, layoutParams);
                }
                TextView textView = new TextView(this);
                textView.setText(str2);
                textView.setTextSize(19.0f);
                textView.setTextColor(H0);
                textView.setMaxLines(1);
                textView.setEllipsize(TextUtils.TruncateAt.END);
                linearLayout.addView(textView, new LinearLayout.LayoutParams(0, -2, 1.0f));
                arrayList2.add(linearLayout);
                i4 = 0;
            }
            int i6 = i4;
            LinearLayout linearLayout2 = new LinearLayout(this);
            linearLayout2.setOrientation(1);
            linearLayout2.setPadding(p(20), p(12), p(20), p(12));
            int size2 = arrayList2.size();
            int i7 = i6;
            while (i7 < size2) {
                Object obj2 = arrayList2.get(i7);
                i7++;
                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(p(460), -2);
                layoutParams2.topMargin = p(10);
                linearLayout2.addView((LinearLayout) obj2, layoutParams2);
            }
            AlertDialog.Builder customTitle = new AlertDialog.Builder(this).setCustomTitle(o(str));
            ScrollView scrollView = new ScrollView(this);
            scrollView.addView(linearLayout2);
            AlertDialog alertDialogCreate = customTitle.setView(scrollView).setNegativeButton(getString(R.string.common_cancel), (DialogInterface.OnClickListener) null).create();
            mVar.f2292a = alertDialogCreate;
            if (alertDialogCreate == null) {
                g.h("dlg");
                throw null;
            }
            Window window = alertDialogCreate.getWindow();
            if (window != null) {
                window.setType(2038);
            }
            Object obj3 = mVar.f2292a;
            if (obj3 == null) {
                g.h("dlg");
                throw null;
            }
            Window window2 = ((AlertDialog) obj3).getWindow();
            if (window2 != null) {
                window2.setBackgroundDrawableResource(R.drawable.bg_central_ex_card);
            }
            Object obj4 = mVar.f2292a;
            if (obj4 == null) {
                g.h("dlg");
                throw null;
            }
            Window window3 = ((AlertDialog) obj4).getWindow();
            if (window3 != null) {
                int i8 = getResources().getDisplayMetrics().heightPixels;
                try {
                    WindowManager.LayoutParams layoutParams3 = this.f1137c;
                    i3 = layoutParams3 != null ? layoutParams3.y : i6;
                } catch (Throwable unused) {
                }
                WindowManager.LayoutParams attributes = window3.getAttributes();
                attributes.gravity = i3 < i8 / 2 ? 48 : 80;
                attributes.y = p(80);
                window3.setAttributes(attributes);
            }
            Object obj5 = mVar.f2292a;
            if (obj5 == null) {
                g.h("dlg");
                throw null;
            }
            ((AlertDialog) obj5).show();
            Object obj6 = mVar.f2292a;
            if (obj6 == null) {
                g.h("dlg");
                throw null;
            }
            n((AlertDialog) obj6);
        } catch (Exception e3) {
            Log.w("QuickAccessFloater", "menu de atalhos: " + e3.getMessage());
            String string = getString(R.string.k_atalhos_menu_falhou);
            g.d(string, "getString(...)");
            G(string);
        }
    }

    public final LinearLayout.LayoutParams F() {
        float fX = x();
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(p((int) (76 * fX)), p((int) (46 * fX)));
        layoutParams.setMargins(p(3), p(2), p(3), p(2));
        return layoutParams;
    }

    public final void G(String str) {
        if (!g.a(Looper.myLooper(), Looper.getMainLooper())) {
            this.f1134a.post(new ab(this, 7, str));
            return;
        }
        Toast toast = this.f1153k0;
        if (toast != null) {
            toast.setText(str);
            toast.show();
        } else {
            Toast toastMakeText = Toast.makeText(this, str, 0);
            toastMakeText.show();
            this.f1153k0 = toastMakeText;
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final void H(final TextView textView, String str) {
        int i3 = 8;
        final int i4 = 1;
        final int i5 = 0;
        switch (str.hashCode()) {
            case -2062114727:
                if (str.equals("close_apps")) {
                    P(800L);
                    new Thread(new ve(11, this)).start();
                    break;
                }
                break;
            case -1658020302:
                if (str.equals("aa_activate")) {
                    P(3000L);
                    if (textView != null) {
                        String string = textView.getText().toString();
                        this.f1134a.post(new Runnable() { // from class: w0.gf
                            @Override // java.lang.Runnable
                            public final void run() {
                                int i6 = i5;
                                TextView textView2 = textView;
                                switch (i6) {
                                    case 0:
                                        int i7 = QuickAccessFloaterService.t0;
                                        textView2.setText("...");
                                        break;
                                    default:
                                        int i8 = QuickAccessFloaterService.t0;
                                        textView2.setText("...");
                                        break;
                                }
                            }
                        });
                        new Thread(new hf(this, textView, string, i5)).start();
                    }
                    break;
                }
                break;
            case -936045084:
                if (str.equals("karaoke")) {
                    P(3000L);
                    boolean z2 = r().getBoolean("lyrics_floater_enabled", false);
                    r().edit().putBoolean("lyrics_floater_enabled", !z2).apply();
                    Intent intent = new Intent(this, (Class<?>) LyricsFloaterService.class);
                    if (z2) {
                        stopService(intent);
                    } else {
                        startForegroundService(intent);
                    }
                    J();
                    break;
                }
                break;
            case -793615751:
                if (str.equals("app_pip")) {
                    SharedPreferences sharedPreferences = getSharedPreferences("tela_preta_prefs", 0);
                    g.d(sharedPreferences, "getSharedPreferences(...)");
                    l2.c cVarT = k1.a.T(0, 5);
                    ArrayList arrayList = new ArrayList(i.X(cVarT));
                    Iterator it = cVarT.iterator();
                    while (true) {
                        b bVar = (b) it;
                        if (!bVar.f2428c) {
                            ArrayList arrayList2 = new ArrayList();
                            int size = arrayList.size();
                            int i6 = 0;
                            while (i6 < size) {
                                Object obj = arrayList.get(i6);
                                i6++;
                                j0 j0Var = (j0) obj;
                                if (j0Var.f3735c && !k.m0(j0Var.b)) {
                                    arrayList2.add(obj);
                                }
                            }
                            if (!arrayList2.isEmpty() && AppPipFloaterService.f769x == null) {
                                String strC = e8.C(this, "app_pip");
                                ArrayList arrayList3 = new ArrayList(i.X(arrayList2));
                                int size2 = arrayList2.size();
                                int i7 = 0;
                                while (i7 < size2) {
                                    Object obj2 = arrayList2.get(i7);
                                    i7++;
                                    j0 j0Var2 = (j0) obj2;
                                    String string2 = j0Var2.b;
                                    if (k.m0(string2)) {
                                        string2 = "";
                                    } else {
                                        try {
                                            PackageManager packageManager = getPackageManager();
                                            string2 = packageManager.getApplicationLabel(packageManager.getApplicationInfo(string2, 0)).toString();
                                        } catch (Throwable unused) {
                                        }
                                    }
                                    arrayList3.add(new x1.d(string2, k1.a.I(y(j0Var2.b)), new y2(this, 16, j0Var2)));
                                }
                                E(strC, arrayList3);
                            } else {
                                P(800L);
                                if (AppPipFloaterService.f769x != null) {
                                    AppPipFloaterService appPipFloaterService = AppPipFloaterService.f769x;
                                    if (appPipFloaterService == null) {
                                        stopService(new Intent(this, (Class<?>) AppPipFloaterService.class));
                                    } else {
                                        appPipFloaterService.d();
                                    }
                                } else {
                                    startForegroundService(new Intent(this, (Class<?>) AppPipFloaterService.class));
                                    j();
                                }
                                sf sfVar = this.f1175y;
                                if (sfVar != null) {
                                    if (AppPipFloaterService.f769x != null) {
                                        k(sfVar, E0);
                                    } else {
                                        l(sfVar);
                                    }
                                    sfVar.setTextColor(H0);
                                }
                            }
                        } else {
                            int iNextInt = bVar.nextInt();
                            String string3 = sharedPreferences.getString(String.format("pip_app_%d_pkg", Arrays.copyOf(new Object[]{Integer.valueOf(iNextInt)}, 1)), "");
                            if (string3 == null) {
                                string3 = "";
                            }
                            arrayList.add(new j0(iNextInt, string3, sharedPreferences.getBoolean(String.format("pip_app_%d_on", Arrays.copyOf(new Object[]{Integer.valueOf(iNextInt)}, 1)), false)));
                        }
                        break;
                    }
                }
                break;
            case -753149968:
                if (str.equals("recirc_guard")) {
                    P(3000L);
                    int i8 = 1;
                    r().edit().putBoolean("recirc_guard_enabled", !r().getBoolean("recirc_guard_enabled", false)).apply();
                    int[] iArr = CentralWatchdogService.S2;
                    CentralWatchdogService centralWatchdogService = CentralWatchdogService.V2;
                    if (centralWatchdogService != null) {
                        centralWatchdogService.f811a.post(new v2(centralWatchdogService, i8));
                    }
                    sf sfVar2 = this.f1173w;
                    if (sfVar2 != null) {
                        Y(sfVar2);
                    }
                    break;
                }
                break;
            case -417036516:
                if (str.equals("screen_off")) {
                    m();
                    if (!r().getBoolean("screen_off_warning_seen", false)) {
                        this.f1134a.postDelayed(new ve(i3, this), 300L);
                    } else {
                        this.f1134a.postDelayed(new ve(7, this), 300L);
                    }
                    break;
                }
                break;
            case -179908303:
                if (str.equals("split_screen")) {
                    SharedPreferences sharedPreferences2 = getSharedPreferences("tela_preta_prefs", 0);
                    g.d(sharedPreferences2, "getSharedPreferences(...)");
                    l2.c cVarT2 = k1.a.T(0, 5);
                    ArrayList arrayList4 = new ArrayList(i.X(cVarT2));
                    Iterator it2 = cVarT2.iterator();
                    while (true) {
                        b bVar2 = (b) it2;
                        if (!bVar2.f2428c) {
                            ArrayList arrayList5 = new ArrayList();
                            int size3 = arrayList4.size();
                            int i9 = 0;
                            while (i9 < size3) {
                                Object obj3 = arrayList4.get(i9);
                                i9++;
                                k0 k0Var = (k0) obj3;
                                if (k0Var.f3778d && !k.m0(k0Var.b) && !k.m0(k0Var.f3777c)) {
                                    arrayList5.add(obj3);
                                }
                            }
                            if (!arrayList5.isEmpty() && SplitFloaterService.f1178v == null) {
                                String strC2 = e8.C(this, "split_screen");
                                ArrayList arrayList6 = new ArrayList(i.X(arrayList5));
                                int size4 = arrayList5.size();
                                while (i5 < size4) {
                                    Object obj4 = arrayList5.get(i5);
                                    i5++;
                                    k0 k0Var2 = (k0) obj4;
                                    arrayList6.add(new x1.d(t1.Z(this, k0Var2.b) + "  |  " + t1.Z(this, k0Var2.f3777c), f.U(new Drawable[]{y(k0Var2.b), y(k0Var2.f3777c)}), new y2(this, 15, k0Var2)));
                                }
                                E(strC2, arrayList6);
                            } else {
                                P(800L);
                                if (SplitFloaterService.f1178v != null) {
                                    SplitFloaterService splitFloaterService = SplitFloaterService.f1178v;
                                    if (splitFloaterService == null) {
                                        stopService(new Intent(this, (Class<?>) SplitFloaterService.class));
                                    } else {
                                        mg mgVar = splitFloaterService.f1186j;
                                        mg mgVar2 = splitFloaterService.f1187k;
                                        if (mgVar == null && mgVar2 == null) {
                                            splitFloaterService.stopSelf();
                                        } else {
                                            splitFloaterService.f1191o = true;
                                            splitFloaterService.h();
                                            new Thread(new hg(mgVar2, splitFloaterService, mgVar, i5)).start();
                                        }
                                    }
                                } else {
                                    startForegroundService(new Intent(this, (Class<?>) SplitFloaterService.class));
                                    j();
                                }
                                sf sfVar3 = this.f1174x;
                                if (sfVar3 != null) {
                                    if (SplitFloaterService.f1178v != null) {
                                        k(sfVar3, E0);
                                    } else {
                                        l(sfVar3);
                                    }
                                    sfVar3.setTextColor(H0);
                                }
                            }
                        } else {
                            int iNextInt2 = bVar2.nextInt();
                            String string4 = sharedPreferences2.getString(String.format("split_grupo_%d_esq", Arrays.copyOf(new Object[]{Integer.valueOf(iNextInt2)}, 1)), "");
                            if (string4 == null) {
                                string4 = "";
                            }
                            String string5 = sharedPreferences2.getString(String.format("split_grupo_%d_dir", Arrays.copyOf(new Object[]{Integer.valueOf(iNextInt2)}, 1)), "");
                            if (string5 == null) {
                                string5 = "";
                            }
                            arrayList4.add(new k0(iNextInt2, string4, string5, sharedPreferences2.getBoolean(String.format("split_grupo_%d_on", Arrays.copyOf(new Object[]{Integer.valueOf(iNextInt2)}, 1)), false)));
                        }
                        break;
                    }
                }
                break;
            case -43141177:
                if (str.equals("screen_rest")) {
                    P(800L);
                    V(true);
                    break;
                }
                break;
            case 96446:
                if (str.equals("aeb")) {
                    P(3000L);
                    if (this.K != null) {
                        Boolean bool = this.f1171u;
                        boolean z3 = !(bool != null ? bool.booleanValue() : false);
                        sf sfVar4 = this.f1170t;
                        if (sfVar4 != null) {
                            sfVar4.setText("...");
                        }
                        r().edit().putBoolean("aeb_desired", z3).apply();
                        O(new jf(z3, this));
                    } else {
                        z();
                        String string6 = getString(R.string.k_carservice_unavailable);
                        g.d(string6, "getString(...)");
                        G(string6);
                    }
                    break;
                }
                break;
            case 3006247:
                if (str.equals("avas")) {
                    P(3000L);
                    if (this.K != null) {
                        boolean z4 = !r().getBoolean("avas_muted_saved", false);
                        r().edit().putBoolean("avas_muted_saved", z4).apply();
                        sf sfVar5 = this.f1168s;
                        if (sfVar5 != null) {
                            X(sfVar5);
                        }
                        O(new jf(this, z4, i5));
                    } else {
                        z();
                        String string7 = getString(R.string.k_carservice_unavailable);
                        g.d(string7, "getString(...)");
                        G(string7);
                    }
                    break;
                }
                break;
            case 3649301:
                if (str.equals("wifi")) {
                    P(800L);
                    boolean zIsWifiEnabled = u().isWifiEnabled();
                    u().setWifiEnabled(!zIsWifiEnabled);
                    if (!zIsWifiEnabled) {
                        this.f1134a.postDelayed(new ve(6, this), 2000L);
                    }
                    break;
                }
                break;
            case 110066619:
                if (str.equals("fullscreen")) {
                    P(600L);
                    new Thread(new ve(9, this)).start();
                    break;
                }
                break;
            case 134853144:
                if (str.equals("cronometro")) {
                    P(600L);
                    a("crono");
                    break;
                }
                break;
            case 270595184:
                if (str.equals("aa_reset")) {
                    P(3000L);
                    if (textView != null) {
                        String string8 = textView.getText().toString();
                        this.f1134a.post(new Runnable() { // from class: w0.gf
                            @Override // java.lang.Runnable
                            public final void run() {
                                int i10 = i4;
                                TextView textView2 = textView;
                                switch (i10) {
                                    case 0:
                                        int i11 = QuickAccessFloaterService.t0;
                                        textView2.setText("...");
                                        break;
                                    default:
                                        int i12 = QuickAccessFloaterService.t0;
                                        textView2.setText("...");
                                        break;
                                }
                            }
                        });
                        new Thread(new hf(this, textView, string8, i4)).start();
                    }
                    break;
                }
                break;
            case 726539592:
                if (str.equals("drive_regen")) {
                    boolean z5 = this.A;
                    this.A = !z5;
                    if (!z5) {
                        K();
                        LinearLayout linearLayout = this.f1148i;
                        if (linearLayout != null) {
                            linearLayout.setVisibility(0);
                        }
                        P(10000L);
                    } else {
                        LinearLayout linearLayout2 = this.f1148i;
                        if (linearLayout2 != null) {
                            linearLayout2.setVisibility(8);
                        }
                        P(3000L);
                    }
                    break;
                }
                break;
            case 780346297:
                if (str.equals("telemetry")) {
                    P(3000L);
                    boolean z6 = !r().getBoolean("telemetry_on", false);
                    r().edit().putBoolean("telemetry_on", z6).apply();
                    VhalProviderService.c(this, z6);
                    sf sfVar6 = this.f1172v;
                    if (sfVar6 != null) {
                        Z(sfVar6);
                    }
                    break;
                }
                break;
            case 845503285:
                if (str.equals("power_off")) {
                    P(800L);
                    if (this.K != null) {
                        O(new kf(i5, this));
                    } else {
                        z();
                        String string9 = getString(R.string.k_carservice_unavailable);
                        g.d(string9, "getString(...)");
                        G(string9);
                    }
                    break;
                }
                break;
            case 1421312269:
                if (str.equals("regressiva")) {
                    P(600L);
                    a("regressiva");
                    break;
                }
                break;
        }
    }

    public final void J() {
        this.f1134a.post(new ve(5, this));
    }

    public final void K() {
        int i3;
        String string;
        Integer numValueOf = s().contains("saved_drive") ? Integer.valueOf(s().getInt("saved_drive", 0)) : null;
        Integer numValueOf2 = s().contains("saved_regen") ? Integer.valueOf(s().getInt("saved_regen", 0)) : null;
        Set set = this.f1167r0;
        n4 n4VarB = t1.B(numValueOf, A(570491136, new int[]{0, 1, 16777216}, set), set);
        Integer num = n4VarB.f3930a;
        Set set2 = this.f1169s0;
        n4 n4VarB2 = t1.B(numValueOf2, A(537003264, new int[]{0, 1}, set2), set2);
        Integer num2 = n4VarB2.f3930a;
        a1.g gVar = new a1.g(this, n4VarB, n4VarB2, 25);
        Handler handler = this.f1134a;
        handler.post(gVar);
        int iIntValue = num != null ? num.intValue() : -1;
        int iIntValue2 = num2 != null ? num2.intValue() : -1;
        int i4 = F0;
        int i5 = E0;
        int i6 = G0;
        int i7 = C0;
        switch (iIntValue) {
            case 570491137:
                i3 = i4;
                break;
            case 570491138:
                i3 = i5;
                break;
            case 570491139:
                i3 = i6;
                break;
            default:
                i3 = i7;
                break;
        }
        String string2 = "";
        switch (iIntValue) {
            case 570491137:
                string = getString(R.string.k_mode_eco_abbr);
                break;
            case 570491138:
                string = getString(R.string.k_mode_comfort_abbr);
                break;
            case 570491139:
                string = getString(R.string.k_mode_sport_abbr);
                break;
            default:
                string = "";
                break;
        }
        g.b(string);
        switch (iIntValue2) {
            case 537003265:
                i4 = i6;
                break;
            case 537003266:
                i4 = i5;
                break;
            case 537003267:
                break;
            default:
                i4 = i7;
                break;
        }
        switch (iIntValue2) {
            case 537003265:
                string2 = getString(R.string.k_mode_weak_abbr);
                break;
            case 537003266:
                string2 = getString(R.string.k_mode_medium_abbr);
                break;
            case 537003267:
                string2 = getString(R.string.k_mode_strong_abbr);
                break;
        }
        g.b(string2);
        if (num != null && !n4VarB.b) {
            i3 = (i3 & 16777215) | 1711276032;
        }
        int i8 = i3;
        if (num2 != null && !n4VarB2.b) {
            i4 = (i4 & 16777215) | 1711276032;
        }
        int i9 = i4;
        int iX = (int) (x() * 14);
        handler.post(new ef(this, i8, iX >= 4 ? iX : 4, i9, 0));
    }

    public final Integer L(CarPropertyManager carPropertyManager) {
        Integer num = this.f1155l0;
        for (int i3 : num != null ? new int[]{num.intValue()} : this.f1157m0) {
            try {
                if (p1.c(carPropertyManager, 356517120, i3) != null) {
                    this.f1155l0 = Integer.valueOf(i3);
                    return Integer.valueOf(i3);
                }
                continue;
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public final GradientDrawable M(int i3, int i4, Integer num, int i5) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(i3);
        gradientDrawable.setCornerRadius(p(i4));
        if (num != null && i5 > 0) {
            gradientDrawable.setStroke(p(i5), num.intValue());
        }
        return gradientDrawable;
    }

    public final GradientDrawable N(int i3, int i4, boolean z2, boolean z3, boolean z4, boolean z5) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(i3);
        float fP = p(i4);
        float f = z2 ? fP : 0.0f;
        float f3 = z2 ? fP : 0.0f;
        float f4 = z3 ? fP : 0.0f;
        float f5 = z3 ? fP : 0.0f;
        float f6 = z4 ? fP : 0.0f;
        float f7 = z4 ? fP : 0.0f;
        float f8 = z5 ? fP : 0.0f;
        if (!z5) {
            fP = 0.0f;
        }
        gradientDrawable.setCornerRadii(new float[]{f, f3, f4, f5, f6, f7, f8, fP});
        return gradientDrawable;
    }

    public final void O(l lVar) {
        if (this.K == null || this.M) {
            return;
        }
        try {
            this.O.execute(new ab(this, 8, lVar));
        } catch (RejectedExecutionException unused) {
        }
    }

    public final void P(long j3) {
        Handler handler = this.f1134a;
        ve veVar = this.I;
        handler.removeCallbacks(veVar);
        handler.postDelayed(veVar, j3);
    }

    public final void Q(int i3) {
        s().edit().putInt("saved_drive", i3).apply();
        K();
        e();
    }

    public final void R(int i3) {
        s().edit().putInt("saved_regen", i3).apply();
        K();
        e();
    }

    public final void S(TextView textView, m4 m4Var) {
        if (textView == null) {
            return;
        }
        Object tag = textView.getTag();
        Integer num = tag instanceof Integer ? (Integer) tag : null;
        int iIntValue = num != null ? num.intValue() : E0;
        int iOrdinal = m4Var.ordinal();
        if (iOrdinal != 0) {
            int i3 = C0;
            if (iOrdinal == 1) {
                textView.setBackground(M(i3, 12, Integer.valueOf(iIntValue), 3));
                textView.setTextColor(iIntValue);
            } else {
                if (iOrdinal != 2) {
                    throw new q();
                }
                textView.setBackground(M(i3, 12, Integer.valueOf(iIntValue), 1));
                textView.setTextColor(I0);
            }
        } else {
            textView.setBackground(M(iIntValue, 12, null, 0));
            textView.setTextColor(H0);
        }
        textView.setAlpha(1.0f);
    }

    public final float T() {
        return k1.a.k(t().getInt("qa_tab_alpha", 90), 0, 100) / 100.0f;
    }

    public final x1.a U() {
        return new x1.a(Integer.valueOf(p(k1.a.k((int) ((k1.a.k(t().getInt("qa_panel_width_pct", 100), 50, 200) / 100.0f) * 38), 20, 120))), Integer.valueOf(p(k1.a.k((int) ((k1.a.k(t().getInt("qa_panel_height_pct", 100), 50, 200) / 100.0f) * 64), 30, 200))));
    }

    public final void V(boolean z2) {
        if (this.Q) {
            return;
        }
        this.Q = true;
        new Thread(new d0(this, z2, 4)).start();
    }

    public final void W(TextView textView) {
        Boolean bool = this.f1171u;
        if (g.a(bool, Boolean.TRUE)) {
            k(textView, F0);
        } else if (g.a(bool, Boolean.FALSE)) {
            k(textView, G0);
        } else {
            if (bool != null) {
                throw new q();
            }
            l(textView);
        }
        textView.setText("AEB");
        textView.setTextColor(H0);
    }

    public final void X(sf sfVar) {
        boolean z2 = r().getBoolean("avas_muted_saved", false);
        k(sfVar, z2 ? G0 : F0);
        sfVar.setText(z2 ? "AVAS\n✗" : "AVAS\n✓");
        sfVar.setTextColor(H0);
    }

    public final void Y(sf sfVar) {
        boolean z2 = r().getBoolean("recirc_guard_enabled", false);
        if (z2) {
            k(sfVar, F0);
        } else {
            l(sfVar);
        }
        sfVar.setText(z2 ? "🌀\n✓" : "🌀\n✗");
        sfVar.setTextColor(H0);
    }

    public final void Z(sf sfVar) {
        boolean z2 = r().getBoolean("telemetry_on", false);
        if (z2) {
            k(sfVar, F0);
        } else {
            l(sfVar);
        }
        sfVar.setText(z2 ? "📡\n✓" : "📡");
        sfVar.setTextColor(H0);
    }

    public final void a(String str) {
        try {
            if (TimerFloaterService.f1220o) {
                stopService(new Intent(this, (Class<?>) TimerFloaterService.class));
            } else {
                Intent intentPutExtra = new Intent(this, (Class<?>) TimerFloaterService.class).putExtra("modo", str);
                g.d(intentPutExtra, "putExtra(...)");
                startService(intentPutExtra);
            }
        } catch (Throwable unused) {
        }
    }

    public final void a0(TextView textView) {
        if (u().isWifiEnabled()) {
            WifiInfo connectionInfo = u().getConnectionInfo();
            if ((connectionInfo != null ? connectionInfo.getNetworkId() : -1) != -1) {
                k(textView, F0);
            } else {
                k(textView, E0);
            }
        } else {
            l(textView);
        }
        textView.setTextColor(H0);
    }

    @Override // android.app.Service, android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        g.e(context, "base");
        super.attachBaseContext(e8.p(context));
    }

    public final String b(int i3, String str) {
        return w0.m.x(str, i3, null, new n(this, 9));
    }

    public final void b0() {
        a aVar = this.V;
        if (aVar != null) {
            try {
                getContentResolver().unregisterContentObserver(aVar);
            } catch (Exception unused) {
            }
        }
        this.V = null;
        pf pfVar = this.W;
        if (pfVar != null) {
            try {
                unregisterReceiver(pfVar);
            } catch (Exception unused2) {
            }
        }
        this.W = null;
        v(2);
        this.Q = false;
        f1133z0 = false;
        new Thread(new ve(0, this)).start();
    }

    public final void c(int i3) {
        if (this.K == null) {
            z();
            String string = getString(R.string.k_carservice_unavailable);
            g.d(string, "getString(...)");
            G(string);
            return;
        }
        Integer num = this.f1159n0;
        if (num == null) {
            O(new we(this, i3, 3));
            return;
        }
        int iK = k1.a.k(num.intValue() + i3, 0, 7);
        if (iK == num.intValue()) {
            return;
        }
        this.f1159n0 = Integer.valueOf(iK);
        String string2 = getString(R.string.k_fan_speed_toast, Integer.valueOf(iK));
        g.d(string2, "getString(...)");
        G(string2);
        O(new we(this, this.f1161o0.incrementAndGet(), 2));
    }

    public final void d() {
        d4 d4Var;
        SharedPreferences sharedPreferences = getSharedPreferences("tela_preta_prefs", 0);
        boolean z2 = sharedPreferences.getBoolean("quick_access_enabled", false);
        boolean z3 = sharedPreferences.getBoolean("gestures_enabled", false);
        d4 d4Var2 = d4.f3487a;
        if (z2) {
            d4Var = d4Var2;
        } else {
            d4Var = z3 ? d4.b : d4.f3488c;
        }
        if (d4Var != d4Var2) {
            eh ehVar = this.f1139d;
            if (ehVar != null) {
                try {
                    WindowManager windowManager = this.b;
                    if (windowManager != null) {
                        windowManager.removeView(ehVar);
                    }
                } catch (Exception unused) {
                }
            }
            this.f1139d = null;
            this.f1144g = null;
            this.f = null;
            return;
        }
        if (this.f1139d == null) {
            Object systemService = getSystemService("window");
            g.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
            this.b = (WindowManager) systemService;
            eh ehVar2 = new eh(this, null);
            ehVar2.b = 160.0f;
            ehVar2.setOrientation(0);
            this.f1139d = ehVar2;
            TextView textView = new TextView(this);
            textView.setText("›");
            textView.setTextSize(22.0f);
            textView.setTextColor(D0);
            textView.setGravity(17);
            int i3 = A0;
            textView.setBackground(N(i3, 16, false, true, true, false));
            this.f = textView;
            textView.setOnTouchListener(new o(this, 4));
            x1.a aVarU = U();
            int iIntValue = ((Number) aVarU.f4641a).intValue();
            int iIntValue2 = ((Number) aVarU.b).intValue();
            eh ehVar3 = this.f1139d;
            g.b(ehVar3);
            ehVar3.addView(this.f, new LinearLayout.LayoutParams(iIntValue, iIntValue2));
            LinearLayout linearLayout = new LinearLayout(this);
            linearLayout.setOrientation(1);
            linearLayout.setBackground(N(i3, 18, false, true, true, false));
            linearLayout.setVisibility(8);
            this.f1144g = linearLayout;
            LinearLayout linearLayout2 = new LinearLayout(this);
            linearLayout2.setOrientation(0);
            linearLayout2.setGravity(16);
            linearLayout2.setPadding(p(6), p(6), p(8), p(6));
            this.f1146h = linearLayout2;
            i();
            LinearLayout linearLayout3 = this.f1144g;
            g.b(linearLayout3);
            linearLayout3.addView(this.f1146h);
            this.f1148i = g();
            LinearLayout linearLayout4 = this.f1144g;
            g.b(linearLayout4);
            linearLayout4.addView(this.f1148i);
            eh ehVar4 = this.f1139d;
            g.b(ehVar4);
            ehVar4.addView(this.f1144g, new LinearLayout.LayoutParams(-2, -2));
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, 2038, 264, -3);
            layoutParams.gravity = 8388627;
            layoutParams.x = 0;
            layoutParams.y = t().getInt("qa_y_pos", 0);
            this.f1137c = layoutParams;
            WindowManager windowManager2 = this.b;
            g.b(windowManager2);
            windowManager2.addView(this.f1139d, this.f1137c);
            TextView textView2 = this.f;
            if (textView2 != null) {
                textView2.setAlpha(T());
            }
            LinearLayout linearLayout5 = this.f1144g;
            if (linearLayout5 != null) {
                linearLayout5.setAlpha(1.0f);
            }
            eh ehVar5 = this.f1139d;
            eh ehVar6 = ehVar5 != null ? ehVar5 : null;
            if (ehVar6 != null) {
                ehVar6.setStepPx(ehVar6.getResources().getDisplayMetrics().density * 48.0f);
                ehVar6.setOnTwoFingerHorizontalSwipeListener(new e0.b(2, this));
            }
        }
    }

    public final void e() {
        int[] iArr = CentralWatchdogService.S2;
        if (t1.Y("quick_access")) {
            return;
        }
        int i3 = s().getInt("saved_drive", 570491138);
        int i4 = s().getInt("saved_regen", 537003266);
        sendBroadcast(new Intent("UPDATE_DRIVE_REGEN_MODES"));
        if (this.K == null) {
            z();
            return;
        }
        O(new b7(i3, 4));
        try {
            this.O.schedule(new ue(this, i4, 2), 450L, TimeUnit.MILLISECONDS);
        } catch (RejectedExecutionException unused) {
        }
    }

    public final void f() {
        x1.a aVarU = U();
        int iIntValue = ((Number) aVarU.f4641a).intValue();
        int iIntValue2 = ((Number) aVarU.b).intValue();
        TextView textView = this.f;
        if (textView != null) {
            textView.setLayoutParams(new LinearLayout.LayoutParams(iIntValue, iIntValue2));
        }
        TextView textView2 = this.f;
        if (textView2 != null) {
            textView2.requestLayout();
        }
    }

    public final LinearLayout g() {
        float fX = x();
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setVisibility(8);
        int i3 = (int) (14 * fX);
        if (i3 < 4) {
            i3 = 4;
        }
        int i4 = B0;
        linearLayout.setBackground(M(C0, i3, Integer.valueOf(i4), 1));
        int i5 = (int) (8 * fX);
        linearLayout.setPadding(p(i5), p(i5), p(i5), p((int) (10 * fX)));
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(0);
        linearLayout2.setPadding(p(4), 0, 0, p(5));
        String string = getString(R.string.k_qa_driving_label);
        g.d(string, "getString(...)");
        int i6 = E0;
        linearLayout2.addView(C(i6, string));
        linearLayout.addView(linearLayout2);
        LinearLayout linearLayout3 = new LinearLayout(this);
        linearLayout3.setOrientation(0);
        String string2 = getString(R.string.k_mode_eco);
        g.d(string2, "getString(...)");
        ze zeVar = new ze(0, this);
        int i7 = F0;
        this.f1150j = D(string2, i7, zeVar);
        String string3 = getString(R.string.k_mode_comfort);
        g.d(string3, "getString(...)");
        this.f1152k = D(string3, i6, new ze(1, this));
        String string4 = getString(R.string.k_mode_sport);
        g.d(string4, "getString(...)");
        ze zeVar2 = new ze(2, this);
        int i8 = G0;
        this.f1154l = D(string4, i8, zeVar2);
        TextView textView = this.f1150j;
        g.b(textView);
        TextView textView2 = this.f1152k;
        g.b(textView2);
        TextView textView3 = this.f1154l;
        g.b(textView3);
        Iterator it = f.U(new TextView[]{textView, textView2, textView3}).iterator();
        while (it.hasNext()) {
            linearLayout3.addView((TextView) it.next(), F());
        }
        View view = new View(this);
        view.setBackgroundColor(i4);
        LinearLayout linearLayout4 = new LinearLayout(this);
        linearLayout4.setOrientation(0);
        linearLayout4.setPadding(p(4), p(8), 0, p(5));
        String string5 = getString(R.string.k_qa_regen_label);
        g.d(string5, "getString(...)");
        linearLayout4.addView(C(D0, string5));
        LinearLayout linearLayout5 = new LinearLayout(this);
        linearLayout5.setOrientation(0);
        String string6 = getString(R.string.k_mode_weak);
        g.d(string6, "getString(...)");
        this.f1156m = D(string6, i8, new ze(3, this));
        String string7 = getString(R.string.k_mode_medium);
        g.d(string7, "getString(...)");
        this.f1158n = D(string7, i6, new ze(4, this));
        String string8 = getString(R.string.k_mode_strong);
        g.d(string8, "getString(...)");
        this.f1160o = D(string8, i7, new ze(5, this));
        TextView textView4 = this.f1156m;
        g.b(textView4);
        TextView textView5 = this.f1158n;
        g.b(textView5);
        TextView textView6 = this.f1160o;
        g.b(textView6);
        Iterator it2 = f.U(new TextView[]{textView4, textView5, textView6}).iterator();
        while (it2.hasNext()) {
            linearLayout5.addView((TextView) it2.next(), F());
        }
        linearLayout.addView(linearLayout3);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, p(1));
        layoutParams.setMargins(0, p(6), 0, 0);
        linearLayout.addView(view, layoutParams);
        linearLayout.addView(linearLayout4);
        linearLayout.addView(linearLayout5);
        return linearLayout;
    }

    public final LinearLayout h(ArrayList arrayList) {
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        k1.a.h(3, 3);
        int size = arrayList.size();
        ArrayList<List> arrayList2 = new ArrayList((size / 3) + (size % 3 == 0 ? 0 : 1));
        for (int i3 = 0; i3 >= 0 && i3 < size; i3 += 3) {
            int i4 = size - i3;
            if (3 <= i4) {
                i4 = 3;
            }
            ArrayList arrayList3 = new ArrayList(i4);
            for (int i5 = 0; i5 < i4; i5++) {
                arrayList3.add(arrayList.get(i5 + i3));
            }
            arrayList2.add(arrayList3);
        }
        int i6 = 0;
        for (List list : arrayList2) {
            int i7 = i6 + 1;
            LinearLayout linearLayout2 = new LinearLayout(this);
            linearLayout2.setOrientation(0);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.topMargin = i6 == 0 ? 0 : p(14);
            linearLayout2.setLayoutParams(layoutParams);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                linearLayout2.addView((View) it.next());
            }
            linearLayout.addView(linearLayout2);
            i6 = i7;
        }
        return linearLayout;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:86:0x0239  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v21, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r1v28 */
    /* JADX WARN: Type inference failed for: r1v29 */
    /* JADX WARN: Type inference failed for: r1v30 */
    /* JADX WARN: Type inference failed for: r1v31 */
    /* JADX WARN: Type inference failed for: r1v32 */
    /* JADX WARN: Type inference failed for: r1v33 */
    /* JADX WARN: Type inference failed for: r1v34 */
    /* JADX WARN: Type inference failed for: r1v35 */
    /* JADX WARN: Type inference failed for: r1v36 */
    /* JADX WARN: Type inference failed for: r4v9, types: [android.view.ViewGroup, android.widget.LinearLayout] */
    /* JADX WARN: Type inference failed for: r5v2, types: [android.view.View, android.view.ViewGroup, android.widget.FrameLayout] */
    public final void i() {
        sf sfVarB;
        ?? B;
        LinearLayout linearLayout = this.f1146h;
        if (linearLayout != null) {
            linearLayout.removeAllViews();
        }
        this.f1166r = null;
        this.f1168s = null;
        this.f1162p = null;
        this.f1164q = null;
        this.f1170t = null;
        this.f1172v = null;
        this.f1174x = null;
        this.f1175y = null;
        List<String> listG0 = f1131v0;
        String string = t().getString("qa_icon_order", null);
        if (string != null && !k.m0(string)) {
            List listV0 = k.v0(string, new String[]{","}, 0, 6);
            ArrayList arrayList = new ArrayList(i.X(listV0));
            Iterator it = listV0.iterator();
            while (it.hasNext()) {
                arrayList.add(k.E0((String) it.next()).toString());
            }
            ArrayList arrayList2 = new ArrayList();
            int size = arrayList.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj = arrayList.get(i3);
                i3++;
                if (listG0.contains((String) obj)) {
                    arrayList2.add(obj);
                }
            }
            ArrayList arrayList3 = new ArrayList();
            for (Object obj2 : listG0) {
                if (!arrayList2.contains((String) obj2)) {
                    arrayList3.add(obj2);
                }
            }
            listG0 = y1.g.g0(arrayList2, arrayList3);
        }
        for (String str : listG0) {
            boolean z2 = !f1132w0.contains(str);
            if (t().getBoolean("qa_visible_" + str, z2)) {
                switch (str) {
                    case "karaoke":
                        sfVarB = B(str);
                        if (r().getBoolean("lyrics_floater_enabled", false)) {
                            B = sfVarB;
                            k(sfVarB, -14829228);
                            B = sfVarB;
                        }
                        break;
                    case "app_pip":
                        sf sfVarB2 = B(str);
                        this.f1175y = sfVarB2;
                        if (AppPipFloaterService.f769x != null) {
                            k(sfVarB2, E0);
                        } else {
                            l(sfVarB2);
                        }
                        sfVarB2.setTextColor(H0);
                        B = sfVarB2;
                        break;
                    case "recirc_guard":
                        sf sfVarB3 = B(str);
                        this.f1173w = sfVarB3;
                        Y(sfVarB3);
                        B = sfVarB3;
                        break;
                    case "split_screen":
                        sf sfVarB4 = B(str);
                        this.f1174x = sfVarB4;
                        if (SplitFloaterService.f1178v != null) {
                            k(sfVarB4, E0);
                        } else {
                            l(sfVarB4);
                        }
                        sfVarB4.setTextColor(H0);
                        B = sfVarB4;
                        break;
                    case "aeb":
                        sf sfVarB5 = B(str);
                        this.f1170t = sfVarB5;
                        W(sfVarB5);
                        if (this.K == null) {
                            z();
                            W(sfVarB5);
                            B = sfVarB5;
                        } else {
                            O(new i9(this, 4, sfVarB5));
                            B = sfVarB5;
                        }
                        break;
                    case "avas":
                        sf sfVarB6 = B(str);
                        this.f1168s = sfVarB6;
                        X(sfVarB6);
                        B = sfVarB6;
                        break;
                    case "wifi":
                        sf sfVarB7 = B(str);
                        this.f1166r = sfVarB7;
                        a0(sfVarB7);
                        sfVarB7.setOnLongClickListener(new View.OnLongClickListener() { // from class: w0.cf
                            @Override // android.view.View.OnLongClickListener
                            public final boolean onLongClick(View view) {
                                int i4 = QuickAccessFloaterService.t0;
                                QuickAccessFloaterService quickAccessFloaterService = this.f3447a;
                                quickAccessFloaterService.P(800L);
                                k1.a.M(quickAccessFloaterService);
                                return true;
                            }
                        });
                        B = sfVarB7;
                        break;
                    case "drive_regen":
                        float fX = x();
                        ?? frameLayout = new FrameLayout(this);
                        frameLayout.setOnClickListener(new df(0, this));
                        LinearLayout linearLayout2 = new LinearLayout(this);
                        linearLayout2.setOrientation(1);
                        TextView textView = new TextView(this);
                        TextView textView2 = new TextView(this);
                        this.f1162p = textView;
                        this.f1164q = textView2;
                        linearLayout2.addView(textView, new LinearLayout.LayoutParams(-1, 0, 1.0f));
                        linearLayout2.addView(textView2, new LinearLayout.LayoutParams(-1, 0, 1.0f));
                        frameLayout.addView(linearLayout2, new FrameLayout.LayoutParams(-1, -1));
                        sf sfVar = new sf(this);
                        sfVar.setIconId("drive_regen");
                        sfVar.setIconColor(Integer.valueOf(H0));
                        int i4 = (int) (13 * fX);
                        if (i4 < 5) {
                            i4 = 5;
                        }
                        int iP = p(i4);
                        sfVar.setPadding(iP, iP, iP, iP);
                        frameLayout.addView(sfVar, new FrameLayout.LayoutParams(-1, -1));
                        B = frameLayout;
                        break;
                    case "telemetry":
                        sf sfVarB8 = B(str);
                        this.f1172v = sfVarB8;
                        Z(sfVarB8);
                        B = sfVarB8;
                        break;
                    case "power_off":
                        sf sfVarB9 = B(str);
                        k(sfVarB9, G0);
                        B = sfVarB9;
                        break;
                    default:
                        B = B(str);
                        break;
                }
                B = sfVarB;
                int iP2 = p((int) (x() * 76));
                ?? r4 = this.f1146h;
                if (r4 != 0) {
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(iP2, iP2);
                    layoutParams.setMargins(p(4), 0, p(4), 0);
                    r4.addView(B, layoutParams);
                }
            }
        }
        K();
    }

    public final void j() {
        new Thread(new ve(10, this)).start();
    }

    public final void k(TextView textView, int i3) {
        textView.setBackground(M(i3, 14, null, 0));
    }

    public final void l(TextView textView) {
        textView.setBackground(M(C0, 14, Integer.valueOf(B0), 1));
    }

    public final void m() {
        this.f1176z = false;
        this.A = false;
        LinearLayout linearLayout = this.f1144g;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        LinearLayout linearLayout2 = this.f1148i;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        TextView textView = this.f;
        if (textView != null) {
            textView.setText("›");
        }
        TextView textView2 = this.f;
        if (textView2 != null) {
            textView2.setAlpha(T());
        }
        this.f1134a.removeCallbacks(this.I);
    }

    public final TextView o(String str) {
        TextView textView = new TextView(this);
        textView.setText(str);
        textView.setTextColor(getColor(R.color.cx_text_primary));
        textView.setTextSize(22.0f);
        textView.setTypeface(textView.getTypeface(), 1);
        textView.setPadding(p(22), p(22), p(22), p(8));
        return textView;
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        y0 = true;
        x0 = this;
        String string = getString(R.string.xml_acesso_rapido);
        g.d(string, "getString(...)");
        String string2 = getString(R.string.k_qa_channel_active);
        g.d(string2, "getString(...)");
        startForeground(88, t1.E(this, "quick_access_floater", string, string2, android.R.drawable.ic_menu_compass, getString(R.string.k_qa_notif_text), 32));
        d();
        z();
        lh.f3858a.a(this, this.f1135a0);
        registerReceiver(this.f1136b0, new IntentFilter("com.ex.auto.ACTION_HVAC_FAN_SWIPE"));
        registerReceiver(this.f1138c0, new IntentFilter("com.ex.auto.ACTION_HVAC_TEMP_SWIPE"));
        registerReceiver(this.f1143f0, new IntentFilter("com.ex.auto.ACTION_OPEN_REAR_CAMERA"));
        registerReceiver(this.f1145g0, new IntentFilter("com.ex.auto.ACTION_GO_TO_LAST_APP"));
        registerReceiver(this.f1147h0, new IntentFilter("com.ex.auto.ACTION_OPEN_FAVORITES"));
        registerReceiver(this.f1149i0, new IntentFilter("com.ex.auto.ACTION_THREE_FINGER_H_SWIPE"));
        registerReceiver(this.f1151j0, new IntentFilter("com.ex.auto.ACTION_THREE_FINGER_V_SWIPE"));
        registerReceiver(this.f1140d0, new IntentFilter("UPDATE_DRIVE_REGEN_MODES"));
        registerReceiver(this.f1142e0, new IntentFilter("com.ex.auto.ACTION_SCREEN_OFF_COMMAND"));
    }

    @Override // android.app.Service
    public final void onDestroy() {
        y0 = false;
        x0 = null;
        this.M = true;
        this.P.incrementAndGet();
        lh.f3858a.b(this, this.f1135a0);
        try {
            unregisterReceiver(this.f1136b0);
        } catch (Exception unused) {
        }
        try {
            unregisterReceiver(this.f1138c0);
        } catch (Exception unused2) {
        }
        try {
            unregisterReceiver(this.f1143f0);
        } catch (Exception unused3) {
        }
        try {
            unregisterReceiver(this.f1145g0);
        } catch (Exception unused4) {
        }
        try {
            unregisterReceiver(this.f1147h0);
        } catch (Exception unused5) {
        }
        try {
            unregisterReceiver(this.f1149i0);
        } catch (Exception unused6) {
        }
        try {
            unregisterReceiver(this.f1151j0);
        } catch (Exception unused7) {
        }
        try {
            unregisterReceiver(this.f1140d0);
        } catch (Exception unused8) {
        }
        try {
            unregisterReceiver(this.f1142e0);
        } catch (Exception unused9) {
        }
        if (this.Q) {
            b0();
        }
        a aVar = this.V;
        if (aVar != null) {
            try {
                getContentResolver().unregisterContentObserver(aVar);
            } catch (Exception unused10) {
            }
        }
        this.V = null;
        pf pfVar = this.W;
        if (pfVar != null) {
            try {
                unregisterReceiver(pfVar);
            } catch (Exception unused11) {
            }
        }
        this.W = null;
        this.f1134a.removeCallbacksAndMessages(null);
        this.O.shutdownNow();
        try {
            Car car = this.J;
            if (car != null) {
                car.disconnect();
            }
        } catch (Exception unused12) {
        }
        this.J = null;
        this.K = null;
        this.L = null;
        eh ehVar = this.f1139d;
        if (ehVar != null) {
            try {
                WindowManager windowManager = this.b;
                if (windowManager != null) {
                    windowManager.removeView(ehVar);
                }
            } catch (Exception unused13) {
            }
        }
        LinearLayout linearLayout = this.f1141e;
        if (linearLayout != null) {
            try {
                WindowManager windowManager2 = this.b;
                if (windowManager2 != null) {
                    windowManager2.removeView(linearLayout);
                }
            } catch (Exception unused14) {
            }
        }
        this.f1141e = null;
        super.onDestroy();
    }

    public final int p(int i3) {
        return (int) (i3 * getResources().getDisplayMetrics().density);
    }

    public final void q() {
        this.f1176z = true;
        LinearLayout linearLayout = this.f1144g;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        TextView textView = this.f;
        if (textView != null) {
            textView.setText("‹");
        }
        TextView textView2 = this.f;
        if (textView2 != null) {
            textView2.setAlpha(T());
        }
        LinearLayout linearLayout2 = this.f1144g;
        if (linearLayout2 != null) {
            linearLayout2.setAlpha(1.0f);
        }
        K();
        sf sfVar = this.f1168s;
        if (sfVar != null) {
            X(sfVar);
        }
        P(5000L);
    }

    public final SharedPreferences r() {
        Object objA = this.D.a();
        g.d(objA, "getValue(...)");
        return (SharedPreferences) objA;
    }

    public final SharedPreferences s() {
        Object objA = this.C.a();
        g.d(objA, "getValue(...)");
        return (SharedPreferences) objA;
    }

    public final SharedPreferences t() {
        Object objA = this.B.a();
        g.d(objA, "getValue(...)");
        return (SharedPreferences) objA;
    }

    public final WifiManager u() {
        return (WifiManager) this.E.a();
    }

    public final void v(int i3) {
        d dVar = this.Z;
        Handler handler = this.f1134a;
        handler.removeCallbacks(dVar);
        LinearLayout linearLayout = this.X;
        if (linearLayout == null) {
            return;
        }
        try {
            WindowManager windowManager = this.b;
            if (windowManager != null) {
                windowManager.removeView(linearLayout);
            }
            this.X = null;
            this.Y = null;
        } catch (Exception e3) {
            if (i3 <= 0) {
                Log.w("QuickAccessFloater", "hideScreenOffClockOverlay: desisti após retentativas — view pode ter ficado presa");
                this.X = null;
                this.Y = null;
                return;
            }
            Log.w("QuickAccessFloater", "hideScreenOffClockOverlay: " + e3.getMessage() + " — retentando (" + i3 + ')');
            handler.postDelayed(new ue(this, i3, 1), 300L);
        }
    }

    public final ViewGroup w(Drawable drawable, String str, xe xeVar, h2.a aVar) {
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(17);
        linearLayout.setClickable(true);
        linearLayout.setFocusable(true);
        linearLayout.setBackgroundResource(R.drawable.bg_preset_chip);
        linearLayout.setBackgroundTintList(ColorStateList.valueOf(getColor(R.color.cx_surface_alt)));
        linearLayout.setPadding(p(10), p(16), p(10), p(14));
        ImageView imageView = new ImageView(this);
        if (drawable != null) {
            imageView.setImageDrawable(drawable);
        } else {
            imageView.setImageResource(android.R.drawable.sym_def_app_icon);
        }
        imageView.setLayoutParams(new LinearLayout.LayoutParams(p(72), p(72)));
        linearLayout.addView(imageView);
        TextView textView = new TextView(this);
        textView.setText(str);
        textView.setTextColor(getColor(R.color.cx_text_primary));
        textView.setTextSize(15.0f);
        textView.setGravity(17);
        textView.setMaxLines(2);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.topMargin = p(8);
        textView.setLayoutParams(layoutParams);
        linearLayout.addView(textView);
        linearLayout.setOnClickListener(new w(aVar, 5));
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(p(150), -2);
        layoutParams2.setMarginEnd(p(12));
        if (xeVar == null) {
            linearLayout.setLayoutParams(layoutParams2);
            return linearLayout;
        }
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setLayoutParams(layoutParams2);
        linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
        frameLayout.addView(linearLayout);
        TextView textView2 = new TextView(this);
        textView2.setText("✕");
        textView2.setTextSize(14.0f);
        textView2.setGravity(17);
        textView2.setTypeface(textView2.getTypeface(), 1);
        textView2.setTextColor(-1);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(getColor(R.color.cx_danger_deep));
        textView2.setBackground(gradientDrawable);
        textView2.setOnClickListener(new w(xeVar, 6));
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(p(28), p(28), 8388661);
        layoutParams3.topMargin = p(4);
        layoutParams3.setMarginEnd(p(4));
        frameLayout.addView(textView2, layoutParams3);
        return frameLayout;
    }

    public final float x() {
        return k1.a.k(t().getInt("qa_icon_size_pct", 100), 50, 300) / 100.0f;
    }

    public final Drawable y(String str) {
        try {
            if (k.m0(str)) {
                return null;
            }
            return getPackageManager().getApplicationIcon(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    public final void z() {
        if (this.M || this.K != null || this.N) {
            return;
        }
        this.N = true;
        int iIncrementAndGet = this.P.incrementAndGet();
        this.f1134a.postDelayed(new ue(this, iIncrementAndGet, 0), 10000L);
        try {
            this.J = Car.createCar(this, null, 0L, new z0(this, iIncrementAndGet, 2));
        } catch (Exception e3) {
            this.N = false;
            androidx.activity.result.b.o(e3, new StringBuilder("initDriveRegenCar: "), "QuickAccessFloater");
        }
    }
}
