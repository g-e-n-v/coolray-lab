package w0;

import android.net.wifi.WifiManager;
import com.ex.auto.CentralWatchdogService;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class o2 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3965a;
    public final /* synthetic */ te b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CentralWatchdogService f3966c;

    public /* synthetic */ o2(te teVar, CentralWatchdogService centralWatchdogService, int i3) {
        this.f3965a = i3;
        this.b = teVar;
        this.f3966c = centralWatchdogService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i3 = 1;
        switch (this.f3965a) {
            case 0:
                te teVar = this.b;
                CentralWatchdogService centralWatchdogService = this.f3966c;
                if (CentralWatchdogService.U2) {
                    new Thread(new o2(teVar, centralWatchdogService, i3)).start();
                    break;
                }
                break;
            default:
                te teVar2 = this.b;
                boolean z2 = teVar2.b;
                CentralWatchdogService centralWatchdogService2 = this.f3966c;
                int[] iArr = CentralWatchdogService.S2;
                boolean z3 = teVar2.f4283a;
                if (z2) {
                    try {
                        centralWatchdogService2.U("pós-JIT", false);
                    } catch (Throwable th) {
                        ae aeVar = ae.f3361a;
                        ae.b("CentralWatchdog", "JIT: restauro falhou: " + th, false);
                    }
                }
                if (z3) {
                    Object systemService = centralWatchdogService2.getApplicationContext().getSystemService("wifi");
                    i2.g.c(systemService, "null cannot be cast to non-null type android.net.wifi.WifiManager");
                    WifiManager wifiManager = (WifiManager) systemService;
                    if (!wifiManager.isWifiEnabled()) {
                        wifiManager.setWifiEnabled(true);
                    }
                }
                ae aeVar2 = ae.f3361a;
                ae.b("CentralWatchdog", "JIT: restaurado após o restart (wifi=" + z3 + " ap=" + z2 + "); wifi agora=" + centralWatchdogService2.c1() + " ap agora=" + CentralWatchdogService.v(), false);
                break;
        }
    }
}
