package o;

import java.util.ArrayList;
import p.h;
import p.n;

/* JADX INFO: loaded from: classes.dex */
public final class a extends d {

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public d[] f2537j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public int f2538k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public int f2539l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public boolean f2540m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public int f2541n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public boolean f2542o0;

    public final void G(int i3, ArrayList arrayList, n nVar) {
        for (int i4 = 0; i4 < this.f2538k0; i4++) {
            d dVar = this.f2537j0[i4];
            ArrayList arrayList2 = nVar.f2671a;
            if (!arrayList2.contains(dVar)) {
                arrayList2.add(dVar);
            }
        }
        for (int i5 = 0; i5 < this.f2538k0; i5++) {
            h.b(this.f2537j0[i5], i3, arrayList, nVar);
        }
    }

    public final boolean H() {
        int i3;
        int i4;
        int i5;
        boolean z2 = true;
        int i6 = 0;
        while (true) {
            i3 = this.f2538k0;
            if (i6 >= i3) {
                break;
            }
            d dVar = this.f2537j0[i6];
            if ((this.f2540m0 || dVar.c()) && ((((i4 = this.f2539l0) == 0 || i4 == 1) && !dVar.u()) || (((i5 = this.f2539l0) == 2 || i5 == 3) && !dVar.v()))) {
                z2 = false;
            }
            i6++;
        }
        if (!z2 || i3 <= 0) {
            return false;
        }
        int iMax = 0;
        boolean z3 = false;
        for (int i7 = 0; i7 < this.f2538k0; i7++) {
            d dVar2 = this.f2537j0[i7];
            if (this.f2540m0 || dVar2.c()) {
                if (!z3) {
                    int i8 = this.f2539l0;
                    if (i8 == 0) {
                        iMax = dVar2.g(2).c();
                    } else if (i8 == 1) {
                        iMax = dVar2.g(4).c();
                    } else if (i8 == 2) {
                        iMax = dVar2.g(3).c();
                    } else if (i8 == 3) {
                        iMax = dVar2.g(5).c();
                    }
                    z3 = true;
                }
                int i9 = this.f2539l0;
                if (i9 == 0) {
                    iMax = Math.min(iMax, dVar2.g(2).c());
                } else if (i9 == 1) {
                    iMax = Math.max(iMax, dVar2.g(4).c());
                } else if (i9 == 2) {
                    iMax = Math.min(iMax, dVar2.g(3).c());
                } else if (i9 == 3) {
                    iMax = Math.max(iMax, dVar2.g(5).c());
                }
            }
        }
        int i10 = iMax + this.f2541n0;
        int i11 = this.f2539l0;
        if (i11 == 0 || i11 == 1) {
            y(i10, i10);
        } else {
            z(i10, i10);
        }
        this.f2542o0 = true;
        return true;
    }

    public final int I() {
        int i3 = this.f2539l0;
        if (i3 == 0 || i3 == 1) {
            return 0;
        }
        return (i3 == 2 || i3 == 3) ? 1 : -1;
    }

    @Override // o.d
    public final void b(n.c cVar, boolean z2) {
        boolean z3;
        int i3;
        int i4;
        c[] cVarArr = this.J;
        c cVar2 = this.B;
        cVarArr[0] = cVar2;
        int i5 = 2;
        c cVar3 = this.C;
        cVarArr[2] = cVar3;
        c cVar4 = this.D;
        cVarArr[1] = cVar4;
        c cVar5 = this.E;
        cVarArr[3] = cVar5;
        for (c cVar6 : cVarArr) {
            cVar6.f2564i = cVar.k(cVar6);
        }
        int i6 = this.f2539l0;
        if (i6 < 0 || i6 >= 4) {
            return;
        }
        c cVar7 = cVarArr[i6];
        if (!this.f2542o0) {
            H();
        }
        if (this.f2542o0) {
            this.f2542o0 = false;
            int i7 = this.f2539l0;
            if (i7 == 0 || i7 == 1) {
                cVar.d(cVar2.f2564i, this.R);
                cVar.d(cVar4.f2564i, this.R);
                return;
            } else {
                if (i7 == 2 || i7 == 3) {
                    cVar.d(cVar3.f2564i, this.S);
                    cVar.d(cVar5.f2564i, this.S);
                    return;
                }
                return;
            }
        }
        int i8 = 0;
        while (true) {
            if (i8 >= this.f2538k0) {
                z3 = false;
                break;
            }
            d dVar = this.f2537j0[i8];
            if ((this.f2540m0 || dVar.c()) && ((((i4 = this.f2539l0) == 0 || i4 == 1) && dVar.f2580i0[0] == 3 && dVar.B.f != null && dVar.D.f != null) || ((i4 == 2 || i4 == 3) && dVar.f2580i0[1] == 3 && dVar.C.f != null && dVar.E.f != null))) {
                z3 = true;
                break;
            }
            i8++;
        }
        boolean z4 = cVar2.e() || cVar4.e();
        boolean z5 = cVar3.e() || cVar5.e();
        int i9 = !(!z3 && (((i3 = this.f2539l0) == 0 && z4) || ((i3 == 2 && z5) || ((i3 == 1 && z4) || (i3 == 3 && z5))))) ? 4 : 5;
        int i10 = 0;
        while (i10 < this.f2538k0) {
            d dVar2 = this.f2537j0[i10];
            if (this.f2540m0 || dVar2.c()) {
                n.h hVarK = cVar.k(dVar2.J[this.f2539l0]);
                c[] cVarArr2 = dVar2.J;
                int i11 = this.f2539l0;
                c cVar8 = cVarArr2[i11];
                cVar8.f2564i = hVarK;
                c cVar9 = cVar8.f;
                int i12 = (cVar9 == null || cVar9.f2560d != this) ? 0 : cVar8.f2562g;
                if (i11 == 0 || i11 == i5) {
                    n.h hVar = cVar7.f2564i;
                    int i13 = this.f2541n0 - i12;
                    n.b bVarL = cVar.l();
                    n.h hVarM = cVar.m();
                    hVarM.f2473d = 0;
                    bVarL.c(hVar, hVarK, hVarM, i13);
                    cVar.c(bVarL);
                } else {
                    n.h hVar2 = cVar7.f2564i;
                    int i14 = this.f2541n0 + i12;
                    n.b bVarL2 = cVar.l();
                    n.h hVarM2 = cVar.m();
                    hVarM2.f2473d = 0;
                    bVarL2.b(hVar2, hVarK, hVarM2, i14);
                    cVar.c(bVarL2);
                }
                cVar.e(cVar7.f2564i, hVarK, this.f2541n0 + i12, i9);
            }
            i10++;
            i5 = 2;
        }
        int i15 = this.f2539l0;
        if (i15 == 0) {
            cVar.e(cVar4.f2564i, cVar2.f2564i, 0, 8);
            cVar.e(cVar2.f2564i, this.M.D.f2564i, 0, 4);
            cVar.e(cVar2.f2564i, this.M.B.f2564i, 0, 0);
            return;
        }
        if (i15 == 1) {
            cVar.e(cVar2.f2564i, cVar4.f2564i, 0, 8);
            cVar.e(cVar2.f2564i, this.M.B.f2564i, 0, 4);
            cVar.e(cVar2.f2564i, this.M.D.f2564i, 0, 0);
        } else if (i15 == 2) {
            cVar.e(cVar5.f2564i, cVar3.f2564i, 0, 8);
            cVar.e(cVar3.f2564i, this.M.E.f2564i, 0, 4);
            cVar.e(cVar3.f2564i, this.M.C.f2564i, 0, 0);
        } else if (i15 == 3) {
            cVar.e(cVar3.f2564i, cVar5.f2564i, 0, 8);
            cVar.e(cVar3.f2564i, this.M.C.f2564i, 0, 4);
            cVar.e(cVar3.f2564i, this.M.E.f2564i, 0, 0);
        }
    }

    @Override // o.d
    public final boolean c() {
        return true;
    }

    @Override // o.d
    public final String toString() {
        String strA = "[Barrier] " + this.f2566a0 + " {";
        for (int i3 = 0; i3 < this.f2538k0; i3++) {
            d dVar = this.f2537j0[i3];
            if (i3 > 0) {
                strA = n.g.a(strA, ", ");
            }
            strA = strA + dVar.f2566a0;
        }
        return n.g.a(strA, "}");
    }

    @Override // o.d
    public final boolean u() {
        return this.f2542o0;
    }

    @Override // o.d
    public final boolean v() {
        return this.f2542o0;
    }
}
