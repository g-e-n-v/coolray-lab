package com.google.android.material.datepicker;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import java.util.Calendar;
import q0.i0;

/* JADX INFO: loaded from: classes.dex */
public final class l implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1402a;
    public final /* synthetic */ t b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ m f1403c;

    public /* synthetic */ l(m mVar, t tVar, int i3) {
        this.f1402a = i3;
        this.f1403c = mVar;
        this.b = tVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f1402a) {
            case 0:
                m mVar = this.f1403c;
                LinearLayoutManager linearLayoutManager = (LinearLayoutManager) mVar.Y.getLayoutManager();
                View viewH0 = linearLayoutManager.H0(0, linearLayoutManager.v(), false);
                int iD = (viewH0 == null ? -1 : i0.D(viewH0)) + 1;
                if (iD < mVar.Y.getAdapter().a()) {
                    Calendar calendarA = x.a(this.b.f1429c.f1385a.f1418a);
                    calendarA.add(2, iD);
                    mVar.A(new p(calendarA));
                }
                break;
            default:
                m mVar2 = this.f1403c;
                int iF0 = ((LinearLayoutManager) mVar2.Y.getLayoutManager()).F0() - 1;
                if (iF0 >= 0) {
                    Calendar calendarA2 = x.a(this.b.f1429c.f1385a.f1418a);
                    calendarA2.add(2, iF0);
                    mVar2.A(new p(calendarA2));
                }
                break;
        }
    }
}
