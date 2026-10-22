package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.os.Parcelable;
import androidx.versionedparcelable.CustomVersionedParcelable;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import w.d;

/* JADX INFO: loaded from: classes.dex */
public class IconCompat extends CustomVersionedParcelable {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final PorterDuff.Mode f291k = PorterDuff.Mode.SRC_IN;
    public Object b;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f299j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f292a = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public byte[] f293c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Parcelable f294d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f295e = 0;
    public int f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ColorStateList f296g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public PorterDuff.Mode f297h = f291k;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f298i = null;

    public final String toString() {
        String str;
        int iA;
        if (this.f292a == -1) {
            return String.valueOf(this.b);
        }
        StringBuilder sb = new StringBuilder("Icon(typ=");
        switch (this.f292a) {
            case 1:
                str = "BITMAP";
                break;
            case 2:
                str = "RESOURCE";
                break;
            case 3:
                str = "DATA";
                break;
            case 4:
                str = "URI";
                break;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                str = "BITMAP_MASKABLE";
                break;
            case MusicClient.TYPE_GESTURE /* 6 */:
                str = "URI_MASKABLE";
                break;
            default:
                str = "UNKNOWN";
                break;
        }
        sb.append(str);
        switch (this.f292a) {
            case 1:
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                sb.append(" size=");
                sb.append(((Bitmap) this.b).getWidth());
                sb.append("x");
                sb.append(((Bitmap) this.b).getHeight());
                break;
            case 2:
                sb.append(" pkg=");
                sb.append(this.f299j);
                sb.append(" id=");
                int i3 = this.f292a;
                if (i3 == -1) {
                    iA = d.a(this.b);
                } else {
                    if (i3 != 2) {
                        throw new IllegalStateException("called getResId() on " + this);
                    }
                    iA = this.f295e;
                }
                sb.append(String.format("0x%08x", Integer.valueOf(iA)));
                break;
            case 3:
                sb.append(" len=");
                sb.append(this.f295e);
                if (this.f != 0) {
                    sb.append(" off=");
                    sb.append(this.f);
                }
                break;
            case 4:
            case MusicClient.TYPE_GESTURE /* 6 */:
                sb.append(" uri=");
                sb.append(this.b);
                break;
        }
        if (this.f296g != null) {
            sb.append(" tint=");
            sb.append(this.f296g);
        }
        if (this.f297h != f291k) {
            sb.append(" mode=");
            sb.append(this.f297h);
        }
        sb.append(")");
        return sb.toString();
    }
}
