package com.ex.auto;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.GradientDrawable;
import android.os.IBinder;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.activity.result.b;
import com.ex.auto.ExSapoCastFloaterService;
import h2.a;
import i2.g;
import i2.j;
import i2.k;
import i2.l;
import w0.d6;
import w0.e8;
import w0.f2;
import w0.f6;
import w0.j6;
import w0.m;
import w0.m6;
import w0.w;
import w0.w5;
import w0.yd;

/* JADX INFO: loaded from: classes.dex */
public final class ExSapoCastFloaterService extends Service implements j6 {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ int f914j = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WindowManager f915a;
    public LinearLayout b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SurfaceView f916c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public WindowManager.LayoutParams f917d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f918e;
    public int f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f919g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f920h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f921i = 0.6f;

    public static final TextView e(ExSapoCastFloaterService exSapoCastFloaterService, String str, a aVar) {
        TextView textView = new TextView(exSapoCastFloaterService);
        textView.setText(str);
        textView.setTextColor(-1);
        textView.setTextSize(17.0f);
        textView.setGravity(17);
        int iH = exSapoCastFloaterService.h(30);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(iH, iH);
        layoutParams.setMarginStart(exSapoCastFloaterService.h(2));
        textView.setLayoutParams(layoutParams);
        textView.setOnClickListener(new w(aVar, 2));
        return textView;
    }

    @Override // w0.j6
    public final void a(int i3, int i4) {
        if (i3 <= 0 || i4 <= 0) {
            return;
        }
        if (i3 == this.f919g && i4 == this.f920h) {
            return;
        }
        this.f919g = i3;
        this.f920h = i4;
        c();
    }

    @Override // android.app.Service, android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        g.e(context, "base");
        super.attachBaseContext(e8.p(context));
    }

    @Override // w0.j6
    public final void b() {
        stopSelf();
    }

    public final void c() {
        x1.a aVarG = g(this.f919g, this.f920h);
        int iIntValue = ((Number) aVarG.f4641a).intValue();
        int iIntValue2 = ((Number) aVarG.b).intValue();
        SurfaceView surfaceView = this.f916c;
        if (surfaceView != null) {
            surfaceView.setLayoutParams(new LinearLayout.LayoutParams(iIntValue, iIntValue2));
        }
        SurfaceView surfaceView2 = this.f916c;
        if (surfaceView2 != null) {
            surfaceView2.requestLayout();
        }
        WindowManager.LayoutParams layoutParams = this.f917d;
        if (layoutParams == null) {
            g.h("lp");
            throw null;
        }
        layoutParams.width = iIntValue;
        if (layoutParams == null) {
            g.h("lp");
            throw null;
        }
        int i3 = this.f918e;
        int i4 = this.f;
        layoutParams.height = i3 + iIntValue2 + i4;
        f(iIntValue, i3 + iIntValue2 + i4);
        try {
            WindowManager windowManager = this.f915a;
            if (windowManager == null) {
                g.h("wm");
                throw null;
            }
            LinearLayout linearLayout = this.b;
            WindowManager.LayoutParams layoutParams2 = this.f917d;
            if (layoutParams2 != null) {
                windowManager.updateViewLayout(linearLayout, layoutParams2);
            } else {
                g.h("lp");
                throw null;
            }
        } catch (Throwable unused) {
        }
    }

    public final void d() {
        if (this.b != null) {
            return;
        }
        x1.a aVarG = g(this.f919g, this.f920h);
        int iIntValue = ((Number) aVarG.f4641a).intValue();
        int iIntValue2 = ((Number) aVarG.b).intValue();
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(h(12));
        gradientDrawable.setColor(-301068012);
        linearLayout.setBackground(gradientDrawable);
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(16);
        linearLayout2.setLayoutParams(new LinearLayout.LayoutParams(-1, this.f918e));
        linearLayout2.setPadding(h(8), 0, h(4), 0);
        TextView textView = new TextView(this);
        textView.setText("⠿  ExSapoCast");
        textView.setTextColor(-1711276033);
        textView.setTextSize(12.0f);
        textView.setLayoutParams(new LinearLayout.LayoutParams(0, -1, 1.0f));
        textView.setGravity(16);
        linearLayout2.addView(textView);
        linearLayout2.addView(e(this, "‹", new w5(4)));
        linearLayout2.addView(e(this, "○", new w5(5)));
        linearLayout2.addView(e(this, "▢", new w5(6)));
        linearLayout2.addView(e(this, "✕", new f2(2, this)));
        linearLayout.addView(linearLayout2);
        SurfaceView surfaceView = new SurfaceView(this);
        surfaceView.setLayoutParams(new LinearLayout.LayoutParams(iIntValue, iIntValue2));
        surfaceView.setZOrderOnTop(true);
        surfaceView.getHolder().addCallback(new f6(1));
        surfaceView.setOnTouchListener(new d6(this, 1));
        linearLayout.addView(surfaceView);
        this.f916c = surfaceView;
        LinearLayout linearLayout3 = new LinearLayout(this);
        linearLayout3.setOrientation(0);
        linearLayout3.setGravity(16);
        linearLayout3.setLayoutParams(new LinearLayout.LayoutParams(-1, this.f));
        View view = new View(this);
        view.setLayoutParams(new LinearLayout.LayoutParams(0, h(1), 1.0f));
        linearLayout3.addView(view);
        TextView textView2 = new TextView(this);
        textView2.setText("◢");
        textView2.setTextColor(-855638017);
        textView2.setTextSize(16.0f);
        textView2.setGravity(17);
        textView2.setLayoutParams(new LinearLayout.LayoutParams(h(52), this.f));
        final k kVar = new k();
        final k kVar2 = new k();
        final k kVar3 = new k();
        textView2.setOnTouchListener(new View.OnTouchListener() { // from class: w0.h6
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                int i3 = ExSapoCastFloaterService.f914j;
                int action = motionEvent.getAction();
                i2.k kVar4 = kVar;
                i2.k kVar5 = kVar2;
                i2.k kVar6 = kVar3;
                ExSapoCastFloaterService exSapoCastFloaterService = this;
                if (action == 0) {
                    kVar4.f2290a = motionEvent.getRawX();
                    kVar5.f2290a = motionEvent.getRawY();
                    kVar6.f2290a = exSapoCastFloaterService.f921i;
                    return true;
                }
                if (action == 1) {
                    exSapoCastFloaterService.getSharedPreferences("tela_preta_prefs", 0).edit().putFloat("exsapocast_pip_scale", exSapoCastFloaterService.f921i).apply();
                    return true;
                }
                if (action != 2) {
                    return false;
                }
                x1.a aVarI = exSapoCastFloaterService.i(exSapoCastFloaterService.f919g, exSapoCastFloaterService.f920h);
                float fFloatValue = ((Number) aVarI.f4641a).floatValue();
                float fFloatValue2 = ((Number) aVarI.b).floatValue();
                float f = kVar6.f2290a;
                exSapoCastFloaterService.f921i = k1.a.j(((((motionEvent.getRawY() - kVar5.f2290a) + (f * fFloatValue2)) / fFloatValue2) + (((motionEvent.getRawX() - kVar4.f2290a) + (fFloatValue * f)) / fFloatValue)) / 2.0f, 0.3f, 1.0f);
                exSapoCastFloaterService.c();
                return true;
            }
        });
        linearLayout3.addView(textView2);
        linearLayout.addView(linearLayout3);
        yd ydVarG = e8.G(this, "exsapocast_pip", 8388659, h(60), h(60));
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(iIntValue, this.f918e + iIntValue2 + this.f, 2038, 264, -3);
        layoutParams.gravity = ydVarG.f4590a;
        layoutParams.x = ydVarG.b;
        layoutParams.y = ydVarG.f4591c;
        this.f917d = layoutParams;
        final k kVar4 = new k();
        final k kVar5 = new k();
        final l lVar = new l();
        final l lVar2 = new l();
        final j jVar = new j();
        linearLayout2.setOnTouchListener(new View.OnTouchListener() { // from class: w0.g6
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                int i3 = ExSapoCastFloaterService.f914j;
                int action = motionEvent.getAction();
                i2.k kVar6 = kVar4;
                i2.k kVar7 = kVar5;
                i2.l lVar3 = lVar;
                ExSapoCastFloaterService exSapoCastFloaterService = this;
                i2.l lVar4 = lVar2;
                i2.j jVar2 = jVar;
                if (action == 0) {
                    kVar6.f2290a = motionEvent.getRawX();
                    kVar7.f2290a = motionEvent.getRawY();
                    WindowManager.LayoutParams layoutParams2 = exSapoCastFloaterService.f917d;
                    if (layoutParams2 == null) {
                        i2.g.h("lp");
                        throw null;
                    }
                    lVar3.f2291a = layoutParams2.x;
                    lVar4.f2291a = layoutParams2.y;
                    jVar2.f2289a = false;
                    return true;
                }
                if (action != 1) {
                    if (action != 2) {
                        return false;
                    }
                    int rawX = (int) (motionEvent.getRawX() - kVar6.f2290a);
                    int rawY = (int) (motionEvent.getRawY() - kVar7.f2290a);
                    if (Math.abs(rawX) > exSapoCastFloaterService.h(6) || Math.abs(rawY) > exSapoCastFloaterService.h(6)) {
                        jVar2.f2289a = true;
                    }
                    WindowManager.LayoutParams layoutParams3 = exSapoCastFloaterService.f917d;
                    if (layoutParams3 == null) {
                        i2.g.h("lp");
                        throw null;
                    }
                    layoutParams3.x = lVar3.f2291a + rawX;
                    layoutParams3.y = lVar4.f2291a + rawY;
                    try {
                        WindowManager windowManager = exSapoCastFloaterService.f915a;
                        if (windowManager == null) {
                            i2.g.h("wm");
                            throw null;
                        }
                        windowManager.updateViewLayout(exSapoCastFloaterService.b, layoutParams3);
                    } catch (Throwable unused) {
                    }
                } else if (jVar2.f2289a) {
                    WindowManager.LayoutParams layoutParams4 = exSapoCastFloaterService.f917d;
                    if (layoutParams4 != null) {
                        e8.M(exSapoCastFloaterService, "exsapocast_pip", layoutParams4.gravity, layoutParams4.x, layoutParams4.y);
                        return true;
                    }
                    i2.g.h("lp");
                    throw null;
                }
                return true;
            }
        });
        f(iIntValue, this.f918e + iIntValue2 + this.f);
        this.b = linearLayout;
        try {
            WindowManager windowManager = this.f915a;
            if (windowManager == null) {
                g.h("wm");
                throw null;
            }
            ViewGroup.LayoutParams layoutParams2 = this.f917d;
            if (layoutParams2 != null) {
                windowManager.addView(linearLayout, layoutParams2);
            } else {
                g.h("lp");
                throw null;
            }
        } catch (Throwable th) {
            b.s(th, new StringBuilder("addView: "), "ExSapoCast");
        }
    }

    public final void f(int i3, int i4) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        WindowManager.LayoutParams layoutParams = this.f917d;
        if (layoutParams == null) {
            g.h("lp");
            throw null;
        }
        if (layoutParams == null) {
            g.h("lp");
            throw null;
        }
        int i5 = layoutParams.x;
        int i6 = displayMetrics.widthPixels - i3;
        if (i6 < 0) {
            i6 = 0;
        }
        layoutParams.x = k1.a.k(i5, 0, i6);
        WindowManager.LayoutParams layoutParams2 = this.f917d;
        if (layoutParams2 == null) {
            g.h("lp");
            throw null;
        }
        if (layoutParams2 == null) {
            g.h("lp");
            throw null;
        }
        int i7 = layoutParams2.y;
        int i8 = displayMetrics.heightPixels - i4;
        if (i8 < 0) {
            i8 = 0;
        }
        layoutParams2.y = k1.a.k(i7, 0, i8);
    }

    public final x1.a g(int i3, int i4) {
        x1.a aVarI = i(i3, i4);
        float fFloatValue = ((Number) aVarI.f4641a).floatValue();
        float fFloatValue2 = ((Number) aVarI.b).floatValue();
        int i5 = (int) (fFloatValue * this.f921i);
        int iH = h(120);
        if (i5 < iH) {
            i5 = iH;
        }
        int i6 = (int) (fFloatValue2 * this.f921i);
        int iH2 = h(120);
        if (i6 < iH2) {
            i6 = iH2;
        }
        return new x1.a(Integer.valueOf(i5), Integer.valueOf(i6));
    }

    public final int h(int i3) {
        return (int) (i3 * getResources().getDisplayMetrics().density);
    }

    public final x1.a i(int i3, int i4) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        float f = i3;
        float f3 = i4;
        float fMin = Math.min((displayMetrics.widthPixels * 0.92f) / f, (((displayMetrics.heightPixels * 0.9f) - this.f918e) - this.f) / f3);
        return new x1.a(Float.valueOf(f * fMin), Float.valueOf(f3 * fMin));
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
        this.f915a = (WindowManager) systemService;
        this.f918e = h(34);
        this.f = h(34);
        this.f921i = k1.a.j(getSharedPreferences("tela_preta_prefs", 0).getFloat("exsapocast_pip_scale", 0.6f), 0.3f, 1.0f);
        m6 m6Var = m.f3866i;
        int[] iArr = null;
        if (m6Var != null && m6Var.f3892g > 0 && m6Var.f3893h > 0) {
            iArr = new int[]{m6Var.f3892g, m6Var.f3893h};
        }
        if (iArr == null) {
            iArr = new int[]{9, 20};
        }
        this.f919g = iArr[0];
        this.f920h = iArr[1];
        d();
        m.f3861c = this;
    }

    @Override // android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        if (m.f3861c == this) {
            m.f3861c = null;
        }
        m6 m6Var = m.f3866i;
        if (m6Var != null) {
            synchronized (m6Var) {
                m6Var.f3891e = null;
                m6Var.e();
            }
        }
        try {
            LinearLayout linearLayout = this.b;
            if (linearLayout != null) {
                WindowManager windowManager = this.f915a;
                if (windowManager == null) {
                    g.h("wm");
                    throw null;
                }
                windowManager.removeView(linearLayout);
            }
        } catch (Throwable unused) {
        }
        this.b = null;
        this.f916c = null;
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i3, int i4) {
        if (this.b != null) {
            return 2;
        }
        d();
        return 2;
    }
}
