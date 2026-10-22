package w0;

import android.car.Car;
import android.car.hardware.property.CarPropertyManager;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.CentralWatchdogService;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b2 implements Car.CarServiceLifecycleListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3376a;
    public final /* synthetic */ CentralWatchdogService b;

    public /* synthetic */ b2(CentralWatchdogService centralWatchdogService, int i3) {
        this.f3376a = i3;
        this.b = centralWatchdogService;
    }

    @Override // android.car.Car.CarServiceLifecycleListener
    public final void onLifecycleChanged(Car car, boolean z2) {
        CarPropertyManager carPropertyManager;
        switch (this.f3376a) {
            case 0:
                CentralWatchdogService centralWatchdogService = this.b;
                int[] iArr = CentralWatchdogService.S2;
                if (!z2) {
                    centralWatchdogService.y0();
                } else {
                    Object carManager = car != null ? car.getCarManager("property") : null;
                    carPropertyManager = carManager instanceof CarPropertyManager ? (CarPropertyManager) carManager : null;
                    if (carPropertyManager == null) {
                        centralWatchdogService.y0();
                    } else {
                        try {
                            centralWatchdogService.E = false;
                            carPropertyManager.registerCallback(centralWatchdogService.F2, u.f4288a, 0.0f);
                            centralWatchdogService.C = carPropertyManager;
                            centralWatchdogService.D = 0;
                            Log.i("CentralWatchdog", "aebObserver: registerCallback(AEB) OK");
                        } catch (Throwable th) {
                            Log.w("CentralWatchdog", "aebObserver: registerCallback falhou: " + th.getMessage());
                            centralWatchdogService.y0();
                            return;
                        }
                    }
                }
                break;
            case 1:
                CentralWatchdogService centralWatchdogService2 = this.b;
                int[] iArr2 = CentralWatchdogService.S2;
                if (z2) {
                    Object carManager2 = car != null ? car.getCarManager("property") : null;
                    centralWatchdogService2.f848k = carManager2 instanceof CarPropertyManager ? (CarPropertyManager) carManager2 : null;
                    break;
                }
                break;
            case 2:
                CentralWatchdogService centralWatchdogService3 = this.b;
                int[] iArr3 = CentralWatchdogService.S2;
                if (z2) {
                    Object carManager3 = car != null ? car.getCarManager("property") : null;
                    carPropertyManager = carManager3 instanceof CarPropertyManager ? (CarPropertyManager) carManager3 : null;
                    if (carPropertyManager == null) {
                        Log.w("CentralWatchdog", "swcModes: getCarManager(PROPERTY_SERVICE) null");
                        centralWatchdogService3.C0();
                    } else {
                        int i3 = 0;
                        for (int i4 : rg.b) {
                            try {
                                carPropertyManager.registerCallback(centralWatchdogService3.w2, i4, 0.0f);
                                i3++;
                            } catch (Throwable th2) {
                                Log.i("CentralWatchdog", String.format("swcModes: registro 0x%x ignorado (%s)", Arrays.copyOf(new Object[]{Integer.valueOf(i4), th2.getMessage()}, 2)));
                            }
                        }
                        if (i3 == 0) {
                            Log.w("CentralWatchdog", "swcModes: nenhum prop registrou");
                            centralWatchdogService3.C0();
                        } else {
                            centralWatchdogService3.f875r = carPropertyManager;
                            centralWatchdogService3.f879s = 0;
                            int i5 = rg.f4184a;
                            Handler handler = centralWatchdogService3.f811a;
                            i2.g.e(handler, "h");
                            rg.f4186d = handler;
                            rg.f4187e = 0L;
                            rg.f4185c = true;
                            Log.i("SwcModeCtrl", "start: observando mic pra cancelar o Gemini no segurar");
                            Log.i("CentralWatchdog", "swcModes: registerCallback OK (" + i3 + " props) — aguardando botões do volante");
                        }
                    }
                } else {
                    Log.w("CentralWatchdog", "swcModes: Car desconectado (ready=false)");
                    centralWatchdogService3.C0();
                }
                break;
            case 3:
                CentralWatchdogService centralWatchdogService4 = this.b;
                int[] iArr4 = CentralWatchdogService.S2;
                if (!z2) {
                    Log.w("CentralWatchdog", "recircGuard: Car desconectado (ready=false)");
                    centralWatchdogService4.B0();
                } else {
                    Object carManager4 = car != null ? car.getCarManager("property") : null;
                    carPropertyManager = carManager4 instanceof CarPropertyManager ? (CarPropertyManager) carManager4 : null;
                    if (carPropertyManager == null) {
                        Log.w("CentralWatchdog", "recircGuard: getCarManager(PROPERTY_SERVICE) devolveu null");
                        centralWatchdogService4.B0();
                    } else {
                        try {
                            centralWatchdogService4.f890w = p1.a(carPropertyManager, 354419984, 5);
                            centralWatchdogService4.f892x = v7.f(carPropertyManager);
                            centralWatchdogService4.f894y = v7.n(carPropertyManager);
                            centralWatchdogService4.f896z = v7.i(carPropertyManager);
                            carPropertyManager.registerCallback(centralWatchdogService4.y2, 354419984, 0.0f);
                            carPropertyManager.registerCallback(centralWatchdogService4.y2, 354419975, 0.0f);
                            carPropertyManager.registerCallback(centralWatchdogService4.y2, 270535680, 0.0f);
                            centralWatchdogService4.f884u = carPropertyManager;
                            centralWatchdogService4.f887v = 0;
                            Log.i("CentralWatchdog", "recircGuard: registerCallback OK (hvacPower=" + centralWatchdogService4.f890w + ", frontMaxDefrost=" + centralWatchdogService4.f892x + ", windshieldHeat=" + centralWatchdogService4.f894y + ", recirc=" + centralWatchdogService4.f896z + ')');
                            centralWatchdogService4.f811a.post(centralWatchdogService4.x2);
                        } catch (Throwable th3) {
                            Log.w("CentralWatchdog", "recircGuard: registerCallback falhou: " + th3.getMessage());
                            centralWatchdogService4.B0();
                            return;
                        }
                    }
                }
                break;
            case 4:
                CentralWatchdogService centralWatchdogService5 = this.b;
                int[] iArr5 = CentralWatchdogService.S2;
                if (z2) {
                    Object carManager5 = car != null ? car.getCarManager("property") : null;
                    centralWatchdogService5.f840i = carManager5 instanceof CarPropertyManager ? (CarPropertyManager) carManager5 : null;
                    if (centralWatchdogService5.f840i == null) {
                        Log.w("CentralWatchdog", "CarPropertyManager null");
                    } else {
                        if (centralWatchdogService5.T != 0) {
                            long jElapsedRealtime = (SystemClock.elapsedRealtime() - centralWatchdogService5.T) / ((long) 1000);
                            centralWatchdogService5.T = 0L;
                            ae aeVar = ae.f3361a;
                            ae.b("CentralWatchdog", "CarService voltou após " + jElapsedRealtime + "s fora — tratando como despertar", false);
                            centralWatchdogService5.f811a.post(new x1(centralWatchdogService5, 27));
                        }
                        try {
                            CarPropertyManager carPropertyManager2 = centralWatchdogService5.f840i;
                            i2.g.b(carPropertyManager2);
                            carPropertyManager2.registerCallback(centralWatchdogService5.C2, 289408000, 0.0f);
                        } catch (Throwable th4) {
                            androidx.activity.result.b.s(th4, new StringBuilder("registerCallback GEAR_SELECTION falhou: "), "CentralWatchdog");
                        }
                        try {
                            CarPropertyManager carPropertyManager3 = centralWatchdogService5.f840i;
                            i2.g.b(carPropertyManager3);
                            carPropertyManager3.registerCallback(centralWatchdogService5.C2, 289408001, 0.0f);
                        } catch (Throwable th5) {
                            androidx.activity.result.b.s(th5, new StringBuilder("registerCallback CURRENT_GEAR falhou: "), "CentralWatchdog");
                        }
                        centralWatchdogService5.D("boot");
                        centralWatchdogService5.M = 0;
                        centralWatchdogService5.f811a.removeCallbacks(centralWatchdogService5.E2);
                        centralWatchdogService5.f811a.postDelayed(centralWatchdogService5.E2, centralWatchdogService5.N);
                        Log.i("CentralWatchdog", "DriveRegen watchdog iniciado");
                    }
                } else {
                    Log.w("CentralWatchdog", "Car desconectado");
                    centralWatchdogService5.T = SystemClock.elapsedRealtime();
                }
                break;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                CentralWatchdogService centralWatchdogService6 = this.b;
                int[] iArr6 = CentralWatchdogService.S2;
                if (!z2) {
                    Log.w("CentralWatchdog", "rearCamTurnSignal: Car desconectado (ready=false)");
                    centralWatchdogService6.A0();
                } else {
                    Object carManager6 = car != null ? car.getCarManager("property") : null;
                    carPropertyManager = carManager6 instanceof CarPropertyManager ? (CarPropertyManager) carManager6 : null;
                    if (carPropertyManager == null) {
                        Log.w("CentralWatchdog", "rearCamTurnSignal: getCarManager(PROPERTY_SERVICE) devolveu null");
                        centralWatchdogService6.A0();
                    } else {
                        try {
                            carPropertyManager.registerCallback(centralWatchdogService6.A2, u.f4295j, 0.0f);
                            centralWatchdogService6.H = carPropertyManager;
                            centralWatchdogService6.I = 0;
                            Log.i("CentralWatchdog", "rearCamTurnSignal: registerCallback OK — aguardando seta");
                        } catch (Throwable th6) {
                            Log.w("CentralWatchdog", "rearCamTurnSignal: registerCallback falhou: " + th6.getMessage());
                            centralWatchdogService6.A0();
                            return;
                        }
                    }
                }
                break;
            default:
                CentralWatchdogService centralWatchdogService7 = this.b;
                int[] iArr7 = CentralWatchdogService.S2;
                if (!z2) {
                    Log.w("CentralWatchdog", "windowDriver: Car desconectado (ready=false)");
                    centralWatchdogService7.D0();
                } else {
                    Object carManager7 = car != null ? car.getCarManager("property") : null;
                    CarPropertyManager carPropertyManager4 = carManager7 instanceof CarPropertyManager ? (CarPropertyManager) carManager7 : null;
                    if (carPropertyManager4 == null) {
                        Log.w("CentralWatchdog", "windowDriver: getCarManager(PROPERTY_SERVICE) devolveu null");
                        centralWatchdogService7.D0();
                    } else {
                        centralWatchdogService7.f860n.clear();
                        centralWatchdogService7.f864o = null;
                        try {
                            carPropertyManager4.registerCallback(centralWatchdogService7.u2, 373295872, 0.0f);
                            centralWatchdogService7.f856m = carPropertyManager4;
                            centralWatchdogService7.t2 = 0;
                            Log.i("CentralWatchdog", "windowDriver: registerCallback(DOOR_POS) OK — aguardando eventos de porta");
                        } catch (Throwable th7) {
                            Log.w("CentralWatchdog", "windowDriver: registerCallback DOOR_POS falhou: " + th7.getMessage());
                            centralWatchdogService7.D0();
                        }
                    }
                }
                break;
        }
    }
}
