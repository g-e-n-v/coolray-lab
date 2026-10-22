package ecarx.xsf.mediacenter;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class IExContent implements Parcelable {
    public static final Parcelable.Creator<IExContent> CREATOR = new Parcelable.Creator<IExContent>() { // from class: ecarx.xsf.mediacenter.IExContent.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IExContent createFromParcel(Parcel parcel) {
            return new IExContent(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IExContent[] newArray(int i3) {
            return new IExContent[i3];
        }
    };
    private String data;
    private List<PendingIntent> pendingIntents;

    public IExContent() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getData() {
        return this.data;
    }

    public List<PendingIntent> getPendingIntents() {
        return this.pendingIntents;
    }

    public void setData(String str) {
        this.data = str;
    }

    public void setPendingIntents(List<PendingIntent> list) {
        this.pendingIntents = list;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i3) {
        parcel.writeString(this.data);
        parcel.writeTypedList(this.pendingIntents);
    }

    public IExContent(Parcel parcel) {
        this.data = parcel.readString();
        this.pendingIntents = parcel.createTypedArrayList(PendingIntent.CREATOR);
    }
}
