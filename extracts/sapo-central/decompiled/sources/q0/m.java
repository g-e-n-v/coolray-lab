package q0;

import android.R;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class m extends f0 {
    public static final int[] C = {R.attr.state_pressed};
    public static final int[] D = new int[0];
    public int A;
    public final androidx.activity.d B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f2938a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StateListDrawable f2939c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Drawable f2940d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f2941e;
    public final int f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final StateListDrawable f2942g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Drawable f2943h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f2944i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f2945j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f2946k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f2947l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public float f2948m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f2949n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f2950o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public float f2951p;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final RecyclerView f2954s;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final ValueAnimator f2961z;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f2952q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f2953r = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f2955t = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f2956u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f2957v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f2958w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int[] f2959x = new int[2];

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int[] f2960y = new int[2];

    public m(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i3, int i4, int i5) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f2961z = valueAnimatorOfFloat;
        this.A = 0;
        androidx.activity.d dVar = new androidx.activity.d(9, this);
        this.B = dVar;
        k kVar = new k(this);
        this.f2939c = stateListDrawable;
        this.f2940d = drawable;
        this.f2942g = stateListDrawable2;
        this.f2943h = drawable2;
        this.f2941e = Math.max(i3, stateListDrawable.getIntrinsicWidth());
        this.f = Math.max(i3, drawable.getIntrinsicWidth());
        this.f2944i = Math.max(i3, stateListDrawable2.getIntrinsicWidth());
        this.f2945j = Math.max(i3, drawable2.getIntrinsicWidth());
        this.f2938a = i4;
        this.b = i5;
        stateListDrawable.setAlpha(255);
        drawable.setAlpha(255);
        valueAnimatorOfFloat.addListener(new l(this));
        valueAnimatorOfFloat.addUpdateListener(new g1.b(1, this));
        RecyclerView recyclerView2 = this.f2954s;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            ArrayList arrayList = recyclerView2.f637m;
            i0 i0Var = recyclerView2.f635l;
            if (i0Var != null) {
                i0Var.c("Cannot remove item decoration during a scroll  or layout");
            }
            arrayList.remove(this);
            if (arrayList.isEmpty()) {
                recyclerView2.setWillNotDraw(recyclerView2.getOverScrollMode() == 2);
            }
            recyclerView2.N();
            recyclerView2.requestLayout();
            RecyclerView recyclerView3 = this.f2954s;
            recyclerView3.f639n.remove(this);
            if (recyclerView3.f641o == this) {
                recyclerView3.f641o = null;
            }
            ArrayList arrayList2 = this.f2954s.f623e0;
            if (arrayList2 != null) {
                arrayList2.remove(kVar);
            }
            this.f2954s.removeCallbacks(dVar);
        }
        this.f2954s = recyclerView;
        recyclerView.g(this);
        this.f2954s.f639n.add(this);
        this.f2954s.h(kVar);
    }

    public static int e(float f, float f3, int[] iArr, int i3, int i4, int i5) {
        int i6 = iArr[1] - iArr[0];
        if (i6 != 0) {
            int i7 = i3 - i5;
            int i8 = (int) (((f3 - f) / i6) * i7);
            int i9 = i4 + i8;
            if (i9 < i7 && i9 >= 0) {
                return i8;
            }
        }
        return 0;
    }

    @Override // q0.f0
    public final void b(Canvas canvas) {
        int i3 = this.f2952q;
        RecyclerView recyclerView = this.f2954s;
        if (i3 != recyclerView.getWidth() || this.f2953r != recyclerView.getHeight()) {
            this.f2952q = recyclerView.getWidth();
            this.f2953r = recyclerView.getHeight();
            f(0);
            return;
        }
        if (this.A != 0) {
            if (this.f2955t) {
                int i4 = this.f2952q;
                int i5 = this.f2941e;
                int i6 = i4 - i5;
                int i7 = this.f2947l;
                int i8 = this.f2946k;
                int i9 = i7 - (i8 / 2);
                StateListDrawable stateListDrawable = this.f2939c;
                stateListDrawable.setBounds(0, 0, i5, i8);
                int i10 = this.f;
                int i11 = this.f2953r;
                Drawable drawable = this.f2940d;
                drawable.setBounds(0, 0, i10, i11);
                WeakHashMap weakHashMap = c0.p0.f727a;
                if (c0.b0.d(recyclerView) == 1) {
                    drawable.draw(canvas);
                    canvas.translate(i5, i9);
                    canvas.scale(-1.0f, 1.0f);
                    stateListDrawable.draw(canvas);
                    canvas.scale(1.0f, 1.0f);
                    canvas.translate(-i5, -i9);
                } else {
                    canvas.translate(i6, 0.0f);
                    drawable.draw(canvas);
                    canvas.translate(0.0f, i9);
                    stateListDrawable.draw(canvas);
                    canvas.translate(-i6, -i9);
                }
            }
            if (this.f2956u) {
                int i12 = this.f2953r;
                int i13 = this.f2944i;
                int i14 = i12 - i13;
                int i15 = this.f2950o;
                int i16 = this.f2949n;
                int i17 = i15 - (i16 / 2);
                StateListDrawable stateListDrawable2 = this.f2942g;
                stateListDrawable2.setBounds(0, 0, i16, i13);
                int i18 = this.f2952q;
                int i19 = this.f2945j;
                Drawable drawable2 = this.f2943h;
                drawable2.setBounds(0, 0, i18, i19);
                canvas.translate(0.0f, i14);
                drawable2.draw(canvas);
                canvas.translate(i17, 0.0f);
                stateListDrawable2.draw(canvas);
                canvas.translate(-i17, -i14);
            }
        }
    }

    public final boolean c(float f, float f3) {
        if (f3 < this.f2953r - this.f2944i) {
            return false;
        }
        int i3 = this.f2950o;
        int i4 = this.f2949n;
        return f >= ((float) (i3 - (i4 / 2))) && f <= ((float) ((i4 / 2) + i3));
    }

    public final boolean d(float f, float f3) {
        WeakHashMap weakHashMap = c0.p0.f727a;
        int iD = c0.b0.d(this.f2954s);
        int i3 = this.f2941e;
        if (iD == 1) {
            if (f > i3 / 2) {
                return false;
            }
        } else if (f < this.f2952q - i3) {
            return false;
        }
        int i4 = this.f2947l;
        int i5 = this.f2946k / 2;
        return f3 >= ((float) (i4 - i5)) && f3 <= ((float) (i5 + i4));
    }

    public final void f(int i3) {
        androidx.activity.d dVar = this.B;
        StateListDrawable stateListDrawable = this.f2939c;
        if (i3 == 2 && this.f2957v != 2) {
            stateListDrawable.setState(C);
            this.f2954s.removeCallbacks(dVar);
        }
        if (i3 == 0) {
            this.f2954s.invalidate();
        } else {
            g();
        }
        if (this.f2957v == 2 && i3 != 2) {
            stateListDrawable.setState(D);
            this.f2954s.removeCallbacks(dVar);
            this.f2954s.postDelayed(dVar, 1200);
        } else if (i3 == 1) {
            this.f2954s.removeCallbacks(dVar);
            this.f2954s.postDelayed(dVar, 1500);
        }
        this.f2957v = i3;
    }

    public final void g() {
        int i3 = this.A;
        ValueAnimator valueAnimator = this.f2961z;
        if (i3 != 0) {
            if (i3 != 3) {
                return;
            } else {
                valueAnimator.cancel();
            }
        }
        this.A = 1;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        valueAnimator.setDuration(500L);
        valueAnimator.setStartDelay(0L);
        valueAnimator.start();
    }
}
