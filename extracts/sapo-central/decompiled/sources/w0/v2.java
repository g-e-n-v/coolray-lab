package w0;

import android.car.Car;
import android.car.hardware.property.CarPropertyManager;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.util.Log;
import android.widget.Toast;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.R;
import ecarx.xsf.mediacenter.session.PlaybackState;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class v2 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4366a;
    public final /* synthetic */ CentralWatchdogService b;

    public /* synthetic */ v2(CentralWatchdogService centralWatchdogService, int i3) {
        this.f4366a = i3;
        this.b = centralWatchdogService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Exception e3;
        boolean z2 = true;
        boolean z3 = false;
        switch (this.f4366a) {
            case 0:
                CentralWatchdogService centralWatchdogService = this.b;
                int[] iArr = CentralWatchdogService.S2;
                centralWatchdogService.s0();
                break;
            case 1:
                CentralWatchdogService centralWatchdogService2 = this.b;
                int[] iArr2 = CentralWatchdogService.S2;
                if (!centralWatchdogService2.W().getBoolean("recirc_guard_enabled", false)) {
                    centralWatchdogService2.f811a.removeCallbacks(centralWatchdogService2.x2);
                    try {
                        CarPropertyManager carPropertyManager = centralWatchdogService2.f884u;
                        if (carPropertyManager != null) {
                            carPropertyManager.unregisterCallback(centralWatchdogService2.y2);
                        }
                        break;
                    } catch (Throwable unused) {
                    }
                    try {
                        Car car = centralWatchdogService2.f882t;
                        if (car != null) {
                            car.disconnect();
                        }
                        break;
                    } catch (Throwable unused2) {
                    }
                    centralWatchdogService2.f882t = null;
                    centralWatchdogService2.f884u = null;
                } else {
                    centralWatchdogService2.f887v = 0;
                    centralWatchdogService2.a0();
                }
                break;
            case 2:
                CentralWatchdogService.e(this.b);
                break;
            case 3:
                CentralWatchdogService centralWatchdogService3 = this.b;
                int[] iArr3 = CentralWatchdogService.S2;
                centralWatchdogService3.Q0();
                break;
            case 4:
                CentralWatchdogService centralWatchdogService4 = this.b;
                int[] iArr4 = CentralWatchdogService.S2;
                centralWatchdogService4.Q0();
                break;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                CentralWatchdogService centralWatchdogService5 = this.b;
                int[] iArr5 = CentralWatchdogService.S2;
                centralWatchdogService5.t0();
                break;
            case MusicClient.TYPE_GESTURE /* 6 */:
                CentralWatchdogService centralWatchdogService6 = this.b;
                int[] iArr6 = CentralWatchdogService.S2;
                if (centralWatchdogService6.W().getBoolean("ap_sempre_aberto", false)) {
                    boolean zV = CentralWatchdogService.v();
                    Log.i("CentralWatchdog", "pedido de AP pelo celular (sync por Bluetooth): ap0 ".concat(zV ? "já no ar — nada a fazer" : "fechado — vou reabrir"));
                    if (!zV) {
                        ae aeVar = ae.f3361a;
                        ae.b("CentralWatchdog", "celular chegou por outro canal (sync por Bluetooth) com o ap0 fechado — reabrindo o AP", false);
                        new Thread(new v2(centralWatchdogService6, 9)).start();
                        break;
                    }
                }
                break;
            case PlaybackState.STATE_ERROR /* 7 */:
                CentralWatchdogService centralWatchdogService7 = this.b;
                int[] iArr7 = CentralWatchdogService.S2;
                if (!centralWatchdogService7.W().getBoolean("aeb_restore_on_boot", false)) {
                    try {
                        CarPropertyManager carPropertyManager2 = centralWatchdogService7.C;
                        if (carPropertyManager2 != null) {
                            carPropertyManager2.unregisterCallback(centralWatchdogService7.F2);
                        }
                        break;
                    } catch (Throwable unused3) {
                    }
                    try {
                        Car car2 = centralWatchdogService7.B;
                        if (car2 != null) {
                            car2.disconnect();
                        }
                        break;
                    } catch (Throwable unused4) {
                    }
                    centralWatchdogService7.B = null;
                    centralWatchdogService7.C = null;
                } else {
                    centralWatchdogService7.D = 0;
                    centralWatchdogService7.X();
                }
                break;
            case 8:
                CentralWatchdogService centralWatchdogService8 = this.b;
                int[] iArr8 = CentralWatchdogService.S2;
                centralWatchdogService8.P0();
                break;
            case 9:
                CentralWatchdogService centralWatchdogService9 = this.b;
                try {
                    int[] iArr9 = CentralWatchdogService.S2;
                    centralWatchdogService9.U("celular por outro canal (sync por Bluetooth)", false);
                } catch (Throwable unused5) {
                    return;
                }
                break;
            case 10:
                CentralWatchdogService centralWatchdogService10 = this.b;
                if (!centralWatchdogService10.W().getBoolean("keyserver_bind_enabled", false)) {
                    try {
                        CarPropertyManager carPropertyManager3 = centralWatchdogService10.f875r;
                        if (carPropertyManager3 != null) {
                            carPropertyManager3.unregisterCallback(centralWatchdogService10.w2);
                        }
                        break;
                    } catch (Throwable unused6) {
                    }
                    try {
                        Car car3 = centralWatchdogService10.f872q;
                        if (car3 != null) {
                            car3.disconnect();
                        }
                        break;
                    } catch (Throwable unused7) {
                    }
                    centralWatchdogService10.f872q = null;
                    centralWatchdogService10.f875r = null;
                    int i3 = rg.f4184a;
                    rg.f4185c = false;
                    Handler handler = rg.f4186d;
                    if (handler != null) {
                        handler.removeCallbacks(rg.f);
                    }
                    Log.i("SwcModeCtrl", "stop");
                } else {
                    centralWatchdogService10.f879s = 0;
                    centralWatchdogService10.b0();
                }
                break;
            case 11:
                CentralWatchdogService centralWatchdogService11 = this.b;
                int[] iArr10 = CentralWatchdogService.S2;
                centralWatchdogService11.getClass();
                Log.i("CentralWatchdog", "DriveRegen: floater parou, iniciando watchdog");
                centralWatchdogService11.Y();
                break;
            case 12:
                CentralWatchdogService centralWatchdogService12 = this.b;
                int[] iArr11 = CentralWatchdogService.S2;
                if (CentralWatchdogService.U2) {
                    centralWatchdogService12.Y();
                }
                break;
            case 13:
                CentralWatchdogService centralWatchdogService13 = this.b;
                int[] iArr12 = CentralWatchdogService.S2;
                if (!centralWatchdogService13.W().getBoolean("rear_cam_turn_signal_enabled", false)) {
                    try {
                        CarPropertyManager carPropertyManager4 = centralWatchdogService13.H;
                        if (carPropertyManager4 != null) {
                            carPropertyManager4.unregisterCallback(centralWatchdogService13.A2);
                        }
                        break;
                    } catch (Throwable unused8) {
                    }
                    try {
                        Car car4 = centralWatchdogService13.G;
                        if (car4 != null) {
                            car4.disconnect();
                        }
                        break;
                    } catch (Throwable unused9) {
                    }
                    centralWatchdogService13.G = null;
                    centralWatchdogService13.H = null;
                    centralWatchdogService13.J = null;
                    v2 v2Var = centralWatchdogService13.z2;
                    if (v2Var != null) {
                        centralWatchdogService13.f811a.removeCallbacks(v2Var);
                        centralWatchdogService13.z2 = null;
                    }
                    centralWatchdogService13.L0(false);
                } else {
                    centralWatchdogService13.I = 0;
                    centralWatchdogService13.Z();
                }
                break;
            case 14:
                CentralWatchdogService centralWatchdogService14 = this.b;
                if (!centralWatchdogService14.W().getBoolean("swc_media_control_enabled", false)) {
                    od.f3992a.q();
                } else {
                    od.f3992a.p(centralWatchdogService14);
                    od.o(centralWatchdogService14.Z1);
                }
                break;
            case 15:
                CentralWatchdogService centralWatchdogService15 = this.b;
                int[] iArr13 = CentralWatchdogService.S2;
                if (CentralWatchdogService.U2 && centralWatchdogService15.W0) {
                    n3.a(new d2(centralWatchdogService15, 16));
                    break;
                }
                break;
            case 16:
                CentralWatchdogService centralWatchdogService16 = this.b;
                int[] iArr14 = CentralWatchdogService.S2;
                if (CentralWatchdogService.U2) {
                    new Thread(new v2(centralWatchdogService16, 17)).start();
                }
                break;
            case 17:
                CentralWatchdogService centralWatchdogService17 = this.b;
                try {
                    int[] iArr15 = CentralWatchdogService.S2;
                    centralWatchdogService17.U("AP sempre aberto (caiu)", false);
                } catch (Throwable unused10) {
                    return;
                }
                break;
            case 18:
                CentralWatchdogService centralWatchdogService18 = this.b;
                centralWatchdogService18.z2 = null;
                centralWatchdogService18.L0(false);
                break;
            case 19:
                CentralWatchdogService centralWatchdogService19 = this.b;
                int[] iArr16 = CentralWatchdogService.S2;
                if (CentralWatchdogService.U2) {
                    CentralWatchdogService.V0(centralWatchdogService19);
                }
                break;
            case 20:
                CentralWatchdogService centralWatchdogService20 = this.b;
                int[] iArr17 = CentralWatchdogService.S2;
                if (CentralWatchdogService.U2) {
                    boolean z4 = sd.f4234a;
                    sd.b(centralWatchdogService20, centralWatchdogService20.W());
                    boolean z5 = n0.f3926a;
                    n0.a(centralWatchdogService20, centralWatchdogService20.W());
                    k5 k5Var = k5.f3786a;
                    if (k5.f(centralWatchdogService20.W())) {
                        new Thread(new v2(centralWatchdogService20, 21)).start();
                    }
                    break;
                }
                break;
            case 21:
                CentralWatchdogService centralWatchdogService21 = this.b;
                k5 k5Var2 = k5.f3786a;
                int[] iArr18 = CentralWatchdogService.S2;
                k5Var2.d(centralWatchdogService21.W());
                break;
            case 22:
                CentralWatchdogService centralWatchdogService22 = this.b;
                try {
                    Object systemService = centralWatchdogService22.getApplicationContext().getSystemService("wifi");
                    i2.g.c(systemService, "null cannot be cast to non-null type android.net.wifi.WifiManager");
                    WifiManager wifiManager = (WifiManager) systemService;
                    if (!wifiManager.isWifiEnabled()) {
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        boolean z6 = jCurrentTimeMillis - centralWatchdogService22.P0 < centralWatchdogService22.Q0;
                        if (z6 || !centralWatchdogService22.u()) {
                            if (z6) {
                                ae aeVar2 = ae.f3361a;
                                ae.b("CentralWatchdog", "ícone WiFi: ligando mesmo com sessão no ap0 (confirmado pelo 2º toque)", false);
                            }
                            wifiManager.setWifiEnabled(true);
                        } else {
                            centralWatchdogService22.P0 = jCurrentTimeMillis;
                            try {
                                ae aeVar3 = ae.f3361a;
                                ae.b("CentralWatchdog", "ícone WiFi: NÃO liguei — há celular no ap0 (sessão em curso). Toque de novo pra ligar assim mesmo", false);
                                centralWatchdogService22.f811a.post(new v2(centralWatchdogService22, 23));
                            } catch (Exception e4) {
                                e3 = e4;
                                androidx.activity.result.b.o(e3, new StringBuilder("statusWifiApplyReceiver: falha ao ligar WiFi: "), "CentralWatchdog");
                            }
                            z2 = z3;
                        }
                    }
                } catch (Exception e5) {
                    z3 = true;
                    e3 = e5;
                }
                if (z2) {
                    centralWatchdogService22.f811a.post(new v2(centralWatchdogService22, 24));
                }
                break;
            case 23:
                CentralWatchdogService centralWatchdogService23 = this.b;
                try {
                    Toast.makeText(centralWatchdogService23, centralWatchdogService23.getString(R.string.k_wifi_ap0_em_uso), 1).show();
                } catch (Throwable unused11) {
                    return;
                }
                break;
            default:
                k1.a.M(this.b);
                break;
        }
    }
}
