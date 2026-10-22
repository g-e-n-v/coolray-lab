package com.google.android.material.datepicker;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.ex.auto.R;
import java.util.Calendar;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class e extends BaseAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Calendar f1394a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1395c;

    public e() {
        Calendar calendarC = x.c(null);
        this.f1394a = calendarC;
        this.b = calendarC.getMaximum(7);
        this.f1395c = calendarC.getFirstDayOfWeek();
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.b;
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i3) {
        int i4 = this.b;
        if (i3 >= i4) {
            return null;
        }
        int i5 = i3 + this.f1395c;
        if (i5 > i4) {
            i5 -= i4;
        }
        return Integer.valueOf(i5);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i3) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public final View getView(int i3, View view, ViewGroup viewGroup) {
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_day_of_week, viewGroup, false);
        }
        int i4 = i3 + this.f1395c;
        int i5 = this.b;
        if (i4 > i5) {
            i4 -= i5;
        }
        Calendar calendar = this.f1394a;
        calendar.set(7, i4);
        textView.setText(calendar.getDisplayName(7, 4, Locale.getDefault()));
        textView.setContentDescription(String.format(viewGroup.getContext().getString(R.string.mtrl_picker_day_of_week_column_header), calendar.getDisplayName(7, 2, Locale.getDefault())));
        return textView;
    }
}
