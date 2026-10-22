package w0;

import android.bluetooth.BluetoothDevice;
import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Parcel;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class v0 implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f4359a;
    public final /* synthetic */ BluetoothDevice b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f4360c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f4361d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f4362e;
    public final /* synthetic */ Context f;

    public v0(String str, BluetoothDevice bluetoothDevice, int i3, String str2, String str3, Context context) {
        this.f4359a = str;
        this.b = bluetoothDevice;
        this.f4360c = i3;
        this.f4361d = str2;
        this.f4362e = str3;
        this.f = context;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        boolean z2;
        String str = this.f4361d;
        int i3 = this.f4360c;
        if (iBinder == null) {
            z2 = false;
        } else {
            try {
                Parcel parcelObtain = Parcel.obtain();
                i2.g.d(parcelObtain, "obtain(...)");
                Parcel parcelObtain2 = Parcel.obtain();
                i2.g.d(parcelObtain2, "obtain(...)");
                try {
                    parcelObtain.writeInterfaceToken(this.f4359a);
                    parcelObtain.writeInt(1);
                    this.b.writeToParcel(parcelObtain, 0);
                    iBinder.transact(i3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    z2 = parcelObtain2.readInt() != 0;
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            } catch (Throwable th2) {
                StringBuilder sbL = androidx.activity.result.b.l("disconnect ", str, ": ");
                sbL.append(th2.getClass().getSimpleName());
                sbL.append(": ");
                sbL.append(th2.getMessage());
                Log.w("BtHfpClient", sbL.toString());
                z2 = false;
            }
        }
        ae aeVar = ae.f3361a;
        StringBuilder sbL2 = androidx.activity.result.b.l("disconnect ", str, " de ");
        sbL2.append(this.f4362e);
        sbL2.append(" (txn ");
        sbL2.append(i3);
        sbL2.append(") → ");
        androidx.activity.result.b.r(sbL2, z2 ? "aceito" : "recusado", "BtHfpClient", false);
        try {
            this.f.unbindService(this);
        } catch (Throwable unused) {
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
    }
}
