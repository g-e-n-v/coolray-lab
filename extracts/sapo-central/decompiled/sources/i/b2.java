package i;

import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class b2 implements View.OnTouchListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c2 f1981a;

    public b2(c2 c2Var) {
        this.f1981a = c2Var;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        c2 c2Var = this.f1981a;
        z1 z1Var = c2Var.f2004q;
        Handler handler = c2Var.f2008u;
        b0 b0Var = c2Var.f2012y;
        int action = motionEvent.getAction();
        int x2 = (int) motionEvent.getX();
        int y2 = (int) motionEvent.getY();
        if (action == 0 && b0Var != null && b0Var.isShowing() && x2 >= 0 && x2 < b0Var.getWidth() && y2 >= 0 && y2 < b0Var.getHeight()) {
            handler.postDelayed(z1Var, 250L);
            return false;
        }
        if (action != 1) {
            return false;
        }
        handler.removeCallbacks(z1Var);
        return false;
    }
}
