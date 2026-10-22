package android.support.v4.os;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.e0;
import androidx.fragment.app.i0;
import androidx.fragment.app.l0;
import androidx.versionedparcelable.ParcelImpl;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.google.android.material.datepicker.d;
import com.google.android.material.datepicker.p;
import ecarx.xsf.mediacenter.session.PlaybackState;
import f0.k;
import i.r0;
import java.util.ArrayList;
import q0.d1;
import q0.e1;
import q0.v;

/* JADX INFO: loaded from: classes.dex */
public final class a implements Parcelable.Creator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f62a;

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.f62a) {
            case 0:
                b bVar = new b();
                bVar.f63a = IResultReceiver.Stub.asInterface(parcel.readStrongBinder());
                return bVar;
            case 1:
                return new androidx.activity.result.a(parcel);
            case 2:
                return new androidx.fragment.app.b(parcel);
            case 3:
                e0 e0Var = new e0();
                e0Var.f410a = parcel.readString();
                e0Var.b = parcel.readInt();
                return e0Var;
            case 4:
                i0 i0Var = new i0();
                i0Var.f447e = null;
                i0Var.f = new ArrayList();
                i0Var.f448g = new ArrayList();
                i0Var.f444a = parcel.createTypedArrayList(l0.CREATOR);
                i0Var.b = parcel.createStringArrayList();
                i0Var.f445c = (androidx.fragment.app.b[]) parcel.createTypedArray(androidx.fragment.app.b.CREATOR);
                i0Var.f446d = parcel.readInt();
                i0Var.f447e = parcel.readString();
                i0Var.f = parcel.createStringArrayList();
                i0Var.f448g = parcel.createTypedArrayList(Bundle.CREATOR);
                i0Var.f449h = parcel.createTypedArrayList(e0.CREATOR);
                return i0Var;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                return new l0(parcel);
            case MusicClient.TYPE_GESTURE /* 6 */:
                return new com.google.android.material.datepicker.b((p) parcel.readParcelable(p.class.getClassLoader()), (p) parcel.readParcelable(p.class.getClassLoader()), (p) parcel.readParcelable(p.class.getClassLoader()), (d) parcel.readParcelable(d.class.getClassLoader()));
            case PlaybackState.STATE_ERROR /* 7 */:
                return new d(parcel.readLong());
            case 8:
                return p.b(parcel.readInt(), parcel.readInt());
            case 9:
                k kVar = new k(parcel);
                kVar.f1738a = parcel.readInt();
                return kVar;
            case 10:
                r0 r0Var = new r0(parcel);
                r0Var.f2142a = parcel.readByte() != 0;
                return r0Var;
            case 11:
                v vVar = new v();
                vVar.f3026a = parcel.readInt();
                vVar.b = parcel.readInt();
                vVar.f3027c = parcel.readInt() == 1;
                return vVar;
            case 12:
                d1 d1Var = new d1();
                d1Var.f2857a = parcel.readInt();
                d1Var.b = parcel.readInt();
                d1Var.f2859d = parcel.readInt() == 1;
                int i3 = parcel.readInt();
                if (i3 > 0) {
                    int[] iArr = new int[i3];
                    d1Var.f2858c = iArr;
                    parcel.readIntArray(iArr);
                }
                return d1Var;
            case 13:
                e1 e1Var = new e1();
                e1Var.f2868a = parcel.readInt();
                e1Var.b = parcel.readInt();
                int i4 = parcel.readInt();
                e1Var.f2869c = i4;
                if (i4 > 0) {
                    int[] iArr2 = new int[i4];
                    e1Var.f2870d = iArr2;
                    parcel.readIntArray(iArr2);
                }
                int i5 = parcel.readInt();
                e1Var.f2871e = i5;
                if (i5 > 0) {
                    int[] iArr3 = new int[i5];
                    e1Var.f = iArr3;
                    parcel.readIntArray(iArr3);
                }
                e1Var.f2873h = parcel.readInt() == 1;
                e1Var.f2874i = parcel.readInt() == 1;
                e1Var.f2875j = parcel.readInt() == 1;
                e1Var.f2872g = parcel.readArrayList(d1.class.getClassLoader());
                return e1Var;
            default:
                return new ParcelImpl(parcel);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i3) {
        switch (this.f62a) {
            case 0:
                return new b[i3];
            case 1:
                return new androidx.activity.result.a[i3];
            case 2:
                return new androidx.fragment.app.b[i3];
            case 3:
                return new e0[i3];
            case 4:
                return new i0[i3];
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                return new l0[i3];
            case MusicClient.TYPE_GESTURE /* 6 */:
                return new com.google.android.material.datepicker.b[i3];
            case PlaybackState.STATE_ERROR /* 7 */:
                return new d[i3];
            case 8:
                return new p[i3];
            case 9:
                return new k[i3];
            case 10:
                return new r0[i3];
            case 11:
                return new v[i3];
            case 12:
                return new d1[i3];
            case 13:
                return new e1[i3];
            default:
                return new ParcelImpl[i3];
        }
    }
}
