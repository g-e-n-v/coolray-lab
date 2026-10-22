package q0;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public androidx.fragment.app.f f2907a;
    public RecyclerView b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final androidx.activity.result.c f2908c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final androidx.activity.result.c f2909d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public w f2910e;
    public boolean f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f2911g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f2912h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f2913i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f2914j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f2915k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f2916l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f2917m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f2918n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f2919o;

    public i0() {
        g0 g0Var = new g0(this, 0);
        g0 g0Var2 = new g0(this, 1);
        this.f2908c = new androidx.activity.result.c(g0Var);
        this.f2909d = new androidx.activity.result.c(g0Var2);
        this.f = false;
        this.f2911g = false;
        this.f2912h = true;
        this.f2913i = true;
    }

    public static int D(View view) {
        return ((j0) view.getLayoutParams()).f2933a.b();
    }

    public static h0 E(Context context, AttributeSet attributeSet, int i3, int i4) {
        h0 h0Var = new h0();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, p0.a.f2683a, i3, i4);
        h0Var.f2897a = typedArrayObtainStyledAttributes.getInt(0, 1);
        h0Var.b = typedArrayObtainStyledAttributes.getInt(10, 1);
        h0Var.f2898c = typedArrayObtainStyledAttributes.getBoolean(9, false);
        h0Var.f2899d = typedArrayObtainStyledAttributes.getBoolean(11, false);
        typedArrayObtainStyledAttributes.recycle();
        return h0Var;
    }

    public static boolean I(int i3, int i4, int i5) {
        int mode = View.MeasureSpec.getMode(i4);
        int size = View.MeasureSpec.getSize(i4);
        if (i5 > 0 && i3 != i5) {
            return false;
        }
        if (mode == Integer.MIN_VALUE) {
            return size >= i3;
        }
        if (mode != 0) {
            return mode == 1073741824 && size == i3;
        }
        return true;
    }

    public static void J(View view, int i3, int i4, int i5, int i6) {
        j0 j0Var = (j0) view.getLayoutParams();
        Rect rect = j0Var.b;
        view.layout(i3 + rect.left + ((ViewGroup.MarginLayoutParams) j0Var).leftMargin, i4 + rect.top + ((ViewGroup.MarginLayoutParams) j0Var).topMargin, (i5 - rect.right) - ((ViewGroup.MarginLayoutParams) j0Var).rightMargin, (i6 - rect.bottom) - ((ViewGroup.MarginLayoutParams) j0Var).bottomMargin);
    }

    public static int g(int i3, int i4, int i5) {
        int mode = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i3);
        if (mode != Integer.MIN_VALUE) {
            return mode != 1073741824 ? Math.max(i4, i5) : size;
        }
        return Math.min(size, Math.max(i4, i5));
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001a  */
    /* JADX WARN: Code duplicated, block: B:14:0x0022  */
    /* JADX WARN: Code duplicated, block: B:5:0x0010  */
    public static int w(boolean z2, int i3, int i4, int i5, int i6) {
        int iMax = Math.max(0, i3 - i5);
        if (z2) {
            if (i6 >= 0) {
                i4 = 1073741824;
            } else if (i6 != -1 || (i4 != Integer.MIN_VALUE && (i4 == 0 || i4 != 1073741824))) {
                i4 = 0;
                i6 = 0;
            } else {
                i6 = iMax;
            }
        } else if (i6 >= 0) {
            i4 = 1073741824;
        } else if (i6 == -1) {
            i6 = iMax;
        } else if (i6 != -2) {
            i4 = 0;
            i6 = 0;
        } else if (i4 == Integer.MIN_VALUE || i4 == 1073741824) {
            i6 = iMax;
            i4 = Integer.MIN_VALUE;
        } else {
            i6 = iMax;
            i4 = 0;
        }
        return View.MeasureSpec.makeMeasureSpec(i6, i4);
    }

    public static void y(View view, Rect rect) {
        int[] iArr = RecyclerView.f613s0;
        j0 j0Var = (j0) view.getLayoutParams();
        Rect rect2 = j0Var.b;
        rect.set((view.getLeft() - rect2.left) - ((ViewGroup.MarginLayoutParams) j0Var).leftMargin, (view.getTop() - rect2.top) - ((ViewGroup.MarginLayoutParams) j0Var).topMargin, view.getRight() + rect2.right + ((ViewGroup.MarginLayoutParams) j0Var).rightMargin, view.getBottom() + rect2.bottom + ((ViewGroup.MarginLayoutParams) j0Var).bottomMargin);
    }

    public final int A() {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            return recyclerView.getPaddingLeft();
        }
        return 0;
    }

    public final int B() {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            return recyclerView.getPaddingRight();
        }
        return 0;
    }

    public final int C() {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            return recyclerView.getPaddingTop();
        }
        return 0;
    }

    public int F(o0 o0Var, t0 t0Var) {
        RecyclerView recyclerView = this.b;
        if (recyclerView == null || recyclerView.f633k == null || !e()) {
            return 1;
        }
        return this.b.f633k.a();
    }

    public final void G(View view, Rect rect) {
        Matrix matrix;
        Rect rect2 = ((j0) view.getLayoutParams()).b;
        rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
        if (this.b != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
            RectF rectF = this.b.f631j;
            rectF.set(rect);
            matrix.mapRect(rectF);
            rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
        }
        rect.offset(view.getLeft(), view.getTop());
    }

    public abstract boolean H();

    public void K(int i3) {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            int i4 = recyclerView.f622e.i();
            for (int i5 = 0; i5 < i4; i5++) {
                recyclerView.f622e.h(i5).offsetLeftAndRight(i3);
            }
        }
    }

    public void L(int i3) {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            int i4 = recyclerView.f622e.i();
            for (int i5 = 0; i5 < i4; i5++) {
                recyclerView.f622e.h(i5).offsetTopAndBottom(i3);
            }
        }
    }

    public abstract void M(RecyclerView recyclerView);

    public abstract View N(View view, int i3, o0 o0Var, t0 t0Var);

    public void O(AccessibilityEvent accessibilityEvent) {
        RecyclerView recyclerView = this.b;
        o0 o0Var = recyclerView.b;
        t0 t0Var = recyclerView.f619c0;
        if (recyclerView == null || accessibilityEvent == null) {
            return;
        }
        boolean z2 = true;
        if (!recyclerView.canScrollVertically(1) && !this.b.canScrollVertically(-1) && !this.b.canScrollHorizontally(-1) && !this.b.canScrollHorizontally(1)) {
            z2 = false;
        }
        accessibilityEvent.setScrollable(z2);
        a0 a0Var = this.b.f633k;
        if (a0Var != null) {
            accessibilityEvent.setItemCount(a0Var.a());
        }
    }

    public final void P(View view, d0.f fVar) {
        w0 w0VarI = RecyclerView.I(view);
        if (w0VarI == null || w0VarI.h()) {
            return;
        }
        androidx.fragment.app.f fVar2 = this.f2907a;
        if (((ArrayList) fVar2.f414d).contains(w0VarI.f3048a)) {
            return;
        }
        RecyclerView recyclerView = this.b;
        Q(recyclerView.b, recyclerView.f619c0, view, fVar);
    }

    public void Q(o0 o0Var, t0 t0Var, View view, d0.f fVar) {
        fVar.f(d0.e.a(false, e() ? D(view) : 0, 1, d() ? D(view) : 0, 1));
    }

    public void R(int i3, int i4) {
    }

    public void S() {
    }

    public void T(int i3, int i4) {
    }

    public void U(int i3, int i4) {
    }

    public void V(int i3, int i4) {
    }

    public abstract void W(o0 o0Var, t0 t0Var);

    public abstract void X(t0 t0Var);

    public abstract void Y(Parcelable parcelable);

    public abstract Parcelable Z();

    public void a0(int i3) {
    }

    public final void b(View view, int i3, boolean z2) {
        w0 w0VarI = RecyclerView.I(view);
        if (z2 || w0VarI.h()) {
            l.k kVar = (l.k) this.b.f.f100a;
            h1 h1VarA = (h1) kVar.getOrDefault(w0VarI, null);
            if (h1VarA == null) {
                h1VarA = h1.a();
                kVar.put(w0VarI, h1VarA);
            }
            h1VarA.f2901a |= 1;
        } else {
            this.b.f.D(w0VarI);
        }
        j0 j0Var = (j0) view.getLayoutParams();
        if (w0VarI.p() || w0VarI.i()) {
            if (w0VarI.i()) {
                w0VarI.f3059n.j(w0VarI);
            } else {
                w0VarI.f3055j &= -33;
            }
            this.f2907a.c(view, i3, view.getLayoutParams(), false);
        } else {
            if (view.getParent() == this.b) {
                androidx.fragment.app.f fVar = this.f2907a;
                c cVar = (c) fVar.f413c;
                int iIndexOfChild = ((z) fVar.b).f3073a.indexOfChild(view);
                int iB = (iIndexOfChild == -1 || cVar.d(iIndexOfChild)) ? -1 : iIndexOfChild - cVar.b(iIndexOfChild);
                if (i3 == -1) {
                    i3 = this.f2907a.i();
                }
                if (iB == -1) {
                    throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.b.indexOfChild(view) + this.b.y());
                }
                if (iB != i3) {
                    i0 i0Var = this.b.f635l;
                    View viewU = i0Var.u(iB);
                    if (viewU == null) {
                        throw new IllegalArgumentException("Cannot move a child from non-existing index:" + iB + i0Var.b.toString());
                    }
                    i0Var.u(iB);
                    i0Var.f2907a.d(iB);
                    j0 j0Var2 = (j0) viewU.getLayoutParams();
                    w0 w0VarI2 = RecyclerView.I(viewU);
                    if (w0VarI2.h()) {
                        l.k kVar2 = (l.k) i0Var.b.f.f100a;
                        h1 h1VarA2 = (h1) kVar2.getOrDefault(w0VarI2, null);
                        if (h1VarA2 == null) {
                            h1VarA2 = h1.a();
                            kVar2.put(w0VarI2, h1VarA2);
                        }
                        h1VarA2.f2901a = 1 | h1VarA2.f2901a;
                    } else {
                        i0Var.b.f.D(w0VarI2);
                    }
                    i0Var.f2907a.c(viewU, i3, j0Var2, w0VarI2.h());
                }
            } else {
                this.f2907a.b(view, i3, false);
                j0Var.f2934c = true;
                w wVar = this.f2910e;
                if (wVar != null && wVar.f3036e) {
                    wVar.b.getClass();
                    w0 w0VarI3 = RecyclerView.I(view);
                    if ((w0VarI3 != null ? w0VarI3.b() : -1) == wVar.f3033a) {
                        wVar.f = view;
                    }
                }
            }
        }
        if (j0Var.f2935d) {
            w0VarI.f3048a.invalidate();
            j0Var.f2935d = false;
        }
    }

    public final void b0(o0 o0Var) {
        for (int iV = v() - 1; iV >= 0; iV--) {
            if (!RecyclerView.I(u(iV)).o()) {
                View viewU = u(iV);
                e0(iV);
                o0Var.f(viewU);
            }
        }
    }

    public abstract void c(String str);

    public final void c0(o0 o0Var) {
        ArrayList arrayList = o0Var.f2973a;
        int size = arrayList.size();
        for (int i3 = size - 1; i3 >= 0; i3--) {
            View view = ((w0) arrayList.get(i3)).f3048a;
            w0 w0VarI = RecyclerView.I(view);
            if (!w0VarI.o()) {
                w0VarI.n(false);
                if (w0VarI.j()) {
                    this.b.removeDetachedView(view, false);
                }
                e0 e0Var = this.b.H;
                if (e0Var != null) {
                    e0Var.d(w0VarI);
                }
                w0VarI.n(true);
                w0 w0VarI2 = RecyclerView.I(view);
                w0VarI2.f3059n = null;
                w0VarI2.f3060o = false;
                w0VarI2.f3055j &= -33;
                o0Var.g(w0VarI2);
            }
        }
        arrayList.clear();
        ArrayList arrayList2 = o0Var.b;
        if (arrayList2 != null) {
            arrayList2.clear();
        }
        if (size > 0) {
            this.b.invalidate();
        }
    }

    public abstract boolean d();

    public final void d0(View view, o0 o0Var) {
        androidx.fragment.app.f fVar = this.f2907a;
        z zVar = (z) fVar.b;
        int iIndexOfChild = zVar.f3073a.indexOfChild(view);
        if (iIndexOfChild >= 0) {
            if (((c) fVar.f413c).f(iIndexOfChild)) {
                fVar.z(view);
            }
            zVar.h(iIndexOfChild);
        }
        o0Var.f(view);
    }

    public abstract boolean e();

    public final void e0(int i3) {
        if (u(i3) != null) {
            androidx.fragment.app.f fVar = this.f2907a;
            int iO = fVar.o(i3);
            z zVar = (z) fVar.b;
            View childAt = zVar.f3073a.getChildAt(iO);
            if (childAt == null) {
                return;
            }
            if (((c) fVar.f413c).f(iO)) {
                fVar.z(childAt);
            }
            zVar.h(iO);
        }
    }

    public boolean f(j0 j0Var) {
        return j0Var != null;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:33:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:35:0x00be  */
    public final boolean f0(RecyclerView recyclerView, View view, Rect rect, boolean z2, boolean z3) {
        int iA = A();
        int iC = C();
        int iB = this.f2918n - B();
        int iZ = this.f2919o - z();
        int left = (view.getLeft() + rect.left) - view.getScrollX();
        int top = (view.getTop() + rect.top) - view.getScrollY();
        int iWidth = rect.width() + left;
        int iHeight = rect.height() + top;
        int i3 = left - iA;
        int iMin = Math.min(0, i3);
        int i4 = top - iC;
        int iMin2 = Math.min(0, i4);
        int i5 = iWidth - iB;
        int iMax = Math.max(0, i5);
        int iMax2 = Math.max(0, iHeight - iZ);
        RecyclerView recyclerView2 = this.b;
        WeakHashMap weakHashMap = c0.p0.f727a;
        if (c0.b0.d(recyclerView2) != 1) {
            if (iMin == 0) {
                iMin = Math.min(i3, iMax);
            }
            iMax = iMin;
        } else if (iMax == 0) {
            iMax = Math.max(iMin, i5);
        }
        if (iMin2 == 0) {
            iMin2 = Math.min(i4, iMax2);
        }
        int[] iArr = {iMax, iMin2};
        int i6 = iArr[0];
        int i7 = iArr[1];
        if (z3) {
            View focusedChild = recyclerView.getFocusedChild();
            if (focusedChild != null) {
                int iA2 = A();
                int iC2 = C();
                int iB2 = this.f2918n - B();
                int iZ2 = this.f2919o - z();
                Rect rect2 = this.b.f627h;
                y(focusedChild, rect2);
                if (rect2.left - i6 < iB2 && rect2.right - i6 > iA2 && rect2.top - i7 < iZ2 && rect2.bottom - i7 > iC2) {
                    if (i6 == 0) {
                    }
                    if (z2) {
                        recyclerView.scrollBy(i6, i7);
                        return true;
                    }
                    recyclerView.Z(i6, i7, false);
                    return true;
                }
            }
        } else if (i6 == 0 || i7 != 0) {
            if (z2) {
                recyclerView.scrollBy(i6, i7);
                return true;
            }
            recyclerView.Z(i6, i7, false);
            return true;
        }
        return false;
    }

    public final void g0() {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            recyclerView.requestLayout();
        }
    }

    public abstract void h(int i3, int i4, t0 t0Var, n nVar);

    public abstract int h0(int i3, o0 o0Var, t0 t0Var);

    public void i(int i3, n nVar) {
    }

    public abstract void i0(int i3);

    public abstract int j(t0 t0Var);

    public abstract int j0(int i3, o0 o0Var, t0 t0Var);

    public abstract int k(t0 t0Var);

    public final void k0(RecyclerView recyclerView) {
        l0(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
    }

    public abstract int l(t0 t0Var);

    public final void l0(int i3, int i4) {
        this.f2918n = View.MeasureSpec.getSize(i3);
        int mode = View.MeasureSpec.getMode(i3);
        this.f2916l = mode;
        if (mode == 0) {
            int[] iArr = RecyclerView.f613s0;
        }
        this.f2919o = View.MeasureSpec.getSize(i4);
        int mode2 = View.MeasureSpec.getMode(i4);
        this.f2917m = mode2;
        if (mode2 == 0) {
            int[] iArr2 = RecyclerView.f613s0;
        }
    }

    public abstract int m(t0 t0Var);

    public void m0(Rect rect, int i3, int i4) {
        int iB = B() + A() + rect.width();
        int iZ = z() + C() + rect.height();
        RecyclerView recyclerView = this.b;
        WeakHashMap weakHashMap = c0.p0.f727a;
        this.b.setMeasuredDimension(g(i3, iB, c0.a0.e(recyclerView)), g(i4, iZ, c0.a0.d(this.b)));
    }

    public abstract int n(t0 t0Var);

    public final void n0(int i3, int i4) {
        int iV = v();
        if (iV == 0) {
            this.b.n(i3, i4);
            return;
        }
        int i5 = Integer.MIN_VALUE;
        int i6 = Integer.MAX_VALUE;
        int i7 = Integer.MIN_VALUE;
        int i8 = Integer.MAX_VALUE;
        for (int i9 = 0; i9 < iV; i9++) {
            View viewU = u(i9);
            Rect rect = this.b.f627h;
            y(viewU, rect);
            int i10 = rect.left;
            if (i10 < i8) {
                i8 = i10;
            }
            int i11 = rect.right;
            if (i11 > i5) {
                i5 = i11;
            }
            int i12 = rect.top;
            if (i12 < i6) {
                i6 = i12;
            }
            int i13 = rect.bottom;
            if (i13 > i7) {
                i7 = i13;
            }
        }
        this.b.f627h.set(i8, i6, i5, i7);
        m0(this.b.f627h, i3, i4);
    }

    public abstract int o(t0 t0Var);

    public final void o0(RecyclerView recyclerView) {
        if (recyclerView == null) {
            this.b = null;
            this.f2907a = null;
            this.f2918n = 0;
            this.f2919o = 0;
        } else {
            this.b = recyclerView;
            this.f2907a = recyclerView.f622e;
            this.f2918n = recyclerView.getWidth();
            this.f2919o = recyclerView.getHeight();
        }
        this.f2916l = 1073741824;
        this.f2917m = 1073741824;
    }

    public final void p(o0 o0Var) {
        for (int iV = v() - 1; iV >= 0; iV--) {
            View viewU = u(iV);
            w0 w0VarI = RecyclerView.I(viewU);
            if (!w0VarI.o()) {
                if (!w0VarI.f() || w0VarI.h() || this.b.f633k.b) {
                    u(iV);
                    this.f2907a.d(iV);
                    o0Var.h(viewU);
                    this.b.f.D(w0VarI);
                } else {
                    e0(iV);
                    o0Var.g(w0VarI);
                }
            }
        }
    }

    public final boolean p0(View view, int i3, int i4, j0 j0Var) {
        return (!view.isLayoutRequested() && this.f2912h && I(view.getWidth(), i3, ((ViewGroup.MarginLayoutParams) j0Var).width) && I(view.getHeight(), i4, ((ViewGroup.MarginLayoutParams) j0Var).height)) ? false : true;
    }

    public View q(int i3) {
        int iV = v();
        for (int i4 = 0; i4 < iV; i4++) {
            View viewU = u(i4);
            w0 w0VarI = RecyclerView.I(viewU);
            if (w0VarI != null && w0VarI.b() == i3 && !w0VarI.o() && (this.b.f619c0.f3008g || !w0VarI.h())) {
                return viewU;
            }
        }
        return null;
    }

    public boolean q0() {
        return false;
    }

    public abstract j0 r();

    public final boolean r0(View view, int i3, int i4, j0 j0Var) {
        return (this.f2912h && I(view.getMeasuredWidth(), i3, ((ViewGroup.MarginLayoutParams) j0Var).width) && I(view.getMeasuredHeight(), i4, ((ViewGroup.MarginLayoutParams) j0Var).height)) ? false : true;
    }

    public j0 s(Context context, AttributeSet attributeSet) {
        return new j0(context, attributeSet);
    }

    public abstract void s0(RecyclerView recyclerView, int i3);

    public j0 t(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof j0) {
            return new j0((j0) layoutParams);
        }
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new j0((ViewGroup.MarginLayoutParams) layoutParams) : new j0(layoutParams);
    }

    public final void t0(w wVar) {
        w wVar2 = this.f2910e;
        if (wVar2 != null && wVar != wVar2 && wVar2.f3036e) {
            wVar2.g();
        }
        this.f2910e = wVar;
        RecyclerView recyclerView = this.b;
        v0 v0Var = recyclerView.W;
        v0Var.f3032g.removeCallbacks(v0Var);
        v0Var.f3029c.abortAnimation();
        if (wVar.f3038h) {
            Log.w("RecyclerView", "An instance of " + wVar.getClass().getSimpleName() + " was started more than once. Each instance of" + wVar.getClass().getSimpleName() + " is intended to only be used once. You should create a new instance for each use.");
        }
        wVar.b = recyclerView;
        wVar.f3034c = this;
        int i3 = wVar.f3033a;
        if (i3 == -1) {
            throw new IllegalArgumentException("Invalid target position");
        }
        recyclerView.f619c0.f3004a = i3;
        wVar.f3036e = true;
        wVar.f3035d = true;
        wVar.f = recyclerView.f635l.q(i3);
        wVar.b.W.a();
        wVar.f3038h = true;
    }

    public final View u(int i3) {
        androidx.fragment.app.f fVar = this.f2907a;
        if (fVar != null) {
            return fVar.h(i3);
        }
        return null;
    }

    public abstract boolean u0();

    public final int v() {
        androidx.fragment.app.f fVar = this.f2907a;
        if (fVar != null) {
            return fVar.i();
        }
        return 0;
    }

    public int x(o0 o0Var, t0 t0Var) {
        RecyclerView recyclerView = this.b;
        if (recyclerView == null || recyclerView.f633k == null || !d()) {
            return 1;
        }
        return this.b.f633k.a();
    }

    public final int z() {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            return recyclerView.getPaddingBottom();
        }
        return 0;
    }
}
