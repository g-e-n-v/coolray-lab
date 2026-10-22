package com.google.android.material.datepicker;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import com.ex.auto.R;
import java.util.Locale;
import q0.a0;
import q0.w0;

/* JADX INFO: loaded from: classes.dex */
public final class z extends a0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final m f1434c;

    public z(m mVar) {
        this.f1434c = mVar;
    }

    @Override // q0.a0
    public final int a() {
        return this.f1434c.T.f1388e;
    }

    @Override // q0.a0
    public final void c(w0 w0Var, int i3) {
        m mVar = this.f1434c;
        int i4 = mVar.T.f1385a.f1420d + i3;
        TextView textView = ((y) w0Var).f1433t;
        String string = textView.getContext().getString(R.string.mtrl_picker_navigate_to_year_description);
        textView.setText(String.format(Locale.getDefault(), "%d", Integer.valueOf(i4)));
        textView.setContentDescription(String.format(string, Integer.valueOf(i4)));
        androidx.fragment.app.f fVar = mVar.W;
        if (x.b().get(1) == i4) {
            Object obj = fVar.f413c;
        } else {
            Object obj2 = fVar.b;
        }
        throw null;
    }

    @Override // q0.a0
    public final w0 d(ViewGroup viewGroup) {
        return new y((TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_year, viewGroup, false));
    }
}
