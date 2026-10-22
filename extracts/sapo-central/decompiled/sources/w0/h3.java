package w0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class h3 extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3657a;

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        switch (this.f3657a) {
            case 0:
                long jElapsedRealtime = SystemClock.elapsedRealtime() / ((long) 1000);
                ae aeVar = ae.f3361a;
                ae.b("CentralWatchdog", "desligando (ordenado) — no ar havia " + jElapsedRealtime + 's', true);
                break;
            default:
                i2.g.e(context, "ctx");
                i2.g.e(intent, "intent");
                Iterator it = lh.f3859c.iterator();
                while (it.hasNext()) {
                    ((h2.a) it.next()).a();
                }
                break;
        }
    }
}
