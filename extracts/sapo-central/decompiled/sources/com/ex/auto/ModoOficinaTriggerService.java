package com.ex.auto;

import a1.o;
import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.view.View;
import android.view.WindowManager;
import i2.g;
import w0.ae;

/* JADX INFO: loaded from: classes.dex */
public final class ModoOficinaTriggerService extends Service {
    public static volatile ModoOficinaTriggerService f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WindowManager f1098a;
    public View b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1099c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f1100d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile boolean f1101e;

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        Object systemService = getSystemService("window");
        g.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        this.f1098a = (WindowManager) systemService;
        View view = new View(this);
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(44, 44, 2038, 264, -3);
        layoutParams.gravity = 8388691;
        layoutParams.x = 0;
        layoutParams.y = 0;
        view.setOnTouchListener(new o(this, 3));
        try {
            WindowManager windowManager = this.f1098a;
            if (windowManager == null) {
                g.h("windowManager");
                throw null;
            }
            windowManager.addView(view, layoutParams);
            this.b = view;
            f = this;
            ae aeVar = ae.f3361a;
            ae.b("ModoOficinaTrigger", "alvo secreto ativo (canto inferior esquerdo, 44px)", false);
        } catch (Throwable th) {
            ae aeVar2 = ae.f3361a;
            ae.b("ModoOficinaTrigger", "não consegui desenhar o alvo secreto: " + th.getMessage(), false);
            stopSelf();
        }
    }

    @Override // android.app.Service
    public final void onDestroy() {
        View view = this.b;
        if (view != null) {
            try {
                WindowManager windowManager = this.f1098a;
                if (windowManager == null) {
                    g.h("windowManager");
                    throw null;
                }
                windowManager.removeView(view);
            } catch (Throwable unused) {
            }
        }
        this.b = null;
        f = null;
        super.onDestroy();
    }
}
