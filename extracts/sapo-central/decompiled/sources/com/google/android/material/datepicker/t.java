package com.google.android.material.datepicker;

import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import com.ex.auto.R;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;
import q0.a0;
import q0.j0;
import q0.w0;

/* JADX INFO: loaded from: classes.dex */
public final class t extends a0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final b f1429c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final androidx.emoji2.text.m f1430d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f1431e;

    public t(ContextThemeWrapper contextThemeWrapper, b bVar, androidx.emoji2.text.m mVar) {
        p pVar = bVar.f1385a;
        p pVar2 = bVar.b;
        p pVar3 = bVar.f1386c;
        if (pVar.compareTo(pVar3) > 0) {
            throw new IllegalArgumentException("firstPage cannot be after currentPage");
        }
        if (pVar3.compareTo(pVar2) > 0) {
            throw new IllegalArgumentException("currentPage cannot be after lastPage");
        }
        this.f1431e = (contextThemeWrapper.getResources().getDimensionPixelSize(R.dimen.mtrl_calendar_day_height) * q.f1423d) + (n.C(contextThemeWrapper) ? contextThemeWrapper.getResources().getDimensionPixelSize(R.dimen.mtrl_calendar_day_height) : 0);
        this.f1429c = bVar;
        this.f1430d = mVar;
        if (this.f2841a.a()) {
            throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
        }
        this.b = true;
    }

    @Override // q0.a0
    public final int a() {
        return this.f1429c.f;
    }

    @Override // q0.a0
    public final long b(int i3) {
        Calendar calendarA = x.a(this.f1429c.f1385a.f1418a);
        calendarA.add(2, i3);
        calendarA.set(5, 1);
        Calendar calendarA2 = x.a(calendarA);
        calendarA2.get(2);
        calendarA2.get(1);
        calendarA2.getMaximum(7);
        calendarA2.getActualMaximum(5);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("LLLL, yyyy", Locale.getDefault());
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        simpleDateFormat.format(calendarA2.getTime());
        calendarA2.getTimeInMillis();
        return calendarA2.getTimeInMillis();
    }

    @Override // q0.a0
    public final void c(w0 w0Var, int i3) {
        s sVar = (s) w0Var;
        b bVar = this.f1429c;
        Calendar calendarA = x.a(bVar.f1385a.f1418a);
        calendarA.add(2, i3);
        p pVar = new p(calendarA);
        sVar.f1427t.setText(pVar.b);
        MaterialCalendarGridView materialCalendarGridView = (MaterialCalendarGridView) sVar.f1428u.findViewById(R.id.month_grid);
        if (materialCalendarGridView.a() == null || !pVar.equals(materialCalendarGridView.a().f1424a)) {
            q qVar = new q(pVar, bVar);
            materialCalendarGridView.setNumColumns(pVar.f1421e);
            materialCalendarGridView.setAdapter((ListAdapter) qVar);
        } else {
            materialCalendarGridView.a().notifyDataSetChanged();
        }
        materialCalendarGridView.setOnItemClickListener(new r(this, materialCalendarGridView));
    }

    @Override // q0.a0
    public final w0 d(ViewGroup viewGroup) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_month_labeled, viewGroup, false);
        if (!n.C(viewGroup.getContext())) {
            return new s(linearLayout, false);
        }
        linearLayout.setLayoutParams(new j0(-1, this.f1431e));
        return new s(linearLayout, true);
    }
}
