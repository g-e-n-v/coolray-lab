package q0;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public z f2864a;
    public ArrayList b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f2865c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f2866d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f2867e;
    public long f;

    public static void b(w0 w0Var) {
        RecyclerView recyclerView;
        int i3 = w0Var.f3055j;
        if (w0Var.f() || (i3 & 4) != 0 || (recyclerView = w0Var.f3063r) == null) {
            return;
        }
        recyclerView.F(w0Var);
    }

    public abstract boolean a(w0 w0Var, w0 w0Var2, c0.q qVar, c0.q qVar2);

    public final void c(w0 w0Var) {
        z zVar = this.f2864a;
        if (zVar != null) {
            RecyclerView recyclerView = zVar.f3073a;
            boolean z2 = true;
            w0Var.n(true);
            View view = w0Var.f3048a;
            if (w0Var.f3053h != null && w0Var.f3054i == null) {
                w0Var.f3053h = null;
            }
            w0Var.f3054i = null;
            if ((w0Var.f3055j & 16) != 0) {
                return;
            }
            o0 o0Var = recyclerView.b;
            recyclerView.a0();
            androidx.fragment.app.f fVar = recyclerView.f622e;
            c cVar = (c) fVar.f413c;
            z zVar2 = (z) fVar.b;
            int iIndexOfChild = zVar2.f3073a.indexOfChild(view);
            if (iIndexOfChild == -1) {
                fVar.z(view);
            } else if (cVar.d(iIndexOfChild)) {
                cVar.f(iIndexOfChild);
                fVar.z(view);
                zVar2.h(iIndexOfChild);
            } else {
                z2 = false;
            }
            if (z2) {
                w0 w0VarI = RecyclerView.I(view);
                o0Var.j(w0VarI);
                o0Var.g(w0VarI);
            }
            recyclerView.b0(!z2);
            if (z2 || !w0Var.j()) {
                return;
            }
            recyclerView.removeDetachedView(view, false);
        }
    }

    public abstract void d(w0 w0Var);

    public abstract void e();

    public abstract boolean f();
}
