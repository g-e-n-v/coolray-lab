package w0;

import android.appwidget.AppWidgetManager;
import android.car.hardware.property.CarPropertyManager;
import com.ex.auto.HomeWidgetsPollService;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a8 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3352a = 0;
    public final /* synthetic */ HomeWidgetsPollService b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ y7 f3353c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ AppWidgetManager f3354d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ long f3355e;
    public final /* synthetic */ Object f;

    public /* synthetic */ a8(CarPropertyManager carPropertyManager, HomeWidgetsPollService homeWidgetsPollService, androidx.activity.d dVar, y7 y7Var, AppWidgetManager appWidgetManager, long j3) {
        this.f = carPropertyManager;
        this.b = homeWidgetsPollService;
        this.f3353c = y7Var;
        this.f3354d = appWidgetManager;
        this.f3355e = j3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object bVar;
        Integer numG;
        Integer numG2;
        z7 z7Var = null;
        switch (this.f3352a) {
            case 0:
                CarPropertyManager carPropertyManager = (CarPropertyManager) this.f;
                HomeWidgetsPollService homeWidgetsPollService = this.b;
                y7 y7Var = this.f3353c;
                AppWidgetManager appWidgetManager = this.f3354d;
                long j3 = this.f3355e;
                if (carPropertyManager != null) {
                    try {
                        if (y7Var.f4578a) {
                            int[] iArr = v7.f4376a;
                            numG = v7.g(carPropertyManager, 570491136, v7.f, v7.f4381h);
                        } else {
                            numG = homeWidgetsPollService.f960k;
                        }
                        Integer num = numG;
                        if (y7Var.f4578a) {
                            int[] iArr2 = v7.f4376a;
                            numG2 = v7.g(carPropertyManager, 537003264, v7.f4379e, v7.f4382i);
                        } else {
                            numG2 = homeWidgetsPollService.f961l;
                        }
                        bVar = new z7(num, numG2, (y7Var.b || y7Var.f4581e) ? v7.e(carPropertyManager) : homeWidgetsPollService.f962m, y7Var.f4579c ? v7.k(carPropertyManager) : homeWidgetsPollService.f963n, (y7Var.f4580d || y7Var.f4581e) ? v7.l(carPropertyManager) : homeWidgetsPollService.f966q, y7Var.f ? v7.h(carPropertyManager) : homeWidgetsPollService.f967r, (y7Var.f4580d || y7Var.f4581e) ? v7.i(carPropertyManager) : homeWidgetsPollService.f968s, y7Var.f ? v7.m(carPropertyManager) : homeWidgetsPollService.f969t, y7Var.f ? v7.f(carPropertyManager) : homeWidgetsPollService.f970u, y7Var.f ? v7.n(carPropertyManager) : homeWidgetsPollService.f971v, y7Var.f ? v7.j(carPropertyManager, 1) : homeWidgetsPollService.f972w, y7Var.f ? v7.j(carPropertyManager, 4) : homeWidgetsPollService.f973x, y7Var.f4581e ? v7.d(carPropertyManager) : homeWidgetsPollService.f974y);
                    } catch (Throwable th) {
                        bVar = new x1.b(th);
                    }
                    boolean z2 = bVar instanceof x1.b;
                    Throwable th2 = z2 ? ((x1.b) bVar).f4642a : null;
                    if (th2 != null) {
                        androidx.activity.result.b.s(th2, new StringBuilder("poll VHAL: "), "HomeWidgetsPoll");
                    }
                    z7Var = (z7) (z2 ? null : bVar);
                }
                homeWidgetsPollService.f952a.post(new a8(homeWidgetsPollService, z7Var, y7Var, appWidgetManager, j3));
                break;
            default:
                HomeWidgetsPollService homeWidgetsPollService2 = this.b;
                z7 z7Var2 = (z7) this.f;
                y7 y7Var2 = this.f3353c;
                AppWidgetManager appWidgetManager2 = this.f3354d;
                long j4 = this.f3355e;
                if (!homeWidgetsPollService2.f955e) {
                    if (z7Var2 != null) {
                        z7 z7Var3 = j4 == homeWidgetsPollService2.f956g.get() ? z7Var2 : null;
                        if (z7Var3 != null) {
                            homeWidgetsPollService2.f960k = z7Var3.f4617a;
                            homeWidgetsPollService2.f961l = z7Var3.b;
                            homeWidgetsPollService2.f962m = z7Var3.f4618c;
                            homeWidgetsPollService2.f963n = z7Var3.f4619d;
                            homeWidgetsPollService2.f966q = z7Var3.f4620e;
                            homeWidgetsPollService2.f967r = z7Var3.f;
                            homeWidgetsPollService2.f968s = z7Var3.f4621g;
                            homeWidgetsPollService2.f969t = z7Var3.f4622h;
                            homeWidgetsPollService2.f970u = z7Var3.f4623i;
                            homeWidgetsPollService2.f971v = z7Var3.f4624j;
                            homeWidgetsPollService2.f972w = z7Var3.f4625k;
                            homeWidgetsPollService2.f973x = z7Var3.f4626l;
                            homeWidgetsPollService2.f974y = z7Var3.f4627m;
                        }
                    }
                    if (y7Var2.f4578a) {
                        homeWidgetsPollService2.j(appWidgetManager2);
                    }
                    if (y7Var2.b) {
                        homeWidgetsPollService2.k(appWidgetManager2);
                    }
                    if (y7Var2.f4579c) {
                        homeWidgetsPollService2.m(appWidgetManager2);
                    }
                    if (y7Var2.f4580d) {
                        homeWidgetsPollService2.o(appWidgetManager2);
                    }
                    if (y7Var2.f4581e) {
                        homeWidgetsPollService2.n(appWidgetManager2);
                    }
                    if (y7Var2.f) {
                        homeWidgetsPollService2.l(appWidgetManager2);
                    }
                    homeWidgetsPollService2.f954d = false;
                    homeWidgetsPollService2.f952a.postDelayed(homeWidgetsPollService2.f975z, 3000L);
                    break;
                }
                break;
        }
    }

    public /* synthetic */ a8(HomeWidgetsPollService homeWidgetsPollService, z7 z7Var, y7 y7Var, AppWidgetManager appWidgetManager, long j3) {
        this.b = homeWidgetsPollService;
        this.f = z7Var;
        this.f3353c = y7Var;
        this.f3354d = appWidgetManager;
        this.f3355e = j3;
    }
}
