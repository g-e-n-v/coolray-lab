package com.ex.auto;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.activity.d;
import com.ex.auto.TimerFloaterService;
import h2.a;
import i2.g;
import i2.k;
import i2.l;
import q0.b;
import w0.ah;
import w0.e8;
import w0.q1;
import w0.w;

/* JADX INFO: loaded from: classes.dex */
public final class TimerFloaterService extends Service {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static volatile boolean f1220o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WindowManager f1221a;
    public LinearLayout b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public WindowManager.LayoutParams f1222c;
    public TextView f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Button f1225g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public LinearLayout f1226h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f1227i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f1228j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f1229k;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Handler f1223d = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f1224e = "crono";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f1230l = 300000;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public float f1231m = 1.0f;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final b f1232n = new b(new e0.b(3, this), new q1(6, this), new ah(this, 0), new ah(this, 1));

    public static final void f(final TimerFloaterService timerFloaterService, String str, final long j3) {
        LinearLayout linearLayout = timerFloaterService.f1226h;
        if (linearLayout != null) {
            final int i3 = 0;
            linearLayout.addView(timerFloaterService.b("−", timerFloaterService.d(6), new a(timerFloaterService) { // from class: w0.zg
                public final /* synthetic */ TimerFloaterService b;

                {
                    this.b = timerFloaterService;
                }

                @Override // h2.a
                public final Object a() {
                    switch (i3) {
                        case 0:
                            TimerFloaterService timerFloaterService2 = this.b;
                            long j4 = j3;
                            boolean z2 = TimerFloaterService.f1220o;
                            long j5 = -j4;
                            if (!timerFloaterService2.f1229k) {
                                long jL = k1.a.l(timerFloaterService2.f1230l + j5, 0L, 86399000L);
                                timerFloaterService2.f1230l = jL;
                                timerFloaterService2.f1227i = jL;
                                timerFloaterService2.f1232n.j();
                            }
                            break;
                        default:
                            TimerFloaterService timerFloaterService3 = this.b;
                            long j6 = j3;
                            boolean z3 = TimerFloaterService.f1220o;
                            if (!timerFloaterService3.f1229k) {
                                long jL2 = k1.a.l(timerFloaterService3.f1230l + j6, 0L, 86399000L);
                                timerFloaterService3.f1230l = jL2;
                                timerFloaterService3.f1227i = jL2;
                                timerFloaterService3.f1232n.j();
                            }
                            break;
                    }
                    return x1.e.f4647c;
                }
            }));
        }
        LinearLayout linearLayout2 = timerFloaterService.f1226h;
        if (linearLayout2 != null) {
            TextView textView = new TextView(timerFloaterService);
            textView.setText(str);
            textView.setTextColor(-5195584);
            textView.setTextSize(timerFloaterService.f1231m * 16.0f);
            textView.setPadding(timerFloaterService.d(4), 0, timerFloaterService.d(4), 0);
            linearLayout2.addView(textView);
        }
        LinearLayout linearLayout3 = timerFloaterService.f1226h;
        if (linearLayout3 != null) {
            final int i4 = 1;
            linearLayout3.addView(timerFloaterService.b("+", timerFloaterService.d(6), new a(timerFloaterService) { // from class: w0.zg
                public final /* synthetic */ TimerFloaterService b;

                {
                    this.b = timerFloaterService;
                }

                @Override // h2.a
                public final Object a() {
                    switch (i4) {
                        case 0:
                            TimerFloaterService timerFloaterService2 = this.b;
                            long j4 = j3;
                            boolean z2 = TimerFloaterService.f1220o;
                            long j5 = -j4;
                            if (!timerFloaterService2.f1229k) {
                                long jL = k1.a.l(timerFloaterService2.f1230l + j5, 0L, 86399000L);
                                timerFloaterService2.f1230l = jL;
                                timerFloaterService2.f1227i = jL;
                                timerFloaterService2.f1232n.j();
                            }
                            break;
                        default:
                            TimerFloaterService timerFloaterService3 = this.b;
                            long j6 = j3;
                            boolean z3 = TimerFloaterService.f1220o;
                            if (!timerFloaterService3.f1229k) {
                                long jL2 = k1.a.l(timerFloaterService3.f1230l + j6, 0L, 86399000L);
                                timerFloaterService3.f1230l = jL2;
                                timerFloaterService3.f1227i = jL2;
                                timerFloaterService3.f1232n.j();
                            }
                            break;
                    }
                    return x1.e.f4647c;
                }
            }));
        }
    }

    public final long a() {
        long jElapsedRealtime = this.f1229k ? SystemClock.elapsedRealtime() - this.f1228j : 0L;
        if (!g.a(this.f1224e, "regressiva")) {
            return this.f1227i + jElapsedRealtime;
        }
        long j3 = this.f1227i - jElapsedRealtime;
        if (j3 < 0) {
            return 0L;
        }
        return j3;
    }

    @Override // android.app.Service, android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        g.e(context, "base");
        super.attachBaseContext(e8.p(context));
    }

    public final Button b(String str, int i3, a aVar) {
        Button button = new Button(this);
        button.setText(str);
        button.setTextSize(this.f1231m * 18.0f);
        button.setAllCaps(false);
        button.setTextColor(-1);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(d(12));
        gradientDrawable.setColor(-14736080);
        button.setBackground(gradientDrawable);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(i3, d(4), i3, d(4));
        button.setLayoutParams(layoutParams);
        button.setOnClickListener(new w(aVar, 7));
        return button;
    }

    public final void c() {
        b bVar = this.f1232n;
        ((q1) bVar.f2844c).c((d) bVar.f);
        LinearLayout linearLayout = this.b;
        if (linearLayout == null) {
            return;
        }
        try {
            WindowManager windowManager = this.f1221a;
            if (windowManager == null) {
                g.h("wm");
                throw null;
            }
            windowManager.removeView(linearLayout);
            this.b = null;
            this.f1222c = null;
            this.f = null;
            this.f1225g = null;
            this.f1226h = null;
        } catch (Throwable unused) {
        }
    }

    public final int d(int i3) {
        return (int) (i3 * getResources().getDisplayMetrics().density);
    }

    public final void e() {
        final TimerFloaterService timerFloaterService;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(d(18));
        gradientDrawable.setColor(-435022825);
        gradientDrawable.setStroke(d(1), 872415231);
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(1);
        linearLayout.setBackground(gradientDrawable);
        linearLayout.setPadding(d(18), d(12), d(18), d(12));
        if (g.a(this.f1224e, "regressiva")) {
            LinearLayout linearLayout2 = new LinearLayout(this);
            linearLayout2.setOrientation(0);
            linearLayout2.setGravity(17);
            this.f1226h = linearLayout2;
            String string = getString(R.string.k_timer_h);
            g.d(string, "getString(...)");
            f(this, string, 3600000L);
            String string2 = getString(R.string.k_timer_m);
            g.d(string2, "getString(...)");
            f(this, string2, 60000L);
            String string3 = getString(R.string.k_timer_s);
            g.d(string3, "getString(...)");
            f(this, string3, 1000L);
            linearLayout.addView(this.f1226h);
        }
        TextView textView = new TextView(this);
        textView.setTextColor(-1);
        textView.setTextSize(this.f1231m * 64.0f);
        textView.setTypeface(Typeface.MONOSPACE);
        textView.setPadding(0, d(4), 0, d(4));
        textView.setGravity(17);
        this.f = textView;
        linearLayout.addView(textView);
        LinearLayout linearLayout3 = new LinearLayout(this);
        linearLayout3.setOrientation(0);
        linearLayout3.setGravity(17);
        String string4 = getString(R.string.k_timer_iniciar);
        g.d(string4, "getString(...)");
        Button buttonB = b(string4, d(10), new ah(this, 2));
        this.f1225g = buttonB;
        linearLayout3.addView(buttonB);
        String string5 = getString(R.string.k_timer_reiniciar);
        g.d(string5, "getString(...)");
        linearLayout3.addView(b(string5, d(10), new ah(this, 3)));
        linearLayout3.addView(b("A−", d(10), new ah(this, 4)));
        linearLayout3.addView(b("A+", d(10), new ah(this, 5)));
        linearLayout3.addView(b("✕", d(10), new ah(this, 6)));
        linearLayout.addView(linearLayout3);
        final l lVar = new l();
        final l lVar2 = new l();
        final k kVar = new k();
        final k kVar2 = new k();
        TextView textView2 = this.f;
        if (textView2 != null) {
            timerFloaterService = this;
            textView2.setOnTouchListener(new View.OnTouchListener() { // from class: w0.bh
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    TimerFloaterService timerFloaterService2 = this.f3408a;
                    WindowManager.LayoutParams layoutParams = timerFloaterService2.f1222c;
                    if (layoutParams == null) {
                        return false;
                    }
                    int action = motionEvent.getAction();
                    i2.l lVar3 = lVar;
                    i2.l lVar4 = lVar2;
                    i2.k kVar3 = kVar;
                    i2.k kVar4 = kVar2;
                    if (action == 0) {
                        lVar3.f2291a = layoutParams.x;
                        lVar4.f2291a = layoutParams.y;
                        kVar3.f2290a = motionEvent.getRawX();
                        kVar4.f2290a = motionEvent.getRawY();
                        return true;
                    }
                    if (action != 2) {
                        return false;
                    }
                    layoutParams.x = lVar3.f2291a + ((int) (motionEvent.getRawX() - kVar3.f2290a));
                    layoutParams.y = lVar4.f2291a + ((int) (motionEvent.getRawY() - kVar4.f2290a));
                    try {
                        WindowManager windowManager = timerFloaterService2.f1221a;
                        if (windowManager != null) {
                            windowManager.updateViewLayout(timerFloaterService2.b, layoutParams);
                            return true;
                        }
                        i2.g.h("wm");
                        throw null;
                    } catch (Throwable unused) {
                    }
                }
            });
        } else {
            timerFloaterService = this;
        }
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, 2038, 264, -3);
        layoutParams.gravity = 17;
        timerFloaterService.b = linearLayout;
        timerFloaterService.f1222c = layoutParams;
        try {
            WindowManager windowManager = timerFloaterService.f1221a;
            if (windowManager == null) {
                g.h("wm");
                throw null;
            }
            windowManager.addView(linearLayout, layoutParams);
            timerFloaterService.f1232n.j();
        } catch (Throwable th) {
            String message = th.getMessage();
            if (message == null) {
                message = "";
            }
            Toast.makeText(this, getString(R.string.k_overlay_failure, message), 1).show();
            stopSelf();
        }
    }

    public final void g(float f) {
        LinearLayout linearLayout;
        this.f1231m = k1.a.j(this.f1231m + f, 0.6f, 3.0f);
        getSharedPreferences("timer_floater", 0).edit().putFloat("escala", this.f1231m).apply();
        c();
        e();
        Button button = this.f1225g;
        if (button != null) {
            button.setText(getString(this.f1229k ? R.string.k_timer_pausar : R.string.k_timer_iniciar));
        }
        if (g.a(this.f1224e, "regressiva") && this.f1229k && (linearLayout = this.f1226h) != null) {
            linearLayout.setVisibility(8);
        }
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
        this.f1221a = (WindowManager) systemService;
        this.f1231m = getSharedPreferences("timer_floater", 0).getFloat("escala", 1.0f);
    }

    @Override // android.app.Service
    public final void onDestroy() {
        this.f1223d.removeCallbacksAndMessages(null);
        c();
        f1220o = false;
        super.onDestroy();
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i3, int i4) {
        String stringExtra;
        if (intent == null || (stringExtra = intent.getStringExtra("modo")) == null) {
            stringExtra = "crono";
        }
        if (this.b != null && stringExtra.equals(this.f1224e)) {
            return 2;
        }
        if (this.b != null) {
            c();
        }
        this.f1224e = stringExtra;
        this.f1227i = stringExtra.equals("regressiva") ? this.f1230l : 0L;
        this.f1229k = false;
        e();
        f1220o = true;
        return 2;
    }
}
