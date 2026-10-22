package com.ex.auto;

import a1.o;
import android.content.Intent;
import android.os.Bundle;
import android.view.WindowManager;
import e.j;
import i2.g;
import k1.a;

/* JADX INFO: loaded from: classes.dex */
public final class BlackoutActivity extends j {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final /* synthetic */ int f794t = 0;

    @Override // e.j, androidx.activity.h, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_blackout);
        s();
    }

    @Override // e.j, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        sendBroadcast(new Intent("com.ex.auto.action.BLACKOUT_DISMISSED"));
    }

    @Override // e.j, androidx.activity.h, android.app.Activity
    public final void onNewIntent(Intent intent) {
        g.e(intent, "intent");
        super.onNewIntent(intent);
        setIntent(intent);
        s();
    }

    public final void s() {
        Intent intent = getIntent();
        if (intent == null) {
            return;
        }
        if (g.a(intent.getAction(), "com.ex.auto.action.HIDE_BLACKOUT")) {
            finish();
            return;
        }
        boolean booleanExtra = intent.getBooleanExtra("mode_full_cover", true);
        float fJ = a.j(intent.getFloatExtra("dim_brightness", 0.0f), 0.0f, 1.0f);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.screenBrightness = fJ;
        getWindow().setAttributes(attributes);
        if (booleanExtra) {
            getWindow().clearFlags(16);
            getWindow().clearFlags(8);
            getWindow().getDecorView().setBackgroundColor(-16777216);
            getWindow().getDecorView().setOnTouchListener(new o(this, 2));
        } else {
            getWindow().addFlags(16);
            getWindow().addFlags(8);
            getWindow().getDecorView().setBackgroundColor(0);
        }
        getWindow().getDecorView().setSystemUiVisibility(5894);
    }
}
