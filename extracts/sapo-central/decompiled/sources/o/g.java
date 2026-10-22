package o;

import java.util.ArrayList;
import n.h;

/* JADX INFO: loaded from: classes.dex */
public abstract class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final boolean[] f2618a = new boolean[3];

    /* JADX WARN: Code duplicated, block: B:183:0x0286  */
    /* JADX WARN: Code duplicated, block: B:200:0x02cf  */
    /* JADX WARN: Code duplicated, block: B:202:0x02d2  */
    /* JADX WARN: Code duplicated, block: B:204:0x02d8  */
    /* JADX WARN: Code duplicated, block: B:227:0x036a  */
    /* JADX WARN: Code duplicated, block: B:229:0x0386  */
    /* JADX WARN: Code duplicated, block: B:231:0x038b  */
    /* JADX WARN: Code duplicated, block: B:235:0x03b7  */
    /* JADX WARN: Code duplicated, block: B:246:0x041f  */
    /* JADX WARN: Code duplicated, block: B:399:0x06b0  */
    /* JADX WARN: Code duplicated, block: B:400:0x06b3  */
    /* JADX WARN: Code duplicated, block: B:403:0x06b9  */
    /* JADX WARN: Code duplicated, block: B:404:0x06bc  */
    /* JADX WARN: Code duplicated, block: B:406:0x06c0  */
    /* JADX WARN: Code duplicated, block: B:408:0x06c8  */
    /* JADX WARN: Code duplicated, block: B:411:0x06d0  */
    /* JADX WARN: Code duplicated, block: B:413:0x06d4 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:423:0x06f2 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:66:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:75:0x0114  */
    public static void a(e eVar, n.c cVar, ArrayList arrayList, int i3) {
        int i4;
        b[] bVarArr;
        int i5;
        int i6;
        boolean z2;
        boolean z3;
        boolean z4;
        int i7;
        d dVar;
        n.c cVar2;
        h hVar;
        c cVar3;
        h hVar2;
        d dVar2;
        int i8;
        c cVar4;
        h hVar3;
        h hVar4;
        d dVar3;
        int i9;
        c[] cVarArr;
        int i10;
        c cVar5;
        c cVar6;
        h hVar5;
        c cVar7;
        h hVar6;
        int size;
        ArrayList arrayList2;
        int i11;
        float f;
        h hVar7;
        h hVar8;
        h hVar9;
        h hVar10;
        n.b bVarL;
        float f3;
        c cVar8;
        d dVar4;
        int i12;
        int i13;
        d dVar5;
        e eVar2 = eVar;
        if (i3 == 0) {
            i4 = eVar2.f2606r0;
            bVarArr = eVar2.f2608u0;
            i5 = 0;
        } else {
            i4 = eVar2.f2607s0;
            bVarArr = eVar2.t0;
            i5 = 2;
        }
        int i14 = i4;
        b[] bVarArr2 = bVarArr;
        int i15 = 0;
        while (i15 < i14) {
            b bVar = bVarArr2[i15];
            boolean z5 = bVar.f2557q;
            d dVar6 = bVar.f2543a;
            c[] cVarArr2 = dVar6.J;
            int i16 = 3;
            int i17 = 8;
            float f4 = 0.0f;
            if (z5) {
                i6 = i15;
            } else {
                int i18 = bVar.f2552l;
                int i19 = i18 * 2;
                d dVar7 = dVar6;
                d dVar8 = dVar7;
                boolean z6 = false;
                while (!z6) {
                    bVar.f2549i++;
                    d[] dVarArr = dVar7.f2574f0;
                    c[] cVarArr3 = dVar7.J;
                    dVarArr[i18] = null;
                    dVar7.f2573e0[i18] = null;
                    if (dVar7.Z != i17) {
                        dVar7.h(i18);
                        cVarArr3[i19].d();
                        int i20 = i19 + 1;
                        cVarArr3[i20].d();
                        cVarArr3[i19].d();
                        cVarArr3[i20].d();
                        if (bVar.b == null) {
                            bVar.b = dVar7;
                        }
                        bVar.f2545d = dVar7;
                        int i21 = dVar7.f2580i0[i18];
                        if (i21 == i16) {
                            int i22 = dVar7.f2585n[i18];
                            if (i22 == 0 || i22 == i16 || i22 == 2) {
                                bVar.f2550j++;
                                float f5 = dVar7.f2571d0[i18];
                                if (f5 > 0.0f) {
                                    bVar.f2551k += f5;
                                }
                                i13 = i18;
                                if (dVar7.Z != 8 && i21 == 3 && (i22 == 0 || i22 == 3)) {
                                    if (f5 < 0.0f) {
                                        bVar.f2554n = true;
                                    } else {
                                        bVar.f2555o = true;
                                    }
                                    if (bVar.f2548h == null) {
                                        bVar.f2548h = new ArrayList();
                                    }
                                    bVar.f2548h.add(dVar7);
                                }
                                if (bVar.f == null) {
                                    bVar.f = dVar7;
                                }
                                d dVar9 = bVar.f2547g;
                                if (dVar9 != null) {
                                    dVar9.f2573e0[i13] = dVar7;
                                }
                                bVar.f2547g = dVar7;
                            } else {
                                i15 = i15;
                                i13 = i18;
                            }
                            if (i13 == 0) {
                                if (dVar7.f2583l == 0 && dVar7.f2586o == 0) {
                                    int i23 = dVar7.f2587p;
                                }
                            } else if (dVar7.f2584m == 0 && dVar7.f2589r == 0) {
                                int i24 = dVar7.f2590s;
                            }
                        } else {
                            i15 = i15;
                            i13 = i18;
                        }
                    } else {
                        i15 = i15;
                        i13 = i18;
                    }
                    d dVar10 = dVar8;
                    if (dVar10 != dVar7) {
                        dVar10.f2574f0[i13] = dVar7;
                    }
                    c cVar9 = cVarArr3[i19 + 1].f;
                    if (cVar9 != null) {
                        dVar5 = cVar9.f2560d;
                        c cVar10 = dVar5.J[i19].f;
                        if (cVar10 == null || cVar10.f2560d != dVar7) {
                            dVar5 = null;
                        }
                    } else {
                        dVar5 = null;
                    }
                    if (dVar5 == null) {
                        dVar5 = dVar7;
                        z6 = true;
                    }
                    dVar8 = dVar7;
                    i18 = i13;
                    i16 = 3;
                    i17 = 8;
                    dVar7 = dVar5;
                    i15 = i15;
                }
                i6 = i15;
                int i25 = i18;
                d dVar11 = bVar.b;
                if (dVar11 != null) {
                    dVar11.J[i19].d();
                }
                d dVar12 = bVar.f2545d;
                if (dVar12 != null) {
                    dVar12.J[i19 + 1].d();
                }
                bVar.f2544c = dVar7;
                if (i25 == 0 && bVar.f2553m) {
                    bVar.f2546e = dVar7;
                } else {
                    bVar.f2546e = dVar6;
                }
                bVar.f2556p = bVar.f2555o && bVar.f2554n;
            }
            bVar.f2557q = true;
            if (arrayList == 0 || arrayList.contains(dVar6)) {
                d dVar13 = bVar.f2544c;
                d dVar14 = bVar.b;
                d dVar15 = bVar.f2545d;
                d dVar16 = bVar.f2546e;
                float f6 = bVar.f2551k;
                int[] iArr = eVar2.f2580i0;
                c[] cVarArr4 = eVar2.J;
                boolean z7 = iArr[i3] == 2;
                if (i3 == 0) {
                    int i26 = dVar16.f2567b0;
                    boolean z8 = i26 == 0;
                    boolean z9 = i26 == 1;
                    z2 = i26 == 2;
                    z4 = z9;
                    z3 = z8;
                } else {
                    int i27 = dVar16.f2569c0;
                    boolean z10 = i27 == 0;
                    boolean z11 = i27 == 1;
                    z2 = i27 == 2;
                    z3 = z10;
                    z4 = z11;
                }
                boolean z12 = false;
                while (!z12) {
                    c[] cVarArr5 = dVar6.J;
                    int[] iArr2 = dVar6.f2580i0;
                    c cVar11 = cVarArr5[i5];
                    int i28 = z2 ? 1 : 4;
                    int iD = cVar11.d();
                    boolean z13 = z7;
                    boolean z14 = z2;
                    boolean z15 = iArr2[i3] == 3 && dVar6.f2585n[i3] == 0;
                    c cVar12 = cVar11.f;
                    if (cVar12 != null && dVar6 != dVar6) {
                        iD = cVar12.d() + iD;
                    }
                    int i29 = iD;
                    if (z14 && dVar6 != dVar6 && dVar6 != dVar14) {
                        i28 = 8;
                    }
                    d dVar17 = dVar6;
                    c cVar13 = cVar11.f;
                    if (cVar13 != null) {
                        if (dVar6 == dVar14) {
                            cVar.f(cVar11.f2564i, cVar13.f2564i, i29, 6);
                        } else {
                            cVar.f(cVar11.f2564i, cVar13.f2564i, i29, 8);
                        }
                        cVar.e(cVar11.f2564i, cVar11.f.f2564i, i29, (!z15 || z14) ? i28 : 5);
                    }
                    if (z13) {
                        if (dVar6.Z == 8 || iArr2[i3] != 3) {
                            i12 = 0;
                        } else {
                            i12 = 0;
                            cVar.f(cVarArr5[i5 + 1].f2564i, cVarArr5[i5].f2564i, 0, 5);
                        }
                        cVar.f(cVarArr5[i5].f2564i, cVarArr4[i5].f2564i, i12, 8);
                    }
                    c cVar14 = cVarArr5[i5 + 1].f;
                    if (cVar14 != null) {
                        dVar4 = cVar14.f2560d;
                        c cVar15 = dVar4.J[i5].f;
                        if (cVar15 == null || cVar15.f2560d != dVar6) {
                            dVar4 = null;
                        }
                    } else {
                        dVar4 = null;
                    }
                    if (dVar4 != null) {
                        dVar6 = dVar4;
                    } else {
                        z12 = true;
                    }
                    dVar6 = dVar17;
                    z7 = z13;
                    z2 = z14;
                }
                boolean z16 = z7;
                boolean z17 = z2;
                if (dVar15 != null) {
                    int i30 = i5 + 1;
                    if (dVar13.J[i30].f != null) {
                        c cVar16 = dVar15.J[i30];
                        if (dVar15.f2580i0[i3] == 3 && dVar15.f2585n[i3] == 0 && !z17) {
                            c cVar17 = cVar16.f;
                            if (cVar17.f2560d == eVar2) {
                                cVar.e(cVar16.f2564i, cVar17.f2564i, -cVar16.d(), 5);
                            } else if (z17) {
                                cVar8 = cVar16.f;
                                if (cVar8.f2560d == eVar2) {
                                    cVar.e(cVar16.f2564i, cVar8.f2564i, -cVar16.d(), 4);
                                }
                            }
                        } else if (z17) {
                            cVar8 = cVar16.f;
                            if (cVar8.f2560d == eVar2) {
                                cVar.e(cVar16.f2564i, cVar8.f2564i, -cVar16.d(), 4);
                            }
                        }
                        cVar.g(cVar16.f2564i, dVar13.J[i30].f.f2564i, -cVar16.d(), 6);
                    }
                }
                if (z16) {
                    int i31 = i5 + 1;
                    h hVar11 = cVarArr4[i31].f2564i;
                    c cVar18 = dVar13.J[i31];
                    cVar.f(hVar11, cVar18.f2564i, cVar18.d(), 8);
                }
                ArrayList arrayList3 = bVar.f2548h;
                if (arrayList3 != null && (size = arrayList3.size()) > 1) {
                    if (bVar.f2554n && !bVar.f2556p) {
                        f6 = bVar.f2550j;
                    }
                    d dVar18 = null;
                    float f7 = 0.0f;
                    int i32 = 0;
                    while (i32 < size) {
                        d dVar19 = (d) arrayList3.get(i32);
                        float[] fArr = dVar19.f2571d0;
                        c[] cVarArr6 = dVar19.J;
                        float f8 = fArr[i3];
                        if (f8 >= f4) {
                            arrayList2 = arrayList3;
                            i11 = size;
                            if (f8 == f4) {
                                cVar.e(cVarArr6[i5 + 1].f2564i, cVarArr6[i5].f2564i, 0, 8);
                                i32 = i32;
                                f = f4;
                                f7 = f7;
                                i14 = i14;
                            } else {
                                float f9 = f7;
                                if (dVar18 != null) {
                                    c[] cVarArr7 = dVar18.J;
                                    hVar7 = cVarArr7[i5].f2564i;
                                    int i33 = i5 + 1;
                                    hVar8 = cVarArr7[i33].f2564i;
                                    hVar9 = cVarArr6[i5].f2564i;
                                    hVar10 = cVarArr6[i33].f2564i;
                                    bVarL = cVar.l();
                                    f3 = f4;
                                    bVarL.b = f3;
                                    f = f3;
                                    if (f6 != f3 || f9 == f8) {
                                        bVarL.f2449d.g(hVar7, 1.0f);
                                        bVarL.f2449d.g(hVar8, -1.0f);
                                        bVarL.f2449d.g(hVar10, 1.0f);
                                        bVarL.f2449d.g(hVar9, -1.0f);
                                    } else if (f9 == f) {
                                        bVarL.f2449d.g(hVar7, 1.0f);
                                        bVarL.f2449d.g(hVar8, -1.0f);
                                    } else if (f8 == f4) {
                                        bVarL.f2449d.g(hVar9, 1.0f);
                                        bVarL.f2449d.g(hVar10, -1.0f);
                                    } else {
                                        float f10 = (f9 / f6) / (f8 / f6);
                                        bVarL.f2449d.g(hVar7, 1.0f);
                                        bVarL.f2449d.g(hVar8, -1.0f);
                                        bVarL.f2449d.g(hVar10, f10);
                                        bVarL.f2449d.g(hVar9, -f10);
                                    }
                                    cVar.c(bVarL);
                                } else {
                                    i32 = i32;
                                    f = f4;
                                    i14 = i14;
                                }
                                f7 = f8;
                                dVar18 = dVar19;
                            }
                        } else {
                            if (bVar.f2556p) {
                                arrayList2 = arrayList3;
                                i11 = size;
                                cVar.e(cVarArr6[i5 + 1].f2564i, cVarArr6[i5].f2564i, 0, 4);
                            } else {
                                f8 = 1.0f;
                                arrayList2 = arrayList3;
                                i11 = size;
                                if (f8 == f4) {
                                    cVar.e(cVarArr6[i5 + 1].f2564i, cVarArr6[i5].f2564i, 0, 8);
                                } else {
                                    float f11 = f7;
                                    if (dVar18 != null) {
                                        c[] cVarArr8 = dVar18.J;
                                        hVar7 = cVarArr8[i5].f2564i;
                                        int i34 = i5 + 1;
                                        hVar8 = cVarArr8[i34].f2564i;
                                        hVar9 = cVarArr6[i5].f2564i;
                                        hVar10 = cVarArr6[i34].f2564i;
                                        bVarL = cVar.l();
                                        f3 = f4;
                                        bVarL.b = f3;
                                        f = f3;
                                        if (f6 != f3) {
                                            bVarL.f2449d.g(hVar7, 1.0f);
                                            bVarL.f2449d.g(hVar8, -1.0f);
                                            bVarL.f2449d.g(hVar10, 1.0f);
                                            bVarL.f2449d.g(hVar9, -1.0f);
                                        } else {
                                            bVarL.f2449d.g(hVar7, 1.0f);
                                            bVarL.f2449d.g(hVar8, -1.0f);
                                            bVarL.f2449d.g(hVar10, 1.0f);
                                            bVarL.f2449d.g(hVar9, -1.0f);
                                        }
                                        cVar.c(bVarL);
                                    } else {
                                        i32 = i32;
                                        f = f4;
                                        i14 = i14;
                                    }
                                    f7 = f8;
                                    dVar18 = dVar19;
                                }
                            }
                            i32 = i32;
                            f = f4;
                            f7 = f7;
                            i14 = i14;
                        }
                        i32++;
                        i14 = i14;
                        arrayList3 = arrayList2;
                        size = i11;
                        f4 = f;
                    }
                }
                i7 = i14;
                if (dVar14 == null || !(dVar14 == dVar15 || z17)) {
                    dVar = dVar15;
                    if (!z3 || dVar14 == null) {
                        int i35 = 8;
                        if (z4 && dVar14 != null) {
                            int i36 = bVar.f2550j;
                            boolean z18 = i36 > 0 && bVar.f2549i == i36;
                            d dVar20 = dVar14;
                            d dVar21 = dVar20;
                            while (dVar21 != null) {
                                c[] cVarArr9 = dVar21.J;
                                d dVar22 = dVar21.f2574f0[i3];
                                while (dVar22 != null && dVar22.Z == i35) {
                                    dVar22 = dVar22.f2574f0[i3];
                                }
                                if (dVar21 == dVar14 || dVar21 == dVar || dVar22 == null) {
                                    dVar20 = dVar20;
                                } else {
                                    if (dVar22 == dVar) {
                                        dVar22 = null;
                                    }
                                    c cVar19 = cVarArr9[i5];
                                    h hVar12 = cVar19.f2564i;
                                    int i37 = i5 + 1;
                                    h hVar13 = dVar20.J[i37].f2564i;
                                    int iD2 = cVar19.d();
                                    int iD3 = cVarArr9[i37].d();
                                    if (dVar22 != null) {
                                        cVar3 = dVar22.J[i5];
                                        hVar2 = cVar3.f2564i;
                                        c cVar20 = cVar3.f;
                                        hVar = cVar20 != null ? cVar20.f2564i : null;
                                    } else {
                                        c cVar21 = dVar.J[i5];
                                        h hVar14 = cVar21 != null ? cVar21.f2564i : null;
                                        hVar = cVarArr9[i37].f2564i;
                                        cVar3 = cVar21;
                                        hVar2 = hVar14;
                                    }
                                    if (cVar3 != null) {
                                        iD3 += cVar3.d();
                                    }
                                    int iD4 = iD2 + dVar20.J[i37].d();
                                    d dVar23 = dVar22;
                                    h hVar15 = hVar2;
                                    int i38 = z18 ? 8 : 4;
                                    if (hVar12 == null || hVar13 == null || hVar15 == null || hVar == null) {
                                        dVar2 = dVar23;
                                    } else {
                                        dVar2 = dVar23;
                                        cVar.b(hVar12, hVar13, iD4, 0.5f, hVar15, hVar, iD3, i38);
                                    }
                                    dVar22 = dVar2;
                                }
                                if (dVar21.Z != 8) {
                                    dVar20 = dVar21;
                                }
                                dVar21 = dVar22;
                                dVar20 = dVar20;
                                i35 = 8;
                            }
                            cVar2 = cVar;
                            c cVar22 = dVar14.J[i5];
                            c cVar23 = cVarArr2[i5].f;
                            int i39 = i5 + 1;
                            c cVar24 = dVar.J[i39];
                            c cVar25 = dVar13.J[i39].f;
                            if (cVar23 != null) {
                                if (dVar14 != dVar) {
                                    cVar2.e(cVar22.f2564i, cVar23.f2564i, cVar22.d(), 5);
                                } else if (cVar25 != null) {
                                    cVar2.b(cVar22.f2564i, cVar23.f2564i, cVar22.d(), 0.5f, cVar24.f2564i, cVar25.f2564i, cVar24.d(), 5);
                                }
                            }
                            if (cVar25 != null && dVar14 != dVar) {
                                cVar2.e(cVar24.f2564i, cVar25.f2564i, -cVar24.d(), 5);
                            }
                        }
                        if ((z3 || z4) && dVar14 != null && dVar14 != dVar) {
                            cVarArr = dVar14.J;
                            c cVar26 = cVarArr[i5];
                            i10 = i5 + 1;
                            cVar5 = dVar.J[i10];
                            cVar6 = cVar26.f;
                            if (cVar6 != null) {
                                hVar5 = cVar6.f2564i;
                            } else {
                                hVar5 = null;
                            }
                            cVar7 = cVar5.f;
                            if (cVar7 != null) {
                                hVar6 = cVar7.f2564i;
                            } else {
                                hVar6 = null;
                            }
                            if (dVar13 != dVar) {
                                c cVar27 = dVar13.J[i10].f;
                                hVar6 = cVar27 != null ? cVar27.f2564i : null;
                            }
                            if (dVar14 == dVar) {
                                cVar5 = cVarArr[i10];
                            }
                            if (hVar5 == null && hVar6 != null) {
                                cVar2.b(cVar26.f2564i, hVar5, cVar26.d(), 0.5f, hVar6, cVar5.f2564i, dVar.J[i10].d(), 5);
                            }
                        }
                    } else {
                        int i40 = bVar.f2550j;
                        boolean z19 = i40 > 0 && bVar.f2549i == i40;
                        d dVar24 = dVar14;
                        d dVar25 = dVar24;
                        while (dVar24 != null) {
                            c[] cVarArr10 = dVar24.J;
                            d dVar26 = dVar24.f2574f0[i3];
                            while (true) {
                                if (dVar26 == null) {
                                    i8 = 8;
                                    break;
                                }
                                i8 = 8;
                                if (dVar26.Z != 8) {
                                    break;
                                } else {
                                    dVar26 = dVar26.f2574f0[i3];
                                }
                            }
                            if (dVar26 != null || dVar24 == dVar) {
                                c cVar28 = cVarArr10[i5];
                                h hVar16 = cVar28.f2564i;
                                c cVar29 = cVar28.f;
                                h hVar17 = cVar29 != null ? cVar29.f2564i : null;
                                if (dVar25 != dVar24) {
                                    hVar17 = dVar25.J[i5 + 1].f2564i;
                                } else if (dVar24 == dVar14 && dVar25 == dVar24) {
                                    c cVar30 = cVarArr2[i5].f;
                                    hVar17 = cVar30 != null ? cVar30.f2564i : null;
                                }
                                int iD5 = cVar28.d();
                                int i41 = i5 + 1;
                                int iD6 = cVarArr10[i41].d();
                                if (dVar26 != null) {
                                    cVar4 = dVar26.J[i5];
                                    hVar3 = cVar4.f2564i;
                                    hVar4 = cVarArr10[i41].f2564i;
                                } else {
                                    cVar4 = dVar13.J[i41].f;
                                    hVar3 = cVar4 != null ? cVar4.f2564i : null;
                                    hVar4 = cVarArr10[i41].f2564i;
                                }
                                if (cVar4 != null) {
                                    iD6 += cVar4.d();
                                }
                                if (dVar25 != null) {
                                    iD5 += dVar25.J[i41].d();
                                }
                                if (hVar16 == null || hVar17 == null || hVar3 == null || hVar4 == null) {
                                    dVar3 = dVar26;
                                    i9 = 8;
                                } else {
                                    if (dVar24 == dVar14) {
                                        iD5 = dVar14.J[i5].d();
                                    }
                                    if (dVar24 == dVar) {
                                        iD6 = dVar.J[i41].d();
                                    }
                                    dVar3 = dVar26;
                                    i9 = 8;
                                    cVar.b(hVar16, hVar17, iD5, 0.5f, hVar3, hVar4, iD6, z19 ? 8 : 5);
                                }
                            } else {
                                dVar3 = dVar26;
                                i9 = i8;
                            }
                            if (dVar24.Z != i9) {
                                dVar25 = dVar24;
                            }
                            dVar24 = dVar3;
                            dVar25 = dVar25;
                            cVarArr2 = cVarArr2;
                        }
                    }
                } else {
                    c cVar31 = cVarArr2[i5];
                    int i42 = i5 + 1;
                    c cVar32 = dVar13.J[i42];
                    c cVar33 = cVar31.f;
                    h hVar18 = cVar33 != null ? cVar33.f2564i : null;
                    c cVar34 = cVar32.f;
                    h hVar19 = cVar34 != null ? cVar34.f2564i : null;
                    c cVar35 = dVar14.J[i5];
                    c cVar36 = dVar15.J[i42];
                    if (hVar18 == null || hVar19 == null) {
                        dVar = dVar15;
                    } else {
                        h hVar20 = hVar18;
                        dVar = dVar15;
                        cVar.b(cVar35.f2564i, hVar20, cVar35.d(), i3 == 0 ? dVar16.W : dVar16.X, hVar19, cVar36.f2564i, cVar36.d(), 7);
                    }
                }
                cVar2 = cVar;
                if (z3) {
                    cVarArr = dVar14.J;
                    c cVar210 = cVarArr[i5];
                    i10 = i5 + 1;
                    cVar5 = dVar.J[i10];
                    cVar6 = cVar210.f;
                    if (cVar6 != null) {
                        hVar5 = cVar6.f2564i;
                    } else {
                        hVar5 = null;
                    }
                    cVar7 = cVar5.f;
                    if (cVar7 != null) {
                        hVar6 = cVar7.f2564i;
                    } else {
                        hVar6 = null;
                    }
                    if (dVar13 != dVar) {
                        c cVar211 = dVar13.J[i10].f;
                        hVar6 = cVar211 != null ? cVar211.f2564i : null;
                    }
                    if (dVar14 == dVar) {
                        cVar5 = cVarArr[i10];
                    }
                    if (hVar5 == null) {
                    }
                } else {
                    cVarArr = dVar14.J;
                    c cVar212 = cVarArr[i5];
                    i10 = i5 + 1;
                    cVar5 = dVar.J[i10];
                    cVar6 = cVar212.f;
                    if (cVar6 != null) {
                        hVar5 = cVar6.f2564i;
                    } else {
                        hVar5 = null;
                    }
                    cVar7 = cVar5.f;
                    if (cVar7 != null) {
                        hVar6 = cVar7.f2564i;
                    } else {
                        hVar6 = null;
                    }
                    if (dVar13 != dVar) {
                        c cVar213 = dVar13.J[i10].f;
                        hVar6 = cVar213 != null ? cVar213.f2564i : null;
                    }
                    if (dVar14 == dVar) {
                        cVar5 = cVarArr[i10];
                    }
                    if (hVar5 == null) {
                    }
                }
            } else {
                i7 = i14;
            }
            i15 = i6 + 1;
            eVar2 = eVar;
            i14 = i7;
        }
    }

    public static void b(e eVar, n.c cVar, d dVar) {
        dVar.f2581j = -1;
        c cVar2 = dVar.F;
        int[] iArr = dVar.f2580i0;
        c cVar3 = dVar.E;
        c cVar4 = dVar.C;
        c cVar5 = dVar.D;
        c cVar6 = dVar.B;
        dVar.f2582k = -1;
        int[] iArr2 = eVar.f2580i0;
        if (iArr2[0] != 2 && iArr[0] == 4) {
            int i3 = cVar6.f2562g;
            int iL = eVar.l() - cVar5.f2562g;
            cVar6.f2564i = cVar.k(cVar6);
            cVar5.f2564i = cVar.k(cVar5);
            cVar.d(cVar6.f2564i, i3);
            cVar.d(cVar5.f2564i, iL);
            dVar.f2581j = 2;
            dVar.R = i3;
            int i4 = iL - i3;
            dVar.N = i4;
            int i5 = dVar.U;
            if (i4 < i5) {
                dVar.N = i5;
            }
        }
        if (iArr2[1] == 2 || iArr[1] != 4) {
            return;
        }
        int i6 = cVar4.f2562g;
        int i7 = eVar.i() - cVar3.f2562g;
        cVar4.f2564i = cVar.k(cVar4);
        cVar3.f2564i = cVar.k(cVar3);
        cVar.d(cVar4.f2564i, i6);
        cVar.d(cVar3.f2564i, i7);
        if (dVar.T > 0 || dVar.Z == 8) {
            h hVarK = cVar.k(cVar2);
            cVar2.f2564i = hVarK;
            cVar.d(hVarK, dVar.T + i6);
        }
        dVar.f2582k = 2;
        dVar.S = i6;
        int i8 = i7 - i6;
        dVar.O = i8;
        int i9 = dVar.V;
        if (i8 < i9) {
            dVar.O = i9;
        }
    }

    public static final boolean c(int i3, int i4) {
        return (i3 & i4) == i4;
    }
}
