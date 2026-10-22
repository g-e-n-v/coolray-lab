package v0;

import android.os.Parcel;
import android.util.SparseIntArray;

/* JADX INFO: loaded from: classes.dex */
public final class b extends a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final SparseIntArray f3327d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Parcel f3328e;
    public final int f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f3329g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f3330h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f3331i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f3332j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f3333k;

    public b(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "", new l.b(), new l.b(), new l.b());
    }

    @Override // v0.a
    public final b a() {
        Parcel parcel = this.f3328e;
        int iDataPosition = parcel.dataPosition();
        int i3 = this.f3332j;
        if (i3 == this.f) {
            i3 = this.f3329g;
        }
        return new b(parcel, iDataPosition, i3, this.f3330h + "  ", this.f3325a, this.b, this.f3326c);
    }

    @Override // v0.a
    public final boolean e(int i3) {
        while (this.f3332j < this.f3329g) {
            int i4 = this.f3333k;
            if (i4 == i3) {
                return true;
            }
            if (String.valueOf(i4).compareTo(String.valueOf(i3)) > 0) {
                return false;
            }
            int i5 = this.f3332j;
            Parcel parcel = this.f3328e;
            parcel.setDataPosition(i5);
            int i6 = parcel.readInt();
            this.f3333k = parcel.readInt();
            this.f3332j += i6;
        }
        return this.f3333k == i3;
    }

    @Override // v0.a
    public final void h(int i3) {
        int i4 = this.f3331i;
        SparseIntArray sparseIntArray = this.f3327d;
        Parcel parcel = this.f3328e;
        if (i4 >= 0) {
            int i5 = sparseIntArray.get(i4);
            int iDataPosition = parcel.dataPosition();
            parcel.setDataPosition(i5);
            parcel.writeInt(iDataPosition - i5);
            parcel.setDataPosition(iDataPosition);
        }
        this.f3331i = i3;
        sparseIntArray.put(i3, parcel.dataPosition());
        parcel.writeInt(0);
        parcel.writeInt(i3);
    }

    public b(Parcel parcel, int i3, int i4, String str, l.b bVar, l.b bVar2, l.b bVar3) {
        super(bVar, bVar2, bVar3);
        this.f3327d = new SparseIntArray();
        this.f3331i = -1;
        this.f3333k = -1;
        this.f3328e = parcel;
        this.f = i3;
        this.f3329g = i4;
        this.f3332j = i3;
        this.f3330h = str;
    }
}
