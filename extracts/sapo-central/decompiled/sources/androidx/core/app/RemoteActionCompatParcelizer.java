package androidx.core.app;

import android.app.PendingIntent;
import android.os.Parcel;
import android.text.TextUtils;
import androidx.core.graphics.drawable.IconCompat;

/* JADX INFO: loaded from: classes.dex */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(v0.a aVar) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        v0.c cVarG = remoteActionCompat.f287a;
        boolean z2 = true;
        if (aVar.e(1)) {
            cVarG = aVar.g();
        }
        remoteActionCompat.f287a = (IconCompat) cVarG;
        CharSequence charSequence = remoteActionCompat.b;
        if (aVar.e(2)) {
            charSequence = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(((v0.b) aVar).f3328e);
        }
        remoteActionCompat.b = charSequence;
        CharSequence charSequence2 = remoteActionCompat.f288c;
        if (aVar.e(3)) {
            charSequence2 = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(((v0.b) aVar).f3328e);
        }
        remoteActionCompat.f288c = charSequence2;
        remoteActionCompat.f289d = (PendingIntent) aVar.f(remoteActionCompat.f289d, 4);
        boolean z3 = remoteActionCompat.f290e;
        if (aVar.e(5)) {
            z3 = ((v0.b) aVar).f3328e.readInt() != 0;
        }
        remoteActionCompat.f290e = z3;
        boolean z4 = remoteActionCompat.f;
        if (!aVar.e(6)) {
            z2 = z4;
        } else if (((v0.b) aVar).f3328e.readInt() == 0) {
            z2 = false;
        }
        remoteActionCompat.f = z2;
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, v0.a aVar) {
        aVar.getClass();
        IconCompat iconCompat = remoteActionCompat.f287a;
        aVar.h(1);
        aVar.i(iconCompat);
        CharSequence charSequence = remoteActionCompat.b;
        aVar.h(2);
        Parcel parcel = ((v0.b) aVar).f3328e;
        TextUtils.writeToParcel(charSequence, parcel, 0);
        CharSequence charSequence2 = remoteActionCompat.f288c;
        aVar.h(3);
        TextUtils.writeToParcel(charSequence2, parcel, 0);
        PendingIntent pendingIntent = remoteActionCompat.f289d;
        aVar.h(4);
        parcel.writeParcelable(pendingIntent, 0);
        boolean z2 = remoteActionCompat.f290e;
        aVar.h(5);
        parcel.writeInt(z2 ? 1 : 0);
        boolean z3 = remoteActionCompat.f;
        aVar.h(6);
        parcel.writeInt(z3 ? 1 : 0);
    }
}
