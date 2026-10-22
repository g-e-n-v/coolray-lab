package w0;

import com.ex.auto.HomeFloatingWidgetsService;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class j7 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3751a;
    public final /* synthetic */ HomeFloatingWidgetsService b;

    public /* synthetic */ j7(HomeFloatingWidgetsService homeFloatingWidgetsService, int i3) {
        this.f3751a = i3;
        this.b = homeFloatingWidgetsService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i3 = this.f3751a;
        HomeFloatingWidgetsService homeFloatingWidgetsService = this.b;
        switch (i3) {
            case 0:
                List list = HomeFloatingWidgetsService.f926a0;
                homeFloatingWidgetsService.s();
                break;
            default:
                HomeFloatingWidgetsService.a(homeFloatingWidgetsService);
                break;
        }
    }
}
