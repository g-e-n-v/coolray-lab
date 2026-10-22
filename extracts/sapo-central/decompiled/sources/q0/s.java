package q0;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public androidx.emoji2.text.f f2997a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2998c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2999d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f3000e;

    public s() {
        d();
    }

    public final void a() {
        this.f2998c = this.f2999d ? this.f2997a.g() : this.f2997a.k();
    }

    public final void b(View view, int i3) {
        if (this.f2999d) {
            int iB = this.f2997a.b(view);
            androidx.emoji2.text.f fVar = this.f2997a;
            this.f2998c = (Integer.MIN_VALUE == fVar.f330a ? 0 : fVar.l() - fVar.f330a) + iB;
        } else {
            this.f2998c = this.f2997a.e(view);
        }
        this.b = i3;
    }

    public final void c(View view, int i3) {
        androidx.emoji2.text.f fVar = this.f2997a;
        int iL = Integer.MIN_VALUE == fVar.f330a ? 0 : fVar.l() - fVar.f330a;
        if (iL >= 0) {
            b(view, i3);
            return;
        }
        this.b = i3;
        if (!this.f2999d) {
            int iE = this.f2997a.e(view);
            int iK = iE - this.f2997a.k();
            this.f2998c = iE;
            if (iK > 0) {
                int iG = (this.f2997a.g() - Math.min(0, (this.f2997a.g() - iL) - this.f2997a.b(view))) - (this.f2997a.c(view) + iE);
                if (iG < 0) {
                    this.f2998c -= Math.min(iK, -iG);
                    return;
                }
                return;
            }
            return;
        }
        int iG2 = (this.f2997a.g() - iL) - this.f2997a.b(view);
        this.f2998c = this.f2997a.g() - iG2;
        if (iG2 > 0) {
            int iC = this.f2998c - this.f2997a.c(view);
            int iK2 = this.f2997a.k();
            int iMin = iC - (Math.min(this.f2997a.e(view) - iK2, 0) + iK2);
            if (iMin < 0) {
                this.f2998c = Math.min(iG2, -iMin) + this.f2998c;
            }
        }
    }

    public final void d() {
        this.b = -1;
        this.f2998c = Integer.MIN_VALUE;
        this.f2999d = false;
        this.f3000e = false;
    }

    public final String toString() {
        return "AnchorInfo{mPosition=" + this.b + ", mCoordinate=" + this.f2998c + ", mLayoutFromEnd=" + this.f2999d + ", mValid=" + this.f3000e + '}';
    }
}
