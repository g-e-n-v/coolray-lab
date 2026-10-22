package q0;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f3033a = -1;
    public RecyclerView b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public i0 f3034c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f3035d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f3036e;
    public View f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final r0 f3037g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f3038h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final LinearInterpolator f3039i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final DecelerateInterpolator f3040j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public PointF f3041k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final DisplayMetrics f3042l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f3043m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f3044n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f3045o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f3046p;

    public w(Context context) {
        r0 r0Var = new r0();
        r0Var.f2994d = -1;
        r0Var.f = false;
        r0Var.f2996g = 0;
        r0Var.f2992a = 0;
        r0Var.b = 0;
        r0Var.f2993c = Integer.MIN_VALUE;
        r0Var.f2995e = null;
        this.f3037g = r0Var;
        this.f3039i = new LinearInterpolator();
        this.f3040j = new DecelerateInterpolator();
        this.f3043m = false;
        this.f3045o = 0;
        this.f3046p = 0;
        this.f3042l = context.getResources().getDisplayMetrics();
    }

    public static int a(int i3, int i4, int i5, int i6, int i7) {
        if (i7 == -1) {
            return i5 - i3;
        }
        if (i7 != 0) {
            if (i7 == 1) {
                return i6 - i4;
            }
            throw new IllegalArgumentException("snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_");
        }
        int i8 = i5 - i3;
        if (i8 > 0) {
            return i8;
        }
        int i9 = i6 - i4;
        if (i9 < 0) {
            return i9;
        }
        return 0;
    }

    public float b(DisplayMetrics displayMetrics) {
        return 25.0f / displayMetrics.densityDpi;
    }

    public final int c(int i3) {
        float fAbs = Math.abs(i3);
        if (!this.f3043m) {
            this.f3044n = b(this.f3042l);
            this.f3043m = true;
        }
        return (int) Math.ceil(fAbs * this.f3044n);
    }

    public final PointF d(int i3) {
        Object obj = this.f3034c;
        if (obj instanceof s0) {
            return ((s0) obj).a(i3);
        }
        Log.w("RecyclerView", "You should override computeScrollVectorForPosition when the LayoutManager does not implement " + s0.class.getCanonicalName());
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:50:0x00f8  */
    public final void e(int i3, int i4) {
        PointF pointFD;
        RecyclerView recyclerView = this.b;
        if (this.f3033a == -1 || recyclerView == null) {
            g();
        }
        if (this.f3035d && this.f == null && this.f3034c != null && (pointFD = d(this.f3033a)) != null) {
            float f = pointFD.x;
            if (f != 0.0f || pointFD.y != 0.0f) {
                recyclerView.X((int) Math.signum(f), (int) Math.signum(pointFD.y), null);
            }
        }
        this.f3035d = false;
        View view = this.f;
        r0 r0Var = this.f3037g;
        if (view != null) {
            this.b.getClass();
            w0 w0VarI = RecyclerView.I(view);
            if ((w0VarI != null ? w0VarI.b() : -1) == this.f3033a) {
                View view2 = this.f;
                t0 t0Var = recyclerView.f619c0;
                f(view2, r0Var);
                r0Var.a(recyclerView);
                g();
            } else {
                Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
                this.f = null;
            }
        }
        if (this.f3036e) {
            t0 t0Var2 = recyclerView.f619c0;
            if (this.b.f635l.v() == 0) {
                g();
            } else {
                int i5 = this.f3045o;
                int i6 = i5 - i3;
                if (i5 * i6 <= 0) {
                    i6 = 0;
                }
                this.f3045o = i6;
                int i7 = this.f3046p;
                int i8 = i7 - i4;
                if (i7 * i8 <= 0) {
                    i8 = 0;
                }
                this.f3046p = i8;
                if (i6 == 0 && i8 == 0) {
                    PointF pointFD2 = d(this.f3033a);
                    if (pointFD2 != null) {
                        float f3 = pointFD2.x;
                        if (f3 == 0.0f && pointFD2.y == 0.0f) {
                            r0Var.f2994d = this.f3033a;
                            g();
                        } else {
                            float f4 = pointFD2.y;
                            float fSqrt = (float) Math.sqrt((f4 * f4) + (f3 * f3));
                            float f5 = pointFD2.x / fSqrt;
                            pointFD2.x = f5;
                            float f6 = pointFD2.y / fSqrt;
                            pointFD2.y = f6;
                            this.f3041k = pointFD2;
                            this.f3045o = (int) (f5 * 10000.0f);
                            this.f3046p = (int) (f6 * 10000.0f);
                            int iC = c(10000);
                            int i9 = (int) (this.f3045o * 1.2f);
                            int i10 = (int) (this.f3046p * 1.2f);
                            r0Var.f2992a = i9;
                            r0Var.b = i10;
                            r0Var.f2993c = (int) (iC * 1.2f);
                            r0Var.f2995e = this.f3039i;
                            r0Var.f = true;
                        }
                    } else {
                        r0Var.f2994d = this.f3033a;
                        g();
                    }
                }
            }
            boolean z2 = r0Var.f2994d >= 0;
            r0Var.a(recyclerView);
            if (z2 && this.f3036e) {
                this.f3035d = true;
                recyclerView.W.a();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0015  */
    /* JADX WARN: Code duplicated, block: B:25:0x006b  */
    public void f(View view, r0 r0Var) {
        int i3;
        int iA;
        PointF pointF = this.f3041k;
        int i4 = -1;
        int iA2 = 0;
        if (pointF != null) {
            float f = pointF.x;
            if (f == 0.0f) {
                i3 = 0;
            } else {
                i3 = f > 0.0f ? 1 : -1;
            }
        } else {
            i3 = 0;
        }
        i0 i0Var = this.f3034c;
        if (i0Var == null || !i0Var.d()) {
            iA = 0;
        } else {
            j0 j0Var = (j0) view.getLayoutParams();
            iA = a((view.getLeft() - ((j0) view.getLayoutParams()).b.left) - ((ViewGroup.MarginLayoutParams) j0Var).leftMargin, view.getRight() + ((j0) view.getLayoutParams()).b.right + ((ViewGroup.MarginLayoutParams) j0Var).rightMargin, i0Var.A(), i0Var.f2918n - i0Var.B(), i3);
        }
        PointF pointF2 = this.f3041k;
        if (pointF2 != null) {
            float f3 = pointF2.y;
            if (f3 == 0.0f) {
                i4 = 0;
            } else if (f3 > 0.0f) {
                i4 = 1;
            }
        } else {
            i4 = 0;
        }
        i0 i0Var2 = this.f3034c;
        if (i0Var2 != null && i0Var2.e()) {
            j0 j0Var2 = (j0) view.getLayoutParams();
            iA2 = a((view.getTop() - ((j0) view.getLayoutParams()).b.top) - ((ViewGroup.MarginLayoutParams) j0Var2).topMargin, view.getBottom() + ((j0) view.getLayoutParams()).b.bottom + ((ViewGroup.MarginLayoutParams) j0Var2).bottomMargin, i0Var2.C(), i0Var2.f2919o - i0Var2.z(), i4);
        }
        int iCeil = (int) Math.ceil(((double) c((int) Math.sqrt((iA2 * iA2) + (iA * iA)))) / 0.3356d);
        if (iCeil > 0) {
            r0Var.f2992a = -iA;
            r0Var.b = -iA2;
            r0Var.f2993c = iCeil;
            r0Var.f2995e = this.f3040j;
            r0Var.f = true;
        }
    }

    public final void g() {
        if (this.f3036e) {
            this.f3036e = false;
            this.f3046p = 0;
            this.f3045o = 0;
            this.f3041k = null;
            this.b.f619c0.f3004a = -1;
            this.f = null;
            this.f3033a = -1;
            this.f3035d = false;
            i0 i0Var = this.f3034c;
            if (i0Var.f2910e == this) {
                i0Var.f2910e = null;
            }
            this.f3034c = null;
            this.b = null;
        }
    }
}
