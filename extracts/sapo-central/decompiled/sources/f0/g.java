package f0;

import android.content.res.Resources;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import i.q1;

/* JADX INFO: loaded from: classes.dex */
public final class g implements View.OnTouchListener {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int f1722r = ViewConfiguration.getTapTimeout();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f1723a;
    public final AccelerateInterpolator b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final q1 f1724c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public androidx.activity.d f1725d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float[] f1726e;
    public final float[] f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f1727g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f1728h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float[] f1729i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final float[] f1730j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final float[] f1731k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f1732l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f1733m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f1734n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f1735o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f1736p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final q1 f1737q;

    public g(q1 q1Var) {
        a aVar = new a();
        aVar.f1718e = Long.MIN_VALUE;
        aVar.f1719g = -1L;
        aVar.f = 0L;
        this.f1723a = aVar;
        this.b = new AccelerateInterpolator();
        float[] fArr = {0.0f, 0.0f};
        this.f1726e = fArr;
        float[] fArr2 = {Float.MAX_VALUE, Float.MAX_VALUE};
        this.f = fArr2;
        float[] fArr3 = {0.0f, 0.0f};
        this.f1729i = fArr3;
        float[] fArr4 = {0.0f, 0.0f};
        this.f1730j = fArr4;
        float[] fArr5 = {Float.MAX_VALUE, Float.MAX_VALUE};
        this.f1731k = fArr5;
        this.f1724c = q1Var;
        float f = Resources.getSystem().getDisplayMetrics().density;
        float f3 = ((int) ((1575.0f * f) + 0.5f)) / 1000.0f;
        fArr5[0] = f3;
        fArr5[1] = f3;
        float f4 = ((int) ((f * 315.0f) + 0.5f)) / 1000.0f;
        fArr4[0] = f4;
        fArr4[1] = f4;
        this.f1727g = 1;
        fArr2[0] = Float.MAX_VALUE;
        fArr2[1] = Float.MAX_VALUE;
        fArr[0] = 0.2f;
        fArr[1] = 0.2f;
        fArr3[0] = 0.001f;
        fArr3[1] = 0.001f;
        this.f1728h = f1722r;
        aVar.f1715a = 500;
        aVar.b = 500;
        this.f1737q = q1Var;
    }

    public static float b(float f, float f3, float f4) {
        if (f > f4) {
            return f4;
        }
        return f < f3 ? f3 : f;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x003b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:13:0x003c  */
    /* JADX WARN: Code duplicated, block: B:15:0x004b  */
    /* JADX WARN: Code duplicated, block: B:17:0x0051  */
    public final float a(float f, float f3, float f4, int i3) {
        float fB;
        float interpolation;
        float fB2 = b(this.f1726e[i3] * f3, 0.0f, this.f[i3]);
        float fC = c(f3 - f, fB2) - c(f, fB2);
        AccelerateInterpolator accelerateInterpolator = this.b;
        if (fC >= 0.0f) {
            if (fC > 0.0f) {
                interpolation = accelerateInterpolator.getInterpolation(fC);
            } else {
                fB = 0.0f;
            }
            if (fB == 0.0f) {
                return 0.0f;
            }
            float f5 = this.f1729i[i3];
            float f6 = this.f1730j[i3];
            float f7 = this.f1731k[i3];
            float f8 = f5 * f4;
            return fB > 0.0f ? b(fB * f8, f6, f7) : -b((-fB) * f8, f6, f7);
        }
        interpolation = -accelerateInterpolator.getInterpolation(-fC);
        fB = b(interpolation, -1.0f, 1.0f);
        if (fB == 0.0f) {
            return 0.0f;
        }
        float f9 = this.f1729i[i3];
        float f10 = this.f1730j[i3];
        float f11 = this.f1731k[i3];
        float f12 = f9 * f4;
        if (fB > 0.0f) {
        }
    }

    public final float c(float f, float f3) {
        if (f3 != 0.0f) {
            int i3 = this.f1727g;
            if (i3 == 0 || i3 == 1) {
                if (f < f3) {
                    if (f >= 0.0f) {
                        return 1.0f - (f / f3);
                    }
                    if (this.f1735o && i3 == 1) {
                        return 1.0f;
                    }
                }
            } else if (i3 == 2 && f < 0.0f) {
                return f / (-f3);
            }
        }
        return 0.0f;
    }

    public final void d() {
        int i3 = 0;
        if (this.f1733m) {
            this.f1735o = false;
            return;
        }
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        a aVar = this.f1723a;
        int i4 = (int) (jCurrentAnimationTimeMillis - aVar.f1718e);
        int i5 = aVar.b;
        if (i4 > i5) {
            i3 = i5;
        } else if (i4 >= 0) {
            i3 = i4;
        }
        aVar.f1721i = i3;
        aVar.f1720h = aVar.a(jCurrentAnimationTimeMillis);
        aVar.f1719g = jCurrentAnimationTimeMillis;
    }

    public final boolean e() {
        q1 q1Var;
        int count;
        a aVar = this.f1723a;
        float f = aVar.f1717d;
        int iAbs = (int) (f / Math.abs(f));
        Math.abs(aVar.f1716c);
        if (iAbs != 0 && (count = (q1Var = this.f1737q).getCount()) != 0) {
            int childCount = q1Var.getChildCount();
            int firstVisiblePosition = q1Var.getFirstVisiblePosition();
            int i3 = firstVisiblePosition + childCount;
            if (iAbs <= 0 ? !(iAbs >= 0 || (firstVisiblePosition <= 0 && q1Var.getChildAt(0).getTop() >= 0)) : !(i3 >= count && q1Var.getChildAt(childCount - 1).getBottom() <= q1Var.getHeight())) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0014, code lost:
    
        if (r0 != 3) goto L30;
     */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouch(android.view.View r8, android.view.MotionEvent r9) {
        /*
            r7 = this;
            boolean r0 = r7.f1736p
            r1 = 0
            if (r0 != 0) goto L7
            goto L7d
        L7:
            int r0 = r9.getActionMasked()
            r2 = 1
            if (r0 == 0) goto L1b
            if (r0 == r2) goto L17
            r3 = 2
            if (r0 == r3) goto L1f
            r8 = 3
            if (r0 == r8) goto L17
            goto L7d
        L17:
            r7.d()
            return r1
        L1b:
            r7.f1734n = r2
            r7.f1732l = r1
        L1f:
            float r0 = r9.getX()
            int r3 = r8.getWidth()
            float r3 = (float) r3
            i.q1 r4 = r7.f1724c
            int r5 = r4.getWidth()
            float r5 = (float) r5
            float r0 = r7.a(r0, r3, r5, r1)
            float r9 = r9.getY()
            int r8 = r8.getHeight()
            float r8 = (float) r8
            int r3 = r4.getHeight()
            float r3 = (float) r3
            float r8 = r7.a(r9, r8, r3, r2)
            f0.a r9 = r7.f1723a
            r9.f1716c = r0
            r9.f1717d = r8
            boolean r8 = r7.f1735o
            if (r8 != 0) goto L7d
            boolean r8 = r7.e()
            if (r8 == 0) goto L7d
            androidx.activity.d r8 = r7.f1725d
            if (r8 != 0) goto L61
            androidx.activity.d r8 = new androidx.activity.d
            r9 = 5
            r8.<init>(r9, r7)
            r7.f1725d = r8
        L61:
            r7.f1735o = r2
            r7.f1733m = r2
            boolean r8 = r7.f1732l
            if (r8 != 0) goto L76
            int r8 = r7.f1728h
            if (r8 <= 0) goto L76
            androidx.activity.d r9 = r7.f1725d
            long r5 = (long) r8
            java.util.WeakHashMap r8 = c0.p0.f727a
            c0.a0.n(r4, r9, r5)
            goto L7b
        L76:
            androidx.activity.d r8 = r7.f1725d
            r8.run()
        L7b:
            r7.f1732l = r2
        L7d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: f0.g.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }
}
