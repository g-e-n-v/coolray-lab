package q0;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class q0 extends h0.b {
    public static final Parcelable.Creator<q0> CREATOR = new g1.d(6);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Parcelable f2984c;

    public q0(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f2984c = parcel.readParcelable(classLoader == null ? i0.class.getClassLoader() : classLoader);
    }

    @Override // h0.b, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i3) {
        super.writeToParcel(parcel, i3);
        parcel.writeParcelable(this.f2984c, 0);
    }
}
