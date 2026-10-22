package w0;

import android.os.MessageQueue;
import com.ex.auto.MainActivity;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class lc implements MessageQueue.IdleHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MainActivity f3849a;
    public final /* synthetic */ ArrayList b;

    public lc(MainActivity mainActivity, ArrayList arrayList) {
        this.f3849a = mainActivity;
        this.b = arrayList;
    }

    @Override // android.os.MessageQueue.IdleHandler
    public final boolean queueIdle() {
        ArrayList arrayList;
        MainActivity mainActivity = this.f3849a;
        if (!mainActivity.isFinishing() && !mainActivity.isDestroyed()) {
            while (true) {
                arrayList = this.b;
                if (arrayList.isEmpty() || !mainActivity.S0[((Number) y1.g.a0(arrayList)).intValue()]) {
                    break;
                }
                arrayList.remove(0);
            }
            if (!arrayList.isEmpty()) {
                int iIntValue = ((Number) arrayList.remove(0)).intValue();
                int i3 = MainActivity.f1002z1;
                mainActivity.k0(iIntValue);
                return !arrayList.isEmpty();
            }
        }
        return false;
    }
}
