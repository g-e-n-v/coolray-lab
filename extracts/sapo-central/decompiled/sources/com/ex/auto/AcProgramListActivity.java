package com.ex.auto;

import a1.n;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import e.j;
import i2.g;
import java.util.ArrayList;
import java.util.Iterator;
import k1.a;
import l2.b;
import l2.c;
import w0.i;
import w0.k;
import w0.t1;

/* JADX INFO: loaded from: classes.dex */
public final class AcProgramListActivity extends j {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final /* synthetic */ int f767u = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public LinearLayout f768t;

    @Override // e.j, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        g.e(context, "newBase");
        super.attachBaseContext(context);
    }

    @Override // e.j, androidx.activity.h, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_ac_program_list);
        this.f768t = (LinearLayout) findViewById(R.id.containerAcSlots);
        getWindow().getDecorView().setSystemUiVisibility(5894);
        findViewById(R.id.btnAcListBack).setOnClickListener(new i(0, this));
    }

    @Override // e.j, android.app.Activity
    public final void onResume() throws Throwable {
        String string;
        super.onResume();
        LinearLayout linearLayout = this.f768t;
        Throwable th = null;
        if (linearLayout == null) {
            g.h("container");
            throw null;
        }
        linearLayout.removeAllViews();
        c cVarT = a.T(0, 3);
        ArrayList arrayList = new ArrayList(y1.i.X(cVarT));
        Iterator it = cVarT.iterator();
        while (true) {
            b bVar = (b) it;
            if (!bVar.f2428c) {
                break;
            } else {
                arrayList.add(t1.O(this, bVar.nextInt()));
            }
        }
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            if (i3 > 0) {
                LinearLayout linearLayout2 = this.f768t;
                if (linearLayout2 == null) {
                    g.h("container");
                    throw th;
                }
                View view = new View(this);
                view.setBackgroundColor(getColor(R.color.master_divider));
                view.setLayoutParams(new LinearLayout.LayoutParams(-1, s(1)));
                linearLayout2.addView(view);
            }
            LinearLayout linearLayout3 = this.f768t;
            if (linearLayout3 == null) {
                Throwable th2 = th;
                g.h("container");
                throw th2;
            }
            k kVar = (k) arrayList.get(i3);
            LinearLayout linearLayout4 = new LinearLayout(this);
            linearLayout4.setOrientation(0);
            linearLayout4.setGravity(16);
            linearLayout4.setClickable(true);
            linearLayout4.setFocusable(true);
            linearLayout4.setForeground(getDrawable(android.R.drawable.list_selector_background));
            linearLayout4.setPadding(s(10), 0, s(12), 0);
            linearLayout4.setLayoutParams(new LinearLayout.LayoutParams(-1, s(112)));
            linearLayout4.setOnClickListener(new n(this, i3, 2));
            LinearLayout linearLayout5 = new LinearLayout(this);
            linearLayout5.setOrientation(1);
            linearLayout5.setGravity(16);
            TextView textView = new TextView(this);
            i3++;
            Throwable th3 = th;
            textView.setText(getString(R.string.k_ac_slot_label, Integer.valueOf(i3)));
            textView.setTextColor(getColor(R.color.master_text));
            textView.setTextSize(21.0f);
            textView.setTypeface(textView.getTypeface(), 1);
            linearLayout5.addView(textView);
            TextView textView2 = new TextView(this);
            if (kVar != null) {
                string = t1.b0(kVar);
            } else {
                string = getString(R.string.k_ac_list_empty_slot);
                g.b(string);
            }
            textView2.setText(string);
            textView2.setTextColor(getColor(R.color.master_text_secondary));
            textView2.setTextSize(17.0f);
            textView2.setPadding(0, s(7), 0, 0);
            linearLayout5.addView(textView2);
            linearLayout4.addView(linearLayout5, new LinearLayout.LayoutParams(0, -2, 1.0f));
            TextView textView3 = new TextView(this);
            textView3.setText(getString(kVar != null ? R.string.k_ac_list_edit : R.string.k_ac_list_create));
            textView3.setTextColor(getColor(kVar != null ? R.color.master_text_secondary : R.color.master_green));
            textView3.setTextSize(18.0f);
            textView3.setGravity(16);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.setMarginStart(s(26));
            textView3.setLayoutParams(layoutParams);
            linearLayout4.addView(textView3);
            TextView textView4 = new TextView(this);
            textView4.setText("›");
            textView4.setTextColor(getColor(R.color.master_text_secondary));
            textView4.setTextSize(32.0f);
            textView4.setGravity(17);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(s(42), s(54));
            layoutParams2.setMarginStart(s(10));
            linearLayout4.addView(textView4, layoutParams2);
            linearLayout3.addView(linearLayout4);
            th = th3;
        }
    }

    public final int s(int i3) {
        return (int) (i3 * getResources().getDisplayMetrics().density);
    }
}
