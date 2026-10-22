package w0;

import android.bluetooth.BluetoothAdapter;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.SystemClock;
import android.util.Log;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.CentralWatchdogService;
import com.geely.driveregenfloater.DriveRegenFloaterService;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a2 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3342a;
    public final /* synthetic */ CentralWatchdogService b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f3343c;

    public /* synthetic */ a2(CentralWatchdogService centralWatchdogService, String str) {
        this.f3342a = 3;
        this.b = centralWatchdogService;
        this.f3343c = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        BluetoothAdapter defaultAdapter;
        boolean zEnable;
        boolean z2 = true;
        boolean z3 = false;
        switch (this.f3342a) {
            case 0:
                CentralWatchdogService centralWatchdogService = this.b;
                String str = this.f3343c;
                int[] iArr = CentralWatchdogService.S2;
                try {
                    centralWatchdogService.getClass();
                    boolean zD1 = CentralWatchdogService.d1();
                    if (!zD1) {
                        centralWatchdogService.m0(str);
                    }
                    if ((CentralWatchdogService.d1() || CentralWatchdogService.v()) && !CentralWatchdogService.d1()) {
                        ae aeVar = ae.f3361a;
                        ae.b("CentralWatchdog", "AP sempre aberto (" + str + "): wlan1 ausente — conserto a interface antes de gastar a tentativa", false);
                        centralWatchdogService.f831f1 = 0L;
                        centralWatchdogService.H("antes do AP/".concat(str));
                    }
                    boolean zV = CentralWatchdogService.v();
                    boolean zU = centralWatchdogService.U("AP sempre aberto (" + str + ')', true);
                    if (zU && !zD1 && !centralWatchdogService.f898z1) {
                        centralWatchdogService.v0("após abrir o AP/".concat(str));
                    }
                    if (!zU || zV) {
                        return;
                    }
                    centralWatchdogService.f831f1 = 0L;
                    centralWatchdogService.H("após abrir o AP/".concat(str));
                    return;
                } catch (Throwable th) {
                    ae aeVar2 = ae.f3361a;
                    StringBuilder sbL = androidx.activity.result.b.l("AP sempre aberto (", str, ") falhou: ");
                    sbL.append(th.getMessage());
                    ae.b("CentralWatchdog", sbL.toString(), false);
                    return;
                }
            case 1:
                CentralWatchdogService centralWatchdogService2 = this.b;
                String str2 = this.f3343c;
                int[] iArr2 = CentralWatchdogService.S2;
                try {
                    centralWatchdogService2.H(str2);
                    return;
                } catch (Throwable th2) {
                    ae aeVar3 = ae.f3361a;
                    StringBuilder sbL2 = androidx.activity.result.b.l("saúde (", str2, "): falhou — ");
                    sbL2.append(th2.getMessage());
                    ae.b("CentralWatchdog", sbL2.toString(), false);
                    return;
                }
            case 2:
                String str3 = this.f3343c;
                CentralWatchdogService centralWatchdogService3 = this.b;
                if (CentralWatchdogService.U2) {
                    ae aeVar4 = ae.f3361a;
                    androidx.activity.result.b.p("BT: chamando o preferido ", str3, " depois do religamento", "CentralWatchdog", false);
                    try {
                        m.i(centralWatchdogService3, str3, null);
                        return;
                    } catch (Throwable unused) {
                        return;
                    }
                }
                return;
            case 3:
                CentralWatchdogService centralWatchdogService4 = this.b;
                AtomicBoolean atomicBoolean = centralWatchdogService4.W1;
                String str4 = this.f3343c;
                int[] iArr3 = CentralWatchdogService.S2;
                try {
                    centralWatchdogService4.N0(str4);
                    return;
                } finally {
                    atomicBoolean.set(false);
                }
            case 4:
                CentralWatchdogService centralWatchdogService5 = this.b;
                String str5 = this.f3343c;
                if (CentralWatchdogService.U2) {
                    new Thread(new a2(centralWatchdogService5, str5, 5)).start();
                    return;
                }
                return;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                CentralWatchdogService centralWatchdogService6 = this.b;
                String str6 = this.f3343c;
                int[] iArr4 = CentralWatchdogService.S2;
                try {
                    centralWatchdogService6.U("WiFi auto-enable (" + str6 + ") derrubou o AP", false);
                    return;
                } catch (Throwable unused2) {
                    return;
                }
            case MusicClient.TYPE_GESTURE /* 6 */:
                CentralWatchdogService centralWatchdogService7 = this.b;
                String str7 = this.f3343c;
                int[] iArr5 = CentralWatchdogService.S2;
                for (int i3 = 0; centralWatchdogService7.K2 && i3 < 40000; i3 += 2000) {
                    try {
                        Thread.sleep(2000L);
                    } catch (Throwable th3) {
                        ae aeVar5 = ae.f3361a;
                        StringBuilder sbL3 = androidx.activity.result.b.l("saúde precoce (", str7, ") falhou: ");
                        sbL3.append(th3.getMessage());
                        ae.b("CentralWatchdog", sbL3.toString(), false);
                        return;
                    }
                }
                if (CentralWatchdogService.d1()) {
                    return;
                }
                Integer numW = o2.s.W(o2.k.E0(CentralWatchdogService.c(10000, "netstat -tln 2>/dev/null | grep -cE '3051[56]'")).toString());
                if ((numW != null ? numW.intValue() : 0) > 0) {
                    return;
                }
                if (!centralWatchdogService7.M()) {
                    ae aeVar6 = ae.f3361a;
                    ae.b("CentralWatchdog", "saúde precoce (" + str7 + "): wlan1 ausente, mas ConnAdaptor de fábrica — nada a recriar", false);
                    return;
                }
                if (centralWatchdogService7.m0("precoce/" + str7)) {
                    return;
                }
                ae aeVar7 = ae.f3361a;
                ae.b("CentralWatchdog", "saúde precoce (" + str7 + "): wlan1 ausente — recriando já, sem esperar os 90s", false);
                centralWatchdogService7.f831f1 = 0L;
                centralWatchdogService7.H("precoce/" + str7);
                return;
            case PlaybackState.STATE_ERROR /* 7 */:
                CentralWatchdogService centralWatchdogService8 = this.b;
                String str8 = this.f3343c;
                if (CentralWatchdogService.U2) {
                    if (!centralWatchdogService8.Z1) {
                        ae aeVar8 = ae.f3361a;
                        ae.b("CentralWatchdog", "BT: não religo — a sessão do CarPlay já não está ativa", false);
                        return;
                    }
                    try {
                        defaultAdapter = BluetoothAdapter.getDefaultAdapter();
                        break;
                    } catch (Throwable unused3) {
                        defaultAdapter = null;
                    }
                    if (defaultAdapter == null || defaultAdapter.isEnabled()) {
                        return;
                    }
                    SystemClock.elapsedRealtime();
                    try {
                        zEnable = defaultAdapter.enable();
                        break;
                    } catch (Throwable unused4) {
                        zEnable = false;
                    }
                    ae aeVar9 = ae.f3361a;
                    ae.b("CentralWatchdog", "BT: religado depois do CarPlay (para os outros aparelhos) — enable() ".concat(zEnable ? "aceito" : "recusado"), false);
                    if (!centralWatchdogService8.f863n2) {
                        try {
                            c3 c3Var = centralWatchdogService8.f859m2;
                            IntentFilter intentFilter = new IntentFilter();
                            intentFilter.addAction("android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED");
                            intentFilter.addAction("android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED");
                            centralWatchdogService8.registerReceiver(c3Var, intentFilter);
                            centralWatchdogService8.f863n2 = true;
                        } catch (Throwable th4) {
                            androidx.activity.result.b.s(th4, new StringBuilder("perfilDoIphoneReceiver: "), "CentralWatchdog");
                        }
                        break;
                    }
                    String string = centralWatchdogService8.W().getString("auto_connect_preferred_bt", null);
                    if (string == null || o2.k.m0(string) || string.equalsIgnoreCase(str8) || !centralWatchdogService8.r()) {
                        return;
                    }
                    centralWatchdogService8.f811a.postDelayed(new a2(string, centralWatchdogService8, 2), 4000L);
                    return;
                }
                return;
            case 8:
                CentralWatchdogService centralWatchdogService9 = this.b;
                String str9 = this.f3343c;
                int[] iArr6 = CentralWatchdogService.S2;
                try {
                    if (!centralWatchdogService9.u() && !CentralWatchdogService.n0()) {
                        z2 = false;
                    }
                    z3 = z2;
                } catch (Throwable unused5) {
                }
                centralWatchdogService9.f811a.post(new h2(z3, str9, centralWatchdogService9));
                return;
            case 9:
                String str10 = this.f3343c;
                CentralWatchdogService centralWatchdogService10 = this.b;
                int[] iArr7 = CentralWatchdogService.S2;
                if (CentralWatchdogService.U2) {
                    if (DriveRegenFloaterService.M) {
                        ae aeVar10 = ae.f3361a;
                        ae.b("CentralWatchdog", "condução/regeneração (" + str10 + "): repassado ao floater por broadcast", false);
                        centralWatchdogService10.sendBroadcast(new Intent("UPDATE_DRIVE_REGEN_MODES"));
                        return;
                    }
                    if (centralWatchdogService10.f840i != null) {
                        centralWatchdogService10.D(str10);
                        return;
                    }
                    Log.i("CentralWatchdog", "requestDriveRegen(" + str10 + "): cpm null — initDriveRegenCar e retentando");
                    centralWatchdogService10.Y();
                    centralWatchdogService10.f811a.postDelayed(new a2(centralWatchdogService10, str10, 10), 1500L);
                    return;
                }
                return;
            case 10:
                CentralWatchdogService centralWatchdogService11 = this.b;
                String str11 = this.f3343c;
                if (centralWatchdogService11.f840i != null) {
                    centralWatchdogService11.D(str11);
                    return;
                }
                Log.w("CentralWatchdog", "requestDriveRegen(" + str11 + "): cpm continua null após init");
                return;
            case 11:
                CentralWatchdogService centralWatchdogService12 = this.b;
                String str12 = this.f3343c;
                int[] iArr8 = CentralWatchdogService.S2;
                if (CentralWatchdogService.U2 && centralWatchdogService12.Z1) {
                    m.j(centralWatchdogService12, str12);
                    return;
                }
                return;
            default:
                CentralWatchdogService centralWatchdogService13 = this.b;
                String str13 = this.f3343c;
                int[] iArr9 = CentralWatchdogService.S2;
                if (CentralWatchdogService.U2) {
                    new Thread(new g2(str13, centralWatchdogService13, "ACL_CONNECTED")).start();
                    return;
                }
                return;
        }
    }

    public /* synthetic */ a2(CentralWatchdogService centralWatchdogService, String str, int i3) {
        this.f3342a = i3;
        this.b = centralWatchdogService;
        this.f3343c = str;
    }

    public /* synthetic */ a2(String str, CentralWatchdogService centralWatchdogService, int i3) {
        this.f3342a = i3;
        this.f3343c = str;
        this.b = centralWatchdogService;
    }
}
