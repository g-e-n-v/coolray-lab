package androidx.recyclerview.widget;

import android.R;
import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import androidx.activity.result.c;
import androidx.fragment.app.f;
import c0.b0;
import c0.h0;
import c0.p0;
import c0.q;
import i0.d;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.WeakHashMap;
import l.k;
import q0.a;
import q0.a0;
import q0.a1;
import q0.b;
import q0.c0;
import q0.d0;
import q0.e0;
import q0.f0;
import q0.h1;
import q0.i0;
import q0.j;
import q0.j0;
import q0.k0;
import q0.l0;
import q0.m;
import q0.m0;
import q0.n;
import q0.n0;
import q0.o0;
import q0.p;
import q0.q0;
import q0.s0;
import q0.t0;
import q0.u0;
import q0.v0;
import q0.w;
import q0.w0;
import q0.x;
import q0.y0;
import q0.z;
import s1.e;
import y.g;
import y.h;

/* JADX INFO: loaded from: classes.dex */
public class RecyclerView extends ViewGroup {

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public static final int[] f613s0 = {R.attr.nestedScrollingEnabled};
    public static final Class[] t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public static final d f614u0;
    public int A;
    public int B;
    public d0 C;
    public EdgeEffect D;
    public EdgeEffect E;
    public EdgeEffect F;
    public EdgeEffect G;
    public e0 H;
    public int I;
    public int J;
    public VelocityTracker K;
    public int L;
    public int M;
    public int N;
    public int O;
    public int P;
    public k0 Q;
    public final int R;
    public final int S;
    public final float T;
    public final float U;
    public boolean V;
    public final v0 W;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e f615a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public p f616a0;
    public final o0 b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final n f617b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public q0 f618c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public final t0 f619c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final b f620d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public l0 f621d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final f f622e;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public ArrayList f623e0;
    public final c f;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public boolean f624f0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f625g;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public boolean f626g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Rect f627h;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public final z f628h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Rect f629i;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public boolean f630i0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final RectF f631j;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public y0 f632j0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public a0 f633k;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public final int[] f634k0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public i0 f635l;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public c0.n f636l0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final ArrayList f637m;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public final int[] f638m0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final ArrayList f639n;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public final int[] f640n0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public m f641o;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public final int[] f642o0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f643p;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public final ArrayList f644p0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f645q;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public final androidx.activity.d f646q0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f647r;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public final z f648r0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f649s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f650t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f651u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f652v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f653w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final AccessibilityManager f654x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f655y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f656z;

    static {
        Class cls = Integer.TYPE;
        t0 = new Class[]{Context.class, AttributeSet.class, cls, cls};
        f614u0 = new d(1);
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.ex.auto.R.attr.recyclerViewStyle);
    }

    public static RecyclerView D(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            RecyclerView recyclerViewD = D(viewGroup.getChildAt(i3));
            if (recyclerViewD != null) {
                return recyclerViewD;
            }
        }
        return null;
    }

    public static w0 I(View view) {
        if (view == null) {
            return null;
        }
        return ((j0) view.getLayoutParams()).f2933a;
    }

    private c0.n getScrollingChildHelper() {
        if (this.f636l0 == null) {
            this.f636l0 = new c0.n(this);
        }
        return this.f636l0;
    }

    public static void j(w0 w0Var) {
        WeakReference weakReference = w0Var.b;
        if (weakReference != null) {
            View view = (View) weakReference.get();
            while (view != null) {
                if (view == w0Var.f3048a) {
                    return;
                }
                Object parent = view.getParent();
                view = parent instanceof View ? (View) parent : null;
            }
            w0Var.b = null;
        }
    }

    public final View A(View view) {
        ViewParent parent = view.getParent();
        while (parent != null && parent != this && (parent instanceof View)) {
            view = parent;
            parent = view.getParent();
        }
        if (parent == this) {
            return view;
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x005e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:27:0x0061 A[SYNTHETIC] */
    public final boolean B(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        ArrayList arrayList = this.f639n;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            m mVar = (m) arrayList.get(i3);
            int i4 = mVar.f2957v;
            if (i4 == 1) {
                boolean zD = mVar.d(motionEvent.getX(), motionEvent.getY());
                boolean zC = mVar.c(motionEvent.getX(), motionEvent.getY());
                if (motionEvent.getAction() == 0 && (zD || zC)) {
                    if (zC) {
                        mVar.f2958w = 1;
                        mVar.f2951p = (int) motionEvent.getX();
                    } else if (zD) {
                        mVar.f2958w = 2;
                        mVar.f2948m = (int) motionEvent.getY();
                    }
                    mVar.f(2);
                    if (action != 3) {
                        this.f641o = mVar;
                        return true;
                    }
                }
            } else if (i4 != 2) {
                continue;
            } else if (action != 3) {
                this.f641o = mVar;
                return true;
            }
        }
        return false;
    }

    public final void C(int[] iArr) {
        int i3 = this.f622e.i();
        if (i3 == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i4 = Integer.MAX_VALUE;
        int i5 = Integer.MIN_VALUE;
        for (int i6 = 0; i6 < i3; i6++) {
            w0 w0VarI = I(this.f622e.h(i6));
            if (!w0VarI.o()) {
                int iB = w0VarI.b();
                if (iB < i4) {
                    i4 = iB;
                }
                if (iB > i5) {
                    i5 = iB;
                }
            }
        }
        iArr[0] = i4;
        iArr[1] = i5;
    }

    public final w0 E(int i3) {
        w0 w0Var = null;
        if (this.f655y) {
            return null;
        }
        int iQ = this.f622e.q();
        for (int i4 = 0; i4 < iQ; i4++) {
            w0 w0VarI = I(this.f622e.p(i4));
            if (w0VarI != null && !w0VarI.h() && F(w0VarI) == i3) {
                if (!((ArrayList) this.f622e.f414d).contains(w0VarI.f3048a)) {
                    return w0VarI;
                }
                w0Var = w0VarI;
            }
        }
        return w0Var;
    }

    public final int F(w0 w0Var) {
        if ((w0Var.f3055j & 524) == 0 && w0Var.e()) {
            int i3 = w0Var.f3049c;
            ArrayList arrayList = (ArrayList) this.f620d.f2844c;
            int size = arrayList.size();
            for (int i4 = 0; i4 < size; i4++) {
                a aVar = (a) arrayList.get(i4);
                int i5 = aVar.f2839a;
                if (i5 != 1) {
                    if (i5 == 2) {
                        int i6 = aVar.b;
                        if (i6 <= i3) {
                            int i7 = aVar.f2840c;
                            if (i6 + i7 <= i3) {
                                i3 -= i7;
                            }
                        } else {
                            continue;
                        }
                    } else if (i5 == 8) {
                        int i8 = aVar.b;
                        if (i8 == i3) {
                            i3 = aVar.f2840c;
                        } else {
                            if (i8 < i3) {
                                i3--;
                            }
                            if (aVar.f2840c <= i3) {
                                i3++;
                            }
                        }
                    }
                } else if (aVar.b <= i3) {
                    i3 += aVar.f2840c;
                }
            }
            return i3;
        }
        return -1;
    }

    public final long G(w0 w0Var) {
        return this.f633k.b ? w0Var.f3051e : w0Var.f3049c;
    }

    public final w0 H(View view) {
        ViewParent parent = view.getParent();
        if (parent == null || parent == this) {
            return I(view);
        }
        throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
    }

    public final Rect J(View view) {
        j0 j0Var = (j0) view.getLayoutParams();
        boolean z2 = j0Var.f2934c;
        Rect rect = j0Var.b;
        if (!z2 || (this.f619c0.f3008g && (j0Var.f2933a.k() || j0Var.f2933a.f()))) {
            return rect;
        }
        rect.set(0, 0, 0, 0);
        ArrayList arrayList = this.f637m;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            Rect rect2 = this.f627h;
            rect2.set(0, 0, 0, 0);
            ((f0) arrayList.get(i3)).getClass();
            ((j0) view.getLayoutParams()).f2933a.getClass();
            rect2.set(0, 0, 0, 0);
            rect.left += rect2.left;
            rect.top += rect2.top;
            rect.right += rect2.right;
            rect.bottom += rect2.bottom;
        }
        j0Var.f2934c = false;
        return rect;
    }

    public final boolean K() {
        return !this.f647r || this.f655y || this.f620d.f();
    }

    public final boolean L() {
        return this.A > 0;
    }

    public final void M(int i3) {
        if (this.f635l == null) {
            return;
        }
        setScrollState(2);
        this.f635l.i0(i3);
        awakenScrollBars();
    }

    public final void N() {
        int iQ = this.f622e.q();
        for (int i3 = 0; i3 < iQ; i3++) {
            ((j0) this.f622e.p(i3).getLayoutParams()).f2934c = true;
        }
        ArrayList arrayList = this.b.f2974c;
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            j0 j0Var = (j0) ((w0) arrayList.get(i4)).f3048a.getLayoutParams();
            if (j0Var != null) {
                j0Var.f2934c = true;
            }
        }
    }

    public final void O(int i3, int i4, boolean z2) {
        int i5 = i3 + i4;
        int iQ = this.f622e.q();
        for (int i6 = 0; i6 < iQ; i6++) {
            w0 w0VarI = I(this.f622e.p(i6));
            if (w0VarI != null && !w0VarI.o()) {
                int i7 = w0VarI.f3049c;
                t0 t0Var = this.f619c0;
                if (i7 >= i5) {
                    w0VarI.l(-i4, z2);
                    t0Var.f = true;
                } else if (i7 >= i3) {
                    w0VarI.a(8);
                    w0VarI.l(-i4, z2);
                    w0VarI.f3049c = i3 - 1;
                    t0Var.f = true;
                }
            }
        }
        o0 o0Var = this.b;
        ArrayList arrayList = o0Var.f2974c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            w0 w0Var = (w0) arrayList.get(size);
            if (w0Var != null) {
                int i8 = w0Var.f3049c;
                if (i8 >= i5) {
                    w0Var.l(-i4, z2);
                } else if (i8 >= i3) {
                    w0Var.a(8);
                    o0Var.e(size);
                }
            }
        }
        requestLayout();
    }

    public final void P() {
        this.A++;
    }

    public final void Q(boolean z2) {
        int i3;
        AccessibilityManager accessibilityManager;
        int i4 = this.A - 1;
        this.A = i4;
        if (i4 < 1) {
            this.A = 0;
            if (z2) {
                int i5 = this.f653w;
                this.f653w = 0;
                if (i5 != 0 && (accessibilityManager = this.f654x) != null && accessibilityManager.isEnabled()) {
                    AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
                    accessibilityEventObtain.setEventType(2048);
                    d0.b.b(accessibilityEventObtain, i5);
                    sendAccessibilityEventUnchecked(accessibilityEventObtain);
                }
                ArrayList arrayList = this.f644p0;
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    w0 w0Var = (w0) arrayList.get(size);
                    if (w0Var.f3048a.getParent() == this && !w0Var.o() && (i3 = w0Var.f3062q) != -1) {
                        View view = w0Var.f3048a;
                        WeakHashMap weakHashMap = p0.f727a;
                        c0.a0.s(view, i3);
                        w0Var.f3062q = -1;
                    }
                }
                arrayList.clear();
            }
        }
    }

    public final void R(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.J) {
            int i3 = actionIndex == 0 ? 1 : 0;
            this.J = motionEvent.getPointerId(i3);
            int x2 = (int) (motionEvent.getX(i3) + 0.5f);
            this.N = x2;
            this.L = x2;
            int y2 = (int) (motionEvent.getY(i3) + 0.5f);
            this.O = y2;
            this.M = y2;
        }
    }

    public final void S() {
        if (this.f630i0 || !this.f643p) {
            return;
        }
        WeakHashMap weakHashMap = p0.f727a;
        c0.a0.m(this, this.f646q0);
        this.f630i0 = true;
    }

    public final void T(w0 w0Var, q qVar) {
        w0Var.f3055j &= -8193;
        boolean z2 = this.f619c0.f3009h;
        c cVar = this.f;
        if (z2 && w0Var.k() && !w0Var.h() && !w0Var.o()) {
            ((l.e) cVar.b).d(w0Var, G(w0Var));
        }
        k kVar = (k) cVar.f100a;
        h1 h1VarA = (h1) kVar.getOrDefault(w0Var, null);
        if (h1VarA == null) {
            h1VarA = h1.a();
            kVar.put(w0Var, h1VarA);
        }
        h1VarA.b = qVar;
        h1VarA.f2901a |= 4;
    }

    public final void U(View view, View view2) {
        View view3 = view2 != null ? view2 : view;
        int width = view3.getWidth();
        int height = view3.getHeight();
        Rect rect = this.f627h;
        rect.set(0, 0, width, height);
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof j0) {
            j0 j0Var = (j0) layoutParams;
            if (!j0Var.f2934c) {
                Rect rect2 = j0Var.b;
                rect.left -= rect2.left;
                rect.right += rect2.right;
                rect.top -= rect2.top;
                rect.bottom += rect2.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, rect);
            offsetRectIntoDescendantCoords(view, rect);
        }
        this.f635l.f0(this, view, this.f627h, !this.f647r, view2 == null);
    }

    public final void V() {
        VelocityTracker velocityTracker = this.K;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        boolean zIsFinished = false;
        c0(0);
        EdgeEffect edgeEffect = this.D;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            zIsFinished = this.D.isFinished();
        }
        EdgeEffect edgeEffect2 = this.E;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            zIsFinished |= this.E.isFinished();
        }
        EdgeEffect edgeEffect3 = this.F;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            zIsFinished |= this.F.isFinished();
        }
        EdgeEffect edgeEffect4 = this.G;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            zIsFinished |= this.G.isFinished();
        }
        if (zIsFinished) {
            WeakHashMap weakHashMap = p0.f727a;
            c0.a0.k(this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:30:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:32:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:34:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:35:0x00f8 A[DONT_INVERT, PHI: r7
      0x00f8: PHI (r7v9 boolean) = (r7v7 boolean), (r7v10 boolean) binds: [B:33:0x00df, B:31:0x00db] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:36:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:40:0x0102  */
    public final boolean W(int i3, int i4, MotionEvent motionEvent) {
        int i5;
        int i6;
        int i7;
        int i8;
        float f;
        boolean z2;
        m();
        a0 a0Var = this.f633k;
        int[] iArr = this.f642o0;
        if (a0Var != null) {
            iArr[0] = 0;
            iArr[1] = 0;
            X(i3, i4, iArr);
            i5 = iArr[0];
            i6 = iArr[1];
            i7 = i3 - i5;
            i8 = i4 - i6;
        } else {
            i5 = 0;
            i6 = 0;
            i7 = 0;
            i8 = 0;
        }
        if (!this.f637m.isEmpty()) {
            invalidate();
        }
        int[] iArr2 = this.f642o0;
        iArr2[0] = 0;
        iArr2[1] = 0;
        s(i5, i6, i7, i8, this.f638m0, 0, iArr2);
        int i9 = iArr[0];
        int i10 = i7 - i9;
        int i11 = iArr[1];
        int i12 = i8 - i11;
        boolean z3 = (i9 == 0 && i11 == 0) ? false : true;
        int i13 = this.N;
        int[] iArr3 = this.f638m0;
        int i14 = iArr3[0];
        this.N = i13 - i14;
        int i15 = this.O;
        int i16 = iArr3[1];
        this.O = i15 - i16;
        int[] iArr4 = this.f640n0;
        iArr4[0] = iArr4[0] + i14;
        iArr4[1] = iArr4[1] + i16;
        if (getOverScrollMode() != 2) {
            if (motionEvent != null && !a1.b.E(motionEvent, 8194)) {
                float x2 = motionEvent.getX();
                float f3 = i10;
                float y2 = motionEvent.getY();
                float f4 = i12;
                if (f3 < 0.0f) {
                    v();
                    f = 0.0f;
                    f0.d.a(this.D, (-f3) / getWidth(), 1.0f - (y2 / getHeight()));
                } else {
                    f = 0.0f;
                    if (f3 > 0.0f) {
                        w();
                        f0.d.a(this.F, f3 / getWidth(), y2 / getHeight());
                    } else {
                        z2 = false;
                    }
                    if (f4 < f) {
                        x();
                        f0.d.a(this.E, (-f4) / getHeight(), x2 / getWidth());
                    } else if (f4 > f) {
                        u();
                        f0.d.a(this.G, f4 / getHeight(), 1.0f - (x2 / getWidth()));
                    } else if (z2 || f3 != f || f4 != f) {
                        WeakHashMap weakHashMap = p0.f727a;
                        c0.a0.k(this);
                    }
                    z2 = true;
                    if (z2) {
                        WeakHashMap weakHashMap2 = p0.f727a;
                        c0.a0.k(this);
                    } else {
                        WeakHashMap weakHashMap3 = p0.f727a;
                        c0.a0.k(this);
                    }
                }
                z2 = true;
                if (f4 < f) {
                    x();
                    f0.d.a(this.E, (-f4) / getHeight(), x2 / getWidth());
                } else if (f4 > f) {
                    u();
                    f0.d.a(this.G, f4 / getHeight(), 1.0f - (x2 / getWidth()));
                } else if (z2) {
                    WeakHashMap weakHashMap4 = p0.f727a;
                    c0.a0.k(this);
                } else {
                    WeakHashMap weakHashMap5 = p0.f727a;
                    c0.a0.k(this);
                }
                z2 = true;
                if (z2) {
                    WeakHashMap weakHashMap6 = p0.f727a;
                    c0.a0.k(this);
                } else {
                    WeakHashMap weakHashMap7 = p0.f727a;
                    c0.a0.k(this);
                }
            }
            l(i3, i4);
        }
        if (i5 != 0 || i6 != 0) {
            t(i5, i6);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        return (!z3 && i5 == 0 && i6 == 0) ? false : true;
    }

    public final void X(int i3, int i4, int[] iArr) {
        w0 w0Var;
        a0();
        P();
        int i5 = h.f4654a;
        g.a("RV Scroll");
        t0 t0Var = this.f619c0;
        z(t0Var);
        o0 o0Var = this.b;
        int iH0 = i3 != 0 ? this.f635l.h0(i3, o0Var, t0Var) : 0;
        int iJ0 = i4 != 0 ? this.f635l.j0(i4, o0Var, t0Var) : 0;
        g.b();
        f fVar = this.f622e;
        int i6 = fVar.i();
        for (int i7 = 0; i7 < i6; i7++) {
            View viewH = fVar.h(i7);
            w0 w0VarH = H(viewH);
            if (w0VarH != null && (w0Var = w0VarH.f3054i) != null) {
                View view = w0Var.f3048a;
                int left = viewH.getLeft();
                int top = viewH.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
        Q(true);
        b0(false);
        if (iArr != null) {
            iArr[0] = iH0;
            iArr[1] = iJ0;
        }
    }

    public final void Y(int i3) {
        w wVar;
        if (this.f651u) {
            return;
        }
        setScrollState(0);
        v0 v0Var = this.W;
        v0Var.f3032g.removeCallbacks(v0Var);
        v0Var.f3029c.abortAnimation();
        i0 i0Var = this.f635l;
        if (i0Var != null && (wVar = i0Var.f2910e) != null) {
            wVar.g();
        }
        i0 i0Var2 = this.f635l;
        if (i0Var2 == null) {
            Log.e("RecyclerView", "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            i0Var2.i0(i3);
            awakenScrollBars();
        }
    }

    public final void Z(int i3, int i4, boolean z2) {
        i0 i0Var = this.f635l;
        if (i0Var == null) {
            Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.f651u) {
            return;
        }
        if (!i0Var.d()) {
            i3 = 0;
        }
        if (!this.f635l.e()) {
            i4 = 0;
        }
        if (i3 == 0 && i4 == 0) {
            return;
        }
        if (z2) {
            int i5 = i3 != 0 ? 1 : 0;
            if (i4 != 0) {
                i5 |= 2;
            }
            getScrollingChildHelper().g(i5, 1);
        }
        this.W.b(i3, i4, Integer.MIN_VALUE, null);
    }

    public final void a0() {
        int i3 = this.f649s + 1;
        this.f649s = i3;
        if (i3 != 1 || this.f651u) {
            return;
        }
        this.f650t = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList arrayList, int i3, int i4) {
        i0 i0Var = this.f635l;
        if (i0Var != null) {
            i0Var.getClass();
        }
        super.addFocusables(arrayList, i3, i4);
    }

    public final void b0(boolean z2) {
        if (this.f649s < 1) {
            this.f649s = 1;
        }
        if (!z2 && !this.f651u) {
            this.f650t = false;
        }
        if (this.f649s == 1) {
            if (z2 && this.f650t && !this.f651u && this.f635l != null && this.f633k != null) {
                o();
            }
            if (!this.f651u) {
                this.f650t = false;
            }
        }
        this.f649s--;
    }

    public final void c0(int i3) {
        getScrollingChildHelper().h(i3);
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof j0) && this.f635l.f((j0) layoutParams);
    }

    @Override // android.view.View
    public final int computeHorizontalScrollExtent() {
        i0 i0Var = this.f635l;
        if (i0Var != null && i0Var.d()) {
            return this.f635l.j(this.f619c0);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeHorizontalScrollOffset() {
        i0 i0Var = this.f635l;
        if (i0Var != null && i0Var.d()) {
            return this.f635l.k(this.f619c0);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeHorizontalScrollRange() {
        i0 i0Var = this.f635l;
        if (i0Var != null && i0Var.d()) {
            return this.f635l.l(this.f619c0);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeVerticalScrollExtent() {
        i0 i0Var = this.f635l;
        if (i0Var != null && i0Var.e()) {
            return this.f635l.m(this.f619c0);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeVerticalScrollOffset() {
        i0 i0Var = this.f635l;
        if (i0Var != null && i0Var.e()) {
            return this.f635l.n(this.f619c0);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeVerticalScrollRange() {
        i0 i0Var = this.f635l;
        if (i0Var != null && i0Var.e()) {
            return this.f635l.o(this.f619c0);
        }
        return 0;
    }

    @Override // android.view.View
    public final boolean dispatchNestedFling(float f, float f3, boolean z2) {
        return getScrollingChildHelper().a(f, f3, z2);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreFling(float f, float f3) {
        return getScrollingChildHelper().b(f, f3);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreScroll(int i3, int i4, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().c(i3, i4, iArr, iArr2, 0);
    }

    @Override // android.view.View
    public final boolean dispatchNestedScroll(int i3, int i4, int i5, int i6, int[] iArr) {
        return getScrollingChildHelper().d(i3, i4, i5, i6, iArr, 0, null);
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchSaveInstanceState(SparseArray sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        boolean z2;
        super.draw(canvas);
        ArrayList arrayList = this.f637m;
        int size = arrayList.size();
        boolean z3 = false;
        for (int i3 = 0; i3 < size; i3++) {
            ((f0) arrayList.get(i3)).b(canvas);
        }
        EdgeEffect edgeEffect = this.D;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z2 = false;
        } else {
            int iSave = canvas.save();
            int paddingBottom = this.f625g ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom, 0.0f);
            EdgeEffect edgeEffect2 = this.D;
            z2 = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(iSave);
        }
        EdgeEffect edgeEffect3 = this.E;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int iSave2 = canvas.save();
            if (this.f625g) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            EdgeEffect edgeEffect4 = this.E;
            z2 |= edgeEffect4 != null && edgeEffect4.draw(canvas);
            canvas.restoreToCount(iSave2);
        }
        EdgeEffect edgeEffect5 = this.F;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int iSave3 = canvas.save();
            int width = getWidth();
            int paddingTop = this.f625g ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate(-paddingTop, -width);
            EdgeEffect edgeEffect6 = this.F;
            z2 |= edgeEffect6 != null && edgeEffect6.draw(canvas);
            canvas.restoreToCount(iSave3);
        }
        EdgeEffect edgeEffect7 = this.G;
        if (edgeEffect7 != null && !edgeEffect7.isFinished()) {
            int iSave4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.f625g) {
                canvas.translate(getPaddingRight() + (-getWidth()), getPaddingBottom() + (-getHeight()));
            } else {
                canvas.translate(-getWidth(), -getHeight());
            }
            EdgeEffect edgeEffect8 = this.G;
            if (edgeEffect8 != null && edgeEffect8.draw(canvas)) {
                z3 = true;
            }
            z2 |= z3;
            canvas.restoreToCount(iSave4);
        }
        if ((z2 || this.H == null || arrayList.size() <= 0 || !this.H.f()) ? z2 : true) {
            WeakHashMap weakHashMap = p0.f727a;
            c0.a0.k(this);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j3) {
        return super.drawChild(canvas, view, j3);
    }

    public final void f(w0 w0Var) {
        View view = w0Var.f3048a;
        boolean z2 = view.getParent() == this;
        this.b.j(H(view));
        if (w0Var.j()) {
            this.f622e.c(view, -1, view.getLayoutParams(), true);
            return;
        }
        if (!z2) {
            this.f622e.b(view, -1, true);
            return;
        }
        f fVar = this.f622e;
        int iIndexOfChild = ((z) fVar.b).f3073a.indexOfChild(view);
        if (iIndexOfChild >= 0) {
            ((q0.c) fVar.f413c).h(iIndexOfChild);
            fVar.r(view);
        } else {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
    }

    /* JADX WARN: Code duplicated, block: B:117:0x0169  */
    /* JADX WARN: Code duplicated, block: B:136:0x01a0 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:137:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:24:0x004c  */
    @Override // android.view.ViewGroup, android.view.ViewParent
    public final View focusSearch(View view, int i3) {
        View viewN;
        int i4;
        byte b;
        boolean z2;
        this.f635l.getClass();
        boolean z3 = true;
        boolean z4 = (this.f633k == null || this.f635l == null || L() || this.f651u) ? false : true;
        FocusFinder focusFinder = FocusFinder.getInstance();
        t0 t0Var = this.f619c0;
        o0 o0Var = this.b;
        if (z4 && (i3 == 2 || i3 == 1)) {
            if (this.f635l.e()) {
                if (focusFinder.findNextFocus(this, view, i3 == 2 ? 130 : 33) == null) {
                    z2 = true;
                } else {
                    z2 = false;
                }
            } else {
                z2 = false;
            }
            if (!z2 && this.f635l.d()) {
                RecyclerView recyclerView = this.f635l.b;
                WeakHashMap weakHashMap = p0.f727a;
                z2 = focusFinder.findNextFocus(this, view, (b0.d(recyclerView) == 1) ^ (i3 == 2) ? 66 : 17) == null;
            }
            if (z2) {
                m();
                if (A(view) != null) {
                    a0();
                    this.f635l.N(view, i3, o0Var, t0Var);
                    b0(false);
                }
                return null;
            }
            viewN = focusFinder.findNextFocus(this, view, i3);
            if (viewN == null) {
            }
            if (viewN != null) {
                z3 = false;
            } else {
                z3 = false;
            }
            if (z3) {
                return viewN;
            }
            return super.focusSearch(view, i3);
        }
        View viewFindNextFocus = focusFinder.findNextFocus(this, view, i3);
        if (viewFindNextFocus == null && z4) {
            m();
            if (A(view) != null) {
                a0();
                viewN = this.f635l.N(view, i3, o0Var, t0Var);
                b0(false);
            }
            return null;
        }
        viewN = viewFindNextFocus;
        if (viewN == null && !viewN.hasFocusable()) {
            if (getFocusedChild() == null) {
                return super.focusSearch(view, i3);
            }
            U(viewN, null);
            return view;
        }
        if (viewN != null || viewN == this) {
            z3 = false;
        } else if (A(viewN) == null) {
            z3 = false;
        } else if (view != null && A(view) != null) {
            int width = view.getWidth();
            int height = view.getHeight();
            Rect rect = this.f627h;
            rect.set(0, 0, width, height);
            int width2 = viewN.getWidth();
            int height2 = viewN.getHeight();
            Rect rect2 = this.f629i;
            rect2.set(0, 0, width2, height2);
            offsetDescendantRectToMyCoords(view, rect);
            offsetDescendantRectToMyCoords(viewN, rect2);
            RecyclerView recyclerView2 = this.f635l.b;
            WeakHashMap weakHashMap2 = p0.f727a;
            int i5 = b0.d(recyclerView2) == 1 ? -1 : 1;
            int i6 = rect.left;
            int i7 = rect2.left;
            if ((i6 < i7 || rect.right <= i7) && rect.right < rect2.right) {
                i4 = 1;
            } else {
                int i8 = rect.right;
                int i9 = rect2.right;
                i4 = ((i8 > i9 || i6 >= i9) && i6 > i7) ? -1 : 0;
            }
            int i10 = rect.top;
            int i11 = rect2.top;
            if ((i10 < i11 || rect.bottom <= i11) && rect.bottom < rect2.bottom) {
                b = 1;
            } else {
                int i12 = rect.bottom;
                int i13 = rect2.bottom;
                b = ((i12 > i13 || i10 >= i13) && i10 > i11) ? (byte) -1 : (byte) 0;
            }
            if (i3 != 1) {
                if (i3 != 2) {
                    if (i3 != 17) {
                        if (i3 != 33) {
                            if (i3 != 66) {
                                if (i3 != 130) {
                                    throw new IllegalArgumentException("Invalid direction: " + i3 + y());
                                }
                                if (b <= 0) {
                                    z3 = false;
                                }
                            } else if (i4 <= 0) {
                                z3 = false;
                            }
                        } else if (b >= 0) {
                            z3 = false;
                        }
                    } else if (i4 >= 0) {
                        z3 = false;
                    }
                } else if (b <= 0 && (b != 0 || i4 * i5 < 0)) {
                    z3 = false;
                }
            } else if (b >= 0 && (b != 0 || i4 * i5 > 0)) {
                z3 = false;
            }
        }
        if (z3) {
            return viewN;
        }
        return super.focusSearch(view, i3);
    }

    public final void g(f0 f0Var) {
        i0 i0Var = this.f635l;
        if (i0Var != null) {
            i0Var.c("Cannot add item decoration during a scroll  or layout");
        }
        ArrayList arrayList = this.f637m;
        if (arrayList.isEmpty()) {
            setWillNotDraw(false);
        }
        arrayList.add(f0Var);
        N();
        requestLayout();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        i0 i0Var = this.f635l;
        if (i0Var != null) {
            return i0Var.r();
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + y());
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        i0 i0Var = this.f635l;
        if (i0Var != null) {
            return i0Var.s(getContext(), attributeSet);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + y());
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.recyclerview.widget.RecyclerView";
    }

    public a0 getAdapter() {
        return this.f633k;
    }

    @Override // android.view.View
    public int getBaseline() {
        i0 i0Var = this.f635l;
        if (i0Var == null) {
            return super.getBaseline();
        }
        i0Var.getClass();
        return -1;
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i3, int i4) {
        return super.getChildDrawingOrder(i3, i4);
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.f625g;
    }

    public y0 getCompatAccessibilityDelegate() {
        return this.f632j0;
    }

    public d0 getEdgeEffectFactory() {
        return this.C;
    }

    public e0 getItemAnimator() {
        return this.H;
    }

    public int getItemDecorationCount() {
        return this.f637m.size();
    }

    public i0 getLayoutManager() {
        return this.f635l;
    }

    public int getMaxFlingVelocity() {
        return this.S;
    }

    public int getMinFlingVelocity() {
        return this.R;
    }

    public long getNanoTime() {
        return System.nanoTime();
    }

    public k0 getOnFlingListener() {
        return this.Q;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.V;
    }

    public n0 getRecycledViewPool() {
        return this.b.c();
    }

    public int getScrollState() {
        return this.I;
    }

    public final void h(l0 l0Var) {
        if (this.f623e0 == null) {
            this.f623e0 = new ArrayList();
        }
        this.f623e0.add(l0Var);
    }

    @Override // android.view.View
    public final boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().f(0);
    }

    public final void i(String str) {
        if (L()) {
            if (str != null) {
                throw new IllegalStateException(str);
            }
            throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling" + y());
        }
        if (this.B > 0) {
            Log.w("RecyclerView", "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException("" + y()));
        }
    }

    @Override // android.view.View
    public final boolean isAttachedToWindow() {
        return this.f643p;
    }

    @Override // android.view.ViewGroup
    public final boolean isLayoutSuppressed() {
        return this.f651u;
    }

    @Override // android.view.View
    public final boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().f724d;
    }

    public final void k() {
        int iQ = this.f622e.q();
        for (int i3 = 0; i3 < iQ; i3++) {
            w0 w0VarI = I(this.f622e.p(i3));
            if (!w0VarI.o()) {
                w0VarI.f3050d = -1;
                w0VarI.f3052g = -1;
            }
        }
        o0 o0Var = this.b;
        ArrayList arrayList = o0Var.f2973a;
        ArrayList arrayList2 = o0Var.f2974c;
        int size = arrayList2.size();
        for (int i4 = 0; i4 < size; i4++) {
            w0 w0Var = (w0) arrayList2.get(i4);
            w0Var.f3050d = -1;
            w0Var.f3052g = -1;
        }
        int size2 = arrayList.size();
        for (int i5 = 0; i5 < size2; i5++) {
            w0 w0Var2 = (w0) arrayList.get(i5);
            w0Var2.f3050d = -1;
            w0Var2.f3052g = -1;
        }
        ArrayList arrayList3 = o0Var.b;
        if (arrayList3 != null) {
            int size3 = arrayList3.size();
            for (int i6 = 0; i6 < size3; i6++) {
                w0 w0Var3 = (w0) o0Var.b.get(i6);
                w0Var3.f3050d = -1;
                w0Var3.f3052g = -1;
            }
        }
    }

    public final void l(int i3, int i4) {
        boolean zIsFinished;
        EdgeEffect edgeEffect = this.D;
        if (edgeEffect == null || edgeEffect.isFinished() || i3 <= 0) {
            zIsFinished = false;
        } else {
            this.D.onRelease();
            zIsFinished = this.D.isFinished();
        }
        EdgeEffect edgeEffect2 = this.F;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i3 < 0) {
            this.F.onRelease();
            zIsFinished |= this.F.isFinished();
        }
        EdgeEffect edgeEffect3 = this.E;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i4 > 0) {
            this.E.onRelease();
            zIsFinished |= this.E.isFinished();
        }
        EdgeEffect edgeEffect4 = this.G;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i4 < 0) {
            this.G.onRelease();
            zIsFinished |= this.G.isFinished();
        }
        if (zIsFinished) {
            WeakHashMap weakHashMap = p0.f727a;
            c0.a0.k(this);
        }
    }

    public final void m() {
        if (!this.f647r || this.f655y) {
            int i3 = h.f4654a;
            g.a("RV FullInvalidate");
            o();
            g.b();
            return;
        }
        b bVar = this.f620d;
        if (bVar.f()) {
            bVar.getClass();
            if (bVar.f()) {
                int i4 = h.f4654a;
                g.a("RV FullInvalidate");
                o();
                g.b();
            }
        }
    }

    public final void n(int i3, int i4) {
        int paddingRight = getPaddingRight() + getPaddingLeft();
        WeakHashMap weakHashMap = p0.f727a;
        setMeasuredDimension(i0.g(i3, paddingRight, c0.a0.e(this)), i0.g(i4, getPaddingBottom() + getPaddingTop(), c0.a0.d(this)));
    }

    /* JADX WARN: Code duplicated, block: B:157:0x033a  */
    /* JADX WARN: Code duplicated, block: B:176:0x0380  */
    /* JADX WARN: Code duplicated, block: B:178:0x0383  */
    /* JADX WARN: Code duplicated, block: B:184:0x039a  */
    /* JADX WARN: Code duplicated, block: B:186:0x03a2  */
    /* JADX WARN: Code duplicated, block: B:188:0x03a6  */
    /* JADX WARN: Code duplicated, block: B:191:0x03ae  */
    /* JADX WARN: Code duplicated, block: B:194:0x03b5  */
    /* JADX WARN: Code duplicated, block: B:197:0x03bf A[LOOP:4: B:190:0x03ac->B:197:0x03bf, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:200:0x03cc  */
    /* JADX WARN: Code duplicated, block: B:203:0x03d3  */
    /* JADX WARN: Code duplicated, block: B:206:0x03dd A[LOOP:5: B:199:0x03ca->B:206:0x03dd, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:208:0x03e2  */
    /* JADX WARN: Code duplicated, block: B:238:0x03c2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:239:0x03bd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:240:0x03c2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:242:0x03e0 A[EDGE_INSN: B:242:0x03e0->B:207:0x03e0 BREAK  A[LOOP:5: B:199:0x03ca->B:206:0x03dd], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:243:0x03db A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [q0.w0] */
    /* JADX WARN: Type inference failed for: r11v13 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v20, types: [int] */
    /* JADX WARN: Type inference failed for: r3v23 */
    /* JADX WARN: Type inference failed for: r3v26 */
    /* JADX WARN: Type inference failed for: r3v27 */
    /* JADX WARN: Type inference failed for: r3v28 */
    /* JADX WARN: Type inference failed for: r3v29 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void o() {
        boolean z2;
        long j3;
        ?? r11;
        int i3;
        int iB;
        int i4;
        int iMin;
        w0 w0VarE;
        View view;
        w0 w0VarE2;
        View view2;
        int i5;
        View viewFindViewById;
        View view3;
        boolean z3;
        q qVar;
        ?? r3;
        boolean zG;
        boolean z4;
        if (this.f633k == null) {
            Log.e("RecyclerView", "No adapter attached; skipping layout");
            return;
        }
        if (this.f635l == null) {
            Log.e("RecyclerView", "No layout manager attached; skipping layout");
            return;
        }
        t0 t0Var = this.f619c0;
        boolean z5 = false;
        t0Var.f3010i = false;
        boolean z6 = true;
        if (t0Var.f3006d == 1) {
            p();
            this.f635l.k0(this);
            q();
        } else {
            b bVar = this.f620d;
            if ((((ArrayList) bVar.f2845d).isEmpty() || ((ArrayList) bVar.f2844c).isEmpty()) && this.f635l.f2918n == getWidth() && this.f635l.f2919o == getHeight()) {
                this.f635l.k0(this);
            } else {
                this.f635l.k0(this);
                q();
            }
        }
        t0Var.a(4);
        a0();
        P();
        t0Var.f3006d = 1;
        boolean z7 = t0Var.f3011j;
        View view4 = null;
        Long l3 = null;
        o0 o0Var = this.b;
        c cVar = this.f;
        if (z7) {
            int i6 = this.f622e.i() - 1;
            while (i6 >= 0) {
                w0 w0VarI = I(this.f622e.h(i6));
                if (w0VarI.o()) {
                    z4 = z6;
                } else {
                    long jG = G(w0VarI);
                    this.H.getClass();
                    q qVar2 = new q();
                    qVar2.a(w0VarI);
                    l.e eVar = (l.e) cVar.b;
                    k kVar = (k) cVar.f100a;
                    w0 w0Var = (w0) eVar.c(jG, l3);
                    if (w0Var == null || w0Var.o()) {
                        z4 = z6;
                        cVar.a(w0VarI, qVar2);
                    } else {
                        z4 = z6;
                        h1 h1Var = (h1) kVar.getOrDefault(w0Var, l3);
                        boolean z8 = (h1Var == null || (h1Var.f2901a & 1) == 0) ? false : z4;
                        h1 h1Var2 = (h1) kVar.getOrDefault(w0VarI, l3);
                        boolean z9 = (h1Var2 == null || (h1Var2.f2901a & 1) == 0) ? false : z4;
                        if (z8 && w0Var == w0VarI) {
                            cVar.a(w0VarI, qVar2);
                        } else {
                            q qVarC = cVar.C(w0Var, 4);
                            cVar.a(w0VarI, qVar2);
                            q qVarC2 = cVar.C(w0VarI, 8);
                            if (qVarC == null) {
                                int i7 = this.f622e.i();
                                for (int i8 = 0; i8 < i7; i8++) {
                                    w0 w0VarI2 = I(this.f622e.h(i8));
                                    if (w0VarI2 != w0VarI && G(w0VarI2) == jG) {
                                        a0 a0Var = this.f633k;
                                        if (a0Var == null || !a0Var.b) {
                                            throw new IllegalStateException("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:" + w0VarI2 + " \n View Holder 2:" + w0VarI + y());
                                        }
                                        throw new IllegalStateException("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:" + w0VarI2 + " \n View Holder 2:" + w0VarI + y());
                                    }
                                }
                                Log.e("RecyclerView", "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + w0Var + " cannot be found but it is necessary for " + w0VarI + y());
                            } else {
                                w0Var.n(false);
                                if (z8) {
                                    f(w0Var);
                                }
                                if (w0Var != w0VarI) {
                                    if (z9) {
                                        f(w0VarI);
                                    }
                                    w0Var.f3053h = w0VarI;
                                    f(w0Var);
                                    o0Var.j(w0Var);
                                    w0VarI.n(false);
                                    w0VarI.f3054i = w0Var;
                                }
                                if (this.H.a(w0Var, w0VarI, qVarC, qVarC2)) {
                                    S();
                                }
                            }
                        }
                    }
                }
                i6--;
                z6 = z4;
                l3 = null;
            }
            z2 = z6;
            k kVar2 = (k) cVar.f100a;
            int i9 = kVar2.f2418c - 1;
            while (i9 >= 0) {
                w0 w0Var2 = (w0) kVar2.g(i9);
                h1 h1Var3 = (h1) kVar2.h(i9);
                int i10 = h1Var3.f2901a;
                int i11 = i10 & 3;
                z zVar = this.f648r0;
                if (i11 == 3) {
                    RecyclerView recyclerView = zVar.f3073a;
                    recyclerView.f635l.d0(w0Var2.f3048a, recyclerView.b);
                    r3 = z5;
                } else if ((i10 & 1) != 0) {
                    q qVar3 = h1Var3.b;
                    if (qVar3 == null) {
                        RecyclerView recyclerView2 = zVar.f3073a;
                        recyclerView2.f635l.d0(w0Var2.f3048a, recyclerView2.b);
                        r3 = z5;
                    } else {
                        zVar.g(w0Var2, qVar3, h1Var3.f2902c);
                        r3 = z5;
                    }
                } else if ((i10 & 14) == 14) {
                    zVar.f(w0Var2, h1Var3.b, h1Var3.f2902c);
                    r3 = z5;
                } else {
                    if ((i10 & 12) == 12) {
                        q qVar4 = h1Var3.b;
                        q qVar5 = h1Var3.f2902c;
                        zVar.getClass();
                        w0Var2.n(z5);
                        RecyclerView recyclerView3 = zVar.f3073a;
                        if (!recyclerView3.f655y) {
                            j jVar = (j) recyclerView3.H;
                            jVar.getClass();
                            int i12 = qVar4.f731a;
                            int i13 = qVar5.f731a;
                            if (i12 == i13 && qVar4.b == qVar5.b) {
                                jVar.c(w0Var2);
                                zG = false;
                            } else {
                                zG = jVar.g(w0Var2, i12, qVar4.b, i13, qVar5.b);
                            }
                            if (zG) {
                                recyclerView3.S();
                            }
                        } else if (recyclerView3.H.a(w0Var2, w0Var2, qVar4, qVar5)) {
                            recyclerView3.S();
                        }
                        r3 = 0;
                    } else {
                        if ((i10 & 4) != 0) {
                            qVar = null;
                            zVar.g(w0Var2, h1Var3.b, null);
                        } else {
                            qVar = null;
                            if ((i10 & 8) != 0) {
                                zVar.f(w0Var2, h1Var3.b, h1Var3.f2902c);
                            }
                        }
                        r3 = 0;
                    }
                    h1Var3.f2901a = r3;
                    h1Var3.b = qVar;
                    h1Var3.f2902c = qVar;
                    h1.f2900d.c(h1Var3);
                    i9--;
                    z5 = false;
                }
                qVar = null;
                h1Var3.f2901a = r3;
                h1Var3.b = qVar;
                h1Var3.f2902c = qVar;
                h1.f2900d.c(h1Var3);
                i9--;
                z5 = false;
            }
            view4 = null;
        } else {
            z2 = true;
        }
        this.f635l.c0(o0Var);
        t0Var.b = t0Var.f3007e;
        this.f655y = false;
        this.f656z = false;
        t0Var.f3011j = false;
        t0Var.f3012k = false;
        this.f635l.f = false;
        ArrayList arrayList = o0Var.b;
        if (arrayList != null) {
            arrayList.clear();
        }
        i0 i0Var = this.f635l;
        if (i0Var.f2915k) {
            i0Var.f2914j = 0;
            i0Var.f2915k = false;
            o0Var.k();
        }
        this.f635l.X(t0Var);
        boolean z10 = z2;
        Q(z10);
        b0(false);
        ((k) cVar.f100a).clear();
        ((l.e) cVar.b).a();
        int[] iArr = this.f634k0;
        int i14 = iArr[0];
        int i15 = iArr[z10 ? 1 : 0];
        C(iArr);
        if ((iArr[0] == i14 && iArr[z10 ? 1 : 0] == i15) ? false : true) {
            t(0, 0);
        }
        if (this.V && this.f633k != null && hasFocus() && getDescendantFocusability() != 393216 && (getDescendantFocusability() != 131072 || !isFocused())) {
            if (isFocused()) {
                j3 = t0Var.f3014m;
                if (j3 == -1) {
                    r11 = view4;
                } else {
                    r11 = view4;
                }
                if (r11 != 0) {
                    view3 = r11.f3048a;
                    if (!((ArrayList) this.f622e.f414d).contains(view3)) {
                        if (this.f622e.i() > 0) {
                            int i16 = t0Var.f3013l;
                            if (i16 != -1) {
                            }
                            iB = t0Var.b();
                            i4 = i3;
                            while (true) {
                                if (i4 < iB) {
                                    w0VarE2 = E(i4);
                                    if (w0VarE2 != null) {
                                        view2 = w0VarE2.f3048a;
                                        if (view2.hasFocusable()) {
                                            view4 = view2;
                                        } else {
                                            i4++;
                                        }
                                    }
                                }
                                for (iMin = Math.min(iB, i3) - 1; iMin >= 0; iMin--) {
                                    w0VarE = E(iMin);
                                    if (w0VarE == null) {
                                        break;
                                        break;
                                    }
                                    view = w0VarE.f3048a;
                                    if (view.hasFocusable()) {
                                        view4 = view;
                                        break;
                                    }
                                }
                            }
                        }
                    } else if (this.f622e.i() > 0) {
                        int i17 = t0Var.f3013l;
                        if (i17 != -1) {
                        }
                        iB = t0Var.b();
                        i4 = i3;
                        while (true) {
                            if (i4 < iB) {
                                w0VarE2 = E(i4);
                                if (w0VarE2 != null) {
                                    view2 = w0VarE2.f3048a;
                                    if (view2.hasFocusable()) {
                                        view4 = view2;
                                    } else {
                                        i4++;
                                    }
                                }
                            }
                            while (iMin >= 0) {
                                w0VarE = E(iMin);
                                if (w0VarE == null) {
                                    break;
                                    break;
                                }
                                view = w0VarE.f3048a;
                                if (view.hasFocusable()) {
                                    view4 = view;
                                    break;
                                }
                            }
                        }
                    }
                } else if (this.f622e.i() > 0) {
                    int i18 = t0Var.f3013l;
                    if (i18 != -1) {
                    }
                    iB = t0Var.b();
                    i4 = i3;
                    while (true) {
                        if (i4 < iB) {
                            w0VarE2 = E(i4);
                            if (w0VarE2 != null) {
                                view2 = w0VarE2.f3048a;
                                if (view2.hasFocusable()) {
                                    view4 = view2;
                                } else {
                                    i4++;
                                }
                            }
                        }
                        while (iMin >= 0) {
                            w0VarE = E(iMin);
                            if (w0VarE == null) {
                                break;
                                break;
                            }
                            view = w0VarE.f3048a;
                            if (view.hasFocusable()) {
                                view4 = view;
                                break;
                            }
                        }
                    }
                }
                if (view4 != null) {
                    i5 = t0Var.f3015n;
                    if (i5 != -1) {
                        view4 = viewFindViewById;
                    }
                    view4.requestFocus();
                }
            } else if (((ArrayList) this.f622e.f414d).contains(getFocusedChild())) {
                j3 = t0Var.f3014m;
                if (j3 == -1 && (z3 = this.f633k.b) && z3) {
                    int iQ = this.f622e.q();
                    int i19 = 0;
                    r11 = view4;
                    while (i19 < iQ) {
                        w0 w0VarI3 = I(this.f622e.p(i19));
                        if (w0VarI3 != null && !w0VarI3.h() && w0VarI3.f3051e == j3) {
                            if (!((ArrayList) this.f622e.f414d).contains(w0VarI3.f3048a)) {
                                r11 = w0VarI3;
                                break;
                            }
                            r11 = w0VarI3;
                        }
                        i19++;
                        r11 = r11;
                    }
                } else {
                    r11 = view4;
                }
                if (r11 != 0) {
                    view3 = r11.f3048a;
                    if (!((ArrayList) this.f622e.f414d).contains(view3) && view3.hasFocusable()) {
                        view4 = view3;
                    } else if (this.f622e.i() > 0) {
                        int i110 = t0Var.f3013l;
                        i3 = i110 != -1 ? i110 : 0;
                        iB = t0Var.b();
                        i4 = i3;
                        while (true) {
                            if (i4 < iB) {
                                w0VarE2 = E(i4);
                                if (w0VarE2 != null) {
                                    view2 = w0VarE2.f3048a;
                                    if (view2.hasFocusable()) {
                                        view4 = view2;
                                    } else {
                                        i4++;
                                    }
                                }
                            }
                            while (iMin >= 0) {
                                w0VarE = E(iMin);
                                if (w0VarE == null) {
                                    break;
                                }
                                view = w0VarE.f3048a;
                                if (view.hasFocusable()) {
                                    view4 = view;
                                    break;
                                }
                            }
                        }
                    }
                } else if (this.f622e.i() > 0) {
                    int i111 = t0Var.f3013l;
                    if (i111 != -1) {
                    }
                    iB = t0Var.b();
                    i4 = i3;
                    while (true) {
                        if (i4 < iB) {
                            w0VarE2 = E(i4);
                            if (w0VarE2 != null) {
                                view2 = w0VarE2.f3048a;
                                if (view2.hasFocusable()) {
                                    view4 = view2;
                                } else {
                                    i4++;
                                }
                            }
                        }
                        while (iMin >= 0) {
                            w0VarE = E(iMin);
                            if (w0VarE == null) {
                                break;
                                break;
                            }
                            view = w0VarE.f3048a;
                            if (view.hasFocusable()) {
                                view4 = view;
                                break;
                            }
                        }
                    }
                }
                if (view4 != null) {
                    i5 = t0Var.f3015n;
                    if (i5 != -1 && (viewFindViewById = view4.findViewById(i5)) != null && viewFindViewById.isFocusable()) {
                        view4 = viewFindViewById;
                    }
                    view4.requestFocus();
                }
            }
        }
        t0Var.f3014m = -1L;
        t0Var.f3013l = -1;
        t0Var.f3015n = -1;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x005a  */
    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        float refreshRate;
        super.onAttachedToWindow();
        this.A = 0;
        this.f643p = true;
        this.f647r = this.f647r && !isLayoutRequested();
        i0 i0Var = this.f635l;
        if (i0Var != null) {
            i0Var.f2911g = true;
        }
        this.f630i0 = false;
        ThreadLocal threadLocal = p.f2979e;
        p pVar = (p) threadLocal.get();
        this.f616a0 = pVar;
        if (pVar == null) {
            p pVar2 = new p();
            pVar2.f2980a = new ArrayList();
            pVar2.f2982d = new ArrayList();
            this.f616a0 = pVar2;
            WeakHashMap weakHashMap = p0.f727a;
            Display displayB = b0.b(this);
            if (isInEditMode() || displayB == null) {
                refreshRate = 60.0f;
            } else {
                refreshRate = displayB.getRefreshRate();
                if (refreshRate < 30.0f) {
                    refreshRate = 60.0f;
                }
            }
            p pVar3 = this.f616a0;
            pVar3.f2981c = (long) (1.0E9f / refreshRate);
            threadLocal.set(pVar3);
        }
        this.f616a0.f2980a.add(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        w wVar;
        super.onDetachedFromWindow();
        e0 e0Var = this.H;
        if (e0Var != null) {
            e0Var.e();
        }
        setScrollState(0);
        v0 v0Var = this.W;
        v0Var.f3032g.removeCallbacks(v0Var);
        v0Var.f3029c.abortAnimation();
        i0 i0Var = this.f635l;
        if (i0Var != null && (wVar = i0Var.f2910e) != null) {
            wVar.g();
        }
        this.f643p = false;
        i0 i0Var2 = this.f635l;
        if (i0Var2 != null) {
            i0Var2.f2911g = false;
            i0Var2.M(this);
        }
        this.f644p0.clear();
        removeCallbacks(this.f646q0);
        this.f.getClass();
        while (h1.f2900d.a() != null) {
        }
        p pVar = this.f616a0;
        if (pVar != null) {
            pVar.f2980a.remove(this);
            this.f616a0 = null;
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        ArrayList arrayList = this.f637m;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            ((f0) arrayList.get(i3)).a(this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0064  */
    @Override // android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float f;
        float axisValue;
        if (this.f635l != null && !this.f651u && motionEvent.getAction() == 8) {
            if ((motionEvent.getSource() & 2) != 0) {
                f = this.f635l.e() ? -motionEvent.getAxisValue(9) : 0.0f;
                axisValue = this.f635l.d() ? motionEvent.getAxisValue(10) : 0.0f;
            } else if ((motionEvent.getSource() & 4194304) != 0) {
                float axisValue2 = motionEvent.getAxisValue(26);
                if (this.f635l.e()) {
                    f = -axisValue2;
                } else if (this.f635l.d()) {
                    axisValue = axisValue2;
                    f = 0.0f;
                } else {
                    f = 0.0f;
                    axisValue = 0.0f;
                }
            } else {
                f = 0.0f;
                axisValue = 0.0f;
            }
            if (f != 0.0f || axisValue != 0.0f) {
                W((int) (axisValue * this.T), (int) (f * this.U), motionEvent);
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z2;
        if (!this.f651u) {
            this.f641o = null;
            if (B(motionEvent)) {
                V();
                setScrollState(0);
                return true;
            }
            i0 i0Var = this.f635l;
            if (i0Var != null) {
                boolean zD = i0Var.d();
                boolean zE = this.f635l.e();
                if (this.K == null) {
                    this.K = VelocityTracker.obtain();
                }
                this.K.addMovement(motionEvent);
                int actionMasked = motionEvent.getActionMasked();
                int actionIndex = motionEvent.getActionIndex();
                if (actionMasked == 0) {
                    if (this.f652v) {
                        this.f652v = false;
                    }
                    this.J = motionEvent.getPointerId(0);
                    int x2 = (int) (motionEvent.getX() + 0.5f);
                    this.N = x2;
                    this.L = x2;
                    int y2 = (int) (motionEvent.getY() + 0.5f);
                    this.O = y2;
                    this.M = y2;
                    if (this.I == 2) {
                        getParent().requestDisallowInterceptTouchEvent(true);
                        setScrollState(1);
                        c0(1);
                    }
                    int[] iArr = this.f640n0;
                    iArr[1] = 0;
                    iArr[0] = 0;
                    int i3 = zD;
                    if (zE) {
                        i3 = (zD ? 1 : 0) | 2;
                    }
                    getScrollingChildHelper().g(i3, 0);
                } else if (actionMasked == 1) {
                    this.K.clear();
                    c0(0);
                } else if (actionMasked == 2) {
                    int iFindPointerIndex = motionEvent.findPointerIndex(this.J);
                    if (iFindPointerIndex < 0) {
                        Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.J + " not found. Did any MotionEvents get skipped?");
                        return false;
                    }
                    int x3 = (int) (motionEvent.getX(iFindPointerIndex) + 0.5f);
                    int y3 = (int) (motionEvent.getY(iFindPointerIndex) + 0.5f);
                    if (this.I != 1) {
                        int i4 = x3 - this.L;
                        int i5 = y3 - this.M;
                        if (!zD || Math.abs(i4) <= this.P) {
                            z2 = false;
                        } else {
                            this.N = x3;
                            z2 = true;
                        }
                        if (zE && Math.abs(i5) > this.P) {
                            this.O = y3;
                            z2 = true;
                        }
                        if (z2) {
                            setScrollState(1);
                        }
                    }
                } else if (actionMasked == 3) {
                    V();
                    setScrollState(0);
                } else if (actionMasked == 5) {
                    this.J = motionEvent.getPointerId(actionIndex);
                    int x4 = (int) (motionEvent.getX(actionIndex) + 0.5f);
                    this.N = x4;
                    this.L = x4;
                    int y4 = (int) (motionEvent.getY(actionIndex) + 0.5f);
                    this.O = y4;
                    this.M = y4;
                } else if (actionMasked == 6) {
                    R(motionEvent);
                }
                if (this.I == 1) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i3, int i4, int i5, int i6) {
        int i7 = h.f4654a;
        g.a("RV OnLayout");
        o();
        g.b();
        this.f647r = true;
    }

    @Override // android.view.View
    public final void onMeasure(int i3, int i4) {
        i0 i0Var = this.f635l;
        if (i0Var == null) {
            n(i3, i4);
            return;
        }
        boolean zH = i0Var.H();
        t0 t0Var = this.f619c0;
        if (!zH) {
            if (this.f645q) {
                this.f635l.b.n(i3, i4);
                return;
            }
            if (t0Var.f3012k) {
                setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
                return;
            }
            a0 a0Var = this.f633k;
            if (a0Var != null) {
                t0Var.f3007e = a0Var.a();
            } else {
                t0Var.f3007e = 0;
            }
            a0();
            this.f635l.b.n(i3, i4);
            b0(false);
            t0Var.f3008g = false;
            return;
        }
        int mode = View.MeasureSpec.getMode(i3);
        int mode2 = View.MeasureSpec.getMode(i4);
        this.f635l.b.n(i3, i4);
        if ((mode == 1073741824 && mode2 == 1073741824) || this.f633k == null) {
            return;
        }
        if (t0Var.f3006d == 1) {
            p();
        }
        this.f635l.l0(i3, i4);
        t0Var.f3010i = true;
        q();
        this.f635l.n0(i3, i4);
        if (this.f635l.q0()) {
            this.f635l.l0(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
            t0Var.f3010i = true;
            q();
            this.f635l.n0(i3, i4);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i3, Rect rect) {
        if (L()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i3, rect);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof q0)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        q0 q0Var = (q0) parcelable;
        this.f618c = q0Var;
        super.onRestoreInstanceState(q0Var.f1951a);
        i0 i0Var = this.f635l;
        if (i0Var == null || (parcelable2 = this.f618c.f2984c) == null) {
            return;
        }
        i0Var.Y(parcelable2);
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        q0 q0Var = new q0(super.onSaveInstanceState());
        q0 q0Var2 = this.f618c;
        if (q0Var2 != null) {
            q0Var.f2984c = q0Var2.f2984c;
            return q0Var;
        }
        i0 i0Var = this.f635l;
        if (i0Var != null) {
            q0Var.f2984c = i0Var.Z();
            return q0Var;
        }
        q0Var.f2984c = null;
        return q0Var;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i3, int i4, int i5, int i6) {
        super.onSizeChanged(i3, i4, i5, i6);
        if (i3 == i5 && i4 == i6) {
            return;
        }
        this.G = null;
        this.E = null;
        this.F = null;
        this.D = null;
    }

    /* JADX WARN: Code duplicated, block: B:191:0x034c  */
    /* JADX WARN: Code duplicated, block: B:215:0x0398  */
    /* JADX WARN: Code duplicated, block: B:244:0x03f4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:245:0x03f6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:246:0x03f8  */
    /* JADX WARN: Code duplicated, block: B:249:0x0426  */
    /* JADX WARN: Code duplicated, block: B:96:0x01f8 A[PHI: r1
      0x01f8: PHI (r1v53 int) = (r1v38 int), (r1v57 int) binds: [B:90:0x01e1, B:94:0x01f4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v24, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v26 */
    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zB;
        int i3;
        v0 v0Var;
        RecyclerView recyclerView;
        Interpolator interpolator;
        d dVar;
        int minFlingVelocity;
        boolean z2;
        View viewC;
        int iD;
        int i4;
        int iB;
        int i5;
        int i6;
        int i7;
        int i8;
        boolean z3;
        if (!this.f651u && !this.f652v) {
            m mVar = this.f641o;
            if (mVar == null) {
                zB = motionEvent.getAction() == 0 ? false : B(motionEvent);
            } else {
                int i9 = mVar.b;
                if (mVar.f2957v != 0) {
                    if (motionEvent.getAction() == 0) {
                        boolean zD = mVar.d(motionEvent.getX(), motionEvent.getY());
                        boolean zC = mVar.c(motionEvent.getX(), motionEvent.getY());
                        if (zD || zC) {
                            if (zC) {
                                mVar.f2958w = 1;
                                mVar.f2951p = (int) motionEvent.getX();
                            } else if (zD) {
                                mVar.f2958w = 2;
                                mVar.f2948m = (int) motionEvent.getY();
                            }
                            mVar.f(2);
                        }
                    } else if (motionEvent.getAction() == 1 && mVar.f2957v == 2) {
                        mVar.f2948m = 0.0f;
                        mVar.f2951p = 0.0f;
                        mVar.f(1);
                        mVar.f2958w = 0;
                    } else if (motionEvent.getAction() == 2 && mVar.f2957v == 2) {
                        mVar.g();
                        if (mVar.f2958w == 1) {
                            float x2 = motionEvent.getX();
                            int[] iArr = mVar.f2960y;
                            iArr[0] = i9;
                            int i10 = mVar.f2952q - i9;
                            iArr[1] = i10;
                            float fMax = Math.max(i9, Math.min(i10, x2));
                            if (Math.abs(mVar.f2950o - fMax) >= 2.0f) {
                                int iE = m.e(mVar.f2951p, fMax, iArr, mVar.f2954s.computeHorizontalScrollRange(), mVar.f2954s.computeHorizontalScrollOffset(), mVar.f2952q);
                                if (iE != 0) {
                                    mVar.f2954s.scrollBy(iE, 0);
                                }
                                mVar.f2951p = fMax;
                            }
                        }
                        if (mVar.f2958w == 2) {
                            float y2 = motionEvent.getY();
                            int[] iArr2 = mVar.f2959x;
                            iArr2[0] = i9;
                            int i11 = mVar.f2953r - i9;
                            iArr2[1] = i11;
                            float fMax2 = Math.max(i9, Math.min(i11, y2));
                            if (Math.abs(mVar.f2947l - fMax2) >= 2.0f) {
                                int iE2 = m.e(mVar.f2948m, fMax2, iArr2, mVar.f2954s.computeVerticalScrollRange(), mVar.f2954s.computeVerticalScrollOffset(), mVar.f2953r);
                                if (iE2 != 0) {
                                    mVar.f2954s.scrollBy(0, iE2);
                                }
                                mVar.f2948m = fMax2;
                            }
                        }
                    }
                }
                int action = motionEvent.getAction();
                if (action == 3 || action == 1) {
                    this.f641o = null;
                }
                zB = true;
            }
            if (zB) {
                V();
                setScrollState(0);
                return true;
            }
            i0 i0Var = this.f635l;
            if (i0Var != null) {
                boolean zD2 = i0Var.d();
                boolean zE = this.f635l.e();
                if (this.K == null) {
                    this.K = VelocityTracker.obtain();
                }
                int actionMasked = motionEvent.getActionMasked();
                int actionIndex = motionEvent.getActionIndex();
                int[] iArr3 = this.f640n0;
                if (actionMasked == 0) {
                    iArr3[1] = 0;
                    iArr3[0] = 0;
                }
                MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                motionEventObtain.offsetLocation(iArr3[0], iArr3[1]);
                if (actionMasked != 0) {
                    if (actionMasked == 1) {
                        this.K.addMovement(motionEventObtain);
                        VelocityTracker velocityTracker = this.K;
                        int i12 = this.S;
                        velocityTracker.computeCurrentVelocity(1000, i12);
                        float f = zD2 ? -this.K.getXVelocity(this.J) : 0.0f;
                        float f3 = zE ? -this.K.getYVelocity(this.J) : 0.0f;
                        if (f == 0.0f && f3 == 0.0f) {
                            i8 = 0;
                        } else {
                            int i13 = (int) f;
                            int i14 = (int) f3;
                            i0 i0Var2 = this.f635l;
                            if (i0Var2 == null) {
                                Log.e("RecyclerView", "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.");
                            } else if (!this.f651u) {
                                int iD2 = i0Var2.d();
                                boolean zE2 = this.f635l.e();
                                int i15 = this.R;
                                if (iD2 == 0 || Math.abs(i13) < i15) {
                                    i13 = 0;
                                }
                                if (!zE2 || Math.abs(i14) < i15) {
                                    i14 = 0;
                                }
                                if (i13 != 0 || i14 != 0) {
                                    float f4 = i13;
                                    float f5 = i14;
                                    if (!dispatchNestedPreFling(f4, f5)) {
                                        boolean z4 = iD2 != 0 || zE2;
                                        dispatchNestedFling(f4, f5, z4);
                                        k0 k0Var = this.Q;
                                        if (k0Var != null) {
                                            x xVar = (x) k0Var;
                                            i0 layoutManager = xVar.f3064a.getLayoutManager();
                                            if (layoutManager != 0 && xVar.f3064a.getAdapter() != null && ((Math.abs(i14) > (minFlingVelocity = xVar.f3064a.getMinFlingVelocity()) || Math.abs(i13) > minFlingVelocity) && ((z2 = layoutManager instanceof s0)))) {
                                                a1 a1Var = !z2 ? null : new a1(xVar, xVar.f3064a.getContext());
                                                if (a1Var != null) {
                                                    int i16 = -1;
                                                    if (z2) {
                                                        RecyclerView recyclerView2 = layoutManager.b;
                                                        a0 adapter = recyclerView2 != null ? recyclerView2.getAdapter() : null;
                                                        int iA = adapter != null ? adapter.a() : 0;
                                                        if (iA != 0) {
                                                            if (layoutManager.e()) {
                                                                viewC = x.c(layoutManager, xVar.e(layoutManager));
                                                            } else {
                                                                viewC = layoutManager.d() ? x.c(layoutManager, xVar.d(layoutManager)) : null;
                                                            }
                                                            if (viewC == null || (iD = i0.D(viewC)) == -1) {
                                                                i7 = -1;
                                                            } else {
                                                                i16 = iA - 1;
                                                                PointF pointFA = ((s0) layoutManager).a(i16);
                                                                if (pointFA != null) {
                                                                    if (layoutManager.d()) {
                                                                        i4 = iD;
                                                                        iB = xVar.b(layoutManager, xVar.d(layoutManager), i13, 0);
                                                                        if (pointFA.x < 0) {
                                                                            iB = -iB;
                                                                        }
                                                                    } else {
                                                                        i4 = iD;
                                                                        iB = 0;
                                                                    }
                                                                    if (layoutManager.e()) {
                                                                        i5 = iB;
                                                                        int iB2 = xVar.b(layoutManager, xVar.e(layoutManager), 0, i14);
                                                                        i6 = pointFA.y < r5 ? -iB2 : iB2;
                                                                    } else {
                                                                        i5 = iB;
                                                                        i6 = 0;
                                                                    }
                                                                    if (!layoutManager.e()) {
                                                                        i6 = i5;
                                                                    }
                                                                    if (i6 == 0) {
                                                                        i7 = -1;
                                                                        i16 = -1;
                                                                    } else {
                                                                        int i17 = i4 + i6;
                                                                        if (i17 < 0) {
                                                                            i17 = 0;
                                                                        }
                                                                        if (i17 < iA) {
                                                                            i16 = i17;
                                                                        }
                                                                        i7 = -1;
                                                                    }
                                                                } else {
                                                                    i7 = -1;
                                                                    i16 = -1;
                                                                }
                                                            }
                                                        } else {
                                                            i7 = -1;
                                                        }
                                                    } else {
                                                        i7 = -1;
                                                    }
                                                    if (i16 != i7) {
                                                        a1Var.f3033a = i16;
                                                        layoutManager.t0(a1Var);
                                                    } else if (z4) {
                                                        if (zE2) {
                                                            iD2 = (iD2 == true ? 1 : 0) | 2;
                                                        }
                                                        getScrollingChildHelper().g(iD2, 1);
                                                        int i18 = -i12;
                                                        int iMax = Math.max(i18, Math.min(i13, i12));
                                                        int iMax2 = Math.max(i18, Math.min(i14, i12));
                                                        v0Var = this.W;
                                                        recyclerView = v0Var.f3032g;
                                                        recyclerView.setScrollState(2);
                                                        v0Var.b = 0;
                                                        v0Var.f3028a = 0;
                                                        interpolator = v0Var.f3030d;
                                                        dVar = f614u0;
                                                        if (interpolator != dVar) {
                                                            v0Var.f3030d = dVar;
                                                            v0Var.f3029c = new OverScroller(recyclerView.getContext(), dVar);
                                                        }
                                                        v0Var.f3029c.fling(0, 0, iMax, iMax2, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
                                                        v0Var.a();
                                                    }
                                                } else if (z4) {
                                                    if (zE2) {
                                                        iD2 = (iD2 == true ? 1 : 0) | 2;
                                                    }
                                                    getScrollingChildHelper().g(iD2, 1);
                                                    int i19 = -i12;
                                                    int iMax3 = Math.max(i19, Math.min(i13, i12));
                                                    int iMax4 = Math.max(i19, Math.min(i14, i12));
                                                    v0Var = this.W;
                                                    recyclerView = v0Var.f3032g;
                                                    recyclerView.setScrollState(2);
                                                    v0Var.b = 0;
                                                    v0Var.f3028a = 0;
                                                    interpolator = v0Var.f3030d;
                                                    dVar = f614u0;
                                                    if (interpolator != dVar) {
                                                        v0Var.f3030d = dVar;
                                                        v0Var.f3029c = new OverScroller(recyclerView.getContext(), dVar);
                                                    }
                                                    v0Var.f3029c.fling(0, 0, iMax3, iMax4, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
                                                    v0Var.a();
                                                }
                                            } else if (z4) {
                                                if (zE2) {
                                                    iD2 = (iD2 == true ? 1 : 0) | 2;
                                                }
                                                getScrollingChildHelper().g(iD2, 1);
                                                int i110 = -i12;
                                                int iMax5 = Math.max(i110, Math.min(i13, i12));
                                                int iMax6 = Math.max(i110, Math.min(i14, i12));
                                                v0Var = this.W;
                                                recyclerView = v0Var.f3032g;
                                                recyclerView.setScrollState(2);
                                                v0Var.b = 0;
                                                v0Var.f3028a = 0;
                                                interpolator = v0Var.f3030d;
                                                dVar = f614u0;
                                                if (interpolator != dVar) {
                                                    v0Var.f3030d = dVar;
                                                    v0Var.f3029c = new OverScroller(recyclerView.getContext(), dVar);
                                                }
                                                v0Var.f3029c.fling(0, 0, iMax5, iMax6, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
                                                v0Var.a();
                                            }
                                        } else if (z4) {
                                            if (zE2) {
                                                iD2 = (iD2 == true ? 1 : 0) | 2;
                                            }
                                            getScrollingChildHelper().g(iD2, 1);
                                            int i111 = -i12;
                                            int iMax7 = Math.max(i111, Math.min(i13, i12));
                                            int iMax8 = Math.max(i111, Math.min(i14, i12));
                                            v0Var = this.W;
                                            recyclerView = v0Var.f3032g;
                                            recyclerView.setScrollState(2);
                                            v0Var.b = 0;
                                            v0Var.f3028a = 0;
                                            interpolator = v0Var.f3030d;
                                            dVar = f614u0;
                                            if (interpolator != dVar) {
                                                v0Var.f3030d = dVar;
                                                v0Var.f3029c = new OverScroller(recyclerView.getContext(), dVar);
                                            }
                                            v0Var.f3029c.fling(0, 0, iMax7, iMax8, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
                                            v0Var.a();
                                        }
                                        V();
                                    }
                                }
                            }
                            i8 = 0;
                        }
                        setScrollState(i8);
                        V();
                    } else if (actionMasked == 2) {
                        int iFindPointerIndex = motionEvent.findPointerIndex(this.J);
                        if (iFindPointerIndex < 0) {
                            Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.J + " not found. Did any MotionEvents get skipped?");
                            return false;
                        }
                        int x3 = (int) (motionEvent.getX(iFindPointerIndex) + 0.5f);
                        int y3 = (int) (motionEvent.getY(iFindPointerIndex) + 0.5f);
                        int iMax9 = this.N - x3;
                        int iMax10 = this.O - y3;
                        if (this.I != 1) {
                            if (zD2) {
                                iMax9 = iMax9 > 0 ? Math.max(0, iMax9 - this.P) : Math.min(0, iMax9 + this.P);
                                if (iMax9 != 0) {
                                    z3 = true;
                                } else {
                                    z3 = false;
                                }
                            } else {
                                z3 = false;
                            }
                            if (zE) {
                                iMax10 = iMax10 > 0 ? Math.max(0, iMax10 - this.P) : Math.min(0, iMax10 + this.P);
                                if (iMax10 != 0) {
                                    z3 = true;
                                }
                            }
                            if (z3) {
                                setScrollState(1);
                            }
                        }
                        int i20 = iMax9;
                        int i21 = iMax10;
                        if (this.I == 1) {
                            int[] iArr4 = this.f642o0;
                            iArr4[0] = 0;
                            iArr4[1] = 0;
                            boolean zR = r(zD2 ? i20 : 0, zE ? i21 : 0, iArr4, this.f638m0, 0);
                            int[] iArr5 = this.f638m0;
                            if (zR) {
                                i20 -= iArr4[0];
                                i21 -= iArr4[1];
                                iArr3[0] = iArr3[0] + iArr5[0];
                                iArr3[1] = iArr3[1] + iArr5[1];
                                getParent().requestDisallowInterceptTouchEvent(true);
                            }
                            int i22 = i21;
                            this.N = x3 - iArr5[0];
                            this.O = y3 - iArr5[1];
                            if (W(zD2 ? i20 : 0, zE ? i22 : 0, motionEvent)) {
                                getParent().requestDisallowInterceptTouchEvent(true);
                            }
                            p pVar = this.f616a0;
                            if (pVar != null && (i20 != 0 || i22 != 0)) {
                                pVar.a(this, i20, i22);
                            }
                        }
                    } else if (actionMasked == 3) {
                        V();
                        setScrollState(0);
                    } else if (actionMasked == 5) {
                        this.J = motionEvent.getPointerId(actionIndex);
                        int x4 = (int) (motionEvent.getX(actionIndex) + 0.5f);
                        this.N = x4;
                        this.L = x4;
                        int y4 = (int) (motionEvent.getY(actionIndex) + 0.5f);
                        this.O = y4;
                        this.M = y4;
                    } else if (actionMasked == 6) {
                        R(motionEvent);
                    }
                    motionEventObtain.recycle();
                    return true;
                }
                this.J = motionEvent.getPointerId(0);
                int x5 = (int) (motionEvent.getX() + 0.5f);
                this.N = x5;
                this.L = x5;
                int y5 = (int) (motionEvent.getY() + 0.5f);
                this.O = y5;
                this.M = y5;
                if (zE) {
                    i3 = zD2;
                    i3 = (zD2 ? 1 : 0) | 2;
                }
                i3 = zD2;
                getScrollingChildHelper().g(i3, 0);
                this.K.addMovement(motionEventObtain);
                motionEventObtain.recycle();
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:254:0x03c6  */
    /* JADX WARN: Code duplicated, block: B:347:0x0240 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:40:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:42:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:44:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:47:0x010c  */
    /* JADX WARN: Code duplicated, block: B:48:0x0110  */
    /* JADX WARN: Code duplicated, block: B:50:0x0118  */
    /* JADX WARN: Code duplicated, block: B:52:0x011d  */
    public final void p() {
        l.e eVar;
        k kVar;
        View viewA;
        int iF;
        h1 h1Var;
        l.e eVar2;
        k kVar2;
        boolean z2;
        boolean z3;
        boolean z4;
        byte b;
        boolean z5;
        boolean z6;
        a aVarG;
        int i3;
        int i4;
        int i5;
        a aVar;
        t0 t0Var = this.f619c0;
        t0Var.a(1);
        z(t0Var);
        t0Var.f3010i = false;
        a0();
        c cVar = this.f;
        k kVar3 = (k) cVar.f100a;
        k kVar4 = (k) cVar.f100a;
        kVar3.clear();
        l.e eVar3 = (l.e) cVar.b;
        eVar3.a();
        P();
        if (this.f655y) {
            b bVar = this.f620d;
            bVar.i((ArrayList) bVar.f2844c);
            bVar.i((ArrayList) bVar.f2845d);
            if (this.f656z) {
                this.f635l.S();
            }
        }
        if (this.H == null || !this.f635l.u0()) {
            eVar = eVar3;
            kVar = kVar4;
            this.f620d.b();
        } else {
            b bVar2 = this.f620d;
            b0.c cVar2 = (b0.c) bVar2.b;
            z zVar = (z) bVar2.f2846e;
            androidx.emoji2.text.m mVar = (androidx.emoji2.text.m) bVar2.f;
            ArrayList arrayList = (ArrayList) bVar2.f2844c;
            mVar.getClass();
            while (true) {
                int size = arrayList.size() - 1;
                boolean z7 = false;
                while (true) {
                    if (size < 0) {
                        size = -1;
                        break;
                    }
                    if (((a) arrayList.get(size)).f2839a == 8) {
                        if (z7) {
                            break;
                        }
                    } else {
                        z7 = true;
                    }
                    size--;
                }
                if (size == -1) {
                    break;
                }
                int i6 = size + 1;
                b bVar3 = (b) mVar.b;
                b0.c cVar3 = (b0.c) bVar3.b;
                a aVar2 = (a) arrayList.get(size);
                a aVar3 = (a) arrayList.get(i6);
                androidx.emoji2.text.m mVar2 = mVar;
                int i7 = aVar3.f2839a;
                if (i7 != 1) {
                    a aVarG2 = null;
                    if (i7 == 2) {
                        eVar3 = eVar3;
                        kVar4 = kVar4;
                        int i8 = aVar2.b;
                        int i9 = aVar2.f2840c;
                        if (i8 < i9) {
                            if (aVar3.b == i8 && aVar3.f2840c == i9 - i8) {
                                z5 = false;
                                z6 = true;
                            } else {
                                z5 = false;
                                z6 = false;
                            }
                        } else if (aVar3.b == i9 + 1 && aVar3.f2840c == i8 - i9) {
                            z5 = true;
                            z6 = true;
                        } else {
                            z5 = true;
                            z6 = false;
                        }
                        int i10 = aVar3.b;
                        if (i9 < i10) {
                            aVar3.b = i10 - 1;
                        } else {
                            int i11 = aVar3.f2840c;
                            if (i9 < i10 + i11) {
                                aVar3.f2840c = i11 - 1;
                                aVar2.f2839a = 2;
                                aVar2.f2840c = 1;
                                if (aVar3.f2840c == 0) {
                                    arrayList.remove(i6);
                                    cVar3.c(aVar3);
                                }
                            }
                        }
                        int i12 = aVar2.b;
                        int i13 = aVar3.b;
                        if (i12 <= i13) {
                            aVar3.b = i13 + 1;
                        } else {
                            int i14 = i13 + aVar3.f2840c;
                            if (i12 < i14) {
                                aVarG2 = bVar3.g(2, i12 + 1, i14 - i12);
                                aVar3.f2840c = aVar2.b - aVar3.b;
                            }
                        }
                        a aVar4 = aVarG2;
                        if (z6) {
                            arrayList.set(size, aVar3);
                            arrayList.remove(i6);
                            cVar3.c(aVar2);
                        } else {
                            if (z5) {
                                if (aVar4 != null) {
                                    int i15 = aVar2.b;
                                    if (i15 > aVar4.b) {
                                        aVar2.b = i15 - aVar4.f2840c;
                                    }
                                    int i16 = aVar2.f2840c;
                                    if (i16 > aVar4.b) {
                                        aVar2.f2840c = i16 - aVar4.f2840c;
                                    }
                                }
                                int i17 = aVar2.b;
                                if (i17 > aVar3.b) {
                                    aVar2.b = i17 - aVar3.f2840c;
                                }
                                int i18 = aVar2.f2840c;
                                if (i18 > aVar3.b) {
                                    aVar2.f2840c = i18 - aVar3.f2840c;
                                }
                            } else {
                                if (aVar4 != null) {
                                    int i19 = aVar2.b;
                                    if (i19 >= aVar4.b) {
                                        aVar2.b = i19 - aVar4.f2840c;
                                    }
                                    int i20 = aVar2.f2840c;
                                    if (i20 >= aVar4.b) {
                                        aVar2.f2840c = i20 - aVar4.f2840c;
                                    }
                                }
                                int i21 = aVar2.b;
                                if (i21 >= aVar3.b) {
                                    aVar2.b = i21 - aVar3.f2840c;
                                }
                                int i22 = aVar2.f2840c;
                                if (i22 >= aVar3.b) {
                                    aVar2.f2840c = i22 - aVar3.f2840c;
                                }
                            }
                            arrayList.set(size, aVar3);
                            if (aVar2.b != aVar2.f2840c) {
                                arrayList.set(i6, aVar2);
                            } else {
                                arrayList.remove(i6);
                            }
                            if (aVar4 != null) {
                                arrayList.add(size, aVar4);
                            }
                        }
                    } else if (i7 != 4) {
                        eVar3 = eVar3;
                        kVar4 = kVar4;
                    } else {
                        int i23 = aVar2.f2840c;
                        int i24 = aVar3.b;
                        if (i23 < i24) {
                            aVar3.b = i24 - 1;
                        } else {
                            int i25 = aVar3.f2840c;
                            if (i23 < i24 + i25) {
                                aVar3.f2840c = i25 - 1;
                                aVarG = bVar3.g(4, aVar2.b, 1);
                            }
                            i3 = aVar2.b;
                            i4 = aVar3.b;
                            if (i3 <= i4) {
                                aVar3.b = i4 + 1;
                            } else {
                                i5 = i4 + aVar3.f2840c;
                                if (i3 < i5) {
                                    int i26 = i5 - i3;
                                    aVarG2 = bVar3.g(4, i3 + 1, i26);
                                    aVar3.f2840c -= i26;
                                }
                                aVar = aVarG2;
                                arrayList.set(i6, aVar2);
                                if (aVar3.f2840c > 0) {
                                    arrayList.set(size, aVar3);
                                } else {
                                    arrayList.remove(size);
                                    cVar3.c(aVar3);
                                }
                                if (aVarG != null) {
                                    arrayList.add(size, aVarG);
                                }
                                if (aVar != null) {
                                    arrayList.add(size, aVar);
                                }
                            }
                            aVar = aVarG2;
                            arrayList.set(i6, aVar2);
                            if (aVar3.f2840c > 0) {
                                arrayList.set(size, aVar3);
                            } else {
                                arrayList.remove(size);
                                cVar3.c(aVar3);
                            }
                            if (aVarG != null) {
                                arrayList.add(size, aVarG);
                            }
                            if (aVar != null) {
                                arrayList.add(size, aVar);
                            }
                        }
                        aVarG = null;
                        i3 = aVar2.b;
                        i4 = aVar3.b;
                        if (i3 <= i4) {
                            aVar3.b = i4 + 1;
                        } else {
                            i5 = i4 + aVar3.f2840c;
                            if (i3 < i5) {
                                int i27 = i5 - i3;
                                aVarG2 = bVar3.g(4, i3 + 1, i27);
                                aVar3.f2840c -= i27;
                            }
                            aVar = aVarG2;
                            arrayList.set(i6, aVar2);
                            if (aVar3.f2840c > 0) {
                                arrayList.set(size, aVar3);
                            } else {
                                arrayList.remove(size);
                                cVar3.c(aVar3);
                            }
                            if (aVarG != null) {
                                arrayList.add(size, aVarG);
                            }
                            if (aVar != null) {
                                arrayList.add(size, aVar);
                            }
                        }
                        aVar = aVarG2;
                        arrayList.set(i6, aVar2);
                        if (aVar3.f2840c > 0) {
                            arrayList.set(size, aVar3);
                        } else {
                            arrayList.remove(size);
                            cVar3.c(aVar3);
                        }
                        if (aVarG != null) {
                            arrayList.add(size, aVarG);
                        }
                        if (aVar != null) {
                            arrayList.add(size, aVar);
                        }
                    }
                } else {
                    eVar3 = eVar3;
                    kVar4 = kVar4;
                    int i28 = aVar2.f2840c;
                    int i29 = aVar3.b;
                    int i30 = i28 < i29 ? -1 : 0;
                    int i31 = aVar2.b;
                    if (i31 < i29) {
                        i30++;
                    }
                    if (i29 <= i31) {
                        aVar2.b = i31 + aVar3.f2840c;
                    }
                    int i32 = aVar3.b;
                    if (i32 <= i28) {
                        aVar2.f2840c = i28 + aVar3.f2840c;
                    }
                    aVar3.b = i32 + i30;
                    arrayList.set(size, aVar3);
                    arrayList.set(i6, aVar2);
                }
                mVar = mVar2;
                eVar3 = eVar3;
                kVar4 = kVar4;
            }
            eVar = eVar3;
            kVar = kVar4;
            int size2 = arrayList.size();
            for (int i33 = 0; i33 < size2; i33++) {
                a aVarG3 = (a) arrayList.get(i33);
                int i34 = aVarG3.f2839a;
                if (i34 == 1) {
                    bVar2.h(aVarG3);
                } else if (i34 == 2) {
                    int i35 = aVarG3.b;
                    int i36 = aVarG3.f2840c + i35;
                    int i37 = i35;
                    int i38 = 0;
                    byte b3 = -1;
                    while (i37 < i36) {
                        if (zVar.b(i37) != null || bVar2.a(i37)) {
                            if (b3 == 0) {
                                bVar2.c(bVar2.g(2, i35, i38));
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            z4 = z3;
                            b = 1;
                        } else {
                            if (b3 == 1) {
                                bVar2.h(bVar2.g(2, i35, i38));
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            b = 0;
                        }
                        if (z4) {
                            i37 -= i38;
                            i36 -= i38;
                            i38 = 1;
                        } else {
                            i38++;
                        }
                        i37++;
                        b3 = b;
                    }
                    if (i38 != aVarG3.f2840c) {
                        cVar2.c(aVarG3);
                        aVarG3 = bVar2.g(2, i35, i38);
                    }
                    if (b3 == 0) {
                        bVar2.c(aVarG3);
                    } else {
                        bVar2.h(aVarG3);
                    }
                } else if (i34 == 4) {
                    int i39 = aVarG3.b;
                    int i40 = aVarG3.f2840c + i39;
                    int i41 = i39;
                    int i42 = 0;
                    byte b4 = -1;
                    while (i39 < i40) {
                        if (zVar.b(i39) != null || bVar2.a(i39)) {
                            if (b4 == 0) {
                                bVar2.c(bVar2.g(4, i41, i42));
                                i41 = i39;
                                i42 = 0;
                            }
                            b4 = 1;
                        } else {
                            if (b4 == 1) {
                                bVar2.h(bVar2.g(4, i41, i42));
                                i41 = i39;
                                i42 = 0;
                            }
                            b4 = 0;
                        }
                        i42++;
                        i39++;
                    }
                    if (i42 != aVarG3.f2840c) {
                        cVar2.c(aVarG3);
                        aVarG3 = bVar2.g(4, i41, i42);
                    }
                    if (b4 == 0) {
                        bVar2.c(aVarG3);
                    } else {
                        bVar2.h(aVarG3);
                    }
                } else if (i34 == 8) {
                    bVar2.h(aVarG3);
                }
            }
            arrayList.clear();
        }
        boolean z8 = this.f624f0 || this.f626g0;
        boolean z9 = this.f647r && this.H != null && ((z2 = this.f655y) || z8 || this.f635l.f) && (!z2 || this.f633k.b);
        t0 t0Var2 = this.f619c0;
        t0Var2.f3011j = z9;
        t0Var2.f3012k = z9 && z8 && !this.f655y && this.H != null && this.f635l.u0();
        View focusedChild = (this.V && hasFocus() && this.f633k != null) ? getFocusedChild() : null;
        w0 w0VarH = (focusedChild == null || (viewA = A(focusedChild)) == null) ? null : H(viewA);
        if (w0VarH == null) {
            t0Var.f3014m = -1L;
            t0Var.f3013l = -1;
            t0Var.f3015n = -1;
        } else {
            t0Var.f3014m = this.f633k.b ? w0VarH.f3051e : -1L;
            if (this.f655y) {
                iF = -1;
            } else if (w0VarH.h()) {
                iF = w0VarH.f3050d;
            } else {
                RecyclerView recyclerView = w0VarH.f3063r;
                if (recyclerView == null) {
                    iF = -1;
                } else {
                    iF = recyclerView.F(w0VarH);
                }
            }
            t0Var.f3013l = iF;
            View focusedChild2 = w0VarH.f3048a;
            int id = focusedChild2.getId();
            while (!focusedChild2.isFocused() && (focusedChild2 instanceof ViewGroup) && focusedChild2.hasFocus()) {
                focusedChild2 = ((ViewGroup) focusedChild2).getFocusedChild();
                if (focusedChild2.getId() != -1) {
                    id = focusedChild2.getId();
                }
            }
            t0Var.f3015n = id;
        }
        t0Var.f3009h = t0Var.f3011j && this.f626g0;
        this.f626g0 = false;
        this.f624f0 = false;
        t0Var.f3008g = t0Var.f3012k;
        t0Var.f3007e = this.f633k.a();
        C(this.f634k0);
        if (t0Var.f3011j) {
            int i43 = this.f622e.i();
            int i44 = 0;
            while (i44 < i43) {
                w0 w0VarI = I(this.f622e.h(i44));
                if (w0VarI.o() || (w0VarI.f() && !this.f633k.b)) {
                    eVar2 = eVar;
                    kVar2 = kVar;
                } else {
                    e0 e0Var = this.H;
                    e0.b(w0VarI);
                    w0VarI.c();
                    e0Var.getClass();
                    q qVar = new q();
                    qVar.a(w0VarI);
                    kVar2 = kVar;
                    h1 h1VarA = (h1) kVar2.getOrDefault(w0VarI, null);
                    if (h1VarA == null) {
                        h1VarA = h1.a();
                        kVar2.put(w0VarI, h1VarA);
                    }
                    h1VarA.b = qVar;
                    h1VarA.f2901a |= 4;
                    if (!t0Var.f3009h || !w0VarI.k() || w0VarI.h() || w0VarI.o() || w0VarI.f()) {
                        eVar2 = eVar;
                    } else {
                        eVar2 = eVar;
                        eVar2.d(w0VarI, G(w0VarI));
                    }
                }
                i44++;
                eVar = eVar2;
                kVar = kVar2;
            }
        }
        k kVar5 = kVar;
        if (t0Var.f3012k) {
            int iQ = this.f622e.q();
            for (int i45 = 0; i45 < iQ; i45++) {
                w0 w0VarI2 = I(this.f622e.p(i45));
                if (!w0VarI2.o() && w0VarI2.f3050d == -1) {
                    w0VarI2.f3050d = w0VarI2.f3049c;
                }
            }
            boolean z10 = t0Var.f;
            t0Var.f = false;
            this.f635l.W(this.b, t0Var);
            t0Var.f = z10;
            for (int i46 = 0; i46 < this.f622e.i(); i46++) {
                w0 w0VarI3 = I(this.f622e.h(i46));
                if (!w0VarI3.o() && ((h1Var = (h1) kVar5.getOrDefault(w0VarI3, null)) == null || (h1Var.f2901a & 4) == 0)) {
                    e0.b(w0VarI3);
                    boolean z11 = (w0VarI3.f3055j & 8192) != 0;
                    e0 e0Var2 = this.H;
                    w0VarI3.c();
                    e0Var2.getClass();
                    q qVar2 = new q();
                    qVar2.a(w0VarI3);
                    if (z11) {
                        T(w0VarI3, qVar2);
                    } else {
                        h1 h1VarA2 = (h1) kVar5.getOrDefault(w0VarI3, null);
                        if (h1VarA2 == null) {
                            h1VarA2 = h1.a();
                            kVar5.put(w0VarI3, h1VarA2);
                        }
                        h1VarA2.f2901a |= 2;
                        h1VarA2.b = qVar2;
                    }
                }
            }
            k();
        } else {
            k();
        }
        Q(true);
        b0(false);
        t0Var.f3006d = 2;
    }

    public final void q() {
        a0();
        P();
        t0 t0Var = this.f619c0;
        t0Var.a(6);
        this.f620d.b();
        t0Var.f3007e = this.f633k.a();
        t0Var.f3005c = 0;
        t0Var.f3008g = false;
        this.f635l.W(this.b, t0Var);
        t0Var.f = false;
        this.f618c = null;
        t0Var.f3011j = t0Var.f3011j && this.H != null;
        t0Var.f3006d = 4;
        Q(true);
        b0(false);
    }

    public final boolean r(int i3, int i4, int[] iArr, int[] iArr2, int i5) {
        return getScrollingChildHelper().c(i3, i4, iArr, iArr2, i5);
    }

    @Override // android.view.ViewGroup
    public final void removeDetachedView(View view, boolean z2) {
        w0 w0VarI = I(view);
        if (w0VarI != null) {
            if (w0VarI.j()) {
                w0VarI.f3055j &= -257;
            } else if (!w0VarI.o()) {
                throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + w0VarI + y());
            }
        }
        view.clearAnimation();
        I(view);
        super.removeDetachedView(view, z2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        w wVar = this.f635l.f2910e;
        if ((wVar == null || !wVar.f3036e) && !L() && view2 != null) {
            U(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z2) {
        return this.f635l.f0(this, view, rect, z2, false);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z2) {
        ArrayList arrayList = this.f639n;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            ((m) arrayList.get(i3)).getClass();
        }
        super.requestDisallowInterceptTouchEvent(z2);
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        if (this.f649s != 0 || this.f651u) {
            this.f650t = true;
        } else {
            super.requestLayout();
        }
    }

    public final void s(int i3, int i4, int i5, int i6, int[] iArr, int i7, int[] iArr2) {
        getScrollingChildHelper().d(i3, i4, i5, i6, iArr, i7, iArr2);
    }

    @Override // android.view.View
    public final void scrollBy(int i3, int i4) {
        i0 i0Var = this.f635l;
        if (i0Var == null) {
            Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.f651u) {
            return;
        }
        boolean zD = i0Var.d();
        boolean zE = this.f635l.e();
        if (zD || zE) {
            if (!zD) {
                i3 = 0;
            }
            if (!zE) {
                i4 = 0;
            }
            W(i3, i4, null);
        }
    }

    @Override // android.view.View
    public final void scrollTo(int i3, int i4) {
        Log.w("RecyclerView", "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public final void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (!L()) {
            super.sendAccessibilityEventUnchecked(accessibilityEvent);
        } else {
            int iA = accessibilityEvent != null ? d0.b.a(accessibilityEvent) : 0;
            this.f653w |= iA != 0 ? iA : 0;
        }
    }

    public void setAccessibilityDelegateCompat(y0 y0Var) {
        this.f632j0 = y0Var;
        p0.i(this, y0Var);
    }

    public void setAdapter(a0 a0Var) {
        setLayoutFrozen(false);
        a0 a0Var2 = this.f633k;
        e eVar = this.f615a;
        if (a0Var2 != null) {
            a0Var2.f2841a.unregisterObserver(eVar);
            this.f633k.getClass();
        }
        e0 e0Var = this.H;
        if (e0Var != null) {
            e0Var.e();
        }
        i0 i0Var = this.f635l;
        o0 o0Var = this.b;
        if (i0Var != null) {
            i0Var.b0(o0Var);
            this.f635l.c0(o0Var);
        }
        o0Var.f2973a.clear();
        o0Var.d();
        b bVar = this.f620d;
        bVar.i((ArrayList) bVar.f2844c);
        bVar.i((ArrayList) bVar.f2845d);
        a0 a0Var3 = this.f633k;
        this.f633k = a0Var;
        if (a0Var != null) {
            a0Var.f2841a.registerObserver(eVar);
        }
        a0 a0Var4 = this.f633k;
        o0Var.f2973a.clear();
        o0Var.d();
        n0 n0VarC = o0Var.c();
        if (a0Var3 != null) {
            n0VarC.b--;
        }
        if (n0VarC.b == 0) {
            SparseArray sparseArray = n0VarC.f2968a;
            for (int i3 = 0; i3 < sparseArray.size(); i3++) {
                ((m0) sparseArray.valueAt(i3)).f2962a.clear();
            }
        }
        if (a0Var4 != null) {
            n0VarC.b++;
        }
        this.f619c0.f = true;
        this.f656z |= false;
        this.f655y = true;
        int iQ = this.f622e.q();
        for (int i4 = 0; i4 < iQ; i4++) {
            w0 w0VarI = I(this.f622e.p(i4));
            if (w0VarI != null && !w0VarI.o()) {
                w0VarI.a(6);
            }
        }
        N();
        o0 o0Var2 = this.b;
        ArrayList arrayList = o0Var2.f2974c;
        int size = arrayList.size();
        for (int i5 = 0; i5 < size; i5++) {
            w0 w0Var = (w0) arrayList.get(i5);
            if (w0Var != null) {
                w0Var.a(6);
                w0Var.a(1024);
            }
        }
        a0 a0Var5 = o0Var2.f2978h.f633k;
        if (a0Var5 == null || !a0Var5.b) {
            o0Var2.d();
        }
        requestLayout();
    }

    public void setChildDrawingOrderCallback(c0 c0Var) {
        if (c0Var == null) {
            return;
        }
        setChildrenDrawingOrderEnabled(false);
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z2) {
        if (z2 != this.f625g) {
            this.G = null;
            this.E = null;
            this.F = null;
            this.D = null;
        }
        this.f625g = z2;
        super.setClipToPadding(z2);
        if (this.f647r) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(d0 d0Var) {
        d0Var.getClass();
        this.C = d0Var;
        this.G = null;
        this.E = null;
        this.F = null;
        this.D = null;
    }

    public void setHasFixedSize(boolean z2) {
        this.f645q = z2;
    }

    public void setItemAnimator(e0 e0Var) {
        e0 e0Var2 = this.H;
        if (e0Var2 != null) {
            e0Var2.e();
            this.H.f2864a = null;
        }
        this.H = e0Var;
        if (e0Var != null) {
            e0Var.f2864a = this.f628h0;
        }
    }

    public void setItemViewCacheSize(int i3) {
        o0 o0Var = this.b;
        o0Var.f2976e = i3;
        o0Var.k();
    }

    @Deprecated
    public void setLayoutFrozen(boolean z2) {
        suppressLayout(z2);
    }

    public void setLayoutManager(i0 i0Var) {
        w wVar;
        if (i0Var == this.f635l) {
            return;
        }
        setScrollState(0);
        v0 v0Var = this.W;
        v0Var.f3032g.removeCallbacks(v0Var);
        v0Var.f3029c.abortAnimation();
        i0 i0Var2 = this.f635l;
        if (i0Var2 != null && (wVar = i0Var2.f2910e) != null) {
            wVar.g();
        }
        i0 i0Var3 = this.f635l;
        o0 o0Var = this.b;
        if (i0Var3 != null) {
            e0 e0Var = this.H;
            if (e0Var != null) {
                e0Var.e();
            }
            this.f635l.b0(o0Var);
            this.f635l.c0(o0Var);
            o0Var.f2973a.clear();
            o0Var.d();
            if (this.f643p) {
                i0 i0Var4 = this.f635l;
                i0Var4.f2911g = false;
                i0Var4.M(this);
            }
            this.f635l.o0(null);
            this.f635l = null;
        } else {
            o0Var.f2973a.clear();
            o0Var.d();
        }
        f fVar = this.f622e;
        RecyclerView recyclerView = ((z) fVar.b).f3073a;
        ((q0.c) fVar.f413c).g();
        ArrayList arrayList = (ArrayList) fVar.f414d;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            w0 w0VarI = I((View) arrayList.get(size));
            if (w0VarI != null) {
                int i3 = w0VarI.f3061p;
                if (recyclerView.L()) {
                    w0VarI.f3062q = i3;
                    recyclerView.f644p0.add(w0VarI);
                } else {
                    View view = w0VarI.f3048a;
                    WeakHashMap weakHashMap = p0.f727a;
                    c0.a0.s(view, i3);
                }
                w0VarI.f3061p = 0;
            }
            arrayList.remove(size);
        }
        int childCount = recyclerView.getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = recyclerView.getChildAt(i4);
            I(childAt);
            childAt.clearAnimation();
        }
        recyclerView.removeAllViews();
        this.f635l = i0Var;
        if (i0Var != null) {
            if (i0Var.b != null) {
                throw new IllegalArgumentException("LayoutManager " + i0Var + " is already attached to a RecyclerView:" + i0Var.b.y());
            }
            i0Var.o0(this);
            if (this.f643p) {
                this.f635l.f2911g = true;
            }
        }
        o0Var.k();
        requestLayout();
    }

    @Override // android.view.ViewGroup
    @Deprecated
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (layoutTransition != null) {
            throw new IllegalArgumentException("Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView");
        }
        super.setLayoutTransition(null);
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z2) {
        c0.n scrollingChildHelper = getScrollingChildHelper();
        if (scrollingChildHelper.f724d) {
            ViewGroup viewGroup = scrollingChildHelper.f723c;
            WeakHashMap weakHashMap = p0.f727a;
            c0.f0.z(viewGroup);
        }
        scrollingChildHelper.f724d = z2;
    }

    public void setOnFlingListener(k0 k0Var) {
        this.Q = k0Var;
    }

    @Deprecated
    public void setOnScrollListener(l0 l0Var) {
        this.f621d0 = l0Var;
    }

    public void setPreserveFocusAfterLayout(boolean z2) {
        this.V = z2;
    }

    public void setRecycledViewPool(n0 n0Var) {
        o0 o0Var = this.b;
        n0 n0Var2 = o0Var.f2977g;
        if (n0Var2 != null) {
            n0Var2.b--;
        }
        o0Var.f2977g = n0Var;
        if (n0Var == null || o0Var.f2978h.getAdapter() == null) {
            return;
        }
        o0Var.f2977g.b++;
    }

    public void setRecyclerListener(q0.p0 p0Var) {
    }

    public void setScrollState(int i3) {
        w wVar;
        if (i3 == this.I) {
            return;
        }
        this.I = i3;
        if (i3 != 2) {
            v0 v0Var = this.W;
            v0Var.f3032g.removeCallbacks(v0Var);
            v0Var.f3029c.abortAnimation();
            i0 i0Var = this.f635l;
            if (i0Var != null && (wVar = i0Var.f2910e) != null) {
                wVar.g();
            }
        }
        i0 i0Var2 = this.f635l;
        if (i0Var2 != null) {
            i0Var2.a0(i3);
        }
        l0 l0Var = this.f621d0;
        if (l0Var != null) {
            l0Var.a(this, i3);
        }
        ArrayList arrayList = this.f623e0;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((l0) this.f623e0.get(size)).a(this, i3);
            }
        }
    }

    public void setScrollingTouchSlop(int i3) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i3 != 0) {
            if (i3 == 1) {
                this.P = viewConfiguration.getScaledPagingTouchSlop();
                return;
            }
            Log.w("RecyclerView", "setScrollingTouchSlop(): bad argument constant " + i3 + "; using default value");
        }
        this.P = viewConfiguration.getScaledTouchSlop();
    }

    public void setViewCacheExtension(u0 u0Var) {
        this.b.getClass();
    }

    @Override // android.view.View
    public final boolean startNestedScroll(int i3) {
        return getScrollingChildHelper().g(i3, 0);
    }

    @Override // android.view.View
    public final void stopNestedScroll() {
        getScrollingChildHelper().h(0);
    }

    @Override // android.view.ViewGroup
    public final void suppressLayout(boolean z2) {
        w wVar;
        if (z2 != this.f651u) {
            i("Do not suppressLayout in layout or scroll");
            if (!z2) {
                this.f651u = false;
                if (this.f650t && this.f635l != null && this.f633k != null) {
                    requestLayout();
                }
                this.f650t = false;
                return;
            }
            long jUptimeMillis = SystemClock.uptimeMillis();
            onTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0));
            this.f651u = true;
            this.f652v = true;
            setScrollState(0);
            v0 v0Var = this.W;
            v0Var.f3032g.removeCallbacks(v0Var);
            v0Var.f3029c.abortAnimation();
            i0 i0Var = this.f635l;
            if (i0Var == null || (wVar = i0Var.f2910e) == null) {
                return;
            }
            wVar.g();
        }
    }

    public final void t(int i3, int i4) {
        this.B++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX - i3, scrollY - i4);
        l0 l0Var = this.f621d0;
        if (l0Var != null) {
            l0Var.b(this, i3, i4);
        }
        ArrayList arrayList = this.f623e0;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((l0) this.f623e0.get(size)).b(this, i3, i4);
            }
        }
        this.B--;
    }

    public final void u() {
        if (this.G != null) {
            return;
        }
        this.C.getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.G = edgeEffect;
        if (this.f625g) {
            edgeEffect.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffect.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public final void v() {
        if (this.D != null) {
            return;
        }
        this.C.getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.D = edgeEffect;
        if (this.f625g) {
            edgeEffect.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffect.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public final void w() {
        if (this.F != null) {
            return;
        }
        this.C.getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.F = edgeEffect;
        if (this.f625g) {
            edgeEffect.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffect.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public final void x() {
        if (this.E != null) {
            return;
        }
        this.C.getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.E = edgeEffect;
        if (this.f625g) {
            edgeEffect.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffect.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public final String y() {
        return " " + super.toString() + ", adapter:" + this.f633k + ", layout:" + this.f635l + ", context:" + getContext();
    }

    public final void z(t0 t0Var) {
        if (getScrollState() != 2) {
            t0Var.getClass();
            return;
        }
        OverScroller overScroller = this.W.f3029c;
        overScroller.getFinalX();
        overScroller.getCurrX();
        t0Var.getClass();
        overScroller.getFinalY();
        overScroller.getCurrY();
    }

    public RecyclerView(Context context, AttributeSet attributeSet, int i3) {
        char c3;
        int i4;
        Constructor constructor;
        super(context, attributeSet, i3);
        this.f615a = new e(this);
        this.b = new o0(this);
        this.f = new c(11);
        this.f627h = new Rect();
        this.f629i = new Rect();
        this.f631j = new RectF();
        this.f637m = new ArrayList();
        this.f639n = new ArrayList();
        this.f649s = 0;
        this.f655y = false;
        this.f656z = false;
        this.A = 0;
        this.B = 0;
        this.C = new d0();
        j jVar = new j();
        Object[] objArr = null;
        jVar.f2864a = null;
        jVar.b = new ArrayList();
        jVar.f2865c = 120L;
        jVar.f2866d = 120L;
        jVar.f2867e = 250L;
        jVar.f = 250L;
        jVar.f2921g = true;
        jVar.f2922h = new ArrayList();
        jVar.f2923i = new ArrayList();
        jVar.f2924j = new ArrayList();
        jVar.f2925k = new ArrayList();
        jVar.f2926l = new ArrayList();
        jVar.f2927m = new ArrayList();
        jVar.f2928n = new ArrayList();
        jVar.f2929o = new ArrayList();
        jVar.f2930p = new ArrayList();
        jVar.f2931q = new ArrayList();
        jVar.f2932r = new ArrayList();
        this.H = jVar;
        this.I = 0;
        this.J = -1;
        this.T = Float.MIN_VALUE;
        this.U = Float.MIN_VALUE;
        this.V = true;
        this.W = new v0(this);
        this.f617b0 = new n();
        t0 t0Var = new t0();
        t0Var.f3004a = -1;
        t0Var.b = 0;
        t0Var.f3005c = 0;
        t0Var.f3006d = 1;
        t0Var.f3007e = 0;
        t0Var.f = false;
        t0Var.f3008g = false;
        t0Var.f3009h = false;
        t0Var.f3010i = false;
        t0Var.f3011j = false;
        t0Var.f3012k = false;
        this.f619c0 = t0Var;
        this.f624f0 = false;
        this.f626g0 = false;
        z zVar = new z(this);
        this.f628h0 = zVar;
        this.f630i0 = false;
        this.f634k0 = new int[2];
        this.f638m0 = new int[2];
        this.f640n0 = new int[2];
        this.f642o0 = new int[2];
        this.f644p0 = new ArrayList();
        this.f646q0 = new androidx.activity.d(10, this);
        this.f648r0 = new z(this);
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.P = viewConfiguration.getScaledTouchSlop();
        this.T = c0.q0.a(viewConfiguration);
        this.U = c0.q0.b(viewConfiguration);
        this.R = viewConfiguration.getScaledMinimumFlingVelocity();
        this.S = viewConfiguration.getScaledMaximumFlingVelocity();
        setWillNotDraw(getOverScrollMode() == 2);
        this.H.f2864a = zVar;
        this.f620d = new b(new z(this));
        this.f622e = new f(new z(this));
        WeakHashMap weakHashMap = p0.f727a;
        if (h0.b(this) == 0) {
            h0.l(this, 8);
        }
        if (c0.a0.c(this) == 0) {
            c0.a0.s(this, 1);
        }
        this.f654x = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new y0(this));
        int[] iArr = p0.a.f2683a;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i3, 0);
        if (Build.VERSION.SDK_INT >= 29) {
            saveAttributeDataForStyleable(context, iArr, attributeSet, typedArrayObtainStyledAttributes, i3, 0);
        }
        String string = typedArrayObtainStyledAttributes.getString(8);
        if (typedArrayObtainStyledAttributes.getInt(2, -1) == -1) {
            setDescendantFocusability(262144);
        }
        this.f625g = typedArrayObtainStyledAttributes.getBoolean(1, true);
        if (typedArrayObtainStyledAttributes.getBoolean(3, false)) {
            StateListDrawable stateListDrawable = (StateListDrawable) typedArrayObtainStyledAttributes.getDrawable(6);
            Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(7);
            StateListDrawable stateListDrawable2 = (StateListDrawable) typedArrayObtainStyledAttributes.getDrawable(4);
            Drawable drawable2 = typedArrayObtainStyledAttributes.getDrawable(5);
            if (stateListDrawable == null || drawable == null || stateListDrawable2 == null || drawable2 == null) {
                throw new IllegalArgumentException("Trying to set fast scroller without both required drawables." + y());
            }
            Resources resources = getContext().getResources();
            c3 = 3;
            i4 = 4;
            new m(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(com.ex.auto.R.dimen.fastscroll_default_thickness), resources.getDimensionPixelSize(com.ex.auto.R.dimen.fastscroll_minimum_range), resources.getDimensionPixelOffset(com.ex.auto.R.dimen.fastscroll_margin));
        } else {
            c3 = 3;
            i4 = 4;
        }
        typedArrayObtainStyledAttributes.recycle();
        if (string != null) {
            String strTrim = string.trim();
            if (!strTrim.isEmpty()) {
                if (strTrim.charAt(0) == '.') {
                    strTrim = context.getPackageName() + strTrim;
                } else if (!strTrim.contains(".")) {
                    strTrim = RecyclerView.class.getPackage().getName() + '.' + strTrim;
                }
                String str = strTrim;
                try {
                    Class<? extends U> clsAsSubclass = Class.forName(str, false, isInEditMode() ? getClass().getClassLoader() : context.getClassLoader()).asSubclass(i0.class);
                    try {
                        constructor = clsAsSubclass.getConstructor(t0);
                        Object[] objArr2 = new Object[i4];
                        objArr2[0] = context;
                        objArr2[r11] = attributeSet;
                        objArr2[2] = Integer.valueOf(i3);
                        objArr2[c3] = 0;
                        objArr = objArr2;
                    } catch (NoSuchMethodException e3) {
                        try {
                            constructor = clsAsSubclass.getConstructor(null);
                        } catch (NoSuchMethodException e4) {
                            e4.initCause(e3);
                            throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + str, e4);
                        }
                    }
                    constructor.setAccessible(true);
                    setLayoutManager((i0) constructor.newInstance(objArr));
                } catch (ClassCastException e5) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Class is not a LayoutManager " + str, e5);
                } catch (ClassNotFoundException e6) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Unable to find LayoutManager " + str, e6);
                } catch (IllegalAccessException e7) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Cannot access non-public constructor " + str, e7);
                } catch (InstantiationException e8) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + str, e8);
                } catch (InvocationTargetException e9) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + str, e9);
                }
            }
        }
        int i5 = Build.VERSION.SDK_INT;
        int[] iArr2 = f613s0;
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr2, i3, 0);
        if (i5 >= 29) {
            saveAttributeDataForStyleable(context, iArr2, attributeSet, typedArrayObtainStyledAttributes2, i3, 0);
        }
        boolean z2 = typedArrayObtainStyledAttributes2.getBoolean(0, true);
        typedArrayObtainStyledAttributes2.recycle();
        setNestedScrollingEnabled(z2);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        i0 i0Var = this.f635l;
        if (i0Var != null) {
            return i0Var.t(layoutParams);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + y());
    }
}
