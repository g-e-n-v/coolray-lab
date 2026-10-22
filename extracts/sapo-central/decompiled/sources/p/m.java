package p;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class m extends o {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public f f2669k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public a f2670l;

    @Override // p.d
    public final void a(d dVar) {
        float f;
        float f3;
        float f4;
        int i3;
        if (n.g.b(this.f2682j) == 3) {
            o.d dVar2 = this.b;
            l(dVar2.C, dVar2.E, 1);
            return;
        }
        g gVar = this.f2678e;
        if (gVar.f2656c && !gVar.f2662j && this.f2677d == 3) {
            o.d dVar3 = this.b;
            int i4 = dVar3.f2584m;
            if (i4 == 2) {
                o.d dVar4 = dVar3.M;
                if (dVar4 != null) {
                    g gVar2 = dVar4.f2572e.f2678e;
                    if (gVar2.f2662j) {
                        gVar.d((int) ((gVar2.f2659g * dVar3.f2591t) + 0.5f));
                    }
                }
            } else if (i4 == 3) {
                g gVar3 = dVar3.f2570d.f2678e;
                if (gVar3.f2662j) {
                    int i5 = dVar3.Q;
                    if (i5 != -1) {
                        if (i5 == 0) {
                            f4 = gVar3.f2659g * dVar3.P;
                            i3 = (int) (f4 + 0.5f);
                        } else if (i5 != 1) {
                            i3 = 0;
                        } else {
                            f = gVar3.f2659g;
                            f3 = dVar3.P;
                        }
                        gVar.d(i3);
                    } else {
                        f = gVar3.f2659g;
                        f3 = dVar3.P;
                    }
                    f4 = f / f3;
                    i3 = (int) (f4 + 0.5f);
                    gVar.d(i3);
                }
            }
        }
        f fVar = this.f2680h;
        boolean z2 = fVar.f2656c;
        ArrayList arrayList = fVar.f2664l;
        if (z2) {
            f fVar2 = this.f2681i;
            boolean z3 = fVar2.f2656c;
            ArrayList arrayList2 = fVar2.f2664l;
            if (z3) {
                if (fVar.f2662j && fVar2.f2662j && gVar.f2662j) {
                    return;
                }
                if (!gVar.f2662j && this.f2677d == 3) {
                    o.d dVar5 = this.b;
                    if (dVar5.f2583l == 0 && !dVar5.s()) {
                        f fVar3 = (f) arrayList.get(0);
                        f fVar4 = (f) arrayList2.get(0);
                        int i6 = fVar3.f2659g + fVar.f;
                        int i7 = fVar4.f2659g + fVar2.f;
                        fVar.d(i6);
                        fVar2.d(i7);
                        gVar.d(i7 - i6);
                        return;
                    }
                }
                if (!gVar.f2662j && this.f2677d == 3 && this.f2675a == 1 && arrayList.size() > 0 && arrayList2.size() > 0) {
                    f fVar5 = (f) arrayList.get(0);
                    int i8 = (((f) arrayList2.get(0)).f2659g + fVar2.f) - (fVar5.f2659g + fVar.f);
                    int i9 = gVar.f2665m;
                    if (i8 < i9) {
                        gVar.d(i8);
                    } else {
                        gVar.d(i9);
                    }
                }
                if (gVar.f2662j && arrayList.size() > 0 && arrayList2.size() > 0) {
                    f fVar6 = (f) arrayList.get(0);
                    f fVar7 = (f) arrayList2.get(0);
                    int i10 = fVar6.f2659g;
                    int i11 = fVar.f + i10;
                    int i12 = fVar7.f2659g;
                    int i13 = fVar2.f + i12;
                    float f5 = this.b.X;
                    if (fVar6 == fVar7) {
                        f5 = 0.5f;
                    } else {
                        i10 = i11;
                        i12 = i13;
                    }
                    fVar.d((int) ((((i12 - i10) - gVar.f2659g) * f5) + i10 + 0.5f));
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
        f fVar = this.f2669k;
        o.d dVar5 = this.b;
        boolean z2 = dVar5.f2565a;
        g gVar = this.f2678e;
        if (z2) {
            gVar.d(dVar5.i());
        }
        boolean z3 = gVar.f2662j;
        ArrayList arrayList = gVar.f2663k;
        ArrayList arrayList2 = gVar.f2664l;
        f fVar2 = this.f2681i;
        f fVar3 = this.f2680h;
        if (!z3) {
            o.d dVar6 = this.b;
            this.f2677d = dVar6.f2580i0[1];
            if (dVar6.f2596y) {
                this.f2670l = new a(this);
            }
            int i3 = this.f2677d;
            if (i3 != 3) {
                if (i3 == 4 && (dVar4 = this.b.M) != null && dVar4.f2580i0[1] == 1) {
                    int i4 = (dVar4.i() - this.b.C.d()) - this.b.E.d();
                    o.b(fVar3, dVar4.f2572e.f2680h, this.b.C.d());
                    o.b(fVar2, dVar4.f2572e.f2681i, -this.b.E.d());
                    gVar.d(i4);
                    return;
                }
                if (i3 == 1) {
                    gVar.d(this.b.i());
                }
            }
        } else if (this.f2677d == 4 && (dVar2 = (dVar = this.b).M) != null && dVar2.f2580i0[1] == 1) {
            o.b(fVar3, dVar2.f2572e.f2680h, dVar.C.d());
            o.b(fVar2, dVar2.f2572e.f2681i, -this.b.E.d());
            return;
        }
        boolean z4 = gVar.f2662j;
        if (z4) {
            o.d dVar7 = this.b;
            if (dVar7.f2565a) {
                o.c[] cVarArr = dVar7.J;
                o.c cVar = cVarArr[2];
                o.c cVar2 = cVar.f;
                if (cVar2 != null && cVarArr[3].f != null) {
                    if (dVar7.s()) {
                        fVar3.f = this.b.J[2].d();
                        fVar2.f = -this.b.J[3].d();
                    } else {
                        f fVarH = o.h(this.b.J[2]);
                        if (fVarH != null) {
                            o.b(fVar3, fVarH, this.b.J[2].d());
                        }
                        f fVarH2 = o.h(this.b.J[3]);
                        if (fVarH2 != null) {
                            o.b(fVar2, fVarH2, -this.b.J[3].d());
                        }
                        fVar3.b = true;
                        fVar2.b = true;
                    }
                    o.d dVar8 = this.b;
                    if (dVar8.f2596y) {
                        o.b(fVar, fVar3, dVar8.T);
                        return;
                    }
                    return;
                }
                if (cVar2 != null) {
                    f fVarH3 = o.h(cVar);
                    if (fVarH3 != null) {
                        o.b(fVar3, fVarH3, this.b.J[2].d());
                        o.b(fVar2, fVar3, gVar.f2659g);
                        o.d dVar9 = this.b;
                        if (dVar9.f2596y) {
                            o.b(fVar, fVar3, dVar9.T);
                            return;
                        }
                        return;
                    }
                    return;
                }
                o.c cVar3 = cVarArr[3];
                if (cVar3.f != null) {
                    f fVarH4 = o.h(cVar3);
                    if (fVarH4 != null) {
                        o.b(fVar2, fVarH4, -this.b.J[3].d());
                        o.b(fVar3, fVar2, -gVar.f2659g);
                    }
                    o.d dVar10 = this.b;
                    if (dVar10.f2596y) {
                        o.b(fVar, fVar3, dVar10.T);
                        return;
                    }
                    return;
                }
                o.c cVar4 = cVarArr[4];
                if (cVar4.f != null) {
                    f fVarH5 = o.h(cVar4);
                    if (fVarH5 != null) {
                        o.b(fVar, fVarH5, 0);
                        o.b(fVar3, fVar, -this.b.T);
                        o.b(fVar2, fVar3, gVar.f2659g);
                        return;
                    }
                    return;
                }
                if ((dVar7 instanceof o.a) || dVar7.M == null || dVar7.g(7).f != null) {
                    return;
                }
                o.d dVar11 = this.b;
                o.b(fVar3, dVar11.M.f2572e.f2680h, dVar11.n());
                o.b(fVar2, fVar3, gVar.f2659g);
                o.d dVar12 = this.b;
                if (dVar12.f2596y) {
                    o.b(fVar, fVar3, dVar12.T);
                    return;
                }
                return;
            }
        }
        if (z4 || this.f2677d != 3) {
            gVar.b(this);
        } else {
            o.d dVar13 = this.b;
            int i5 = dVar13.f2584m;
            if (i5 == 2) {
                o.d dVar14 = dVar13.M;
                if (dVar14 != null) {
                    g gVar2 = dVar14.f2572e.f2678e;
                    arrayList2.add(gVar2);
                    gVar2.f2663k.add(gVar);
                    gVar.b = true;
                    arrayList.add(fVar3);
                    arrayList.add(fVar2);
                }
            } else if (i5 == 3 && !dVar13.s()) {
                o.d dVar15 = this.b;
                if (dVar15.f2583l != 3) {
                    g gVar3 = dVar15.f2570d.f2678e;
                    arrayList2.add(gVar3);
                    gVar3.f2663k.add(gVar);
                    gVar.b = true;
                    arrayList.add(fVar3);
                    arrayList.add(fVar2);
                }
            }
        }
        o.d dVar16 = this.b;
        o.c[] cVarArr2 = dVar16.J;
        o.c cVar5 = cVarArr2[2];
        o.c cVar6 = cVar5.f;
        if (cVar6 != null && cVarArr2[3].f != null) {
            if (dVar16.s()) {
                fVar3.f = this.b.J[2].d();
                fVar2.f = -this.b.J[3].d();
            } else {
                f fVarH6 = o.h(this.b.J[2]);
                f fVarH7 = o.h(this.b.J[3]);
                fVarH6.b(this);
                fVarH7.b(this);
                this.f2682j = 4;
            }
            if (this.b.f2596y) {
                c(fVar, fVar3, 1, this.f2670l);
            }
        } else if (cVar6 != null) {
            f fVarH8 = o.h(cVar5);
            if (fVarH8 != null) {
                o.b(fVar3, fVarH8, this.b.J[2].d());
                c(fVar2, fVar3, 1, gVar);
                if (this.b.f2596y) {
                    c(fVar, fVar3, 1, this.f2670l);
                }
                if (this.f2677d == 3) {
                    o.d dVar17 = this.b;
                    if (dVar17.P > 0.0f) {
                        k kVar = dVar17.f2570d;
                        if (kVar.f2677d == 3) {
                            kVar.f2678e.f2663k.add(gVar);
                            arrayList2.add(this.b.f2570d.f2678e);
                            gVar.f2655a = this;
                        }
                    }
                }
            }
        } else {
            o.c cVar7 = cVarArr2[3];
            if (cVar7.f != null) {
                f fVarH9 = o.h(cVar7);
                if (fVarH9 != null) {
                    o.b(fVar2, fVarH9, -this.b.J[3].d());
                    c(fVar3, fVar2, -1, gVar);
                    if (this.b.f2596y) {
                        c(fVar, fVar3, 1, this.f2670l);
                    }
                }
            } else {
                o.c cVar8 = cVarArr2[4];
                if (cVar8.f != null) {
                    f fVarH10 = o.h(cVar8);
                    if (fVarH10 != null) {
                        o.b(fVar, fVarH10, 0);
                        c(fVar3, fVar, -1, this.f2670l);
                        c(fVar2, fVar3, 1, gVar);
                    }
                } else if (!(dVar16 instanceof o.a) && (dVar3 = dVar16.M) != null) {
                    o.b(fVar3, dVar3.f2572e.f2680h, dVar16.n());
                    c(fVar2, fVar3, 1, gVar);
                    if (this.b.f2596y) {
                        c(fVar, fVar3, 1, this.f2670l);
                    }
                    if (this.f2677d == 3) {
                        o.d dVar18 = this.b;
                        if (dVar18.P > 0.0f) {
                            k kVar2 = dVar18.f2570d;
                            if (kVar2.f2677d == 3) {
                                kVar2.f2678e.f2663k.add(gVar);
                                arrayList2.add(this.b.f2570d.f2678e);
                                gVar.f2655a = this;
                            }
                        }
                    }
                }
            }
        }
        if (arrayList2.size() == 0) {
            gVar.f2656c = true;
        }
    }

    @Override // p.o
    public final void e() {
        f fVar = this.f2680h;
        if (fVar.f2662j) {
            this.b.S = fVar.f2659g;
        }
    }

    @Override // p.o
    public final void f() {
        this.f2676c = null;
        this.f2680h.c();
        this.f2681i.c();
        this.f2669k.c();
        this.f2678e.c();
        this.f2679g = false;
    }

    @Override // p.o
    public final boolean k() {
        return this.f2677d != 3 || this.b.f2584m == 0;
    }

    public final void m() {
        this.f2679g = false;
        f fVar = this.f2680h;
        fVar.c();
        fVar.f2662j = false;
        f fVar2 = this.f2681i;
        fVar2.c();
        fVar2.f2662j = false;
        f fVar3 = this.f2669k;
        fVar3.c();
        fVar3.f2662j = false;
        this.f2678e.f2662j = false;
    }

    public final String toString() {
        return "VerticalRun " + this.b.f2566a0;
    }
}
