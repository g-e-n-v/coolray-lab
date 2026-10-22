package w0;

import android.net.wifi.WifiManager;
import android.os.SystemClock;
import android.util.Log;
import com.ex.auto.CentralWatchdogService;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class h2 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3654a;
    public final /* synthetic */ CentralWatchdogService b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f3655c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ boolean f3656d;

    public /* synthetic */ h2(int i3, CentralWatchdogService centralWatchdogService, String str, boolean z2) {
        this.f3654a = i3;
        this.b = centralWatchdogService;
        this.f3655c = str;
        this.f3656d = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        final int i3 = 1;
        final int i4 = 0;
        switch (this.f3654a) {
            case 0:
                boolean z2 = this.f3656d;
                final String str = this.f3655c;
                CentralWatchdogService centralWatchdogService = this.b;
                if (CentralWatchdogService.U2) {
                    if (z2) {
                        ae aeVar = ae.f3361a;
                        androidx.activity.result.b.p("WiFi ao acordar (", str, "): pulado — há projeção em curso; ligar o WiFi cliente derrubaria a sessão (rádio única)", "CentralWatchdog", false);
                    } else {
                        try {
                            Object systemService = centralWatchdogService.getApplicationContext().getSystemService("wifi");
                            i2.g.c(systemService, "null cannot be cast to non-null type android.net.wifi.WifiManager");
                            final WifiManager wifiManager = (WifiManager) systemService;
                            if (!wifiManager.isWifiEnabled()) {
                                boolean zV = CentralWatchdogService.v();
                                boolean wifiEnabled = wifiManager.setWifiEnabled(true);
                                if (wifiEnabled) {
                                    centralWatchdogService.V = true;
                                }
                                Log.i("CentralWatchdog", "WiFi auto-enable (" + str + ") tentativa " + (centralWatchdogService.U + 1) + "/3: setWifiEnabled retornou " + wifiEnabled);
                                boolean z3 = zV && centralWatchdogService.W().getBoolean("ap_sempre_aberto", false);
                                if (wifiEnabled && zV && !z3) {
                                    ae aeVar2 = ae.f3361a;
                                    ae.b("CentralWatchdog", "WiFi auto-enable (" + str + "): o AP estava no ar e caiu com a STA — NÃO reabro (AP sempre aberto desmarcado); volta quando um celular pedir", false);
                                }
                                if (wifiEnabled && z3) {
                                    ae aeVar3 = ae.f3361a;
                                    ae.b("CentralWatchdog", "WiFi auto-enable (" + str + "): o AP estava no ar e cai com a STA — reabro em " + (centralWatchdogService.W / ((long) 1000)) + "s (ordem STA→AP convive)", false);
                                    centralWatchdogService.f811a.postDelayed(new a2(centralWatchdogService, str, 4), centralWatchdogService.W);
                                }
                                centralWatchdogService.f811a.postDelayed(new Runnable() { // from class: w0.l2
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        int i5 = i3;
                                        String str2 = str;
                                        WifiManager wifiManager2 = wifiManager;
                                        switch (i5) {
                                            case 0:
                                                int[] iArr = CentralWatchdogService.S2;
                                                try {
                                                    wifiManager2.startScan();
                                                    wifiManager2.reconnect();
                                                    Log.i("CentralWatchdog", "WiFi auto-enable (" + str2 + "): rescan + reconnect disparados");
                                                } catch (Exception e3) {
                                                    androidx.activity.result.b.o(e3, androidx.activity.result.b.l("WiFi auto-enable (", str2, ") rescan/reconnect falhou: "), "CentralWatchdog");
                                                    return;
                                                }
                                                break;
                                            default:
                                                int[] iArr2 = CentralWatchdogService.S2;
                                                try {
                                                    wifiManager2.startScan();
                                                    wifiManager2.reconnect();
                                                    Log.i("CentralWatchdog", "WiFi auto-enable (" + str2 + "): rescan + reconnect disparados");
                                                } catch (Exception e4) {
                                                    androidx.activity.result.b.o(e4, androidx.activity.result.b.l("WiFi auto-enable (", str2, ") rescan/reconnect falhou: "), "CentralWatchdog");
                                                }
                                                break;
                                        }
                                    }
                                }, 2000L);
                                int i5 = centralWatchdogService.U + 1;
                                centralWatchdogService.U = i5;
                                if (i5 < 3) {
                                    centralWatchdogService.f811a.postDelayed(centralWatchdogService.X, 1500L);
                                }
                            } else {
                                Log.i("CentralWatchdog", "WiFi auto-enable (" + str + "): já ligado (tentativa " + (centralWatchdogService.U + 1) + ')');
                                centralWatchdogService.f811a.postDelayed(new Runnable() { // from class: w0.l2
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        int i6 = i4;
                                        String str2 = str;
                                        WifiManager wifiManager2 = wifiManager;
                                        switch (i6) {
                                            case 0:
                                                int[] iArr = CentralWatchdogService.S2;
                                                try {
                                                    wifiManager2.startScan();
                                                    wifiManager2.reconnect();
                                                    Log.i("CentralWatchdog", "WiFi auto-enable (" + str2 + "): rescan + reconnect disparados");
                                                } catch (Exception e3) {
                                                    androidx.activity.result.b.o(e3, androidx.activity.result.b.l("WiFi auto-enable (", str2, ") rescan/reconnect falhou: "), "CentralWatchdog");
                                                    return;
                                                }
                                                break;
                                            default:
                                                int[] iArr2 = CentralWatchdogService.S2;
                                                try {
                                                    wifiManager2.startScan();
                                                    wifiManager2.reconnect();
                                                    Log.i("CentralWatchdog", "WiFi auto-enable (" + str2 + "): rescan + reconnect disparados");
                                                } catch (Exception e4) {
                                                    androidx.activity.result.b.o(e4, androidx.activity.result.b.l("WiFi auto-enable (", str2, ") rescan/reconnect falhou: "), "CentralWatchdog");
                                                }
                                                break;
                                        }
                                    }
                                }, 2000L);
                            }
                        } catch (Exception e3) {
                            StringBuilder sbL = androidx.activity.result.b.l("WiFi auto-enable (", str, ") tentativa ");
                            sbL.append(centralWatchdogService.U + 1);
                            sbL.append(" falhou: ");
                            sbL.append(e3.getMessage());
                            Log.w("CentralWatchdog", sbL.toString());
                        }
                    }
                    break;
                }
                break;
            case 1:
                CentralWatchdogService centralWatchdogService2 = this.b;
                String str2 = this.f3655c;
                boolean z4 = this.f3656d;
                if (i2.g.a(centralWatchdogService2.f823d0, str2)) {
                    centralWatchdogService2.f823d0 = null;
                }
                if (z4 && i2.g.a(centralWatchdogService2.f841i0, str2)) {
                    centralWatchdogService2.f841i0 = null;
                    centralWatchdogService2.f845j0 = 5000L;
                    centralWatchdogService2.f849k0 = 0L;
                    new Thread(new p2(centralWatchdogService2, 19)).start();
                    break;
                }
                break;
            case 2:
                CentralWatchdogService centralWatchdogService3 = this.b;
                String str3 = this.f3655c;
                boolean z5 = this.f3656d;
                centralWatchdogService3.f853l0 = false;
                if (i2.g.a(centralWatchdogService3.f841i0, str3)) {
                    if (!z5) {
                        CentralWatchdogService.f(centralWatchdogService3, true);
                    } else {
                        centralWatchdogService3.f857m0 = 0;
                    }
                    break;
                }
                break;
            default:
                CentralWatchdogService centralWatchdogService4 = this.b;
                String str4 = this.f3655c;
                boolean z6 = this.f3656d;
                centralWatchdogService4.f853l0 = false;
                if (i2.g.a(centralWatchdogService4.f815b0, str4)) {
                    if (!z6) {
                        long j3 = centralWatchdogService4.f845j0;
                        long j4 = 15000;
                        if (j3 >= 15000) {
                            j4 = 30000;
                            if (j3 >= 30000) {
                                j4 = 60000;
                            }
                        }
                        centralWatchdogService4.f845j0 = j4;
                        centralWatchdogService4.f849k0 = SystemClock.elapsedRealtime() + centralWatchdogService4.f845j0;
                    } else {
                        centralWatchdogService4.f841i0 = str4;
                        centralWatchdogService4.f845j0 = 5000L;
                    }
                    break;
                }
                break;
        }
    }

    public /* synthetic */ h2(boolean z2, String str, CentralWatchdogService centralWatchdogService) {
        this.f3654a = 0;
        this.f3656d = z2;
        this.f3655c = str;
        this.b = centralWatchdogService;
    }
}
