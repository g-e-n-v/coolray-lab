package com.google.android.material.bottomsheet;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.AbsSavedState;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.emoji2.text.m;
import c0.a0;
import c0.b0;
import c0.c0;
import c0.d0;
import c0.f0;
import c0.p0;
import com.ex.auto.R;
import d0.d;
import e.h;
import g1.b;
import g1.c;
import g1.f;
import i0.e;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.WeakHashMap;
import n1.j;
import s.a;
import s1.g;
import s1.k;

/* JADX INFO: loaded from: classes.dex */
public class BottomSheetBehavior<V extends View> extends a {
    public boolean A;
    public int B;
    public boolean C;
    public int D;
    public int E;
    public int F;
    public WeakReference G;
    public WeakReference H;
    public final ArrayList I;
    public VelocityTracker J;
    public int K;
    public int L;
    public boolean M;
    public HashMap N;
    public final c O;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1323a;
    public boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f1324c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1325d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f1326e;
    public int f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f1327g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f1328h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public g f1329i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f1330j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f1331k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public k f1332l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f1333m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public f f1334n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final ValueAnimator f1335o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f1336p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f1337q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f1338r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final float f1339s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f1340t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final float f1341u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f1342v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f1343w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final boolean f1344x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f1345y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public e f1346z;

    public BottomSheetBehavior() {
        this.f1323a = 0;
        this.b = true;
        this.f1334n = null;
        this.f1339s = 0.5f;
        this.f1341u = -1.0f;
        this.f1344x = true;
        this.f1345y = 4;
        this.I = new ArrayList();
        this.O = new c(this);
    }

    public static View v(View view) {
        WeakHashMap weakHashMap = p0.f727a;
        if (f0.p(view)) {
            return view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View viewV = v(viewGroup.getChildAt(i3));
            if (viewV != null) {
                return viewV;
            }
        }
        return null;
    }

    public final void A(View view, int i3) {
        int iW;
        int i4;
        if (i3 == 4) {
            iW = this.f1340t;
        } else if (i3 == 6) {
            iW = this.f1338r;
            if (this.b && iW <= (i4 = this.f1337q)) {
                i3 = 3;
                iW = i4;
            }
        } else if (i3 == 3) {
            iW = w();
        } else {
            if (!this.f1342v || i3 != 5) {
                throw new IllegalArgumentException("Illegal state argument: " + i3);
            }
            iW = this.F;
        }
        C(view, i3, iW, false);
    }

    public final boolean B(View view, float f) {
        if (this.f1343w) {
            return true;
        }
        if (view.getTop() < this.f1340t) {
            return false;
        }
        return Math.abs(((f * 0.1f) + ((float) view.getTop())) - ((float) this.f1340t)) / ((float) s()) > 0.5f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x002c, code lost:
    
        if (r5 != false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002e, code lost:
    
        z(2);
        E(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0037, code lost:
    
        if (r2.f1334n != null) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0039, code lost:
    
        r2.f1334n = new g1.f(r2, r3, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0040, code lost:
    
        r5 = r2.f1334n;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0044, code lost:
    
        if (r5.b != false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0046, code lost:
    
        r5.f1810c = r4;
        r4 = c0.p0.f727a;
        c0.a0.m(r3, r5);
        r2.f1334n.b = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0052, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0053, code lost:
    
        r5.f1810c = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0055, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x000e, code lost:
    
        if (r0.o(r3.getLeft(), r5) != false) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void C(android.view.View r3, int r4, int r5, boolean r6) {
        /*
            r2 = this;
            i0.e r0 = r2.f1346z
            if (r0 == 0) goto L56
            if (r6 == 0) goto L11
            int r6 = r3.getLeft()
            boolean r5 = r0.o(r6, r5)
            if (r5 == 0) goto L56
            goto L2e
        L11:
            int r6 = r3.getLeft()
            r0.f2271r = r3
            r1 = -1
            r0.f2257c = r1
            r1 = 0
            boolean r5 = r0.h(r6, r5, r1, r1)
            if (r5 != 0) goto L2c
            int r6 = r0.f2256a
            if (r6 != 0) goto L2c
            android.view.View r6 = r0.f2271r
            if (r6 == 0) goto L2c
            r6 = 0
            r0.f2271r = r6
        L2c:
            if (r5 == 0) goto L56
        L2e:
            r5 = 2
            r2.z(r5)
            r2.E(r4)
            g1.f r5 = r2.f1334n
            if (r5 != 0) goto L40
            g1.f r5 = new g1.f
            r5.<init>(r2, r3, r4)
            r2.f1334n = r5
        L40:
            g1.f r5 = r2.f1334n
            boolean r6 = r5.b
            if (r6 != 0) goto L53
            r5.f1810c = r4
            java.util.WeakHashMap r4 = c0.p0.f727a
            c0.a0.m(r3, r5)
            g1.f r3 = r2.f1334n
            r4 = 1
            r3.b = r4
            return
        L53:
            r5.f1810c = r4
            return
        L56:
            r2.z(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.C(android.view.View, int, int, boolean):void");
    }

    public final void D() {
        View view;
        WeakReference weakReference = this.G;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        p0.f(view, 524288);
        p0.d(view, 0);
        p0.f(view, 262144);
        p0.d(view, 0);
        p0.f(view, 1048576);
        p0.d(view, 0);
        if (this.f1342v && this.f1345y != 5) {
            p0.g(view, d.f1526j, new h(this, 5));
        }
        int i3 = this.f1345y;
        if (i3 == 3) {
            p0.g(view, d.f1525i, new h(this, this.b ? 4 : 6));
            return;
        }
        if (i3 == 4) {
            p0.g(view, d.f1524h, new h(this, this.b ? 3 : 6));
        } else {
            if (i3 != 6) {
                return;
            }
            p0.g(view, d.f1525i, new h(this, 4));
            p0.g(view, d.f1524h, new h(this, 3));
        }
    }

    public final void E(int i3) {
        ValueAnimator valueAnimator;
        if (i3 == 2) {
            return;
        }
        boolean z2 = i3 == 3;
        if (this.f1333m != z2) {
            this.f1333m = z2;
            if (this.f1329i == null || (valueAnimator = this.f1335o) == null) {
                return;
            }
            if (valueAnimator.isRunning()) {
                valueAnimator.reverse();
                return;
            }
            float f = z2 ? 0.0f : 1.0f;
            valueAnimator.setFloatValues(1.0f - f, f);
            valueAnimator.start();
        }
    }

    public final void F(boolean z2) {
        WeakReference weakReference = this.G;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = ((View) weakReference.get()).getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (z2) {
                if (this.N != null) {
                    return;
                } else {
                    this.N = new HashMap(childCount);
                }
            }
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = coordinatorLayout.getChildAt(i3);
                if (childAt != this.G.get() && z2) {
                    this.N.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                }
            }
            if (z2) {
                return;
            }
            this.N = null;
        }
    }

    public final void G() {
        View view;
        if (this.G != null) {
            r();
            if (this.f1345y != 4 || (view = (View) this.G.get()) == null) {
                return;
            }
            view.requestLayout();
        }
    }

    @Override // s.a
    public final void c(s.d dVar) {
        this.G = null;
        this.f1346z = null;
    }

    @Override // s.a
    public final void e() {
        this.G = null;
        this.f1346z = null;
    }

    @Override // s.a
    public final boolean f(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        e eVar;
        if (!view.isShown() || !this.f1344x) {
            this.A = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.K = -1;
            VelocityTracker velocityTracker = this.J;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.J = null;
            }
        }
        if (this.J == null) {
            this.J = VelocityTracker.obtain();
        }
        this.J.addMovement(motionEvent);
        if (actionMasked == 0) {
            int x2 = (int) motionEvent.getX();
            this.L = (int) motionEvent.getY();
            if (this.f1345y != 2) {
                WeakReference weakReference = this.H;
                View view2 = weakReference != null ? (View) weakReference.get() : null;
                if (view2 != null && coordinatorLayout.o(view2, x2, this.L)) {
                    this.K = motionEvent.getPointerId(motionEvent.getActionIndex());
                    this.M = true;
                }
            }
            this.A = this.K == -1 && !coordinatorLayout.o(view, x2, this.L);
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.M = false;
            this.K = -1;
            if (this.A) {
                this.A = false;
                return false;
            }
        }
        if (this.A || (eVar = this.f1346z) == null || !eVar.p(motionEvent)) {
            WeakReference weakReference2 = this.H;
            View view3 = weakReference2 != null ? (View) weakReference2.get() : null;
            if (actionMasked != 2 || view3 == null || this.A || this.f1345y == 1 || coordinatorLayout.o(view3, (int) motionEvent.getX(), (int) motionEvent.getY()) || this.f1346z == null || Math.abs(this.L - motionEvent.getY()) <= this.f1346z.b) {
                return false;
            }
        }
        return true;
    }

    @Override // s.a
    public final boolean g(CoordinatorLayout coordinatorLayout, View view, int i3) {
        g gVar;
        WeakHashMap weakHashMap = p0.f727a;
        if (a0.b(coordinatorLayout) && !a0.b(view)) {
            view.setFitsSystemWindows(true);
        }
        if (this.G == null) {
            this.f = coordinatorLayout.getResources().getDimensionPixelSize(R.dimen.design_bottom_sheet_peek_height_min);
            if (Build.VERSION.SDK_INT >= 29 && !this.f1331k && !this.f1326e) {
                m mVar = new m(14, this);
                b0.f(view);
                view.getPaddingTop();
                b0.e(view);
                view.getPaddingBottom();
                f0.u(view, new m(mVar, new s1.e()));
                if (c0.b(view)) {
                    d0.c(view);
                } else {
                    view.addOnAttachStateChangeListener(new j());
                }
            }
            this.G = new WeakReference(view);
            if (this.f1328h && (gVar = this.f1329i) != null) {
                a0.q(view, gVar);
            }
            g gVar2 = this.f1329i;
            if (gVar2 != null) {
                float fI = this.f1341u;
                if (fI == -1.0f) {
                    fI = f0.i(view);
                }
                gVar2.h(fI);
                boolean z2 = this.f1345y == 3;
                this.f1333m = z2;
                g gVar3 = this.f1329i;
                float f = z2 ? 0.0f : 1.0f;
                s1.f fVar = gVar3.f3142a;
                if (fVar.f3133i != f) {
                    fVar.f3133i = f;
                    gVar3.f3145e = true;
                    gVar3.invalidateSelf();
                }
            }
            D();
            if (a0.c(view) == 0) {
                a0.s(view, 1);
            }
        }
        if (this.f1346z == null) {
            this.f1346z = new e(coordinatorLayout.getContext(), coordinatorLayout, this.O);
        }
        int top = view.getTop();
        coordinatorLayout.q(view, i3);
        this.E = coordinatorLayout.getWidth();
        this.F = coordinatorLayout.getHeight();
        int height = view.getHeight();
        this.D = height;
        this.f1337q = Math.max(0, this.F - height);
        this.f1338r = (int) ((1.0f - this.f1339s) * this.F);
        r();
        int i4 = this.f1345y;
        if (i4 == 3) {
            view.offsetTopAndBottom(w());
        } else if (i4 == 6) {
            view.offsetTopAndBottom(this.f1338r);
        } else if (this.f1342v && i4 == 5) {
            view.offsetTopAndBottom(this.F);
        } else if (i4 == 4) {
            view.offsetTopAndBottom(this.f1340t);
        } else if (i4 == 1 || i4 == 2) {
            view.offsetTopAndBottom(top - view.getTop());
        }
        this.H = new WeakReference(v(view));
        return true;
    }

    @Override // s.a
    public final boolean i(View view) {
        WeakReference weakReference = this.H;
        return (weakReference == null || view != weakReference.get() || this.f1345y == 3) ? false : true;
    }

    @Override // s.a
    public final void j(CoordinatorLayout coordinatorLayout, View view, View view2, int i3, int i4, int[] iArr, int i5) {
        if (i5 == 1) {
            return;
        }
        WeakReference weakReference = this.H;
        if (view2 != (weakReference != null ? (View) weakReference.get() : null)) {
            return;
        }
        int top = view.getTop();
        int i6 = top - i4;
        boolean z2 = this.f1344x;
        if (i4 > 0) {
            if (i6 < w()) {
                int iW = top - w();
                iArr[1] = iW;
                int i7 = -iW;
                WeakHashMap weakHashMap = p0.f727a;
                view.offsetTopAndBottom(i7);
                z(3);
            } else {
                if (!z2) {
                    return;
                }
                iArr[1] = i4;
                WeakHashMap weakHashMap2 = p0.f727a;
                view.offsetTopAndBottom(-i4);
                z(1);
            }
        } else if (i4 < 0 && !view2.canScrollVertically(-1)) {
            int i8 = this.f1340t;
            if (i6 > i8 && !this.f1342v) {
                int i9 = top - i8;
                iArr[1] = i9;
                int i10 = -i9;
                WeakHashMap weakHashMap3 = p0.f727a;
                view.offsetTopAndBottom(i10);
                z(4);
            } else {
                if (!z2) {
                    return;
                }
                iArr[1] = i4;
                WeakHashMap weakHashMap4 = p0.f727a;
                view.offsetTopAndBottom(-i4);
                z(1);
            }
        }
        u(view.getTop());
        this.B = i4;
        this.C = true;
    }

    @Override // s.a
    public final void k(CoordinatorLayout coordinatorLayout, View view, int i3, int i4, int i5, int[] iArr) {
    }

    @Override // s.a
    public final void m(View view, Parcelable parcelable) {
        g1.e eVar = (g1.e) parcelable;
        int i3 = this.f1323a;
        if (i3 != 0) {
            if (i3 == -1 || (i3 & 1) == 1) {
                this.f1325d = eVar.f1806d;
            }
            if (i3 == -1 || (i3 & 2) == 2) {
                this.b = eVar.f1807e;
            }
            if (i3 == -1 || (i3 & 4) == 4) {
                this.f1342v = eVar.f;
            }
            if (i3 == -1 || (i3 & 8) == 8) {
                this.f1343w = eVar.f1808g;
            }
        }
        int i4 = eVar.f1805c;
        if (i4 == 1 || i4 == 2) {
            this.f1345y = 4;
        } else {
            this.f1345y = i4;
        }
    }

    @Override // s.a
    public final Parcelable n(View view) {
        AbsSavedState absSavedState = View.BaseSavedState.EMPTY_STATE;
        return new g1.e(this);
    }

    @Override // s.a
    public final boolean o(View view, int i3, int i4) {
        this.B = 0;
        this.C = false;
        return (i3 & 2) != 0;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0060  */
    /* JADX WARN: Code duplicated, block: B:33:0x0065  */
    /* JADX WARN: Code duplicated, block: B:35:0x006d  */
    /* JADX WARN: Code duplicated, block: B:37:0x007e  */
    /* JADX WARN: Code duplicated, block: B:38:0x0081  */
    /* JADX WARN: Code duplicated, block: B:39:0x0084  */
    /* JADX WARN: Code duplicated, block: B:41:0x0088  */
    /* JADX WARN: Code duplicated, block: B:43:0x0092  */
    /* JADX WARN: Code duplicated, block: B:44:0x0095  */
    /* JADX WARN: Code duplicated, block: B:45:0x0098  */
    /* JADX WARN: Code duplicated, block: B:47:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:48:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:49:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:51:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:53:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:55:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:57:0x00ce  */
    @Override // s.a
    public final void p(View view, View view2, int i3) {
        int top;
        int i4;
        int top2;
        int i5;
        float yVelocity;
        int i6 = 3;
        if (view.getTop() == w()) {
            z(3);
            return;
        }
        WeakReference weakReference = this.H;
        if (weakReference != null && view2 == weakReference.get() && this.C) {
            if (this.B > 0) {
                if (this.b) {
                    i4 = this.f1337q;
                } else {
                    int top3 = view.getTop();
                    int i7 = this.f1338r;
                    if (top3 > i7) {
                        i6 = 6;
                        i4 = i7;
                    } else {
                        i4 = this.f1336p;
                    }
                }
            } else if (this.f1342v) {
                VelocityTracker velocityTracker = this.J;
                if (velocityTracker == null) {
                    yVelocity = 0.0f;
                } else {
                    velocityTracker.computeCurrentVelocity(1000, this.f1324c);
                    yVelocity = this.J.getYVelocity(this.K);
                }
                if (B(view, yVelocity)) {
                    i4 = this.F;
                    i6 = 5;
                } else if (this.B == 0) {
                    top2 = view.getTop();
                    if (this.b) {
                        i5 = this.f1338r;
                        if (top2 < i5) {
                            if (top2 < Math.abs(top2 - this.f1340t)) {
                                i4 = this.f1336p;
                            } else {
                                i4 = this.f1338r;
                            }
                        } else if (Math.abs(top2 - i5) < Math.abs(top2 - this.f1340t)) {
                            i4 = this.f1338r;
                        } else {
                            i4 = this.f1340t;
                            i6 = 4;
                        }
                        i6 = 6;
                    } else if (Math.abs(top2 - this.f1337q) < Math.abs(top2 - this.f1340t)) {
                        i4 = this.f1337q;
                    } else {
                        i4 = this.f1340t;
                        i6 = 4;
                    }
                } else {
                    if (this.b) {
                        i4 = this.f1340t;
                    } else {
                        top = view.getTop();
                        if (Math.abs(top - this.f1338r) < Math.abs(top - this.f1340t)) {
                            i4 = this.f1338r;
                            i6 = 6;
                        } else {
                            i4 = this.f1340t;
                        }
                    }
                    i6 = 4;
                }
            } else if (this.B == 0) {
                top2 = view.getTop();
                if (this.b) {
                    i5 = this.f1338r;
                    if (top2 < i5) {
                        if (top2 < Math.abs(top2 - this.f1340t)) {
                            i4 = this.f1336p;
                        } else {
                            i4 = this.f1338r;
                        }
                    } else if (Math.abs(top2 - i5) < Math.abs(top2 - this.f1340t)) {
                        i4 = this.f1338r;
                    } else {
                        i4 = this.f1340t;
                        i6 = 4;
                    }
                    i6 = 6;
                } else if (Math.abs(top2 - this.f1337q) < Math.abs(top2 - this.f1340t)) {
                    i4 = this.f1337q;
                } else {
                    i4 = this.f1340t;
                    i6 = 4;
                }
            } else {
                if (this.b) {
                    i4 = this.f1340t;
                } else {
                    top = view.getTop();
                    if (Math.abs(top - this.f1338r) < Math.abs(top - this.f1340t)) {
                        i4 = this.f1338r;
                        i6 = 6;
                    } else {
                        i4 = this.f1340t;
                    }
                }
                i6 = 4;
            }
            C(view, i6, i4, false);
            this.C = false;
        }
    }

    @Override // s.a
    public final boolean q(View view, MotionEvent motionEvent) {
        if (!view.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.f1345y == 1 && actionMasked == 0) {
            return true;
        }
        e eVar = this.f1346z;
        if (eVar != null) {
            eVar.j(motionEvent);
        }
        if (actionMasked == 0) {
            this.K = -1;
            VelocityTracker velocityTracker = this.J;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.J = null;
            }
        }
        if (this.J == null) {
            this.J = VelocityTracker.obtain();
        }
        this.J.addMovement(motionEvent);
        if (this.f1346z != null && actionMasked == 2 && !this.A) {
            float fAbs = Math.abs(this.L - motionEvent.getY());
            e eVar2 = this.f1346z;
            if (fAbs > eVar2.b) {
                eVar2.b(view, motionEvent.getPointerId(motionEvent.getActionIndex()));
            }
        }
        return !this.A;
    }

    public final void r() {
        int iS = s();
        if (this.b) {
            this.f1340t = Math.max(this.F - iS, this.f1337q);
        } else {
            this.f1340t = this.F - iS;
        }
    }

    public final int s() {
        int i3;
        if (this.f1326e) {
            return Math.min(Math.max(this.f, this.F - ((this.E * 9) / 16)), this.D);
        }
        return (this.f1331k || (i3 = this.f1330j) <= 0) ? this.f1325d : Math.max(this.f1325d, i3 + this.f1327g);
    }

    public final void t(Context context, AttributeSet attributeSet, boolean z2, ColorStateList colorStateList) {
        if (this.f1328h) {
            this.f1332l = k.b(context, attributeSet, R.attr.bottomSheetStyle, R.style.Widget_Design_BottomSheet_Modal).a();
            g gVar = new g(this.f1332l);
            this.f1329i = gVar;
            gVar.g(context);
            if (z2 && colorStateList != null) {
                this.f1329i.i(colorStateList);
                return;
            }
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(android.R.attr.colorBackground, typedValue, true);
            this.f1329i.setTint(typedValue.data);
        }
    }

    public final void u(int i3) {
        if (((View) this.G.get()) != null) {
            ArrayList arrayList = this.I;
            if (arrayList.isEmpty()) {
                return;
            }
            if (i3 <= this.f1340t) {
                w();
            }
            if (arrayList.size() <= 0) {
                return;
            }
            arrayList.get(0).getClass();
            throw new ClassCastException();
        }
    }

    public final int w() {
        return this.b ? this.f1337q : this.f1336p;
    }

    public final void x(int i3) {
        if (i3 == -1) {
            if (this.f1326e) {
                return;
            } else {
                this.f1326e = true;
            }
        } else {
            if (!this.f1326e && this.f1325d == i3) {
                return;
            }
            this.f1326e = false;
            this.f1325d = Math.max(0, i3);
        }
        G();
    }

    public final void y(int i3) {
        if (i3 == this.f1345y) {
            return;
        }
        if (this.G == null) {
            if (i3 == 4 || i3 == 3 || i3 == 6 || (this.f1342v && i3 == 5)) {
                this.f1345y = i3;
                return;
            }
            return;
        }
        View view = (View) this.G.get();
        if (view == null) {
            return;
        }
        ViewParent parent = view.getParent();
        if (parent != null && parent.isLayoutRequested()) {
            WeakHashMap weakHashMap = p0.f727a;
            if (c0.b(view)) {
                view.post(new g1.a(this, view, i3));
                return;
            }
        }
        A(view, i3);
    }

    public final void z(int i3) {
        if (this.f1345y == i3) {
            return;
        }
        this.f1345y = i3;
        WeakReference weakReference = this.G;
        if (weakReference == null || ((View) weakReference.get()) == null) {
            return;
        }
        if (i3 == 3) {
            F(true);
        } else if (i3 == 6 || i3 == 5 || i3 == 4) {
            F(false);
        }
        E(i3);
        ArrayList arrayList = this.I;
        if (arrayList.size() <= 0) {
            D();
        } else {
            arrayList.get(0).getClass();
            throw new ClassCastException();
        }
    }

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) {
        int i3;
        int i4 = 0;
        this.f1323a = 0;
        this.b = true;
        this.f1334n = null;
        this.f1339s = 0.5f;
        this.f1341u = -1.0f;
        this.f1344x = true;
        this.f1345y = 4;
        this.I = new ArrayList();
        this.O = new c(this);
        this.f1327g = context.getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b1.a.f672a);
        this.f1328h = typedArrayObtainStyledAttributes.hasValue(11);
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(1);
        if (zHasValue) {
            t(context, attributeSet, zHasValue, k1.a.z(context, typedArrayObtainStyledAttributes, 1));
        } else {
            t(context, attributeSet, zHasValue, null);
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f1335o = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(500L);
        this.f1335o.addUpdateListener(new b(i4, this));
        this.f1341u = typedArrayObtainStyledAttributes.getDimension(0, -1.0f);
        TypedValue typedValuePeekValue = typedArrayObtainStyledAttributes.peekValue(7);
        if (typedValuePeekValue != null && (i3 = typedValuePeekValue.data) == -1) {
            x(i3);
        } else {
            x(typedArrayObtainStyledAttributes.getDimensionPixelSize(7, -1));
        }
        boolean z2 = typedArrayObtainStyledAttributes.getBoolean(6, false);
        if (this.f1342v != z2) {
            this.f1342v = z2;
            if (!z2 && this.f1345y == 5) {
                y(4);
            }
            D();
        }
        this.f1331k = typedArrayObtainStyledAttributes.getBoolean(10, false);
        boolean z3 = typedArrayObtainStyledAttributes.getBoolean(4, true);
        if (this.b != z3) {
            this.b = z3;
            if (this.G != null) {
                r();
            }
            z((this.b && this.f1345y == 6) ? 3 : this.f1345y);
            D();
        }
        this.f1343w = typedArrayObtainStyledAttributes.getBoolean(9, false);
        this.f1344x = typedArrayObtainStyledAttributes.getBoolean(2, true);
        this.f1323a = typedArrayObtainStyledAttributes.getInt(8, 0);
        float f = typedArrayObtainStyledAttributes.getFloat(5, 0.5f);
        if (f > 0.0f && f < 1.0f) {
            this.f1339s = f;
            if (this.G != null) {
                this.f1338r = (int) ((1.0f - f) * this.F);
            }
            TypedValue typedValuePeekValue2 = typedArrayObtainStyledAttributes.peekValue(3);
            if (typedValuePeekValue2 != null && typedValuePeekValue2.type == 16) {
                int i5 = typedValuePeekValue2.data;
                if (i5 >= 0) {
                    this.f1336p = i5;
                } else {
                    throw new IllegalArgumentException("offset must be greater than or equal to 0");
                }
            } else {
                int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(3, 0);
                if (dimensionPixelOffset >= 0) {
                    this.f1336p = dimensionPixelOffset;
                } else {
                    throw new IllegalArgumentException("offset must be greater than or equal to 0");
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            this.f1324c = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
            return;
        }
        throw new IllegalArgumentException("ratio must be a float value between 0 and 1");
    }
}
