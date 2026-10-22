package i0;

import android.content.Context;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import c0.p0;
import java.util.Arrays;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final d f2255v = new d(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f2256a;
    public final int b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float[] f2258d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float[] f2259e;
    public float[] f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float[] f2260g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[] f2261h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[] f2262i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[] f2263j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f2264k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public VelocityTracker f2265l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final float f2266m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final float f2267n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f2268o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final OverScroller f2269p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final a1.b f2270q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public View f2271r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f2272s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final CoordinatorLayout f2273t;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2257c = -1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final androidx.activity.d f2274u = new androidx.activity.d(8, this);

    public e(Context context, CoordinatorLayout coordinatorLayout, a1.b bVar) {
        if (bVar == null) {
            throw new IllegalArgumentException("Callback may not be null");
        }
        this.f2273t = coordinatorLayout;
        this.f2270q = bVar;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f2268o = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
        this.b = viewConfiguration.getScaledTouchSlop();
        this.f2266m = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f2267n = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f2269p = new OverScroller(context, f2255v);
    }

    public final void a() {
        this.f2257c = -1;
        float[] fArr = this.f2258d;
        if (fArr != null) {
            Arrays.fill(fArr, 0.0f);
            Arrays.fill(this.f2259e, 0.0f);
            Arrays.fill(this.f, 0.0f);
            Arrays.fill(this.f2260g, 0.0f);
            Arrays.fill(this.f2261h, 0);
            Arrays.fill(this.f2262i, 0);
            Arrays.fill(this.f2263j, 0);
            this.f2264k = 0;
        }
        VelocityTracker velocityTracker = this.f2265l;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f2265l = null;
        }
    }

    public final void b(View view, int i3) {
        ViewParent parent = view.getParent();
        CoordinatorLayout coordinatorLayout = this.f2273t;
        if (parent != coordinatorLayout) {
            throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + coordinatorLayout + ")");
        }
        this.f2271r = view;
        this.f2257c = i3;
        this.f2270q.P(view, i3);
        n(1);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0044 A[RETURN] */
    public final boolean c(View view, float f, float f3) {
        if (view != null) {
            a1.b bVar = this.f2270q;
            boolean z2 = bVar.B(view) > 0;
            boolean z3 = bVar.C() > 0;
            if (z2 && z3) {
                float f4 = (f3 * f3) + (f * f);
                int i3 = this.b;
                if (f4 > i3 * i3) {
                    return true;
                }
            } else if (!z2 ? !(!z3 || Math.abs(f3) <= this.b) : Math.abs(f) > this.b) {
                return true;
            }
        }
        return false;
    }

    public final void d(int i3) {
        float[] fArr = this.f2258d;
        if (fArr != null) {
            int i4 = this.f2264k;
            int i5 = 1 << i3;
            if ((i4 & i5) != 0) {
                fArr[i3] = 0.0f;
                this.f2259e[i3] = 0.0f;
                this.f[i3] = 0.0f;
                this.f2260g[i3] = 0.0f;
                this.f2261h[i3] = 0;
                this.f2262i[i3] = 0;
                this.f2263j[i3] = 0;
                this.f2264k = (~i5) & i4;
            }
        }
    }

    public final int e(int i3, int i4, int i5) {
        if (i3 == 0) {
            return 0;
        }
        int width = this.f2273t.getWidth();
        float f = width / 2;
        float fSin = (((float) Math.sin((Math.min(1.0f, Math.abs(i3) / width) - 0.5f) * 0.47123894f)) * f) + f;
        int iAbs = Math.abs(i4);
        return Math.min(iAbs > 0 ? Math.round(Math.abs(fSin / iAbs) * 1000.0f) * 4 : (int) (((Math.abs(i3) / i5) + 1.0f) * 256.0f), 600);
    }

    public final boolean f() {
        if (this.f2256a == 2) {
            OverScroller overScroller = this.f2269p;
            boolean zComputeScrollOffset = overScroller.computeScrollOffset();
            int currX = overScroller.getCurrX();
            int currY = overScroller.getCurrY();
            int left = currX - this.f2271r.getLeft();
            int top = currY - this.f2271r.getTop();
            if (left != 0) {
                View view = this.f2271r;
                WeakHashMap weakHashMap = p0.f727a;
                view.offsetLeftAndRight(left);
            }
            if (top != 0) {
                View view2 = this.f2271r;
                WeakHashMap weakHashMap2 = p0.f727a;
                view2.offsetTopAndBottom(top);
            }
            if (left != 0 || top != 0) {
                this.f2270q.R(this.f2271r, currX, currY);
            }
            if (zComputeScrollOffset && currX == overScroller.getFinalX() && currY == overScroller.getFinalY()) {
                overScroller.abortAnimation();
                zComputeScrollOffset = false;
            }
            if (!zComputeScrollOffset) {
                this.f2273t.post(this.f2274u);
            }
        }
        return this.f2256a == 2;
    }

    public final View g(int i3, int i4) {
        CoordinatorLayout coordinatorLayout = this.f2273t;
        for (int childCount = coordinatorLayout.getChildCount() - 1; childCount >= 0; childCount--) {
            this.f2270q.getClass();
            View childAt = coordinatorLayout.getChildAt(childCount);
            if (i3 >= childAt.getLeft() && i3 < childAt.getRight() && i4 >= childAt.getTop() && i4 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    public final boolean h(int i3, int i4, int i5, int i6) {
        float f;
        float f3;
        float f4;
        float f5;
        int left = this.f2271r.getLeft();
        int top = this.f2271r.getTop();
        int i7 = i3 - left;
        int i8 = i4 - top;
        OverScroller overScroller = this.f2269p;
        if (i7 == 0 && i8 == 0) {
            overScroller.abortAnimation();
            n(0);
            return false;
        }
        View view = this.f2271r;
        int i9 = (int) this.f2267n;
        int i10 = (int) this.f2266m;
        int iAbs = Math.abs(i5);
        if (iAbs < i9) {
            i5 = 0;
        } else if (iAbs > i10) {
            i5 = i5 > 0 ? i10 : -i10;
        }
        int iAbs2 = Math.abs(i6);
        if (iAbs2 < i9) {
            i6 = 0;
        } else if (iAbs2 > i10) {
            i6 = i6 > 0 ? i10 : -i10;
        }
        int iAbs3 = Math.abs(i7);
        int iAbs4 = Math.abs(i8);
        int iAbs5 = Math.abs(i5);
        int iAbs6 = Math.abs(i6);
        int i11 = iAbs5 + iAbs6;
        int i12 = iAbs3 + iAbs4;
        if (i5 != 0) {
            f = iAbs5;
            f3 = i11;
        } else {
            f = iAbs3;
            f3 = i12;
        }
        float f6 = f / f3;
        if (i6 != 0) {
            f4 = iAbs6;
            f5 = i11;
        } else {
            f4 = iAbs4;
            f5 = i12;
        }
        float f7 = f4 / f5;
        a1.b bVar = this.f2270q;
        overScroller.startScroll(left, top, i7, i8, (int) ((e(i8, i6, bVar.C()) * f7) + (e(i7, i5, bVar.B(view)) * f6)));
        n(2);
        return true;
    }

    public final boolean i(int i3) {
        if ((this.f2264k & (1 << i3)) != 0) {
            return true;
        }
        Log.e("ViewDragHelper", "Ignoring pointerId=" + i3 + " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream.");
        return false;
    }

    public final void j(MotionEvent motionEvent) {
        int i3;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            a();
        }
        if (this.f2265l == null) {
            this.f2265l = VelocityTracker.obtain();
        }
        this.f2265l.addMovement(motionEvent);
        int i4 = 0;
        if (actionMasked == 0) {
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            View viewG = g((int) x2, (int) y2);
            l(x2, y2, pointerId);
            q(viewG, pointerId);
            int i5 = this.f2261h[pointerId];
            return;
        }
        if (actionMasked == 1) {
            if (this.f2256a == 1) {
                k();
            }
            a();
            return;
        }
        a1.b bVar = this.f2270q;
        if (actionMasked != 2) {
            if (actionMasked == 3) {
                if (this.f2256a == 1) {
                    this.f2272s = true;
                    bVar.S(this.f2271r, 0.0f, 0.0f);
                    this.f2272s = false;
                    if (this.f2256a == 1) {
                        n(0);
                    }
                }
                a();
                return;
            }
            if (actionMasked == 5) {
                int pointerId2 = motionEvent.getPointerId(actionIndex);
                float x3 = motionEvent.getX(actionIndex);
                float y3 = motionEvent.getY(actionIndex);
                l(x3, y3, pointerId2);
                if (this.f2256a == 0) {
                    q(g((int) x3, (int) y3), pointerId2);
                    int i6 = this.f2261h[pointerId2];
                    return;
                }
                int i7 = (int) x3;
                int i8 = (int) y3;
                View view = this.f2271r;
                if (view != null && i7 >= view.getLeft() && i7 < view.getRight() && i8 >= view.getTop() && i8 < view.getBottom()) {
                    i4 = 1;
                }
                if (i4 != 0) {
                    q(this.f2271r, pointerId2);
                    return;
                }
                return;
            }
            if (actionMasked != 6) {
                return;
            }
            int pointerId3 = motionEvent.getPointerId(actionIndex);
            if (this.f2256a == 1 && pointerId3 == this.f2257c) {
                int pointerCount = motionEvent.getPointerCount();
                while (true) {
                    if (i4 >= pointerCount) {
                        i3 = -1;
                        break;
                    }
                    int pointerId4 = motionEvent.getPointerId(i4);
                    if (pointerId4 != this.f2257c) {
                        View viewG2 = g((int) motionEvent.getX(i4), (int) motionEvent.getY(i4));
                        View view2 = this.f2271r;
                        if (viewG2 == view2 && q(view2, pointerId4)) {
                            i3 = this.f2257c;
                            break;
                        }
                    }
                    i4++;
                }
                if (i3 == -1) {
                    k();
                }
            }
            d(pointerId3);
            return;
        }
        if (this.f2256a == 1) {
            if (i(this.f2257c)) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.f2257c);
                float x4 = motionEvent.getX(iFindPointerIndex);
                float y4 = motionEvent.getY(iFindPointerIndex);
                float[] fArr = this.f;
                int i9 = this.f2257c;
                int i10 = (int) (x4 - fArr[i9]);
                int i11 = (int) (y4 - this.f2260g[i9]);
                int left = this.f2271r.getLeft() + i10;
                int top = this.f2271r.getTop() + i11;
                int left2 = this.f2271r.getLeft();
                int top2 = this.f2271r.getTop();
                if (i10 != 0) {
                    left = bVar.n(this.f2271r, left);
                    WeakHashMap weakHashMap = p0.f727a;
                    this.f2271r.offsetLeftAndRight(left - left2);
                }
                if (i11 != 0) {
                    top = bVar.o(this.f2271r, top);
                    WeakHashMap weakHashMap2 = p0.f727a;
                    this.f2271r.offsetTopAndBottom(top - top2);
                }
                if (i10 != 0 || i11 != 0) {
                    bVar.R(this.f2271r, left, top);
                }
                m(motionEvent);
                return;
            }
            return;
        }
        int pointerCount2 = motionEvent.getPointerCount();
        while (i4 < pointerCount2) {
            int pointerId5 = motionEvent.getPointerId(i4);
            if (i(pointerId5)) {
                float x5 = motionEvent.getX(i4);
                float y5 = motionEvent.getY(i4);
                float f = x5 - this.f2258d[pointerId5];
                float f3 = y5 - this.f2259e[pointerId5];
                Math.abs(f);
                Math.abs(f3);
                int i12 = this.f2261h[pointerId5];
                Math.abs(f3);
                Math.abs(f);
                int i13 = this.f2261h[pointerId5];
                Math.abs(f);
                Math.abs(f3);
                int i14 = this.f2261h[pointerId5];
                Math.abs(f3);
                Math.abs(f);
                int i15 = this.f2261h[pointerId5];
                if (this.f2256a != 1) {
                    View viewG3 = g((int) x5, (int) y5);
                    if (c(viewG3, f, f3) && q(viewG3, pointerId5)) {
                        break;
                    }
                } else {
                    break;
                }
            }
            i4++;
        }
        m(motionEvent);
    }

    public final void k() {
        VelocityTracker velocityTracker = this.f2265l;
        float f = this.f2266m;
        velocityTracker.computeCurrentVelocity(1000, f);
        float xVelocity = this.f2265l.getXVelocity(this.f2257c);
        float fAbs = Math.abs(xVelocity);
        float f3 = this.f2267n;
        if (fAbs < f3) {
            xVelocity = 0.0f;
        } else if (fAbs > f) {
            xVelocity = xVelocity > 0.0f ? f : -f;
        }
        float yVelocity = this.f2265l.getYVelocity(this.f2257c);
        float fAbs2 = Math.abs(yVelocity);
        if (fAbs2 < f3) {
            f = 0.0f;
        } else if (fAbs2 <= f) {
            f = yVelocity;
        } else if (yVelocity <= 0.0f) {
            f = -f;
        }
        this.f2272s = true;
        this.f2270q.S(this.f2271r, xVelocity, f);
        this.f2272s = false;
        if (this.f2256a == 1) {
            n(0);
        }
    }

    public final void l(float f, float f3, int i3) {
        float[] fArr = this.f2258d;
        if (fArr == null || fArr.length <= i3) {
            int i4 = i3 + 1;
            float[] fArr2 = new float[i4];
            float[] fArr3 = new float[i4];
            float[] fArr4 = new float[i4];
            float[] fArr5 = new float[i4];
            int[] iArr = new int[i4];
            int[] iArr2 = new int[i4];
            int[] iArr3 = new int[i4];
            if (fArr != null) {
                System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                float[] fArr6 = this.f2259e;
                System.arraycopy(fArr6, 0, fArr3, 0, fArr6.length);
                float[] fArr7 = this.f;
                System.arraycopy(fArr7, 0, fArr4, 0, fArr7.length);
                float[] fArr8 = this.f2260g;
                System.arraycopy(fArr8, 0, fArr5, 0, fArr8.length);
                int[] iArr4 = this.f2261h;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.f2262i;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.f2263j;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.f2258d = fArr2;
            this.f2259e = fArr3;
            this.f = fArr4;
            this.f2260g = fArr5;
            this.f2261h = iArr;
            this.f2262i = iArr2;
            this.f2263j = iArr3;
        }
        float[] fArr9 = this.f2258d;
        this.f[i3] = f;
        fArr9[i3] = f;
        float[] fArr10 = this.f2259e;
        this.f2260g[i3] = f3;
        fArr10[i3] = f3;
        int[] iArr7 = this.f2261h;
        int i5 = (int) f;
        int i6 = (int) f3;
        CoordinatorLayout coordinatorLayout = this.f2273t;
        int left = coordinatorLayout.getLeft();
        int i7 = this.f2268o;
        int i8 = i5 < left + i7 ? 1 : 0;
        if (i6 < coordinatorLayout.getTop() + i7) {
            i8 |= 4;
        }
        if (i5 > coordinatorLayout.getRight() - i7) {
            i8 |= 2;
        }
        if (i6 > coordinatorLayout.getBottom() - i7) {
            i8 |= 8;
        }
        iArr7[i3] = i8;
        this.f2264k |= 1 << i3;
    }

    public final void m(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i3 = 0; i3 < pointerCount; i3++) {
            int pointerId = motionEvent.getPointerId(i3);
            if (i(pointerId)) {
                float x2 = motionEvent.getX(i3);
                float y2 = motionEvent.getY(i3);
                this.f[pointerId] = x2;
                this.f2260g[pointerId] = y2;
            }
        }
    }

    public final void n(int i3) {
        this.f2273t.removeCallbacks(this.f2274u);
        if (this.f2256a != i3) {
            this.f2256a = i3;
            this.f2270q.Q(i3);
            if (this.f2256a == 0) {
                this.f2271r = null;
            }
        }
    }

    public final boolean o(int i3, int i4) {
        if (this.f2272s) {
            return h(i3, i4, (int) this.f2265l.getXVelocity(this.f2257c), (int) this.f2265l.getYVelocity(this.f2257c));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    /* JADX WARN: Code duplicated, block: B:52:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:61:0x0114  */
    public final boolean p(MotionEvent motionEvent) {
        View viewG;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            a();
        }
        if (this.f2265l == null) {
            this.f2265l = VelocityTracker.obtain();
        }
        this.f2265l.addMovement(motionEvent);
        if (actionMasked == 0) {
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            l(x2, y2, pointerId);
            View viewG2 = g((int) x2, (int) y2);
            if (viewG2 == this.f2271r && this.f2256a == 2) {
                q(viewG2, pointerId);
            }
            int i3 = this.f2261h[pointerId];
        } else if (actionMasked == 1) {
            a();
        } else if (actionMasked != 2) {
            if (actionMasked == 3) {
                a();
            } else if (actionMasked == 5) {
                int pointerId2 = motionEvent.getPointerId(actionIndex);
                float x3 = motionEvent.getX(actionIndex);
                float y3 = motionEvent.getY(actionIndex);
                l(x3, y3, pointerId2);
                int i4 = this.f2256a;
                if (i4 == 0) {
                    int i5 = this.f2261h[pointerId2];
                } else if (i4 == 2 && (viewG = g((int) x3, (int) y3)) == this.f2271r) {
                    q(viewG, pointerId2);
                }
            } else if (actionMasked == 6) {
                d(motionEvent.getPointerId(actionIndex));
            }
        } else if (this.f2258d != null && this.f2259e != null) {
            int pointerCount = motionEvent.getPointerCount();
            for (int i6 = 0; i6 < pointerCount; i6++) {
                int pointerId3 = motionEvent.getPointerId(i6);
                if (i(pointerId3)) {
                    float x4 = motionEvent.getX(i6);
                    float y4 = motionEvent.getY(i6);
                    float f = x4 - this.f2258d[pointerId3];
                    float f3 = y4 - this.f2259e[pointerId3];
                    View viewG3 = g((int) x4, (int) y4);
                    boolean z2 = viewG3 != null && c(viewG3, f, f3);
                    if (!z2) {
                        Math.abs(f);
                        Math.abs(f3);
                        int i7 = this.f2261h[pointerId3];
                        Math.abs(f3);
                        Math.abs(f);
                        int i8 = this.f2261h[pointerId3];
                        Math.abs(f);
                        Math.abs(f3);
                        int i9 = this.f2261h[pointerId3];
                        Math.abs(f3);
                        Math.abs(f);
                        int i10 = this.f2261h[pointerId3];
                        if (this.f2256a != 1) {
                            break;
                        }
                    } else {
                        int left = viewG3.getLeft();
                        a1.b bVar = this.f2270q;
                        int iN = bVar.n(viewG3, ((int) f) + left);
                        int top = viewG3.getTop();
                        int iO = bVar.o(viewG3, ((int) f3) + top);
                        int iB = bVar.B(viewG3);
                        int iC = bVar.C();
                        if ((iB == 0 || (iB > 0 && iN == left)) && (iC == 0 || (iC > 0 && iO == top))) {
                            break;
                        }
                        Math.abs(f);
                        Math.abs(f3);
                        int i11 = this.f2261h[pointerId3];
                        Math.abs(f3);
                        Math.abs(f);
                        int i12 = this.f2261h[pointerId3];
                        Math.abs(f);
                        Math.abs(f3);
                        int i13 = this.f2261h[pointerId3];
                        Math.abs(f3);
                        Math.abs(f);
                        int i14 = this.f2261h[pointerId3];
                        if (this.f2256a != 1 || (z2 && q(viewG3, pointerId3))) {
                            break;
                        }
                    }
                }
            }
            m(motionEvent);
        }
        return this.f2256a == 1;
    }

    public final boolean q(View view, int i3) {
        if (view == this.f2271r && this.f2257c == i3) {
            return true;
        }
        if (view == null || !this.f2270q.d0(view, i3)) {
            return false;
        }
        this.f2257c = i3;
        b(view, i3);
        return true;
    }
}
