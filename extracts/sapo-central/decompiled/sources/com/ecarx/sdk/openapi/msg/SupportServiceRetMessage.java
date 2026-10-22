package com.ecarx.sdk.openapi.msg;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class SupportServiceRetMessage implements Parcelable {
    public static final Parcelable.Creator<SupportServiceRetMessage> CREATOR = new Parcelable.Creator<SupportServiceRetMessage>() { // from class: com.ecarx.sdk.openapi.msg.SupportServiceRetMessage.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SupportServiceRetMessage createFromParcel(Parcel parcel) {
            return new SupportServiceRetMessage(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SupportServiceRetMessage[] newArray(int i3) {
            return new SupportServiceRetMessage[i3];
        }
    };
    public IBinder mBinder;
    public int mCode;
    public byte[] mData;
    public String mMsg;

    public SupportServiceRetMessage() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "SupportServiceRetMessage{code=" + this.mCode + ", msg=" + this.mMsg + ", binder=" + this.mBinder + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i3) {
        parcel.writeInt(this.mCode);
        parcel.writeString(this.mMsg);
        parcel.writeByteArray(this.mData);
        parcel.writeStrongBinder(this.mBinder);
    }

    public SupportServiceRetMessage(int i3, String str) {
        this.mCode = i3;
        this.mMsg = str;
    }

    public SupportServiceRetMessage(Parcel parcel) {
        this.mCode = parcel.readInt();
        this.mMsg = parcel.readString();
        this.mData = parcel.createByteArray();
        this.mBinder = parcel.readStrongBinder();
    }
}
