package com.ecarx.eas.framework.sdk;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.ecarx.sdk.openapi.msg.EASFrameworkMessage;
import com.ecarx.sdk.openapi.msg.SupportServiceRetMessage;

/* JADX INFO: loaded from: classes.dex */
public interface IEASFrameworkSuppportService extends IInterface {
    public static final String DESCRIPTOR = "com.ecarx.eas.framework.sdk.IEASFrameworkSuppportService";

    public static class Default implements IEASFrameworkSuppportService {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.ecarx.eas.framework.sdk.IEASFrameworkSuppportService
        public SupportServiceRetMessage asyncBinderCall(EASFrameworkMessage eASFrameworkMessage, IBinder iBinder, int i3, int i4) {
            return null;
        }

        @Override // com.ecarx.eas.framework.sdk.IEASFrameworkSuppportService
        public SupportServiceRetMessage asyncCall(EASFrameworkMessage eASFrameworkMessage, IBinder iBinder, int i3, int i4) {
            return null;
        }

        @Override // com.ecarx.eas.framework.sdk.IEASFrameworkSuppportService
        public SupportServiceRetMessage call(EASFrameworkMessage eASFrameworkMessage, int i3, int i4) {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IEASFrameworkSuppportService {
        static final int TRANSACTION_asyncBinderCall = 3;
        static final int TRANSACTION_asyncCall = 2;
        static final int TRANSACTION_call = 1;

        public static class Proxy implements IEASFrameworkSuppportService {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.ecarx.eas.framework.sdk.IEASFrameworkSuppportService
            public SupportServiceRetMessage asyncBinderCall(EASFrameworkMessage eASFrameworkMessage, IBinder iBinder, int i3, int i4) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IEASFrameworkSuppportService.DESCRIPTOR);
                    _Parcel.writeTypedObject(parcelObtain, eASFrameworkMessage, 0);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return (SupportServiceRetMessage) _Parcel.readTypedObject(parcelObtain2, SupportServiceRetMessage.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.ecarx.eas.framework.sdk.IEASFrameworkSuppportService
            public SupportServiceRetMessage asyncCall(EASFrameworkMessage eASFrameworkMessage, IBinder iBinder, int i3, int i4) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IEASFrameworkSuppportService.DESCRIPTOR);
                    _Parcel.writeTypedObject(parcelObtain, eASFrameworkMessage, 0);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return (SupportServiceRetMessage) _Parcel.readTypedObject(parcelObtain2, SupportServiceRetMessage.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.ecarx.eas.framework.sdk.IEASFrameworkSuppportService
            public SupportServiceRetMessage call(EASFrameworkMessage eASFrameworkMessage, int i3, int i4) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IEASFrameworkSuppportService.DESCRIPTOR);
                    _Parcel.writeTypedObject(parcelObtain, eASFrameworkMessage, 0);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return (SupportServiceRetMessage) _Parcel.readTypedObject(parcelObtain2, SupportServiceRetMessage.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return IEASFrameworkSuppportService.DESCRIPTOR;
            }
        }

        public Stub() {
            attachInterface(this, IEASFrameworkSuppportService.DESCRIPTOR);
        }

        public static IEASFrameworkSuppportService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IEASFrameworkSuppportService.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IEASFrameworkSuppportService)) ? new Proxy(iBinder) : (IEASFrameworkSuppportService) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i3, Parcel parcel, Parcel parcel2, int i4) {
            SupportServiceRetMessage supportServiceRetMessageCall;
            if (i3 >= 1 && i3 <= 16777215) {
                parcel.enforceInterface(IEASFrameworkSuppportService.DESCRIPTOR);
            }
            if (i3 == 1598968902) {
                parcel2.writeString(IEASFrameworkSuppportService.DESCRIPTOR);
                return true;
            }
            if (i3 == 1) {
                supportServiceRetMessageCall = call((EASFrameworkMessage) _Parcel.readTypedObject(parcel, EASFrameworkMessage.CREATOR), parcel.readInt(), parcel.readInt());
            } else if (i3 == 2) {
                supportServiceRetMessageCall = asyncCall((EASFrameworkMessage) _Parcel.readTypedObject(parcel, EASFrameworkMessage.CREATOR), parcel.readStrongBinder(), parcel.readInt(), parcel.readInt());
            } else {
                if (i3 != 3) {
                    return super.onTransact(i3, parcel, parcel2, i4);
                }
                supportServiceRetMessageCall = asyncBinderCall((EASFrameworkMessage) _Parcel.readTypedObject(parcel, EASFrameworkMessage.CREATOR), parcel.readStrongBinder(), parcel.readInt(), parcel.readInt());
            }
            parcel2.writeNoException();
            _Parcel.writeTypedObject(parcel2, supportServiceRetMessageCall, 1);
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

    SupportServiceRetMessage asyncBinderCall(EASFrameworkMessage eASFrameworkMessage, IBinder iBinder, int i3, int i4);

    SupportServiceRetMessage asyncCall(EASFrameworkMessage eASFrameworkMessage, IBinder iBinder, int i3, int i4);

    SupportServiceRetMessage call(EASFrameworkMessage eASFrameworkMessage, int i3, int i4);
}
