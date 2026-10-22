package com.ex.auto;

import a1.o;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.util.Log;
import android.view.View;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.ex.auto.AppPipFloaterService;
import com.ex.auto.R;
import h2.a;
import i2.g;
import java.util.List;
import o2.k;
import w0.b0;
import w0.e8;
import w0.g0;
import w0.lg;
import w0.mg;
import w0.ng;
import w0.og;
import w0.t1;
import w0.v;
import w0.w;
import w0.x;
import w0.y;
import w0.y3;
import w0.z3;

/* JADX INFO: loaded from: classes.dex */
public final class AppPipFloaterService extends Service {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static volatile AppPipFloaterService f769x;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WindowManager f770a;
    public LinearLayout b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TextView f771c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public LinearLayout f772d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public LinearLayout f773e;
    public LinearLayout f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public WindowManager.LayoutParams f774g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public mg f776i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ng f777j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public lg f778k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f779l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f780m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public volatile boolean f781n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public float f782o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public float f783p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f784q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f785r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f786s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public volatile boolean f787t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Integer f788u;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Handler f775h = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final g0 f789v = new g0(this, 1);

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final g0 f790w = new g0(this, 0);

    public static final TextView b(AppPipFloaterService appPipFloaterService, String str, int i3, a aVar) {
        TextView textView = new TextView(appPipFloaterService);
        textView.setText(str);
        textView.setTextSize(16.0f);
        textView.setTextColor(-1);
        textView.setGravity(17);
        textView.setBackground(appPipFloaterService.h(i3, 20));
        int iE = appPipFloaterService.e(40);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(iE, iE);
        layoutParams.setMarginEnd(appPipFloaterService.e(4));
        textView.setLayoutParams(layoutParams);
        textView.setOnClickListener(new w(aVar, 0));
        return textView;
    }

    public static lg c(lg lgVar, ng ngVar) {
        int i3 = lgVar.f3856c;
        int i4 = lgVar.f3855a;
        int iK = k1.a.k(i3 - i4, 260, (int) (((double) ngVar.f3959a) * 0.85d));
        int i5 = lgVar.f3857d;
        int i6 = lgVar.b;
        int i7 = ngVar.b;
        int iK2 = k1.a.k(i5 - i6, 150, (int) (((double) i7) * 0.85d));
        int i8 = ((i4 + i3) / 2) - (iK / 2);
        int i9 = ((i6 + i5) / 2) - (iK2 / 2);
        if (i8 < 0) {
            i8 = 0;
        }
        if (i9 < 72) {
            i9 = 72;
        }
        int i10 = i8 + iK;
        int i11 = ngVar.f3959a;
        if (i10 > i11) {
            i8 = i11 - iK;
        }
        if (i9 + iK2 > i7) {
            i9 = i7 - iK2;
        }
        return new lg(i8, i9, iK + i8, iK2 + i9);
    }

    public final void a(lg lgVar) {
        z3 z3Var = z3.f4608a;
        if (this.f788u == null && this.f776i == null) {
            Integer numJ = og.j();
            if ((numJ != null ? z3Var : z3.b) == z3Var) {
                Log.i("AppPipFloater", "adotando o PiP que ja estava na tela (stack " + numJ + ')');
                this.f788u = numJ;
                if (this.f778k == null) {
                    g.b(numJ);
                    this.f778k = og.b(numJ.intValue());
                }
            }
        }
        Integer num = this.f788u;
        if (num != null) {
            int iIntValue = num.intValue();
            this.f781n = true;
            l();
            new Thread(new v(iIntValue, lgVar, this, 0)).start();
            return;
        }
        mg mgVar = this.f776i;
        if (mgVar == null) {
            return;
        }
        this.f781n = true;
        l();
        new Thread(new a1.g(mgVar, lgVar, this, 2)).start();
    }

    @Override // android.app.Service, android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        g.e(context, "base");
        super.attachBaseContext(e8.p(context));
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0014  */
    /* JADX WARN: Code duplicated, block: B:12:0x0018  */
    public final void d() {
        y3 y3Var;
        y3 y3Var2;
        y3 y3Var3 = y3.f4560c;
        mg mgVar = this.f776i;
        Integer num = this.f788u;
        if (mgVar == null) {
            if (num != null) {
                y3Var2 = y3.b;
            } else {
                y3Var = y3Var3;
            }
            if (y3Var == y3Var3) {
                stopSelf();
                return;
            }
            this.f781n = true;
            l();
            this.f775h.removeCallbacks(this.f789v);
            new Thread(new x(y3Var, mgVar, num, this, 0)).start();
        }
        y3Var2 = y3.f4559a;
        y3Var = y3Var2;
        if (y3Var == y3Var3) {
            stopSelf();
            return;
        }
        this.f781n = true;
        l();
        this.f775h.removeCallbacks(this.f789v);
        new Thread(new x(y3Var, mgVar, num, this, 0)).start();
    }

    public final int e(int i3) {
        return (int) (i3 * getResources().getDisplayMetrics().density);
    }

    public final void f(String str) {
        this.f781n = false;
        this.f775h.post(new b0(this, 6));
        k(str);
    }

    public final void g(String str) {
        g.e(str, "pkg");
        if (this.f781n) {
            String string = getString(R.string.k_toast_wait_processing);
            g.d(string, "getString(...)");
            k(string);
            return;
        }
        LinearLayout linearLayout = this.f773e;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        this.f780m = false;
        this.f781n = true;
        l();
        String string2 = getString(R.string.k_pip_opening);
        g.d(string2, "getString(...)");
        k(string2);
        new Thread(new y(this, str, 0)).start();
    }

    public final GradientDrawable h(int i3, int i4) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i3);
        gradientDrawable.setCornerRadius(e(i4));
        return gradientDrawable;
    }

    public final void i(double d3) {
        lg lgVar = this.f778k;
        ng ngVar = this.f777j;
        if (!j() || lgVar == null || ngVar == null || this.f781n) {
            StringBuilder sb = new StringBuilder("resize ignorado: controle=");
            sb.append(j());
            sb.append(" bounds=");
            sb.append(lgVar != null);
            sb.append(" tela=");
            sb.append(ngVar != null);
            sb.append(" ocupado=");
            sb.append(this.f781n);
            Log.i("AppPipFloater", sb.toString());
            return;
        }
        int i3 = lgVar.f3856c;
        int i4 = lgVar.f3855a;
        int i5 = (int) (((double) (i3 - i4)) * d3);
        int i6 = lgVar.f3857d;
        int i7 = lgVar.b;
        int i8 = (int) (((double) (i6 - i7)) * d3);
        int i9 = (i4 + i3) / 2;
        int i10 = (i7 + i6) / 2;
        int i11 = i5 / 2;
        int i12 = i8 / 2;
        a(c(new lg(i9 - i11, i10 - i12, i9 + i11, i10 + i12), ngVar));
    }

    public final boolean j() {
        return (this.f776i == null && this.f788u == null) ? false : true;
    }

    public final boolean k(String str) {
        return this.f775h.post(new y(this, str, 2));
    }

    public final void l() {
        int i3;
        boolean zJ = j();
        TextView textView = this.f771c;
        if (textView != null) {
            textView.setText(this.f781n ? "…" : "PIP");
        }
        TextView textView2 = this.f771c;
        if (textView2 != null) {
            if (this.f781n) {
                i3 = -864717451;
            } else {
                i3 = zJ ? -869368526 : -871012928;
            }
            textView2.setBackground(h(i3, 24));
        }
        LinearLayout linearLayout = this.f772d;
        if (linearLayout != null) {
            linearLayout.setVisibility((!zJ || this.f781n) ? 8 : 0);
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        f769x = this;
        String string = getString(R.string.k_pip_channel_name);
        g.d(string, "getString(...)");
        String string2 = getString(R.string.k_pip_channel_active);
        g.d(string2, "getString(...)");
        startForeground(106, t1.E(this, "app_pip_floater", string, string2, android.R.drawable.ic_menu_crop, getString(R.string.k_pip_notif_text), 32));
        Object systemService = getSystemService("window");
        g.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        this.f770a = (WindowManager) systemService;
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        this.b = linearLayout;
        TextView textView = new TextView(this);
        textView.setText("PIP");
        textView.setTextSize(13.0f);
        textView.setTextColor(-1);
        textView.setGravity(17);
        textView.setTypeface(textView.getTypeface(), 1);
        textView.setBackground(h(-871012928, 24));
        int iE = e(52);
        textView.setLayoutParams(new LinearLayout.LayoutParams(iE, iE));
        final int i3 = 0;
        textView.setOnClickListener(new View.OnClickListener(this) { // from class: w0.e0
            public final /* synthetic */ AppPipFloaterService b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i3) {
                    case 0:
                        AppPipFloaterService appPipFloaterService = this.b;
                        if (appPipFloaterService.f781n) {
                            String string3 = appPipFloaterService.getString(R.string.k_toast_wait_processing);
                            i2.g.d(string3, "getString(...)");
                            appPipFloaterService.k(string3);
                        } else {
                            int i4 = 0;
                            if (appPipFloaterService.f780m) {
                                LinearLayout linearLayout2 = appPipFloaterService.f773e;
                                if (linearLayout2 != null) {
                                    linearLayout2.setVisibility(8);
                                }
                                appPipFloaterService.f780m = false;
                            } else if (appPipFloaterService.j()) {
                                String string4 = appPipFloaterService.getString(R.string.k_pip_active_hint);
                                i2.g.d(string4, "getString(...)");
                                appPipFloaterService.k(string4);
                            } else {
                                LinearLayout linearLayout3 = appPipFloaterService.f;
                                if (linearLayout3 != null) {
                                    linearLayout3.removeAllViews();
                                    List<x1.a> listH = og.h(appPipFloaterService);
                                    if (listH.isEmpty()) {
                                        TextView textView2 = new TextView(appPipFloaterService);
                                        textView2.setText(appPipFloaterService.getString(R.string.k_no_app_found));
                                        textView2.setTextColor(-3355444);
                                        textView2.setPadding(appPipFloaterService.e(6), appPipFloaterService.e(10), appPipFloaterService.e(6), appPipFloaterService.e(10));
                                        linearLayout3.addView(textView2);
                                    } else {
                                        for (x1.a aVar : listH) {
                                            String str = (String) aVar.f4641a;
                                            String str2 = (String) aVar.b;
                                            TextView textView3 = new TextView(appPipFloaterService);
                                            textView3.setText(str);
                                            textView3.setTextSize(14.0f);
                                            textView3.setTextColor(-1);
                                            textView3.setPadding(appPipFloaterService.e(12), appPipFloaterService.e(12), appPipFloaterService.e(12), appPipFloaterService.e(12));
                                            textView3.setBackground(appPipFloaterService.h(-13618892, 10));
                                            textView3.setOnClickListener(new a0(appPipFloaterService, i4, str2));
                                            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
                                            layoutParams.bottomMargin = appPipFloaterService.e(4);
                                            linearLayout3.addView(textView3, layoutParams);
                                        }
                                    }
                                }
                                LinearLayout linearLayout4 = appPipFloaterService.f773e;
                                if (linearLayout4 != null) {
                                    linearLayout4.setVisibility(0);
                                }
                                appPipFloaterService.f780m = true;
                            }
                        }
                        break;
                    default:
                        AppPipFloaterService appPipFloaterService2 = this.b;
                        AppPipFloaterService appPipFloaterService3 = AppPipFloaterService.f769x;
                        appPipFloaterService2.d();
                        break;
                }
            }
        });
        this.f771c = textView;
        textView.setOnTouchListener(new o(this, 1));
        LinearLayout linearLayout2 = this.b;
        g.b(linearLayout2);
        linearLayout2.addView(this.f771c);
        LinearLayout linearLayout3 = new LinearLayout(this);
        linearLayout3.setOrientation(1);
        linearLayout3.setVisibility(8);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.topMargin = e(6);
        linearLayout3.setLayoutParams(layoutParams);
        this.f772d = linearLayout3;
        LinearLayout linearLayout4 = new LinearLayout(this);
        linearLayout4.setOrientation(0);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.topMargin = e(4);
        linearLayout4.setLayoutParams(layoutParams2);
        final int i4 = 0;
        linearLayout4.addView(b(this, "+", -868072894, new a(this) { // from class: w0.f0
            public final /* synthetic */ AppPipFloaterService b;

            {
                this.b = this;
            }

            /* JADX WARN: Code duplicated, block: B:13:0x001d  */
            @Override // h2.a
            public final Object a() {
                y3 y3Var;
                y3 y3Var2;
                switch (i4) {
                    case 0:
                        AppPipFloaterService appPipFloaterService = this.b;
                        AppPipFloaterService appPipFloaterService2 = AppPipFloaterService.f769x;
                        appPipFloaterService.i(1.2d);
                        break;
                    case 1:
                        AppPipFloaterService appPipFloaterService3 = this.b;
                        AppPipFloaterService appPipFloaterService4 = AppPipFloaterService.f769x;
                        appPipFloaterService3.i(0.8333333333333334d);
                        break;
                    case 2:
                        AppPipFloaterService appPipFloaterService5 = this.b;
                        Double dValueOf = Double.valueOf(16.0d);
                        Double dValueOf2 = Double.valueOf(9.0d);
                        lg lgVar = appPipFloaterService5.f778k;
                        ng ngVar = appPipFloaterService5.f777j;
                        if (!appPipFloaterService5.j() || lgVar == null || ngVar == null || appPipFloaterService5.f781n) {
                            StringBuilder sb = new StringBuilder("resize ignorado: controle=");
                            sb.append(appPipFloaterService5.j());
                            sb.append(" bounds=");
                            sb.append(lgVar != null);
                            sb.append(" tela=");
                            sb.append(ngVar != null);
                            sb.append(" ocupado=");
                            sb.append(appPipFloaterService5.f781n);
                            Log.i("AppPipFloater", sb.toString());
                        } else {
                            boolean z2 = appPipFloaterService5.f779l;
                            appPipFloaterService5.f779l = !z2;
                            double d3 = ((double) (lgVar.f3856c - lgVar.f3855a)) * ((double) (lgVar.f3857d - lgVar.b));
                            x1.a aVar = !z2 ? new x1.a(dValueOf2, dValueOf) : new x1.a(dValueOf, dValueOf2);
                            double dDoubleValue = ((Number) aVar.f4641a).doubleValue();
                            double dDoubleValue2 = ((Number) aVar.b).doubleValue();
                            double dSqrt = Math.sqrt(d3 / (dDoubleValue * dDoubleValue2));
                            int i5 = (int) (dDoubleValue * dSqrt);
                            int i6 = (int) (dDoubleValue2 * dSqrt);
                            int i7 = (lgVar.f3855a + lgVar.f3856c) / 2;
                            int i8 = (lgVar.b + lgVar.f3857d) / 2;
                            int i9 = i5 / 2;
                            int i10 = i6 / 2;
                            appPipFloaterService5.a(AppPipFloaterService.c(new lg(i7 - i9, i8 - i10, i7 + i9, i8 + i10), ngVar));
                        }
                        return x1.e.f4647c;
                    default:
                        y3 y3Var3 = y3.f4560c;
                        AppPipFloaterService appPipFloaterService6 = this.b;
                        mg mgVar = appPipFloaterService6.f776i;
                        Integer num = appPipFloaterService6.f788u;
                        if (mgVar == null) {
                            if (num != null) {
                                y3Var2 = y3.b;
                            } else {
                                y3Var = y3Var3;
                            }
                            if (y3Var != y3Var3) {
                                appPipFloaterService6.f781n = true;
                                appPipFloaterService6.l();
                                appPipFloaterService6.f775h.removeCallbacks(appPipFloaterService6.f789v);
                                new Thread(new x(y3Var, mgVar, num, appPipFloaterService6, 1)).start();
                            }
                            return x1.e.f4647c;
                        }
                        y3Var2 = y3.f4559a;
                        y3Var = y3Var2;
                        if (y3Var != y3Var3) {
                            appPipFloaterService6.f781n = true;
                            appPipFloaterService6.l();
                            appPipFloaterService6.f775h.removeCallbacks(appPipFloaterService6.f789v);
                            new Thread(new x(y3Var, mgVar, num, appPipFloaterService6, 1)).start();
                        }
                        return x1.e.f4647c;
                }
                return x1.e.f4647c;
            }
        }));
        final int i5 = 1;
        linearLayout4.addView(b(this, "−", -868072894, new a(this) { // from class: w0.f0
            public final /* synthetic */ AppPipFloaterService b;

            {
                this.b = this;
            }

            /* JADX WARN: Code duplicated, block: B:13:0x001d  */
            @Override // h2.a
            public final Object a() {
                y3 y3Var;
                y3 y3Var2;
                switch (i5) {
                    case 0:
                        AppPipFloaterService appPipFloaterService = this.b;
                        AppPipFloaterService appPipFloaterService2 = AppPipFloaterService.f769x;
                        appPipFloaterService.i(1.2d);
                        break;
                    case 1:
                        AppPipFloaterService appPipFloaterService3 = this.b;
                        AppPipFloaterService appPipFloaterService4 = AppPipFloaterService.f769x;
                        appPipFloaterService3.i(0.8333333333333334d);
                        break;
                    case 2:
                        AppPipFloaterService appPipFloaterService5 = this.b;
                        Double dValueOf = Double.valueOf(16.0d);
                        Double dValueOf2 = Double.valueOf(9.0d);
                        lg lgVar = appPipFloaterService5.f778k;
                        ng ngVar = appPipFloaterService5.f777j;
                        if (!appPipFloaterService5.j() || lgVar == null || ngVar == null || appPipFloaterService5.f781n) {
                            StringBuilder sb = new StringBuilder("resize ignorado: controle=");
                            sb.append(appPipFloaterService5.j());
                            sb.append(" bounds=");
                            sb.append(lgVar != null);
                            sb.append(" tela=");
                            sb.append(ngVar != null);
                            sb.append(" ocupado=");
                            sb.append(appPipFloaterService5.f781n);
                            Log.i("AppPipFloater", sb.toString());
                        } else {
                            boolean z2 = appPipFloaterService5.f779l;
                            appPipFloaterService5.f779l = !z2;
                            double d3 = ((double) (lgVar.f3856c - lgVar.f3855a)) * ((double) (lgVar.f3857d - lgVar.b));
                            x1.a aVar = !z2 ? new x1.a(dValueOf2, dValueOf) : new x1.a(dValueOf, dValueOf2);
                            double dDoubleValue = ((Number) aVar.f4641a).doubleValue();
                            double dDoubleValue2 = ((Number) aVar.b).doubleValue();
                            double dSqrt = Math.sqrt(d3 / (dDoubleValue * dDoubleValue2));
                            int i6 = (int) (dDoubleValue * dSqrt);
                            int i7 = (int) (dDoubleValue2 * dSqrt);
                            int i8 = (lgVar.f3855a + lgVar.f3856c) / 2;
                            int i9 = (lgVar.b + lgVar.f3857d) / 2;
                            int i10 = i6 / 2;
                            int i11 = i7 / 2;
                            appPipFloaterService5.a(AppPipFloaterService.c(new lg(i8 - i10, i9 - i11, i8 + i10, i9 + i11), ngVar));
                        }
                        return x1.e.f4647c;
                    default:
                        y3 y3Var3 = y3.f4560c;
                        AppPipFloaterService appPipFloaterService6 = this.b;
                        mg mgVar = appPipFloaterService6.f776i;
                        Integer num = appPipFloaterService6.f788u;
                        if (mgVar == null) {
                            if (num != null) {
                                y3Var2 = y3.b;
                            } else {
                                y3Var = y3Var3;
                            }
                            if (y3Var != y3Var3) {
                                appPipFloaterService6.f781n = true;
                                appPipFloaterService6.l();
                                appPipFloaterService6.f775h.removeCallbacks(appPipFloaterService6.f789v);
                                new Thread(new x(y3Var, mgVar, num, appPipFloaterService6, 1)).start();
                            }
                            return x1.e.f4647c;
                        }
                        y3Var2 = y3.f4559a;
                        y3Var = y3Var2;
                        if (y3Var != y3Var3) {
                            appPipFloaterService6.f781n = true;
                            appPipFloaterService6.l();
                            appPipFloaterService6.f775h.removeCallbacks(appPipFloaterService6.f789v);
                            new Thread(new x(y3Var, mgVar, num, appPipFloaterService6, 1)).start();
                        }
                        return x1.e.f4647c;
                }
                return x1.e.f4647c;
            }
        }));
        LinearLayout linearLayout5 = new LinearLayout(this);
        linearLayout5.setOrientation(0);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.topMargin = e(4);
        linearLayout5.setLayoutParams(layoutParams3);
        final int i6 = 2;
        linearLayout5.addView(b(this, "⟲", -868072894, new a(this) { // from class: w0.f0
            public final /* synthetic */ AppPipFloaterService b;

            {
                this.b = this;
            }

            /* JADX WARN: Code duplicated, block: B:13:0x001d  */
            @Override // h2.a
            public final Object a() {
                y3 y3Var;
                y3 y3Var2;
                switch (i6) {
                    case 0:
                        AppPipFloaterService appPipFloaterService = this.b;
                        AppPipFloaterService appPipFloaterService2 = AppPipFloaterService.f769x;
                        appPipFloaterService.i(1.2d);
                        break;
                    case 1:
                        AppPipFloaterService appPipFloaterService3 = this.b;
                        AppPipFloaterService appPipFloaterService4 = AppPipFloaterService.f769x;
                        appPipFloaterService3.i(0.8333333333333334d);
                        break;
                    case 2:
                        AppPipFloaterService appPipFloaterService5 = this.b;
                        Double dValueOf = Double.valueOf(16.0d);
                        Double dValueOf2 = Double.valueOf(9.0d);
                        lg lgVar = appPipFloaterService5.f778k;
                        ng ngVar = appPipFloaterService5.f777j;
                        if (!appPipFloaterService5.j() || lgVar == null || ngVar == null || appPipFloaterService5.f781n) {
                            StringBuilder sb = new StringBuilder("resize ignorado: controle=");
                            sb.append(appPipFloaterService5.j());
                            sb.append(" bounds=");
                            sb.append(lgVar != null);
                            sb.append(" tela=");
                            sb.append(ngVar != null);
                            sb.append(" ocupado=");
                            sb.append(appPipFloaterService5.f781n);
                            Log.i("AppPipFloater", sb.toString());
                        } else {
                            boolean z2 = appPipFloaterService5.f779l;
                            appPipFloaterService5.f779l = !z2;
                            double d3 = ((double) (lgVar.f3856c - lgVar.f3855a)) * ((double) (lgVar.f3857d - lgVar.b));
                            x1.a aVar = !z2 ? new x1.a(dValueOf2, dValueOf) : new x1.a(dValueOf, dValueOf2);
                            double dDoubleValue = ((Number) aVar.f4641a).doubleValue();
                            double dDoubleValue2 = ((Number) aVar.b).doubleValue();
                            double dSqrt = Math.sqrt(d3 / (dDoubleValue * dDoubleValue2));
                            int i7 = (int) (dDoubleValue * dSqrt);
                            int i8 = (int) (dDoubleValue2 * dSqrt);
                            int i9 = (lgVar.f3855a + lgVar.f3856c) / 2;
                            int i10 = (lgVar.b + lgVar.f3857d) / 2;
                            int i11 = i7 / 2;
                            int i12 = i8 / 2;
                            appPipFloaterService5.a(AppPipFloaterService.c(new lg(i9 - i11, i10 - i12, i9 + i11, i10 + i12), ngVar));
                        }
                        return x1.e.f4647c;
                    default:
                        y3 y3Var3 = y3.f4560c;
                        AppPipFloaterService appPipFloaterService6 = this.b;
                        mg mgVar = appPipFloaterService6.f776i;
                        Integer num = appPipFloaterService6.f788u;
                        if (mgVar == null) {
                            if (num != null) {
                                y3Var2 = y3.b;
                            } else {
                                y3Var = y3Var3;
                            }
                            if (y3Var != y3Var3) {
                                appPipFloaterService6.f781n = true;
                                appPipFloaterService6.l();
                                appPipFloaterService6.f775h.removeCallbacks(appPipFloaterService6.f789v);
                                new Thread(new x(y3Var, mgVar, num, appPipFloaterService6, 1)).start();
                            }
                            return x1.e.f4647c;
                        }
                        y3Var2 = y3.f4559a;
                        y3Var = y3Var2;
                        if (y3Var != y3Var3) {
                            appPipFloaterService6.f781n = true;
                            appPipFloaterService6.l();
                            appPipFloaterService6.f775h.removeCallbacks(appPipFloaterService6.f789v);
                            new Thread(new x(y3Var, mgVar, num, appPipFloaterService6, 1)).start();
                        }
                        return x1.e.f4647c;
                }
                return x1.e.f4647c;
            }
        }));
        final int i7 = 3;
        linearLayout5.addView(b(this, "✕", -860414948, new a(this) { // from class: w0.f0
            public final /* synthetic */ AppPipFloaterService b;

            {
                this.b = this;
            }

            /* JADX WARN: Code duplicated, block: B:13:0x001d  */
            @Override // h2.a
            public final Object a() {
                y3 y3Var;
                y3 y3Var2;
                switch (i7) {
                    case 0:
                        AppPipFloaterService appPipFloaterService = this.b;
                        AppPipFloaterService appPipFloaterService2 = AppPipFloaterService.f769x;
                        appPipFloaterService.i(1.2d);
                        break;
                    case 1:
                        AppPipFloaterService appPipFloaterService3 = this.b;
                        AppPipFloaterService appPipFloaterService4 = AppPipFloaterService.f769x;
                        appPipFloaterService3.i(0.8333333333333334d);
                        break;
                    case 2:
                        AppPipFloaterService appPipFloaterService5 = this.b;
                        Double dValueOf = Double.valueOf(16.0d);
                        Double dValueOf2 = Double.valueOf(9.0d);
                        lg lgVar = appPipFloaterService5.f778k;
                        ng ngVar = appPipFloaterService5.f777j;
                        if (!appPipFloaterService5.j() || lgVar == null || ngVar == null || appPipFloaterService5.f781n) {
                            StringBuilder sb = new StringBuilder("resize ignorado: controle=");
                            sb.append(appPipFloaterService5.j());
                            sb.append(" bounds=");
                            sb.append(lgVar != null);
                            sb.append(" tela=");
                            sb.append(ngVar != null);
                            sb.append(" ocupado=");
                            sb.append(appPipFloaterService5.f781n);
                            Log.i("AppPipFloater", sb.toString());
                        } else {
                            boolean z2 = appPipFloaterService5.f779l;
                            appPipFloaterService5.f779l = !z2;
                            double d3 = ((double) (lgVar.f3856c - lgVar.f3855a)) * ((double) (lgVar.f3857d - lgVar.b));
                            x1.a aVar = !z2 ? new x1.a(dValueOf2, dValueOf) : new x1.a(dValueOf, dValueOf2);
                            double dDoubleValue = ((Number) aVar.f4641a).doubleValue();
                            double dDoubleValue2 = ((Number) aVar.b).doubleValue();
                            double dSqrt = Math.sqrt(d3 / (dDoubleValue * dDoubleValue2));
                            int i8 = (int) (dDoubleValue * dSqrt);
                            int i9 = (int) (dDoubleValue2 * dSqrt);
                            int i10 = (lgVar.f3855a + lgVar.f3856c) / 2;
                            int i11 = (lgVar.b + lgVar.f3857d) / 2;
                            int i12 = i8 / 2;
                            int i13 = i9 / 2;
                            appPipFloaterService5.a(AppPipFloaterService.c(new lg(i10 - i12, i11 - i13, i10 + i12, i11 + i13), ngVar));
                        }
                        return x1.e.f4647c;
                    default:
                        y3 y3Var3 = y3.f4560c;
                        AppPipFloaterService appPipFloaterService6 = this.b;
                        mg mgVar = appPipFloaterService6.f776i;
                        Integer num = appPipFloaterService6.f788u;
                        if (mgVar == null) {
                            if (num != null) {
                                y3Var2 = y3.b;
                            } else {
                                y3Var = y3Var3;
                            }
                            if (y3Var != y3Var3) {
                                appPipFloaterService6.f781n = true;
                                appPipFloaterService6.l();
                                appPipFloaterService6.f775h.removeCallbacks(appPipFloaterService6.f789v);
                                new Thread(new x(y3Var, mgVar, num, appPipFloaterService6, 1)).start();
                            }
                            return x1.e.f4647c;
                        }
                        y3Var2 = y3.f4559a;
                        y3Var = y3Var2;
                        if (y3Var != y3Var3) {
                            appPipFloaterService6.f781n = true;
                            appPipFloaterService6.l();
                            appPipFloaterService6.f775h.removeCallbacks(appPipFloaterService6.f789v);
                            new Thread(new x(y3Var, mgVar, num, appPipFloaterService6, 1)).start();
                        }
                        return x1.e.f4647c;
                }
                return x1.e.f4647c;
            }
        }));
        LinearLayout linearLayout6 = this.f772d;
        g.b(linearLayout6);
        linearLayout6.addView(linearLayout4);
        LinearLayout linearLayout7 = this.f772d;
        g.b(linearLayout7);
        linearLayout7.addView(linearLayout5);
        LinearLayout linearLayout8 = this.b;
        g.b(linearLayout8);
        linearLayout8.addView(this.f772d);
        LinearLayout linearLayout9 = new LinearLayout(this);
        linearLayout9.setOrientation(1);
        linearLayout9.setVisibility(8);
        linearLayout9.setBackground(h(-299884252, 14));
        linearLayout9.setPadding(e(8), e(8), e(8), e(8));
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(e(240), -2);
        layoutParams4.topMargin = e(6);
        linearLayout9.setLayoutParams(layoutParams4);
        this.f773e = linearLayout9;
        LinearLayout linearLayout10 = new LinearLayout(this);
        linearLayout10.setOrientation(0);
        linearLayout10.setGravity(16);
        TextView textView2 = new TextView(this);
        textView2.setText(getString(R.string.k_open_in_pip));
        textView2.setTextSize(14.0f);
        textView2.setTextColor(-10177034);
        linearLayout10.addView(textView2, new LinearLayout.LayoutParams(0, -2, 1.0f));
        TextView textView3 = new TextView(this);
        textView3.setText("✕");
        textView3.setTextSize(16.0f);
        textView3.setTextColor(-1092784);
        textView3.setPadding(e(10), e(2), e(10), e(2));
        final int i8 = 1;
        textView3.setOnClickListener(new View.OnClickListener(this) { // from class: w0.e0
            public final /* synthetic */ AppPipFloaterService b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i8) {
                    case 0:
                        AppPipFloaterService appPipFloaterService = this.b;
                        if (appPipFloaterService.f781n) {
                            String string3 = appPipFloaterService.getString(R.string.k_toast_wait_processing);
                            i2.g.d(string3, "getString(...)");
                            appPipFloaterService.k(string3);
                        } else {
                            int i9 = 0;
                            if (appPipFloaterService.f780m) {
                                LinearLayout linearLayout11 = appPipFloaterService.f773e;
                                if (linearLayout11 != null) {
                                    linearLayout11.setVisibility(8);
                                }
                                appPipFloaterService.f780m = false;
                            } else if (appPipFloaterService.j()) {
                                String string4 = appPipFloaterService.getString(R.string.k_pip_active_hint);
                                i2.g.d(string4, "getString(...)");
                                appPipFloaterService.k(string4);
                            } else {
                                LinearLayout linearLayout12 = appPipFloaterService.f;
                                if (linearLayout12 != null) {
                                    linearLayout12.removeAllViews();
                                    List<x1.a> listH = og.h(appPipFloaterService);
                                    if (listH.isEmpty()) {
                                        TextView textView4 = new TextView(appPipFloaterService);
                                        textView4.setText(appPipFloaterService.getString(R.string.k_no_app_found));
                                        textView4.setTextColor(-3355444);
                                        textView4.setPadding(appPipFloaterService.e(6), appPipFloaterService.e(10), appPipFloaterService.e(6), appPipFloaterService.e(10));
                                        linearLayout12.addView(textView4);
                                    } else {
                                        for (x1.a aVar : listH) {
                                            String str = (String) aVar.f4641a;
                                            String str2 = (String) aVar.b;
                                            TextView textView5 = new TextView(appPipFloaterService);
                                            textView5.setText(str);
                                            textView5.setTextSize(14.0f);
                                            textView5.setTextColor(-1);
                                            textView5.setPadding(appPipFloaterService.e(12), appPipFloaterService.e(12), appPipFloaterService.e(12), appPipFloaterService.e(12));
                                            textView5.setBackground(appPipFloaterService.h(-13618892, 10));
                                            textView5.setOnClickListener(new a0(appPipFloaterService, i9, str2));
                                            LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, -2);
                                            layoutParams5.bottomMargin = appPipFloaterService.e(4);
                                            linearLayout12.addView(textView5, layoutParams5);
                                        }
                                    }
                                }
                                LinearLayout linearLayout13 = appPipFloaterService.f773e;
                                if (linearLayout13 != null) {
                                    linearLayout13.setVisibility(0);
                                }
                                appPipFloaterService.f780m = true;
                            }
                        }
                        break;
                    default:
                        AppPipFloaterService appPipFloaterService2 = this.b;
                        AppPipFloaterService appPipFloaterService3 = AppPipFloaterService.f769x;
                        appPipFloaterService2.d();
                        break;
                }
            }
        });
        linearLayout10.addView(textView3);
        LinearLayout linearLayout11 = this.f773e;
        g.b(linearLayout11);
        linearLayout11.addView(linearLayout10);
        LinearLayout linearLayout12 = new LinearLayout(this);
        linearLayout12.setOrientation(1);
        this.f = linearLayout12;
        ScrollView scrollView = new ScrollView(this);
        scrollView.addView(this.f, new LinearLayout.LayoutParams(-1, -2));
        LinearLayout linearLayout13 = this.f773e;
        g.b(linearLayout13);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, e(300));
        layoutParams5.topMargin = e(6);
        linearLayout13.addView(scrollView, layoutParams5);
        LinearLayout linearLayout14 = this.b;
        g.b(linearLayout14);
        linearLayout14.addView(this.f773e);
        this.f775h.postDelayed(this.f790w, 2000L);
        WindowManager.LayoutParams layoutParams6 = new WindowManager.LayoutParams(-2, -2, 2038, 264, -3);
        layoutParams6.gravity = 8388627;
        layoutParams6.x = e(8);
        layoutParams6.y = e(90);
        this.f774g = layoutParams6;
        try {
            WindowManager windowManager = this.f770a;
            if (windowManager != null) {
                windowManager.addView(this.b, layoutParams6);
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
            k(string3);
            stopSelf();
        }
    }

    @Override // android.app.Service
    public final void onDestroy() {
        this.f787t = true;
        f769x = null;
        this.f775h.removeCallbacks(this.f789v);
        this.f775h.removeCallbacksAndMessages(null);
        try {
            WindowManager windowManager = this.f770a;
            if (windowManager == null) {
                g.h("wm");
                throw null;
            }
            windowManager.removeView(this.b);
            super.onDestroy();
        } catch (Throwable unused) {
        }
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i3, int i4) {
        String stringExtra = intent != null ? intent.getStringExtra("pacote") : null;
        if (stringExtra == null || k.m0(stringExtra)) {
            return 2;
        }
        this.f775h.postDelayed(new y(this, stringExtra, 1), 900L);
        return 2;
    }
}
