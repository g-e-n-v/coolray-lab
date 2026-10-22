package s;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;

/* JADX INFO: loaded from: classes.dex */
public final class f extends h0.b {
    public static final Parcelable.Creator<f> CREATOR = new g1.d(7);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SparseArray f3118c;

    public f(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        int i3 = parcel.readInt();
        int[] iArr = new int[i3];
        parcel.readIntArray(iArr);
        Parcelable[] parcelableArray = parcel.readParcelableArray(classLoader);
        this.f3118c = new SparseArray(i3);
        for (int i4 = 0; i4 < i3; i4++) {
            this.f3118c.append(iArr[i4], parcelableArray[i4]);
        }
    }

    @Override // h0.b, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i3) {
        super.writeToParcel(parcel, i3);
        SparseArray sparseArray = this.f3118c;
        int size = sparseArray != null ? sparseArray.size() : 0;
        parcel.writeInt(size);
        int[] iArr = new int[size];
        Parcelable[] parcelableArr = new Parcelable[size];
        for (int i4 = 0; i4 < size; i4++) {
            iArr[i4] = this.f3118c.keyAt(i4);
            parcelableArr[i4] = (Parcelable) this.f3118c.valueAt(i4);
        }
        parcel.writeIntArray(iArr);
        parcel.writeParcelableArray(parcelableArr, i3);
    }
}
