package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.emoji2.text.f;
import c0.b0;
import c0.p0;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;
import k1.a;
import q0.h0;
import q0.i0;
import q0.j0;
import q0.n;
import q0.o0;
import q0.s;
import q0.s0;
import q0.t;
import q0.t0;
import q0.u;
import q0.v;
import q0.w;
import q0.w0;

/* JADX INFO: loaded from: classes.dex */
public class LinearLayoutManager extends i0 implements s0 {
    public final s A;
    public final t B;
    public final int C;
    public final int[] D;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f602p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public u f603q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public f f604r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f605s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final boolean f606t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f607u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f608v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final boolean f609w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f610x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f611y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public v f612z;

    public LinearLayoutManager(int i3) {
        this.f602p = 1;
        this.f606t = false;
        this.f607u = false;
        this.f608v = false;
        this.f609w = true;
        this.f610x = -1;
        this.f611y = Integer.MIN_VALUE;
        this.f612z = null;
        this.A = new s();
        this.B = new t();
        this.C = 2;
        this.D = new int[2];
        U0(i3);
        c(null);
        if (this.f606t) {
            this.f606t = false;
            g0();
        }
    }

    public final int A0(int i3) {
        if (i3 == 1) {
            return (this.f602p != 1 && N0()) ? 1 : -1;
        }
        if (i3 == 2) {
            return (this.f602p != 1 && N0()) ? -1 : 1;
        }
        if (i3 == 17) {
            return this.f602p == 0 ? -1 : Integer.MIN_VALUE;
        }
        if (i3 == 33) {
            return this.f602p == 1 ? -1 : Integer.MIN_VALUE;
        }
        if (i3 != 66) {
            return (i3 == 130 && this.f602p == 1) ? 1 : Integer.MIN_VALUE;
        }
        return this.f602p == 0 ? 1 : Integer.MIN_VALUE;
    }

    public final void B0() {
        if (this.f603q == null) {
            u uVar = new u();
            uVar.f3016a = true;
            uVar.f3021h = 0;
            uVar.f3022i = 0;
            uVar.f3024k = null;
            this.f603q = uVar;
        }
    }

    public final int C0(o0 o0Var, u uVar, t0 t0Var, boolean z2) {
        int i3;
        int i4 = uVar.f3017c;
        int i5 = uVar.f3020g;
        if (i5 != Integer.MIN_VALUE) {
            if (i4 < 0) {
                uVar.f3020g = i5 + i4;
            }
            Q0(o0Var, uVar);
        }
        int i6 = uVar.f3017c + uVar.f3021h;
        while (true) {
            if ((!uVar.f3025l && i6 <= 0) || (i3 = uVar.f3018d) < 0 || i3 >= t0Var.b()) {
                break;
            }
            t tVar = this.B;
            tVar.f3001a = 0;
            tVar.b = false;
            tVar.f3002c = false;
            tVar.f3003d = false;
            O0(o0Var, t0Var, uVar, tVar);
            if (!tVar.b) {
                int i7 = uVar.b;
                int i8 = tVar.f3001a;
                uVar.b = (uVar.f * i8) + i7;
                if (!tVar.f3002c || uVar.f3024k != null || !t0Var.f3008g) {
                    uVar.f3017c -= i8;
                    i6 -= i8;
                }
                int i9 = uVar.f3020g;
                if (i9 != Integer.MIN_VALUE) {
                    int i10 = i9 + i8;
                    uVar.f3020g = i10;
                    int i11 = uVar.f3017c;
                    if (i11 < 0) {
                        uVar.f3020g = i10 + i11;
                    }
                    Q0(o0Var, uVar);
                }
                if (z2 && tVar.f3003d) {
                    break;
                }
            } else {
                break;
            }
        }
        return i4 - uVar.f3017c;
    }

    public final View D0(boolean z2) {
        return this.f607u ? H0(0, v(), z2) : H0(v() - 1, -1, z2);
    }

    public final View E0(boolean z2) {
        return this.f607u ? H0(v() - 1, -1, z2) : H0(0, v(), z2);
    }

    public final int F0() {
        View viewH0 = H0(v() - 1, -1, false);
        if (viewH0 == null) {
            return -1;
        }
        return i0.D(viewH0);
    }

    public final View G0(int i3, int i4) {
        int i5;
        int i6;
        B0();
        if (i4 <= i3 && i4 >= i3) {
            return u(i3);
        }
        if (this.f604r.e(u(i3)) < this.f604r.k()) {
            i5 = 16644;
            i6 = 16388;
        } else {
            i5 = 4161;
            i6 = 4097;
        }
        return this.f602p == 0 ? this.f2908c.r(i3, i4, i5, i6) : this.f2909d.r(i3, i4, i5, i6);
    }

    @Override // q0.i0
    public final boolean H() {
        return true;
    }

    public final View H0(int i3, int i4, boolean z2) {
        B0();
        int i5 = z2 ? 24579 : 320;
        return this.f602p == 0 ? this.f2908c.r(i3, i4, i5, 320) : this.f2909d.r(i3, i4, i5, 320);
    }

    public View I0(o0 o0Var, t0 t0Var, int i3, int i4, int i5) {
        B0();
        int iK = this.f604r.k();
        int iG = this.f604r.g();
        int i6 = i4 > i3 ? 1 : -1;
        View view = null;
        View view2 = null;
        while (i3 != i4) {
            View viewU = u(i3);
            int iD = i0.D(viewU);
            if (iD >= 0 && iD < i5) {
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

    public final int J0(int i3, o0 o0Var, t0 t0Var, boolean z2) {
        int iG;
        int iG2 = this.f604r.g() - i3;
        if (iG2 <= 0) {
            return 0;
        }
        int i4 = -T0(-iG2, o0Var, t0Var);
        int i5 = i3 + i4;
        if (!z2 || (iG = this.f604r.g() - i5) <= 0) {
            return i4;
        }
        this.f604r.o(iG);
        return iG + i4;
    }

    public final int K0(int i3, o0 o0Var, t0 t0Var, boolean z2) {
        int iK;
        int iK2 = i3 - this.f604r.k();
        if (iK2 <= 0) {
            return 0;
        }
        int i4 = -T0(iK2, o0Var, t0Var);
        int i5 = i3 + i4;
        if (!z2 || (iK = i5 - this.f604r.k()) <= 0) {
            return i4;
        }
        this.f604r.o(-iK);
        return i4 - iK;
    }

    public final View L0() {
        return u(this.f607u ? 0 : v() - 1);
    }

    @Override // q0.i0
    public final void M(RecyclerView recyclerView) {
    }

    public final View M0() {
        return u(this.f607u ? v() - 1 : 0);
    }

    @Override // q0.i0
    public View N(View view, int i3, o0 o0Var, t0 t0Var) {
        int iA0;
        View viewG0;
        S0();
        if (v() != 0 && (iA0 = A0(i3)) != Integer.MIN_VALUE) {
            B0();
            W0(iA0, (int) (this.f604r.l() * 0.33333334f), false, t0Var);
            u uVar = this.f603q;
            uVar.f3020g = Integer.MIN_VALUE;
            uVar.f3016a = false;
            C0(o0Var, uVar, t0Var, true);
            if (iA0 == -1) {
                viewG0 = this.f607u ? G0(v() - 1, -1) : G0(0, v());
            } else {
                viewG0 = this.f607u ? G0(0, v()) : G0(v() - 1, -1);
            }
            View viewM0 = iA0 == -1 ? M0() : L0();
            if (!viewM0.hasFocusable()) {
                return viewG0;
            }
            if (viewG0 != null) {
                return viewM0;
            }
        }
        return null;
    }

    public final boolean N0() {
        RecyclerView recyclerView = this.b;
        WeakHashMap weakHashMap = p0.f727a;
        return b0.d(recyclerView) == 1;
    }

    @Override // q0.i0
    public final void O(AccessibilityEvent accessibilityEvent) {
        super.O(accessibilityEvent);
        if (v() > 0) {
            View viewH0 = H0(0, v(), false);
            accessibilityEvent.setFromIndex(viewH0 == null ? -1 : i0.D(viewH0));
            accessibilityEvent.setToIndex(F0());
        }
    }

    public void O0(o0 o0Var, t0 t0Var, u uVar, t tVar) {
        int iA;
        int i3;
        int i4;
        int iD;
        View viewB = uVar.b(o0Var);
        if (viewB == null) {
            tVar.b = true;
            return;
        }
        j0 j0Var = (j0) viewB.getLayoutParams();
        if (uVar.f3024k == null) {
            if (this.f607u == (uVar.f == -1)) {
                b(viewB, -1, false);
            } else {
                b(viewB, 0, false);
            }
        } else {
            if (this.f607u == (uVar.f == -1)) {
                b(viewB, -1, true);
            } else {
                b(viewB, 0, true);
            }
        }
        j0 j0Var2 = (j0) viewB.getLayoutParams();
        Rect rectJ = this.b.J(viewB);
        int i5 = rectJ.left + rectJ.right;
        int i6 = rectJ.top + rectJ.bottom;
        int iW = i0.w(d(), this.f2918n, this.f2916l, B() + A() + ((ViewGroup.MarginLayoutParams) j0Var2).leftMargin + ((ViewGroup.MarginLayoutParams) j0Var2).rightMargin + i5, ((ViewGroup.MarginLayoutParams) j0Var2).width);
        int iW2 = i0.w(e(), this.f2919o, this.f2917m, z() + C() + ((ViewGroup.MarginLayoutParams) j0Var2).topMargin + ((ViewGroup.MarginLayoutParams) j0Var2).bottomMargin + i6, ((ViewGroup.MarginLayoutParams) j0Var2).height);
        if (p0(viewB, iW, iW2, j0Var2)) {
            viewB.measure(iW, iW2);
        }
        tVar.f3001a = this.f604r.c(viewB);
        if (this.f602p == 1) {
            if (N0()) {
                iD = this.f2918n - B();
                iA = iD - this.f604r.d(viewB);
            } else {
                iA = A();
                iD = this.f604r.d(viewB) + iA;
            }
            if (uVar.f == -1) {
                i3 = uVar.b;
                i4 = i3 - tVar.f3001a;
            } else {
                i4 = uVar.b;
                i3 = tVar.f3001a + i4;
            }
        } else {
            int iC = C();
            int iD2 = this.f604r.d(viewB) + iC;
            if (uVar.f == -1) {
                int i7 = uVar.b;
                int i8 = i7 - tVar.f3001a;
                iD = i7;
                i3 = iD2;
                iA = i8;
                i4 = iC;
            } else {
                int i9 = uVar.b;
                int i10 = tVar.f3001a + i9;
                iA = i9;
                i3 = iD2;
                i4 = iC;
                iD = i10;
            }
        }
        i0.J(viewB, iA, i4, iD, i3);
        if (j0Var.f2933a.h() || j0Var.f2933a.k()) {
            tVar.f3002c = true;
        }
        tVar.f3003d = viewB.hasFocusable();
    }

    public void P0(o0 o0Var, t0 t0Var, s sVar, int i3) {
    }

    public final void Q0(o0 o0Var, u uVar) {
        if (!uVar.f3016a || uVar.f3025l) {
            return;
        }
        int i3 = uVar.f3020g;
        int i4 = uVar.f3022i;
        if (uVar.f == -1) {
            int iV = v();
            if (i3 < 0) {
                return;
            }
            int iF = (this.f604r.f() - i3) + i4;
            if (this.f607u) {
                for (int i5 = 0; i5 < iV; i5++) {
                    View viewU = u(i5);
                    if (this.f604r.e(viewU) < iF || this.f604r.n(viewU) < iF) {
                        R0(o0Var, 0, i5);
                        return;
                    }
                }
                return;
            }
            int i6 = iV - 1;
            for (int i7 = i6; i7 >= 0; i7--) {
                View viewU2 = u(i7);
                if (this.f604r.e(viewU2) < iF || this.f604r.n(viewU2) < iF) {
                    R0(o0Var, i6, i7);
                    return;
                }
            }
            return;
        }
        if (i3 < 0) {
            return;
        }
        int i8 = i3 - i4;
        int iV2 = v();
        if (!this.f607u) {
            for (int i9 = 0; i9 < iV2; i9++) {
                View viewU3 = u(i9);
                if (this.f604r.b(viewU3) > i8 || this.f604r.m(viewU3) > i8) {
                    R0(o0Var, 0, i9);
                    return;
                }
            }
            return;
        }
        int i10 = iV2 - 1;
        for (int i11 = i10; i11 >= 0; i11--) {
            View viewU4 = u(i11);
            if (this.f604r.b(viewU4) > i8 || this.f604r.m(viewU4) > i8) {
                R0(o0Var, i10, i11);
                return;
            }
        }
    }

    public final void R0(o0 o0Var, int i3, int i4) {
        if (i3 == i4) {
            return;
        }
        if (i4 <= i3) {
            while (i3 > i4) {
                View viewU = u(i3);
                e0(i3);
                o0Var.f(viewU);
                i3--;
            }
            return;
        }
        for (int i5 = i4 - 1; i5 >= i3; i5--) {
            View viewU2 = u(i5);
            e0(i5);
            o0Var.f(viewU2);
        }
    }

    public final void S0() {
        if (this.f602p == 1 || !N0()) {
            this.f607u = this.f606t;
        } else {
            this.f607u = !this.f606t;
        }
    }

    public final int T0(int i3, o0 o0Var, t0 t0Var) {
        if (v() != 0 && i3 != 0) {
            B0();
            this.f603q.f3016a = true;
            int i4 = i3 > 0 ? 1 : -1;
            int iAbs = Math.abs(i3);
            W0(i4, iAbs, true, t0Var);
            u uVar = this.f603q;
            int iC0 = C0(o0Var, uVar, t0Var, false) + uVar.f3020g;
            if (iC0 >= 0) {
                if (iAbs > iC0) {
                    i3 = i4 * iC0;
                }
                this.f604r.o(-i3);
                this.f603q.f3023j = i3;
                return i3;
            }
        }
        return 0;
    }

    public final void U0(int i3) {
        if (i3 != 0 && i3 != 1) {
            throw new IllegalArgumentException("invalid orientation:" + i3);
        }
        c(null);
        if (i3 != this.f602p || this.f604r == null) {
            f fVarA = f.a(this, i3);
            this.f604r = fVarA;
            this.A.f2997a = fVarA;
            this.f602p = i3;
            g0();
        }
    }

    public void V0(boolean z2) {
        c(null);
        if (this.f608v == z2) {
            return;
        }
        this.f608v = z2;
        g0();
    }

    /* JADX WARN: Code duplicated, block: B:105:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:107:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:117:0x01e2  */
    /* JADX WARN: Code duplicated, block: B:119:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:121:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:122:0x01fc  */
    /* JADX WARN: Code duplicated, block: B:124:0x0216  */
    /* JADX WARN: Code duplicated, block: B:126:0x021a  */
    /* JADX WARN: Code duplicated, block: B:127:0x0230  */
    /* JADX WARN: Code duplicated, block: B:129:0x0245  */
    /* JADX WARN: Code duplicated, block: B:139:0x0276  */
    /* JADX WARN: Code duplicated, block: B:140:0x027d  */
    /* JADX WARN: Code duplicated, block: B:144:0x028d  */
    /* JADX WARN: Code duplicated, block: B:145:0x0293  */
    /* JADX WARN: Code duplicated, block: B:97:0x0192  */
    /* JADX WARN: Code duplicated, block: B:98:0x0196  */
    @Override // q0.i0
    public void W(o0 o0Var, t0 t0Var) {
        View focusedChild;
        RecyclerView recyclerView;
        View focusedChild2;
        o0 o0Var2;
        View viewI0;
        int iK;
        j0 j0Var;
        int iB;
        int i3;
        int iE;
        int i4;
        int i5;
        List list;
        int i6;
        int i7;
        int iJ0;
        int i8;
        View viewQ;
        int iE2;
        int iG;
        int i9;
        LinearLayoutManager linearLayoutManager = this;
        t0 t0Var2 = t0Var;
        int i10 = -1;
        if (!(linearLayoutManager.f612z == null && linearLayoutManager.f610x == -1) && t0Var2.b() == 0) {
            b0(o0Var);
            return;
        }
        v vVar = linearLayoutManager.f612z;
        if (vVar != null && (i9 = vVar.f3026a) >= 0) {
            linearLayoutManager.f610x = i9;
        }
        linearLayoutManager.B0();
        linearLayoutManager.f603q.f3016a = false;
        linearLayoutManager.S0();
        RecyclerView recyclerView2 = linearLayoutManager.b;
        if (recyclerView2 == null || (focusedChild = recyclerView2.getFocusedChild()) == null || ((ArrayList) linearLayoutManager.f2907a.f414d).contains(focusedChild)) {
            focusedChild = null;
        }
        s sVar = linearLayoutManager.A;
        if (sVar.f3000e && linearLayoutManager.f610x == -1 && linearLayoutManager.f612z == null) {
            if (focusedChild != null && (linearLayoutManager.f604r.e(focusedChild) >= linearLayoutManager.f604r.g() || linearLayoutManager.f604r.b(focusedChild) <= linearLayoutManager.f604r.k())) {
                sVar.c(focusedChild, i0.D(focusedChild));
            }
            o0Var2 = o0Var;
        } else {
            sVar.d();
            sVar.f2999d = linearLayoutManager.f607u ^ linearLayoutManager.f608v;
            if (!t0Var2.f3008g && (i3 = linearLayoutManager.f610x) != -1) {
                if (i3 < 0 || i3 >= t0Var2.b()) {
                    linearLayoutManager.f610x = -1;
                    linearLayoutManager.f611y = Integer.MIN_VALUE;
                    if (linearLayoutManager.v() != 0) {
                        recyclerView = linearLayoutManager.b;
                        if (recyclerView != null) {
                            focusedChild2 = null;
                        } else {
                            focusedChild2 = null;
                        }
                        if (focusedChild2 != null) {
                            j0Var = (j0) focusedChild2.getLayoutParams();
                            if (j0Var.f2933a.h()) {
                            }
                        }
                        if (linearLayoutManager.f605s != linearLayoutManager.f608v) {
                            o0Var2 = o0Var;
                        } else {
                            if (sVar.f2999d) {
                                if (linearLayoutManager.f607u) {
                                    viewI0 = linearLayoutManager.I0(o0Var, t0Var2, 0, linearLayoutManager.v(), t0Var2.b());
                                    linearLayoutManager = this;
                                } else {
                                    linearLayoutManager = this;
                                    viewI0 = linearLayoutManager.I0(o0Var, t0Var, v() - 1, -1, t0Var.b());
                                }
                                o0Var2 = o0Var;
                                t0Var2 = t0Var;
                            } else if (linearLayoutManager.f607u) {
                                o0Var2 = o0Var;
                                t0Var2 = t0Var;
                                viewI0 = linearLayoutManager.I0(o0Var2, t0Var2, linearLayoutManager.v() - 1, -1, t0Var.b());
                                linearLayoutManager = this;
                            } else {
                                linearLayoutManager = this;
                                o0Var2 = o0Var;
                                t0Var2 = t0Var;
                                viewI0 = linearLayoutManager.I0(o0Var2, t0Var2, 0, v(), t0Var.b());
                            }
                            if (viewI0 != null) {
                                sVar.b(viewI0, i0.D(viewI0));
                                if (!t0Var2.f3008g) {
                                    if (sVar.f2999d) {
                                        iK = linearLayoutManager.f604r.g();
                                    } else {
                                        iK = linearLayoutManager.f604r.k();
                                    }
                                    sVar.f2998c = iK;
                                }
                            }
                        }
                        sVar.a();
                        if (linearLayoutManager.f608v) {
                            iB = t0Var2.b() - 1;
                        } else {
                            iB = 0;
                        }
                        sVar.b = iB;
                    } else {
                        o0Var2 = o0Var;
                        sVar.a();
                        if (linearLayoutManager.f608v) {
                            iB = t0Var2.b() - 1;
                        } else {
                            iB = 0;
                        }
                        sVar.b = iB;
                    }
                } else {
                    int i11 = linearLayoutManager.f610x;
                    sVar.b = i11;
                    v vVar2 = linearLayoutManager.f612z;
                    if (vVar2 != null && vVar2.f3026a >= 0) {
                        boolean z2 = vVar2.f3027c;
                        sVar.f2999d = z2;
                        if (z2) {
                            sVar.f2998c = linearLayoutManager.f604r.g() - linearLayoutManager.f612z.b;
                        } else {
                            sVar.f2998c = linearLayoutManager.f604r.k() + linearLayoutManager.f612z.b;
                        }
                    } else if (linearLayoutManager.f611y == Integer.MIN_VALUE) {
                        View viewQ2 = linearLayoutManager.q(i11);
                        if (viewQ2 == null) {
                            if (linearLayoutManager.v() > 0) {
                                sVar.f2999d = (linearLayoutManager.f610x < i0.D(linearLayoutManager.u(0))) == linearLayoutManager.f607u;
                            }
                            sVar.a();
                        } else if (linearLayoutManager.f604r.c(viewQ2) > linearLayoutManager.f604r.l()) {
                            sVar.a();
                        } else if (linearLayoutManager.f604r.e(viewQ2) - linearLayoutManager.f604r.k() < 0) {
                            sVar.f2998c = linearLayoutManager.f604r.k();
                            sVar.f2999d = false;
                        } else if (linearLayoutManager.f604r.g() - linearLayoutManager.f604r.b(viewQ2) < 0) {
                            sVar.f2998c = linearLayoutManager.f604r.g();
                            sVar.f2999d = true;
                        } else {
                            if (sVar.f2999d) {
                                int iB2 = linearLayoutManager.f604r.b(viewQ2);
                                f fVar = linearLayoutManager.f604r;
                                iE = (Integer.MIN_VALUE == fVar.f330a ? 0 : fVar.l() - fVar.f330a) + iB2;
                            } else {
                                iE = linearLayoutManager.f604r.e(viewQ2);
                            }
                            sVar.f2998c = iE;
                        }
                    } else {
                        boolean z3 = linearLayoutManager.f607u;
                        sVar.f2999d = z3;
                        if (z3) {
                            sVar.f2998c = linearLayoutManager.f604r.g() - linearLayoutManager.f611y;
                        } else {
                            sVar.f2998c = linearLayoutManager.f604r.k() + linearLayoutManager.f611y;
                        }
                    }
                }
                o0Var2 = o0Var;
            } else if (linearLayoutManager.v() != 0) {
                recyclerView = linearLayoutManager.b;
                if (recyclerView != null || (focusedChild2 = recyclerView.getFocusedChild()) == null || ((ArrayList) linearLayoutManager.f2907a.f414d).contains(focusedChild2)) {
                    focusedChild2 = null;
                }
                if (focusedChild2 != null) {
                    j0Var = (j0) focusedChild2.getLayoutParams();
                    if (j0Var.f2933a.h() && j0Var.f2933a.b() >= 0 && j0Var.f2933a.b() < t0Var2.b()) {
                        sVar.c(focusedChild2, i0.D(focusedChild2));
                        o0Var2 = o0Var;
                    }
                }
                if (linearLayoutManager.f605s != linearLayoutManager.f608v) {
                    o0Var2 = o0Var;
                } else {
                    if (sVar.f2999d) {
                        if (linearLayoutManager.f607u) {
                            viewI0 = linearLayoutManager.I0(o0Var, t0Var2, 0, linearLayoutManager.v(), t0Var2.b());
                            linearLayoutManager = this;
                        } else {
                            linearLayoutManager = this;
                            viewI0 = linearLayoutManager.I0(o0Var, t0Var, v() - 1, -1, t0Var.b());
                        }
                        o0Var2 = o0Var;
                        t0Var2 = t0Var;
                    } else if (linearLayoutManager.f607u) {
                        o0Var2 = o0Var;
                        t0Var2 = t0Var;
                        viewI0 = linearLayoutManager.I0(o0Var2, t0Var2, linearLayoutManager.v() - 1, -1, t0Var.b());
                        linearLayoutManager = this;
                    } else {
                        linearLayoutManager = this;
                        o0Var2 = o0Var;
                        t0Var2 = t0Var;
                        viewI0 = linearLayoutManager.I0(o0Var2, t0Var2, 0, v(), t0Var.b());
                    }
                    if (viewI0 != null) {
                        sVar.b(viewI0, i0.D(viewI0));
                        if (!t0Var2.f3008g && linearLayoutManager.u0() && (linearLayoutManager.f604r.e(viewI0) >= linearLayoutManager.f604r.g() || linearLayoutManager.f604r.b(viewI0) < linearLayoutManager.f604r.k())) {
                            if (sVar.f2999d) {
                                iK = linearLayoutManager.f604r.g();
                            } else {
                                iK = linearLayoutManager.f604r.k();
                            }
                            sVar.f2998c = iK;
                        }
                    }
                }
                sVar.a();
                if (linearLayoutManager.f608v) {
                    iB = t0Var2.b() - 1;
                } else {
                    iB = 0;
                }
                sVar.b = iB;
            } else {
                o0Var2 = o0Var;
                sVar.a();
                if (linearLayoutManager.f608v) {
                    iB = t0Var2.b() - 1;
                } else {
                    iB = 0;
                }
                sVar.b = iB;
            }
            sVar.f3000e = true;
        }
        u uVar = linearLayoutManager.f603q;
        uVar.f = uVar.f3023j >= 0 ? 1 : -1;
        int[] iArr = linearLayoutManager.D;
        iArr[0] = 0;
        iArr[1] = 0;
        linearLayoutManager.v0(t0Var2, iArr);
        int iK2 = linearLayoutManager.f604r.k() + Math.max(0, iArr[0]);
        int iH = linearLayoutManager.f604r.h() + Math.max(0, iArr[1]);
        if (t0Var2.f3008g && (i8 = linearLayoutManager.f610x) != -1 && linearLayoutManager.f611y != Integer.MIN_VALUE && (viewQ = linearLayoutManager.q(i8)) != null) {
            if (linearLayoutManager.f607u) {
                iG = linearLayoutManager.f604r.g() - linearLayoutManager.f604r.b(viewQ);
                iE2 = linearLayoutManager.f611y;
            } else {
                iE2 = linearLayoutManager.f604r.e(viewQ) - linearLayoutManager.f604r.k();
                iG = linearLayoutManager.f611y;
            }
            int i12 = iG - iE2;
            if (i12 > 0) {
                iK2 += i12;
            } else {
                iH -= i12;
            }
        }
        if (!sVar.f2999d ? !linearLayoutManager.f607u : linearLayoutManager.f607u) {
            i10 = 1;
        }
        linearLayoutManager.P0(o0Var2, t0Var2, sVar, i10);
        p(o0Var);
        linearLayoutManager.f603q.f3025l = linearLayoutManager.f604r.i() == 0 && linearLayoutManager.f604r.f() == 0;
        linearLayoutManager.f603q.getClass();
        linearLayoutManager.f603q.f3022i = 0;
        if (sVar.f2999d) {
            linearLayoutManager.Y0(sVar.b, sVar.f2998c);
            u uVar2 = linearLayoutManager.f603q;
            uVar2.f3021h = iK2;
            linearLayoutManager.C0(o0Var2, uVar2, t0Var2, false);
            u uVar3 = linearLayoutManager.f603q;
            i5 = uVar3.b;
            int i13 = uVar3.f3018d;
            int i14 = uVar3.f3017c;
            if (i14 > 0) {
                iH += i14;
            }
            linearLayoutManager.X0(sVar.b, sVar.f2998c);
            u uVar4 = linearLayoutManager.f603q;
            uVar4.f3021h = iH;
            uVar4.f3018d += uVar4.f3019e;
            linearLayoutManager.C0(o0Var2, uVar4, t0Var2, false);
            u uVar5 = linearLayoutManager.f603q;
            i4 = uVar5.b;
            int i15 = uVar5.f3017c;
            if (i15 > 0) {
                linearLayoutManager.Y0(i13, i5);
                u uVar6 = linearLayoutManager.f603q;
                uVar6.f3021h = i15;
                linearLayoutManager.C0(o0Var2, uVar6, t0Var2, false);
                i5 = linearLayoutManager.f603q.b;
            }
        } else {
            linearLayoutManager.X0(sVar.b, sVar.f2998c);
            u uVar7 = linearLayoutManager.f603q;
            uVar7.f3021h = iH;
            linearLayoutManager.C0(o0Var2, uVar7, t0Var2, false);
            u uVar8 = linearLayoutManager.f603q;
            i4 = uVar8.b;
            int i16 = uVar8.f3018d;
            int i17 = uVar8.f3017c;
            if (i17 > 0) {
                iK2 += i17;
            }
            linearLayoutManager.Y0(sVar.b, sVar.f2998c);
            u uVar9 = linearLayoutManager.f603q;
            uVar9.f3021h = iK2;
            uVar9.f3018d += uVar9.f3019e;
            linearLayoutManager.C0(o0Var2, uVar9, t0Var2, false);
            u uVar10 = linearLayoutManager.f603q;
            i5 = uVar10.b;
            int i18 = uVar10.f3017c;
            if (i18 > 0) {
                linearLayoutManager.X0(i16, i4);
                u uVar11 = linearLayoutManager.f603q;
                uVar11.f3021h = i18;
                linearLayoutManager.C0(o0Var2, uVar11, t0Var2, false);
                i4 = linearLayoutManager.f603q.b;
            }
        }
        if (linearLayoutManager.v() > 0) {
            if (linearLayoutManager.f607u ^ linearLayoutManager.f608v) {
                int iJ1 = linearLayoutManager.J0(i4, o0Var2, t0Var2, true);
                i6 = i5 + iJ1;
                i7 = i4 + iJ1;
                iJ0 = linearLayoutManager.K0(i6, o0Var2, t0Var2, false);
            } else {
                int iK0 = linearLayoutManager.K0(i5, o0Var2, t0Var2, true);
                i6 = i5 + iK0;
                i7 = i4 + iK0;
                iJ0 = linearLayoutManager.J0(i7, o0Var2, t0Var2, false);
            }
            i5 = i6 + iJ0;
            i4 = i7 + iJ0;
        }
        if (t0Var2.f3012k && linearLayoutManager.v() != 0 && !t0Var2.f3008g && linearLayoutManager.u0()) {
            List list2 = o0Var2.f2975d;
            int size = list2.size();
            int iD = i0.D(linearLayoutManager.u(0));
            int iC = 0;
            int iC2 = 0;
            for (int i19 = 0; i19 < size; i19++) {
                w0 w0Var = (w0) list2.get(i19);
                boolean zH = w0Var.h();
                View view = w0Var.f3048a;
                if (!zH) {
                    if ((w0Var.b() < iD) != linearLayoutManager.f607u) {
                        iC += linearLayoutManager.f604r.c(view);
                    } else {
                        iC2 += linearLayoutManager.f604r.c(view);
                    }
                }
            }
            linearLayoutManager.f603q.f3024k = list2;
            if (iC > 0) {
                linearLayoutManager.Y0(i0.D(linearLayoutManager.M0()), i5);
                u uVar12 = linearLayoutManager.f603q;
                uVar12.f3021h = iC;
                uVar12.f3017c = 0;
                uVar12.a(null);
                linearLayoutManager.C0(o0Var2, linearLayoutManager.f603q, t0Var2, false);
            }
            if (iC2 > 0) {
                linearLayoutManager.X0(i0.D(linearLayoutManager.L0()), i4);
                u uVar13 = linearLayoutManager.f603q;
                uVar13.f3021h = iC2;
                uVar13.f3017c = 0;
                list = null;
                uVar13.a(null);
                linearLayoutManager.C0(o0Var2, linearLayoutManager.f603q, t0Var2, false);
            } else {
                list = null;
            }
            linearLayoutManager.f603q.f3024k = list;
        }
        if (t0Var2.f3008g) {
            sVar.d();
        } else {
            f fVar2 = linearLayoutManager.f604r;
            fVar2.f330a = fVar2.l();
        }
        linearLayoutManager.f605s = linearLayoutManager.f608v;
    }

    public final void W0(int i3, int i4, boolean z2, t0 t0Var) {
        int iK;
        this.f603q.f3025l = this.f604r.i() == 0 && this.f604r.f() == 0;
        this.f603q.f = i3;
        int[] iArr = this.D;
        iArr[0] = 0;
        iArr[1] = 0;
        v0(t0Var, iArr);
        int iMax = Math.max(0, iArr[0]);
        int iMax2 = Math.max(0, iArr[1]);
        boolean z3 = i3 == 1;
        u uVar = this.f603q;
        int i5 = z3 ? iMax2 : iMax;
        uVar.f3021h = i5;
        if (!z3) {
            iMax = iMax2;
        }
        uVar.f3022i = iMax;
        if (z3) {
            uVar.f3021h = this.f604r.h() + i5;
            View viewL0 = L0();
            u uVar2 = this.f603q;
            uVar2.f3019e = this.f607u ? -1 : 1;
            int iD = i0.D(viewL0);
            u uVar3 = this.f603q;
            uVar2.f3018d = iD + uVar3.f3019e;
            uVar3.b = this.f604r.b(viewL0);
            iK = this.f604r.b(viewL0) - this.f604r.g();
        } else {
            View viewM0 = M0();
            u uVar4 = this.f603q;
            uVar4.f3021h = this.f604r.k() + uVar4.f3021h;
            u uVar5 = this.f603q;
            uVar5.f3019e = this.f607u ? 1 : -1;
            int iD2 = i0.D(viewM0);
            u uVar6 = this.f603q;
            uVar5.f3018d = iD2 + uVar6.f3019e;
            uVar6.b = this.f604r.e(viewM0);
            iK = (-this.f604r.e(viewM0)) + this.f604r.k();
        }
        u uVar7 = this.f603q;
        uVar7.f3017c = i4;
        if (z2) {
            uVar7.f3017c = i4 - iK;
        }
        uVar7.f3020g = iK;
    }

    @Override // q0.i0
    public void X(t0 t0Var) {
        this.f612z = null;
        this.f610x = -1;
        this.f611y = Integer.MIN_VALUE;
        this.A.d();
    }

    public final void X0(int i3, int i4) {
        this.f603q.f3017c = this.f604r.g() - i4;
        u uVar = this.f603q;
        uVar.f3019e = this.f607u ? -1 : 1;
        uVar.f3018d = i3;
        uVar.f = 1;
        uVar.b = i4;
        uVar.f3020g = Integer.MIN_VALUE;
    }

    @Override // q0.i0
    public final void Y(Parcelable parcelable) {
        if (parcelable instanceof v) {
            this.f612z = (v) parcelable;
            g0();
        }
    }

    public final void Y0(int i3, int i4) {
        this.f603q.f3017c = i4 - this.f604r.k();
        u uVar = this.f603q;
        uVar.f3018d = i3;
        uVar.f3019e = this.f607u ? 1 : -1;
        uVar.f = -1;
        uVar.b = i4;
        uVar.f3020g = Integer.MIN_VALUE;
    }

    @Override // q0.i0
    public final Parcelable Z() {
        v vVar = this.f612z;
        if (vVar != null) {
            v vVar2 = new v();
            vVar2.f3026a = vVar.f3026a;
            vVar2.b = vVar.b;
            vVar2.f3027c = vVar.f3027c;
            return vVar2;
        }
        v vVar3 = new v();
        if (v() <= 0) {
            vVar3.f3026a = -1;
            return vVar3;
        }
        B0();
        boolean z2 = this.f605s ^ this.f607u;
        vVar3.f3027c = z2;
        if (z2) {
            View viewL0 = L0();
            vVar3.b = this.f604r.g() - this.f604r.b(viewL0);
            vVar3.f3026a = i0.D(viewL0);
            return vVar3;
        }
        View viewM0 = M0();
        vVar3.f3026a = i0.D(viewM0);
        vVar3.b = this.f604r.e(viewM0) - this.f604r.k();
        return vVar3;
    }

    @Override // q0.s0
    public final PointF a(int i3) {
        if (v() == 0) {
            return null;
        }
        int i4 = (i3 < i0.D(u(0))) != this.f607u ? -1 : 1;
        return this.f602p == 0 ? new PointF(i4, 0.0f) : new PointF(0.0f, i4);
    }

    @Override // q0.i0
    public final void c(String str) {
        RecyclerView recyclerView;
        if (this.f612z != null || (recyclerView = this.b) == null) {
            return;
        }
        recyclerView.i(str);
    }

    @Override // q0.i0
    public final boolean d() {
        return this.f602p == 0;
    }

    @Override // q0.i0
    public final boolean e() {
        return this.f602p == 1;
    }

    @Override // q0.i0
    public final void h(int i3, int i4, t0 t0Var, n nVar) {
        if (this.f602p != 0) {
            i3 = i4;
        }
        if (v() == 0 || i3 == 0) {
            return;
        }
        B0();
        W0(i3 > 0 ? 1 : -1, Math.abs(i3), true, t0Var);
        w0(t0Var, this.f603q, nVar);
    }

    @Override // q0.i0
    public int h0(int i3, o0 o0Var, t0 t0Var) {
        if (this.f602p == 1) {
            return 0;
        }
        return T0(i3, o0Var, t0Var);
    }

    @Override // q0.i0
    public final void i(int i3, n nVar) {
        boolean z2;
        int i4;
        v vVar = this.f612z;
        if (vVar == null || (i4 = vVar.f3026a) < 0) {
            S0();
            z2 = this.f607u;
            i4 = this.f610x;
            if (i4 == -1) {
                i4 = z2 ? i3 - 1 : 0;
            }
        } else {
            z2 = vVar.f3027c;
        }
        int i5 = z2 ? -1 : 1;
        for (int i6 = 0; i6 < this.C && i4 >= 0 && i4 < i3; i6++) {
            nVar.a(i4, 0);
            i4 += i5;
        }
    }

    @Override // q0.i0
    public final void i0(int i3) {
        this.f610x = i3;
        this.f611y = Integer.MIN_VALUE;
        v vVar = this.f612z;
        if (vVar != null) {
            vVar.f3026a = -1;
        }
        g0();
    }

    @Override // q0.i0
    public final int j(t0 t0Var) {
        return x0(t0Var);
    }

    @Override // q0.i0
    public int j0(int i3, o0 o0Var, t0 t0Var) {
        if (this.f602p == 0) {
            return 0;
        }
        return T0(i3, o0Var, t0Var);
    }

    @Override // q0.i0
    public int k(t0 t0Var) {
        return y0(t0Var);
    }

    @Override // q0.i0
    public int l(t0 t0Var) {
        return z0(t0Var);
    }

    @Override // q0.i0
    public final int m(t0 t0Var) {
        return x0(t0Var);
    }

    @Override // q0.i0
    public int n(t0 t0Var) {
        return y0(t0Var);
    }

    @Override // q0.i0
    public int o(t0 t0Var) {
        return z0(t0Var);
    }

    @Override // q0.i0
    public final View q(int i3) {
        int iV = v();
        if (iV == 0) {
            return null;
        }
        int iD = i3 - i0.D(u(0));
        if (iD >= 0 && iD < iV) {
            View viewU = u(iD);
            if (i0.D(viewU) == i3) {
                return viewU;
            }
        }
        return super.q(i3);
    }

    @Override // q0.i0
    public final boolean q0() {
        if (this.f2917m != 1073741824 && this.f2916l != 1073741824) {
            int iV = v();
            for (int i3 = 0; i3 < iV; i3++) {
                ViewGroup.LayoutParams layoutParams = u(i3).getLayoutParams();
                if (layoutParams.width < 0 && layoutParams.height < 0) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // q0.i0
    public j0 r() {
        return new j0(-2, -2);
    }

    @Override // q0.i0
    public void s0(RecyclerView recyclerView, int i3) {
        w wVar = new w(recyclerView.getContext());
        wVar.f3033a = i3;
        t0(wVar);
    }

    @Override // q0.i0
    public boolean u0() {
        return this.f612z == null && this.f605s == this.f608v;
    }

    public void v0(t0 t0Var, int[] iArr) {
        int i3;
        int iL = t0Var.f3004a != -1 ? this.f604r.l() : 0;
        if (this.f603q.f == -1) {
            i3 = 0;
        } else {
            i3 = iL;
            iL = 0;
        }
        iArr[0] = iL;
        iArr[1] = i3;
    }

    public void w0(t0 t0Var, u uVar, n nVar) {
        int i3 = uVar.f3018d;
        if (i3 < 0 || i3 >= t0Var.b()) {
            return;
        }
        nVar.a(i3, Math.max(0, uVar.f3020g));
    }

    public final int x0(t0 t0Var) {
        if (v() == 0) {
            return 0;
        }
        B0();
        f fVar = this.f604r;
        boolean z2 = !this.f609w;
        return a.m(t0Var, fVar, E0(z2), D0(z2), this, this.f609w);
    }

    public final int y0(t0 t0Var) {
        if (v() == 0) {
            return 0;
        }
        B0();
        f fVar = this.f604r;
        boolean z2 = !this.f609w;
        return a.n(t0Var, fVar, E0(z2), D0(z2), this, this.f609w, this.f607u);
    }

    public final int z0(t0 t0Var) {
        if (v() == 0) {
            return 0;
        }
        B0();
        f fVar = this.f604r;
        boolean z2 = !this.f609w;
        return a.o(t0Var, fVar, E0(z2), D0(z2), this, this.f609w);
    }

    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i3, int i4) {
        this.f602p = 1;
        this.f606t = false;
        this.f607u = false;
        this.f608v = false;
        this.f609w = true;
        this.f610x = -1;
        this.f611y = Integer.MIN_VALUE;
        this.f612z = null;
        this.A = new s();
        this.B = new t();
        this.C = 2;
        this.D = new int[2];
        h0 h0VarE = i0.E(context, attributeSet, i3, i4);
        U0(h0VarE.f2897a);
        boolean z2 = h0VarE.f2898c;
        c(null);
        if (z2 != this.f606t) {
            this.f606t = z2;
            g0();
        }
        V0(h0VarE.f2899d);
    }
}
