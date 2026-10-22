package q0;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f3073a;

    public /* synthetic */ z(RecyclerView recyclerView) {
        this.f3073a = recyclerView;
    }

    public void a(a aVar) {
        int i3 = aVar.f2839a;
        RecyclerView recyclerView = this.f3073a;
        if (i3 == 1) {
            recyclerView.f635l.R(aVar.b, aVar.f2840c);
            return;
        }
        if (i3 == 2) {
            recyclerView.f635l.U(aVar.b, aVar.f2840c);
        } else if (i3 == 4) {
            recyclerView.f635l.V(aVar.b, aVar.f2840c);
        } else {
            if (i3 != 8) {
                return;
            }
            recyclerView.f635l.T(aVar.b, aVar.f2840c);
        }
    }

    public w0 b(int i3) {
        RecyclerView recyclerView = this.f3073a;
        int iQ = recyclerView.f622e.q();
        w0 w0Var = null;
        for (int i4 = 0; i4 < iQ; i4++) {
            w0 w0VarI = RecyclerView.I(recyclerView.f622e.p(i4));
            if (w0VarI != null && !w0VarI.h() && w0VarI.f3049c == i3) {
                if (!((ArrayList) recyclerView.f622e.f414d).contains(w0VarI.f3048a)) {
                    w0Var = w0VarI;
                    break;
                }
                w0Var = w0VarI;
            }
        }
        if (w0Var != null) {
            if (!((ArrayList) recyclerView.f622e.f414d).contains(w0Var.f3048a)) {
                return w0Var;
            }
        }
        return null;
    }

    public void c(int i3, int i4) {
        int i5;
        int i6;
        RecyclerView recyclerView = this.f3073a;
        int iQ = recyclerView.f622e.q();
        int i7 = i4 + i3;
        for (int i8 = 0; i8 < iQ; i8++) {
            View viewP = recyclerView.f622e.p(i8);
            w0 w0VarI = RecyclerView.I(viewP);
            if (w0VarI != null && !w0VarI.o() && (i6 = w0VarI.f3049c) >= i3 && i6 < i7) {
                w0VarI.a(2);
                w0VarI.a(1024);
                ((j0) viewP.getLayoutParams()).f2934c = true;
            }
        }
        o0 o0Var = recyclerView.b;
        ArrayList arrayList = o0Var.f2974c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            w0 w0Var = (w0) arrayList.get(size);
            if (w0Var != null && (i5 = w0Var.f3049c) >= i3 && i5 < i7) {
                w0Var.a(2);
                o0Var.e(size);
            }
        }
        recyclerView.f626g0 = true;
    }

    public void d(int i3, int i4) {
        RecyclerView recyclerView = this.f3073a;
        int iQ = recyclerView.f622e.q();
        for (int i5 = 0; i5 < iQ; i5++) {
            w0 w0VarI = RecyclerView.I(recyclerView.f622e.p(i5));
            if (w0VarI != null && !w0VarI.o() && w0VarI.f3049c >= i3) {
                w0VarI.l(i4, false);
                recyclerView.f619c0.f = true;
            }
        }
        ArrayList arrayList = recyclerView.b.f2974c;
        int size = arrayList.size();
        for (int i6 = 0; i6 < size; i6++) {
            w0 w0Var = (w0) arrayList.get(i6);
            if (w0Var != null && w0Var.f3049c >= i3) {
                w0Var.l(i4, true);
            }
        }
        recyclerView.requestLayout();
        recyclerView.f624f0 = true;
    }

    public void e(int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        RecyclerView recyclerView = this.f3073a;
        int iQ = recyclerView.f622e.q();
        int i12 = -1;
        if (i3 < i4) {
            i6 = i3;
            i5 = i4;
            i7 = -1;
        } else {
            i5 = i3;
            i6 = i4;
            i7 = 1;
        }
        for (int i13 = 0; i13 < iQ; i13++) {
            w0 w0VarI = RecyclerView.I(recyclerView.f622e.p(i13));
            if (w0VarI != null && (i11 = w0VarI.f3049c) >= i6 && i11 <= i5) {
                if (i11 == i3) {
                    w0VarI.l(i4 - i3, false);
                } else {
                    w0VarI.l(i7, false);
                }
                recyclerView.f619c0.f = true;
            }
        }
        ArrayList arrayList = recyclerView.b.f2974c;
        if (i3 < i4) {
            i9 = i3;
            i8 = i4;
        } else {
            i8 = i3;
            i9 = i4;
            i12 = 1;
        }
        int size = arrayList.size();
        for (int i14 = 0; i14 < size; i14++) {
            w0 w0Var = (w0) arrayList.get(i14);
            if (w0Var != null && (i10 = w0Var.f3049c) >= i9 && i10 <= i8) {
                if (i10 == i3) {
                    w0Var.l(i4 - i3, false);
                } else {
                    w0Var.l(i12, false);
                }
            }
        }
        recyclerView.requestLayout();
        recyclerView.f624f0 = true;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0020  */
    public void f(w0 w0Var, c0.q qVar, c0.q qVar2) {
        boolean zG;
        RecyclerView recyclerView = this.f3073a;
        recyclerView.getClass();
        w0Var.n(false);
        j jVar = (j) recyclerView.H;
        if (qVar != null) {
            jVar.getClass();
            int i3 = qVar.f731a;
            int i4 = qVar2.f731a;
            if (i3 == i4 && qVar.b == qVar2.b) {
                jVar.l(w0Var);
                w0Var.f3048a.setAlpha(0.0f);
                jVar.f2923i.add(w0Var);
                zG = true;
            } else {
                zG = jVar.g(w0Var, i3, qVar.b, i4, qVar2.b);
            }
        } else {
            jVar.l(w0Var);
            w0Var.f3048a.setAlpha(0.0f);
            jVar.f2923i.add(w0Var);
            zG = true;
        }
        if (zG) {
            recyclerView.S();
        }
    }

    public void g(w0 w0Var, c0.q qVar, c0.q qVar2) {
        boolean zG;
        RecyclerView recyclerView = this.f3073a;
        recyclerView.b.j(w0Var);
        recyclerView.f(w0Var);
        w0Var.n(false);
        j jVar = (j) recyclerView.H;
        jVar.getClass();
        int i3 = qVar.f731a;
        int i4 = qVar.b;
        View view = w0Var.f3048a;
        int left = qVar2 == null ? view.getLeft() : qVar2.f731a;
        int top = qVar2 == null ? view.getTop() : qVar2.b;
        if (w0Var.h() || (i3 == left && i4 == top)) {
            jVar.l(w0Var);
            jVar.f2922h.add(w0Var);
            zG = true;
        } else {
            view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
            zG = jVar.g(w0Var, i3, i4, left, top);
        }
        if (zG) {
            recyclerView.S();
        }
    }

    public void h(int i3) {
        RecyclerView recyclerView = this.f3073a;
        View childAt = recyclerView.getChildAt(i3);
        if (childAt != null) {
            RecyclerView.I(childAt);
            childAt.clearAnimation();
        }
        recyclerView.removeViewAt(i3);
    }
}
