package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new android.support.v4.os.a(6);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p f1385a;
    public final p b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final p f1386c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final d f1387d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f1388e;
    public final int f;

    public b(p pVar, p pVar2, p pVar3, d dVar) {
        this.f1385a = pVar;
        this.b = pVar2;
        this.f1386c = pVar3;
        this.f1387d = dVar;
        if (pVar.compareTo(pVar3) > 0) {
            throw new IllegalArgumentException("start Month cannot be after current Month");
        }
        if (pVar3.compareTo(pVar2) > 0) {
            throw new IllegalArgumentException("current Month cannot be after end Month");
        }
        this.f = pVar.d(pVar2) + 1;
        this.f1388e = (pVar2.f1420d - pVar.f1420d) + 1;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f1385a.equals(bVar.f1385a) && this.b.equals(bVar.b) && this.f1386c.equals(bVar.f1386c) && this.f1387d.equals(bVar.f1387d);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f1385a, this.b, this.f1386c, this.f1387d});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i3) {
        parcel.writeParcelable(this.f1385a, 0);
        parcel.writeParcelable(this.b, 0);
        parcel.writeParcelable(this.f1386c, 0);
        parcel.writeParcelable(this.f1387d, 0);
    }
}
