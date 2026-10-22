package g1;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.AbsSavedState;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

/* JADX INFO: loaded from: classes.dex */
public final class e extends h0.b {
    public static final Parcelable.Creator<e> CREATOR = new d(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1805c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f1806d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f1807e;
    public final boolean f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f1808g;

    public e(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f1805c = parcel.readInt();
        this.f1806d = parcel.readInt();
        this.f1807e = parcel.readInt() == 1;
        this.f = parcel.readInt() == 1;
        this.f1808g = parcel.readInt() == 1;
    }

    @Override // h0.b, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i3) {
        super.writeToParcel(parcel, i3);
        parcel.writeInt(this.f1805c);
        parcel.writeInt(this.f1806d);
        parcel.writeInt(this.f1807e ? 1 : 0);
        parcel.writeInt(this.f ? 1 : 0);
        parcel.writeInt(this.f1808g ? 1 : 0);
    }

    public e(BottomSheetBehavior bottomSheetBehavior) {
        super(AbsSavedState.EMPTY_STATE);
        this.f1805c = bottomSheetBehavior.f1345y;
        this.f1806d = bottomSheetBehavior.f1325d;
        this.f1807e = bottomSheetBehavior.b;
        this.f = bottomSheetBehavior.f1342v;
        this.f1808g = bottomSheetBehavior.f1343w;
    }
}
