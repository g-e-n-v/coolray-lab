package com.ex.auto;

import android.app.Activity;
import android.content.res.ColorStateList;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.TextView;
import java.util.Set;
import java.util.concurrent.ThreadPoolExecutor;
import w0.i;
import w0.t1;
import y1.g;

/* JADX INFO: loaded from: classes.dex */
public final class CloseAppsWhitelistActivity extends Activity {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f899c = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ThreadPoolExecutor f900a = t1.C("whitelist-loader", null, 6);
    public final Handler b = new Handler(Looper.getMainLooper());

    public final int a(int i3) {
        return (int) (i3 * getResources().getDisplayMetrics().density);
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Set setO0 = g.o0(t1.P(this));
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setBackgroundColor(getColor(R.color.cx_bg_panel));
        linearLayout.setPadding(a(24), a(24), a(24), a(24));
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(16);
        TextView textView = new TextView(this);
        textView.setText(getString(R.string.k_close_apps_whitelist_manage_title));
        textView.setTextColor(getColor(R.color.cx_text_primary));
        textView.setTextSize(24.0f);
        textView.setTypeface(textView.getTypeface(), 1);
        textView.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
        Button button = new Button(this);
        button.setText(getString(R.string.k_ac_list_back));
        button.setAllCaps(false);
        button.setTextColor(getColor(R.color.cx_text_hi));
        button.setBackgroundTintList(ColorStateList.valueOf(getColor(R.color.cx_surface)));
        button.setTextSize(17.0f);
        button.setLayoutParams(new LinearLayout.LayoutParams(a(150), a(52)));
        button.setOnClickListener(new i(3, this));
        linearLayout2.addView(textView);
        linearLayout2.addView(button);
        linearLayout.addView(linearLayout2);
        TextView textView2 = new TextView(this);
        textView2.setText(getString(R.string.k_close_apps_whitelist_manage_subtitle));
        textView2.setTextColor(getColor(R.color.cx_text_secondary));
        textView2.setTextSize(15.0f);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.topMargin = a(6);
        layoutParams.bottomMargin = a(16);
        textView2.setLayoutParams(layoutParams);
        linearLayout.addView(textView2);
        LinearLayout linearLayout3 = new LinearLayout(this);
        linearLayout3.setOrientation(1);
        ProgressBar progressBar = new ProgressBar(this);
        progressBar.setIndeterminate(true);
        linearLayout3.addView(progressBar, new LinearLayout.LayoutParams(-1, a(96)));
        linearLayout.addView(linearLayout3);
        ScrollView scrollView = new ScrollView(this);
        scrollView.addView(linearLayout);
        setContentView(scrollView);
        this.f900a.execute(new a1.g(this, linearLayout3, setO0, 6));
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        this.f900a.shutdownNow();
        this.b.removeCallbacksAndMessages(null);
        super.onDestroy();
    }
}
