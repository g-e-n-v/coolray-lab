package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new android.support.v4.os.a(2);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int[] f387a;
    public final ArrayList b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int[] f388c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int[] f389d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f390e;
    public final String f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f391g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f392h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final CharSequence f393i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f394j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final CharSequence f395k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final ArrayList f396l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final ArrayList f397m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final boolean f398n;

    public b(a aVar) {
        int size = aVar.f368a.size();
        this.f387a = new int[size * 5];
        if (!aVar.f372g) {
            throw new IllegalStateException("Not on back stack");
        }
        this.b = new ArrayList(size);
        this.f388c = new int[size];
        this.f389d = new int[size];
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            o0 o0Var = (o0) aVar.f368a.get(i4);
            int i5 = i3 + 1;
            this.f387a[i3] = o0Var.f483a;
            ArrayList arrayList = this.b;
            r rVar = o0Var.b;
            arrayList.add(rVar != null ? rVar.f504e : null);
            int[] iArr = this.f387a;
            iArr[i5] = o0Var.f484c;
            iArr[i3 + 2] = o0Var.f485d;
            int i6 = i3 + 4;
            iArr[i3 + 3] = o0Var.f486e;
            i3 += 5;
            iArr[i6] = o0Var.f;
            this.f388c[i4] = o0Var.f487g.ordinal();
            this.f389d[i4] = o0Var.f488h.ordinal();
        }
        this.f390e = aVar.f;
        this.f = aVar.f373h;
        this.f391g = aVar.f383r;
        this.f392h = aVar.f374i;
        this.f393i = aVar.f375j;
        this.f394j = aVar.f376k;
        this.f395k = aVar.f377l;
        this.f396l = aVar.f378m;
        this.f397m = aVar.f379n;
        this.f398n = aVar.f380o;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i3) {
        parcel.writeIntArray(this.f387a);
        parcel.writeStringList(this.b);
        parcel.writeIntArray(this.f388c);
        parcel.writeIntArray(this.f389d);
        parcel.writeInt(this.f390e);
        parcel.writeString(this.f);
        parcel.writeInt(this.f391g);
        parcel.writeInt(this.f392h);
        TextUtils.writeToParcel(this.f393i, parcel, 0);
        parcel.writeInt(this.f394j);
        TextUtils.writeToParcel(this.f395k, parcel, 0);
        parcel.writeStringList(this.f396l);
        parcel.writeStringList(this.f397m);
        parcel.writeInt(this.f398n ? 1 : 0);
    }

    public b(Parcel parcel) {
        this.f387a = parcel.createIntArray();
        this.b = parcel.createStringArrayList();
        this.f388c = parcel.createIntArray();
        this.f389d = parcel.createIntArray();
        this.f390e = parcel.readInt();
        this.f = parcel.readString();
        this.f391g = parcel.readInt();
        this.f392h = parcel.readInt();
        Parcelable.Creator creator = TextUtils.CHAR_SEQUENCE_CREATOR;
        this.f393i = (CharSequence) creator.createFromParcel(parcel);
        this.f394j = parcel.readInt();
        this.f395k = (CharSequence) creator.createFromParcel(parcel);
        this.f396l = parcel.createStringArrayList();
        this.f397m = parcel.createStringArrayList();
        this.f398n = parcel.readInt() != 0;
    }
}
