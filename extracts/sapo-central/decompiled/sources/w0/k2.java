package w0;

import android.util.Log;
import android.widget.Toast;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.R;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class k2 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3781a;
    public final /* synthetic */ CentralWatchdogService b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f3782c;

    public /* synthetic */ k2(CentralWatchdogService centralWatchdogService, boolean z2, int i3) {
        this.f3781a = i3;
        this.b = centralWatchdogService;
        this.f3782c = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z2 = false;
        switch (this.f3781a) {
            case 0:
                CentralWatchdogService centralWatchdogService = this.b;
                boolean z3 = this.f3782c;
                if (CentralWatchdogService.U2 && !centralWatchdogService.c1()) {
                    l4 l4Var = centralWatchdogService.N0;
                    i2.g.e(l4Var, "anterior");
                    if (!z3) {
                        l4Var = l4.f3830c;
                    }
                    if (l4Var != centralWatchdogService.N0) {
                        Log.i("CentralWatchdog", "dono do WiFi: " + centralWatchdogService.N0 + " -> " + l4Var + " (STA caiu, ap0 no ar=" + z3 + ')');
                        centralWatchdogService.N0 = l4Var;
                    }
                    break;
                }
                break;
            case 1:
                CentralWatchdogService centralWatchdogService2 = this.b;
                boolean z4 = this.f3782c;
                try {
                    String string = o2.k.E0(CentralWatchdogService.c(5000, "settings get global global_http_proxy_host 2>/dev/null")).toString();
                    if (string.length() > 0 && !string.equals("null")) {
                        z2 = true;
                    }
                } catch (Throwable unused) {
                }
                if (z4 || z2) {
                    centralWatchdogService2.f811a.post(new j2(centralWatchdogService2, 10));
                }
                break;
            default:
                CentralWatchdogService centralWatchdogService3 = this.b;
                boolean z5 = this.f3782c;
                int[] iArr = CentralWatchdogService.S2;
                try {
                    Toast.makeText(centralWatchdogService3, centralWatchdogService3.getString(z5 ? R.string.k_status_km_reset_done : R.string.k_status_km_reset_falhou), 0).show();
                } catch (Throwable unused2) {
                    return;
                }
                break;
        }
    }
}
