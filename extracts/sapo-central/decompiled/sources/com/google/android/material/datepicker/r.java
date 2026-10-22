package com.google.android.material.datepicker;

import android.view.View;
import android.widget.AdapterView;

/* JADX INFO: loaded from: classes.dex */
public final class r implements AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MaterialCalendarGridView f1426a;
    public final /* synthetic */ t b;

    public r(t tVar, MaterialCalendarGridView materialCalendarGridView) {
        this.b = tVar;
        this.f1426a = materialCalendarGridView;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i3, long j3) {
        MaterialCalendarGridView materialCalendarGridView = this.f1426a;
        q qVarA = materialCalendarGridView.a();
        if (i3 < qVarA.f1424a.c() || i3 > qVarA.b()) {
            return;
        }
        if (materialCalendarGridView.a().getItem(i3).longValue() >= ((m) this.b.f1430d.b).T.f1387d.f1393a) {
            throw null;
        }
    }
}
