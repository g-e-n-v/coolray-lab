package i;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class j3 extends h0.b {
    public static final Parcelable.Creator<j3> CREATOR = new g1.d(4);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2068c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2069d;

    public j3(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f2068c = parcel.readInt();
        this.f2069d = parcel.readInt() != 0;
    }

    @Override // h0.b, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i3) {
        super.writeToParcel(parcel, i3);
        parcel.writeInt(this.f2068c);
        parcel.writeInt(this.f2069d ? 1 : 0);
    }
}
