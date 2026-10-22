package g1;

import android.os.Parcel;
import android.os.Parcelable;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import ecarx.xsf.mediacenter.session.PlaybackState;
import i.j3;
import i.v2;
import q0.q0;
import u1.s;

/* JADX INFO: loaded from: classes.dex */
public final class d implements Parcelable.ClassLoaderCreator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1804a;

    public /* synthetic */ d(int i3) {
        this.f1804a = i3;
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public final Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
        switch (this.f1804a) {
            case 0:
                return new e(parcel, classLoader);
            case 1:
                if (parcel.readParcelable(classLoader) == null) {
                    return h0.b.b;
                }
                throw new IllegalStateException("superState must be null");
            case 2:
                return new h1.b(parcel, classLoader);
            case 3:
                return new v2(parcel, classLoader);
            case 4:
                return new j3(parcel, classLoader);
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                return new n1.a(parcel, classLoader);
            case MusicClient.TYPE_GESTURE /* 6 */:
                return new q0(parcel, classLoader);
            case PlaybackState.STATE_ERROR /* 7 */:
                return new s.f(parcel, classLoader);
            default:
                return new s(parcel, classLoader);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i3) {
        switch (this.f1804a) {
            case 0:
                return new e[i3];
            case 1:
                return new h0.b[i3];
            case 2:
                return new h1.b[i3];
            case 3:
                return new v2[i3];
            case 4:
                return new j3[i3];
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                return new n1.a[i3];
            case MusicClient.TYPE_GESTURE /* 6 */:
                return new q0[i3];
            case PlaybackState.STATE_ERROR /* 7 */:
                return new s.f[i3];
            default:
                return new s[i3];
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.f1804a) {
            case 0:
                return new e(parcel, null);
            case 1:
                if (parcel.readParcelable(null) == null) {
                    return h0.b.b;
                }
                throw new IllegalStateException("superState must be null");
            case 2:
                return new h1.b(parcel, null);
            case 3:
                return new v2(parcel, null);
            case 4:
                return new j3(parcel, null);
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                return new n1.a(parcel, null);
            case MusicClient.TYPE_GESTURE /* 6 */:
                return new q0(parcel, null);
            case PlaybackState.STATE_ERROR /* 7 */:
                return new s.f(parcel, null);
            default:
                return new s(parcel, null);
        }
    }
}
