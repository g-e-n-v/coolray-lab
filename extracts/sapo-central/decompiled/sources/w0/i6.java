package w0;

import android.os.SystemClock;
import android.util.Log;
import com.ex.auto.PhoneSyncService;
import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class i6 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3709a;
    public final /* synthetic */ Socket b;

    public /* synthetic */ i6(Socket socket, int i3) {
        this.f3709a = i3;
        this.b = socket;
    }

    /* JADX INFO: Removed unreachable split cross block B:50:0x0106 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3709a) {
            case 0:
                Socket socket = this.b;
                try {
                    if (m.f3866i != null) {
                        socket.close();
                    } else {
                        try {
                            socket.setTcpNoDelay(true);
                            socket.setSoTimeout(10000);
                            DataInputStream dataInputStream = new DataInputStream(new BufferedInputStream(socket.getInputStream()));
                            byte[] bArr = new byte[4];
                            dataInputStream.readFully(bArr);
                            Charset charset = o2.a.b;
                            if (new String(bArr, charset).equals("ESC1")) {
                                byte[] bArr2 = new byte[32];
                                dataInputStream.readFully(bArr2);
                                String string = o2.k.E0(new String(bArr2, charset)).toString();
                                String str = m.f;
                                if (str == null || SystemClock.elapsedRealtime() > m.f3864g || string.length() <= 0 || !string.equals(str)) {
                                    Log.w("ExSapoCast", "token inválido/expirado");
                                    socket.close();
                                } else if (m.o(socket)) {
                                    m.f = null;
                                    OutputStream outputStream = socket.getOutputStream();
                                    i2.g.d(outputStream, "getOutputStream(...)");
                                    m6 m6Var = new m6(socket, dataInputStream, outputStream);
                                    m.f3866i = m6Var;
                                    Thread thread = new Thread(new k6(m6Var), "exsapocast-read");
                                    thread.setDaemon(true);
                                    thread.start();
                                    m.s();
                                    Log.i("ExSapoCast", "sessão iniciada com " + socket.getRemoteSocketAddress() + " (display=" + m.f3865h + ')');
                                } else {
                                    Log.w("ExSapoCast", "IP não vizinho: " + socket.getRemoteSocketAddress());
                                    socket.close();
                                }
                            } else {
                                Log.w("ExSapoCast", "magic inválido");
                                socket.close();
                            }
                        } catch (Exception e3) {
                            androidx.activity.result.b.o(e3, new StringBuilder("handshake falhou: "), "ExSapoCast");
                            socket.close();
                        }
                    }
                } catch (Exception unused) {
                    return;
                }
                break;
            default:
                Socket socket2 = this.b;
                boolean z2 = PhoneSyncService.f1102z;
                try {
                    socket2.close();
                } catch (Exception unused2) {
                    return;
                }
                break;
        }
    }
}
