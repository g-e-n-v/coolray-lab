package ecarx.xsf.mediacenter;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class IMediaLists implements Parcelable {
    public static final Parcelable.Creator<IMediaLists> CREATOR = new Parcelable.Creator<IMediaLists>() { // from class: ecarx.xsf.mediacenter.IMediaLists.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IMediaLists createFromParcel(Parcel parcel) {
            return new IMediaLists(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IMediaLists[] newArray(int i3) {
            return new IMediaLists[i3];
        }
    };

    public IMediaLists() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i3) {
    }

    public IMediaLists(Parcel parcel) {
    }
}
