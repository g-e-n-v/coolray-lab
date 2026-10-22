package p;

import java.util.ArrayList;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public abstract class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f2666a = new b();

    public static boolean a(o.d dVar) {
        int[] iArr = dVar.f2580i0;
        int i3 = iArr[0];
        int i4 = iArr[1];
        o.d dVar2 = dVar.M;
        o.e eVar = dVar2 != null ? (o.e) dVar2 : null;
        if (eVar != null) {
            int i5 = eVar.f2580i0[0];
        }
        if (eVar != null) {
            int i6 = eVar.f2580i0[1];
        }
        boolean z2 = i3 == 1 || i3 == 2 || (i3 == 3 && dVar.f2583l == 0 && dVar.P == 0.0f && dVar.o(0)) || dVar.u();
        boolean z3 = i4 == 1 || i4 == 2 || (i4 == 3 && dVar.f2584m == 0 && dVar.P == 0.0f && dVar.o(1)) || dVar.v();
        return (dVar.P > 0.0f && (z2 || z3)) || (z2 && z3);
    }

    public static n b(o.d dVar, int i3, ArrayList arrayList, n nVar) {
        int i4;
        int i5 = i3 == 0 ? dVar.f2576g0 : dVar.f2578h0;
        if (i5 != -1 && (nVar == null || i5 != nVar.b)) {
            for (int i6 = 0; i6 < arrayList.size(); i6++) {
                n nVar2 = (n) arrayList.get(i6);
                if (nVar2.b == i5) {
                    if (nVar != null) {
                        nVar.c(i3, nVar2);
                        arrayList.remove(nVar);
                    }
                    nVar = nVar2;
                    break;
                }
            }
        } else if (i5 != -1) {
            return nVar;
        }
        if (nVar == null) {
            if (dVar instanceof o.a) {
                o.a aVar = (o.a) dVar;
                int i7 = 0;
                while (true) {
                    if (i7 >= aVar.f2538k0) {
                        i4 = -1;
                        break;
                    }
                    o.d dVar2 = aVar.f2537j0[i7];
                    if ((i3 == 0 && (i4 = dVar2.f2576g0) != -1) || (i3 == 1 && (i4 = dVar2.f2578h0) != -1)) {
                        break;
                    }
                    i7++;
                }
                if (i4 != -1) {
                    for (int i8 = 0; i8 < arrayList.size(); i8++) {
                        n nVar3 = (n) arrayList.get(i8);
                        if (nVar3.b == i4) {
                            nVar = nVar3;
                            break;
                        }
                    }
                }
            }
            if (nVar == null) {
                nVar = new n();
                nVar.f2671a = new ArrayList();
                nVar.f2673d = null;
                nVar.f2674e = -1;
                int i9 = n.f;
                n.f = i9 + 1;
                nVar.b = i9;
                nVar.f2672c = i3;
            }
            arrayList.add(nVar);
        }
        int i10 = nVar.b;
        ArrayList arrayList2 = nVar.f2671a;
        if (arrayList2.contains(dVar)) {
            return nVar;
        }
        arrayList2.add(dVar);
        if (dVar instanceof o.f) {
            o.f fVar = (o.f) dVar;
            fVar.f2615m0.b(fVar.f2616n0 == 0 ? 1 : 0, arrayList, nVar);
        }
        if (i3 == 0) {
            dVar.f2576g0 = i10;
            dVar.B.b(i3, arrayList, nVar);
            dVar.D.b(i3, arrayList, nVar);
        } else {
            dVar.f2578h0 = i10;
            dVar.C.b(i3, arrayList, nVar);
            dVar.F.b(i3, arrayList, nVar);
            dVar.E.b(i3, arrayList, nVar);
        }
        dVar.I.b(i3, arrayList, nVar);
        return nVar;
    }

    public static void c(o.d dVar, q.f fVar, boolean z2) {
        HashSet<o.c> hashSet;
        o.c cVar;
        o.c cVar2;
        float f;
        o.c cVar3;
        o.c cVar4;
        o.c cVar5;
        if (!(dVar instanceof o.e) && dVar.t() && a(dVar)) {
            o.e.L(dVar, fVar, new b());
        }
        o.c cVarG = dVar.g(2);
        o.c cVarG2 = dVar.g(4);
        int iC = cVarG.c();
        int iC2 = cVarG2.c();
        HashSet<o.c> hashSet2 = cVarG.f2558a;
        if (hashSet2 != null && cVarG.f2559c) {
            for (o.c cVar6 : hashSet2) {
                o.d dVar2 = cVar6.f2560d;
                boolean zA = a(dVar2);
                o.c cVar7 = dVar2.B;
                o.c cVar8 = dVar2.D;
                if (dVar2.t() && zA) {
                    f = 0.0f;
                    o.e.L(dVar2, fVar, new b());
                } else {
                    f = 0.0f;
                }
                int i3 = dVar2.f2580i0[0];
                if (i3 != 3 || zA) {
                    if (!dVar2.t()) {
                        if (cVar6 == cVar7 && cVar8.f == null) {
                            int iD = cVar7.d() + iC;
                            dVar2.y(iD, dVar2.l() + iD);
                            c(dVar2, fVar, z2);
                        } else if (cVar6 == cVar8 && cVar7.f == null) {
                            int iD2 = iC - cVar8.d();
                            dVar2.y(iD2 - dVar2.l(), iD2);
                            c(dVar2, fVar, z2);
                        } else if (cVar6 == cVar7 && (cVar3 = cVar8.f) != null && cVar3.f2559c && !dVar2.r()) {
                            d(dVar2, fVar, z2);
                        }
                    }
                } else if (i3 == 3 && dVar2.f2587p >= 0 && dVar2.f2586o >= 0 && (dVar2.Z == 8 || (dVar2.f2583l == 0 && dVar2.P == f))) {
                    if (!dVar2.r() && ((cVar6 == cVar7 && (cVar5 = cVar8.f) != null && cVar5.f2559c) || (cVar6 == cVar8 && (cVar4 = cVar7.f) != null && cVar4.f2559c))) {
                        if (!dVar2.r()) {
                            e(dVar, fVar, dVar2, z2);
                        }
                    }
                }
            }
        }
        if ((dVar instanceof o.f) || (hashSet = cVarG2.f2558a) == null || !cVarG2.f2559c) {
            return;
        }
        for (o.c cVar9 : hashSet) {
            o.d dVar3 = cVar9.f2560d;
            boolean zA2 = a(dVar3);
            o.c cVar10 = dVar3.B;
            o.c cVar11 = dVar3.D;
            if (dVar3.t() && zA2) {
                o.e.L(dVar3, fVar, new b());
            }
            boolean z3 = (cVar9 == cVar10 && (cVar2 = cVar11.f) != null && cVar2.f2559c) || (cVar9 == cVar11 && (cVar = cVar10.f) != null && cVar.f2559c);
            int i4 = dVar3.f2580i0[0];
            if (i4 != 3 || zA2) {
                if (!dVar3.t()) {
                    if (cVar9 == cVar10 && cVar11.f == null) {
                        int iD3 = cVar10.d() + iC2;
                        dVar3.y(iD3, dVar3.l() + iD3);
                        c(dVar3, fVar, z2);
                    } else if (cVar9 == cVar11 && cVar10.f == null) {
                        int iD4 = iC2 - cVar11.d();
                        dVar3.y(iD4 - dVar3.l(), iD4);
                        c(dVar3, fVar, z2);
                    } else if (z3 && !dVar3.r()) {
                        d(dVar3, fVar, z2);
                    }
                }
            } else if (i4 == 3 && dVar3.f2587p >= 0 && dVar3.f2586o >= 0 && (dVar3.Z == 8 || (dVar3.f2583l == 0 && dVar3.P == 0.0f))) {
                if (!dVar3.r() && z3 && !dVar3.r()) {
                    e(dVar, fVar, dVar3, z2);
                }
            }
        }
    }

    public static void d(o.d dVar, q.f fVar, boolean z2) {
        float f = dVar.W;
        o.c cVar = dVar.B;
        int iC = cVar.f.c();
        o.c cVar2 = dVar.D;
        int iC2 = cVar2.f.c();
        int iD = cVar.d() + iC;
        int iD2 = iC2 - cVar2.d();
        if (iC == iC2) {
            f = 0.5f;
        } else {
            iC = iD;
            iC2 = iD2;
        }
        int iL = dVar.l();
        int i3 = (iC2 - iC) - iL;
        if (iC > iC2) {
            i3 = (iC - iC2) - iL;
        }
        int i4 = ((int) ((f * i3) + 0.5f)) + iC;
        int i5 = i4 + iL;
        if (iC > iC2) {
            i5 = i4 - iL;
        }
        dVar.y(i4, i5);
        c(dVar, fVar, z2);
    }

    public static void e(o.d dVar, q.f fVar, o.d dVar2, boolean z2) {
        float f = dVar2.W;
        o.c cVar = dVar2.B;
        int iD = cVar.d() + cVar.f.c();
        o.c cVar2 = dVar2.D;
        int iC = cVar2.f.c() - cVar2.d();
        if (iC >= iD) {
            int iL = dVar2.l();
            if (dVar2.Z != 8) {
                int i3 = dVar2.f2583l;
                if (i3 == 2) {
                    iL = (int) (dVar2.W * 0.5f * (dVar instanceof o.e ? dVar.l() : dVar.M.l()));
                } else if (i3 == 0) {
                    iL = iC - iD;
                }
                iL = Math.max(dVar2.f2586o, iL);
                int i4 = dVar2.f2587p;
                if (i4 > 0) {
                    iL = Math.min(i4, iL);
                }
            }
            int i5 = iD + ((int) ((f * ((iC - iD) - iL)) + 0.5f));
            dVar2.y(i5, iL + i5);
            c(dVar2, fVar, z2);
        }
    }

    public static void f(o.d dVar, q.f fVar) {
        float f = dVar.X;
        o.c cVar = dVar.C;
        int iC = cVar.f.c();
        o.c cVar2 = dVar.E;
        int iC2 = cVar2.f.c();
        int iD = cVar.d() + iC;
        int iD2 = iC2 - cVar2.d();
        if (iC == iC2) {
            f = 0.5f;
        } else {
            iC = iD;
            iC2 = iD2;
        }
        int i3 = dVar.i();
        int i4 = (iC2 - iC) - i3;
        if (iC > iC2) {
            i4 = (iC - iC2) - i3;
        }
        int i5 = (int) ((f * i4) + 0.5f);
        int i6 = iC + i5;
        int i7 = i6 + i3;
        if (iC > iC2) {
            i6 = iC - i5;
            i7 = i6 - i3;
        }
        dVar.z(i6, i7);
        i(dVar, fVar);
    }

    public static void g(o.d dVar, q.f fVar, o.d dVar2) {
        float f = dVar2.X;
        o.c cVar = dVar2.C;
        int iD = cVar.d() + cVar.f.c();
        o.c cVar2 = dVar2.E;
        int iC = cVar2.f.c() - cVar2.d();
        if (iC >= iD) {
            int i3 = dVar2.i();
            if (dVar2.Z != 8) {
                int i4 = dVar2.f2584m;
                if (i4 == 2) {
                    i3 = (int) (f * 0.5f * (dVar instanceof o.e ? dVar.i() : dVar.M.i()));
                } else if (i4 == 0) {
                    i3 = iC - iD;
                }
                i3 = Math.max(dVar2.f2589r, i3);
                int i5 = dVar2.f2590s;
                if (i5 > 0) {
                    i3 = Math.min(i5, i3);
                }
            }
            int i6 = iD + ((int) ((f * ((iC - iD) - i3)) + 0.5f));
            dVar2.z(i6, i3 + i6);
            i(dVar2, fVar);
        }
    }

    public static boolean h(int i3, int i4, int i5, int i6) {
        return (i5 == 1 || i5 == 2 || (i5 == 4 && i3 != 2)) || (i6 == 1 || i6 == 2 || (i6 == 4 && i4 != 2));
    }

    public static void i(o.d dVar, q.f fVar) {
        o.c cVar;
        o.c cVar2;
        o.c cVar3;
        o.c cVar4;
        o.c cVar5;
        if (!(dVar instanceof o.e) && dVar.t() && a(dVar)) {
            o.e.L(dVar, fVar, new b());
        }
        o.c cVarG = dVar.g(3);
        o.c cVarG2 = dVar.g(5);
        int iC = cVarG.c();
        int iC2 = cVarG2.c();
        HashSet<o.c> hashSet = cVarG.f2558a;
        if (hashSet != null && cVarG.f2559c) {
            for (o.c cVar6 : hashSet) {
                o.d dVar2 = cVar6.f2560d;
                boolean zA = a(dVar2);
                o.c cVar7 = dVar2.C;
                o.c cVar8 = dVar2.E;
                if (dVar2.t() && zA) {
                    o.e.L(dVar2, fVar, new b());
                }
                int i3 = dVar2.f2580i0[1];
                if (i3 != 3 || zA) {
                    if (!dVar2.t()) {
                        if (cVar6 == cVar7 && cVar8.f == null) {
                            int iD = cVar7.d() + iC;
                            dVar2.z(iD, dVar2.i() + iD);
                            i(dVar2, fVar);
                        } else if (cVar6 == cVar8 && cVar8.f == null) {
                            int iD2 = iC - cVar8.d();
                            dVar2.z(iD2 - dVar2.i(), iD2);
                            i(dVar2, fVar);
                        } else if (cVar6 == cVar7 && (cVar3 = cVar8.f) != null && cVar3.f2559c) {
                            f(dVar2, fVar);
                        }
                    }
                } else if (i3 == 3 && dVar2.f2590s >= 0 && dVar2.f2589r >= 0 && (dVar2.Z == 8 || (dVar2.f2584m == 0 && dVar2.P == 0.0f))) {
                    if (!dVar2.s() && ((cVar6 == cVar7 && (cVar5 = cVar8.f) != null && cVar5.f2559c) || (cVar6 == cVar8 && (cVar4 = cVar7.f) != null && cVar4.f2559c))) {
                        if (!dVar2.s()) {
                            g(dVar, fVar, dVar2);
                        }
                    }
                }
            }
        }
        if (dVar instanceof o.f) {
            return;
        }
        HashSet<o.c> hashSet2 = cVarG2.f2558a;
        if (hashSet2 != null && cVarG2.f2559c) {
            for (o.c cVar9 : hashSet2) {
                o.d dVar3 = cVar9.f2560d;
                boolean zA2 = a(dVar3);
                o.c cVar10 = dVar3.C;
                o.c cVar11 = dVar3.E;
                if (dVar3.t() && zA2) {
                    o.e.L(dVar3, fVar, new b());
                }
                boolean z2 = (cVar9 == cVar10 && (cVar2 = cVar11.f) != null && cVar2.f2559c) || (cVar9 == cVar11 && (cVar = cVar10.f) != null && cVar.f2559c);
                int i4 = dVar3.f2580i0[1];
                if (i4 != 3 || zA2) {
                    if (!dVar3.t()) {
                        if (cVar9 == cVar10 && cVar11.f == null) {
                            int iD3 = cVar10.d() + iC2;
                            dVar3.z(iD3, dVar3.i() + iD3);
                            i(dVar3, fVar);
                        } else if (cVar9 == cVar11 && cVar10.f == null) {
                            int iD4 = iC2 - cVar11.d();
                            dVar3.z(iD4 - dVar3.i(), iD4);
                            i(dVar3, fVar);
                        } else if (z2 && !dVar3.s()) {
                            f(dVar3, fVar);
                        }
                    }
                } else if (i4 == 3 && dVar3.f2590s >= 0 && dVar3.f2589r >= 0 && (dVar3.Z == 8 || (dVar3.f2584m == 0 && dVar3.P == 0.0f))) {
                    if (!dVar3.s() && z2 && !dVar3.s()) {
                        g(dVar, fVar, dVar3);
                    }
                }
            }
        }
        o.c cVarG3 = dVar.g(6);
        if (cVarG3.f2558a == null || !cVarG3.f2559c) {
            return;
        }
        int iC3 = cVarG3.c();
        for (o.c cVar12 : cVarG3.f2558a) {
            o.d dVar4 = cVar12.f2560d;
            boolean zA3 = a(dVar4);
            o.c cVar13 = dVar4.F;
            if (dVar4.t() && zA3) {
                o.e.L(dVar4, fVar, new b());
            }
            if (dVar4.f2580i0[1] != 3 || zA3) {
                if (!dVar4.t() && cVar12 == cVar13) {
                    if (dVar4.f2596y) {
                        int i5 = iC3 - dVar4.T;
                        int i6 = dVar4.O + i5;
                        dVar4.S = i5;
                        dVar4.C.i(i5);
                        dVar4.E.i(i6);
                        cVar13.i(iC3);
                        dVar4.f2579i = true;
                    }
                    i(dVar4, fVar);
                }
            }
        }
    }
}
