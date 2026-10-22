package w0;

import android.app.Service;
import android.content.Context;
import android.content.IntentFilter;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class lh {
    public static h3 b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final lh f3858a = new lh();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final CopyOnWriteArrayList f3859c = new CopyOnWriteArrayList();

    public final synchronized void a(Service service, h2.a aVar) {
        i2.g.e(aVar, "listener");
        f3859c.add(aVar);
        if (b == null) {
            h3 h3Var = new h3(1);
            b = h3Var;
            Context applicationContext = service.getApplicationContext();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
            intentFilter.addAction("android.net.wifi.STATE_CHANGE");
            intentFilter.addAction("android.net.wifi.RSSI_CHANGED");
            applicationContext.registerReceiver(h3Var, intentFilter);
        }
    }

    public final synchronized void b(Service service, h2.a aVar) {
        i2.g.e(aVar, "listener");
        CopyOnWriteArrayList copyOnWriteArrayList = f3859c;
        copyOnWriteArrayList.remove(aVar);
        if (copyOnWriteArrayList.isEmpty()) {
            h3 h3Var = b;
            if (h3Var != null) {
                try {
                    service.getApplicationContext().unregisterReceiver(h3Var);
                } catch (Exception unused) {
                }
            }
            b = null;
        }
    }
}
