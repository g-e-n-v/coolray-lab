package p;

/* JADX INFO: loaded from: classes.dex */
public abstract class o implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f2675a;
    public o.d b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public l f2676c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2677d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final g f2678e = new g(this);
    public int f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f2679g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final f f2680h = new f(this);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final f f2681i = new f(this);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f2682j = 1;

    public o(o.d dVar) {
        this.b = dVar;
    }

    public static void b(f fVar, f fVar2, int i3) {
        fVar.f2664l.add(fVar2);
        fVar.f = i3;
        fVar2.f2663k.add(fVar);
    }

    public static f h(o.c cVar) {
        o.c cVar2 = cVar.f;
        if (cVar2 == null) {
            return null;
        }
        o.d dVar = cVar2.f2560d;
        int iB = n.g.b(cVar2.f2561e);
        if (iB == 1) {
            return dVar.f2570d.f2680h;
        }
        if (iB == 2) {
            return dVar.f2572e.f2680h;
        }
        if (iB == 3) {
            return dVar.f2570d.f2681i;
        }
        if (iB == 4) {
            return dVar.f2572e.f2681i;
        }
        if (iB != 5) {
            return null;
        }
        return dVar.f2572e.f2669k;
    }

    public static f i(o.c cVar, int i3) {
        o.c cVar2 = cVar.f;
        if (cVar2 == null) {
            return null;
        }
        o.d dVar = cVar2.f2560d;
        o oVar = i3 == 0 ? dVar.f2570d : dVar.f2572e;
        int iB = n.g.b(cVar2.f2561e);
        if (iB == 1 || iB == 2) {
            return oVar.f2680h;
        }
        if (iB == 3 || iB == 4) {
            return oVar.f2681i;
        }
        return null;
    }

    public final void c(f fVar, f fVar2, int i3, g gVar) {
        fVar.f2664l.add(fVar2);
        fVar.f2664l.add(this.f2678e);
        fVar.f2660h = i3;
        fVar.f2661i = gVar;
        fVar2.f2663k.add(fVar);
        gVar.f2663k.add(fVar);
    }

    public abstract void d();

    public abstract void e();

    public abstract void f();

    public final int g(int i3, int i4) {
        if (i4 == 0) {
            o.d dVar = this.b;
            int i5 = dVar.f2587p;
            int iMax = Math.max(dVar.f2586o, i3);
            if (i5 > 0) {
                iMax = Math.min(i5, i3);
            }
            if (iMax != i3) {
                return iMax;
            }
        } else {
            o.d dVar2 = this.b;
            int i6 = dVar2.f2590s;
            int iMax2 = Math.max(dVar2.f2589r, i3);
            if (i6 > 0) {
                iMax2 = Math.min(i6, i3);
            }
            if (iMax2 != i3) {
                return iMax2;
            }
        }
        return i3;
    }

    public long j() {
        g gVar = this.f2678e;
        if (gVar.f2662j) {
            return gVar.f2659g;
        }
        return 0L;
    }

    public abstract boolean k();

    /* JADX WARN: Code duplicated, block: B:28:0x0054 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:29:0x0056  */
    /* JADX WARN: Code duplicated, block: B:32:0x005e  */
    /* JADX WARN: Code duplicated, block: B:34:0x0062  */
    /* JADX WARN: Code duplicated, block: B:35:0x0069  */
    public final void l(o.c cVar, o.c cVar2, int i3) {
        g gVar;
        float f;
        int i4;
        f fVarH = h(cVar);
        f fVarH2 = h(cVar2);
        if (fVarH.f2662j && fVarH2.f2662j) {
            int iD = cVar.d() + fVarH.f2659g;
            int iD2 = fVarH2.f2659g - cVar2.d();
            int i5 = iD2 - iD;
            g gVar2 = this.f2678e;
            if (!gVar2.f2662j && this.f2677d == 3) {
                int i6 = this.f2675a;
                if (i6 == 0) {
                    gVar2.d(g(i5, i3));
                } else if (i6 == 1) {
                    gVar2.d(Math.min(g(gVar2.f2665m, i3), i5));
                } else if (i6 == 2) {
                    o.d dVar = this.b;
                    o.d dVar2 = dVar.M;
                    if (dVar2 != null) {
                        g gVar3 = (i3 == 0 ? dVar2.f2570d : dVar2.f2572e).f2678e;
                        if (gVar3.f2662j) {
                            gVar2.d(g((int) ((gVar3.f2659g * (i3 == 0 ? dVar.f2588q : dVar.f2591t)) + 0.5f), i3));
                        }
                    }
                } else if (i6 == 3) {
                    o.d dVar3 = this.b;
                    o oVar = dVar3.f2570d;
                    if (oVar.f2677d == 3 && oVar.f2675a == 3) {
                        m mVar = dVar3.f2572e;
                        if (mVar.f2677d != 3 || mVar.f2675a != 3) {
                            if (i3 == 0) {
                                oVar = dVar3.f2572e;
                            }
                            gVar = oVar.f2678e;
                            if (gVar.f2662j) {
                                f = dVar3.P;
                                if (i3 == 1) {
                                    i4 = (int) ((gVar.f2659g / f) + 0.5f);
                                } else {
                                    i4 = (int) ((f * gVar.f2659g) + 0.5f);
                                }
                                gVar2.d(i4);
                            }
                        }
                    } else {
                        if (i3 == 0) {
                            oVar = dVar3.f2572e;
                        }
                        gVar = oVar.f2678e;
                        if (gVar.f2662j) {
                            f = dVar3.P;
                            if (i3 == 1) {
                                i4 = (int) ((gVar.f2659g / f) + 0.5f);
                            } else {
                                i4 = (int) ((f * gVar.f2659g) + 0.5f);
                            }
                            gVar2.d(i4);
                        }
                    }
                }
            }
            if (gVar2.f2662j) {
                int i7 = gVar2.f2659g;
                f fVar = this.f2681i;
                f fVar2 = this.f2680h;
                if (i7 == i5) {
                    fVar2.d(iD);
                    fVar.d(iD2);
                    return;
                }
                o.d dVar4 = this.b;
                float f3 = i3 == 0 ? dVar4.W : dVar4.X;
                if (fVarH == fVarH2) {
                    iD = fVarH.f2659g;
                    iD2 = fVarH2.f2659g;
                    f3 = 0.5f;
                }
                fVar2.d((int) ((((iD2 - iD) - i7) * f3) + iD + 0.5f));
                fVar.d(fVar2.f2659g + gVar2.f2659g);
            }
        }
    }
}
