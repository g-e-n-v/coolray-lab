package e0;

import com.ex.auto.CentralWatchdogService;
import com.ex.auto.TimerFloaterService;
import h2.p;
import i2.g;
import kotlinx.coroutines.scheduling.h;
import w0.dh;
import x1.e;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements p, dh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1709a;
    public final /* synthetic */ Object b;

    public /* synthetic */ b(int i3, Object obj) {
        this.f1709a = i3;
        this.b = obj;
    }

    @Override // h2.p
    public Object b(Object obj, Object obj2) {
        switch (this.f1709a) {
            case 1:
                h hVar = (h) this.b;
                String str = (String) obj;
                int iIntValue = ((Integer) obj2).intValue();
                int[] iArr = CentralWatchdogService.S2;
                g.e(str, "c");
                String strB = hVar.b(iIntValue, str);
                g.d(strB, "runShell(...)");
                return strB;
            default:
                TimerFloaterService timerFloaterService = (TimerFloaterService) this.b;
                Runnable runnable = (Runnable) obj;
                long jLongValue = ((Long) obj2).longValue();
                boolean z2 = TimerFloaterService.f1220o;
                g.e(runnable, "task");
                timerFloaterService.f1223d.postDelayed(runnable, jLongValue);
                return e.f4647c;
        }
    }
}
