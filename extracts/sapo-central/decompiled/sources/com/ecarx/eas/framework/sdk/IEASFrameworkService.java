package com.ecarx.eas.framework.sdk;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.ecarx.sdk.openapi.msg.EASFrameworkMessage;
import com.ecarx.sdk.openapi.msg.EASFrameworkRetMessage;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface IEASFrameworkService extends IInterface {
    public static final String DESCRIPTOR = "com.ecarx.eas.framework.sdk.IEASFrameworkService";

    public static class Default implements IEASFrameworkService {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.ecarx.eas.framework.sdk.IEASFrameworkService
        public EASFrameworkRetMessage asyncBinderCall(EASFrameworkMessage eASFrameworkMessage, IBinder iBinder) {
            return null;
        }

        @Override // com.ecarx.eas.framework.sdk.IEASFrameworkService
        public EASFrameworkRetMessage asyncCall(EASFrameworkMessage eASFrameworkMessage, IBinder iBinder) {
            return null;
        }

        @Override // com.ecarx.eas.framework.sdk.IEASFrameworkService
        public EASFrameworkRetMessage call(EASFrameworkMessage eASFrameworkMessage) {
            return null;
        }

        @Override // com.ecarx.eas.framework.sdk.IEASFrameworkService
        public List<String> getAvailableEASServices() {
            return null;
        }

        @Override // com.ecarx.eas.framework.sdk.IEASFrameworkService
        public List<String> getAvailableServices() {
            return null;
        }

        @Override // com.ecarx.eas.framework.sdk.IEASFrameworkService
        public IBinder getService(int i3, int i4, String str, String str2) {
            return null;
        }

        @Override // com.ecarx.eas.framework.sdk.IEASFrameworkService
        public void init(String[] strArr) {
        }

        @Override // com.ecarx.eas.framework.sdk.IEASFrameworkService
        public boolean registerNotifyListener(IBinder iBinder) {
            return false;
        }

        @Override // com.ecarx.eas.framework.sdk.IEASFrameworkService
        public void reserved3() {
        }
    }

    public static abstract class Stub extends Binder implements IEASFrameworkService {
        static final int TRANSACTION_asyncBinderCall = 6;
        static final int TRANSACTION_asyncCall = 5;
        static final int TRANSACTION_call = 4;
        static final int TRANSACTION_getAvailableEASServices = 9;
        static final int TRANSACTION_getAvailableServices = 7;
        static final int TRANSACTION_getService = 8;
        static final int TRANSACTION_init = 1;
        static final int TRANSACTION_registerNotifyListener = 2;
        static final int TRANSACTION_reserved3 = 3;

        public static class Proxy implements IEASFrameworkService {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.ecarx.eas.framework.sdk.IEASFrameworkService
            public EASFrameworkRetMessage asyncBinderCall(EASFrameworkMessage eASFrameworkMessage, IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IEASFrameworkService.DESCRIPTOR);
                    _Parcel.writeTypedObject(parcelObtain, eASFrameworkMessage, 0);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return (EASFrameworkRetMessage) _Parcel.readTypedObject(parcelObtain2, EASFrameworkRetMessage.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.ecarx.eas.framework.sdk.IEASFrameworkService
            public EASFrameworkRetMessage asyncCall(EASFrameworkMessage eASFrameworkMessage, IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IEASFrameworkService.DESCRIPTOR);
                    _Parcel.writeTypedObject(parcelObtain, eASFrameworkMessage, 0);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return (EASFrameworkRetMessage) _Parcel.readTypedObject(parcelObtain2, EASFrameworkRetMessage.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.ecarx.eas.framework.sdk.IEASFrameworkService
            public EASFrameworkRetMessage call(EASFrameworkMessage eASFrameworkMessage) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IEASFrameworkService.DESCRIPTOR);
                    _Parcel.writeTypedObject(parcelObtain, eASFrameworkMessage, 0);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return (EASFrameworkRetMessage) _Parcel.readTypedObject(parcelObtain2, EASFrameworkRetMessage.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.ecarx.eas.framework.sdk.IEASFrameworkService
            public List<String> getAvailableEASServices() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IEASFrameworkService.DESCRIPTOR);
                    this.mRemote.transact(Stub.TRANSACTION_getAvailableEASServices, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.ecarx.eas.framework.sdk.IEASFrameworkService
            public List<String> getAvailableServices() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IEASFrameworkService.DESCRIPTOR);
                    this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return IEASFrameworkService.DESCRIPTOR;
            }

            @Override // com.ecarx.eas.framework.sdk.IEASFrameworkService
            public IBinder getService(int i3, int i4, String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IEASFrameworkService.DESCRIPTOR);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(Stub.TRANSACTION_getService, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readStrongBinder();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.ecarx.eas.framework.sdk.IEASFrameworkService
            public void init(String[] strArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IEASFrameworkService.DESCRIPTOR);
                    parcelObtain.writeStringArray(strArr);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.ecarx.eas.framework.sdk.IEASFrameworkService
            public boolean registerNotifyListener(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IEASFrameworkService.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.ecarx.eas.framework.sdk.IEASFrameworkService
            public void reserved3() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IEASFrameworkService.DESCRIPTOR);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, IEASFrameworkService.DESCRIPTOR);
        }

        public static IEASFrameworkService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IEASFrameworkService.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IEASFrameworkService)) ? new Proxy(iBinder) : (IEASFrameworkService) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i3, Parcel parcel, Parcel parcel2, int i4) {
            if (i3 >= 1 && i3 <= 16777215) {
                parcel.enforceInterface(IEASFrameworkService.DESCRIPTOR);
            }
            if (i3 == 1598968902) {
                parcel2.writeString(IEASFrameworkService.DESCRIPTOR);
                return true;
            }
            switch (i3) {
                case 1:
                    init(parcel.createStringArray());
                    parcel2.writeNoException();
                    return true;
                case 2:
                    boolean zRegisterNotifyListener = registerNotifyListener(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    parcel2.writeInt(zRegisterNotifyListener ? 1 : 0);
                    return true;
                case 3:
                    reserved3();
                    parcel2.writeNoException();
                    return true;
                case 4:
                    EASFrameworkRetMessage eASFrameworkRetMessageCall = call((EASFrameworkMessage) _Parcel.readTypedObject(parcel, EASFrameworkMessage.CREATOR));
                    parcel2.writeNoException();
                    _Parcel.writeTypedObject(parcel2, eASFrameworkRetMessageCall, 1);
                    return true;
                case 5:
                    EASFrameworkRetMessage eASFrameworkRetMessageAsyncCall = asyncCall((EASFrameworkMessage) _Parcel.readTypedObject(parcel, EASFrameworkMessage.CREATOR), parcel.readStrongBinder());
                    parcel2.writeNoException();
                    _Parcel.writeTypedObject(parcel2, eASFrameworkRetMessageAsyncCall, 1);
                    return true;
                case 6:
                    EASFrameworkRetMessage eASFrameworkRetMessageAsyncBinderCall = asyncBinderCall((EASFrameworkMessage) _Parcel.readTypedObject(parcel, EASFrameworkMessage.CREATOR), parcel.readStrongBinder());
                    parcel2.writeNoException();
                    _Parcel.writeTypedObject(parcel2, eASFrameworkRetMessageAsyncBinderCall, 1);
                    return true;
                case 7:
                    List<String> availableServices = getAvailableServices();
                    parcel2.writeNoException();
                    parcel2.writeStringList(availableServices);
                    return true;
                case TRANSACTION_getService /* 8 */:
                    IBinder service = getService(parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(service);
                    return true;
                case TRANSACTION_getAvailableEASServices /* 9 */:
                    List<String> availableEASServices = getAvailableEASServices();
                    parcel2.writeNoException();
                    parcel2.writeStringList(availableEASServices);
                    return true;
                default:
                    return super.onTransact(i3, parcel, parcel2, i4);
            }
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

    EASFrameworkRetMessage asyncBinderCall(EASFrameworkMessage eASFrameworkMessage, IBinder iBinder);

    EASFrameworkRetMessage asyncCall(EASFrameworkMessage eASFrameworkMessage, IBinder iBinder);

    EASFrameworkRetMessage call(EASFrameworkMessage eASFrameworkMessage);

    List<String> getAvailableEASServices();

    List<String> getAvailableServices();

    IBinder getService(int i3, int i4, String str, String str2);

    void init(String[] strArr);

    boolean registerNotifyListener(IBinder iBinder);

    void reserved3();
}
