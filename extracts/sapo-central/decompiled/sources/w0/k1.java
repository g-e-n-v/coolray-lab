package w0;

import android.app.ActivityManager;
import android.car.hardware.property.CarPropertyManager;
import android.content.ComponentName;
import com.ex.auto.CentralWatchdogService;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class k1 implements h2.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3779a;
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f3780c;

    public /* synthetic */ k1(Object obj, int i3, int i4) {
        this.f3779a = i4;
        this.f3780c = obj;
        this.b = i3;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x004b  */
    @Override // h2.a
    public final Object a() {
        switch (this.f3779a) {
            case 0:
                ((CarPropertyManager) this.f3780c).setProperty(Integer.class, this.b, 0, 2);
                break;
            default:
                CentralWatchdogService centralWatchdogService = (CentralWatchdogService) this.f3780c;
                String str = centralWatchdogService.y0;
                String str2 = centralWatchdogService.x0;
                boolean z2 = true;
                try {
                    Object systemService = centralWatchdogService.getSystemService("activity");
                    i2.g.c(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
                    List<ActivityManager.RunningTaskInfo> runningTasks = ((ActivityManager) systemService).getRunningTasks(1);
                    i2.g.d(runningTasks, "getRunningTasks(...)");
                    ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) y1.g.b0(runningTasks);
                    ComponentName componentName = runningTaskInfo != null ? runningTaskInfo.topActivity : null;
                    if (componentName != null) {
                        String strFlattenToShortString = componentName.flattenToShortString();
                        i2.g.d(strFlattenToShortString, "flattenToShortString(...)");
                        if (!o2.k.e0(strFlattenToShortString, str2, false) || o2.k.e0(strFlattenToShortString, str, false)) {
                            z2 = false;
                        }
                    } else {
                        String strC = CentralWatchdogService.c(3000, "dumpsys activity activities 2>/dev/null | grep mResumedActivity");
                        if (!o2.k.e0(strC, str2, false) || o2.k.e0(strC, str, false)) {
                            z2 = false;
                        }
                    }
                } catch (Throwable unused) {
                }
                centralWatchdogService.f811a.post(new wa(z2, centralWatchdogService, this.b, 2));
                break;
        }
        return x1.e.f4647c;
    }
}
