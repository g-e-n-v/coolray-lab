package w0;

import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.MainActivity;
import ecarx.xsf.mediacenter.session.PlaybackState;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class tc extends i2.e implements h2.a {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ int f4278i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ tc(int i3, Object obj, Class cls, String str, String str2, int i4) {
        super(i3, obj, cls, str, str2);
        this.f4278i = i4;
    }

    @Override // h2.a
    public final Object a() {
        int i3 = this.f4278i;
        Object obj = this.b;
        switch (i3) {
            case 0:
                int i4 = MainActivity.f1002z1;
                ((MainActivity) obj).v1();
                break;
            case 1:
                int i5 = MainActivity.f1002z1;
                ((MainActivity) obj).v1();
                break;
            case 2:
                int i6 = MainActivity.f1002z1;
                ((MainActivity) obj).y1();
                break;
            case 3:
                int i7 = MainActivity.f1002z1;
                ((MainActivity) obj).v1();
                break;
            case 4:
                int i8 = MainActivity.f1002z1;
                ((MainActivity) obj).y1();
                break;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                int i9 = MainActivity.f1002z1;
                ((MainActivity) obj).y1();
                break;
            case MusicClient.TYPE_GESTURE /* 6 */:
                int i10 = MainActivity.f1002z1;
                ((MainActivity) obj).y1();
                break;
            case PlaybackState.STATE_ERROR /* 7 */:
                int i11 = MainActivity.f1002z1;
                ((MainActivity) obj).v1();
                break;
            case 8:
                int i12 = MainActivity.f1002z1;
                ((MainActivity) obj).v1();
                break;
            default:
                int i13 = MainActivity.f1002z1;
                ((MainActivity) obj).v1();
                break;
        }
        return x1.e.f4647c;
    }
}
