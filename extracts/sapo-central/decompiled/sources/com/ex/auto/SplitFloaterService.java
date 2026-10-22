package com.ex.auto;

import a1.o;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.view.View;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.ex.auto.R;
import com.ex.auto.SplitFloaterService;
import i2.g;
import w0.e8;
import w0.ig;
import w0.jg;
import w0.lg;
import w0.mg;
import w0.ng;
import w0.t1;

/* JADX INFO: loaded from: classes.dex */
public final class SplitFloaterService extends Service {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static volatile SplitFloaterService f1178v;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WindowManager f1179a;
    public LinearLayout b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TextView f1180c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public LinearLayout f1181d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public LinearLayout f1182e;
    public TextView f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public LinearLayout f1183g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public WindowManager.LayoutParams f1184h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public mg f1186j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public mg f1187k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ng f1188l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f1190n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public volatile boolean f1191o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public float f1192p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public float f1193q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f1194r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f1195s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f1196t;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Handler f1185i = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public float f1189m = 0.5f;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final int f1197u = 72;

    public static final TextView a(final SplitFloaterService splitFloaterService, String str, final float f) {
        TextView textView = new TextView(splitFloaterService);
        textView.setText(str);
        textView.setTextSize(18.0f);
        textView.setTextColor(-1);
        textView.setGravity(17);
        textView.setBackground(splitFloaterService.f(-868072894, 20));
        int iB = splitFloaterService.b(40);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(iB, iB);
        layoutParams.setMarginEnd(splitFloaterService.b(4));
        textView.setLayoutParams(layoutParams);
        textView.setOnClickListener(new View.OnClickListener() { // from class: w0.kg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SplitFloaterService splitFloaterService2 = this.f3813a;
                float f3 = f;
                ng ngVar = splitFloaterService2.f1188l;
                mg mgVar = splitFloaterService2.f1186j;
                mg mgVar2 = splitFloaterService2.f1187k;
                if (ngVar == null || mgVar == null || mgVar2 == null || splitFloaterService2.f1191o) {
                    return;
                }
                splitFloaterService2.f1189m = k1.a.j(splitFloaterService2.f1189m + f3, 0.15f, 0.85f);
                splitFloaterService2.f1191o = true;
                splitFloaterService2.h();
                new Thread(new z(mgVar, splitFloaterService2, ngVar, mgVar2)).start();
            }
        });
        return textView;
    }

    @Override // android.app.Service, android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        g.e(context, "base");
        super.attachBaseContext(e8.p(context));
    }

    public final int b(int i3) {
        return (int) (i3 * getResources().getDisplayMetrics().density);
    }

    public final void c(String str) {
        this.f1191o = false;
        this.f1185i.post(new ig(this, 2));
        g(str);
    }

    public final lg d(ng ngVar) {
        return new lg(0, this.f1197u, (int) (ngVar.f3959a * this.f1189m), ngVar.b);
    }

    public final lg e(ng ngVar) {
        int i3 = ngVar.f3959a;
        return new lg((int) (i3 * this.f1189m), this.f1197u, i3, ngVar.b);
    }

    public final GradientDrawable f(int i3, int i4) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i3);
        gradientDrawable.setCornerRadius(b(i4));
        return gradientDrawable;
    }

    public final void g(String str) {
        this.f1185i.post(new jg(this, str, 1));
    }

    public final void h() {
        int i3;
        String str;
        boolean z2 = (this.f1186j == null || this.f1187k == null) ? false : true;
        TextView textView = this.f1180c;
        if (textView != null) {
            if (this.f1191o) {
                str = "…";
            } else {
                str = z2 ? "✕" : "⧉";
            }
            textView.setText(str);
        }
        TextView textView2 = this.f1180c;
        if (textView2 != null) {
            if (this.f1191o) {
                i3 = -864717451;
            } else {
                i3 = z2 ? -869368526 : -871012928;
            }
            textView2.setBackground(f(i3, 24));
        }
        LinearLayout linearLayout = this.f1181d;
        if (linearLayout != null) {
            linearLayout.setVisibility((!z2 || this.f1191o) ? 8 : 0);
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        f1178v = this;
        String string = getString(R.string.k_split_channel_name);
        g.d(string, "getString(...)");
        String string2 = getString(R.string.k_split_channel_active);
        g.d(string2, "getString(...)");
        startForeground(105, t1.E(this, "split_floater", string, string2, android.R.drawable.ic_menu_add, getString(R.string.k_split_notif_text), 32));
        Object systemService = getSystemService("window");
        g.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        this.f1179a = (WindowManager) systemService;
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        this.b = linearLayout;
        TextView textView = new TextView(this);
        textView.setText("⧉");
        textView.setTextSize(26.0f);
        textView.setTextColor(-1);
        textView.setGravity(17);
        textView.setBackground(f(-871012928, 24));
        int iB = b(52);
        textView.setLayoutParams(new LinearLayout.LayoutParams(iB, iB));
        final int i3 = 0;
        textView.setOnClickListener(new View.OnClickListener(this) { // from class: w0.gg
            public final /* synthetic */ SplitFloaterService b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i3) {
                    case 0:
                        SplitFloaterService splitFloaterService = this.b;
                        if (splitFloaterService.f1191o) {
                            String string3 = splitFloaterService.getString(R.string.k_toast_wait_processing);
                            i2.g.d(string3, "getString(...)");
                            splitFloaterService.g(string3);
                        } else if (!splitFloaterService.f1190n) {
                            mg mgVar = splitFloaterService.f1186j;
                            int i4 = 1;
                            if (mgVar == null && splitFloaterService.f1187k == null) {
                                splitFloaterService.f1191o = true;
                                splitFloaterService.h();
                                new Thread(new ig(splitFloaterService, 7)).start();
                            } else {
                                mg mgVar2 = splitFloaterService.f1187k;
                                splitFloaterService.f1191o = true;
                                splitFloaterService.h();
                                new Thread(new hg(mgVar2, splitFloaterService, mgVar, i4)).start();
                            }
                        } else {
                            LinearLayout linearLayout2 = splitFloaterService.f1182e;
                            if (linearLayout2 != null) {
                                linearLayout2.setVisibility(8);
                            }
                            splitFloaterService.f1190n = false;
                        }
                        break;
                    default:
                        SplitFloaterService splitFloaterService2 = this.b;
                        SplitFloaterService splitFloaterService3 = SplitFloaterService.f1178v;
                        LinearLayout linearLayout3 = splitFloaterService2.f1182e;
                        if (linearLayout3 != null) {
                            linearLayout3.setVisibility(8);
                        }
                        splitFloaterService2.f1190n = false;
                        break;
                }
            }
        });
        this.f1180c = textView;
        textView.setOnTouchListener(new o(this, 5));
        LinearLayout linearLayout2 = this.b;
        g.b(linearLayout2);
        linearLayout2.addView(this.f1180c);
        LinearLayout linearLayout3 = new LinearLayout(this);
        linearLayout3.setOrientation(0);
        linearLayout3.setVisibility(8);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.topMargin = b(6);
        linearLayout3.setLayoutParams(layoutParams);
        this.f1181d = linearLayout3;
        linearLayout3.addView(a(this, "◀", -0.05f));
        LinearLayout linearLayout4 = this.f1181d;
        g.b(linearLayout4);
        linearLayout4.addView(a(this, "▶", 0.05f));
        LinearLayout linearLayout5 = this.b;
        g.b(linearLayout5);
        linearLayout5.addView(this.f1181d);
        LinearLayout linearLayout6 = new LinearLayout(this);
        linearLayout6.setOrientation(1);
        linearLayout6.setVisibility(8);
        linearLayout6.setBackground(f(-299884252, 14));
        linearLayout6.setPadding(b(8), b(8), b(8), b(8));
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(b(240), -2);
        layoutParams2.topMargin = b(6);
        linearLayout6.setLayoutParams(layoutParams2);
        this.f1182e = linearLayout6;
        LinearLayout linearLayout7 = new LinearLayout(this);
        linearLayout7.setOrientation(0);
        linearLayout7.setGravity(16);
        TextView textView2 = new TextView(this);
        textView2.setText(getString(R.string.k_open_on_right));
        textView2.setTextSize(14.0f);
        textView2.setTextColor(-10177034);
        this.f = textView2;
        linearLayout7.addView(textView2, new LinearLayout.LayoutParams(0, -2, 1.0f));
        TextView textView3 = new TextView(this);
        textView3.setText("✕");
        textView3.setTextSize(16.0f);
        textView3.setTextColor(-3355444);
        textView3.setPadding(b(10), b(2), b(10), b(2));
        final int i4 = 1;
        textView3.setOnClickListener(new View.OnClickListener(this) { // from class: w0.gg
            public final /* synthetic */ SplitFloaterService b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i4) {
                    case 0:
                        SplitFloaterService splitFloaterService = this.b;
                        if (splitFloaterService.f1191o) {
                            String string3 = splitFloaterService.getString(R.string.k_toast_wait_processing);
                            i2.g.d(string3, "getString(...)");
                            splitFloaterService.g(string3);
                        } else if (!splitFloaterService.f1190n) {
                            mg mgVar = splitFloaterService.f1186j;
                            int i5 = 1;
                            if (mgVar == null && splitFloaterService.f1187k == null) {
                                splitFloaterService.f1191o = true;
                                splitFloaterService.h();
                                new Thread(new ig(splitFloaterService, 7)).start();
                            } else {
                                mg mgVar2 = splitFloaterService.f1187k;
                                splitFloaterService.f1191o = true;
                                splitFloaterService.h();
                                new Thread(new hg(mgVar2, splitFloaterService, mgVar, i5)).start();
                            }
                        } else {
                            LinearLayout linearLayout8 = splitFloaterService.f1182e;
                            if (linearLayout8 != null) {
                                linearLayout8.setVisibility(8);
                            }
                            splitFloaterService.f1190n = false;
                        }
                        break;
                    default:
                        SplitFloaterService splitFloaterService2 = this.b;
                        SplitFloaterService splitFloaterService3 = SplitFloaterService.f1178v;
                        LinearLayout linearLayout9 = splitFloaterService2.f1182e;
                        if (linearLayout9 != null) {
                            linearLayout9.setVisibility(8);
                        }
                        splitFloaterService2.f1190n = false;
                        break;
                }
            }
        });
        linearLayout7.addView(textView3);
        LinearLayout linearLayout8 = this.f1182e;
        g.b(linearLayout8);
        linearLayout8.addView(linearLayout7);
        LinearLayout linearLayout9 = new LinearLayout(this);
        linearLayout9.setOrientation(1);
        this.f1183g = linearLayout9;
        ScrollView scrollView = new ScrollView(this);
        scrollView.addView(this.f1183g, new LinearLayout.LayoutParams(-1, -2));
        LinearLayout linearLayout10 = this.f1182e;
        g.b(linearLayout10);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, b(300));
        layoutParams3.topMargin = b(6);
        linearLayout10.addView(scrollView, layoutParams3);
        LinearLayout linearLayout11 = this.b;
        g.b(linearLayout11);
        linearLayout11.addView(this.f1182e);
        WindowManager.LayoutParams layoutParams4 = new WindowManager.LayoutParams(-2, -2, 2038, 264, -3);
        layoutParams4.gravity = 8388627;
        layoutParams4.x = b(8);
        layoutParams4.y = 0;
        this.f1184h = layoutParams4;
        try {
            WindowManager windowManager = this.f1179a;
            if (windowManager != null) {
                windowManager.addView(this.b, layoutParams4);
            } else {
                g.h("wm");
                throw null;
            }
        } catch (Throwable th) {
            String message = th.getMessage();
            if (message == null) {
                message = "";
            }
            String string3 = getString(R.string.k_overlay_failure, message);
            g.d(string3, "getString(...)");
            g(string3);
            stopSelf();
        }
    }

    @Override // android.app.Service
    public final void onDestroy() {
        f1178v = null;
        this.f1185i.removeCallbacksAndMessages(null);
        try {
            WindowManager windowManager = this.f1179a;
            if (windowManager == null) {
                g.h("wm");
                throw null;
            }
            windowManager.removeView(this.b);
            super.onDestroy();
        } catch (Throwable unused) {
        }
    }
}
