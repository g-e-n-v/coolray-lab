package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class i0 implements Parcelable {
    public static final Parcelable.Creator<i0> CREATOR = new android.support.v4.os.a(4);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ArrayList f444a;
    public ArrayList b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public b[] f445c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f446d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f447e;
    public ArrayList f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ArrayList f448g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ArrayList f449h;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i3) {
        parcel.writeTypedList(this.f444a);
        parcel.writeStringList(this.b);
        parcel.writeTypedArray(this.f445c, i3);
        parcel.writeInt(this.f446d);
        parcel.writeString(this.f447e);
        parcel.writeStringList(this.f);
        parcel.writeTypedList(this.f448g);
        parcel.writeTypedList(this.f449h);
    }
}
