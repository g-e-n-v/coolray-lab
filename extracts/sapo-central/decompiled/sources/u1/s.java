package u1;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public final class s extends h0.b {
    public static final Parcelable.Creator<s> CREATOR = new g1.d(8);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public CharSequence f3306c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f3307d;

    public s(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f3306c = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f3307d = parcel.readInt() == 1;
    }

    public final String toString() {
        return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.f3306c) + "}";
    }

    @Override // h0.b, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i3) {
        super.writeToParcel(parcel, i3);
        TextUtils.writeToParcel(this.f3306c, parcel, i3);
        parcel.writeInt(this.f3307d ? 1 : 0);
    }
}
