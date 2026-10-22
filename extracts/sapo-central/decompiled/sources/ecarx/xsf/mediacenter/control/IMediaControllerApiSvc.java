package ecarx.xsf.mediacenter.control;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public interface IMediaControllerApiSvc extends IInterface {
    public static final String DESCRIPTOR = "ecarx.xsf.mediacenter.control.IMediaControllerApiSvc";

    public static class Default implements IMediaControllerApiSvc {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IMediaControllerApiSvc {

        public static class Proxy implements IMediaControllerApiSvc {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IMediaControllerApiSvc.DESCRIPTOR;
            }
        }

        public Stub() {
            attachInterface(this, IMediaControllerApiSvc.DESCRIPTOR);
        }

        public static IMediaControllerApiSvc asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IMediaControllerApiSvc.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IMediaControllerApiSvc)) ? new Proxy(iBinder) : (IMediaControllerApiSvc) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i3, Parcel parcel, Parcel parcel2, int i4) {
            if (i3 != 1598968902) {
                return super.onTransact(i3, parcel, parcel2, i4);
            }
            parcel2.writeString(IMediaControllerApiSvc.DESCRIPTOR);
            return true;
        }
    }
}
