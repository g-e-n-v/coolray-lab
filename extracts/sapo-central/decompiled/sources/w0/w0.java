package w0;

import android.bluetooth.BluetoothDevice;
import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class w0 implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile boolean f4412a;
    public final /* synthetic */ BluetoothDevice b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f4413c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Context f4414d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ h2.l f4415e;

    public w0(BluetoothDevice bluetoothDevice, String str, Context context, h2.l lVar) {
        this.b = bluetoothDevice;
        this.f4413c = str;
        this.f4414d = context;
        this.f4415e = lVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        boolean zB;
        try {
            zB = m.b(iBinder, this.b);
        } catch (Throwable th) {
            Log.w("BtHfpClient", "transact falhou: " + th.getClass().getSimpleName() + ": " + th.getMessage());
            zB = false;
        }
        ae aeVar = ae.f3361a;
        StringBuilder sb = new StringBuilder("connect direto no HFP-Client de ");
        sb.append(this.f4413c);
        sb.append(" → ");
        androidx.activity.result.b.r(sb, zB ? "aceito" : "recusado", "BtHfpClient", false);
        try {
            this.f4414d.unbindService(this);
        } catch (Throwable unused) {
        }
        if (this.f4412a) {
            return;
        }
        this.f4412a = true;
        h2.l lVar = this.f4415e;
        if (lVar != null) {
            lVar.c(Boolean.valueOf(zB));
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        if (this.f4412a) {
            return;
        }
        this.f4412a = true;
        h2.l lVar = this.f4415e;
        if (lVar != null) {
            lVar.c(Boolean.FALSE);
        }
    }
}
