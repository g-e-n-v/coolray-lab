package w0;

import android.car.Car;
import android.car.hardware.property.CarPropertyManager;
import android.car.media.CarAudioManager;
import com.ex.auto.HomeFloatingWidgetsService;
import com.ex.auto.HomeWidgetsPollService;
import com.ex.auto.MainActivity;
import com.ex.auto.QuickAccessFloaterService;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c1 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3416a;
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f3417c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Car f3418d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f3419e;

    public /* synthetic */ c1(int i3, MainActivity mainActivity, boolean z2, Car car) {
        this.f3416a = 3;
        this.b = i3;
        this.f3419e = mainActivity;
        this.f3417c = z2;
        this.f3418d = car;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0030  */
    @Override // java.lang.Runnable
    public final void run() {
        Object carManager;
        Object carManager2;
        CarPropertyManager carPropertyManager;
        CarPropertyManager carPropertyManager2;
        Object carManager3;
        Object carManager4;
        switch (this.f3416a) {
            case 0:
                f1 f1Var = (f1) this.f3419e;
                int i3 = this.b;
                boolean z2 = this.f3417c;
                Car car = this.f3418d;
                if (!f1Var.f3573j && i3 == f1Var.f3572i && f1Var.c()) {
                    if (!z2) {
                        f1Var.f3571h = null;
                        break;
                    } else {
                        Object carManager5 = car.getCarManager("property");
                        CarPropertyManager carPropertyManager3 = carManager5 instanceof CarPropertyManager ? (CarPropertyManager) carManager5 : null;
                        f1Var.f3571h = carPropertyManager3;
                        if (carPropertyManager3 != null) {
                            for (int i4 : f1Var.f3574k) {
                                try {
                                    carPropertyManager3.registerCallback(f1Var.f3576m, i4, 0.0f);
                                } catch (Exception e3) {
                                    StringBuilder sbK = androidx.activity.result.b.k("Callback ", i4, " indisponível: ");
                                    sbK.append(e3.getMessage());
                                    ae.b("CameraOnDrive", sbK.toString(), false);
                                }
                            }
                            f1Var.e();
                            break;
                        }
                    }
                }
                break;
            case 1:
                HomeFloatingWidgetsService homeFloatingWidgetsService = (HomeFloatingWidgetsService) this.f3419e;
                int i5 = this.b;
                boolean z3 = this.f3417c;
                Car car2 = this.f3418d;
                if (!homeFloatingWidgetsService.f930d && i5 == homeFloatingWidgetsService.f933h.get()) {
                    CarPropertyManager carPropertyManager4 = null;
                    if (z3) {
                        if (car2 != null) {
                            try {
                                carManager = car2.getCarManager("property");
                            } catch (Exception unused) {
                            }
                        } else {
                            carManager = null;
                        }
                        if (carManager instanceof CarPropertyManager) {
                            carPropertyManager4 = (CarPropertyManager) carManager;
                        }
                    }
                    if (!homeFloatingWidgetsService.f930d && i5 == homeFloatingWidgetsService.f933h.get()) {
                        homeFloatingWidgetsService.f = carPropertyManager4;
                        break;
                    }
                }
                break;
            case 2:
                HomeWidgetsPollService homeWidgetsPollService = (HomeWidgetsPollService) this.f3419e;
                int i6 = this.b;
                boolean z4 = this.f3417c;
                Car car3 = this.f3418d;
                if (!homeWidgetsPollService.f955e && i6 == homeWidgetsPollService.f957h.get()) {
                    CarPropertyManager carPropertyManager5 = null;
                    if (z4) {
                        if (car3 != null) {
                            try {
                                carManager2 = car3.getCarManager("property");
                            } catch (Exception unused2) {
                            }
                        } else {
                            carManager2 = null;
                        }
                        if (carManager2 instanceof CarPropertyManager) {
                            carPropertyManager5 = (CarPropertyManager) carManager2;
                        }
                    }
                    if (!homeWidgetsPollService.f955e && i6 == homeWidgetsPollService.f957h.get()) {
                        homeWidgetsPollService.f959j = carPropertyManager5;
                        if (carPropertyManager5 != null) {
                            homeWidgetsPollService.h(carPropertyManager5);
                        }
                        break;
                    }
                }
                break;
            case 3:
                int i7 = this.b;
                MainActivity mainActivity = (MainActivity) this.f3419e;
                boolean z5 = this.f3417c;
                Car car4 = this.f3418d;
                if (i7 == mainActivity.A.get()) {
                    CarAudioManager carAudioManager = null;
                    if (!z5) {
                        mainActivity.M = null;
                        mainActivity.N = null;
                        mainActivity.f1045v.post(new a9(i7, mainActivity, 6));
                        break;
                    } else {
                        try {
                            Object carManager6 = car4.getCarManager("property");
                            carPropertyManager = carManager6 instanceof CarPropertyManager ? (CarPropertyManager) carManager6 : null;
                            break;
                        } catch (Throwable unused3) {
                        }
                        try {
                            Object carManager7 = car4.getCarManager("audio");
                            if (carManager7 instanceof CarAudioManager) {
                                carAudioManager = (CarAudioManager) carManager7;
                            }
                        } catch (Throwable unused4) {
                        }
                        if (i7 == mainActivity.A.get()) {
                            mainActivity.M = carPropertyManager;
                            mainActivity.N = carAudioManager;
                            mainActivity.f1045v.post(new y9(i7, mainActivity, carPropertyManager));
                            break;
                        }
                    }
                }
                break;
            default:
                QuickAccessFloaterService quickAccessFloaterService = (QuickAccessFloaterService) this.f3419e;
                int i8 = this.b;
                boolean z6 = this.f3417c;
                Car car5 = this.f3418d;
                if (!quickAccessFloaterService.M && i8 == quickAccessFloaterService.P.get()) {
                    CarAudioManager carAudioManager2 = null;
                    if (z6) {
                        if (car5 != null) {
                            try {
                                carManager4 = car5.getCarManager("property");
                            } catch (Throwable unused5) {
                            }
                        } else {
                            carManager4 = null;
                        }
                        if (carManager4 instanceof CarPropertyManager) {
                            carPropertyManager2 = (CarPropertyManager) carManager4;
                        } else {
                            carPropertyManager2 = null;
                        }
                    } else {
                        carPropertyManager2 = null;
                    }
                    if (z6) {
                        if (car5 != null) {
                            try {
                                carManager3 = car5.getCarManager("audio");
                            } catch (Throwable unused6) {
                            }
                        } else {
                            carManager3 = null;
                        }
                        if (carManager3 instanceof CarAudioManager) {
                            carAudioManager2 = (CarAudioManager) carManager3;
                        }
                    }
                    if (!quickAccessFloaterService.M && i8 == quickAccessFloaterService.P.get()) {
                        quickAccessFloaterService.K = carPropertyManager2;
                        quickAccessFloaterService.L = carAudioManager2;
                        quickAccessFloaterService.N = false;
                        if (carPropertyManager2 != null) {
                            quickAccessFloaterService.f1134a.post(new ve(4, quickAccessFloaterService));
                        }
                        break;
                    }
                    break;
                }
                break;
        }
    }

    public /* synthetic */ c1(Object obj, int i3, boolean z2, Car car, int i4) {
        this.f3416a = i4;
        this.f3419e = obj;
        this.b = i3;
        this.f3417c = z2;
        this.f3418d = car;
    }
}
