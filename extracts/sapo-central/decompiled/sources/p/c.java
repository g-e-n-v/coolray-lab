package p;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class c extends o {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ArrayList f2647k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f2648l;

    public c(o.d dVar, int i3) {
        o.d dVar2;
        super(dVar);
        ArrayList arrayList = new ArrayList();
        this.f2647k = arrayList;
        this.f = i3;
        o.d dVar3 = this.b;
        o.d dVarK = dVar3.k(i3);
        while (true) {
            dVar2 = dVar3;
            dVar3 = dVarK;
            if (dVar3 == null) {
                break;
            } else {
                dVarK = dVar3.k(this.f);
            }
        }
        this.b = dVar2;
        int i4 = this.f;
        arrayList.add(i4 == 0 ? dVar2.f2570d : i4 == 1 ? dVar2.f2572e : null);
        o.d dVarJ = dVar2.j(this.f);
        while (dVarJ != null) {
            int i5 = this.f;
            arrayList.add(i5 == 0 ? dVarJ.f2570d : i5 == 1 ? dVarJ.f2572e : null);
            dVarJ = dVarJ.j(this.f);
        }
        int size = arrayList.size();
        int i6 = 0;
        while (i6 < size) {
            Object obj = arrayList.get(i6);
            i6++;
            o oVar = (o) obj;
            int i7 = this.f;
            if (i7 == 0) {
                oVar.b.b = this;
            } else if (i7 == 1) {
                oVar.b.f2568c = this;
            }
        }
        if (this.f == 0 && ((o.e) this.b.M).f2602n0 && arrayList.size() > 1) {
            this.b = ((o) arrayList.get(arrayList.size() - 1)).b;
        }
        this.f2648l = this.f == 0 ? this.b.f2567b0 : this.b.f2569c0;
    }

    /* JADX WARN: Code duplicated, block: B:121:0x01bc A[PHI: r1 r26
      0x01bc: PHI (r1v57 int) = (r1v55 int), (r1v60 int) binds: [B:120:0x01ba, B:111:0x019a] A[DONT_GENERATE, DONT_INLINE]
      0x01bc: PHI (r26v1 int) = (r26v0 int), (r26v3 int) binds: [B:120:0x01ba, B:111:0x019a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:302:0x00ea A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:64:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:66:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:67:0x00df  */
    /* JADX WARN: Code duplicated, block: B:69:0x00e2 A[ADDED_TO_REGION] */
    @Override // p.d
    public final void a(d dVar) {
        int i3;
        int i4;
        boolean z2;
        float f;
        int i5;
        int i6;
        int i7;
        int i8;
        float f3;
        int i9;
        int i10;
        int i11;
        int iMax;
        int i12;
        int i13;
        float f4;
        f fVar = this.f2680h;
        if (fVar.f2662j) {
            f fVar2 = this.f2681i;
            if (fVar2.f2662j) {
                o.d dVar2 = this.b.M;
                boolean z3 = (dVar2 == null || !(dVar2 instanceof o.e)) ? false : ((o.e) dVar2).f2602n0;
                int i14 = fVar2.f2659g - fVar.f2659g;
                ArrayList arrayList = this.f2647k;
                int size = arrayList.size();
                int i15 = 0;
                while (true) {
                    i3 = -1;
                    i4 = 8;
                    if (i15 >= size) {
                        i15 = -1;
                        break;
                    } else if (((o) arrayList.get(i15)).b.Z != 8) {
                        break;
                    } else {
                        i15++;
                    }
                }
                int i16 = size - 1;
                for (int i17 = i16; i17 >= 0; i17--) {
                    if (((o) arrayList.get(i17)).b.Z != 8) {
                        i3 = i17;
                        break;
                    }
                }
                int i18 = 0;
                while (true) {
                    if (i18 >= 2) {
                        z2 = z3;
                        f = 0.0f;
                        i5 = 0;
                        i6 = 0;
                        i7 = 0;
                        break;
                    }
                    f = 0.0f;
                    int i19 = 0;
                    i7 = 0;
                    int i20 = 0;
                    int i21 = 0;
                    while (i19 < size) {
                        o oVar = (o) arrayList.get(i19);
                        o.d dVar3 = oVar.b;
                        boolean z4 = z3;
                        if (dVar3.Z == i4) {
                            i12 = i18;
                        } else {
                            i21++;
                            if (i19 > 0 && i19 >= i15) {
                                i7 += oVar.f2680h.f;
                            }
                            g gVar = oVar.f2678e;
                            int i22 = gVar.f2659g;
                            i12 = i18;
                            boolean z5 = oVar.f2677d != 3;
                            if (z5) {
                                int i23 = this.f;
                                if (i23 == 0 && !dVar3.f2570d.f2678e.f2662j) {
                                    return;
                                }
                                if (i23 == 1 && !dVar3.f2572e.f2678e.f2662j) {
                                    return;
                                }
                            } else {
                                if (oVar.f2675a == 1 && i12 == 0) {
                                    i13 = gVar.f2665m;
                                    i20++;
                                } else {
                                    if (gVar.f2662j) {
                                        i13 = i22;
                                    }
                                    if (z5) {
                                        i7 += i13;
                                    } else {
                                        i20++;
                                        f4 = dVar3.f2571d0[this.f];
                                        if (f4 >= 0.0f) {
                                            f += f4;
                                        }
                                    }
                                    if (i19 >= i16 && i19 < i3) {
                                        i7 += -oVar.f2681i.f;
                                    }
                                }
                                z5 = true;
                                if (z5) {
                                    i20++;
                                    f4 = dVar3.f2571d0[this.f];
                                    if (f4 >= 0.0f) {
                                        f += f4;
                                    }
                                } else {
                                    i7 += i13;
                                }
                                if (i19 >= i16) {
                                }
                            }
                            i13 = i22;
                            if (z5) {
                                i20++;
                                f4 = dVar3.f2571d0[this.f];
                                if (f4 >= 0.0f) {
                                    f += f4;
                                }
                            } else {
                                i7 += i13;
                            }
                            if (i19 >= i16) {
                            }
                        }
                        i19++;
                        z3 = z4;
                        i18 = i12;
                        i4 = 8;
                    }
                    z2 = z3;
                    int i24 = i18;
                    if (i7 < i14 || i20 == 0) {
                        i5 = i20;
                        i6 = i21;
                        break;
                    } else {
                        i18 = i24 + 1;
                        z3 = z2;
                        i4 = 8;
                    }
                }
                int i25 = fVar.f2659g;
                if (z2) {
                    i25 = fVar2.f2659g;
                }
                float f5 = 0.5f;
                if (i7 > i14) {
                    i25 = z2 ? i25 + ((int) (((i7 - i14) / 2.0f) + 0.5f)) : i25 - ((int) (((i7 - i14) / 2.0f) + 0.5f));
                }
                if (i5 > 0) {
                    float f6 = i14 - i7;
                    int i26 = (int) ((f6 / i5) + 0.5f);
                    int i27 = 0;
                    int i28 = 0;
                    while (i27 < size) {
                        float f7 = f5;
                        o oVar2 = (o) arrayList.get(i27);
                        int i29 = i25;
                        o.d dVar4 = oVar2.b;
                        int i30 = i5;
                        g gVar2 = oVar2.f2678e;
                        float f8 = f6;
                        int i31 = i26;
                        if (dVar4.Z == 8 || oVar2.f2677d != 3 || gVar2.f2662j) {
                            i11 = i27;
                        } else {
                            int i32 = f > 0.0f ? (int) (((dVar4.f2571d0[this.f] * f8) / f) + f7) : i31;
                            if (this.f == 0) {
                                int i33 = dVar4.f2587p;
                                i11 = i27;
                                iMax = Math.max(dVar4.f2586o, oVar2.f2675a == 1 ? Math.min(i32, gVar2.f2665m) : i32);
                                if (i33 > 0) {
                                    iMax = Math.min(i33, iMax);
                                }
                                if (iMax != i32) {
                                    i28++;
                                    i32 = iMax;
                                }
                            } else {
                                i11 = i27;
                                int i34 = dVar4.f2590s;
                                iMax = Math.max(dVar4.f2589r, oVar2.f2675a == 1 ? Math.min(i32, gVar2.f2665m) : i32);
                                if (i34 > 0) {
                                    iMax = Math.min(i34, iMax);
                                }
                                if (iMax != i32) {
                                    i28++;
                                    i32 = iMax;
                                }
                            }
                            gVar2.d(i32);
                        }
                        i27 = i11 + 1;
                        i25 = i29;
                        f5 = f7;
                        i5 = i30;
                        f6 = f8;
                        i26 = i31;
                    }
                    i8 = i25;
                    f3 = f5;
                    int i35 = i5;
                    if (i28 > 0) {
                        i5 = i35 - i28;
                        i7 = 0;
                        for (int i36 = 0; i36 < size; i36++) {
                            o oVar3 = (o) arrayList.get(i36);
                            if (oVar3.b.Z != 8) {
                                if (i36 > 0 && i36 >= i15) {
                                    i7 += oVar3.f2680h.f;
                                }
                                i7 += oVar3.f2678e.f2659g;
                                if (i36 < i16 && i36 < i3) {
                                    i7 += -oVar3.f2681i.f;
                                }
                            }
                        }
                    } else {
                        i5 = i35;
                    }
                    i10 = 2;
                    if (this.f2648l == 2 && i28 == 0) {
                        i9 = 0;
                        this.f2648l = 0;
                    } else {
                        i9 = 0;
                    }
                } else {
                    i8 = i25;
                    f3 = 0.5f;
                    i9 = 0;
                    i10 = 2;
                }
                if (i7 > i14) {
                    this.f2648l = i10;
                }
                if (i6 > 0 && i5 == 0 && i15 == i3) {
                    this.f2648l = i10;
                }
                int i37 = this.f2648l;
                if (i37 == 1) {
                    int i38 = i6 > 1 ? (i14 - i7) / (i6 - 1) : i6 == 1 ? (i14 - i7) / 2 : i9;
                    if (i5 > 0) {
                        i38 = i9;
                    }
                    int i39 = i8;
                    for (int i40 = i9; i40 < size; i40++) {
                        o oVar4 = (o) arrayList.get(z2 ? size - (i40 + 1) : i40);
                        o.d dVar5 = oVar4.b;
                        f fVar3 = oVar4.f2681i;
                        f fVar4 = oVar4.f2680h;
                        if (dVar5.Z == 8) {
                            fVar4.d(i39);
                            fVar3.d(i39);
                        } else {
                            if (i40 > 0) {
                                i39 = z2 ? i39 - i38 : i39 + i38;
                            }
                            if (i40 > 0 && i40 >= i15) {
                                i39 = z2 ? i39 - fVar4.f : i39 + fVar4.f;
                            }
                            if (z2) {
                                fVar3.d(i39);
                            } else {
                                fVar4.d(i39);
                            }
                            g gVar3 = oVar4.f2678e;
                            int i41 = gVar3.f2659g;
                            if (oVar4.f2677d == 3 && oVar4.f2675a == 1) {
                                i41 = gVar3.f2665m;
                            }
                            i39 = z2 ? i39 - i41 : i39 + i41;
                            if (z2) {
                                fVar4.d(i39);
                            } else {
                                fVar3.d(i39);
                            }
                            oVar4.f2679g = true;
                            if (i40 < i16 && i40 < i3) {
                                i39 = z2 ? i39 - (-fVar3.f) : i39 + (-fVar3.f);
                            }
                        }
                    }
                    return;
                }
                if (i37 == 0) {
                    int i42 = (i14 - i7) / (i6 + 1);
                    if (i5 > 0) {
                        i42 = i9;
                    }
                    int i43 = i8;
                    for (int i44 = i9; i44 < size; i44++) {
                        o oVar5 = (o) arrayList.get(z2 ? size - (i44 + 1) : i44);
                        o.d dVar6 = oVar5.b;
                        f fVar5 = oVar5.f2681i;
                        f fVar6 = oVar5.f2680h;
                        if (dVar6.Z == 8) {
                            fVar6.d(i43);
                            fVar5.d(i43);
                        } else {
                            int i45 = z2 ? i43 - i42 : i43 + i42;
                            if (i44 > 0 && i44 >= i15) {
                                i45 = z2 ? i45 - fVar6.f : i45 + fVar6.f;
                            }
                            if (z2) {
                                fVar5.d(i45);
                            } else {
                                fVar6.d(i45);
                            }
                            g gVar4 = oVar5.f2678e;
                            int iMin = gVar4.f2659g;
                            if (oVar5.f2677d == 3 && oVar5.f2675a == 1) {
                                iMin = Math.min(iMin, gVar4.f2665m);
                            }
                            i43 = z2 ? i45 - iMin : i45 + iMin;
                            if (z2) {
                                fVar6.d(i43);
                            } else {
                                fVar5.d(i43);
                            }
                            if (i44 < i16 && i44 < i3) {
                                i43 = z2 ? i43 - (-fVar5.f) : i43 + (-fVar5.f);
                            }
                        }
                    }
                    return;
                }
                if (i37 == 2) {
                    float f9 = this.f == 0 ? this.b.W : this.b.X;
                    if (z2) {
                        f9 = 1.0f - f9;
                    }
                    int i46 = (int) (((i14 - i7) * f9) + f3);
                    if (i46 < 0 || i5 > 0) {
                        i46 = i9;
                    }
                    int i47 = z2 ? i8 - i46 : i8 + i46;
                    for (int i48 = i9; i48 < size; i48++) {
                        o oVar6 = (o) arrayList.get(z2 ? size - (i48 + 1) : i48);
                        o.d dVar7 = oVar6.b;
                        f fVar7 = oVar6.f2681i;
                        f fVar8 = oVar6.f2680h;
                        if (dVar7.Z == 8) {
                            fVar8.d(i47);
                            fVar7.d(i47);
                        } else {
                            if (i48 > 0 && i48 >= i15) {
                                i47 = z2 ? i47 - fVar8.f : i47 + fVar8.f;
                            }
                            if (z2) {
                                fVar7.d(i47);
                            } else {
                                fVar8.d(i47);
                            }
                            g gVar5 = oVar6.f2678e;
                            int i49 = gVar5.f2659g;
                            if (oVar6.f2677d == 3 && oVar6.f2675a == 1) {
                                i49 = gVar5.f2665m;
                            }
                            i47 = z2 ? i47 - i49 : i47 + i49;
                            if (z2) {
                                fVar8.d(i47);
                            } else {
                                fVar7.d(i47);
                            }
                            if (i48 < i16 && i48 < i3) {
                                i47 = z2 ? i47 - (-fVar7.f) : i47 + (-fVar7.f);
                            }
                        }
                    }
                }
            }
        }
    }

    @Override // p.o
    public final void d() {
        ArrayList arrayList = this.f2647k;
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            ((o) obj).d();
        }
        int size2 = arrayList.size();
        if (size2 < 1) {
            return;
        }
        o.d dVar = ((o) arrayList.get(0)).b;
        o.d dVar2 = ((o) arrayList.get(size2 - 1)).b;
        int i4 = this.f;
        f fVar = this.f2681i;
        f fVar2 = this.f2680h;
        if (i4 == 0) {
            o.c cVar = dVar.B;
            o.c cVar2 = dVar2.D;
            f fVarI = o.i(cVar, 0);
            int iD = cVar.d();
            o.d dVarM = m();
            if (dVarM != null) {
                iD = dVarM.B.d();
            }
            if (fVarI != null) {
                o.b(fVar2, fVarI, iD);
            }
            f fVarI2 = o.i(cVar2, 0);
            int iD2 = cVar2.d();
            o.d dVarN = n();
            if (dVarN != null) {
                iD2 = dVarN.D.d();
            }
            if (fVarI2 != null) {
                o.b(fVar, fVarI2, -iD2);
            }
        } else {
            o.c cVar3 = dVar.C;
            o.c cVar4 = dVar2.E;
            f fVarI3 = o.i(cVar3, 1);
            int iD3 = cVar3.d();
            o.d dVarM2 = m();
            if (dVarM2 != null) {
                iD3 = dVarM2.C.d();
            }
            if (fVarI3 != null) {
                o.b(fVar2, fVarI3, iD3);
            }
            f fVarI4 = o.i(cVar4, 1);
            int iD4 = cVar4.d();
            o.d dVarN2 = n();
            if (dVarN2 != null) {
                iD4 = dVarN2.E.d();
            }
            if (fVarI4 != null) {
                o.b(fVar, fVarI4, -iD4);
            }
        }
        fVar2.f2655a = this;
        fVar.f2655a = this;
    }

    @Override // p.o
    public final void e() {
        int i3 = 0;
        while (true) {
            ArrayList arrayList = this.f2647k;
            if (i3 >= arrayList.size()) {
                return;
            }
            ((o) arrayList.get(i3)).e();
            i3++;
        }
    }

    @Override // p.o
    public final void f() {
        this.f2676c = null;
        ArrayList arrayList = this.f2647k;
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            ((o) obj).f();
        }
    }

    @Override // p.o
    public final long j() {
        ArrayList arrayList = this.f2647k;
        int size = arrayList.size();
        long j3 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            o oVar = (o) arrayList.get(i3);
            j3 = ((long) oVar.f2681i.f) + oVar.j() + j3 + ((long) oVar.f2680h.f);
        }
        return j3;
    }

    @Override // p.o
    public final boolean k() {
        ArrayList arrayList = this.f2647k;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            if (!((o) arrayList.get(i3)).k()) {
                return false;
            }
        }
        return true;
    }

    public final o.d m() {
        int i3 = 0;
        while (true) {
            ArrayList arrayList = this.f2647k;
            if (i3 >= arrayList.size()) {
                return null;
            }
            o.d dVar = ((o) arrayList.get(i3)).b;
            if (dVar.Z != 8) {
                return dVar;
            }
            i3++;
        }
    }

    public final o.d n() {
        ArrayList arrayList = this.f2647k;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            o.d dVar = ((o) arrayList.get(size)).b;
            if (dVar.Z != 8) {
                return dVar;
            }
        }
        return null;
    }

    public final String toString() {
        String strConcat = "ChainRun ".concat(this.f == 0 ? "horizontal : " : "vertical : ");
        ArrayList arrayList = this.f2647k;
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            strConcat = n.g.a(n.g.a(strConcat, "<") + ((o) obj), "> ");
        }
        return strConcat;
    }
}
