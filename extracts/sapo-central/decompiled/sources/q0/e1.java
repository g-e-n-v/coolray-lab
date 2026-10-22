package q0;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class e1 implements Parcelable {
    public static final Parcelable.Creator<e1> CREATOR = new android.support.v4.os.a(13);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f2868a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2869c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[] f2870d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2871e;
    public int[] f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ArrayList f2872g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f2873h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f2874i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f2875j;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i3) {
        parcel.writeInt(this.f2868a);
        parcel.writeInt(this.b);
        parcel.writeInt(this.f2869c);
        if (this.f2869c > 0) {
            parcel.writeIntArray(this.f2870d);
        }
        parcel.writeInt(this.f2871e);
        if (this.f2871e > 0) {
            parcel.writeIntArray(this.f);
        }
        parcel.writeInt(this.f2873h ? 1 : 0);
        parcel.writeInt(this.f2874i ? 1 : 0);
        parcel.writeInt(this.f2875j ? 1 : 0);
        parcel.writeList(this.f2872g);
    }
}
