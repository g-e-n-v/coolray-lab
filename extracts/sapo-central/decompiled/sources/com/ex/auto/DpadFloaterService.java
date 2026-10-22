package com.ex.auto;

import a1.n;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.GradientDrawable;
import android.os.IBinder;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.GridLayout;
import android.widget.TextView;
import com.ex.auto.DpadFloaterService;
import i2.g;
import w0.e8;
import w0.t1;
import w0.yd;

/* JADX INFO: loaded from: classes.dex */
public final class DpadFloaterService extends Service {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ int f901i = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WindowManager f902a;
    public GridLayout b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public WindowManager.LayoutParams f903c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f904d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f905e;
    public int f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f906g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f907h;

    public static void a(View view, int i3, int i4) {
        GridLayout.LayoutParams layoutParams = new GridLayout.LayoutParams(GridLayout.spec(i3), GridLayout.spec(i4));
        layoutParams.width = 76;
        layoutParams.height = 76;
        layoutParams.setMargins(6, 6, 6, 6);
        view.setLayoutParams(layoutParams);
    }

    @Override // android.app.Service, android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        g.e(context, "base");
        super.attachBaseContext(e8.p(context));
    }

    public final void b(TextView textView, String str, int i3) {
        textView.setText(str);
        textView.setTextColor(-1);
        textView.setTextSize(22.0f);
        textView.setGravity(17);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(14.0f);
        gradientDrawable.setColor(-869650893);
        gradientDrawable.setStroke(2, 872415231);
        textView.setBackground(gradientDrawable);
        textView.setOnClickListener(new n(this, i3, 3));
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
        this.f902a = (WindowManager) systemService;
        startForeground(15073, t1.E(this, "dpad_floater", "Controle TV (D-pad)", "Setas na tela p/ apps de TV", android.R.drawable.ic_media_ff, null, 16));
        if (this.b != null) {
            return;
        }
        GridLayout gridLayout = new GridLayout(this);
        gridLayout.setRowCount(3);
        gridLayout.setColumnCount(3);
        gridLayout.setPadding(6, 6, 6, 6);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(22.0f);
        gradientDrawable.setColor(-1728053248);
        gridLayout.setBackground(gradientDrawable);
        TextView textView = new TextView(this);
        textView.setText("⠿");
        textView.setTextColor(-1711276033);
        textView.setTextSize(20.0f);
        textView.setGravity(17);
        TextView textView2 = new TextView(this);
        b(textView2, "▲", 19);
        TextView textView3 = new TextView(this);
        textView3.setText("✕");
        textView3.setTextColor(-855676053);
        textView3.setTextSize(18.0f);
        textView3.setGravity(17);
        final int i3 = 0;
        textView3.setOnClickListener(new View.OnClickListener(this) { // from class: w0.u5
            public final /* synthetic */ DpadFloaterService b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i3) {
                    case 0:
                        DpadFloaterService dpadFloaterService = this.b;
                        if (!dpadFloaterService.f907h) {
                            dpadFloaterService.stopSelf();
                        }
                        break;
                    default:
                        if (!this.b.f907h) {
                            new Thread(new o0(23, 1)).start();
                        }
                        break;
                }
            }
        });
        TextView textView4 = new TextView(this);
        b(textView4, "◀", 21);
        TextView textView5 = new TextView(this);
        textView5.setText("OK");
        textView5.setTextColor(-1);
        textView5.setTextSize(16.0f);
        textView5.setGravity(17);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setShape(1);
        gradientDrawable2.setColor(-869306389);
        textView5.setBackground(gradientDrawable2);
        final int i4 = 1;
        textView5.setOnClickListener(new View.OnClickListener(this) { // from class: w0.u5
            public final /* synthetic */ DpadFloaterService b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i4) {
                    case 0:
                        DpadFloaterService dpadFloaterService = this.b;
                        if (!dpadFloaterService.f907h) {
                            dpadFloaterService.stopSelf();
                        }
                        break;
                    default:
                        if (!this.b.f907h) {
                            new Thread(new o0(23, 1)).start();
                        }
                        break;
                }
            }
        });
        TextView textView6 = new TextView(this);
        b(textView6, "▶", 22);
        TextView textView7 = new TextView(this);
        b(textView7, "↩", 4);
        TextView textView8 = new TextView(this);
        b(textView8, "▼", 20);
        View view = new View(this);
        a(textView, 0, 0);
        a(textView2, 0, 1);
        a(textView3, 0, 2);
        a(textView4, 1, 0);
        a(textView5, 1, 1);
        a(textView6, 1, 2);
        a(textView7, 2, 0);
        a(textView8, 2, 1);
        a(view, 2, 2);
        gridLayout.addView(textView);
        gridLayout.addView(textView2);
        gridLayout.addView(textView3);
        gridLayout.addView(textView4);
        gridLayout.addView(textView5);
        gridLayout.addView(textView6);
        gridLayout.addView(textView7);
        gridLayout.addView(textView8);
        gridLayout.addView(view);
        yd ydVarG = e8.G(this, "dpad_floater", 8388693, 40, 120);
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, 2038, 264, -3);
        layoutParams.gravity = ydVarG.f4590a;
        layoutParams.x = ydVarG.b;
        layoutParams.y = ydVarG.f4591c;
        this.f903c = layoutParams;
        final int scaledTouchSlop = ViewConfiguration.get(this).getScaledTouchSlop();
        textView.setOnTouchListener(new View.OnTouchListener() { // from class: w0.v5
            /* JADX WARN: Code duplicated, block: B:40:0x0076  */
            /* JADX WARN: Code duplicated, block: B:42:0x007a  */
            /* JADX WARN: Code duplicated, block: B:44:0x0086  */
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                WindowManager.LayoutParams layoutParams2;
                int i5 = DpadFloaterService.f901i;
                int actionMasked = motionEvent.getActionMasked();
                DpadFloaterService dpadFloaterService = this.f4371a;
                if (actionMasked == 0) {
                    dpadFloaterService.f904d = motionEvent.getRawX();
                    dpadFloaterService.f905e = motionEvent.getRawY();
                    WindowManager.LayoutParams layoutParams3 = dpadFloaterService.f903c;
                    if (layoutParams3 == null) {
                        i2.g.h("lp");
                        throw null;
                    }
                    dpadFloaterService.f = layoutParams3.x;
                    dpadFloaterService.f906g = layoutParams3.y;
                    dpadFloaterService.f907h = false;
                    return true;
                }
                if (actionMasked == 1) {
                    if (dpadFloaterService.f907h) {
                        layoutParams2 = dpadFloaterService.f903c;
                        if (layoutParams2 != null) {
                            e8.M(dpadFloaterService, "dpad_floater", layoutParams2.gravity, layoutParams2.x, layoutParams2.y);
                            return true;
                        }
                        i2.g.h("lp");
                        throw null;
                    }
                } else if (actionMasked != 2) {
                    if (actionMasked != 3) {
                        return false;
                    }
                    if (dpadFloaterService.f907h) {
                        layoutParams2 = dpadFloaterService.f903c;
                        if (layoutParams2 != null) {
                            e8.M(dpadFloaterService, "dpad_floater", layoutParams2.gravity, layoutParams2.x, layoutParams2.y);
                            return true;
                        }
                        i2.g.h("lp");
                        throw null;
                    }
                } else {
                    int rawX = (int) (motionEvent.getRawX() - dpadFloaterService.f904d);
                    int rawY = (int) (motionEvent.getRawY() - dpadFloaterService.f905e);
                    if (!dpadFloaterService.f907h) {
                        float fAbs = Math.abs(rawX);
                        float f = scaledTouchSlop;
                        if (fAbs > f || Math.abs(rawY) > f) {
                            dpadFloaterService.f907h = true;
                        }
                    }
                    if (dpadFloaterService.f907h) {
                        WindowManager.LayoutParams layoutParams4 = dpadFloaterService.f903c;
                        if (layoutParams4 == null) {
                            i2.g.h("lp");
                            throw null;
                        }
                        int i6 = dpadFloaterService.f - rawX;
                        if (i6 < 0) {
                            i6 = 0;
                        }
                        layoutParams4.x = i6;
                        int i7 = dpadFloaterService.f906g - rawY;
                        layoutParams4.y = i7 >= 0 ? i7 : 0;
                        GridLayout gridLayout2 = dpadFloaterService.b;
                        if (gridLayout2 != null) {
                            WindowManager windowManager = dpadFloaterService.f902a;
                            if (windowManager != null) {
                                windowManager.updateViewLayout(gridLayout2, layoutParams4);
                                return true;
                            }
                            i2.g.h("wm");
                            throw null;
                        }
                    }
                }
                return true;
            }
        });
        try {
            WindowManager windowManager = this.f902a;
            if (windowManager == null) {
                g.h("wm");
                throw null;
            }
            ViewGroup.LayoutParams layoutParams2 = this.f903c;
            if (layoutParams2 == null) {
                g.h("lp");
                throw null;
            }
            windowManager.addView(gridLayout, layoutParams2);
            this.b = gridLayout;
        } catch (Throwable th) {
            Log.e("DpadFloater", "addView falhou: " + th.getMessage());
        }
    }

    @Override // android.app.Service
    public final void onDestroy() {
        GridLayout gridLayout = this.b;
        if (gridLayout != null && gridLayout.getParent() != null) {
            try {
                WindowManager windowManager = this.f902a;
                if (windowManager == null) {
                    g.h("wm");
                    throw null;
                }
                windowManager.removeView(gridLayout);
            } catch (Throwable unused) {
            }
        }
        this.b = null;
        super.onDestroy();
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i3, int i4) {
        return 1;
    }
}
