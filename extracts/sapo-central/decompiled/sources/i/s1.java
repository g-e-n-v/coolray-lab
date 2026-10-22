package i;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;

/* JADX INFO: loaded from: classes.dex */
public final class s1 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2148a;
    public final /* synthetic */ t1 b;

    public /* synthetic */ s1(t1 t1Var, int i3) {
        this.f2148a = i3;
        this.b = t1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2148a) {
            case 0:
                ViewParent parent = this.b.f2160d.getParent();
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                }
                break;
            default:
                t1 t1Var = this.b;
                t1Var.a();
                View view = t1Var.f2160d;
                if (view.isEnabled() && !view.isLongClickable() && t1Var.c()) {
                    view.getParent().requestDisallowInterceptTouchEvent(true);
                    long jUptimeMillis = SystemClock.uptimeMillis();
                    MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                    view.onTouchEvent(motionEventObtain);
                    motionEventObtain.recycle();
                    t1Var.f2162g = true;
                    break;
                }
                break;
        }
    }
}
