package i;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class r0 extends View.BaseSavedState {
    public static final Parcelable.Creator<r0> CREATOR = new android.support.v4.os.a(10);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f2142a;

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i3) {
        super.writeToParcel(parcel, i3);
        parcel.writeByte(this.f2142a ? (byte) 1 : (byte) 0);
    }
}
