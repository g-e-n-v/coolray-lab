package p;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class k extends o {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int[] f2667k = new int[2];

    public static void m(int[] iArr, int i3, int i4, int i5, int i6, float f, int i7) {
        int i8 = i4 - i3;
        int i9 = i6 - i5;
        if (i7 != -1) {
            if (i7 == 0) {
                iArr[0] = (int) ((i9 * f) + 0.5f);
                iArr[1] = i9;
                return;
            } else {
                if (i7 != 1) {
                    return;
                }
                iArr[0] = i8;
                iArr[1] = (int) ((i8 * f) + 0.5f);
                return;
            }
        }
        int i10 = (int) ((i9 * f) + 0.5f);
        int i11 = (int) ((i8 / f) + 0.5f);
        if (i10 <= i8) {
            iArr[0] = i10;
            iArr[1] = i9;
        } else if (i11 <= i9) {
            iArr[0] = i8;
            iArr[1] = i11;
        }
    }

    /* JADX WARN: Code duplicated, block: B:116:0x0268  */
    /* JADX WARN: Code duplicated, block: B:118:0x0278  */
    /* JADX WARN: Code duplicated, block: B:11:0x0026  */
    @Override // p.d
    public final void a(d dVar) {
        float f;
        int iG;
        int i3;
        int iG2;
        float f3;
        float f4;
        float f5;
        int i4;
        if (n.g.b(this.f2682j) == 3) {
            o.d dVar2 = this.b;
            l(dVar2.B, dVar2.D, 0);
            return;
        }
        g gVar = this.f2678e;
        boolean z2 = gVar.f2662j;
        f fVar = this.f2680h;
        f fVar2 = this.f2681i;
        if (z2 || this.f2677d != 3) {
            f = 0.5f;
        } else {
            o.d dVar3 = this.b;
            int i5 = dVar3.f2583l;
            if (i5 == 2) {
                f = 0.5f;
                o.d dVar4 = dVar3.M;
                if (dVar4 != null) {
                    g gVar2 = dVar4.f2570d.f2678e;
                    if (gVar2.f2662j) {
                        gVar.d((int) ((gVar2.f2659g * dVar3.f2588q) + 0.5f));
                    }
                }
            } else if (i5 == 3) {
                int i6 = dVar3.f2584m;
                if (i6 == 0 || i6 == 3) {
                    m mVar = dVar3.f2572e;
                    f fVar3 = mVar.f2680h;
                    f fVar4 = mVar.f2681i;
                    boolean z3 = dVar3.B.f != null;
                    boolean z4 = dVar3.C.f != null;
                    boolean z5 = dVar3.D.f != null;
                    boolean z6 = dVar3.E.f != null;
                    f = 0.5f;
                    int i7 = dVar3.Q;
                    if (z3 && z4 && z5 && z6) {
                        float f6 = dVar3.P;
                        boolean z7 = fVar3.f2662j;
                        ArrayList arrayList = fVar3.f2664l;
                        int[] iArr = f2667k;
                        if (z7 && fVar4.f2662j) {
                            if (fVar.f2656c && fVar2.f2656c) {
                                m(iArr, ((f) fVar.f2664l.get(0)).f2659g + fVar.f, ((f) fVar2.f2664l.get(0)).f2659g - fVar2.f, fVar3.f2659g + fVar3.f, fVar4.f2659g - fVar4.f, f6, i7);
                                gVar.d(iArr[0]);
                                this.b.f2572e.f2678e.d(iArr[1]);
                                return;
                            }
                            return;
                        }
                        if (fVar.f2662j && fVar2.f2662j) {
                            if (!fVar3.f2656c || !fVar4.f2656c) {
                                return;
                            }
                            m(iArr, fVar.f2659g + fVar.f, fVar2.f2659g - fVar2.f, ((f) arrayList.get(0)).f2659g + fVar3.f, ((f) fVar4.f2664l.get(0)).f2659g - fVar4.f, f6, i7);
                            gVar.d(iArr[0]);
                            this.b.f2572e.f2678e.d(iArr[1]);
                        }
                        if (!fVar.f2656c || !fVar2.f2656c || !fVar3.f2656c || !fVar4.f2656c) {
                            return;
                        }
                        m(iArr, ((f) fVar.f2664l.get(0)).f2659g + fVar.f, ((f) fVar2.f2664l.get(0)).f2659g - fVar2.f, ((f) arrayList.get(0)).f2659g + fVar3.f, ((f) fVar4.f2664l.get(0)).f2659g - fVar4.f, f6, i7);
                        gVar.d(iArr[0]);
                        this.b.f2572e.f2678e.d(iArr[1]);
                    } else if (z3 && z5) {
                        if (!fVar.f2656c || !fVar2.f2656c) {
                            return;
                        }
                        float f7 = dVar3.P;
                        int i8 = ((f) fVar.f2664l.get(0)).f2659g + fVar.f;
                        int i9 = ((f) fVar2.f2664l.get(0)).f2659g - fVar2.f;
                        if (i7 == -1 || i7 == 0) {
                            int iG3 = g(i9 - i8, 0);
                            int i10 = (int) ((iG3 * f7) + 0.5f);
                            int iG4 = g(i10, 1);
                            if (i10 != iG4) {
                                iG3 = (int) ((iG4 / f7) + 0.5f);
                            }
                            gVar.d(iG3);
                            this.b.f2572e.f2678e.d(iG4);
                        } else if (i7 == 1) {
                            int iG5 = g(i9 - i8, 0);
                            int i11 = (int) ((iG5 / f7) + 0.5f);
                            int iG6 = g(i11, 1);
                            if (i11 != iG6) {
                                iG5 = (int) ((iG6 * f7) + 0.5f);
                            }
                            gVar.d(iG5);
                            this.b.f2572e.f2678e.d(iG6);
                        }
                    } else if (z4 && z6) {
                        if (!fVar3.f2656c || !fVar4.f2656c) {
                            return;
                        }
                        float f8 = dVar3.P;
                        int i12 = ((f) fVar3.f2664l.get(0)).f2659g + fVar3.f;
                        int i13 = ((f) fVar4.f2664l.get(0)).f2659g - fVar4.f;
                        if (i7 == -1) {
                            iG = g(i13 - i12, 1);
                            i3 = (int) ((iG / f8) + 0.5f);
                            iG2 = g(i3, 0);
                            if (i3 != iG2) {
                                iG = (int) ((iG2 * f8) + 0.5f);
                            }
                            gVar.d(iG2);
                            this.b.f2572e.f2678e.d(iG);
                        } else if (i7 == 0) {
                            int iG7 = g(i13 - i12, 1);
                            int i14 = (int) ((iG7 * f8) + 0.5f);
                            int iG8 = g(i14, 0);
                            if (i14 != iG8) {
                                iG7 = (int) ((iG8 / f8) + 0.5f);
                            }
                            gVar.d(iG8);
                            this.b.f2572e.f2678e.d(iG7);
                        } else if (i7 == 1) {
                            iG = g(i13 - i12, 1);
                            i3 = (int) ((iG / f8) + 0.5f);
                            iG2 = g(i3, 0);
                            if (i3 != iG2) {
                                iG = (int) ((iG2 * f8) + 0.5f);
                            }
                            gVar.d(iG2);
                            this.b.f2572e.f2678e.d(iG);
                        }
                    }
                } else {
                    int i15 = dVar3.Q;
                    if (i15 != -1) {
                        if (i15 == 0) {
                            f5 = dVar3.f2572e.f2678e.f2659g / dVar3.P;
                            i4 = (int) (f5 + 0.5f);
                        } else if (i15 != 1) {
                            i4 = 0;
                        } else {
                            f3 = dVar3.f2572e.f2678e.f2659g;
                            f4 = dVar3.P;
                        }
                        gVar.d(i4);
                        f = 0.5f;
                    } else {
                        f3 = dVar3.f2572e.f2678e.f2659g;
                        f4 = dVar3.P;
                    }
                    f5 = f3 * f4;
                    i4 = (int) (f5 + 0.5f);
                    gVar.d(i4);
                    f = 0.5f;
                }
            } else {
                f = 0.5f;
            }
        }
        boolean z8 = fVar.f2656c;
        ArrayList arrayList2 = fVar.f2664l;
        if (z8) {
            boolean z9 = fVar2.f2656c;
            ArrayList arrayList3 = fVar2.f2664l;
            if (z9) {
                if (fVar.f2662j && fVar2.f2662j && gVar.f2662j) {
                    return;
                }
                if (!gVar.f2662j && this.f2677d == 3) {
                    o.d dVar5 = this.b;
                    if (dVar5.f2583l == 0 && !dVar5.r()) {
                        f fVar5 = (f) arrayList2.get(0);
                        f fVar6 = (f) arrayList3.get(0);
                        int i16 = fVar5.f2659g + fVar.f;
                        int i17 = fVar6.f2659g + fVar2.f;
                        fVar.d(i16);
                        fVar2.d(i17);
                        gVar.d(i17 - i16);
                        return;
                    }
                }
                if (!gVar.f2662j && this.f2677d == 3 && this.f2675a == 1 && arrayList2.size() > 0 && arrayList3.size() > 0) {
                    int iMin = Math.min((((f) arrayList3.get(0)).f2659g + fVar2.f) - (((f) arrayList2.get(0)).f2659g + fVar.f), gVar.f2665m);
                    o.d dVar6 = this.b;
                    int i18 = dVar6.f2587p;
                    int iMax = Math.max(dVar6.f2586o, iMin);
                    if (i18 > 0) {
                        iMax = Math.min(i18, iMax);
                    }
                    gVar.d(iMax);
                }
                if (gVar.f2662j) {
                    f fVar7 = (f) arrayList2.get(0);
                    f fVar8 = (f) arrayList3.get(0);
                    int i19 = fVar7.f2659g;
                    int i20 = fVar.f + i19;
                    int i21 = fVar8.f2659g;
                    int i22 = fVar2.f + i21;
                    float f9 = this.b.W;
                    if (fVar7 == fVar8) {
                        f9 = f;
                    } else {
                        i19 = i20;
                        i21 = i22;
                    }
                    fVar.d((int) ((((i21 - i19) - gVar.f2659g) * f9) + i19 + f));
                    fVar2.d(fVar.f2659g + gVar.f2659g);
                }
            }
        }
    }

    @Override // p.o
    public final void d() {
        o.d dVar;
        o.d dVar2;
        o.d dVar3;
        o.d dVar4;
        o.d dVar5 = this.b;
        boolean z2 = dVar5.f2565a;
        g gVar = this.f2678e;
        if (z2) {
            gVar.d(dVar5.l());
        }
        boolean z3 = gVar.f2662j;
        ArrayList arrayList = gVar.f2663k;
        ArrayList arrayList2 = gVar.f2664l;
        f fVar = this.f2681i;
        f fVar2 = this.f2680h;
        if (!z3) {
            o.d dVar6 = this.b;
            int i3 = dVar6.f2580i0[0];
            this.f2677d = i3;
            if (i3 != 3) {
                if (i3 == 4 && (((dVar4 = dVar6.M) != null && dVar4.f2580i0[0] == 1) || dVar4.f2580i0[0] == 4)) {
                    int iL = (dVar4.l() - this.b.B.d()) - this.b.D.d();
                    o.b(fVar2, dVar4.f2570d.f2680h, this.b.B.d());
                    o.b(fVar, dVar4.f2570d.f2681i, -this.b.D.d());
                    gVar.d(iL);
                    return;
                }
                if (i3 == 1) {
                    gVar.d(dVar6.l());
                }
            }
        } else if (this.f2677d == 4 && (((dVar2 = (dVar = this.b).M) != null && dVar2.f2580i0[0] == 1) || dVar2.f2580i0[0] == 4)) {
            o.b(fVar2, dVar2.f2570d.f2680h, dVar.B.d());
            o.b(fVar, dVar2.f2570d.f2681i, -this.b.D.d());
            return;
        }
        if (gVar.f2662j) {
            o.d dVar7 = this.b;
            if (dVar7.f2565a) {
                o.c[] cVarArr = dVar7.J;
                o.c cVar = cVarArr[0];
                o.c cVar2 = cVar.f;
                if (cVar2 != null && cVarArr[1].f != null) {
                    if (dVar7.r()) {
                        fVar2.f = this.b.J[0].d();
                        fVar.f = -this.b.J[1].d();
                        return;
                    }
                    f fVarH = o.h(this.b.J[0]);
                    if (fVarH != null) {
                        o.b(fVar2, fVarH, this.b.J[0].d());
                    }
                    f fVarH2 = o.h(this.b.J[1]);
                    if (fVarH2 != null) {
                        o.b(fVar, fVarH2, -this.b.J[1].d());
                    }
                    fVar2.b = true;
                    fVar.b = true;
                    return;
                }
                if (cVar2 != null) {
                    f fVarH3 = o.h(cVar);
                    if (fVarH3 != null) {
                        o.b(fVar2, fVarH3, this.b.J[0].d());
                        o.b(fVar, fVar2, gVar.f2659g);
                        return;
                    }
                    return;
                }
                o.c cVar3 = cVarArr[1];
                if (cVar3.f != null) {
                    f fVarH4 = o.h(cVar3);
                    if (fVarH4 != null) {
                        o.b(fVar, fVarH4, -this.b.J[1].d());
                        o.b(fVar2, fVar, -gVar.f2659g);
                        return;
                    }
                    return;
                }
                if ((dVar7 instanceof o.a) || dVar7.M == null || dVar7.g(7).f != null) {
                    return;
                }
                o.d dVar8 = this.b;
                o.b(fVar2, dVar8.M.f2570d.f2680h, dVar8.m());
                o.b(fVar, fVar2, gVar.f2659g);
                return;
            }
        }
        if (this.f2677d == 3) {
            o.d dVar9 = this.b;
            int i4 = dVar9.f2583l;
            if (i4 == 2) {
                o.d dVar10 = dVar9.M;
                if (dVar10 != null) {
                    g gVar2 = dVar10.f2572e.f2678e;
                    arrayList2.add(gVar2);
                    gVar2.f2663k.add(gVar);
                    gVar.b = true;
                    arrayList.add(fVar2);
                    arrayList.add(fVar);
                }
            } else if (i4 == 3) {
                if (dVar9.f2584m == 3) {
                    fVar2.f2655a = this;
                    fVar.f2655a = this;
                    m mVar = dVar9.f2572e;
                    mVar.f2680h.f2655a = this;
                    mVar.f2681i.f2655a = this;
                    gVar.f2655a = this;
                    if (dVar9.s()) {
                        arrayList2.add(this.b.f2572e.f2678e);
                        this.b.f2572e.f2678e.f2663k.add(gVar);
                        m mVar2 = this.b.f2572e;
                        mVar2.f2678e.f2655a = this;
                        arrayList2.add(mVar2.f2680h);
                        arrayList2.add(this.b.f2572e.f2681i);
                        this.b.f2572e.f2680h.f2663k.add(gVar);
                        this.b.f2572e.f2681i.f2663k.add(gVar);
                    } else if (this.b.r()) {
                        this.b.f2572e.f2678e.f2664l.add(gVar);
                        arrayList.add(this.b.f2572e.f2678e);
                    } else {
                        this.b.f2572e.f2678e.f2664l.add(gVar);
                    }
                } else {
                    g gVar3 = dVar9.f2572e.f2678e;
                    arrayList2.add(gVar3);
                    gVar3.f2663k.add(gVar);
                    this.b.f2572e.f2680h.f2663k.add(gVar);
                    this.b.f2572e.f2681i.f2663k.add(gVar);
                    gVar.b = true;
                    arrayList.add(fVar2);
                    arrayList.add(fVar);
                    fVar2.f2664l.add(gVar);
                    fVar.f2664l.add(gVar);
                }
            }
        }
        o.d dVar11 = this.b;
        o.c[] cVarArr2 = dVar11.J;
        o.c cVar4 = cVarArr2[0];
        o.c cVar5 = cVar4.f;
        if (cVar5 != null && cVarArr2[1].f != null) {
            if (dVar11.r()) {
                fVar2.f = this.b.J[0].d();
                fVar.f = -this.b.J[1].d();
                return;
            }
            f fVarH5 = o.h(this.b.J[0]);
            f fVarH6 = o.h(this.b.J[1]);
            fVarH5.b(this);
            fVarH6.b(this);
            this.f2682j = 4;
            return;
        }
        if (cVar5 != null) {
            f fVarH7 = o.h(cVar4);
            if (fVarH7 != null) {
                o.b(fVar2, fVarH7, this.b.J[0].d());
                c(fVar, fVar2, 1, gVar);
                return;
            }
            return;
        }
        o.c cVar6 = cVarArr2[1];
        if (cVar6.f != null) {
            f fVarH8 = o.h(cVar6);
            if (fVarH8 != null) {
                o.b(fVar, fVarH8, -this.b.J[1].d());
                c(fVar2, fVar, -1, gVar);
                return;
            }
            return;
        }
        if ((dVar11 instanceof o.a) || (dVar3 = dVar11.M) == null) {
            return;
        }
        o.b(fVar2, dVar3.f2570d.f2680h, dVar11.m());
        c(fVar, fVar2, 1, gVar);
    }

    @Override // p.o
    public final void e() {
        f fVar = this.f2680h;
        if (fVar.f2662j) {
            this.b.R = fVar.f2659g;
        }
    }

    @Override // p.o
    public final void f() {
        this.f2676c = null;
        this.f2680h.c();
        this.f2681i.c();
        this.f2678e.c();
        this.f2679g = false;
    }

    @Override // p.o
    public final boolean k() {
        return this.f2677d != 3 || this.b.f2583l == 0;
    }

    public final void n() {
        this.f2679g = false;
        f fVar = this.f2680h;
        fVar.c();
        fVar.f2662j = false;
        f fVar2 = this.f2681i;
        fVar2.c();
        fVar2.f2662j = false;
        this.f2678e.f2662j = false;
    }

    public final String toString() {
        return "HorizontalRun " + this.b.f2566a0;
    }
}
