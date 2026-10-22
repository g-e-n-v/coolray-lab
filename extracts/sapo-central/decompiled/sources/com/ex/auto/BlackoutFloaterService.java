package com.ex.auto;

import a1.s;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import android.widget.ImageView;
import androidx.activity.result.b;
import com.ex.auto.BlackoutFloaterService;
import com.geely.driveregenfloater.DriveRegenFloaterService;
import com.geely.hvacstepperv2.TempStepperService;
import f2.d;
import g0.a;
import i2.g;
import java.io.File;
import kotlinx.coroutines.scheduling.h;
import o2.k;
import w0.e8;
import w0.i;
import w0.o0;
import w0.t1;
import w0.yd;

/* JADX INFO: loaded from: classes.dex */
public final class BlackoutFloaterService extends Service {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static volatile boolean f795p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static volatile boolean f796q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WindowManager f797a;
    public ImageView b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f798c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f799d;
    public boolean f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f801g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public a f803i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public s f804j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f805k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public float f806l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f807m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f808n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f809o;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f800e = 166;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Handler f802h = new Handler(Looper.getMainLooper());

    public static boolean a() {
        try {
            if (g.a(k.E0(d.h0(new File("/sys/fs/selinux/enforce"))).toString(), "0")) {
                return true;
            }
            Log.i("BlackoutFloater", "SELinux enforcing — executando setenforce 0");
            String strB = new h(5555).b(5000, "setenforce 0 2>/dev/null; cat /sys/fs/selinux/enforce");
            g.d(strB, "runShell(...)");
            return g.a(k.E0(strB).toString(), "0");
        } catch (Exception e3) {
            b.o(e3, new StringBuilder("ensureSelinuxPermissive falhou: "), "BlackoutFloater");
            return false;
        }
    }

    public static boolean e(int i3) {
        try {
            d.i0(new File("/sys/class/leds/lcd-backlight/brightness"), String.valueOf(i3));
            int i4 = Integer.parseInt(k.E0(d.h0(new File("/sys/class/leds/lcd-backlight/brightness"))).toString());
            boolean z2 = i4 == i3;
            if (z2) {
                Log.i("BlackoutFloater", "Backlight → " + i3);
                return z2;
            }
            Log.w("BlackoutFloater", "Backlight escrito " + i3 + " mas lido " + i4);
            return z2;
        } catch (Exception e3) {
            b.o(e3, new StringBuilder("Falha ao escrever backlight: "), "BlackoutFloater");
            return false;
        }
    }

    @Override // android.app.Service, android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        g.e(context, "base");
        super.attachBaseContext(e8.p(context));
    }

    public final void b() {
        if (this.f) {
            startForegroundService(new Intent(this, (Class<?>) DriveRegenFloaterService.class));
        }
        if (this.f801g) {
            startForegroundService(new Intent(this, (Class<?>) TempStepperService.class));
        }
        this.f = false;
        this.f801g = false;
    }

    public final void c() {
        ImageView imageView = this.b;
        if (imageView == null) {
            return;
        }
        Drawable background = imageView.getBackground();
        GradientDrawable gradientDrawable = background instanceof GradientDrawable ? (GradientDrawable) background : null;
        if (this.f798c) {
            if (gradientDrawable != null) {
                gradientDrawable.setColor(Color.parseColor("#40FFFFFF"));
            }
            imageView.setAlpha(0.18f);
            imageView.setContentDescription(getString(R.string.button_desc_on));
            return;
        }
        if (gradientDrawable != null) {
            gradientDrawable.setColor(Color.parseColor("#CC111111"));
        }
        imageView.setAlpha(0.85f);
        imageView.setContentDescription(getString(R.string.button_desc_off));
    }

    public final void d() {
        a aVar = this.f803i;
        if (aVar != null) {
            try {
                getContentResolver().unregisterContentObserver(aVar);
            } catch (Exception unused) {
            }
        }
        this.f803i = null;
        s sVar = this.f804j;
        if (sVar != null) {
            try {
                unregisterReceiver(sVar);
            } catch (Exception unused2) {
            }
        }
        this.f804j = null;
        this.f798c = false;
        f796q = false;
        b();
        c();
        new Thread(new o0(this, this.f800e)).start();
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        f795p = true;
        String string = getString(R.string.blackout_floater_channel);
        g.d(string, "getString(...)");
        String string2 = getString(R.string.app_name);
        g.d(string2, "getString(...)");
        startForeground(104, t1.D(this, "blackout_floater", string, string2, R.drawable.sapo_icon, getString(R.string.blackout_floater_notif), 2));
        Object systemService = getSystemService("window");
        g.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        this.f797a = (WindowManager) systemService;
        if (this.b != null) {
            return;
        }
        float f = getResources().getDisplayMetrics().density;
        int i3 = (int) (74 * f);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(Color.parseColor("#70353535"));
        final ImageView imageView = new ImageView(this);
        imageView.setLayoutParams(new WindowManager.LayoutParams(i3, i3));
        imageView.setBackground(gradientDrawable);
        imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        imageView.setImageResource(android.R.drawable.ic_lock_power_off);
        imageView.setColorFilter(-1);
        imageView.setAlpha(0.85f);
        imageView.setContentDescription(getString(R.string.button_desc_off));
        int i4 = (int) (9 * f);
        imageView.setPadding(i4, i4, i4, i4);
        imageView.setOnClickListener(new i(2, this));
        yd ydVarG = e8.G(this, "blackout", 8388659, 1412, 794);
        final WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, 2038, 264, -3);
        layoutParams.gravity = ydVarG.f4590a;
        layoutParams.x = ydVarG.b;
        layoutParams.y = ydVarG.f4591c;
        final int scaledTouchSlop = ViewConfiguration.get(this).getScaledTouchSlop();
        imageView.setOnTouchListener(new View.OnTouchListener() { // from class: w0.q0
            /* JADX WARN: Code duplicated, block: B:35:0x0070  */
            /* JADX WARN: Code duplicated, block: B:38:0x007a  */
            /* JADX WARN: Code duplicated, block: B:41:0x0089  */
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                BlackoutFloaterService blackoutFloaterService = this.f4078a;
                WindowManager.LayoutParams layoutParams2 = layoutParams;
                ImageView imageView2 = imageView;
                int i5 = scaledTouchSlop;
                boolean z2 = BlackoutFloaterService.f795p;
                int actionMasked = motionEvent.getActionMasked();
                if (actionMasked == 0) {
                    blackoutFloaterService.f805k = motionEvent.getRawX();
                    blackoutFloaterService.f806l = motionEvent.getRawY();
                    blackoutFloaterService.f807m = layoutParams2.x;
                    blackoutFloaterService.f808n = layoutParams2.y;
                    blackoutFloaterService.f809o = false;
                    imageView2.setAlpha(0.95f);
                    return true;
                }
                if (actionMasked == 1) {
                    imageView2.setAlpha(blackoutFloaterService.f798c ? 0.95f : 0.85f);
                    if (blackoutFloaterService.f809o) {
                        e8.M(blackoutFloaterService, "blackout", layoutParams2.gravity, layoutParams2.x, layoutParams2.y);
                    }
                    if (!blackoutFloaterService.f809o) {
                        imageView2.performClick();
                    }
                } else if (actionMasked != 2) {
                    if (actionMasked != 3) {
                        return false;
                    }
                    imageView2.setAlpha(blackoutFloaterService.f798c ? 0.95f : 0.85f);
                    if (blackoutFloaterService.f809o) {
                        e8.M(blackoutFloaterService, "blackout", layoutParams2.gravity, layoutParams2.x, layoutParams2.y);
                    }
                    if (!blackoutFloaterService.f809o) {
                        imageView2.performClick();
                    }
                } else {
                    int rawX = (int) (motionEvent.getRawX() - blackoutFloaterService.f805k);
                    int rawY = (int) (motionEvent.getRawY() - blackoutFloaterService.f806l);
                    if (!blackoutFloaterService.f809o) {
                        float f3 = i5;
                        if (Math.abs(rawX) > f3 || Math.abs(rawY) > f3) {
                            blackoutFloaterService.f809o = true;
                        }
                    }
                    if (blackoutFloaterService.f809o) {
                        int i6 = blackoutFloaterService.f807m + rawX;
                        if (i6 < 0) {
                            i6 = 0;
                        }
                        layoutParams2.x = i6;
                        int i7 = blackoutFloaterService.f808n + rawY;
                        layoutParams2.y = i7 >= 0 ? i7 : 0;
                        WindowManager windowManager = blackoutFloaterService.f797a;
                        if (windowManager != null) {
                            windowManager.updateViewLayout(imageView2, layoutParams2);
                            return true;
                        }
                        i2.g.h("windowManager");
                        throw null;
                    }
                }
                return true;
            }
        });
        WindowManager windowManager = this.f797a;
        if (windowManager == null) {
            g.h("windowManager");
            throw null;
        }
        windowManager.addView(imageView, layoutParams);
        this.b = imageView;
        c();
    }

    @Override // android.app.Service
    public final void onDestroy() {
        stopForeground(2);
        this.f802h.removeCallbacksAndMessages(null);
        a aVar = this.f803i;
        if (aVar != null) {
            try {
                getContentResolver().unregisterContentObserver(aVar);
            } catch (Exception unused) {
            }
        }
        this.f803i = null;
        s sVar = this.f804j;
        if (sVar != null) {
            try {
                unregisterReceiver(sVar);
            } catch (Exception unused2) {
            }
        }
        this.f804j = null;
        if (this.f798c) {
            d();
        }
        ImageView imageView = this.b;
        if (imageView != null && imageView.getParent() != null) {
            WindowManager windowManager = this.f797a;
            if (windowManager == null) {
                g.h("windowManager");
                throw null;
            }
            windowManager.removeView(imageView);
        }
        this.b = null;
        f795p = false;
        super.onDestroy();
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i3, int i4) {
        return 1;
    }
}
