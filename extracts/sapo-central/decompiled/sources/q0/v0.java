package q0;

import android.view.animation.Interpolator;
import android.widget.OverScroller;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class v0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f3028a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public OverScroller f3029c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Interpolator f3030d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f3031e;
    public boolean f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f3032g;

    public v0(RecyclerView recyclerView) {
        this.f3032g = recyclerView;
        i0.d dVar = RecyclerView.f614u0;
        this.f3030d = dVar;
        this.f3031e = false;
        this.f = false;
        this.f3029c = new OverScroller(recyclerView.getContext(), dVar);
    }

    public final void a() {
        if (this.f3031e) {
            this.f = true;
            return;
        }
        RecyclerView recyclerView = this.f3032g;
        recyclerView.removeCallbacks(this);
        WeakHashMap weakHashMap = c0.p0.f727a;
        c0.a0.m(recyclerView, this);
    }

    public final void b(int i3, int i4, int i5, Interpolator interpolator) {
        int iRound;
        RecyclerView recyclerView = this.f3032g;
        if (i5 == Integer.MIN_VALUE) {
            int iAbs = Math.abs(i3);
            int iAbs2 = Math.abs(i4);
            boolean z2 = iAbs > iAbs2;
            int iSqrt = (int) Math.sqrt(0);
            int iSqrt2 = (int) Math.sqrt((i4 * i4) + (i3 * i3));
            int width = z2 ? recyclerView.getWidth() : recyclerView.getHeight();
            int i6 = width / 2;
            float f = width;
            float f3 = i6;
            float fSin = (((float) Math.sin((Math.min(1.0f, (iSqrt2 * 1.0f) / f) - 0.5f) * 0.47123894f)) * f3) + f3;
            if (iSqrt > 0) {
                iRound = Math.round(Math.abs(fSin / iSqrt) * 1000.0f) * 4;
            } else {
                if (!z2) {
                    iAbs = iAbs2;
                }
                iRound = (int) (((iAbs / f) + 1.0f) * 300.0f);
            }
            i5 = Math.min(iRound, 2000);
        }
        int i7 = i5;
        if (interpolator == null) {
            interpolator = RecyclerView.f614u0;
        }
        if (this.f3030d != interpolator) {
            this.f3030d = interpolator;
            this.f3029c = new OverScroller(recyclerView.getContext(), interpolator);
        }
        this.b = 0;
        this.f3028a = 0;
        recyclerView.setScrollState(2);
        this.f3029c.startScroll(0, 0, i3, i4, i7);
        a();
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        RecyclerView recyclerView = this.f3032g;
        int[] iArr = recyclerView.f642o0;
        if (recyclerView.f635l == null) {
            recyclerView.removeCallbacks(this);
            this.f3029c.abortAnimation();
            return;
        }
        this.f = false;
        this.f3031e = true;
        recyclerView.m();
        OverScroller overScroller = this.f3029c;
        if (overScroller.computeScrollOffset()) {
            int currX = overScroller.getCurrX();
            int currY = overScroller.getCurrY();
            int i8 = currX - this.f3028a;
            int i9 = currY - this.b;
            this.f3028a = currX;
            this.b = currY;
            int[] iArr2 = recyclerView.f642o0;
            iArr2[0] = 0;
            iArr2[1] = 0;
            if (recyclerView.r(i8, i9, iArr2, null, 1)) {
                i3 = i8 - iArr[0];
                i4 = i9 - iArr[1];
            } else {
                i3 = i8;
                i4 = i9;
            }
            if (recyclerView.getOverScrollMode() != 2) {
                recyclerView.l(i3, i4);
            }
            if (recyclerView.f633k != null) {
                iArr[0] = 0;
                iArr[1] = 0;
                recyclerView.X(i3, i4, iArr);
                i5 = iArr[0];
                i6 = iArr[1];
                i3 -= i5;
                i4 -= i6;
                w wVar = recyclerView.f635l.f2910e;
                if (wVar != null && !wVar.f3035d && wVar.f3036e) {
                    int iB = recyclerView.f619c0.b();
                    if (iB == 0) {
                        wVar.g();
                    } else if (wVar.f3033a >= iB) {
                        wVar.f3033a = iB - 1;
                        wVar.e(i5, i6);
                    } else {
                        wVar.e(i5, i6);
                    }
                }
            } else {
                i5 = 0;
                i6 = 0;
            }
            if (!recyclerView.f637m.isEmpty()) {
                recyclerView.invalidate();
            }
            int[] iArr3 = recyclerView.f642o0;
            iArr3[0] = 0;
            iArr3[1] = 0;
            recyclerView.s(i5, i6, i3, i4, null, 1, iArr3);
            int i10 = i3 - iArr[0];
            int i11 = i4 - iArr[1];
            if (i5 != 0 || i6 != 0) {
                recyclerView.t(i5, i6);
            }
            if (!recyclerView.awakenScrollBars()) {
                recyclerView.invalidate();
            }
            boolean z2 = overScroller.isFinished() || (((overScroller.getCurrX() == overScroller.getFinalX()) || i10 != 0) && ((overScroller.getCurrY() == overScroller.getFinalY()) || i11 != 0));
            w wVar2 = recyclerView.f635l.f2910e;
            if ((wVar2 == null || !wVar2.f3035d) && z2) {
                if (recyclerView.getOverScrollMode() != 2) {
                    int currVelocity = (int) overScroller.getCurrVelocity();
                    if (i10 < 0) {
                        i7 = -currVelocity;
                    } else {
                        i7 = i10 > 0 ? currVelocity : 0;
                    }
                    if (i11 < 0) {
                        currVelocity = -currVelocity;
                    } else if (i11 <= 0) {
                        currVelocity = 0;
                    }
                    if (i7 < 0) {
                        recyclerView.v();
                        if (recyclerView.D.isFinished()) {
                            recyclerView.D.onAbsorb(-i7);
                        }
                    } else if (i7 > 0) {
                        recyclerView.w();
                        if (recyclerView.F.isFinished()) {
                            recyclerView.F.onAbsorb(i7);
                        }
                    }
                    if (currVelocity < 0) {
                        recyclerView.x();
                        if (recyclerView.E.isFinished()) {
                            recyclerView.E.onAbsorb(-currVelocity);
                        }
                    } else if (currVelocity > 0) {
                        recyclerView.u();
                        if (recyclerView.G.isFinished()) {
                            recyclerView.G.onAbsorb(currVelocity);
                        }
                    }
                    if (i7 != 0 || currVelocity != 0) {
                        WeakHashMap weakHashMap = c0.p0.f727a;
                        c0.a0.k(recyclerView);
                    }
                }
                n nVar = recyclerView.f617b0;
                int[] iArr4 = (int[]) nVar.f2967d;
                if (iArr4 != null) {
                    Arrays.fill(iArr4, -1);
                }
                nVar.f2966c = 0;
            } else {
                a();
                p pVar = recyclerView.f616a0;
                if (pVar != null) {
                    pVar.a(recyclerView, i5, i6);
                }
            }
        }
        w wVar3 = recyclerView.f635l.f2910e;
        if (wVar3 != null && wVar3.f3035d) {
            wVar3.e(0, 0);
        }
        this.f3031e = false;
        if (!this.f) {
            recyclerView.setScrollState(0);
            recyclerView.c0(1);
        } else {
            recyclerView.removeCallbacks(this);
            WeakHashMap weakHashMap2 = c0.p0.f727a;
            c0.a0.m(recyclerView, this);
        }
    }
}
