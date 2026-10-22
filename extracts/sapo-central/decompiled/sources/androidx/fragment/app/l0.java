package androidx.fragment.app;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class l0 implements Parcelable {
    public static final Parcelable.Creator<l0> CREATOR = new android.support.v4.os.a(5);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f461a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f462c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f463d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f464e;
    public final String f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f465g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f466h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f467i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Bundle f468j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f469k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f470l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Bundle f471m;

    public l0(r rVar) {
        this.f461a = rVar.getClass().getName();
        this.b = rVar.f504e;
        this.f462c = rVar.f511m;
        this.f463d = rVar.f520v;
        this.f464e = rVar.f521w;
        this.f = rVar.f522x;
        this.f465g = rVar.A;
        this.f466h = rVar.f510l;
        this.f467i = rVar.f524z;
        this.f468j = rVar.f;
        this.f469k = rVar.f523y;
        this.f470l = rVar.K.ordinal();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentState{");
        sb.append(this.f461a);
        sb.append(" (");
        sb.append(this.b);
        sb.append(")}:");
        if (this.f462c) {
            sb.append(" fromLayout");
        }
        int i3 = this.f464e;
        if (i3 != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(i3));
        }
        String str = this.f;
        if (str != null && !str.isEmpty()) {
            sb.append(" tag=");
            sb.append(str);
        }
        if (this.f465g) {
            sb.append(" retainInstance");
        }
        if (this.f466h) {
            sb.append(" removing");
        }
        if (this.f467i) {
            sb.append(" detached");
        }
        if (this.f469k) {
            sb.append(" hidden");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i3) {
        parcel.writeString(this.f461a);
        parcel.writeString(this.b);
        parcel.writeInt(this.f462c ? 1 : 0);
        parcel.writeInt(this.f463d);
        parcel.writeInt(this.f464e);
        parcel.writeString(this.f);
        parcel.writeInt(this.f465g ? 1 : 0);
        parcel.writeInt(this.f466h ? 1 : 0);
        parcel.writeInt(this.f467i ? 1 : 0);
        parcel.writeBundle(this.f468j);
        parcel.writeInt(this.f469k ? 1 : 0);
        parcel.writeBundle(this.f471m);
        parcel.writeInt(this.f470l);
    }

    public l0(Parcel parcel) {
        this.f461a = parcel.readString();
        this.b = parcel.readString();
        this.f462c = parcel.readInt() != 0;
        this.f463d = parcel.readInt();
        this.f464e = parcel.readInt();
        this.f = parcel.readString();
        this.f465g = parcel.readInt() != 0;
        this.f466h = parcel.readInt() != 0;
        this.f467i = parcel.readInt() != 0;
        this.f468j = parcel.readBundle();
        this.f469k = parcel.readInt() != 0;
        this.f471m = parcel.readBundle();
        this.f470l = parcel.readInt();
    }
}
