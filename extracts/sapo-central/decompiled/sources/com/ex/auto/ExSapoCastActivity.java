package com.ex.auto;

import android.app.Activity;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.view.SurfaceView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import h2.a;
import i2.g;
import w0.d6;
import w0.e6;
import w0.f2;
import w0.f6;
import w0.j6;
import w0.m;
import w0.m6;
import w0.w;
import w0.w5;

/* JADX INFO: loaded from: classes.dex */
public final class ExSapoCastActivity extends Activity implements j6 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ int f910e = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public FrameLayout f911a;
    public SurfaceView b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f912c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f913d;

    public static final TextView c(ExSapoCastActivity exSapoCastActivity, String str, a aVar) {
        TextView textView = new TextView(exSapoCastActivity);
        textView.setText(str);
        textView.setTextColor(-1);
        textView.setTextSize(22.0f);
        textView.setGravity(17);
        int iD = exSapoCastActivity.d(48);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(iD, iD);
        layoutParams.topMargin = exSapoCastActivity.d(8);
        textView.setLayoutParams(layoutParams);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(-1440734168);
        gradientDrawable.setStroke(exSapoCastActivity.d(1), 1728053247);
        textView.setBackground(gradientDrawable);
        textView.setOnClickListener(new w(aVar, 1));
        return textView;
    }

    @Override // w0.j6
    public final void a(int i3, int i4) {
        if (i3 <= 0 || i4 <= 0) {
            return;
        }
        this.f912c = i3;
        this.f913d = i4;
        FrameLayout frameLayout = this.f911a;
        if (frameLayout != null) {
            frameLayout.post(new e6(this, 0));
        } else {
            g.h("root");
            throw null;
        }
    }

    @Override // w0.j6
    public final void b() {
        runOnUiThread(new e6(this, 1));
    }

    public final int d(int i3) {
        return (int) (i3 * getResources().getDisplayMetrics().density);
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().addFlags(128);
        getWindow().getDecorView().setSystemUiVisibility(5894);
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setBackgroundColor(-16777216);
        this.f911a = frameLayout;
        SurfaceView surfaceView = new SurfaceView(this);
        this.b = surfaceView;
        surfaceView.getHolder().addCallback(new f6(0));
        FrameLayout frameLayout2 = this.f911a;
        int[] iArr = null;
        if (frameLayout2 == null) {
            g.h("root");
            throw null;
        }
        SurfaceView surfaceView2 = this.b;
        if (surfaceView2 == null) {
            g.h("surfaceView");
            throw null;
        }
        frameLayout2.addView(surfaceView2, new FrameLayout.LayoutParams(-1, -1, 17));
        SurfaceView surfaceView3 = this.b;
        if (surfaceView3 == null) {
            g.h("surfaceView");
            throw null;
        }
        surfaceView3.setOnTouchListener(new d6(this, 0));
        FrameLayout frameLayout3 = this.f911a;
        if (frameLayout3 == null) {
            g.h("root");
            throw null;
        }
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2, 8388629);
        layoutParams.setMarginEnd(d(10));
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.addView(c(this, "‹", new w5(1)));
        linearLayout.addView(c(this, "○", new w5(2)));
        linearLayout.addView(c(this, "▢", new w5(3)));
        linearLayout.addView(c(this, "✕", new f2(1, this)));
        frameLayout3.addView(linearLayout);
        FrameLayout frameLayout4 = this.f911a;
        if (frameLayout4 == null) {
            g.h("root");
            throw null;
        }
        setContentView(frameLayout4);
        m.f3861c = this;
        if (m.f3866i == null) {
            finish();
        }
        m6 m6Var = m.f3866i;
        if (m6Var != null && m6Var.f3892g > 0 && m6Var.f3893h > 0) {
            iArr = new int[]{m6Var.f3892g, m6Var.f3893h};
        }
        if (iArr != null) {
            a(iArr[0], iArr[1]);
        }
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        m6 m6Var;
        super.onDestroy();
        if (m.f3861c == this) {
            m.f3861c = null;
        }
        m6 m6Var2 = m.f3866i;
        if (m6Var2 != null) {
            synchronized (m6Var2) {
                m6Var2.f3891e = null;
                m6Var2.e();
            }
        }
        if (!isFinishing() || (m6Var = m.f3866i) == null) {
            return;
        }
        m6Var.g("activity-finish");
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        if (z2) {
            getWindow().getDecorView().setSystemUiVisibility(5894);
        }
    }
}
