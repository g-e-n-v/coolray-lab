package h0;

import android.os.Parcel;
import android.os.Parcelable;
import g1.d;

/* JADX INFO: loaded from: classes.dex */
public abstract class b implements Parcelable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Parcelable f1951a;
    public static final a b = new a();
    public static final Parcelable.Creator<b> CREATOR = new d(1);

    public b() {
        this.f1951a = null;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i3) {
        parcel.writeParcelable(this.f1951a, i3);
    }

    public b(Parcelable parcelable) {
        if (parcelable != null) {
            this.f1951a = parcelable == b ? null : parcelable;
            return;
        }
        throw new IllegalArgumentException("superState must not be null");
    }

    public b(Parcel parcel, ClassLoader classLoader) {
        Parcelable parcelable = parcel.readParcelable(classLoader);
        this.f1951a = parcelable == null ? b : parcelable;
    }
}
