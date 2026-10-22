package com.ex.auto;

import a1.o;
import a1.s;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.view.ViewOutlineProvider;
import android.view.WindowManager;
import android.widget.TextView;
import i2.g;
import w0.e8;
import w0.f2;
import w0.kh;
import w0.lh;
import w0.t1;
import w0.yd;

/* JADX INFO: loaded from: classes.dex */
public final class WifiFloaterService extends Service {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final /* synthetic */ int f1249n = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WindowManager f1250a;
    public WifiManager b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TextView f1251c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public WindowManager.LayoutParams f1252d;
    public int f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f1254g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f1255h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f1256i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f1257j;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Handler f1253e = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final kh f1258k = new kh(this, 0);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final f2 f1259l = new f2(8, this);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final s f1260m = new s(5, this);

    public final void a() {
        WifiManager wifiManager = this.b;
        if (wifiManager == null) {
            g.h("wifiManager");
            throw null;
        }
        int wifiState = wifiManager.getWifiState();
        boolean z2 = wifiState == 3 || wifiState == 2;
        TextView textView = this.f1251c;
        if (textView != null) {
            textView.setText(z2 ? "📶" : "📴");
        }
        TextView textView2 = this.f1251c;
        Drawable background = textView2 != null ? textView2.getBackground() : null;
        GradientDrawable gradientDrawable = background instanceof GradientDrawable ? (GradientDrawable) background : null;
        if (gradientDrawable != null) {
            gradientDrawable.setColor(Color.parseColor(z2 ? "#0F1722" : "#0B1521"));
        }
    }

    @Override // android.app.Service, android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        g.e(context, "base");
        super.attachBaseContext(e8.p(context));
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        Object systemService = getSystemService("window");
        g.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        this.f1250a = (WindowManager) systemService;
        Object systemService2 = getApplicationContext().getSystemService("wifi");
        g.c(systemService2, "null cannot be cast to non-null type android.net.wifi.WifiManager");
        this.b = (WifiManager) systemService2;
        String string = getString(R.string.k_wifi_floater_channel);
        g.d(string, "getString(...)");
        String string2 = getString(R.string.k_wifi_floater_channel);
        g.d(string2, "getString(...)");
        startForeground(14, t1.E(this, "wifi_floater", string, string2, android.R.drawable.ic_menu_manage, null, 48));
        int i3 = (int) (getResources().getDisplayMetrics().density * 52.0f);
        TextView textView = new TextView(this);
        textView.setText("📶");
        textView.setTextSize(22.0f);
        textView.setGravity(17);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(Color.parseColor("#0B131E"));
        textView.setBackground(gradientDrawable);
        textView.setClipToOutline(true);
        textView.setOutlineProvider(ViewOutlineProvider.BACKGROUND);
        this.f1252d = new WindowManager.LayoutParams(i3, i3, 2038, 264, -3);
        yd ydVarG = e8.G(this, "wifi_floater", 8388659, 80, 420);
        WindowManager.LayoutParams layoutParams = this.f1252d;
        if (layoutParams == null) {
            g.h("lp");
            throw null;
        }
        layoutParams.gravity = ydVarG.f4590a;
        layoutParams.x = ydVarG.b;
        layoutParams.y = ydVarG.f4591c;
        this.f1251c = textView;
        WindowManager windowManager = this.f1250a;
        if (windowManager == null) {
            g.h("windowManager");
            throw null;
        }
        windowManager.addView(textView, layoutParams);
        textView.setOnTouchListener(new o(this, 7));
        a();
        int i4 = getSharedPreferences("tela_preta_prefs", 0).getInt("wifi_floater_alpha", 100);
        TextView textView2 = this.f1251c;
        if (textView2 != null) {
            textView2.setAlpha(i4 / 100.0f);
        }
        lh.f3858a.a(this, this.f1259l);
        registerReceiver(this.f1260m, new IntentFilter("UPDATE_WIFI_FLOATER_ALPHA"));
    }

    @Override // android.app.Service
    public final void onDestroy() {
        this.f1253e.removeCallbacksAndMessages(null);
        lh.f3858a.b(this, this.f1259l);
        try {
            unregisterReceiver(this.f1260m);
        } catch (Exception unused) {
        }
        TextView textView = this.f1251c;
        if (textView != null) {
            try {
                WindowManager windowManager = this.f1250a;
                if (windowManager == null) {
                    g.h("windowManager");
                    throw null;
                }
                windowManager.removeView(textView);
            } catch (Exception unused2) {
            }
        }
        super.onDestroy();
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i3, int i4) {
        return 1;
    }
}
