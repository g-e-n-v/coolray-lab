package h1;

import android.os.Parcel;
import android.os.Parcelable;
import g1.d;

/* JADX INFO: loaded from: classes.dex */
public final class b extends h0.b {
    public static final Parcelable.Creator<b> CREATOR = new d(2);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f1952c;

    public b(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        if (classLoader == null) {
            b.class.getClassLoader();
        }
        this.f1952c = parcel.readInt() == 1;
    }

    @Override // h0.b, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i3) {
        super.writeToParcel(parcel, i3);
        parcel.writeInt(this.f1952c ? 1 : 0);
    }
}
