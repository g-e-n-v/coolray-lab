package i;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class v2 extends h0.b {
    public static final Parcelable.Creator<v2> CREATOR = new g1.d(3);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2187c;

    public v2(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f2187c = ((Boolean) parcel.readValue(null)).booleanValue();
    }

    public final String toString() {
        return "SearchView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " isIconified=" + this.f2187c + "}";
    }

    @Override // h0.b, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i3) {
        super.writeToParcel(parcel, i3);
        parcel.writeValue(Boolean.valueOf(this.f2187c));
    }
}
