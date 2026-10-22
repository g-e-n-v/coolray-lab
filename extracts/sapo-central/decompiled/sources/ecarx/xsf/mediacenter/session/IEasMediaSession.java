package ecarx.xsf.mediacenter.session;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public interface IEasMediaSession extends IInterface {
    public static final String DESCRIPTOR = "ecarx.xsf.mediacenter.session.IEasMediaSession";

    public static class Default implements IEasMediaSession {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // ecarx.xsf.mediacenter.session.IEasMediaSession
        public ISessionToken register(int i3, int i4, String str, IEasSessionCallback iEasSessionCallback) {
            return null;
        }

        @Override // ecarx.xsf.mediacenter.session.IEasMediaSession
        public void setPlaybackInfo(ISessionToken iSessionToken, PlaybackInfo playbackInfo) {
        }

        @Override // ecarx.xsf.mediacenter.session.IEasMediaSession
        public void setPlaybackState(ISessionToken iSessionToken, PlaybackState playbackState) {
        }
    }

    public static abstract class Stub extends Binder implements IEasMediaSession {
        static final int TRANSACTION_register = 1;
        static final int TRANSACTION_setPlaybackInfo = 2;
        static final int TRANSACTION_setPlaybackState = 3;

        public static class Proxy implements IEasMediaSession {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IEasMediaSession.DESCRIPTOR;
            }

            @Override // ecarx.xsf.mediacenter.session.IEasMediaSession
            public ISessionToken register(int i3, int i4, String str, IEasSessionCallback iEasSessionCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IEasMediaSession.DESCRIPTOR);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeString(str);
                    parcelObtain.writeStrongInterface(iEasSessionCallback);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return ISessionToken.Stub.asInterface(parcelObtain2.readStrongBinder());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // ecarx.xsf.mediacenter.session.IEasMediaSession
            public void setPlaybackInfo(ISessionToken iSessionToken, PlaybackInfo playbackInfo) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IEasMediaSession.DESCRIPTOR);
                    parcelObtain.writeStrongInterface(iSessionToken);
                    _Parcel.writeTypedObject(parcelObtain, playbackInfo, 0);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // ecarx.xsf.mediacenter.session.IEasMediaSession
            public void setPlaybackState(ISessionToken iSessionToken, PlaybackState playbackState) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IEasMediaSession.DESCRIPTOR);
                    parcelObtain.writeStrongInterface(iSessionToken);
                    _Parcel.writeTypedObject(parcelObtain, playbackState, 0);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, IEasMediaSession.DESCRIPTOR);
        }

        public static IEasMediaSession asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IEasMediaSession.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IEasMediaSession)) ? new Proxy(iBinder) : (IEasMediaSession) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i3, Parcel parcel, Parcel parcel2, int i4) {
            if (i3 >= 1 && i3 <= 16777215) {
                parcel.enforceInterface(IEasMediaSession.DESCRIPTOR);
            }
            if (i3 == 1598968902) {
                parcel2.writeString(IEasMediaSession.DESCRIPTOR);
                return true;
            }
            if (i3 == 1) {
                ISessionToken iSessionTokenRegister = register(parcel.readInt(), parcel.readInt(), parcel.readString(), IEasSessionCallback.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                parcel2.writeStrongInterface(iSessionTokenRegister);
                return true;
            }
            if (i3 == 2) {
                setPlaybackInfo(ISessionToken.Stub.asInterface(parcel.readStrongBinder()), (PlaybackInfo) _Parcel.readTypedObject(parcel, PlaybackInfo.CREATOR));
                parcel2.writeNoException();
                return true;
            }
            if (i3 != 3) {
                return super.onTransact(i3, parcel, parcel2, i4);
            }
            setPlaybackState(ISessionToken.Stub.asInterface(parcel.readStrongBinder()), (PlaybackState) _Parcel.readTypedObject(parcel, PlaybackState.CREATOR));
            parcel2.writeNoException();
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

    ISessionToken register(int i3, int i4, String str, IEasSessionCallback iEasSessionCallback);

    void setPlaybackInfo(ISessionToken iSessionToken, PlaybackInfo playbackInfo);

    void setPlaybackState(ISessionToken iSessionToken, PlaybackState playbackState);
}
