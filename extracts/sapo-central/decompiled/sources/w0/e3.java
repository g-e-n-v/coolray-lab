package w0;

import android.net.ConnectivityManager;
import android.net.Network;
import com.ex.auto.CentralWatchdogService;

/* JADX INFO: loaded from: classes.dex */
public final class e3 extends ConnectivityManager.NetworkCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CentralWatchdogService f3522a;

    public e3(CentralWatchdogService centralWatchdogService) {
        this.f3522a = centralWatchdogService;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onAvailable(Network network) {
        i2.g.e(network, "network");
        int[] iArr = CentralWatchdogService.S2;
        if (CentralWatchdogService.U2) {
            CentralWatchdogService centralWatchdogService = this.f3522a;
            centralWatchdogService.f811a.postDelayed(new v2(centralWatchdogService, 20), 3000L);
        }
    }
}
