package com.ecarx.eas.xsf.mediacenter;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public interface IExCallback extends IInterface {
    public static final String DESCRIPTOR = "com.ecarx.eas.xsf.mediacenter.IExCallback";

    public static class Default implements IExCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.ecarx.eas.xsf.mediacenter.IExCallback
        public String onAction(int i3, String str, String str2, IBinder iBinder) {
            return null;
        }

        @Override // com.ecarx.eas.xsf.mediacenter.IExCallback
        public IExContent onExAction(int i3, String str, String str2, IExContent iExContent, IBinder iBinder) {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IExCallback {
        static final int TRANSACTION_onAction = 1;
        static final int TRANSACTION_onExAction = 2;

        public static class Proxy implements IExCallback {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IExCallback.DESCRIPTOR;
            }

            @Override // com.ecarx.eas.xsf.mediacenter.IExCallback
            public String onAction(int i3, String str, String str2, IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IExCallback.DESCRIPTOR);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.ecarx.eas.xsf.mediacenter.IExCallback
            public IExContent onExAction(int i3, String str, String str2, IExContent iExContent, IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IExCallback.DESCRIPTOR);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    _Parcel.writeTypedObject(parcelObtain, iExContent, 0);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return (IExContent) _Parcel.readTypedObject(parcelObtain2, IExContent.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, IExCallback.DESCRIPTOR);
        }

        public static IExCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IExCallback.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IExCallback)) ? new Proxy(iBinder) : (IExCallback) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i3, Parcel parcel, Parcel parcel2, int i4) {
            if (i3 >= 1 && i3 <= 16777215) {
                parcel.enforceInterface(IExCallback.DESCRIPTOR);
            }
            if (i3 == 1598968902) {
                parcel2.writeString(IExCallback.DESCRIPTOR);
                return true;
            }
            if (i3 == 1) {
                String strOnAction = onAction(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readStrongBinder());
                parcel2.writeNoException();
                parcel2.writeString(strOnAction);
                return true;
            }
            if (i3 != 2) {
                return super.onTransact(i3, parcel, parcel2, i4);
            }
            IExContent iExContentOnExAction = onExAction(parcel.readInt(), parcel.readString(), parcel.readString(), (IExContent) _Parcel.readTypedObject(parcel, IExContent.CREATOR), parcel.readStrongBinder());
            parcel2.writeNoException();
            _Parcel.writeTypedObject(parcel2, iExContentOnExAction, 1);
            return true;
        }
    }

    public static class _Parcel {
        /* JADX INFO: Access modifiers changed from: private */
        public static <T> T readTypedObject(Parcel parcel, Parcelable.Creator<T> creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static <T extends Parcelable> void writeTypedObject(Parcel parcel, T t2, int i3) {
            if (t2 == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                t2.writeToParcel(parcel, i3);
            }
        }
    }

    String onAction(int i3, String str, String str2, IBinder iBinder);

    IExContent onExAction(int i3, String str, String str2, IExContent iExContent, IBinder iBinder);
}
