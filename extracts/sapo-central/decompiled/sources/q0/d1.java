package q0;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class d1 implements Parcelable {
    public static final Parcelable.Creator<d1> CREATOR = new android.support.v4.os.a(12);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f2857a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[] f2858c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2859d;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return "FullSpanItem{mPosition=" + this.f2857a + ", mGapDir=" + this.b + ", mHasUnwantedGapAfter=" + this.f2859d + ", mGapPerSpan=" + Arrays.toString(this.f2858c) + '}';
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i3) {
        parcel.writeInt(this.f2857a);
        parcel.writeInt(this.b);
        parcel.writeInt(this.f2859d ? 1 : 0);
        int[] iArr = this.f2858c;
        if (iArr == null || iArr.length <= 0) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(iArr.length);
            parcel.writeIntArray(this.f2858c);
        }
    }
}
