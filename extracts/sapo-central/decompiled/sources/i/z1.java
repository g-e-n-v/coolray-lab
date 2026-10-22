package i;

import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class z1 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2232a;
    public final /* synthetic */ c2 b;

    public /* synthetic */ z1(c2 c2Var, int i3) {
        this.f2232a = i3;
        this.b = c2Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i3 = this.f2232a;
        c2 c2Var = this.b;
        switch (i3) {
            case 0:
                q1 q1Var = c2Var.f1991c;
                if (q1Var != null) {
                    q1Var.setListSelectionHidden(true);
                    q1Var.requestLayout();
                }
                break;
            default:
                q1 q1Var2 = c2Var.f1991c;
                if (q1Var2 != null) {
                    WeakHashMap weakHashMap = c0.p0.f727a;
                    if (c0.c0.b(q1Var2) && c2Var.f1991c.getCount() > c2Var.f1991c.getChildCount() && c2Var.f1991c.getChildCount() <= c2Var.f2000m) {
                        c2Var.f2012y.setInputMethodMode(2);
                        c2Var.d();
                        break;
                    }
                }
                break;
        }
    }
}
