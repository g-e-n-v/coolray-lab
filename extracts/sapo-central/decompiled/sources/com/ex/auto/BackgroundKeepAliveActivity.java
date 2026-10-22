package com.ex.auto;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import e.j;
import i2.g;
import java.util.Set;
import java.util.concurrent.ThreadPoolExecutor;
import w0.i;
import w0.t1;

/* JADX INFO: loaded from: classes.dex */
public final class BackgroundKeepAliveActivity extends j {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final /* synthetic */ int f791v = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final ThreadPoolExecutor f792t = t1.C("keepalive-loader", null, 6);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final Handler f793u = new Handler(Looper.getMainLooper());

    @Override // e.j, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        g.e(context, "newBase");
        super.attachBaseContext(context);
    }

    @Override // e.j, androidx.activity.h, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().getDecorView().setSystemUiVisibility(5894);
        setContentView(R.layout.activity_background_keep_alive);
        findViewById(R.id.btnKeepAliveClose).setOnClickListener(new i(1, this));
        Set setO0 = y1.g.o0(t1.N(this));
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.containerKeepAliveApps);
        ProgressBar progressBar = new ProgressBar(this);
        progressBar.setIndeterminate(true);
        linearLayout.addView(progressBar, new LinearLayout.LayoutParams(-1, s(96)));
        this.f792t.execute(new a1.g(this, linearLayout, setO0, 4));
    }

    @Override // e.j, android.app.Activity
    public final void onDestroy() {
        this.f792t.shutdownNow();
        this.f793u.removeCallbacksAndMessages(null);
        super.onDestroy();
    }

    public final int s(int i3) {
        return (int) (i3 * getResources().getDisplayMetrics().density);
    }
}
