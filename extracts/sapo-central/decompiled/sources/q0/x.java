package q0;

import android.view.View;
import android.widget.Scroller;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public final class x extends k0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public RecyclerView f3064a;
    public Scroller b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final z0 f3065c = new z0(this);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public y f3066d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public y f3067e;

    public static View c(i0 i0Var, androidx.emoji2.text.f fVar) {
        int iV = i0Var.v();
        View view = null;
        if (iV == 0) {
            return null;
        }
        int iL = (fVar.l() / 2) + fVar.k();
        int i3 = Integer.MAX_VALUE;
        for (int i4 = 0; i4 < iV; i4++) {
            View viewU = i0Var.u(i4);
            int iAbs = Math.abs(((fVar.c(viewU) / 2) + fVar.e(viewU)) - iL);
            if (iAbs < i3) {
                view = viewU;
                i3 = iAbs;
            }
        }
        return view;
    }

    public final int[] a(i0 i0Var, View view) {
        int[] iArr = new int[2];
        if (i0Var.d()) {
            androidx.emoji2.text.f fVarD = d(i0Var);
            iArr[0] = ((fVarD.c(view) / 2) + fVarD.e(view)) - ((fVarD.l() / 2) + fVarD.k());
        } else {
            iArr[0] = 0;
        }
        if (!i0Var.e()) {
            iArr[1] = 0;
            return iArr;
        }
        androidx.emoji2.text.f fVarE = e(i0Var);
        iArr[1] = ((fVarE.c(view) / 2) + fVarE.e(view)) - ((fVarE.l() / 2) + fVarE.k());
        return iArr;
    }

    public final int b(i0 i0Var, androidx.emoji2.text.f fVar, int i3, int i4) {
        this.b.fling(0, 0, i3, i4, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
        int[] iArr = {this.b.getFinalX(), this.b.getFinalY()};
        int iV = i0Var.v();
        float f = 1.0f;
        if (iV != 0) {
            View view = null;
            int i5 = Integer.MIN_VALUE;
            int i6 = Integer.MAX_VALUE;
            View view2 = null;
            for (int i7 = 0; i7 < iV; i7++) {
                View viewU = i0Var.u(i7);
                int iD = i0.D(viewU);
                if (iD != -1) {
                    if (iD < i6) {
                        view = viewU;
                        i6 = iD;
                    }
                    if (iD > i5) {
                        view2 = viewU;
                        i5 = iD;
                    }
                }
            }
            if (view != null && view2 != null) {
                int iMax = Math.max(fVar.b(view), fVar.b(view2)) - Math.min(fVar.e(view), fVar.e(view2));
                if (iMax != 0) {
                    f = (iMax * 1.0f) / ((i5 - i6) + 1);
                }
            }
        }
        if (f <= 0.0f) {
            return 0;
        }
        return Math.round((Math.abs(iArr[0]) > Math.abs(iArr[1]) ? iArr[0] : iArr[1]) / f);
    }

    public final androidx.emoji2.text.f d(i0 i0Var) {
        y yVar = this.f3067e;
        if (yVar == null || ((i0) yVar.b) != i0Var) {
            this.f3067e = new y(i0Var, 0);
        }
        return this.f3067e;
    }

    public final androidx.emoji2.text.f e(i0 i0Var) {
        y yVar = this.f3066d;
        if (yVar == null || ((i0) yVar.b) != i0Var) {
            this.f3066d = new y(i0Var, 1);
        }
        return this.f3066d;
    }

    public final void f() {
        i0 layoutManager;
        View viewC;
        RecyclerView recyclerView = this.f3064a;
        if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null) {
            return;
        }
        if (layoutManager.e()) {
            viewC = c(layoutManager, e(layoutManager));
        } else {
            viewC = layoutManager.d() ? c(layoutManager, d(layoutManager)) : null;
        }
        if (viewC == null) {
            return;
        }
        int[] iArrA = a(layoutManager, viewC);
        int i3 = iArrA[0];
        if (i3 == 0 && iArrA[1] == 0) {
            return;
        }
        this.f3064a.Z(i3, iArrA[1], false);
    }
}
