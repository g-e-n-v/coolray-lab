package q0;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class v implements Parcelable {
    public static final Parcelable.Creator<v> CREATOR = new android.support.v4.os.a(11);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f3026a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f3027c;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i3) {
        parcel.writeInt(this.f3026a);
        parcel.writeInt(this.b);
        parcel.writeInt(this.f3027c ? 1 : 0);
    }
}
