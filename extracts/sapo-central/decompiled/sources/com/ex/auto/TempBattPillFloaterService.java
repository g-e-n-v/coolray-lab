package com.ex.auto;

import a1.o;
import a1.p;
import android.app.Service;
import android.car.Car;
import android.car.hardware.property.CarPropertyManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.view.WindowManager;
import android.widget.TextView;
import i2.g;
import java.util.ArrayList;
import k1.a;
import w0.e8;
import w0.j;
import w0.k;
import w0.t1;
import w0.u;
import w0.yd;
import w0.yg;

/* JADX INFO: loaded from: classes.dex */
public final class TempBattPillFloaterService extends Service {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static volatile TempBattPillFloaterService f1198v;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WindowManager f1199a;
    public SharedPreferences b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TextView f1200c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public WindowManager.LayoutParams f1201d;
    public Car f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public volatile CarPropertyManager f1203g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Float f1204h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Float f1205i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public volatile Integer f1207k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public k f1208l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f1209m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public j f1210n;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public float f1212p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public float f1213q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f1214r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f1215s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f1216t;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Handler f1202e = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int[] f1206j = {1, 49, 5, 0};

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final yg f1211o = new yg(this, 0);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final yg f1217u = new yg(this, 1);

    public final void a(int i3) {
        SharedPreferences sharedPreferences = this.b;
        if (sharedPreferences == null) {
            g.h("pillPrefs");
            throw null;
        }
        sharedPreferences.edit().putInt("pill_alpha", i3).apply();
        int iK = (a.k(i3, 0, 100) * 255) / 100;
        TextView textView = this.f1200c;
        if (textView != null) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(iK << 24);
            gradientDrawable.setCornerRadius(d(50));
            textView.setBackground(gradientDrawable);
        }
    }

    @Override // android.app.Service, android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        g.e(context, "base");
        super.attachBaseContext(e8.p(context));
    }

    public final void b(int i3) {
        SharedPreferences sharedPreferences = this.b;
        if (sharedPreferences == null) {
            g.h("pillPrefs");
            throw null;
        }
        sharedPreferences.edit().putInt("pill_size_pct", i3).apply();
        float f = i3 / 100.0f;
        TextView textView = this.f1200c;
        if (textView != null) {
            textView.setTextSize(16.0f * f);
        }
        int i4 = (int) (18 * f);
        int i5 = (int) (10 * f);
        TextView textView2 = this.f1200c;
        if (textView2 != null) {
            textView2.setPadding(d(i4), d(i5), d(i4), d(i5));
        }
    }

    public final void c(boolean z2) {
        TextView textView;
        SharedPreferences sharedPreferences = this.b;
        if (sharedPreferences == null) {
            g.h("pillPrefs");
            throw null;
        }
        sharedPreferences.edit().putBoolean("pill_text_white", z2).apply();
        if (this.f1207k != null || (textView = this.f1200c) == null) {
            return;
        }
        textView.setTextColor(z2 ? -1 : -16777216);
    }

    public final int d(int i3) {
        return (int) (i3 * getResources().getDisplayMetrics().density);
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0048  */
    public final void e() {
        j jVarO;
        Float f;
        Integer num;
        Boolean bool;
        this.f1202e.removeCallbacks(this.f1211o);
        k kVar = this.f1208l;
        if (kVar != null) {
            j jVar = this.f1210n;
            ArrayList arrayList = kVar.f3774a;
            if (kVar.f3775c) {
                j jVarO2 = t1.o(arrayList);
                if (jVar == null || (f = jVar.f3732a) == null || jVarO2.f3732a == null) {
                    f = null;
                }
                if (jVar == null || (num = jVar.b) == null || jVarO2.b == null) {
                    num = null;
                }
                if (jVar == null || (bool = jVar.f3733c) == null || jVarO2.f3733c == null) {
                    bool = null;
                }
                jVarO = new j(f, num, bool);
                if (f == null && num == null && bool == null) {
                    jVarO = null;
                }
            } else {
                jVarO = t1.o(arrayList);
                if (jVarO.f3732a == null && jVarO.b == null && jVarO.f3733c == null) {
                    jVarO = null;
                }
            }
            if (jVarO != null) {
                Float f3 = jVarO.f3732a;
                if (f3 != null) {
                    float fFloatValue = f3.floatValue();
                    CarPropertyManager carPropertyManager = this.f1203g;
                    if (carPropertyManager != null) {
                        try {
                            carPropertyManager.setFloatProperty(u.f4290d, 1, fFloatValue);
                        } catch (Throwable unused) {
                        }
                        try {
                            carPropertyManager.setFloatProperty(u.f4290d, 4, fFloatValue);
                        } catch (Throwable unused2) {
                        }
                    }
                }
                Integer num2 = jVarO.b;
                if (num2 != null) {
                    int iIntValue = num2.intValue();
                    CarPropertyManager carPropertyManager2 = this.f1203g;
                    if (carPropertyManager2 != null) {
                        for (int i3 : this.f1206j) {
                            try {
                                carPropertyManager2.setIntProperty(356517120, i3, iIntValue);
                                break;
                            } catch (Throwable unused3) {
                            }
                        }
                    }
                }
                Boolean bool2 = jVarO.f3733c;
                if (bool2 != null) {
                    boolean zBooleanValue = bool2.booleanValue();
                    CarPropertyManager carPropertyManager3 = this.f1203g;
                    if (carPropertyManager3 != null) {
                        try {
                            carPropertyManager3.setBooleanProperty(u.f4291e, u.f, zBooleanValue);
                        } catch (Throwable unused4) {
                        }
                    }
                }
            }
        }
        this.f1210n = null;
        this.f1207k = null;
        this.f1208l = null;
        TextView textView = this.f1200c;
        if (textView != null) {
            SharedPreferences sharedPreferences = this.b;
            if (sharedPreferences == null) {
                g.h("pillPrefs");
                throw null;
            }
            textView.setTextColor(sharedPreferences.getBoolean("pill_text_white", true) ? -1 : -16777216);
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x002f  */
    /* JADX WARN: Code duplicated, block: B:17:0x0050  */
    public final void f() {
        String str;
        String string;
        SharedPreferences sharedPreferences = this.b;
        if (sharedPreferences == null) {
            g.h("pillPrefs");
            throw null;
        }
        String string2 = sharedPreferences.getString("pill_mode", "both");
        String str2 = string2 != null ? string2 : "both";
        Float f = this.f1204h;
        if (f != null) {
            str = Math.round(f.floatValue()) + "°C";
            if (str == null) {
                str = "--°C";
            }
        } else {
            str = "--°C";
        }
        Float f3 = this.f1205i;
        if (f3 != null) {
            float fFloatValue = f3.floatValue();
            StringBuilder sb = new StringBuilder();
            sb.append(Math.round(fFloatValue));
            sb.append('%');
            string = sb.toString();
            if (string == null) {
                string = "--%";
            }
        } else {
            string = "--%";
        }
        TextView textView = this.f1200c;
        if (textView != null) {
            if (!str2.equals("temp")) {
                if (str2.equals("batt")) {
                    str = string;
                } else {
                    str = str + "   " + string;
                }
            }
            textView.setText(str);
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        f1198v = this;
        this.b = getSharedPreferences("temp_batt_pill_prefs", 0);
        String string = getString(R.string.k_pill_channel_name);
        g.d(string, "getString(...)");
        String string2 = getString(R.string.k_pill_channel_active);
        g.d(string2, "getString(...)");
        startForeground(109, t1.E(this, "temp_batt_pill_floater", string, string2, android.R.drawable.ic_menu_compass, null, 48));
        Object systemService = getSystemService("window");
        g.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        this.f1199a = (WindowManager) systemService;
        TextView textView = new TextView(this);
        textView.setTextSize(16.0f);
        textView.setGravity(17);
        textView.setTypeface(textView.getTypeface(), 1);
        textView.setText("…");
        this.f1200c = textView;
        textView.setOnTouchListener(new o(this, 6));
        SharedPreferences sharedPreferences = this.b;
        if (sharedPreferences == null) {
            g.h("pillPrefs");
            throw null;
        }
        a(sharedPreferences.getInt("pill_alpha", 85));
        SharedPreferences sharedPreferences2 = this.b;
        if (sharedPreferences2 == null) {
            g.h("pillPrefs");
            throw null;
        }
        b(sharedPreferences2.getInt("pill_size_pct", 100));
        SharedPreferences sharedPreferences3 = this.b;
        if (sharedPreferences3 == null) {
            g.h("pillPrefs");
            throw null;
        }
        c(sharedPreferences3.getBoolean("pill_text_white", true));
        yd ydVarG = e8.G(this, "temp_batt_pill", 49, 0, d(80));
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, 2038, 264, -3);
        layoutParams.gravity = ydVarG.f4590a;
        layoutParams.x = ydVarG.b;
        layoutParams.y = ydVarG.f4591c;
        this.f1201d = layoutParams;
        try {
            WindowManager windowManager = this.f1199a;
            if (windowManager == null) {
                g.h("wm");
                throw null;
            }
            windowManager.addView(this.f1200c, layoutParams);
            try {
                this.f = Car.createCar(this, null, 0L, new p(this, 4));
            } catch (Exception unused) {
            }
            this.f1202e.post(this.f1217u);
        } catch (Throwable unused2) {
            stopSelf();
        }
    }

    @Override // android.app.Service
    public final void onDestroy() {
        f1198v = null;
        this.f1207k = null;
        this.f1208l = null;
        this.f1202e.removeCallbacksAndMessages(null);
        try {
            Car car = this.f;
            if (car != null) {
                car.disconnect();
            }
        } catch (Exception unused) {
        }
        try {
            WindowManager windowManager = this.f1199a;
            if (windowManager == null) {
                g.h("wm");
                throw null;
            }
            windowManager.removeView(this.f1200c);
            super.onDestroy();
        } catch (Throwable unused2) {
        }
    }
}
