package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.icu.text.DateFormat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import c0.a0;
import c0.p0;
import com.ex.auto.R;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class q extends BaseAdapter {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f1423d = x.c(null).getMaximum(4);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p f1424a;
    public androidx.fragment.app.f b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final b f1425c;

    public q(p pVar, b bVar) {
        this.f1424a = pVar;
        this.f1425c = bVar;
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Long getItem(int i3) {
        p pVar = this.f1424a;
        if (i3 < pVar.c() || i3 > b()) {
            return null;
        }
        int iC = (i3 - pVar.c()) + 1;
        Calendar calendarA = x.a(pVar.f1418a);
        calendarA.set(5, iC);
        return Long.valueOf(calendarA.getTimeInMillis());
    }

    public final int b() {
        p pVar = this.f1424a;
        return (pVar.c() + pVar.f) - 1;
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        p pVar = this.f1424a;
        return pVar.c() + pVar.f;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i3) {
        return i3 / this.f1424a.f1421e;
    }

    @Override // android.widget.Adapter
    public final View getView(int i3, View view, ViewGroup viewGroup) {
        Context context = viewGroup.getContext();
        if (this.b == null) {
            this.b = new androidx.fragment.app.f(context);
        }
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_day, viewGroup, false);
        }
        p pVar = this.f1424a;
        int iC = i3 - pVar.c();
        if (iC < 0 || iC >= pVar.f) {
            textView.setVisibility(8);
            textView.setEnabled(false);
        } else {
            int i4 = iC + 1;
            textView.setTag(pVar);
            textView.setText(String.valueOf(i4));
            Calendar calendarA = x.a(pVar.f1418a);
            calendarA.set(5, i4);
            long timeInMillis = calendarA.getTimeInMillis();
            int i5 = pVar.f1420d;
            Calendar calendarB = x.b();
            calendarB.set(5, 1);
            Calendar calendarA2 = x.a(calendarB);
            calendarA2.get(2);
            int i6 = calendarA2.get(1);
            calendarA2.getMaximum(7);
            calendarA2.getActualMaximum(5);
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("LLLL, yyyy", Locale.getDefault());
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            simpleDateFormat.format(calendarA2.getTime());
            calendarA2.getTimeInMillis();
            if (i5 == i6) {
                DateFormat instanceForSkeleton = DateFormat.getInstanceForSkeleton("MMMEd", Locale.getDefault());
                instanceForSkeleton.setTimeZone(android.icu.util.TimeZone.getTimeZone("UTC"));
                textView.setContentDescription(instanceForSkeleton.format(new Date(timeInMillis)));
            } else {
                DateFormat instanceForSkeleton2 = DateFormat.getInstanceForSkeleton("yMMMEd", Locale.getDefault());
                instanceForSkeleton2.setTimeZone(android.icu.util.TimeZone.getTimeZone("UTC"));
                textView.setContentDescription(instanceForSkeleton2.format(new Date(timeInMillis)));
            }
            textView.setVisibility(0);
            textView.setEnabled(true);
        }
        Long item = getItem(i3);
        if (item == null) {
            return textView;
        }
        if (item.longValue() >= this.f1425c.f1387d.f1393a) {
            textView.setEnabled(true);
            throw null;
        }
        textView.setEnabled(false);
        c cVar = (c) this.b.f414d;
        cVar.getClass();
        s1.g gVar = new s1.g();
        s1.g gVar2 = new s1.g();
        s1.k kVar = (s1.k) cVar.f;
        gVar.setShapeAppearanceModel(kVar);
        gVar2.setShapeAppearanceModel(kVar);
        gVar.i((ColorStateList) cVar.f1391d);
        float f = cVar.f1389a;
        ColorStateList colorStateList = (ColorStateList) cVar.f1392e;
        gVar.f3142a.f3134j = f;
        gVar.invalidateSelf();
        s1.f fVar = gVar.f3142a;
        if (fVar.f3129d != colorStateList) {
            fVar.f3129d = colorStateList;
            gVar.onStateChange(gVar.getState());
        }
        ColorStateList colorStateList2 = (ColorStateList) cVar.f1390c;
        textView.setTextColor(colorStateList2);
        RippleDrawable rippleDrawable = new RippleDrawable(colorStateList2.withAlpha(30), gVar, gVar2);
        Rect rect = (Rect) cVar.b;
        InsetDrawable insetDrawable = new InsetDrawable((Drawable) rippleDrawable, rect.left, rect.top, rect.right, rect.bottom);
        WeakHashMap weakHashMap = p0.f727a;
        a0.q(textView, insetDrawable);
        return textView;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public final boolean hasStableIds() {
        return true;
    }
}
