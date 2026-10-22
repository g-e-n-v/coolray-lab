package android.support.v4.os;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new a(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public IResultReceiver f63a;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i3) {
        synchronized (this) {
            try {
                if (this.f63a == null) {
                    this.f63a = new IResultReceiver.Stub() { // from class: android.support.v4.os.ResultReceiver$MyResultReceiver
                        @Override // android.support.v4.os.IResultReceiver
                        public void send(int i4, Bundle bundle) {
                            this.this$0.getClass();
                            this.this$0.getClass();
                        }
                    };
                }
                parcel.writeStrongBinder(this.f63a.asBinder());
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
