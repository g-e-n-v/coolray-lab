package com.ex.auto;

import a1.s;
import android.app.Application;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.UserManager;
import android.util.Log;
import androidx.activity.result.b;
import e.o;
import o2.k;
import y.e;

/* JADX INFO: loaded from: classes.dex */
public final class CentralApplication extends Application {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f810a = 0;

    public final void a() {
        int i3;
        try {
            SharedPreferences sharedPreferences = getSharedPreferences("tela_preta_prefs", 0);
            String string = sharedPreferences.getString("theme_mode", null);
            if (string == null) {
                if (sharedPreferences.contains("light_mode")) {
                    string = sharedPreferences.getBoolean("light_mode", false) ? "light" : "dark";
                } else {
                    string = "auto";
                }
            }
            if (string.equals("light")) {
                i3 = 1;
            } else {
                i3 = string.equals("auto") ? -1 : 2;
            }
            o.q(i3);
            String string2 = sharedPreferences.getString("app_language_tag", null);
            if (string2 != null && !k.m0(string2)) {
                o.m(e.a(string2));
            }
        } catch (Throwable th) {
            Log.w("CentralApplication", "tema/idioma não aplicados (" + th.getClass().getSimpleName() + ") — seguindo com o padrão");
        }
    }

    @Override // android.app.Application
    public final void onCreate() {
        super.onCreate();
        boolean zIsUserUnlocked = true;
        try {
            UserManager userManager = (UserManager) getSystemService(UserManager.class);
            if (userManager != null) {
                zIsUserUnlocked = userManager.isUserUnlocked();
            }
        } catch (Throwable unused) {
        }
        if (zIsUserUnlocked) {
            a();
            return;
        }
        Log.i("CentralApplication", "direct boot: prefs ainda indisponíveis — tema e idioma esperam o desbloqueio");
        try {
            registerReceiver(new s(3, this), new IntentFilter("android.intent.action.USER_UNLOCKED"));
        } catch (Throwable th) {
            b.s(th, new StringBuilder("não consegui esperar o desbloqueio: "), "CentralApplication");
        }
    }
}
