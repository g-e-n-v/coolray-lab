package w0;

import android.bluetooth.BluetoothServerSocket;
import android.util.Log;
import com.ex.auto.Politica;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class v1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final v1 f4363a = new v1();
    public static final UUID b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static BluetoothServerSocket f4364c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static volatile boolean f4365d;

    static {
        Object bVar;
        Politica politica = Politica.f1126a;
        String strJ = Politica.j();
        UUID uuid = null;
        if (strJ != null) {
            try {
                bVar = UUID.fromString(strJ);
            } catch (Throwable th) {
                bVar = new x1.b(th);
            }
            uuid = (UUID) (bVar instanceof x1.b ? null : bVar);
        }
        b = uuid;
    }

    public static boolean a(long j3) {
        while (f4365d && j3 > 0) {
            long jMin = Math.min(500L, j3);
            try {
                Thread.sleep(jMin);
                j3 -= jMin;
            } catch (InterruptedException unused) {
                return false;
            }
        }
        return f4365d;
    }

    public final synchronized void b() {
        if (f4365d) {
            return;
        }
        f4365d = true;
        Thread thread = new Thread(new r0(1), "carplay-sdp");
        thread.setDaemon(true);
        thread.start();
        ae aeVar = ae.f3361a;
        ae.b("CarplaySdp", "anúncio SDP de CarPlay iniciado", false);
    }

    public final synchronized void c() {
        if (f4365d) {
            f4365d = false;
            try {
                BluetoothServerSocket bluetoothServerSocket = f4364c;
                if (bluetoothServerSocket != null) {
                    bluetoothServerSocket.close();
                }
            } catch (Throwable unused) {
            }
            f4364c = null;
            Log.i("CarplaySdp", "anúncio SDP de CarPlay parado");
        }
    }
}
