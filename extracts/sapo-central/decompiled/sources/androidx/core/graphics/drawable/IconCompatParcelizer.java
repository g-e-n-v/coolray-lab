package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Parcel;
import android.os.Parcelable;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import java.nio.charset.Charset;
import v0.a;
import v0.b;

/* JADX INFO: loaded from: classes.dex */
public class IconCompatParcelizer {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static IconCompat read(a aVar) {
        IconCompat iconCompat = new IconCompat();
        int i3 = iconCompat.f292a;
        if (aVar.e(1)) {
            i3 = ((b) aVar).f3328e.readInt();
        }
        iconCompat.f292a = i3;
        byte[] bArr = iconCompat.f293c;
        if (aVar.e(2)) {
            Parcel parcel = ((b) aVar).f3328e;
            int i4 = parcel.readInt();
            if (i4 < 0) {
                bArr = null;
            } else {
                byte[] bArr2 = new byte[i4];
                parcel.readByteArray(bArr2);
                bArr = bArr2;
            }
        }
        iconCompat.f293c = bArr;
        iconCompat.f294d = aVar.f(iconCompat.f294d, 3);
        int i5 = iconCompat.f295e;
        if (aVar.e(4)) {
            i5 = ((b) aVar).f3328e.readInt();
        }
        iconCompat.f295e = i5;
        int i6 = iconCompat.f;
        if (aVar.e(5)) {
            i6 = ((b) aVar).f3328e.readInt();
        }
        iconCompat.f = i6;
        iconCompat.f296g = (ColorStateList) aVar.f(iconCompat.f296g, 6);
        String string = iconCompat.f298i;
        if (aVar.e(7)) {
            string = ((b) aVar).f3328e.readString();
        }
        iconCompat.f298i = string;
        String string2 = iconCompat.f299j;
        if (aVar.e(8)) {
            string2 = ((b) aVar).f3328e.readString();
        }
        iconCompat.f299j = string2;
        iconCompat.f297h = PorterDuff.Mode.valueOf(iconCompat.f298i);
        switch (iconCompat.f292a) {
            case -1:
                Parcelable parcelable = iconCompat.f294d;
                if (parcelable == null) {
                    throw new IllegalArgumentException("Invalid icon");
                }
                iconCompat.b = parcelable;
                return iconCompat;
            case 0:
            default:
                return iconCompat;
            case 1:
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                Parcelable parcelable2 = iconCompat.f294d;
                if (parcelable2 != null) {
                    iconCompat.b = parcelable2;
                    return iconCompat;
                }
                byte[] bArr3 = iconCompat.f293c;
                iconCompat.b = bArr3;
                iconCompat.f292a = 3;
                iconCompat.f295e = 0;
                iconCompat.f = bArr3.length;
                return iconCompat;
            case 2:
            case 4:
            case MusicClient.TYPE_GESTURE /* 6 */:
                String str = new String(iconCompat.f293c, Charset.forName("UTF-16"));
                iconCompat.b = str;
                if (iconCompat.f292a == 2 && iconCompat.f299j == null) {
                    iconCompat.f299j = str.split(":", -1)[0];
                }
                return iconCompat;
            case 3:
                iconCompat.b = iconCompat.f293c;
                return iconCompat;
        }
    }

    public static void write(IconCompat iconCompat, a aVar) {
        aVar.getClass();
        iconCompat.f298i = iconCompat.f297h.name();
        switch (iconCompat.f292a) {
            case -1:
                iconCompat.f294d = (Parcelable) iconCompat.b;
                break;
            case 1:
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                iconCompat.f294d = (Parcelable) iconCompat.b;
                break;
            case 2:
                iconCompat.f293c = ((String) iconCompat.b).getBytes(Charset.forName("UTF-16"));
                break;
            case 3:
                iconCompat.f293c = (byte[]) iconCompat.b;
                break;
            case 4:
            case MusicClient.TYPE_GESTURE /* 6 */:
                iconCompat.f293c = iconCompat.b.toString().getBytes(Charset.forName("UTF-16"));
                break;
        }
        int i3 = iconCompat.f292a;
        if (-1 != i3) {
            aVar.h(1);
            ((b) aVar).f3328e.writeInt(i3);
        }
        byte[] bArr = iconCompat.f293c;
        if (bArr != null) {
            aVar.h(2);
            Parcel parcel = ((b) aVar).f3328e;
            parcel.writeInt(bArr.length);
            parcel.writeByteArray(bArr);
        }
        Parcelable parcelable = iconCompat.f294d;
        if (parcelable != null) {
            aVar.h(3);
            ((b) aVar).f3328e.writeParcelable(parcelable, 0);
        }
        int i4 = iconCompat.f295e;
        if (i4 != 0) {
            aVar.h(4);
            ((b) aVar).f3328e.writeInt(i4);
        }
        int i5 = iconCompat.f;
        if (i5 != 0) {
            aVar.h(5);
            ((b) aVar).f3328e.writeInt(i5);
        }
        ColorStateList colorStateList = iconCompat.f296g;
        if (colorStateList != null) {
            aVar.h(6);
            ((b) aVar).f3328e.writeParcelable(colorStateList, 0);
        }
        String str = iconCompat.f298i;
        if (str != null) {
            aVar.h(7);
            ((b) aVar).f3328e.writeString(str);
        }
        String str2 = iconCompat.f299j;
        if (str2 != null) {
            aVar.h(8);
            ((b) aVar).f3328e.writeString(str2);
        }
    }
}
