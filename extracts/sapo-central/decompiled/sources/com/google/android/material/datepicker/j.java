package com.google.android.material.datepicker;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;
import q0.i0;
import q0.l0;

/* JADX INFO: loaded from: classes.dex */
public final class j extends l0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ t f1399a;
    public final /* synthetic */ MaterialButton b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ m f1400c;

    public j(m mVar, t tVar, MaterialButton materialButton) {
        this.f1400c = mVar;
        this.f1399a = tVar;
        this.b = materialButton;
    }

    @Override // q0.l0
    public final void a(RecyclerView recyclerView, int i3) {
        if (i3 == 0) {
            recyclerView.announceForAccessibility(this.b.getText());
        }
    }

    @Override // q0.l0
    public final void b(RecyclerView recyclerView, int i3, int i4) {
        int iF0;
        b bVar = this.f1399a.f1429c;
        m mVar = this.f1400c;
        if (i3 < 0) {
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) mVar.Y.getLayoutManager();
            View viewH0 = linearLayoutManager.H0(0, linearLayoutManager.v(), false);
            iF0 = viewH0 == null ? -1 : i0.D(viewH0);
        } else {
            iF0 = ((LinearLayoutManager) mVar.Y.getLayoutManager()).F0();
        }
        Calendar calendarA = x.a(bVar.f1385a.f1418a);
        calendarA.add(2, iF0);
        mVar.U = new p(calendarA);
        Calendar calendarA2 = x.a(bVar.f1385a.f1418a);
        calendarA2.add(2, iF0);
        calendarA2.set(5, 1);
        Calendar calendarA3 = x.a(calendarA2);
        calendarA3.get(2);
        calendarA3.get(1);
        calendarA3.getMaximum(7);
        calendarA3.getActualMaximum(5);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("LLLL, yyyy", Locale.getDefault());
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        String str = simpleDateFormat.format(calendarA3.getTime());
        calendarA3.getTimeInMillis();
        this.b.setText(str);
    }
}
