package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
public final class p implements Comparable, Parcelable {
    public static final Parcelable.Creator<p> CREATOR = new android.support.v4.os.a(8);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Calendar f1418a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1419c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f1420d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f1421e;
    public final int f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f1422g;

    public p(Calendar calendar) {
        calendar.set(5, 1);
        Calendar calendarA = x.a(calendar);
        this.f1418a = calendarA;
        this.f1419c = calendarA.get(2);
        this.f1420d = calendarA.get(1);
        this.f1421e = calendarA.getMaximum(7);
        this.f = calendarA.getActualMaximum(5);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("LLLL, yyyy", Locale.getDefault());
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        this.b = simpleDateFormat.format(calendarA.getTime());
        this.f1422g = calendarA.getTimeInMillis();
    }

    public static p b(int i3, int i4) {
        Calendar calendarC = x.c(null);
        calendarC.set(1, i3);
        calendarC.set(2, i4);
        return new p(calendarC);
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final int compareTo(p pVar) {
        return this.f1418a.compareTo(pVar.f1418a);
    }

    public final int c() {
        Calendar calendar = this.f1418a;
        int firstDayOfWeek = calendar.get(7) - calendar.getFirstDayOfWeek();
        return firstDayOfWeek < 0 ? firstDayOfWeek + this.f1421e : firstDayOfWeek;
    }

    public final int d(p pVar) {
        if (!(this.f1418a instanceof GregorianCalendar)) {
            throw new IllegalArgumentException("Only Gregorian calendars are supported.");
        }
        return (pVar.f1419c - this.f1419c) + ((pVar.f1420d - this.f1420d) * 12);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        return this.f1419c == pVar.f1419c && this.f1420d == pVar.f1420d;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f1419c), Integer.valueOf(this.f1420d)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i3) {
        parcel.writeInt(this.f1420d);
        parcel.writeInt(this.f1419c);
    }
}
