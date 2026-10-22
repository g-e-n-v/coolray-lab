package w0;

import android.car.Car;
import com.ex.auto.HomeWidgetsPollService;
import com.ex.auto.QuickAccessFloaterService;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class z0 implements Car.CarServiceLifecycleListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4600a;
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f4601c;

    public /* synthetic */ z0(Object obj, int i3, int i4) {
        this.f4600a = i4;
        this.f4601c = obj;
        this.b = i3;
    }

    @Override // android.car.Car.CarServiceLifecycleListener
    public final void onLifecycleChanged(Car car, boolean z2) {
        switch (this.f4600a) {
            case 0:
                f1 f1Var = (f1) this.f4601c;
                f1Var.f3567c.post(new c1(f1Var, this.b, z2, car, 0));
                break;
            case 1:
                HomeWidgetsPollService homeWidgetsPollService = (HomeWidgetsPollService) this.f4601c;
                int i3 = this.b;
                int i4 = HomeWidgetsPollService.E;
                try {
                    homeWidgetsPollService.f953c.execute(new c1(homeWidgetsPollService, i3, z2, car, 2));
                } catch (RejectedExecutionException unused) {
                    return;
                }
                break;
            default:
                QuickAccessFloaterService quickAccessFloaterService = (QuickAccessFloaterService) this.f4601c;
                int i5 = this.b;
                int i6 = QuickAccessFloaterService.t0;
                try {
                    quickAccessFloaterService.O.execute(new c1(quickAccessFloaterService, i5, z2, car, 4));
                } catch (RejectedExecutionException unused2) {
                    quickAccessFloaterService.N = false;
                }
                break;
        }
    }
}
