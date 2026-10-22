package n1;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class a extends h0.b {
    public static final Parcelable.Creator<a> CREATOR = new g1.d(5);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2483c;

    public a(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f2483c = parcel.readInt() == 1;
    }

    @Override // h0.b, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i3) {
        super.writeToParcel(parcel, i3);
        parcel.writeInt(this.f2483c ? 1 : 0);
    }
}
