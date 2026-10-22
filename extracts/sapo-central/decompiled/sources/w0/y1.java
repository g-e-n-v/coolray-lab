package w0;

import android.util.Log;
import com.ex.auto.CentralWatchdogService;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class y1 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4556a;
    public final /* synthetic */ boolean b;

    public /* synthetic */ y1(int i3, boolean z2) {
        this.f4556a = i3;
        this.b = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i3 = this.f4556a;
        boolean z2 = this.b;
        switch (i3) {
            case 0:
                int[] iArr = CentralWatchdogService.S2;
                String str = z2 ? "true" : "false";
                try {
                    if (!i2.g.a(o2.k.E0(m.x("getprop persist.launcher.app_monitor_disabled", 3000, null, new n(0))).toString(), str)) {
                        String str2 = "setprop persist.launcher.app_monitor_disabled " + str + "\nam force-stop com.flyme.auto.launcher";
                        i2.g.e(str2, "cmd");
                        m.x(str2, 6000, null, new n(0));
                        Log.i("CentralWatchdog", "keepAlive: launcher app_monitor_disabled=" + str + " (launcher reiniciado p/ reler)");
                    }
                } catch (Exception e3) {
                    androidx.activity.result.b.o(e3, new StringBuilder("keepAlive app_monitor prop: "), "CentralWatchdog");
                    return;
                }
                break;
            default:
                od.f3992a.b(z2 ? "CarPlay conectado" : "CarPlay desconectado");
                break;
        }
    }
}
