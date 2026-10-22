package a1;

import android.car.Car;
import android.car.hardware.property.CarPropertyManager;
import android.car.media.CarAudioManager;
import android.content.ContextWrapper;
import android.os.Handler;
import android.util.Log;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.HomeFloatingWidgetsService;
import com.ex.auto.MainActivity;
import com.ex.auto.PhoneSyncService;
import com.ex.auto.TempBattPillFloaterService;
import com.ex.auto.VhalProviderService;
import com.geely.driveregenfloater.DriveRegenFloaterService;
import com.geely.hvacstepperv2.TempStepperService;
import java.util.concurrent.RejectedExecutionException;
import w0.ab;
import w0.c0;
import w0.c1;
import w0.xg;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class p implements Car.CarServiceLifecycleListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f50a;
    public final /* synthetic */ ContextWrapper b;

    public /* synthetic */ p(ContextWrapper contextWrapper, int i3) {
        this.f50a = i3;
        this.b = contextWrapper;
    }

    @Override // android.car.Car.CarServiceLifecycleListener
    public final void onLifecycleChanged(final Car car, final boolean z2) {
        switch (this.f50a) {
            case 0:
                final TempStepperService tempStepperService = (TempStepperService) this.b;
                if (!tempStepperService.f1306s) {
                    final long jIncrementAndGet = tempStepperService.f1304q.f24a.incrementAndGet();
                    Handler handler = tempStepperService.f1303p;
                    d dVar = tempStepperService.f1304q;
                    Runnable runnable = new Runnable() { // from class: a1.h
                        @Override // java.lang.Runnable
                        public final void run() {
                            Car car2 = car;
                            int[] iArr = TempStepperService.f1285c0;
                            TempStepperService tempStepperService2 = tempStepperService;
                            tempStepperService2.F = false;
                            Handler handler2 = tempStepperService2.f1303p;
                            q qVar = tempStepperService2.G;
                            handler2.removeCallbacks(qVar);
                            Log.d("HvacStepperV2", "Polling parado");
                            Handler handler3 = tempStepperService2.f1303p;
                            q qVar2 = tempStepperService2.E;
                            handler3.removeCallbacks(qVar2);
                            tempStepperService2.a();
                            tempStepperService2.o();
                            d dVar2 = tempStepperService2.f1304q;
                            long j3 = jIncrementAndGet;
                            if (dVar2.a(j3)) {
                                tempStepperService2.f1305r = j3;
                                if (!z2) {
                                    tempStepperService2.f1298k = null;
                                    Log.w("HvacStepperV2", "CarService desconectado — operação offline");
                                    return;
                                }
                                try {
                                    tempStepperService2.f1298k = (CarPropertyManager) car2.getCarManager("property");
                                    tempStepperService2.d();
                                    tempStepperService2.h();
                                    if (tempStepperService2.c()) {
                                        if (tempStepperService2.f1298k != null && tempStepperService2.c()) {
                                            try {
                                                u uVar = new u(tempStepperService2, tempStepperService2.f1305r, 0);
                                                tempStepperService2.Y = uVar;
                                                tempStepperService2.f1298k.registerCallback(uVar, 358614275, 0.0f);
                                            } catch (Exception e3) {
                                                androidx.activity.result.b.o(e3, new StringBuilder("registerCallback falhou: "), "HvacStepperV2");
                                                tempStepperService2.Y = null;
                                            }
                                        }
                                        if (tempStepperService2.f1298k != null && tempStepperService2.c()) {
                                            u uVar2 = new u(tempStepperService2, tempStepperService2.f1305r, 1);
                                            tempStepperService2.Z = uVar2;
                                            try {
                                                tempStepperService2.f1298k.registerCallback(uVar2, 356517120, 0.0f);
                                            } catch (Exception e4) {
                                                androidx.activity.result.b.o(e4, new StringBuilder("registerCallback ventoinha falhou: "), "HvacStepperV2");
                                            }
                                        }
                                        if (tempStepperService2.c() && !tempStepperService2.F) {
                                            tempStepperService2.F = true;
                                            tempStepperService2.f1303p.postDelayed(qVar, 3000L);
                                            Log.d("HvacStepperV2", "Polling iniciado (intervalo=3000ms)");
                                        }
                                        tempStepperService2.g();
                                        if (tempStepperService2.c() && tempStepperService2.f1307t) {
                                            tempStepperService2.f1303p.post(qVar2);
                                        }
                                    }
                                } catch (Exception e5) {
                                    Log.e("HvacStepperV2", "Erro ao inicializar CarService: " + e5.getMessage());
                                }
                            }
                        }
                    };
                    dVar.getClass();
                    handler.post(new c(dVar, jIncrementAndGet, runnable, 0));
                    break;
                }
                break;
            case 1:
                HomeFloatingWidgetsService homeFloatingWidgetsService = (HomeFloatingWidgetsService) this.b;
                try {
                    homeFloatingWidgetsService.f932g.execute(new c1(homeFloatingWidgetsService, homeFloatingWidgetsService.f933h.incrementAndGet(), z2, car, 1));
                } catch (RejectedExecutionException unused) {
                    return;
                }
                break;
            case 2:
                MainActivity mainActivity = (MainActivity) this.b;
                try {
                    mainActivity.f1054z.execute(new c1(mainActivity.A.incrementAndGet(), mainActivity, z2, car));
                } catch (RejectedExecutionException unused2) {
                    mainActivity.M = null;
                    mainActivity.N = null;
                    return;
                }
                break;
            case 3:
                PhoneSyncService phoneSyncService = (PhoneSyncService) this.b;
                if (!z2) {
                    phoneSyncService.f1110j = null;
                    phoneSyncService.f1111k = null;
                    phoneSyncService.f1112l = null;
                } else {
                    boolean z3 = PhoneSyncService.f1102z;
                    Object carManager = car.getCarManager("property");
                    phoneSyncService.f1110j = carManager instanceof CarPropertyManager ? (CarPropertyManager) carManager : null;
                    Object carManager2 = car.getCarManager("audio");
                    phoneSyncService.f1111k = carManager2 instanceof CarAudioManager ? (CarAudioManager) carManager2 : null;
                    CarPropertyManager carPropertyManager = phoneSyncService.f1110j;
                    if (carPropertyManager != null) {
                        phoneSyncService.f1112l = new xg(carPropertyManager);
                    }
                }
                break;
            case 4:
                TempBattPillFloaterService tempBattPillFloaterService = (TempBattPillFloaterService) this.b;
                TempBattPillFloaterService tempBattPillFloaterService2 = TempBattPillFloaterService.f1198v;
                if (z2) {
                    Object carManager3 = car != null ? car.getCarManager("property") : null;
                    tempBattPillFloaterService.f1203g = carManager3 instanceof CarPropertyManager ? (CarPropertyManager) carManager3 : null;
                    break;
                }
                break;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                VhalProviderService vhalProviderService = (VhalProviderService) this.b;
                boolean z4 = VhalProviderService.f1233l;
                vhalProviderService.getClass();
                if (z2) {
                    vhalProviderService.b = new xg((CarPropertyManager) car.getCarManager("property"));
                }
                break;
            default:
                DriveRegenFloaterService driveRegenFloaterService = (DriveRegenFloaterService) this.b;
                boolean z5 = DriveRegenFloaterService.M;
                c0 c0Var = new c0(driveRegenFloaterService, car, z2, 7);
                Handler handler2 = driveRegenFloaterService.f1279u;
                if (handler2 != null && !driveRegenFloaterService.f1280v.b) {
                    handler2.post(new ab(driveRegenFloaterService, 15, c0Var));
                    break;
                }
                break;
        }
    }
}
