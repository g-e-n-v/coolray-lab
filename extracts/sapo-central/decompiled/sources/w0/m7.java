package w0;

import android.app.ActivityManager;
import android.util.Log;
import android.view.View;
import android.widget.GridLayout;
import com.ex.auto.HomeFloatingWidgetsService;
import java.util.Collections;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class m7 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3897a;
    public final /* synthetic */ HomeFloatingWidgetsService b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f3898c;

    public /* synthetic */ m7(HomeFloatingWidgetsService homeFloatingWidgetsService, String str, int i3) {
        this.f3897a = i3;
        this.b = homeFloatingWidgetsService;
        this.f3898c = str;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // java.lang.Runnable
    public final void run() {
        View view;
        View view2;
        GridLayout gridLayout;
        View view3;
        View view4;
        View view5;
        View view6;
        int i3 = this.f3897a;
        String str = this.f3898c;
        HomeFloatingWidgetsService homeFloatingWidgetsService = this.b;
        switch (i3) {
            case 0:
                List list = HomeFloatingWidgetsService.f926a0;
                try {
                    Object systemService = homeFloatingWidgetsService.getSystemService("activity");
                    i2.g.c(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
                    Set setSingleton = Collections.singleton(str);
                    i2.g.d(setSingleton, "singleton(...)");
                    e8.y((ActivityManager) systemService, setSingleton, new n2(20));
                } catch (Throwable th) {
                    StringBuilder sbL = androidx.activity.result.b.l("killApp(", str, "): ");
                    sbL.append(th.getClass().getSimpleName());
                    sbL.append(": ");
                    sbL.append(th.getMessage());
                    Log.w("HomeFloatingWidgets", sbL.toString());
                    return;
                }
                break;
            default:
                List list2 = HomeFloatingWidgetsService.f926a0;
                homeFloatingWidgetsService.getClass();
                switch (str.hashCode()) {
                    case -2098953079:
                        if (str.equals("vent_fan") && (view = homeFloatingWidgetsService.F) != null) {
                            homeFloatingWidgetsService.v(view);
                            homeFloatingWidgetsService.F = null;
                            homeFloatingWidgetsService.i();
                        }
                        break;
                    case -1737689861:
                        if (str.equals("sysinfo") && homeFloatingWidgetsService.J != null) {
                            homeFloatingWidgetsService.u();
                            homeFloatingWidgetsService.g();
                        }
                        break;
                    case -810883302:
                        if (str.equals("volume") && homeFloatingWidgetsService.I != null) {
                            homeFloatingWidgetsService.w();
                            homeFloatingWidgetsService.k();
                        }
                        break;
                    case 101139:
                        if (str.equals("fan") && (view2 = homeFloatingWidgetsService.C) != null) {
                            homeFloatingWidgetsService.v(view2);
                            homeFloatingWidgetsService.C = null;
                            homeFloatingWidgetsService.d();
                        }
                        break;
                    case 3000946:
                        if (str.equals("apps") && (gridLayout = homeFloatingWidgetsService.H) != null) {
                            homeFloatingWidgetsService.v(gridLayout);
                            homeFloatingWidgetsService.H = null;
                            homeFloatingWidgetsService.b();
                        }
                        break;
                    case 3556308:
                        if (str.equals("temp") && (view3 = homeFloatingWidgetsService.D) != null) {
                            homeFloatingWidgetsService.v(view3);
                            homeFloatingWidgetsService.D = null;
                            homeFloatingWidgetsService.h();
                        }
                        break;
                    case 3615925:
                        if (str.equals("vent") && (view4 = homeFloatingWidgetsService.E) != null) {
                            homeFloatingWidgetsService.v(view4);
                            homeFloatingWidgetsService.E = null;
                            homeFloatingWidgetsService.j();
                        }
                        break;
                    case 726539592:
                        if (str.equals("drive_regen") && (view5 = homeFloatingWidgetsService.B) != null) {
                            homeFloatingWidgetsService.v(view5);
                            homeFloatingWidgetsService.B = null;
                            homeFloatingWidgetsService.c();
                        }
                        break;
                    case 795788274:
                        if (str.equals("heating") && (view6 = homeFloatingWidgetsService.G) != null) {
                            homeFloatingWidgetsService.v(view6);
                            homeFloatingWidgetsService.G = null;
                            homeFloatingWidgetsService.e();
                        }
                        break;
                }
                break;
        }
    }
}
