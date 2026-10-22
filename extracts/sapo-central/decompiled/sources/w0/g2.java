package w0;

import android.os.SystemClock;
import android.util.Log;
import com.ex.auto.CentralWatchdogService;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g2 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3609a = 1;
    public final /* synthetic */ CentralWatchdogService b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f3610c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f3611d;

    public /* synthetic */ g2(CentralWatchdogService centralWatchdogService, String str, String str2) {
        this.b = centralWatchdogService;
        this.f3610c = str;
        this.f3611d = str2;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x005b  */
    /* JADX WARN: Code duplicated, block: B:22:0x006e  */
    @Override // java.lang.Runnable
    public final void run() throws InterruptedException {
        switch (this.f3609a) {
            case 0:
                String string = this.f3610c;
                CentralWatchdogService centralWatchdogService = this.b;
                String str = this.f3611d;
                int[] iArr = CentralWatchdogService.S2;
                if (string == null) {
                    string = centralWatchdogService.W().getString("auto_connect_preferred_bt", null);
                    if (string != null || o2.k.m0(string)) {
                        string = null;
                    }
                } else {
                    if (o2.k.m0(string)) {
                        string = null;
                    }
                    if (string == null) {
                        string = centralWatchdogService.W().getString("auto_connect_preferred_bt", null);
                        if (string != null) {
                            string = null;
                        } else {
                            string = null;
                        }
                    }
                }
                boolean zU = centralWatchdogService.U("CarPlay trigger (" + str + ')', false);
                HashMap map = centralWatchdogService.G1;
                if (!zU) {
                    ae aeVar = ae.f3361a;
                    androidx.activity.result.b.p("CarPlay trigger (", str, "): AP não abriu — não sigo para o connect", "CentralWatchdog", false);
                } else {
                    if (string != null && centralWatchdogService.K()) {
                        long jElapsedRealtime = SystemClock.elapsedRealtime();
                        Long l3 = (Long) map.get(string);
                        long jLongValue = jElapsedRealtime - (l3 != null ? l3.longValue() : 0L);
                        if (jLongValue >= centralWatchdogService.H1) {
                            map.put(string, Long.valueOf(jElapsedRealtime));
                            try {
                                u1.a(centralWatchdogService, string, null);
                                break;
                            } catch (Throwable unused) {
                            }
                        } else {
                            Log.i("CentralWatchdog", "CarPlay trigger: injeção pulada, há " + (jLongValue / ((long) 1000)) + "s (carência anti-colisão)");
                        }
                    }
                    try {
                        s1 s1VarR = t1.r(centralWatchdogService, string);
                        ae aeVar2 = ae.f3361a;
                        StringBuilder sb = new StringBuilder("CarPlay trigger (");
                        sb.append(str);
                        sb.append("): ");
                        sb.append(s1VarR);
                        sb.append(" (preferido=");
                        if (string == null) {
                            string = "(qualquer)";
                        }
                        sb.append(string);
                        sb.append(')');
                        ae.b("CentralWatchdog", sb.toString(), false);
                    } catch (Throwable th) {
                        androidx.activity.result.b.s(th, androidx.activity.result.b.l("CarPlay trigger (", str, "): "), "CentralWatchdog");
                        return;
                    }
                }
                break;
            default:
                CentralWatchdogService centralWatchdogService2 = this.b;
                String str2 = this.f3610c;
                String str3 = this.f3611d;
                centralWatchdogService2.f861n0 = false;
                if (i2.g.a(centralWatchdogService2.f815b0, str2) && !i2.g.a(str3, str2)) {
                    Log.w("CentralWatchdog", "auto-proxy divergente (real='" + str3 + "' esperado=" + str2 + ") — reaplicando");
                    centralWatchdogService2.E(8080, str2);
                    break;
                }
                break;
        }
    }

    public /* synthetic */ g2(String str, CentralWatchdogService centralWatchdogService, String str2) {
        this.f3610c = str;
        this.b = centralWatchdogService;
        this.f3611d = str2;
    }
}
