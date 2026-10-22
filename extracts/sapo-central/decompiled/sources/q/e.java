package q;

import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public final class e extends ViewGroup.MarginLayoutParams {
    public float A;
    public String B;
    public int C;
    public float D;
    public float E;
    public int F;
    public int G;
    public int H;
    public int I;
    public int J;
    public int K;
    public int L;
    public int M;
    public float N;
    public float O;
    public int P;
    public int Q;
    public int R;
    public boolean S;
    public boolean T;
    public String U;
    public boolean V;
    public boolean W;
    public boolean X;
    public boolean Y;
    public boolean Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f2727a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public int f2728a0;
    public int b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public int f2729b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f2730c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public int f2731c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2732d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public int f2733d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2734e;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public int f2735e0;
    public int f;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public int f2736f0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f2737g;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public float f2738g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f2739h;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public int f2740h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f2741i;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public int f2742i0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f2743j;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public float f2744j0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f2745k;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public o.d f2746k0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f2747l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f2748m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f2749n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public float f2750o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f2751p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f2752q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f2753r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f2754s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f2755t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f2756u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f2757v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f2758w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f2759x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f2760y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public float f2761z;

    public final void a() {
        this.Y = false;
        this.V = true;
        this.W = true;
        int i3 = ((ViewGroup.MarginLayoutParams) this).width;
        if (i3 == -2 && this.S) {
            this.V = false;
            if (this.H == 0) {
                this.H = 1;
            }
        }
        int i4 = ((ViewGroup.MarginLayoutParams) this).height;
        if (i4 == -2 && this.T) {
            this.W = false;
            if (this.I == 0) {
                this.I = 1;
            }
        }
        if (i3 == 0 || i3 == -1) {
            this.V = false;
            if (i3 == 0 && this.H == 1) {
                ((ViewGroup.MarginLayoutParams) this).width = -2;
                this.S = true;
            }
        }
        if (i4 == 0 || i4 == -1) {
            this.W = false;
            if (i4 == 0 && this.I == 1) {
                ((ViewGroup.MarginLayoutParams) this).height = -2;
                this.T = true;
            }
        }
        if (this.f2730c == -1.0f && this.f2727a == -1 && this.b == -1) {
            return;
        }
        this.Y = true;
        this.V = true;
        this.W = true;
        if (!(this.f2746k0 instanceof o.f)) {
            this.f2746k0 = new o.f();
        }
        ((o.f) this.f2746k0).H(this.R);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0048  */
    /* JADX WARN: Code duplicated, block: B:20:0x004f  */
    /* JADX WARN: Code duplicated, block: B:23:0x0056  */
    /* JADX WARN: Code duplicated, block: B:26:0x005c  */
    /* JADX WARN: Code duplicated, block: B:29:0x0062  */
    /* JADX WARN: Code duplicated, block: B:36:0x0074  */
    /* JADX WARN: Code duplicated, block: B:37:0x007c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:38:0x007e  */
    /* JADX WARN: Code duplicated, block: B:39:0x0085 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:40:0x0087  */
    @Override // android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
    public final void resolveLayoutDirection(int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8 = ((ViewGroup.MarginLayoutParams) this).leftMargin;
        int i9 = ((ViewGroup.MarginLayoutParams) this).rightMargin;
        super.resolveLayoutDirection(i3);
        boolean z2 = false;
        boolean z3 = 1 == getLayoutDirection();
        this.f2731c0 = -1;
        this.f2733d0 = -1;
        this.f2728a0 = -1;
        this.f2729b0 = -1;
        this.f2735e0 = this.f2755t;
        this.f2736f0 = this.f2757v;
        float f = this.f2761z;
        this.f2738g0 = f;
        int i10 = this.f2727a;
        this.f2740h0 = i10;
        int i11 = this.b;
        this.f2742i0 = i11;
        float f3 = this.f2730c;
        this.f2744j0 = f3;
        if (z3) {
            int i12 = this.f2751p;
            if (i12 != -1) {
                this.f2731c0 = i12;
            } else {
                int i13 = this.f2752q;
                if (i13 != -1) {
                    this.f2733d0 = i13;
                } else {
                    i4 = this.f2753r;
                    if (i4 != -1) {
                        this.f2729b0 = i4;
                        z2 = true;
                    }
                    i5 = this.f2754s;
                    if (i5 != -1) {
                        this.f2728a0 = i5;
                        z2 = true;
                    }
                    i6 = this.f2759x;
                    if (i6 != -1) {
                        this.f2736f0 = i6;
                    }
                    i7 = this.f2760y;
                    if (i7 != -1) {
                        this.f2735e0 = i7;
                    }
                    if (z2) {
                        this.f2738g0 = 1.0f - f;
                    }
                    if (this.Y && this.R == 1) {
                        if (f3 != -1.0f) {
                            this.f2744j0 = 1.0f - f3;
                            this.f2740h0 = -1;
                            this.f2742i0 = -1;
                        } else if (i10 != -1) {
                            this.f2742i0 = i10;
                            this.f2740h0 = -1;
                            this.f2744j0 = -1.0f;
                        } else if (i11 != -1) {
                            this.f2740h0 = i11;
                            this.f2742i0 = -1;
                            this.f2744j0 = -1.0f;
                        }
                    }
                }
            }
            z2 = true;
            i4 = this.f2753r;
            if (i4 != -1) {
                this.f2729b0 = i4;
                z2 = true;
            }
            i5 = this.f2754s;
            if (i5 != -1) {
                this.f2728a0 = i5;
                z2 = true;
            }
            i6 = this.f2759x;
            if (i6 != -1) {
                this.f2736f0 = i6;
            }
            i7 = this.f2760y;
            if (i7 != -1) {
                this.f2735e0 = i7;
            }
            if (z2) {
                this.f2738g0 = 1.0f - f;
            }
            if (this.Y) {
                if (f3 != -1.0f) {
                    this.f2744j0 = 1.0f - f3;
                    this.f2740h0 = -1;
                    this.f2742i0 = -1;
                } else if (i10 != -1) {
                    this.f2742i0 = i10;
                    this.f2740h0 = -1;
                    this.f2744j0 = -1.0f;
                } else if (i11 != -1) {
                    this.f2740h0 = i11;
                    this.f2742i0 = -1;
                    this.f2744j0 = -1.0f;
                }
            }
        } else {
            int i14 = this.f2751p;
            if (i14 != -1) {
                this.f2729b0 = i14;
            }
            int i15 = this.f2752q;
            if (i15 != -1) {
                this.f2728a0 = i15;
            }
            int i16 = this.f2753r;
            if (i16 != -1) {
                this.f2731c0 = i16;
            }
            int i17 = this.f2754s;
            if (i17 != -1) {
                this.f2733d0 = i17;
            }
            int i18 = this.f2759x;
            if (i18 != -1) {
                this.f2735e0 = i18;
            }
            int i19 = this.f2760y;
            if (i19 != -1) {
                this.f2736f0 = i19;
            }
        }
        if (this.f2753r == -1 && this.f2754s == -1 && this.f2752q == -1 && this.f2751p == -1) {
            int i20 = this.f;
            if (i20 != -1) {
                this.f2731c0 = i20;
                if (((ViewGroup.MarginLayoutParams) this).rightMargin <= 0 && i9 > 0) {
                    ((ViewGroup.MarginLayoutParams) this).rightMargin = i9;
                }
            } else {
                int i21 = this.f2737g;
                if (i21 != -1) {
                    this.f2733d0 = i21;
                    if (((ViewGroup.MarginLayoutParams) this).rightMargin <= 0 && i9 > 0) {
                        ((ViewGroup.MarginLayoutParams) this).rightMargin = i9;
                    }
                }
            }
            int i22 = this.f2732d;
            if (i22 != -1) {
                this.f2728a0 = i22;
                if (((ViewGroup.MarginLayoutParams) this).leftMargin > 0 || i8 <= 0) {
                    return;
                }
                ((ViewGroup.MarginLayoutParams) this).leftMargin = i8;
                return;
            }
            int i23 = this.f2734e;
            if (i23 != -1) {
                this.f2729b0 = i23;
                if (((ViewGroup.MarginLayoutParams) this).leftMargin > 0 || i8 <= 0) {
                    return;
                }
                ((ViewGroup.MarginLayoutParams) this).leftMargin = i8;
            }
        }
    }
}
