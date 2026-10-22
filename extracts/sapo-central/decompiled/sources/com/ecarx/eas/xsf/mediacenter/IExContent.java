package com.ecarx.eas.xsf.mediacenter;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class IExContent implements Parcelable {
    public static final Parcelable.Creator<IExContent> CREATOR = new Parcelable.Creator<IExContent>() { // from class: com.ecarx.eas.xsf.mediacenter.IExContent.1
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

    public IExContent() {
        this.data = "";
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getData() {
        return this.data;
    }

    public void setData(String str) {
        this.data = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i3) {
        parcel.writeString(this.data);
    }

    public IExContent(Parcel parcel) {
        this.data = parcel.readString();
    }

    public IExContent(String str) {
        this.data = str;
    }
}
