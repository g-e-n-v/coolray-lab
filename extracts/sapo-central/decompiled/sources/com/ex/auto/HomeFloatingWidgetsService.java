package com.ex.auto;

import a1.p;
import a1.s;
import android.app.Service;
import android.car.Car;
import android.car.hardware.property.CarPropertyManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.GridLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.activity.result.b;
import com.ex.auto.HomeFloatingWidgetsService;
import i2.g;
import i2.j;
import i2.k;
import i2.l;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import o2.h;
import w0.b7;
import w0.c7;
import w0.e8;
import w0.jh;
import w0.l1;
import w0.l7;
import w0.p7;
import w0.q7;
import w0.t1;
import w0.t7;
import w0.u7;
import w0.ug;
import w0.v7;
import w0.w6;
import w0.wd;
import w0.x6;
import w0.y6;
import w0.yd;
import x1.a;
import y1.f;
import y1.i;

/* JADX INFO: loaded from: classes.dex */
public final class HomeFloatingWidgetsService extends Service {

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public static final List f926a0 = f.U(new String[]{"widget_float_drive_regen_enabled", "widget_float_fan_enabled", "widget_float_temp_enabled", "widget_float_vent_enabled", "widget_float_vent_fan_enabled", "widget_float_heating_enabled", "widget_float_apps_enabled", "widget_float_volume_enabled", "widget_float_sysinfo_enabled"});

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public static volatile HomeFloatingWidgetsService f927b0;
    public volatile Boolean A;
    public View B;
    public View C;
    public View D;
    public View E;
    public View F;
    public View G;
    public GridLayout H;
    public LinearLayout I;
    public LinearLayout J;
    public FrameLayout K;
    public u7 L;
    public TextView M;
    public TextView N;
    public t7 O;
    public SeekBar P;
    public p7 Q;
    public c0.f R;
    public s S;
    public ArrayList Y;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WindowManager f928a;
    public SharedPreferences b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public volatile boolean f930d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile Car f931e;
    public volatile CarPropertyManager f;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public volatile long f936k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f937l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f938m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f939n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public volatile Integer f940o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public volatile Integer f941p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public volatile Integer f942q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public volatile Float f943r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public volatile Integer f944s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public volatile Boolean f945t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public volatile Boolean f946u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public volatile Boolean f947v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public volatile Boolean f948w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public volatile Boolean f949x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public volatile Integer f950y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public volatile Integer f951z;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Handler f929c = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ThreadPoolExecutor f932g = t1.C("widgets-car-command", new l1(6), 2);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AtomicInteger f933h = new AtomicInteger();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AtomicInteger f934i = new AtomicInteger();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AtomicLong f935j = new AtomicLong();
    public final t7 T = new t7(this, 1);
    public final int[] U = {R.id.dot_fan_1, R.id.dot_fan_2, R.id.dot_fan_3, R.id.dot_fan_4, R.id.dot_fan_5, R.id.dot_fan_6, R.id.dot_fan_7};
    public final int[] V = {R.id.dot_fan_1, R.id.dot_fan_2, R.id.dot_fan_3, R.id.dot_fan_4, R.id.dot_fan_5, R.id.dot_fan_6, R.id.dot_fan_7};
    public final List W = f.U(new a[]{new a("volante", Integer.valueOf(R.id.chip_wheel_heat)), new a("vidro_traseiro", Integer.valueOf(R.id.chip_front_rear_defrost)), new a("vidro_max", Integer.valueOf(R.id.chip_front_max_defrost)), new a("parabrisa", Integer.valueOf(R.id.chip_windshield_heat)), new a("banco_motorista", Integer.valueOf(R.id.chip_seat_heat_driver)), new a("banco_passageiro", Integer.valueOf(R.id.chip_seat_heat_passenger))});
    public final ThreadPoolExecutor X = t1.C("widgets-poll", new l1(7), 2);
    public final t7 Z = new t7(this, 0);

    public static void H(View view, int... iArr) {
        for (int i3 : iArr) {
            View viewFindViewById = view.findViewById(i3);
            if (viewFindViewById != null) {
                ViewGroup.LayoutParams layoutParams = viewFindViewById.getLayoutParams();
                LinearLayout.LayoutParams layoutParams2 = layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : null;
                if (layoutParams2 != null) {
                    layoutParams2.width = -2;
                    layoutParams2.weight = 0.0f;
                    viewFindViewById.setLayoutParams(layoutParams2);
                }
            }
        }
    }

    public static final void a(HomeFloatingWidgetsService homeFloatingWidgetsService) {
        GridLayout gridLayout;
        View view;
        View view2;
        View view3;
        View view4;
        View view5;
        View view6;
        if (!homeFloatingWidgetsService.f930d) {
            wd wdVar = wd.f4450a;
            if (!wd.a(homeFloatingWidgetsService)) {
                boolean zD = homeFloatingWidgetsService.D("widget_float_drive_regen_enabled", "widget_float_drive_regen_pinned");
                if (zD && homeFloatingWidgetsService.B == null) {
                    homeFloatingWidgetsService.c();
                }
                if (!zD && (view6 = homeFloatingWidgetsService.B) != null) {
                    homeFloatingWidgetsService.v(view6);
                    homeFloatingWidgetsService.B = null;
                }
                boolean zD2 = homeFloatingWidgetsService.D("widget_float_fan_enabled", "widget_float_fan_pinned");
                if (zD2 && homeFloatingWidgetsService.C == null) {
                    homeFloatingWidgetsService.d();
                }
                if (!zD2 && (view5 = homeFloatingWidgetsService.C) != null) {
                    homeFloatingWidgetsService.v(view5);
                    homeFloatingWidgetsService.C = null;
                }
                boolean zD3 = homeFloatingWidgetsService.D("widget_float_temp_enabled", "widget_float_temp_pinned");
                if (zD3 && homeFloatingWidgetsService.D == null) {
                    homeFloatingWidgetsService.h();
                }
                if (!zD3 && (view4 = homeFloatingWidgetsService.D) != null) {
                    homeFloatingWidgetsService.v(view4);
                    homeFloatingWidgetsService.D = null;
                }
                boolean zD4 = homeFloatingWidgetsService.D("widget_float_vent_enabled", "widget_float_vent_pinned");
                if (zD4 && homeFloatingWidgetsService.E == null) {
                    homeFloatingWidgetsService.j();
                }
                if (!zD4 && (view3 = homeFloatingWidgetsService.E) != null) {
                    homeFloatingWidgetsService.v(view3);
                    homeFloatingWidgetsService.E = null;
                }
                boolean zD5 = homeFloatingWidgetsService.D("widget_float_vent_fan_enabled", "widget_float_vent_fan_pinned");
                if (zD5 && homeFloatingWidgetsService.F == null) {
                    homeFloatingWidgetsService.i();
                }
                if (!zD5 && (view2 = homeFloatingWidgetsService.F) != null) {
                    homeFloatingWidgetsService.v(view2);
                    homeFloatingWidgetsService.F = null;
                }
                boolean zD6 = homeFloatingWidgetsService.D("widget_float_heating_enabled", "widget_float_heating_pinned");
                if (zD6 && homeFloatingWidgetsService.G == null) {
                    homeFloatingWidgetsService.e();
                }
                if (!zD6 && (view = homeFloatingWidgetsService.G) != null) {
                    homeFloatingWidgetsService.v(view);
                    homeFloatingWidgetsService.G = null;
                }
                boolean zD7 = homeFloatingWidgetsService.D("widget_float_apps_enabled", "widget_float_apps_pinned");
                if (zD7 && homeFloatingWidgetsService.H == null) {
                    homeFloatingWidgetsService.b();
                }
                if (!zD7 && (gridLayout = homeFloatingWidgetsService.H) != null) {
                    homeFloatingWidgetsService.v(gridLayout);
                    homeFloatingWidgetsService.H = null;
                }
                boolean zD8 = homeFloatingWidgetsService.D("widget_float_volume_enabled", "widget_float_volume_pinned");
                if (zD8 && homeFloatingWidgetsService.I == null) {
                    homeFloatingWidgetsService.k();
                }
                if (!zD8 && homeFloatingWidgetsService.I != null) {
                    homeFloatingWidgetsService.w();
                }
                boolean zD9 = homeFloatingWidgetsService.D("widget_float_sysinfo_enabled", "widget_float_sysinfo_pinned");
                if (zD9 && homeFloatingWidgetsService.J == null) {
                    homeFloatingWidgetsService.g();
                }
                if (!zD9 && homeFloatingWidgetsService.J != null) {
                    homeFloatingWidgetsService.u();
                }
                if (t1.b(homeFloatingWidgetsService)) {
                    return;
                }
                homeFloatingWidgetsService.stopSelf();
                return;
            }
        }
        homeFloatingWidgetsService.t();
    }

    public static void f(final HomeFloatingWidgetsService homeFloatingWidgetsService, final View view, final String str, int i3, int i4, int i5, x6 x6Var, int i6) {
        int i7 = (i6 & 32) != 0 ? -2 : i5;
        final x6 x6Var2 = (i6 & 64) != 0 ? null : x6Var;
        yd ydVarG = e8.G(homeFloatingWidgetsService, str, 8388659, i3, i4);
        final WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(i7, -2, 2038, 264, -3);
        int i8 = ydVarG.f4590a;
        layoutParams.gravity = i8;
        layoutParams.x = ydVarG.b;
        layoutParams.y = ydVarG.f4591c;
        if ((i8 & 48) == 48) {
            int identifier = homeFloatingWidgetsService.getResources().getIdentifier("status_bar_height", "dimen", "android");
            int dimensionPixelSize = identifier > 0 ? homeFloatingWidgetsService.getResources().getDimensionPixelSize(identifier) : homeFloatingWidgetsService.q(24);
            if (layoutParams.y < dimensionPixelSize) {
                layoutParams.y = dimensionPixelSize;
            }
        }
        View viewFindViewById = view.findViewById(R.id.widget_bg_layer);
        g.b(viewFindViewById);
        final k kVar = new k();
        final k kVar2 = new k();
        final l lVar = new l();
        final l lVar2 = new l();
        final j jVar = new j();
        final j jVar2 = new j();
        viewFindViewById.setOnTouchListener(new View.OnTouchListener() { // from class: w0.k7
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                h2.a aVar;
                View view3 = view;
                List list = HomeFloatingWidgetsService.f926a0;
                int action = motionEvent.getAction();
                i2.j jVar3 = jVar2;
                HomeFloatingWidgetsService homeFloatingWidgetsService2 = homeFloatingWidgetsService;
                i2.k kVar3 = kVar;
                i2.k kVar4 = kVar2;
                i2.l lVar3 = lVar;
                WindowManager.LayoutParams layoutParams2 = layoutParams;
                i2.l lVar4 = lVar2;
                i2.j jVar4 = jVar;
                if (action == 0) {
                    SharedPreferences sharedPreferences = homeFloatingWidgetsService2.b;
                    if (sharedPreferences == null) {
                        i2.g.h("prefs");
                        throw null;
                    }
                    jVar3.f2289a = sharedPreferences.getBoolean("widgets_poslock_all", false);
                    kVar3.f2290a = motionEvent.getRawX();
                    kVar4.f2290a = motionEvent.getRawY();
                    lVar3.f2291a = layoutParams2.x;
                    lVar4.f2291a = layoutParams2.y;
                    jVar4.f2289a = false;
                    return true;
                }
                if (action != 1) {
                    if (action != 2) {
                        return false;
                    }
                    if (!jVar3.f2289a) {
                        int rawX = (int) (motionEvent.getRawX() - kVar3.f2290a);
                        int rawY = (int) (motionEvent.getRawY() - kVar4.f2290a);
                        if (Math.abs(rawX) > homeFloatingWidgetsService2.q(6) || Math.abs(rawY) > homeFloatingWidgetsService2.q(6)) {
                            jVar4.f2289a = true;
                        }
                        layoutParams2.x = lVar3.f2291a + rawX;
                        layoutParams2.y = lVar4.f2291a + rawY;
                        try {
                            WindowManager windowManager = homeFloatingWidgetsService2.f928a;
                            if (windowManager == null) {
                                i2.g.h("wm");
                                throw null;
                            }
                            windowManager.updateViewLayout(view3, layoutParams2);
                        } catch (Throwable unused) {
                        }
                    }
                } else {
                    if (!jVar3.f2289a && jVar4.f2289a) {
                        e8.M(homeFloatingWidgetsService2, str, layoutParams2.gravity, layoutParams2.x, layoutParams2.y);
                        return true;
                    }
                    if (!jVar4.f2289a && (aVar = x6Var2) != null) {
                        aVar.a();
                    }
                }
                return true;
            }
        });
        try {
            WindowManager windowManager = homeFloatingWidgetsService.f928a;
            if (windowManager != null) {
                windowManager.addView(view, layoutParams);
            } else {
                g.h("wm");
                throw null;
            }
        } catch (Throwable th) {
            b.s(th, b.l("addOverlayView(", str, "): "), "HomeFloatingWidgets");
        }
    }

    public static final void l(c0.f fVar, ImageView imageView, HomeFloatingWidgetsService homeFloatingWidgetsService) {
        boolean zL = fVar.l();
        imageView.setImageResource(zL ? R.drawable.ic_widget_volume_mute : R.drawable.ic_widget_volume);
        imageView.setColorFilter(zL ? -44462 : homeFloatingWidgetsService.getColor(R.color.cx_text_hi));
    }

    public static final TextView m(final HomeFloatingWidgetsService homeFloatingWidgetsService, float f, boolean z2, final c0.f fVar, final ImageView imageView, String str, final int i3) {
        TextView textView = new TextView(homeFloatingWidgetsService);
        textView.setText(str);
        textView.setTextColor(homeFloatingWidgetsService.getColor(R.color.cx_text_hi));
        textView.setTextSize(26.0f * f);
        textView.setGravity(17);
        textView.setIncludeFontPadding(false);
        textView.setPadding(0, 0, 0, 0);
        int iQ = (int) (homeFloatingWidgetsService.q(48) * f);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(iQ, iQ);
        if (z2) {
            layoutParams.topMargin = homeFloatingWidgetsService.q(10);
        } else {
            layoutParams.setMarginStart(homeFloatingWidgetsService.q(10));
        }
        textView.setLayoutParams(layoutParams);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(0);
        int iQ2 = (int) (homeFloatingWidgetsService.q(2) * f);
        gradientDrawable.setStroke(iQ2 >= 2 ? iQ2 : 2, -1711276033);
        textView.setBackground(gradientDrawable);
        textView.setOnClickListener(new View.OnClickListener() { // from class: w0.g7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                List list = HomeFloatingWidgetsService.f926a0;
                c0.f fVar2 = fVar;
                fVar2.n(fVar2.f() + i3);
                HomeFloatingWidgetsService.l(fVar2, imageView, homeFloatingWidgetsService);
            }
        });
        return textView;
    }

    public final void A(int i3) {
        this.f941p = Integer.valueOf(i3);
        I();
        int[] iArr = v7.f4376a;
        if (v7.c(this, null, Integer.valueOf(i3)) || this.f == null) {
            return;
        }
        x(new c7(this, i3, 1));
    }

    public final void B(int i3) {
        if (this.f == null) {
            return;
        }
        this.f944s = Integer.valueOf(i3);
        N();
        x(new b7(i3, 3));
    }

    public final void C(int i3) {
        if (this.f == null) {
            return;
        }
        this.f944s = Integer.valueOf(i3);
        M();
        N();
        x(new b7(i3, 1));
    }

    public final boolean D(String str, String str2) {
        if (!this.f930d) {
            wd wdVar = wd.f4450a;
            if (!wd.a(this)) {
                SharedPreferences sharedPreferences = this.b;
                if (sharedPreferences == null) {
                    g.h("prefs");
                    throw null;
                }
                if (sharedPreferences.getBoolean(str, false) && !this.f938m) {
                    SharedPreferences sharedPreferences2 = this.b;
                    if (sharedPreferences2 == null) {
                        g.h("prefs");
                        throw null;
                    }
                    if (sharedPreferences2.getBoolean(str2, false) || this.f937l) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final void E(int i3) {
        if (this.f == null) {
            return;
        }
        Integer num = this.f942q;
        if (num == null) {
            x(new c7(this, i3, 2));
            return;
        }
        int iK = k1.a.k(num.intValue() + i3, 0, 7);
        this.f942q = Integer.valueOf(iK);
        J();
        if (iK != num.intValue()) {
            x(new b7(iK, 2));
        }
    }

    public final void F(int i3) {
        if (this.f == null) {
            return;
        }
        Integer num = this.f942q;
        if (num == null) {
            x(new c7(this, i3, 0));
            return;
        }
        int iK = k1.a.k(num.intValue() + i3, 0, 7);
        this.f942q = Integer.valueOf(iK);
        M();
        J();
        if (iK != num.intValue()) {
            x(new b7(iK, 0));
        }
    }

    public final void G(final float f) {
        if (this.f == null) {
            return;
        }
        Float f3 = this.f943r;
        if (f3 == null) {
            x(new h2.l() { // from class: w0.e7
                @Override // h2.l
                public final Object c(Object obj) {
                    HomeFloatingWidgetsService homeFloatingWidgetsService = this.f3531a;
                    float f4 = f;
                    CarPropertyManager carPropertyManager = (CarPropertyManager) obj;
                    List list = HomeFloatingWidgetsService.f926a0;
                    i2.g.e(carPropertyManager, "manager");
                    Float fK = homeFloatingWidgetsService.f943r;
                    float fFloatValue = (fK == null && (fK = v7.k(carPropertyManager)) == null) ? 22.0f : fK.floatValue();
                    float fJ = k1.a.j(Math.round(f4 + fFloatValue), 17.0f, 32.0f);
                    if (fJ != fFloatValue) {
                        v7.x(carPropertyManager, fJ);
                    }
                    homeFloatingWidgetsService.f943r = Float.valueOf(fJ);
                    homeFloatingWidgetsService.r(new x6(homeFloatingWidgetsService, 5));
                    return x1.e.f4647c;
                }
            });
            return;
        }
        final float fJ = k1.a.j(Math.round(f3.floatValue() + f), 17.0f, 32.0f);
        this.f943r = Float.valueOf(fJ);
        L();
        if (fJ == f3.floatValue()) {
            return;
        }
        x(new h2.l() { // from class: w0.d7
            @Override // h2.l
            public final Object c(Object obj) {
                CarPropertyManager carPropertyManager = (CarPropertyManager) obj;
                List list = HomeFloatingWidgetsService.f926a0;
                i2.g.e(carPropertyManager, "it");
                v7.x(carPropertyManager, fJ);
                return x1.e.f4647c;
            }
        });
    }

    public final void I() {
        View view = this.B;
        if (view == null) {
            return;
        }
        view.findViewById(R.id.widget_bg_layer).setBackgroundResource(O("drive_regen"));
        Integer num = this.f940o;
        boolean z2 = false;
        n(view, R.id.chip_drive_eco, R.id.txt_drive_eco, num != null && num.intValue() == 570491137);
        Integer num2 = this.f940o;
        n(view, R.id.chip_drive_comfort, R.id.txt_drive_comfort, num2 != null && num2.intValue() == 570491138);
        Integer num3 = this.f940o;
        n(view, R.id.chip_drive_sport, R.id.txt_drive_sport, num3 != null && num3.intValue() == 570491139);
        Integer num4 = this.f941p;
        n(view, R.id.chip_regen_low, R.id.txt_regen_low, num4 != null && num4.intValue() == 537003265);
        Integer num5 = this.f941p;
        n(view, R.id.chip_regen_mid, R.id.txt_regen_mid, num5 != null && num5.intValue() == 537003266);
        Integer num6 = this.f941p;
        if (num6 != null && num6.intValue() == 537003267) {
            z2 = true;
        }
        n(view, R.id.chip_regen_high, R.id.txt_regen_high, z2);
    }

    public final void J() {
        String string;
        View view = this.C;
        if (view == null) {
            return;
        }
        view.findViewById(R.id.widget_bg_layer).setBackgroundResource(O("fan"));
        TextView textView = (TextView) view.findViewById(R.id.tv_fan_value);
        Integer num = this.f942q;
        if (num == null || (string = num.toString()) == null) {
            string = "—";
        }
        textView.setText(string);
        Integer num2 = this.f942q;
        int[] iArr = this.U;
        int length = iArr.length;
        int i3 = 0;
        int i4 = 0;
        while (i3 < length) {
            int i5 = i4 + 1;
            view.findViewById(iArr[i3]).setBackgroundResource(num2 != null && i4 < num2.intValue() ? R.drawable.widget_dot_on : R.drawable.widget_dot_off);
            i3++;
            i4 = i5;
        }
    }

    public final void K() {
        String strQ;
        View view = this.G;
        if (view == null) {
            return;
        }
        view.findViewById(R.id.widget_bg_layer).setBackgroundResource(O("heating"));
        SharedPreferences sharedPreferences = this.b;
        if (sharedPreferences == null) {
            g.h("prefs");
            throw null;
        }
        Set setA = jh.a(sharedPreferences.getString("widget_heating_icons", null));
        Iterator it = this.W.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            a aVar = (a) it.next();
            String str = (String) aVar.f4641a;
            View viewFindViewById = view.findViewById(((Number) aVar.b).intValue());
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(setA.contains(str) ? 0 : 8);
            }
        }
        Boolean bool = this.f947v;
        Boolean bool2 = Boolean.TRUE;
        n(view, R.id.chip_wheel_heat, R.id.txt_wheel_heat, g.a(bool, bool2));
        ((TextView) view.findViewById(R.id.txt_wheel_heat)).setText(Q(R.string.k_widget_lbl_heat_wheel));
        n(view, R.id.chip_front_rear_defrost, R.id.txt_front_rear_defrost, g.a(this.f946u, bool2));
        ((TextView) view.findViewById(R.id.txt_front_rear_defrost)).setText(Q(R.string.k_widget_lbl_rear_defrost));
        n(view, R.id.chip_front_max_defrost, R.id.txt_front_max_defrost, g.a(this.f948w, bool2));
        ((TextView) view.findViewById(R.id.txt_front_max_defrost)).setText(Q(R.string.k_widget_lbl_heat_front_max));
        n(view, R.id.chip_windshield_heat, R.id.txt_windshield_heat, g.a(this.f949x, bool2));
        ((TextView) view.findViewById(R.id.txt_windshield_heat)).setText(Q(R.string.k_widget_lbl_heat_windshield));
        Integer num = this.f950y;
        n(view, R.id.chip_seat_heat_driver, R.id.txt_seat_heat_driver, (num != null ? num.intValue() : 0) > 0);
        TextView textView = (TextView) view.findViewById(R.id.txt_seat_heat_driver);
        StringBuilder sb = new StringBuilder();
        sb.append(Q(R.string.k_widget_lbl_heat_seat_driver));
        sb.append(' ');
        Integer num2 = this.f950y;
        String strQ2 = "—";
        if (num2 == null) {
            strQ = "—";
        } else {
            strQ = num2.intValue() >= 4 ? Q(R.string.k_widget_lbl_heat_auto) : num2.toString();
        }
        sb.append(strQ);
        textView.setText(sb.toString());
        Integer num3 = this.f951z;
        n(view, R.id.chip_seat_heat_passenger, R.id.txt_seat_heat_passenger, (num3 != null ? num3.intValue() : 0) > 0);
        TextView textView2 = (TextView) view.findViewById(R.id.txt_seat_heat_passenger);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(Q(R.string.k_widget_lbl_heat_seat_passenger));
        sb2.append(' ');
        Integer num4 = this.f951z;
        if (num4 != null) {
            strQ2 = num4.intValue() >= 4 ? Q(R.string.k_widget_lbl_heat_auto) : num4.toString();
        }
        sb2.append(strQ2);
        textView2.setText(sb2.toString());
    }

    public final void L() {
        String strValueOf;
        View view = this.D;
        if (view == null) {
            return;
        }
        view.findViewById(R.id.widget_bg_layer).setBackgroundResource(O("temp"));
        TextView textView = (TextView) view.findViewById(R.id.tv_temp_value);
        Float f = this.f943r;
        if (f == null || (strValueOf = String.valueOf(Math.round(f.floatValue()))) == null) {
            strValueOf = "—";
        }
        textView.setText(strValueOf);
    }

    /* JADX WARN: Code duplicated, block: B:61:0x0104  */
    public final void M() {
        String string;
        boolean z2;
        View view = this.F;
        if (view == null) {
            return;
        }
        view.findViewById(R.id.widget_bg_layer).setBackgroundResource(O("vent_fan"));
        Integer num = this.f944s;
        n(view, R.id.chip_vent_face, R.id.txt_vent_face, num != null && num.intValue() == 1);
        Integer num2 = this.f944s;
        n(view, R.id.chip_vent_floor, R.id.txt_vent_floor, num2 != null && num2.intValue() == 2);
        Integer num3 = this.f944s;
        n(view, R.id.chip_vent_face_floor, R.id.txt_vent_face_floor, num3 != null && num3.intValue() == 3);
        Integer num4 = this.f944s;
        n(view, R.id.chip_vent_windshield, R.id.txt_vent_windshield, num4 != null && num4.intValue() == 4);
        Integer num5 = this.f944s;
        n(view, R.id.chip_vent_floor_windshield, R.id.txt_vent_floor_windshield, num5 != null && num5.intValue() == 6);
        Boolean bool = this.f945t;
        Boolean bool2 = Boolean.TRUE;
        n(view, R.id.chip_recirc, R.id.txt_recirc, g.a(bool, bool2));
        TextView textView = (TextView) view.findViewById(R.id.tv_fan_value);
        Integer num6 = this.f942q;
        if (num6 == null || (string = num6.toString()) == null) {
            string = "—";
        }
        textView.setText(string);
        boolean zA = g.a(this.A, bool2);
        view.findViewById(R.id.chip_fan_ac).setBackgroundResource(zA ? R.drawable.widget_chip_active : R.drawable.widget_chip_ac_off);
        ((TextView) view.findViewById(R.id.tv_fan_value)).setTextColor(getColor(zA ? R.color.cx_on_accent : R.color.cx_text_primary));
        int[] iArr = this.V;
        int length = iArr.length;
        int i3 = 0;
        int i4 = 0;
        while (i3 < length) {
            int i5 = iArr[i3];
            int i6 = i4 + 1;
            if (this.f942q != null) {
                Integer num7 = this.f942q;
                g.b(num7);
                if (i4 < num7.intValue()) {
                    z2 = true;
                } else {
                    z2 = false;
                }
            } else {
                z2 = false;
            }
            view.findViewById(i5).setBackgroundResource(z2 ? R.drawable.widget_dot_on : R.drawable.widget_dot_off);
            i3++;
            i4 = i6;
        }
    }

    public final void N() {
        View view = this.E;
        if (view == null) {
            return;
        }
        view.findViewById(R.id.widget_bg_layer).setBackgroundResource(O("vent"));
        Integer num = this.f944s;
        boolean z2 = false;
        n(view, R.id.chip_vent_face, R.id.txt_vent_face, num != null && num.intValue() == 1);
        Integer num2 = this.f944s;
        n(view, R.id.chip_vent_floor, R.id.txt_vent_floor, num2 != null && num2.intValue() == 2);
        Integer num3 = this.f944s;
        n(view, R.id.chip_vent_face_floor, R.id.txt_vent_face_floor, num3 != null && num3.intValue() == 3);
        Integer num4 = this.f944s;
        n(view, R.id.chip_vent_windshield, R.id.txt_vent_windshield, num4 != null && num4.intValue() == 4);
        Integer num5 = this.f944s;
        if (num5 != null && num5.intValue() == 6) {
            z2 = true;
        }
        n(view, R.id.chip_vent_floor_windshield, R.id.txt_vent_floor_windshield, z2);
        n(view, R.id.chip_recirc, R.id.txt_recirc, g.a(this.f945t, Boolean.TRUE));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:37:0x006b  */
    public final int O(String str) {
        String str2;
        int[] iArr = v7.f4376a;
        SharedPreferences sharedPreferences = this.b;
        if (sharedPreferences == null) {
            g.h("prefs");
            throw null;
        }
        switch (str) {
            case "vent_fan":
                str2 = "widget_float_vent_fan_alpha_pct";
                break;
            case "sysinfo":
                str2 = "widget_float_sysinfo_alpha_pct";
                break;
            case "volume":
                str2 = "widget_float_volume_alpha_pct";
                break;
            case "fan":
                str2 = "widget_float_fan_alpha_pct";
                break;
            case "apps":
                str2 = "widget_float_apps_alpha_pct";
                break;
            case "temp":
                str2 = "widget_float_temp_alpha_pct";
                break;
            case "vent":
                str2 = "widget_float_vent_alpha_pct";
                break;
            case "drive_regen":
                str2 = "widget_float_drive_regen_alpha_pct";
                break;
            default:
                str2 = "widget_float_heating_alpha_pct";
                break;
        }
        return v7.b(sharedPreferences.getInt(str2, 100));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:37:0x0069  */
    public final float P(String str) {
        String str2;
        SharedPreferences sharedPreferences = this.b;
        if (sharedPreferences == null) {
            g.h("prefs");
            throw null;
        }
        switch (str) {
            case "vent_fan":
                str2 = "widget_float_vent_fan_size_pct";
                break;
            case "sysinfo":
                str2 = "widget_float_sysinfo_size_pct";
                break;
            case "volume":
                str2 = "widget_float_volume_size_pct";
                break;
            case "fan":
                str2 = "widget_float_fan_size_pct";
                break;
            case "apps":
                str2 = "widget_float_apps_size_pct";
                break;
            case "temp":
                str2 = "widget_float_temp_size_pct";
                break;
            case "vent":
                str2 = "widget_float_vent_size_pct";
                break;
            case "drive_regen":
                str2 = "widget_float_drive_regen_size_pct";
                break;
            default:
                str2 = "widget_float_heating_size_pct";
                break;
        }
        return (k1.a.k(sharedPreferences.getInt(str2, 100), 50, 200) / 100.0f) * 1.6f;
    }

    public final String Q(int i3) {
        String string = v7.o(this).getString(i3);
        g.d(string, "getString(...)");
        return string;
    }

    @Override // android.app.Service, android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        g.e(context, "base");
        super.attachBaseContext(e8.p(context));
    }

    public final void b() {
        boolean z2;
        String string;
        int i3;
        SharedPreferences sharedPreferences = this.b;
        if (sharedPreferences == null) {
            g.h("prefs");
            throw null;
        }
        String string2 = sharedPreferences.getString("widget_apps_list", "");
        int i4 = 0;
        List listV0 = o2.k.v0(string2 != null ? string2 : "", new String[]{","}, 0, 6);
        ArrayList arrayList = new ArrayList(i.X(listV0));
        Iterator it = listV0.iterator();
        while (it.hasNext()) {
            arrayList.add(o2.k.E0((String) it.next()).toString());
        }
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i5 = 0;
        while (i5 < size) {
            Object obj = arrayList.get(i5);
            i5++;
            if (((String) obj).length() > 0) {
                arrayList2.add(obj);
            }
        }
        SharedPreferences sharedPreferences2 = this.b;
        if (sharedPreferences2 == null) {
            g.h("prefs");
            throw null;
        }
        boolean z3 = true;
        int iK = k1.a.k(sharedPreferences2.getInt("widget_apps_rows", 2), 1, 6);
        SharedPreferences sharedPreferences3 = this.b;
        if (sharedPreferences3 == null) {
            g.h("prefs");
            throw null;
        }
        int iK2 = k1.a.k(sharedPreferences3.getInt("widget_apps_cols", 3), 1, 6);
        PackageManager packageManager = getPackageManager();
        int iQ = q(46);
        int iQ2 = q(74);
        SharedPreferences sharedPreferences4 = this.b;
        if (sharedPreferences4 == null) {
            g.h("prefs");
            throw null;
        }
        int iK3 = k1.a.k(sharedPreferences4.getInt("widget_float_apps_alpha_pct", 100), 0, 100);
        SharedPreferences sharedPreferences5 = this.b;
        if (sharedPreferences5 == null) {
            g.h("prefs");
            throw null;
        }
        float fK = k1.a.k(sharedPreferences5.getInt("widget_float_apps_size_pct", 100), 50, 200) / 100.0f;
        GridLayout gridLayout = new GridLayout(this);
        gridLayout.setId(R.id.widget_bg_layer);
        gridLayout.setRowCount(iK);
        gridLayout.setColumnCount(iK2);
        int iQ3 = q(8);
        gridLayout.setPadding(iQ3, iQ3, iQ3, iQ3);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(q(18));
        int color = getColor(R.color.widget_apps_bg_base);
        gradientDrawable.setColor(Color.argb((iK3 * 230) / 100, Color.red(color), Color.green(color), Color.blue(color)));
        gridLayout.setBackground(gradientDrawable);
        int size2 = arrayList2.size();
        int i6 = 0;
        int i7 = 0;
        while (i7 < size2) {
            Object obj2 = arrayList2.get(i7);
            int i8 = i7 + 1;
            String str = (String) obj2;
            if (i6 >= iK * iK2) {
                break;
            }
            Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(str);
            if (launchIntentForPackage == null) {
                z2 = z3;
            } else {
                try {
                    Drawable applicationIcon = packageManager.getApplicationIcon(str);
                    g.b(applicationIcon);
                    ArrayList arrayList3 = arrayList2;
                    try {
                        string = packageManager.getApplicationLabel(packageManager.getApplicationInfo(str, i4)).toString();
                    } catch (Exception unused) {
                        string = str;
                    }
                    LinearLayout linearLayout = new LinearLayout(this);
                    linearLayout.setOrientation(1);
                    linearLayout.setGravity(1);
                    int i9 = iK;
                    int i10 = i6;
                    i3 = iK2;
                    linearLayout.setPadding(q(4), q(6), q(4), q(6));
                    linearLayout.setBackground(new RippleDrawable(ColorStateList.valueOf(872415231), null, null));
                    linearLayout.setClickable(true);
                    linearLayout.setOnClickListener(new y6(launchIntentForPackage, this, str, 1));
                    ImageView imageView = new ImageView(this);
                    imageView.setImageDrawable(applicationIcon);
                    imageView.setContentDescription(string);
                    imageView.setLayoutParams(new LinearLayout.LayoutParams(iQ, iQ));
                    linearLayout.addView(imageView);
                    GridLayout.LayoutParams layoutParams = new GridLayout.LayoutParams(GridLayout.spec(i10 / i3), GridLayout.spec(i10 % i3));
                    layoutParams.width = iQ2;
                    layoutParams.setMargins(q(2), q(2), q(2), q(2));
                    gridLayout.addView(linearLayout, layoutParams);
                    i6 = i10 + 1;
                    z3 = true;
                    i7 = i8;
                    arrayList2 = arrayList3;
                    size2 = size2;
                    iK = i9;
                } catch (Exception unused2) {
                    z2 = true;
                    i3 = iK2;
                    z3 = z2;
                    i7 = i8;
                    arrayList2 = arrayList2;
                    size2 = size2;
                    iK = iK;
                    i6 = i6;
                }
                iK2 = i3;
                i4 = 0;
            }
            i3 = iK2;
            z3 = z2;
            i7 = i8;
            arrayList2 = arrayList2;
            size2 = size2;
            iK = iK;
            i6 = i6;
            iK2 = i3;
            i4 = 0;
        }
        if (i6 == 0) {
            TextView textView = new TextView(this);
            textView.setText(Q(R.string.k_widget_apps_empty));
            textView.setTextColor(getColor(R.color.cx_text_hi));
            textView.setTextSize(12.0f);
            textView.setPadding(q(16), q(16), q(16), q(16));
            gridLayout.addView(textView);
        }
        if (fK != 1.0f) {
            y(gridLayout, fK);
        }
        f(this, gridLayout, "widget_float_apps", q(40), q(120), 0, null, 96);
        this.H = gridLayout;
    }

    public final void c() {
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.widget_drive_regen_float, (ViewGroup) null);
        g.b(viewInflate);
        H(viewInflate, R.id.chip_drive_eco, R.id.chip_drive_comfort, R.id.chip_drive_sport, R.id.chip_regen_low, R.id.chip_regen_mid, R.id.chip_regen_high);
        y(viewInflate, P("drive_regen"));
        ((TextView) viewInflate.findViewById(R.id.txt_drive_header)).setText(Q(R.string.k_widget_lbl_drive_header));
        ((TextView) viewInflate.findViewById(R.id.txt_regen_header)).setText(Q(R.string.k_widget_lbl_regen_header));
        ((TextView) viewInflate.findViewById(R.id.txt_regen_low)).setText(Q(R.string.k_widget_lbl_regen_low));
        ((TextView) viewInflate.findViewById(R.id.txt_regen_mid)).setText(Q(R.string.k_widget_lbl_regen_mid));
        ((TextView) viewInflate.findViewById(R.id.txt_regen_high)).setText(Q(R.string.k_widget_lbl_regen_high));
        viewInflate.findViewById(R.id.chip_drive_eco).setOnClickListener(new w6(this, 15));
        viewInflate.findViewById(R.id.chip_drive_comfort).setOnClickListener(new w6(this, 16));
        viewInflate.findViewById(R.id.chip_drive_sport).setOnClickListener(new w6(this, 17));
        viewInflate.findViewById(R.id.chip_regen_low).setOnClickListener(new w6(this, 18));
        viewInflate.findViewById(R.id.chip_regen_mid).setOnClickListener(new w6(this, 19));
        viewInflate.findViewById(R.id.chip_regen_high).setOnClickListener(new w6(this, 20));
        f(this, viewInflate, "widget_float_drive_regen", q(24), q(120), 0, null, 96);
        this.B = viewInflate;
        I();
    }

    public final void d() {
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.widget_fan_speed_float, (ViewGroup) null);
        g.b(viewInflate);
        H(viewInflate, R.id.fan_mid_col);
        viewInflate.findViewById(R.id.fan_icon).setVisibility(8);
        y(viewInflate, P("fan"));
        ((TextView) viewInflate.findViewById(R.id.tv_fan_label)).setText(Q(R.string.k_widget_lbl_fan));
        viewInflate.findViewById(R.id.btn_fan_minus).setOnClickListener(new w6(this, 13));
        viewInflate.findViewById(R.id.btn_fan_plus).setOnClickListener(new w6(this, 14));
        f(this, viewInflate, "widget_float_fan", q(24), q(280), 0, null, 96);
        this.C = viewInflate;
        J();
    }

    public final void e() {
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.widget_heating_test_float, (ViewGroup) null);
        g.b(viewInflate);
        y(viewInflate, P("heating"));
        ((TextView) viewInflate.findViewById(R.id.txt_heat_header)).setText(Q(R.string.k_widget_lbl_heat_header));
        viewInflate.findViewById(R.id.chip_wheel_heat).setOnClickListener(new w6(this, 21));
        viewInflate.findViewById(R.id.chip_front_rear_defrost).setOnClickListener(new w6(this, 22));
        viewInflate.findViewById(R.id.chip_front_max_defrost).setOnClickListener(new w6(this, 23));
        viewInflate.findViewById(R.id.chip_windshield_heat).setOnClickListener(new w6(this, 24));
        viewInflate.findViewById(R.id.chip_seat_heat_driver).setOnClickListener(new w6(this, 25));
        viewInflate.findViewById(R.id.chip_seat_heat_passenger).setOnClickListener(new w6(this, 26));
        f(this, viewInflate, "widget_float_heating", q(24), q(760), q((int) (P("heating") * 230)), null, 64);
        this.G = viewInflate;
        K();
    }

    public final void g() {
        h hVar = ug.f4355a;
        ug.b = null;
        SharedPreferences sharedPreferences = this.b;
        if (sharedPreferences == null) {
            g.h("prefs");
            throw null;
        }
        int iK = k1.a.k(sharedPreferences.getInt("widget_float_sysinfo_alpha_pct", 100), 0, 100);
        SharedPreferences sharedPreferences2 = this.b;
        if (sharedPreferences2 == null) {
            g.h("prefs");
            throw null;
        }
        float fK = k1.a.k(sharedPreferences2.getInt("widget_float_sysinfo_size_pct", 100), 50, 200) / 100.0f;
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setId(R.id.widget_bg_layer);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        linearLayout.setPadding(q(16), q(12), q(16), q(12));
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(q(18));
        int color = getColor(R.color.widget_apps_bg_base);
        gradientDrawable.setColor(Color.argb((iK * 230) / 100, Color.red(color), Color.green(color), Color.blue(color)));
        linearLayout.setBackground(gradientDrawable);
        TextView textView = new TextView(this);
        textView.setTextColor(getColor(R.color.cx_text_hi));
        float f = 22.0f * fK;
        textView.setTextSize(f);
        textView.setIncludeFontPadding(false);
        textView.setText("🌡 --°C");
        TextView textView2 = new TextView(this);
        textView2.setTextColor(getColor(R.color.cx_text_hi));
        textView2.setTextSize(f);
        textView2.setIncludeFontPadding(false);
        textView2.setText("CPU --%");
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMarginStart((int) (q(16) * fK));
        textView2.setLayoutParams(layoutParams);
        linearLayout.addView(textView);
        linearLayout.addView(textView2);
        this.M = textView;
        this.N = textView2;
        f(this, linearLayout, "widget_float_sysinfo", q(40), q(500), 0, new x6(this, 1), 32);
        this.J = linearLayout;
        t7 t7Var = this.O;
        if (t7Var != null) {
            this.f929c.removeCallbacks(t7Var);
        }
        t7 t7Var2 = new t7(this, 2);
        this.O = t7Var2;
        this.f929c.post(t7Var2);
    }

    public final void h() {
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.widget_temperature_float, (ViewGroup) null);
        g.b(viewInflate);
        H(viewInflate, R.id.temp_mid_col);
        viewInflate.findViewById(R.id.temp_icon).setVisibility(8);
        y(viewInflate, P("temp"));
        ((TextView) viewInflate.findViewById(R.id.tv_temp_label)).setText(Q(R.string.k_widget_lbl_temp));
        viewInflate.findViewById(R.id.btn_temp_minus).setOnClickListener(new w6(this, 29));
        viewInflate.findViewById(R.id.btn_temp_plus).setOnClickListener(new l7(this, 0));
        f(this, viewInflate, "widget_float_temp", q(24), q(440), 0, null, 96);
        this.D = viewInflate;
        L();
    }

    public final void i() {
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.widget_hvac_direction_fan_float, (ViewGroup) null);
        g.b(viewInflate);
        y(viewInflate, P("vent_fan"));
        viewInflate.findViewById(R.id.chip_vent_face).setOnClickListener(new w6(this, 4));
        viewInflate.findViewById(R.id.chip_vent_floor).setOnClickListener(new w6(this, 5));
        viewInflate.findViewById(R.id.chip_vent_face_floor).setOnClickListener(new w6(this, 6));
        viewInflate.findViewById(R.id.chip_vent_windshield).setOnClickListener(new w6(this, 7));
        viewInflate.findViewById(R.id.chip_vent_floor_windshield).setOnClickListener(new w6(this, 8));
        viewInflate.findViewById(R.id.chip_recirc).setOnClickListener(new w6(this, 9));
        viewInflate.findViewById(R.id.btn_fan_minus).setOnClickListener(new w6(this, 10));
        viewInflate.findViewById(R.id.btn_fan_plus).setOnClickListener(new w6(this, 11));
        viewInflate.findViewById(R.id.chip_fan_ac).setOnClickListener(new w6(this, 12));
        f(this, viewInflate, "widget_float_vent_fan", q(24), q(880), q((int) (P("vent_fan") * 260)), null, 64);
        this.F = viewInflate;
        M();
    }

    public final void j() {
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.widget_hvac_direction_float, (ViewGroup) null);
        g.b(viewInflate);
        H(viewInflate, R.id.chip_vent_face, R.id.chip_vent_floor, R.id.chip_vent_face_floor, R.id.chip_vent_windshield, R.id.chip_vent_floor_windshield, R.id.chip_recirc);
        y(viewInflate, P("vent"));
        ((TextView) viewInflate.findViewById(R.id.txt_vent_header)).setText(Q(R.string.k_widget_lbl_vent_header));
        ((TextView) viewInflate.findViewById(R.id.txt_vent_face)).setText(Q(R.string.k_widget_lbl_vent_face));
        ((TextView) viewInflate.findViewById(R.id.txt_vent_floor)).setText(Q(R.string.k_widget_lbl_vent_floor));
        ((TextView) viewInflate.findViewById(R.id.txt_vent_face_floor)).setText(Q(R.string.k_widget_lbl_vent_face_floor));
        ((TextView) viewInflate.findViewById(R.id.txt_vent_windshield)).setText(Q(R.string.k_widget_lbl_vent_windshield));
        ((TextView) viewInflate.findViewById(R.id.txt_vent_floor_windshield)).setText(Q(R.string.k_widget_lbl_vent_floor_windshield));
        ((TextView) viewInflate.findViewById(R.id.txt_recirc)).setText(Q(R.string.k_widget_lbl_recirc));
        viewInflate.findViewById(R.id.chip_vent_face).setOnClickListener(new l7(this, 1));
        viewInflate.findViewById(R.id.chip_vent_floor).setOnClickListener(new l7(this, 2));
        viewInflate.findViewById(R.id.chip_vent_face_floor).setOnClickListener(new w6(this, 0));
        viewInflate.findViewById(R.id.chip_vent_windshield).setOnClickListener(new w6(this, 1));
        viewInflate.findViewById(R.id.chip_vent_floor_windshield).setOnClickListener(new w6(this, 2));
        viewInflate.findViewById(R.id.chip_recirc).setOnClickListener(new w6(this, 3));
        f(this, viewInflate, "widget_float_vent", q(24), q(600), 0, null, 96);
        this.E = viewInflate;
        N();
    }

    public final void k() {
        HomeFloatingWidgetsService homeFloatingWidgetsService = this;
        final c0.f fVar = homeFloatingWidgetsService.R;
        if (fVar == null) {
            fVar = new c0.f(homeFloatingWidgetsService);
            homeFloatingWidgetsService.R = fVar;
            final x6 x6Var = new x6(homeFloatingWidgetsService, 0);
            try {
                fVar.f715e = Car.createCar(homeFloatingWidgetsService, null, 0L, new Car.CarServiceLifecycleListener() { // from class: w0.g1
                    @Override // android.car.Car.CarServiceLifecycleListener
                    public final void onLifecycleChanged(Car car, boolean z2) {
                        Object carManager;
                        int iIntValue;
                        int iIntValue2;
                        int iIntValue3;
                        if (z2) {
                            c0.f fVar2 = fVar;
                            if (car != null) {
                                try {
                                    carManager = car.getCarManager("audio");
                                } catch (Throwable unused) {
                                    fVar2.f = null;
                                    fVar2.f713c = -1;
                                }
                            } else {
                                carManager = null;
                            }
                            fVar2.f = carManager;
                            if (carManager == null) {
                                iIntValue = -1;
                            } else {
                                Integer numA = c0.f.a(carManager, "getVolumeGroupIdForUsage", new int[]{1});
                                if (numA == null || (iIntValue = numA.intValue()) < 0) {
                                    iIntValue = 0;
                                    Integer numA2 = c0.f.a(carManager, "getVolumeGroupIdForUsage", new int[]{0, 1});
                                    if (numA2 == null || (iIntValue3 = numA2.intValue()) < 0) {
                                        Integer numA3 = c0.f.a(carManager, "getVolumeGroupIdForStreamType", new int[]{3});
                                        if (numA3 != null && (iIntValue2 = numA3.intValue()) >= 0) {
                                            iIntValue = iIntValue2;
                                        }
                                    } else {
                                        iIntValue = iIntValue3;
                                    }
                                }
                            }
                            fVar2.f713c = iIntValue;
                        }
                        x6Var.a();
                    }
                });
            } catch (Throwable unused) {
                x6Var.a();
            }
        }
        c0.f fVar2 = fVar;
        int iD = fVar2.d();
        if (iD < 1) {
            iD = 1;
        }
        int iF = fVar2.f();
        SharedPreferences sharedPreferences = homeFloatingWidgetsService.b;
        if (sharedPreferences == null) {
            g.h("prefs");
            throw null;
        }
        boolean z2 = sharedPreferences.getBoolean("widget_volume_vertical", false);
        SharedPreferences sharedPreferences2 = homeFloatingWidgetsService.b;
        if (sharedPreferences2 == null) {
            g.h("prefs");
            throw null;
        }
        int iK = k1.a.k(sharedPreferences2.getInt("widget_float_volume_alpha_pct", 100), 0, 100);
        SharedPreferences sharedPreferences3 = homeFloatingWidgetsService.b;
        if (sharedPreferences3 == null) {
            g.h("prefs");
            throw null;
        }
        float fK = k1.a.k(sharedPreferences3.getInt("widget_float_volume_size_pct", 100), 50, 200) / 100.0f;
        LinearLayout linearLayout = new LinearLayout(homeFloatingWidgetsService);
        linearLayout.setId(R.id.widget_bg_layer);
        linearLayout.setOrientation(z2 ? 1 : 0);
        linearLayout.setGravity(17);
        linearLayout.setPadding(homeFloatingWidgetsService.q(14), homeFloatingWidgetsService.q(12), homeFloatingWidgetsService.q(14), homeFloatingWidgetsService.q(12));
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(homeFloatingWidgetsService.q(18));
        int color = homeFloatingWidgetsService.getColor(R.color.widget_apps_bg_base);
        gradientDrawable.setColor(Color.argb((iK * 230) / 100, Color.red(color), Color.green(color), Color.blue(color)));
        linearLayout.setBackground(gradientDrawable);
        int iQ = (int) (homeFloatingWidgetsService.q(28) * fK);
        ImageView imageView = new ImageView(homeFloatingWidgetsService);
        imageView.setLayoutParams(new LinearLayout.LayoutParams(iQ, iQ));
        l(fVar2, imageView, homeFloatingWidgetsService);
        imageView.setOnClickListener(new y6(fVar2, homeFloatingWidgetsService, imageView, 0));
        homeFloatingWidgetsService.Q = new p7(fVar2, imageView, homeFloatingWidgetsService);
        SharedPreferences sharedPreferences4 = homeFloatingWidgetsService.b;
        if (sharedPreferences4 == null) {
            g.h("prefs");
            throw null;
        }
        if (sharedPreferences4.getBoolean("widget_volume_signs", false)) {
            linearLayout.addView(imageView);
            if (z2) {
                linearLayout.addView(m(homeFloatingWidgetsService, fK, z2, fVar2, imageView, "+", 1));
                homeFloatingWidgetsService = this;
                linearLayout.addView(m(homeFloatingWidgetsService, fK, z2, fVar2, imageView, "−", -1));
            } else {
                homeFloatingWidgetsService = this;
                linearLayout.addView(m(homeFloatingWidgetsService, fK, z2, fVar2, imageView, "−", -1));
                linearLayout.addView(m(homeFloatingWidgetsService, fK, z2, fVar2, imageView, "+", 1));
            }
            homeFloatingWidgetsService.P = null;
        } else {
            SeekBar.OnSeekBarChangeListener q7Var = new q7(fVar2, imageView, homeFloatingWidgetsService);
            int iQ2 = (int) (homeFloatingWidgetsService.q(210) * fK);
            int iQ3 = (int) (homeFloatingWidgetsService.q(48) * fK);
            if (z2) {
                FrameLayout frameLayout = new FrameLayout(homeFloatingWidgetsService);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(iQ3, iQ2);
                layoutParams.topMargin = homeFloatingWidgetsService.q(10);
                frameLayout.setLayoutParams(layoutParams);
                SeekBar seekBar = new SeekBar(homeFloatingWidgetsService);
                seekBar.setMax(iD);
                seekBar.setProgress(iF);
                seekBar.setRotation(270.0f);
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(iQ2, iQ3);
                layoutParams2.gravity = 17;
                seekBar.setLayoutParams(layoutParams2);
                seekBar.setOnSeekBarChangeListener(q7Var);
                frameLayout.addView(seekBar);
                linearLayout.addView(imageView);
                linearLayout.addView(frameLayout);
                homeFloatingWidgetsService.P = seekBar;
            } else {
                SeekBar seekBar2 = new SeekBar(homeFloatingWidgetsService);
                seekBar2.setMax(iD);
                seekBar2.setProgress(iF);
                LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(iQ2, -2);
                layoutParams3.setMarginStart(homeFloatingWidgetsService.q(10));
                seekBar2.setLayoutParams(layoutParams3);
                seekBar2.setOnSeekBarChangeListener(q7Var);
                linearLayout.addView(imageView);
                linearLayout.addView(seekBar2);
                homeFloatingWidgetsService.P = seekBar2;
            }
        }
        if (homeFloatingWidgetsService.S == null) {
            s sVar = new s(4, homeFloatingWidgetsService);
            homeFloatingWidgetsService.S = sVar;
            try {
                homeFloatingWidgetsService.registerReceiver(sVar, new IntentFilter("android.media.VOLUME_CHANGED_ACTION"));
            } catch (Exception unused2) {
            }
        }
        f(homeFloatingWidgetsService, linearLayout, "widget_float_volume", homeFloatingWidgetsService.q(40), homeFloatingWidgetsService.q(300), 0, null, 96);
        homeFloatingWidgetsService.I = linearLayout;
    }

    public final void n(View view, int i3, int i4, boolean z2) {
        view.findViewById(i3).setBackgroundResource(z2 ? R.drawable.widget_chip_active : R.drawable.widget_chip_idle);
        ((TextView) view.findViewById(i4)).setTextColor(getColor(z2 ? R.color.cx_on_accent : R.color.cx_text_primary));
    }

    public final void o(final boolean z2) {
        if (this.f == null) {
            return;
        }
        final int i3 = z2 ? 1 : 4;
        Integer num = z2 ? this.f950y : this.f951z;
        if (num == null) {
            x(new h2.l() { // from class: w0.i7
                @Override // h2.l
                public final Object c(Object obj) {
                    boolean z3 = z2;
                    HomeFloatingWidgetsService homeFloatingWidgetsService = this;
                    int i4 = i3;
                    CarPropertyManager carPropertyManager = (CarPropertyManager) obj;
                    List list = HomeFloatingWidgetsService.f926a0;
                    i2.g.e(carPropertyManager, "manager");
                    Integer numJ = z3 ? homeFloatingWidgetsService.f950y : homeFloatingWidgetsService.f951z;
                    int iIntValue = ((numJ == null && (numJ = v7.j(carPropertyManager, i4)) == null) ? -1 : numJ.intValue()) + 1;
                    if (iIntValue > 4) {
                        iIntValue = 0;
                    }
                    int[] iArr = v7.f4376a;
                    p1.l(carPropertyManager, 356517131, i4, iIntValue);
                    Integer numValueOf = Integer.valueOf(iIntValue);
                    if (z3) {
                        homeFloatingWidgetsService.f950y = numValueOf;
                    } else {
                        homeFloatingWidgetsService.f951z = numValueOf;
                    }
                    homeFloatingWidgetsService.r(new x6(homeFloatingWidgetsService, 2));
                    return x1.e.f4647c;
                }
            });
            return;
        }
        final int iIntValue = num.intValue() + 1;
        if (iIntValue > 4) {
            iIntValue = 0;
        }
        if (z2) {
            this.f950y = Integer.valueOf(iIntValue);
        } else {
            this.f951z = Integer.valueOf(iIntValue);
        }
        K();
        x(new h2.l() { // from class: w0.h7
            @Override // h2.l
            public final Object c(Object obj) {
                CarPropertyManager carPropertyManager = (CarPropertyManager) obj;
                List list = HomeFloatingWidgetsService.f926a0;
                i2.g.e(carPropertyManager, "it");
                int[] iArr = v7.f4376a;
                p1.l(carPropertyManager, 356517131, i3, iIntValue);
                return x1.e.f4647c;
            }
        });
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        f927b0 = this;
        this.b = getSharedPreferences("tela_preta_prefs", 0);
        Object systemService = getSystemService("window");
        g.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        this.f928a = (WindowManager) systemService;
        String string = getString(R.string.k_widgets_float_channel);
        g.d(string, "getString(...)");
        String string2 = getString(R.string.k_widgets_float_active);
        g.d(string2, "getString(...)");
        startForeground(118, t1.E(this, "home_floating_widgets", string, string2, android.R.drawable.ic_menu_compass, null, 48));
        try {
            this.f931e = Car.createCar(this, null, 0L, new p(this, 1));
        } catch (Exception unused) {
        }
        this.f929c.post(this.Z);
        this.f929c.post(this.T);
        Log.i("HomeFloatingWidgets", "HomeFloatingWidgetsService iniciado");
    }

    @Override // android.app.Service
    public final void onDestroy() {
        this.f930d = true;
        this.f933h.incrementAndGet();
        f927b0 = null;
        this.f929c.removeCallbacksAndMessages(null);
        this.X.shutdownNow();
        this.f932g.shutdownNow();
        s sVar = this.S;
        if (sVar != null) {
            try {
                unregisterReceiver(sVar);
            } catch (Exception unused) {
            }
        }
        this.S = null;
        try {
            Car car = this.f931e;
            if (car != null) {
                car.disconnect();
            }
        } catch (Exception unused2) {
        }
        p();
        t();
        super.onDestroy();
    }

    public final void p() {
        u7 u7Var = this.L;
        if (u7Var != null) {
            this.f929c.removeCallbacks(u7Var);
        }
        this.L = null;
        FrameLayout frameLayout = this.K;
        if (frameLayout != null) {
            try {
                WindowManager windowManager = this.f928a;
                if (windowManager == null) {
                    g.h("wm");
                    throw null;
                }
                windowManager.removeView(frameLayout);
            } catch (Throwable unused) {
            }
        }
        this.K = null;
    }

    public final int q(int i3) {
        return (int) (i3 * getResources().getDisplayMetrics().density);
    }

    public final void r(h2.a aVar) {
        this.f929c.post(new a1.i(this, 16, aVar));
    }

    public final void s() {
        c0.f fVar = this.R;
        if (fVar == null) {
            return;
        }
        SeekBar seekBar = this.P;
        if (seekBar != null) {
            int iD = fVar.d();
            if (iD < 1) {
                iD = 1;
            }
            seekBar.setMax(iD);
            if (!seekBar.isPressed()) {
                seekBar.setProgress(fVar.f());
            }
        }
        p7 p7Var = this.Q;
        if (p7Var != null) {
            p7Var.a();
        }
    }

    public final void t() {
        v(this.B);
        this.B = null;
        v(this.C);
        this.C = null;
        v(this.D);
        this.D = null;
        v(this.E);
        this.E = null;
        v(this.F);
        this.F = null;
        v(this.G);
        this.G = null;
        v(this.H);
        this.H = null;
        w();
        u();
    }

    public final void u() {
        t7 t7Var = this.O;
        if (t7Var != null) {
            this.f929c.removeCallbacks(t7Var);
        }
        this.O = null;
        p();
        v(this.J);
        this.J = null;
        this.M = null;
        this.N = null;
    }

    public final void v(View view) {
        if (view == null) {
            return;
        }
        try {
            WindowManager windowManager = this.f928a;
            if (windowManager != null) {
                windowManager.removeView(view);
            } else {
                g.h("wm");
                throw null;
            }
        } catch (Throwable unused) {
        }
    }

    public final void w() {
        v(this.I);
        this.I = null;
        this.P = null;
        this.Q = null;
        s sVar = this.S;
        if (sVar != null) {
            try {
                unregisterReceiver(sVar);
            } catch (Exception unused) {
            }
        }
        this.S = null;
        c0.f fVar = this.R;
        if (fVar != null) {
            try {
                Car car = (Car) fVar.f715e;
                if (car != null) {
                    car.disconnect();
                }
            } catch (Throwable unused2) {
            }
            fVar.f715e = null;
            fVar.f = null;
            fVar.f713c = -1;
        }
        this.R = null;
    }

    public final void x(h2.l lVar) {
        if (this.f == null || this.f930d) {
            return;
        }
        this.f935j.incrementAndGet();
        this.f934i.incrementAndGet();
        try {
            this.f932g.execute(new a1.i(this, 15, lVar));
        } catch (RejectedExecutionException unused) {
            this.f934i.decrementAndGet();
        }
    }

    public final void y(View view, float f) {
        boolean z2;
        if (f != 1.0f) {
            if (view instanceof TextView) {
                TextView textView = (TextView) view;
                textView.setTextSize((textView.getTextSize() / getResources().getDisplayMetrics().scaledDensity) * f);
            }
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams != null) {
                int i3 = layoutParams.width;
                boolean z3 = true;
                if (i3 > 0) {
                    layoutParams.width = (int) (i3 * f);
                    z2 = true;
                } else {
                    z2 = false;
                }
                int i4 = layoutParams.height;
                if (i4 > 0) {
                    layoutParams.height = (int) (i4 * f);
                } else {
                    z3 = z2;
                }
                if (z3) {
                    view.setLayoutParams(layoutParams);
                }
            }
            if (view.getPaddingLeft() > 0 || view.getPaddingTop() > 0 || view.getPaddingRight() > 0 || view.getPaddingBottom() > 0) {
                view.setPadding((int) (view.getPaddingLeft() * f), (int) (view.getPaddingTop() * f), (int) (view.getPaddingRight() * f), (int) (view.getPaddingBottom() * f));
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = viewGroup.getChildAt(i5);
                g.d(childAt, "getChildAt(...)");
                y(childAt, f);
            }
        }
    }

    public final void z(int i3) {
        this.f940o = Integer.valueOf(i3);
        I();
        int[] iArr = v7.f4376a;
        if (v7.c(this, Integer.valueOf(i3), null) || this.f == null) {
            return;
        }
        x(new c7(this, i3, 3));
    }
}
