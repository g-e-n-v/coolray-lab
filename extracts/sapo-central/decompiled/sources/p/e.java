package p;

import java.util.ArrayList;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public o.e f2649a;
    public boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2650c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public o.e f2651d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ArrayList f2652e;
    public q.f f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public b f2653g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ArrayList f2654h;

    public final void a(f fVar, int i3, ArrayList arrayList, l lVar) {
        o oVar = fVar.f2657d;
        l lVar2 = oVar.f2676c;
        f fVar2 = oVar.f2681i;
        f fVar3 = oVar.f2680h;
        if (lVar2 == null) {
            o.e eVar = this.f2649a;
            if (oVar == eVar.f2570d || oVar == eVar.f2572e) {
                return;
            }
            if (lVar == null) {
                lVar = new l();
                lVar.f2668a = null;
                lVar.b = new ArrayList();
                lVar.f2668a = oVar;
                arrayList.add(lVar);
            }
            oVar.f2676c = lVar;
            lVar.b.add(oVar);
            ArrayList arrayList2 = fVar3.f2663k;
            int size = arrayList2.size();
            int i4 = 0;
            int i5 = 0;
            while (i5 < size) {
                Object obj = arrayList2.get(i5);
                i5++;
                d dVar = (d) obj;
                if (dVar instanceof f) {
                    a((f) dVar, i3, arrayList, lVar);
                }
            }
            ArrayList arrayList3 = fVar2.f2663k;
            int size2 = arrayList3.size();
            int i6 = 0;
            while (i6 < size2) {
                Object obj2 = arrayList3.get(i6);
                i6++;
                d dVar2 = (d) obj2;
                if (dVar2 instanceof f) {
                    a((f) dVar2, i3, arrayList, lVar);
                }
            }
            if (i3 == 1 && (oVar instanceof m)) {
                ArrayList arrayList4 = ((m) oVar).f2669k.f2663k;
                int size3 = arrayList4.size();
                int i7 = 0;
                while (i7 < size3) {
                    Object obj3 = arrayList4.get(i7);
                    i7++;
                    d dVar3 = (d) obj3;
                    if (dVar3 instanceof f) {
                        a((f) dVar3, i3, arrayList, lVar);
                    }
                }
            }
            ArrayList arrayList5 = fVar3.f2664l;
            int size4 = arrayList5.size();
            int i8 = 0;
            while (i8 < size4) {
                Object obj4 = arrayList5.get(i8);
                i8++;
                a((f) obj4, i3, arrayList, lVar);
            }
            ArrayList arrayList6 = fVar2.f2664l;
            int size5 = arrayList6.size();
            int i9 = 0;
            while (i9 < size5) {
                Object obj5 = arrayList6.get(i9);
                i9++;
                a((f) obj5, i3, arrayList, lVar);
            }
            if (i3 == 1 && (oVar instanceof m)) {
                ArrayList arrayList7 = ((m) oVar).f2669k.f2664l;
                int size6 = arrayList7.size();
                while (i4 < size6) {
                    Object obj6 = arrayList7.get(i4);
                    i4++;
                    a((f) obj6, i3, arrayList, lVar);
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x01b4  */
    /* JADX WARN: Code duplicated, block: B:102:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:103:0x01bc A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:107:0x01c7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:108:0x01c9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:109:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:112:0x01de  */
    /* JADX WARN: Code duplicated, block: B:114:0x0207  */
    /* JADX WARN: Code duplicated, block: B:116:0x020a  */
    /* JADX WARN: Code duplicated, block: B:117:0x021f  */
    /* JADX WARN: Code duplicated, block: B:119:0x0224  */
    /* JADX WARN: Code duplicated, block: B:121:0x0228  */
    /* JADX WARN: Code duplicated, block: B:126:0x025f  */
    /* JADX WARN: Code duplicated, block: B:128:0x0269  */
    /* JADX WARN: Code duplicated, block: B:134:0x029a  */
    /* JADX WARN: Code duplicated, block: B:136:0x02a1 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:138:0x02a5 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:150:0x02ec  */
    /* JADX WARN: Code duplicated, block: B:151:0x030a  */
    /* JADX WARN: Code duplicated, block: B:154:0x0315  */
    /* JADX WARN: Code duplicated, block: B:157:0x0328  */
    /* JADX WARN: Code duplicated, block: B:158:0x033b  */
    /* JADX WARN: Code duplicated, block: B:63:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:65:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:67:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:69:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:70:0x00d1 A[PHI: r0
      0x00d1: PHI (r0v22 int) = (r0v20 int), (r0v99 int) binds: [B:68:0x00c9, B:62:0x00c0] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:72:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:73:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:78:0x00ea A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:79:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:82:0x012c  */
    /* JADX WARN: Code duplicated, block: B:84:0x0131  */
    /* JADX WARN: Code duplicated, block: B:85:0x0144  */
    /* JADX WARN: Code duplicated, block: B:87:0x0147  */
    /* JADX WARN: Code duplicated, block: B:89:0x014b  */
    /* JADX WARN: Code duplicated, block: B:95:0x0182  */
    /* JADX WARN: Code duplicated, block: B:97:0x018c  */
    public final void b(o.e eVar) {
        int i3;
        int i4;
        int iL;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        float f;
        int i22;
        int i23;
        ArrayList arrayList = eVar.f2598j0;
        int[] iArr = eVar.f2580i0;
        int size = arrayList.size();
        char c3 = 0;
        int i24 = 0;
        while (i24 < size) {
            Object obj = arrayList.get(i24);
            i24++;
            o.d dVar = (o.d) obj;
            int[] iArr2 = dVar.f2580i0;
            o.c[] cVarArr = dVar.J;
            o.c cVar = dVar.E;
            o.c cVar2 = dVar.C;
            o.c cVar3 = dVar.D;
            o.c cVar4 = dVar.B;
            int i25 = iArr2[c3];
            int i26 = iArr2[1];
            c3 = c3;
            if (dVar.Z == 8) {
                dVar.f2565a = true;
            } else {
                float f3 = dVar.f2588q;
                if (f3 < 1.0f && i25 == 3) {
                    dVar.f2583l = 2;
                }
                float f4 = dVar.f2591t;
                if (f4 < 1.0f && i26 == 3) {
                    dVar.f2584m = 2;
                }
                if (dVar.P > 0.0f) {
                    if (i25 == 3) {
                        i23 = 2;
                        if (i26 == 2 || i26 == 1) {
                            i3 = 3;
                            dVar.f2583l = 3;
                        } else {
                            i3 = 3;
                        }
                    } else {
                        i3 = 3;
                        i23 = 2;
                    }
                    if (i26 == i3 && (i25 == i23 || i25 == 1)) {
                        dVar.f2584m = i3;
                    } else if (i25 == i3 && i26 == i3) {
                        if (dVar.f2583l == 0) {
                            dVar.f2583l = i3;
                        }
                        if (dVar.f2584m == 0) {
                            dVar.f2584m = i3;
                        }
                    }
                } else {
                    i3 = 3;
                }
                if (i25 == i3 && dVar.f2583l == 1 && (cVar4.f == null || cVar3.f == null)) {
                    i25 = 2;
                }
                if (i26 == 3 && dVar.f2584m == 1 && (cVar2.f == null || cVar.f == null)) {
                    i26 = 2;
                }
                k kVar = dVar.f2570d;
                kVar.f2677d = i25;
                int i27 = dVar.f2583l;
                kVar.f2675a = i27;
                m mVar = dVar.f2572e;
                mVar.f2677d = i26;
                ArrayList arrayList2 = arrayList;
                int i28 = dVar.f2584m;
                mVar.f2675a = i28;
                if (i25 == 4 || i25 == 1) {
                    if (i26 == 4) {
                        i4 = 1;
                    } else if (i26 != 1) {
                        i8 = 2;
                        if (i26 == 2) {
                            i4 = 1;
                        } else {
                            if (i25 != 3) {
                                i9 = i8;
                                i10 = i26;
                                i11 = 1;
                            } else if (i26 == i8 && i26 != 1) {
                                i9 = i8;
                                i12 = 3;
                                i10 = i26;
                                i11 = 1;
                                if (i10 != i12) {
                                    if (i25 == i9 && i25 != i11) {
                                        i16 = i12;
                                        i13 = i25;
                                        i14 = i9;
                                    } else if (i28 == i12) {
                                        if (i25 == i9) {
                                            f(i9, 0, i9, 0, dVar);
                                        }
                                        int iL2 = dVar.l();
                                        f = dVar.P;
                                        if (dVar.Q == -1) {
                                            f = 1.0f / f;
                                        }
                                        f(i11, iL2, i11, (int) ((iL2 * f) + 0.5f), dVar);
                                        dVar.f2570d.f2678e.d(dVar.l());
                                        dVar.f2572e.f2678e.d(dVar.i());
                                        dVar.f2565a = true;
                                    } else if (i28 == 1) {
                                        f(i25, 0, i9, 0, dVar);
                                        dVar.f2572e.f2678e.f2665m = dVar.i();
                                    } else {
                                        i19 = i9;
                                        i20 = i25;
                                        if (i28 == 2) {
                                            i21 = iArr[1];
                                            if (i21 != i11 || i21 == 4) {
                                                f(i20, dVar.l(), i11, (int) ((f4 * eVar.i()) + 0.5f), dVar);
                                                dVar.f2570d.f2678e.d(dVar.l());
                                                dVar.f2572e.f2678e.d(dVar.i());
                                                dVar.f2565a = true;
                                            } else {
                                                i13 = i20;
                                                i14 = i19;
                                                i16 = 3;
                                            }
                                        } else {
                                            i13 = i20;
                                            if (cVarArr[2].f != null || cVarArr[3].f == null) {
                                                f(i19, 0, i10, 0, dVar);
                                                dVar.f2570d.f2678e.d(dVar.l());
                                                dVar.f2572e.f2678e.d(dVar.i());
                                                dVar.f2565a = true;
                                            } else {
                                                i14 = i19;
                                            }
                                        }
                                    }
                                    i11 = i11;
                                    i15 = 1;
                                    if (i13 == i16 && i10 == i16) {
                                        if (i27 != i15 || i28 == i15) {
                                            f(i14, 0, i14, 0, dVar);
                                            dVar.f2570d.f2678e.f2665m = dVar.l();
                                            dVar.f2572e.f2678e.f2665m = dVar.i();
                                        } else if (i28 == 2 && i27 == 2 && (((i17 = iArr[c3]) == i11 || i17 == i11) && ((i18 = iArr[i15]) == i11 || i18 == i11))) {
                                            f(i11, (int) ((f3 * eVar.l()) + 0.5f), i11, (int) ((f4 * eVar.i()) + 0.5f), dVar);
                                            dVar.f2570d.f2678e.d(dVar.l());
                                            dVar.f2572e.f2678e.d(dVar.i());
                                            dVar.f2565a = true;
                                        }
                                    }
                                } else {
                                    i13 = i25;
                                    i14 = i9;
                                }
                                i15 = 1;
                                i16 = 3;
                                if (i13 == i16) {
                                    if (i27 != i15) {
                                        f(i14, 0, i14, 0, dVar);
                                        dVar.f2570d.f2678e.f2665m = dVar.l();
                                        dVar.f2572e.f2678e.f2665m = dVar.i();
                                    } else {
                                        f(i14, 0, i14, 0, dVar);
                                        dVar.f2570d.f2678e.f2665m = dVar.l();
                                        dVar.f2572e.f2678e.f2665m = dVar.i();
                                    }
                                }
                            } else if (i27 == 3) {
                                if (i26 == i8) {
                                    f(i8, 0, i8, 0, dVar);
                                }
                                int i29 = dVar.i();
                                f(1, (int) ((i29 * dVar.P) + 0.5f), 1, i29, dVar);
                                dVar.f2570d.f2678e.d(dVar.l());
                                dVar.f2572e.f2678e.d(dVar.i());
                                dVar.f2565a = true;
                            } else {
                                i9 = i8;
                                if (i27 == 1) {
                                    f(i9, 0, i26, 0, dVar);
                                    dVar.f2570d.f2678e.f2665m = dVar.l();
                                } else if (i27 == 2) {
                                    i22 = iArr[c3];
                                    if (i22 != 1 || i22 == 4) {
                                        f(1, (int) ((f3 * eVar.l()) + 0.5f), i26, dVar.i(), dVar);
                                        dVar.f2570d.f2678e.d(dVar.l());
                                        dVar.f2572e.f2678e.d(dVar.i());
                                        dVar.f2565a = true;
                                    } else {
                                        i10 = i26;
                                        i11 = 1;
                                    }
                                } else {
                                    i10 = i26;
                                    i11 = 1;
                                    if (cVarArr[c3].f != null || cVarArr[1].f == null) {
                                        f(i9, 0, i10, 0, dVar);
                                        dVar.f2570d.f2678e.d(dVar.l());
                                        dVar.f2572e.f2678e.d(dVar.i());
                                        dVar.f2565a = true;
                                    }
                                }
                            }
                            i12 = 3;
                            if (i10 != i12) {
                                i13 = i25;
                                i14 = i9;
                            } else if (i25 == i9) {
                                if (i28 == i12) {
                                    if (i25 == i9) {
                                        f(i9, 0, i9, 0, dVar);
                                    }
                                    int iL3 = dVar.l();
                                    f = dVar.P;
                                    if (dVar.Q == -1) {
                                        f = 1.0f / f;
                                    }
                                    f(i11, iL3, i11, (int) ((iL3 * f) + 0.5f), dVar);
                                    dVar.f2570d.f2678e.d(dVar.l());
                                    dVar.f2572e.f2678e.d(dVar.i());
                                    dVar.f2565a = true;
                                } else if (i28 == 1) {
                                    f(i25, 0, i9, 0, dVar);
                                    dVar.f2572e.f2678e.f2665m = dVar.i();
                                } else {
                                    i19 = i9;
                                    i20 = i25;
                                    if (i28 == 2) {
                                        i21 = iArr[1];
                                        if (i21 != i11) {
                                        }
                                        f(i20, dVar.l(), i11, (int) ((f4 * eVar.i()) + 0.5f), dVar);
                                        dVar.f2570d.f2678e.d(dVar.l());
                                        dVar.f2572e.f2678e.d(dVar.i());
                                        dVar.f2565a = true;
                                    } else {
                                        i13 = i20;
                                        if (cVarArr[2].f != null) {
                                        }
                                        f(i19, 0, i10, 0, dVar);
                                        dVar.f2570d.f2678e.d(dVar.l());
                                        dVar.f2572e.f2678e.d(dVar.i());
                                        dVar.f2565a = true;
                                    }
                                }
                            } else if (i28 == i12) {
                                if (i25 == i9) {
                                    f(i9, 0, i9, 0, dVar);
                                }
                                int iL4 = dVar.l();
                                f = dVar.P;
                                if (dVar.Q == -1) {
                                    f = 1.0f / f;
                                }
                                f(i11, iL4, i11, (int) ((iL4 * f) + 0.5f), dVar);
                                dVar.f2570d.f2678e.d(dVar.l());
                                dVar.f2572e.f2678e.d(dVar.i());
                                dVar.f2565a = true;
                            } else if (i28 == 1) {
                                f(i25, 0, i9, 0, dVar);
                                dVar.f2572e.f2678e.f2665m = dVar.i();
                            } else {
                                i19 = i9;
                                i20 = i25;
                                if (i28 == 2) {
                                    i21 = iArr[1];
                                    if (i21 != i11) {
                                    }
                                    f(i20, dVar.l(), i11, (int) ((f4 * eVar.i()) + 0.5f), dVar);
                                    dVar.f2570d.f2678e.d(dVar.l());
                                    dVar.f2572e.f2678e.d(dVar.i());
                                    dVar.f2565a = true;
                                } else {
                                    i13 = i20;
                                    if (cVarArr[2].f != null) {
                                    }
                                    f(i19, 0, i10, 0, dVar);
                                    dVar.f2570d.f2678e.d(dVar.l());
                                    dVar.f2572e.f2678e.d(dVar.i());
                                    dVar.f2565a = true;
                                }
                            }
                            i15 = 1;
                            i16 = 3;
                            if (i13 == i16) {
                                if (i27 != i15) {
                                    f(i14, 0, i14, 0, dVar);
                                    dVar.f2570d.f2678e.f2665m = dVar.l();
                                    dVar.f2572e.f2678e.f2665m = dVar.i();
                                } else {
                                    f(i14, 0, i14, 0, dVar);
                                    dVar.f2570d.f2678e.f2665m = dVar.l();
                                    dVar.f2572e.f2678e.f2665m = dVar.i();
                                }
                            }
                        }
                    } else {
                        i4 = 1;
                    }
                    iL = dVar.l();
                    if (i25 == 4) {
                        iL = (eVar.l() - cVar4.f2562g) - cVar3.f2562g;
                        i25 = i4;
                    }
                    i5 = dVar.i();
                    if (i26 == 4) {
                        i6 = i4;
                        i7 = (eVar.i() - cVar2.f2562g) - cVar.f2562g;
                    } else {
                        i6 = i26;
                        i7 = i5;
                    }
                    f(i25, iL, i6, i7, dVar);
                    dVar.f2570d.f2678e.d(dVar.l());
                    dVar.f2572e.f2678e.d(dVar.i());
                    dVar.f2565a = true;
                } else {
                    i8 = 2;
                    if (i25 == 2) {
                        if (i26 == 4) {
                            i4 = 1;
                        } else if (i26 != 1) {
                            i8 = 2;
                            if (i26 == 2) {
                                i4 = 1;
                            } else {
                                if (i25 != 3) {
                                    if (i26 == i8) {
                                    }
                                    if (i27 == 3) {
                                        if (i26 == i8) {
                                            f(i8, 0, i8, 0, dVar);
                                        }
                                        int i210 = dVar.i();
                                        f(1, (int) ((i210 * dVar.P) + 0.5f), 1, i210, dVar);
                                        dVar.f2570d.f2678e.d(dVar.l());
                                        dVar.f2572e.f2678e.d(dVar.i());
                                        dVar.f2565a = true;
                                    } else {
                                        i9 = i8;
                                        if (i27 == 1) {
                                            f(i9, 0, i26, 0, dVar);
                                            dVar.f2570d.f2678e.f2665m = dVar.l();
                                        } else if (i27 == 2) {
                                            i22 = iArr[c3];
                                            if (i22 != 1) {
                                            }
                                            f(1, (int) ((f3 * eVar.l()) + 0.5f), i26, dVar.i(), dVar);
                                            dVar.f2570d.f2678e.d(dVar.l());
                                            dVar.f2572e.f2678e.d(dVar.i());
                                            dVar.f2565a = true;
                                        } else {
                                            i10 = i26;
                                            i11 = 1;
                                            if (cVarArr[c3].f != null) {
                                            }
                                            f(i9, 0, i10, 0, dVar);
                                            dVar.f2570d.f2678e.d(dVar.l());
                                            dVar.f2572e.f2678e.d(dVar.i());
                                            dVar.f2565a = true;
                                        }
                                    }
                                } else {
                                    i9 = i8;
                                    i10 = i26;
                                    i11 = 1;
                                }
                                i12 = 3;
                                if (i10 != i12) {
                                    i13 = i25;
                                    i14 = i9;
                                } else if (i25 == i9) {
                                    if (i28 == i12) {
                                        if (i25 == i9) {
                                            f(i9, 0, i9, 0, dVar);
                                        }
                                        int iL5 = dVar.l();
                                        f = dVar.P;
                                        if (dVar.Q == -1) {
                                            f = 1.0f / f;
                                        }
                                        f(i11, iL5, i11, (int) ((iL5 * f) + 0.5f), dVar);
                                        dVar.f2570d.f2678e.d(dVar.l());
                                        dVar.f2572e.f2678e.d(dVar.i());
                                        dVar.f2565a = true;
                                    } else if (i28 == 1) {
                                        f(i25, 0, i9, 0, dVar);
                                        dVar.f2572e.f2678e.f2665m = dVar.i();
                                    } else {
                                        i19 = i9;
                                        i20 = i25;
                                        if (i28 == 2) {
                                            i21 = iArr[1];
                                            if (i21 != i11) {
                                            }
                                            f(i20, dVar.l(), i11, (int) ((f4 * eVar.i()) + 0.5f), dVar);
                                            dVar.f2570d.f2678e.d(dVar.l());
                                            dVar.f2572e.f2678e.d(dVar.i());
                                            dVar.f2565a = true;
                                        } else {
                                            i13 = i20;
                                            if (cVarArr[2].f != null) {
                                            }
                                            f(i19, 0, i10, 0, dVar);
                                            dVar.f2570d.f2678e.d(dVar.l());
                                            dVar.f2572e.f2678e.d(dVar.i());
                                            dVar.f2565a = true;
                                        }
                                    }
                                } else if (i28 == i12) {
                                    if (i25 == i9) {
                                        f(i9, 0, i9, 0, dVar);
                                    }
                                    int iL6 = dVar.l();
                                    f = dVar.P;
                                    if (dVar.Q == -1) {
                                        f = 1.0f / f;
                                    }
                                    f(i11, iL6, i11, (int) ((iL6 * f) + 0.5f), dVar);
                                    dVar.f2570d.f2678e.d(dVar.l());
                                    dVar.f2572e.f2678e.d(dVar.i());
                                    dVar.f2565a = true;
                                } else if (i28 == 1) {
                                    f(i25, 0, i9, 0, dVar);
                                    dVar.f2572e.f2678e.f2665m = dVar.i();
                                } else {
                                    i19 = i9;
                                    i20 = i25;
                                    if (i28 == 2) {
                                        i21 = iArr[1];
                                        if (i21 != i11) {
                                        }
                                        f(i20, dVar.l(), i11, (int) ((f4 * eVar.i()) + 0.5f), dVar);
                                        dVar.f2570d.f2678e.d(dVar.l());
                                        dVar.f2572e.f2678e.d(dVar.i());
                                        dVar.f2565a = true;
                                    } else {
                                        i13 = i20;
                                        if (cVarArr[2].f != null) {
                                        }
                                        f(i19, 0, i10, 0, dVar);
                                        dVar.f2570d.f2678e.d(dVar.l());
                                        dVar.f2572e.f2678e.d(dVar.i());
                                        dVar.f2565a = true;
                                    }
                                }
                                i15 = 1;
                                i16 = 3;
                                if (i13 == i16) {
                                    if (i27 != i15) {
                                        f(i14, 0, i14, 0, dVar);
                                        dVar.f2570d.f2678e.f2665m = dVar.l();
                                        dVar.f2572e.f2678e.f2665m = dVar.i();
                                    } else {
                                        f(i14, 0, i14, 0, dVar);
                                        dVar.f2570d.f2678e.f2665m = dVar.l();
                                        dVar.f2572e.f2678e.f2665m = dVar.i();
                                    }
                                }
                            }
                        } else {
                            i4 = 1;
                        }
                        iL = dVar.l();
                        if (i25 == 4) {
                            iL = (eVar.l() - cVar4.f2562g) - cVar3.f2562g;
                            i25 = i4;
                        }
                        i5 = dVar.i();
                        if (i26 == 4) {
                            i6 = i4;
                            i7 = (eVar.i() - cVar2.f2562g) - cVar.f2562g;
                        } else {
                            i6 = i26;
                            i7 = i5;
                        }
                        f(i25, iL, i6, i7, dVar);
                        dVar.f2570d.f2678e.d(dVar.l());
                        dVar.f2572e.f2678e.d(dVar.i());
                        dVar.f2565a = true;
                    } else {
                        if (i25 != 3) {
                            if (i26 == i8) {
                            }
                            if (i27 == 3) {
                                if (i26 == i8) {
                                    f(i8, 0, i8, 0, dVar);
                                }
                                int i211 = dVar.i();
                                f(1, (int) ((i211 * dVar.P) + 0.5f), 1, i211, dVar);
                                dVar.f2570d.f2678e.d(dVar.l());
                                dVar.f2572e.f2678e.d(dVar.i());
                                dVar.f2565a = true;
                            } else {
                                i9 = i8;
                                if (i27 == 1) {
                                    f(i9, 0, i26, 0, dVar);
                                    dVar.f2570d.f2678e.f2665m = dVar.l();
                                } else if (i27 == 2) {
                                    i22 = iArr[c3];
                                    if (i22 != 1) {
                                    }
                                    f(1, (int) ((f3 * eVar.l()) + 0.5f), i26, dVar.i(), dVar);
                                    dVar.f2570d.f2678e.d(dVar.l());
                                    dVar.f2572e.f2678e.d(dVar.i());
                                    dVar.f2565a = true;
                                } else {
                                    i10 = i26;
                                    i11 = 1;
                                    if (cVarArr[c3].f != null) {
                                    }
                                    f(i9, 0, i10, 0, dVar);
                                    dVar.f2570d.f2678e.d(dVar.l());
                                    dVar.f2572e.f2678e.d(dVar.i());
                                    dVar.f2565a = true;
                                }
                            }
                        } else {
                            i9 = i8;
                            i10 = i26;
                            i11 = 1;
                        }
                        i12 = 3;
                        if (i10 != i12) {
                            i13 = i25;
                            i14 = i9;
                        } else if (i25 == i9) {
                            if (i28 == i12) {
                                if (i25 == i9) {
                                    f(i9, 0, i9, 0, dVar);
                                }
                                int iL7 = dVar.l();
                                f = dVar.P;
                                if (dVar.Q == -1) {
                                    f = 1.0f / f;
                                }
                                f(i11, iL7, i11, (int) ((iL7 * f) + 0.5f), dVar);
                                dVar.f2570d.f2678e.d(dVar.l());
                                dVar.f2572e.f2678e.d(dVar.i());
                                dVar.f2565a = true;
                            } else if (i28 == 1) {
                                f(i25, 0, i9, 0, dVar);
                                dVar.f2572e.f2678e.f2665m = dVar.i();
                            } else {
                                i19 = i9;
                                i20 = i25;
                                if (i28 == 2) {
                                    i21 = iArr[1];
                                    if (i21 != i11) {
                                    }
                                    f(i20, dVar.l(), i11, (int) ((f4 * eVar.i()) + 0.5f), dVar);
                                    dVar.f2570d.f2678e.d(dVar.l());
                                    dVar.f2572e.f2678e.d(dVar.i());
                                    dVar.f2565a = true;
                                } else {
                                    i13 = i20;
                                    if (cVarArr[2].f != null) {
                                    }
                                    f(i19, 0, i10, 0, dVar);
                                    dVar.f2570d.f2678e.d(dVar.l());
                                    dVar.f2572e.f2678e.d(dVar.i());
                                    dVar.f2565a = true;
                                }
                            }
                        } else if (i28 == i12) {
                            if (i25 == i9) {
                                f(i9, 0, i9, 0, dVar);
                            }
                            int iL8 = dVar.l();
                            f = dVar.P;
                            if (dVar.Q == -1) {
                                f = 1.0f / f;
                            }
                            f(i11, iL8, i11, (int) ((iL8 * f) + 0.5f), dVar);
                            dVar.f2570d.f2678e.d(dVar.l());
                            dVar.f2572e.f2678e.d(dVar.i());
                            dVar.f2565a = true;
                        } else if (i28 == 1) {
                            f(i25, 0, i9, 0, dVar);
                            dVar.f2572e.f2678e.f2665m = dVar.i();
                        } else {
                            i19 = i9;
                            i20 = i25;
                            if (i28 == 2) {
                                i21 = iArr[1];
                                if (i21 != i11) {
                                }
                                f(i20, dVar.l(), i11, (int) ((f4 * eVar.i()) + 0.5f), dVar);
                                dVar.f2570d.f2678e.d(dVar.l());
                                dVar.f2572e.f2678e.d(dVar.i());
                                dVar.f2565a = true;
                            } else {
                                i13 = i20;
                                if (cVarArr[2].f != null) {
                                }
                                f(i19, 0, i10, 0, dVar);
                                dVar.f2570d.f2678e.d(dVar.l());
                                dVar.f2572e.f2678e.d(dVar.i());
                                dVar.f2565a = true;
                            }
                        }
                        i15 = 1;
                        i16 = 3;
                        if (i13 == i16) {
                            if (i27 != i15) {
                                f(i14, 0, i14, 0, dVar);
                                dVar.f2570d.f2678e.f2665m = dVar.l();
                                dVar.f2572e.f2678e.f2665m = dVar.i();
                            } else {
                                f(i14, 0, i14, 0, dVar);
                                dVar.f2570d.f2678e.f2665m = dVar.l();
                                dVar.f2572e.f2678e.f2665m = dVar.i();
                            }
                        }
                    }
                }
                arrayList = arrayList2;
            }
        }
    }

    public final void c() {
        o.e eVar = this.f2649a;
        ArrayList arrayList = this.f2654h;
        ArrayList arrayList2 = this.f2652e;
        arrayList2.clear();
        o.e eVar2 = this.f2651d;
        eVar2.f2570d.f();
        eVar2.f2572e.f();
        arrayList2.add(eVar2.f2570d);
        arrayList2.add(eVar2.f2572e);
        ArrayList arrayList3 = eVar2.f2598j0;
        int size = arrayList3.size();
        HashSet hashSet = null;
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList3.get(i3);
            i3++;
            o.d dVar = (o.d) obj;
            if (dVar instanceof o.f) {
                i iVar = new i(dVar);
                dVar.f2570d.f();
                dVar.f2572e.f();
                iVar.f = ((o.f) dVar).f2616n0;
                arrayList2.add(iVar);
            } else {
                if (dVar.r()) {
                    if (dVar.b == null) {
                        dVar.b = new c(dVar, 0);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(dVar.b);
                } else {
                    arrayList2.add(dVar.f2570d);
                }
                if (dVar.s()) {
                    if (dVar.f2568c == null) {
                        dVar.f2568c = new c(dVar, 1);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(dVar.f2568c);
                } else {
                    arrayList2.add(dVar.f2572e);
                }
                if (dVar instanceof o.a) {
                    arrayList2.add(new j(dVar));
                }
            }
        }
        if (hashSet != null) {
            arrayList2.addAll(hashSet);
        }
        int size2 = arrayList2.size();
        int i4 = 0;
        while (i4 < size2) {
            Object obj2 = arrayList2.get(i4);
            i4++;
            ((o) obj2).f();
        }
        int size3 = arrayList2.size();
        int i5 = 0;
        while (i5 < size3) {
            Object obj3 = arrayList2.get(i5);
            i5++;
            o oVar = (o) obj3;
            if (oVar.b != eVar2) {
                oVar.d();
            }
        }
        arrayList.clear();
        e(eVar.f2570d, 0, arrayList);
        e(eVar.f2572e, 1, arrayList);
        this.b = false;
    }

    public final int d(o.e eVar, int i3) {
        ArrayList arrayList;
        int i4;
        long j3;
        float f;
        long j4;
        ArrayList arrayList2 = this.f2654h;
        int size = arrayList2.size();
        long j5 = 0;
        int i5 = 0;
        long jMax = 0;
        while (i5 < size) {
            o oVar = ((l) arrayList2.get(i5)).f2668a;
            if (!(oVar instanceof c) ? !(i3 != 0 ? (oVar instanceof m) : (oVar instanceof k)) : ((c) oVar).f != i3) {
                f fVar = (i3 == 0 ? eVar.f2570d : eVar.f2572e).f2680h;
                f fVar2 = (i3 == 0 ? eVar.f2570d : eVar.f2572e).f2681i;
                f fVar3 = oVar.f2680h;
                f fVar4 = oVar.f2681i;
                boolean zContains = fVar3.f2664l.contains(fVar);
                boolean zContains2 = fVar4.f2664l.contains(fVar2);
                long j6 = oVar.j();
                if (zContains && zContains2) {
                    long jB = l.b(fVar3, j5);
                    long jA = l.a(fVar4, j5);
                    long j7 = jB - j6;
                    int i6 = fVar4.f;
                    arrayList = arrayList2;
                    i4 = size;
                    if (j7 >= (-i6)) {
                        j7 += (long) i6;
                    }
                    long j8 = fVar3.f;
                    long j9 = ((-jA) - j6) - j8;
                    if (j9 >= j8) {
                        j9 -= j8;
                    }
                    o.d dVar = oVar.b;
                    if (i3 == 0) {
                        f = dVar.W;
                    } else if (i3 == 1) {
                        f = dVar.X;
                    } else {
                        dVar.getClass();
                        f = -1.0f;
                    }
                    if (f > 0.0f) {
                        j4 = (long) ((j7 / (1.0f - f)) + (j9 / f));
                    } else {
                        j4 = 0;
                    }
                    float f3 = j4;
                    j3 = (((long) fVar3.f) + ((((long) ((f3 * f) + 0.5f)) + j6) + ((long) androidx.activity.result.b.d(1.0f, f, f3, 0.5f)))) - ((long) fVar4.f);
                } else {
                    arrayList = arrayList2;
                    i4 = size;
                    if (zContains) {
                        j3 = Math.max(l.b(fVar3, fVar3.f), ((long) fVar3.f) + j6);
                    } else if (zContains2) {
                        j3 = Math.max(-l.a(fVar4, fVar4.f), ((long) (-fVar4.f)) + j6);
                    } else {
                        j3 = (oVar.j() + ((long) fVar3.f)) - ((long) fVar4.f);
                    }
                }
            } else {
                arrayList = arrayList2;
                i4 = size;
                j3 = j5;
            }
            jMax = Math.max(jMax, j3);
            i5++;
            arrayList2 = arrayList;
            size = i4;
            j5 = 0;
        }
        return (int) jMax;
    }

    public final void e(o oVar, int i3, ArrayList arrayList) {
        f fVar = oVar.f2680h;
        f fVar2 = oVar.f2681i;
        ArrayList arrayList2 = fVar.f2663k;
        int size = arrayList2.size();
        int i4 = 0;
        int i5 = 0;
        while (i5 < size) {
            Object obj = arrayList2.get(i5);
            i5++;
            d dVar = (d) obj;
            if (dVar instanceof f) {
                a((f) dVar, i3, arrayList, null);
            } else if (dVar instanceof o) {
                a(((o) dVar).f2680h, i3, arrayList, null);
            }
        }
        ArrayList arrayList3 = fVar2.f2663k;
        int size2 = arrayList3.size();
        int i6 = 0;
        while (i6 < size2) {
            Object obj2 = arrayList3.get(i6);
            i6++;
            d dVar2 = (d) obj2;
            if (dVar2 instanceof f) {
                a((f) dVar2, i3, arrayList, null);
            } else if (dVar2 instanceof o) {
                a(((o) dVar2).f2681i, i3, arrayList, null);
            }
        }
        if (i3 == 1) {
            ArrayList arrayList4 = ((m) oVar).f2669k.f2663k;
            int size3 = arrayList4.size();
            while (i4 < size3) {
                Object obj3 = arrayList4.get(i4);
                i4++;
                d dVar3 = (d) obj3;
                if (dVar3 instanceof f) {
                    a((f) dVar3, i3, arrayList, null);
                }
            }
        }
    }

    public final void f(int i3, int i4, int i5, int i6, o.d dVar) {
        b bVar = this.f2653g;
        bVar.f2639a = i3;
        bVar.b = i5;
        bVar.f2640c = i4;
        bVar.f2641d = i6;
        this.f.b(dVar, bVar);
        dVar.D(bVar.f2642e);
        dVar.A(bVar.f);
        dVar.f2596y = bVar.f2644h;
        int i7 = bVar.f2643g;
        dVar.T = i7;
        dVar.f2596y = i7 > 0;
    }

    public final void g() {
        a aVar;
        e eVar = this;
        ArrayList arrayList = eVar.f2649a.f2598j0;
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            int i4 = i3 + 1;
            o.d dVar = (o.d) arrayList.get(i3);
            if (!dVar.f2565a) {
                int[] iArr = dVar.f2580i0;
                int i5 = iArr[0];
                int i6 = iArr[1];
                int i7 = dVar.f2583l;
                int i8 = dVar.f2584m;
                boolean z2 = i5 == 2 || (i5 == 3 && i7 == 1);
                boolean z3 = i6 == 2 || (i6 == 3 && i8 == 1);
                g gVar = dVar.f2570d.f2678e;
                boolean z4 = gVar.f2662j;
                g gVar2 = dVar.f2572e.f2678e;
                boolean z5 = gVar2.f2662j;
                boolean z6 = z2;
                if (z4 && z5) {
                    eVar.f(1, gVar.f2659g, 1, gVar2.f2659g, dVar);
                    dVar.f2565a = true;
                } else if (z4 && z3) {
                    f(1, gVar.f2659g, 2, gVar2.f2659g, dVar);
                    if (i6 == 3) {
                        dVar.f2572e.f2678e.f2665m = dVar.i();
                    } else {
                        dVar.f2572e.f2678e.d(dVar.i());
                        dVar.f2565a = true;
                    }
                } else if (z5 && z6) {
                    f(2, gVar.f2659g, 1, gVar2.f2659g, dVar);
                    if (i5 == 3) {
                        dVar.f2570d.f2678e.f2665m = dVar.l();
                    } else {
                        dVar.f2570d.f2678e.d(dVar.l());
                        dVar.f2565a = true;
                    }
                }
                if (dVar.f2565a && (aVar = dVar.f2572e.f2670l) != null) {
                    aVar.d(dVar.T);
                }
                eVar = this;
            }
            i3 = i4;
        }
    }
}
