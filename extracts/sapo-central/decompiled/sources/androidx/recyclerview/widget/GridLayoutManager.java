package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.result.c;
import c0.a0;
import c0.p0;
import d0.e;
import d0.f;
import java.util.Arrays;
import java.util.WeakHashMap;
import q0.i0;
import q0.j0;
import q0.n;
import q0.o0;
import q0.q;
import q0.s;
import q0.t;
import q0.t0;
import q0.u;

/* JADX INFO: loaded from: classes.dex */
public class GridLayoutManager extends LinearLayoutManager {
    public boolean E;
    public int F;
    public int[] G;
    public View[] H;
    public final SparseIntArray I;
    public final SparseIntArray J;
    public final c K;
    public final Rect L;

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i3, int i4) {
        super(context, attributeSet, i3, i4);
        this.E = false;
        this.F = -1;
        this.I = new SparseIntArray();
        this.J = new SparseIntArray();
        this.K = new c(8);
        this.L = new Rect();
        g1(i0.E(context, attributeSet, i3, i4).b);
    }

    @Override // q0.i0
    public final int F(o0 o0Var, t0 t0Var) {
        if (this.f602p == 0) {
            return this.F;
        }
        if (t0Var.b() < 1) {
            return 0;
        }
        return c1(t0Var.b() - 1, o0Var, t0Var) + 1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final View I0(o0 o0Var, t0 t0Var, int i3, int i4, int i5) {
        B0();
        int iK = this.f604r.k();
        int iG = this.f604r.g();
        int i6 = i4 > i3 ? 1 : -1;
        View view = null;
        View view2 = null;
        while (i3 != i4) {
            View viewU = u(i3);
            int iD = i0.D(viewU);
            if (iD >= 0 && iD < i5 && d1(iD, o0Var, t0Var) == 0) {
                if (((j0) viewU.getLayoutParams()).f2933a.h()) {
                    if (view2 == null) {
                        view2 = viewU;
                    }
                } else {
                    if (this.f604r.e(viewU) < iG && this.f604r.b(viewU) >= iK) {
                        return viewU;
                    }
                    if (view == null) {
                        view = viewU;
                    }
                }
            }
            i3 += i6;
        }
        return view != null ? view : view2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x00e2, code lost:
    
        if (r13 == (r2 > r15)) goto L57;
     */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, q0.i0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View N(android.view.View r23, int r24, q0.o0 r25, q0.t0 r26) {
        /*
            Method dump skipped, instruction units count: 326
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.N(android.view.View, int, q0.o0, q0.t0):android.view.View");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v23 */
    /* JADX WARN: Type inference failed for: r12v24, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r12v27 */
    /* JADX WARN: Type inference failed for: r12v28 */
    /* JADX WARN: Type inference failed for: r12v35 */
    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void O0(o0 o0Var, t0 t0Var, u uVar, t tVar) {
        int i3;
        int i4;
        int i5;
        int iD;
        int iA;
        int i6;
        int iW;
        int iW2;
        ?? r12;
        int i7;
        View viewB;
        int iJ = this.f604r.j();
        boolean z2 = iJ != 1073741824;
        int i8 = v() > 0 ? this.G[this.F] : 0;
        if (z2) {
            h1();
        }
        boolean z3 = uVar.f3019e == 1;
        int iD1 = this.F;
        if (!z3) {
            iD1 = d1(uVar.f3018d, o0Var, t0Var) + e1(uVar.f3018d, o0Var, t0Var);
        }
        int i9 = 0;
        while (i9 < this.F && (i7 = uVar.f3018d) >= 0 && i7 < t0Var.b() && iD1 > 0) {
            int i10 = uVar.f3018d;
            int iE1 = e1(i10, o0Var, t0Var);
            if (iE1 > this.F) {
                throw new IllegalArgumentException("Item at position " + i10 + " requires " + iE1 + " spans but GridLayoutManager has only " + this.F + " spans.");
            }
            iD1 -= iE1;
            if (iD1 < 0 || (viewB = uVar.b(o0Var)) == null) {
                break;
            }
            this.H[i9] = viewB;
            i9++;
        }
        if (i9 == 0) {
            tVar.b = true;
            return;
        }
        if (z3) {
            i5 = 1;
            i4 = i9;
            i3 = 0;
        } else {
            i3 = i9 - 1;
            i4 = -1;
            i5 = -1;
        }
        int i11 = 0;
        while (i3 != i4) {
            View view = this.H[i3];
            q qVar = (q) view.getLayoutParams();
            int iE2 = e1(i0.D(view), o0Var, t0Var);
            qVar.f = iE2;
            qVar.f2983e = i11;
            i11 += iE2;
            i3 += i5;
        }
        float f = 0.0f;
        int i12 = 0;
        for (int i13 = 0; i13 < i9; i13++) {
            View view2 = this.H[i13];
            if (uVar.f3024k != null) {
                r12 = 0;
                r12 = 0;
                if (z3) {
                    b(view2, -1, true);
                } else {
                    b(view2, 0, true);
                }
            } else if (z3) {
                r12 = 0;
                b(view2, -1, false);
            } else {
                r12 = 0;
                b(view2, 0, false);
            }
            RecyclerView recyclerView = this.b;
            Rect rect = this.L;
            if (recyclerView == null) {
                rect.set(r12, r12, r12, r12);
            } else {
                rect.set(recyclerView.J(view2));
            }
            f1(view2, iJ, r12);
            int iC = this.f604r.c(view2);
            if (iC > i12) {
                i12 = iC;
            }
            float fD = (this.f604r.d(view2) * 1.0f) / ((q) view2.getLayoutParams()).f;
            if (fD > f) {
                f = fD;
            }
        }
        if (z2) {
            Z0(Math.max(Math.round(f * this.F), i8));
            i12 = 0;
            for (int i14 = 0; i14 < i9; i14++) {
                View view3 = this.H[i14];
                f1(view3, 1073741824, true);
                int iC2 = this.f604r.c(view3);
                if (iC2 > i12) {
                    i12 = iC2;
                }
            }
        }
        for (int i15 = 0; i15 < i9; i15++) {
            View view4 = this.H[i15];
            if (this.f604r.c(view4) != i12) {
                q qVar2 = (q) view4.getLayoutParams();
                Rect rect2 = qVar2.b;
                int i16 = rect2.top + rect2.bottom + ((ViewGroup.MarginLayoutParams) qVar2).topMargin + ((ViewGroup.MarginLayoutParams) qVar2).bottomMargin;
                int i17 = rect2.left + rect2.right + ((ViewGroup.MarginLayoutParams) qVar2).leftMargin + ((ViewGroup.MarginLayoutParams) qVar2).rightMargin;
                int iB1 = b1(qVar2.f2983e, qVar2.f);
                if (this.f602p == 1) {
                    iW2 = i0.w(false, iB1, 1073741824, i17, ((ViewGroup.MarginLayoutParams) qVar2).width);
                    iW = View.MeasureSpec.makeMeasureSpec(i12 - i16, 1073741824);
                } else {
                    int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i12 - i17, 1073741824);
                    iW = i0.w(false, iB1, 1073741824, i16, ((ViewGroup.MarginLayoutParams) qVar2).height);
                    iW2 = iMakeMeasureSpec;
                }
                if (r0(view4, iW2, iW, (j0) view4.getLayoutParams())) {
                    view4.measure(iW2, iW);
                }
            }
        }
        int iD2 = 0;
        tVar.f3001a = i12;
        if (this.f602p == 1) {
            if (uVar.f == -1) {
                int i18 = uVar.b;
                i6 = i18 - i12;
                iD2 = i18;
            } else {
                i6 = uVar.b;
                iD2 = i6 + i12;
            }
            iA = 0;
            iD = 0;
        } else {
            if (uVar.f == -1) {
                int i19 = uVar.b;
                iA = i19 - i12;
                iD = i19;
            } else {
                int i20 = uVar.b;
                iD = i20 + i12;
                iA = i20;
            }
            i6 = iD2;
        }
        for (int i21 = 0; i21 < i9; i21++) {
            View view5 = this.H[i21];
            q qVar3 = (q) view5.getLayoutParams();
            if (this.f602p != 1) {
                int iC3 = C() + this.G[qVar3.f2983e];
                i6 = iC3;
                iD2 = this.f604r.d(view5) + iC3;
            } else if (N0()) {
                int iA2 = A() + this.G[this.F - qVar3.f2983e];
                iD = iA2;
                iA = iA2 - this.f604r.d(view5);
            } else {
                iA = A() + this.G[qVar3.f2983e];
                iD = this.f604r.d(view5) + iA;
            }
            i0.J(view5, iA, i6, iD, iD2);
            if (qVar3.f2933a.h() || qVar3.f2933a.k()) {
                tVar.f3002c = true;
            }
            tVar.f3003d = view5.hasFocusable() | tVar.f3003d;
        }
        Arrays.fill(this.H, (Object) null);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void P0(o0 o0Var, t0 t0Var, s sVar, int i3) {
        h1();
        if (t0Var.b() > 0 && !t0Var.f3008g) {
            boolean z2 = i3 == 1;
            int iD1 = d1(sVar.b, o0Var, t0Var);
            if (z2) {
                while (iD1 > 0) {
                    int i4 = sVar.b;
                    if (i4 <= 0) {
                        break;
                    }
                    int i5 = i4 - 1;
                    sVar.b = i5;
                    iD1 = d1(i5, o0Var, t0Var);
                }
            } else {
                int iB = t0Var.b() - 1;
                int i6 = sVar.b;
                while (i6 < iB) {
                    int i7 = i6 + 1;
                    int iD2 = d1(i7, o0Var, t0Var);
                    if (iD2 <= iD1) {
                        break;
                    }
                    i6 = i7;
                    iD1 = iD2;
                }
                sVar.b = i6;
            }
        }
        a1();
    }

    @Override // q0.i0
    public final void Q(o0 o0Var, t0 t0Var, View view, f fVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof q)) {
            P(view, fVar);
            return;
        }
        q qVar = (q) layoutParams;
        int iC1 = c1(qVar.f2933a.b(), o0Var, t0Var);
        if (this.f602p == 0) {
            fVar.f(e.a(false, qVar.f2983e, qVar.f, iC1, 1));
        } else {
            fVar.f(e.a(false, iC1, 1, qVar.f2983e, qVar.f));
        }
    }

    @Override // q0.i0
    public final void R(int i3, int i4) {
        c cVar = this.K;
        cVar.u();
        ((SparseIntArray) cVar.b).clear();
    }

    @Override // q0.i0
    public final void S() {
        c cVar = this.K;
        cVar.u();
        ((SparseIntArray) cVar.b).clear();
    }

    @Override // q0.i0
    public final void T(int i3, int i4) {
        c cVar = this.K;
        cVar.u();
        ((SparseIntArray) cVar.b).clear();
    }

    @Override // q0.i0
    public final void U(int i3, int i4) {
        c cVar = this.K;
        cVar.u();
        ((SparseIntArray) cVar.b).clear();
    }

    @Override // q0.i0
    public final void V(int i3, int i4) {
        c cVar = this.K;
        cVar.u();
        ((SparseIntArray) cVar.b).clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void V0(boolean z2) {
        if (z2) {
            throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
        }
        super.V0(false);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, q0.i0
    public final void W(o0 o0Var, t0 t0Var) {
        boolean z2 = t0Var.f3008g;
        SparseIntArray sparseIntArray = this.J;
        SparseIntArray sparseIntArray2 = this.I;
        if (z2) {
            int iV = v();
            for (int i3 = 0; i3 < iV; i3++) {
                q qVar = (q) u(i3).getLayoutParams();
                int iB = qVar.f2933a.b();
                sparseIntArray2.put(iB, qVar.f);
                sparseIntArray.put(iB, qVar.f2983e);
            }
        }
        super.W(o0Var, t0Var);
        sparseIntArray2.clear();
        sparseIntArray.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, q0.i0
    public final void X(t0 t0Var) {
        super.X(t0Var);
        this.E = false;
    }

    public final void Z0(int i3) {
        int i4;
        int[] iArr = this.G;
        int i5 = this.F;
        if (iArr == null || iArr.length != i5 + 1 || iArr[iArr.length - 1] != i3) {
            iArr = new int[i5 + 1];
        }
        int i6 = 0;
        iArr[0] = 0;
        int i7 = i3 / i5;
        int i8 = i3 % i5;
        int i9 = 0;
        for (int i10 = 1; i10 <= i5; i10++) {
            i6 += i8;
            if (i6 <= 0 || i5 - i6 >= i8) {
                i4 = i7;
            } else {
                i4 = i7 + 1;
                i6 -= i5;
            }
            i9 += i4;
            iArr[i10] = i9;
        }
        this.G = iArr;
    }

    public final void a1() {
        View[] viewArr = this.H;
        if (viewArr == null || viewArr.length != this.F) {
            this.H = new View[this.F];
        }
    }

    public final int b1(int i3, int i4) {
        if (this.f602p != 1 || !N0()) {
            int[] iArr = this.G;
            return iArr[i4 + i3] - iArr[i3];
        }
        int[] iArr2 = this.G;
        int i5 = this.F;
        return iArr2[i5 - i3] - iArr2[(i5 - i3) - i4];
    }

    public final int c1(int i3, o0 o0Var, t0 t0Var) {
        boolean z2 = t0Var.f3008g;
        c cVar = this.K;
        if (!z2) {
            int i4 = this.F;
            cVar.getClass();
            return c.s(i3, i4);
        }
        int iB = o0Var.b(i3);
        if (iB != -1) {
            int i5 = this.F;
            cVar.getClass();
            return c.s(iB, i5);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + i3);
        return 0;
    }

    public final int d1(int i3, o0 o0Var, t0 t0Var) {
        boolean z2 = t0Var.f3008g;
        c cVar = this.K;
        if (!z2) {
            int i4 = this.F;
            cVar.getClass();
            return i3 % i4;
        }
        int i5 = this.J.get(i3, -1);
        if (i5 != -1) {
            return i5;
        }
        int iB = o0Var.b(i3);
        if (iB != -1) {
            int i6 = this.F;
            cVar.getClass();
            return iB % i6;
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i3);
        return 0;
    }

    public final int e1(int i3, o0 o0Var, t0 t0Var) {
        boolean z2 = t0Var.f3008g;
        c cVar = this.K;
        if (!z2) {
            cVar.getClass();
            return 1;
        }
        int i4 = this.I.get(i3, -1);
        if (i4 != -1) {
            return i4;
        }
        if (o0Var.b(i3) != -1) {
            cVar.getClass();
            return 1;
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i3);
        return 1;
    }

    @Override // q0.i0
    public final boolean f(j0 j0Var) {
        return j0Var instanceof q;
    }

    public final void f1(View view, int i3, boolean z2) {
        int iW;
        int iW2;
        q qVar = (q) view.getLayoutParams();
        Rect rect = qVar.b;
        int i4 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) qVar).topMargin + ((ViewGroup.MarginLayoutParams) qVar).bottomMargin;
        int i5 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) qVar).leftMargin + ((ViewGroup.MarginLayoutParams) qVar).rightMargin;
        int iB1 = b1(qVar.f2983e, qVar.f);
        if (this.f602p == 1) {
            iW2 = i0.w(false, iB1, i3, i5, ((ViewGroup.MarginLayoutParams) qVar).width);
            iW = i0.w(true, this.f604r.l(), this.f2917m, i4, ((ViewGroup.MarginLayoutParams) qVar).height);
        } else {
            int iW3 = i0.w(false, iB1, i3, i4, ((ViewGroup.MarginLayoutParams) qVar).height);
            int iW4 = i0.w(true, this.f604r.l(), this.f2916l, i5, ((ViewGroup.MarginLayoutParams) qVar).width);
            iW = iW3;
            iW2 = iW4;
        }
        j0 j0Var = (j0) view.getLayoutParams();
        if (z2 ? r0(view, iW2, iW, j0Var) : p0(view, iW2, iW, j0Var)) {
            view.measure(iW2, iW);
        }
    }

    public final void g1(int i3) {
        if (i3 == this.F) {
            return;
        }
        this.E = true;
        if (i3 < 1) {
            throw new IllegalArgumentException("Span count should be at least 1. Provided " + i3);
        }
        this.F = i3;
        this.K.u();
        g0();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, q0.i0
    public final int h0(int i3, o0 o0Var, t0 t0Var) {
        h1();
        a1();
        return super.h0(i3, o0Var, t0Var);
    }

    public final void h1() {
        int iZ;
        int iC;
        if (this.f602p == 1) {
            iZ = this.f2918n - B();
            iC = A();
        } else {
            iZ = this.f2919o - z();
            iC = C();
        }
        Z0(iZ - iC);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, q0.i0
    public final int j0(int i3, o0 o0Var, t0 t0Var) {
        h1();
        a1();
        return super.j0(i3, o0Var, t0Var);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, q0.i0
    public final int k(t0 t0Var) {
        return y0(t0Var);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, q0.i0
    public final int l(t0 t0Var) {
        return z0(t0Var);
    }

    @Override // q0.i0
    public final void m0(Rect rect, int i3, int i4) {
        int iG;
        int iG2;
        if (this.G == null) {
            super.m0(rect, i3, i4);
        }
        int iB = B() + A();
        int iZ = z() + C();
        if (this.f602p == 1) {
            int iHeight = rect.height() + iZ;
            RecyclerView recyclerView = this.b;
            WeakHashMap weakHashMap = p0.f727a;
            iG2 = i0.g(i4, iHeight, a0.d(recyclerView));
            int[] iArr = this.G;
            iG = i0.g(i3, iArr[iArr.length - 1] + iB, a0.e(this.b));
        } else {
            int iWidth = rect.width() + iB;
            RecyclerView recyclerView2 = this.b;
            WeakHashMap weakHashMap2 = p0.f727a;
            iG = i0.g(i3, iWidth, a0.e(recyclerView2));
            int[] iArr2 = this.G;
            iG2 = i0.g(i4, iArr2[iArr2.length - 1] + iZ, a0.d(this.b));
        }
        this.b.setMeasuredDimension(iG, iG2);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, q0.i0
    public final int n(t0 t0Var) {
        return y0(t0Var);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, q0.i0
    public final int o(t0 t0Var) {
        return z0(t0Var);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, q0.i0
    public final j0 r() {
        return this.f602p == 0 ? new q(-2, -1) : new q(-1, -2);
    }

    @Override // q0.i0
    public final j0 s(Context context, AttributeSet attributeSet) {
        q qVar = new q(context, attributeSet);
        qVar.f2983e = -1;
        qVar.f = 0;
        return qVar;
    }

    @Override // q0.i0
    public final j0 t(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            q qVar = new q((ViewGroup.MarginLayoutParams) layoutParams);
            qVar.f2983e = -1;
            qVar.f = 0;
            return qVar;
        }
        q qVar2 = new q(layoutParams);
        qVar2.f2983e = -1;
        qVar2.f = 0;
        return qVar2;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, q0.i0
    public final boolean u0() {
        return this.f612z == null && !this.E;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void w0(t0 t0Var, u uVar, n nVar) {
        int i3;
        int i4 = this.F;
        for (int i5 = 0; i5 < this.F && (i3 = uVar.f3018d) >= 0 && i3 < t0Var.b() && i4 > 0; i5++) {
            nVar.a(uVar.f3018d, Math.max(0, uVar.f3020g));
            this.K.getClass();
            i4--;
            uVar.f3018d += uVar.f3019e;
        }
    }

    @Override // q0.i0
    public final int x(o0 o0Var, t0 t0Var) {
        if (this.f602p == 1) {
            return this.F;
        }
        if (t0Var.b() < 1) {
            return 0;
        }
        return c1(t0Var.b() - 1, o0Var, t0Var) + 1;
    }

    public GridLayoutManager(int i3) {
        super(1);
        this.E = false;
        this.F = -1;
        this.I = new SparseIntArray();
        this.J = new SparseIntArray();
        this.K = new c(8);
        this.L = new Rect();
        g1(i3);
    }
}
