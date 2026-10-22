package ecarx.xsf.mediacenter.session;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import ecarx.xsf.mediacenter.ISearchMusicCallback;

/* JADX INFO: loaded from: classes.dex */
public interface IEasSessionCallback extends IInterface {
    public static final String DESCRIPTOR = "ecarx.xsf.mediacenter.session.IEasSessionCallback";

    public static class Default implements IEasSessionCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // ecarx.xsf.mediacenter.session.IEasSessionCallback
        public void onDownload(String str, String str2, boolean z2) {
        }

        @Override // ecarx.xsf.mediacenter.session.IEasSessionCallback
        public void onFastForward() {
        }

        @Override // ecarx.xsf.mediacenter.session.IEasSessionCallback
        public void onFavorite(String str, String str2, boolean z2) {
        }

        @Override // ecarx.xsf.mediacenter.session.IEasSessionCallback
        public void onLoopModeChanged(int i3) {
        }

        @Override // ecarx.xsf.mediacenter.session.IEasSessionCallback
        public void onMediaEffectChange(int i3) {
        }

        @Override // ecarx.xsf.mediacenter.session.IEasSessionCallback
        public void onMediaQualityChange(int i3) {
        }

        @Override // ecarx.xsf.mediacenter.session.IEasSessionCallback
        public void onMediaSourceTypeChanged(int i3) {
        }

        @Override // ecarx.xsf.mediacenter.session.IEasSessionCallback
        public void onMediaSourceTypeChangedWithZone(int i3, String str, int i4) {
        }

        @Override // ecarx.xsf.mediacenter.session.IEasSessionCallback
        public void onNext() {
        }

        @Override // ecarx.xsf.mediacenter.session.IEasSessionCallback
        public void onPause() {
        }

        @Override // ecarx.xsf.mediacenter.session.IEasSessionCallback
        public void onPlay() {
        }

        @Override // ecarx.xsf.mediacenter.session.IEasSessionCallback
        public void onPrevious() {
        }

        @Override // ecarx.xsf.mediacenter.session.IEasSessionCallback
        public void onRadioModeChanged(int i3) {
        }

        @Override // ecarx.xsf.mediacenter.session.IEasSessionCallback
        public void onRewind() {
        }

        @Override // ecarx.xsf.mediacenter.session.IEasSessionCallback
        public void onSearchMusic(String str, String str2, String str3, int i3, boolean z2, boolean z3, ISearchMusicCallback iSearchMusicCallback) {
        }

        @Override // ecarx.xsf.mediacenter.session.IEasSessionCallback
        public void onSeekTo(long j3) {
        }

        @Override // ecarx.xsf.mediacenter.session.IEasSessionCallback
        public void onSelect(String str, String str2, boolean z2) {
        }

        @Override // ecarx.xsf.mediacenter.session.IEasSessionCallback
        public void onSelectFrom(String str, String str2, boolean z2, String str3) {
        }

        @Override // ecarx.xsf.mediacenter.session.IEasSessionCallback
        public void onStop() {
        }

        @Override // ecarx.xsf.mediacenter.session.IEasSessionCallback
        public void operationType(int i3) {
        }
    }

    public static abstract class Stub extends Binder implements IEasSessionCallback {
        static final int TRANSACTION_onDownload = 1;
        static final int TRANSACTION_onFastForward = 2;
        static final int TRANSACTION_onFavorite = 3;
        static final int TRANSACTION_onLoopModeChanged = 4;
        static final int TRANSACTION_onMediaEffectChange = 18;
        static final int TRANSACTION_onMediaQualityChange = 17;
        static final int TRANSACTION_onMediaSourceTypeChanged = 5;
        static final int TRANSACTION_onMediaSourceTypeChangedWithZone = 19;
        static final int TRANSACTION_onNext = 6;
        static final int TRANSACTION_onPause = 7;
        static final int TRANSACTION_onPlay = 8;
        static final int TRANSACTION_onPrevious = 9;
        static final int TRANSACTION_onRadioModeChanged = 10;
        static final int TRANSACTION_onRewind = 11;
        static final int TRANSACTION_onSearchMusic = 20;
        static final int TRANSACTION_onSeekTo = 12;
        static final int TRANSACTION_onSelect = 13;
        static final int TRANSACTION_onSelectFrom = 16;
        static final int TRANSACTION_onStop = 14;
        static final int TRANSACTION_operationType = 15;

        public static class Proxy implements IEasSessionCallback {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IEasSessionCallback.DESCRIPTOR;
            }

            @Override // ecarx.xsf.mediacenter.session.IEasSessionCallback
            public void onDownload(String str, String str2, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IEasSessionCallback.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // ecarx.xsf.mediacenter.session.IEasSessionCallback
            public void onFastForward() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IEasSessionCallback.DESCRIPTOR);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // ecarx.xsf.mediacenter.session.IEasSessionCallback
            public void onFavorite(String str, String str2, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IEasSessionCallback.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // ecarx.xsf.mediacenter.session.IEasSessionCallback
            public void onLoopModeChanged(int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IEasSessionCallback.DESCRIPTOR);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // ecarx.xsf.mediacenter.session.IEasSessionCallback
            public void onMediaEffectChange(int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IEasSessionCallback.DESCRIPTOR);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(Stub.TRANSACTION_onMediaEffectChange, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // ecarx.xsf.mediacenter.session.IEasSessionCallback
            public void onMediaQualityChange(int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IEasSessionCallback.DESCRIPTOR);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(Stub.TRANSACTION_onMediaQualityChange, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // ecarx.xsf.mediacenter.session.IEasSessionCallback
            public void onMediaSourceTypeChanged(int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IEasSessionCallback.DESCRIPTOR);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // ecarx.xsf.mediacenter.session.IEasSessionCallback
            public void onMediaSourceTypeChangedWithZone(int i3, String str, int i4) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IEasSessionCallback.DESCRIPTOR);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i4);
                    this.mRemote.transact(Stub.TRANSACTION_onMediaSourceTypeChangedWithZone, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // ecarx.xsf.mediacenter.session.IEasSessionCallback
            public void onNext() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IEasSessionCallback.DESCRIPTOR);
                    this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // ecarx.xsf.mediacenter.session.IEasSessionCallback
            public void onPause() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IEasSessionCallback.DESCRIPTOR);
                    this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // ecarx.xsf.mediacenter.session.IEasSessionCallback
            public void onPlay() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IEasSessionCallback.DESCRIPTOR);
                    this.mRemote.transact(Stub.TRANSACTION_onPlay, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // ecarx.xsf.mediacenter.session.IEasSessionCallback
            public void onPrevious() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IEasSessionCallback.DESCRIPTOR);
                    this.mRemote.transact(Stub.TRANSACTION_onPrevious, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // ecarx.xsf.mediacenter.session.IEasSessionCallback
            public void onRadioModeChanged(int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IEasSessionCallback.DESCRIPTOR);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(Stub.TRANSACTION_onRadioModeChanged, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // ecarx.xsf.mediacenter.session.IEasSessionCallback
            public void onRewind() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IEasSessionCallback.DESCRIPTOR);
                    this.mRemote.transact(Stub.TRANSACTION_onRewind, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // ecarx.xsf.mediacenter.session.IEasSessionCallback
            public void onSearchMusic(String str, String str2, String str3, int i3, boolean z2, boolean z3, ISearchMusicCallback iSearchMusicCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IEasSessionCallback.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeInt(z3 ? 1 : 0);
                    parcelObtain.writeStrongInterface(iSearchMusicCallback);
                    this.mRemote.transact(Stub.TRANSACTION_onSearchMusic, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // ecarx.xsf.mediacenter.session.IEasSessionCallback
            public void onSeekTo(long j3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IEasSessionCallback.DESCRIPTOR);
                    parcelObtain.writeLong(j3);
                    this.mRemote.transact(Stub.TRANSACTION_onSeekTo, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // ecarx.xsf.mediacenter.session.IEasSessionCallback
            public void onSelect(String str, String str2, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IEasSessionCallback.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(Stub.TRANSACTION_onSelect, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // ecarx.xsf.mediacenter.session.IEasSessionCallback
            public void onSelectFrom(String str, String str2, boolean z2, String str3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IEasSessionCallback.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeString(str3);
                    this.mRemote.transact(Stub.TRANSACTION_onSelectFrom, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // ecarx.xsf.mediacenter.session.IEasSessionCallback
            public void onStop() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IEasSessionCallback.DESCRIPTOR);
                    this.mRemote.transact(Stub.TRANSACTION_onStop, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // ecarx.xsf.mediacenter.session.IEasSessionCallback
            public void operationType(int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IEasSessionCallback.DESCRIPTOR);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(Stub.TRANSACTION_operationType, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, IEasSessionCallback.DESCRIPTOR);
        }

        public static IEasSessionCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IEasSessionCallback.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IEasSessionCallback)) ? new Proxy(iBinder) : (IEasSessionCallback) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i3, Parcel parcel, Parcel parcel2, int i4) {
            if (i3 >= 1 && i3 <= 16777215) {
                parcel.enforceInterface(IEasSessionCallback.DESCRIPTOR);
            }
            if (i3 == 1598968902) {
                parcel2.writeString(IEasSessionCallback.DESCRIPTOR);
                return true;
            }
            switch (i3) {
                case 1:
                    onDownload(parcel.readString(), parcel.readString(), parcel.readInt() != 0);
                    break;
                case 2:
                    onFastForward();
                    break;
                case 3:
                    onFavorite(parcel.readString(), parcel.readString(), parcel.readInt() != 0);
                    break;
                case 4:
                    onLoopModeChanged(parcel.readInt());
                    break;
                case 5:
                    onMediaSourceTypeChanged(parcel.readInt());
                    break;
                case 6:
                    onNext();
                    break;
                case 7:
                    onPause();
                    break;
                case TRANSACTION_onPlay /* 8 */:
                    onPlay();
                    break;
                case TRANSACTION_onPrevious /* 9 */:
                    onPrevious();
                    break;
                case TRANSACTION_onRadioModeChanged /* 10 */:
                    onRadioModeChanged(parcel.readInt());
                    break;
                case TRANSACTION_onRewind /* 11 */:
                    onRewind();
                    break;
                case TRANSACTION_onSeekTo /* 12 */:
                    onSeekTo(parcel.readLong());
                    break;
                case TRANSACTION_onSelect /* 13 */:
                    onSelect(parcel.readString(), parcel.readString(), parcel.readInt() != 0);
                    break;
                case TRANSACTION_onStop /* 14 */:
                    onStop();
                    break;
                case TRANSACTION_operationType /* 15 */:
                    operationType(parcel.readInt());
                    break;
                case TRANSACTION_onSelectFrom /* 16 */:
                    onSelectFrom(parcel.readString(), parcel.readString(), parcel.readInt() != 0, parcel.readString());
                    break;
                case TRANSACTION_onMediaQualityChange /* 17 */:
                    onMediaQualityChange(parcel.readInt());
                    break;
                case TRANSACTION_onMediaEffectChange /* 18 */:
                    onMediaEffectChange(parcel.readInt());
                    break;
                case TRANSACTION_onMediaSourceTypeChangedWithZone /* 19 */:
                    onMediaSourceTypeChangedWithZone(parcel.readInt(), parcel.readString(), parcel.readInt());
                    break;
                case TRANSACTION_onSearchMusic /* 20 */:
                    onSearchMusic(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt() != 0, parcel.readInt() != 0, ISearchMusicCallback.Stub.asInterface(parcel.readStrongBinder()));
                    break;
                default:
                    return super.onTransact(i3, parcel, parcel2, i4);
            }
            parcel2.writeNoException();
            return true;
        }
    }

    void onDownload(String str, String str2, boolean z2);

    void onFastForward();

    void onFavorite(String str, String str2, boolean z2);

    void onLoopModeChanged(int i3);

    void onMediaEffectChange(int i3);

    void onMediaQualityChange(int i3);

    void onMediaSourceTypeChanged(int i3);

    void onMediaSourceTypeChangedWithZone(int i3, String str, int i4);

    void onNext();

    void onPause();

    void onPlay();

    void onPrevious();

    void onRadioModeChanged(int i3);

    void onRewind();

    void onSearchMusic(String str, String str2, String str3, int i3, boolean z2, boolean z3, ISearchMusicCallback iSearchMusicCallback);

    void onSeekTo(long j3);

    void onSelect(String str, String str2, boolean z2);

    void onSelectFrom(String str, String str2, boolean z2, String str3);

    void onStop();

    void operationType(int i3);
}
