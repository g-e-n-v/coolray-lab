package ecarx.xsf.mediacenter.staterecover;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public interface IStateRecoverApiSvc extends IInterface {
    public static final String DESCRIPTOR = "ecarx.xsf.mediacenter.staterecover.IStateRecoverApiSvc";

    public static class Default implements IStateRecoverApiSvc {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IStateRecoverApiSvc {

        public static class Proxy implements IStateRecoverApiSvc {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IStateRecoverApiSvc.DESCRIPTOR;
            }
        }

        public Stub() {
            attachInterface(this, IStateRecoverApiSvc.DESCRIPTOR);
        }

        public static IStateRecoverApiSvc asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IStateRecoverApiSvc.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IStateRecoverApiSvc)) ? new Proxy(iBinder) : (IStateRecoverApiSvc) iInterfaceQueryLocalInterface;
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
            parcel2.writeString(IStateRecoverApiSvc.DESCRIPTOR);
            return true;
        }
    }
}
