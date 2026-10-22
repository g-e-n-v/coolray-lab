package com.google.android.material.datepicker;

import android.widget.LinearLayout;
import android.widget.TextView;
import c0.p0;
import com.ex.auto.R;
import java.util.WeakHashMap;
import q0.w0;

/* JADX INFO: loaded from: classes.dex */
public final class s extends w0 {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final TextView f1427t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final MaterialCalendarGridView f1428u;

    public s(LinearLayout linearLayout, boolean z2) {
        super(linearLayout);
        TextView textView = (TextView) linearLayout.findViewById(R.id.month_title);
        this.f1427t = textView;
        WeakHashMap weakHashMap = p0.f727a;
        new c0.w(R.id.tag_accessibility_heading, Boolean.class, 0, 28, 2).d(textView, Boolean.TRUE);
        this.f1428u = (MaterialCalendarGridView) linearLayout.findViewById(R.id.month_grid);
        if (z2) {
            return;
        }
        textView.setVisibility(8);
    }
}
