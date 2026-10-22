package o;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import p.h;
import p.n;
import p.o;

/* JADX INFO: loaded from: classes.dex */
public final class e extends d {
    public WeakReference A0;
    public WeakReference B0;
    public p.b C0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public ArrayList f2598j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public androidx.fragment.app.f f2599k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public p.e f2600l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public q.f f2601m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public boolean f2602n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public n.c f2603o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public int f2604p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public int f2605q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public int f2606r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public int f2607s0;
    public b[] t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public b[] f2608u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public int f2609v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public boolean f2610w0;
    public boolean x0;
    public WeakReference y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public WeakReference f2611z0;

    public static void L(d dVar, q.f fVar, p.b bVar) {
        int i3;
        int i4;
        if (fVar == null) {
            return;
        }
        int[] iArr = dVar.f2580i0;
        int[] iArr2 = dVar.f2585n;
        bVar.f2639a = iArr[0];
        bVar.b = iArr[1];
        bVar.f2640c = dVar.l();
        bVar.f2641d = dVar.i();
        bVar.f2645i = false;
        bVar.f2646j = 0;
        boolean z2 = bVar.f2639a == 3;
        boolean z3 = bVar.b == 3;
        boolean z4 = z2 && dVar.P > 0.0f;
        boolean z5 = z3 && dVar.P > 0.0f;
        if (z2 && dVar.o(0) && dVar.f2583l == 0 && !z4) {
            bVar.f2639a = 2;
            if (z3 && dVar.f2584m == 0) {
                bVar.f2639a = 1;
            }
            z2 = false;
        }
        if (z3 && dVar.o(1) && dVar.f2584m == 0 && !z5) {
            bVar.b = 2;
            if (z2 && dVar.f2583l == 0) {
                bVar.b = 1;
            }
            z3 = false;
        }
        if (dVar.u()) {
            bVar.f2639a = 1;
            z2 = false;
        }
        if (dVar.v()) {
            bVar.b = 1;
            z3 = false;
        }
        if (z4) {
            if (iArr2[0] == 4) {
                bVar.f2639a = 1;
            } else if (!z3) {
                if (bVar.b == 1) {
                    i4 = bVar.f2641d;
                } else {
                    bVar.f2639a = 2;
                    fVar.b(dVar, bVar);
                    i4 = bVar.f;
                }
                bVar.f2639a = 1;
                int i5 = dVar.Q;
                if (i5 == 0 || i5 == -1) {
                    bVar.f2640c = (int) (dVar.P * i4);
                } else {
                    bVar.f2640c = (int) (dVar.P / i4);
                }
            }
        }
        if (z5) {
            if (iArr2[1] == 4) {
                bVar.b = 1;
            } else if (!z2) {
                if (bVar.f2639a == 1) {
                    i3 = bVar.f2640c;
                } else {
                    bVar.b = 2;
                    fVar.b(dVar, bVar);
                    i3 = bVar.f2642e;
                }
                bVar.b = 1;
                int i6 = dVar.Q;
                if (i6 == 0 || i6 == -1) {
                    bVar.f2641d = (int) (i3 / dVar.P);
                } else {
                    bVar.f2641d = (int) (i3 * dVar.P);
                }
            }
        }
        fVar.b(dVar, bVar);
        dVar.D(bVar.f2642e);
        dVar.A(bVar.f);
        dVar.f2596y = bVar.f2644h;
        int i7 = bVar.f2643g;
        dVar.T = i7;
        dVar.f2596y = i7 > 0;
        bVar.f2646j = 0;
    }

    @Override // o.d
    public final void E(boolean z2, boolean z3) {
        super.E(z2, z3);
        int size = this.f2598j0.size();
        for (int i3 = 0; i3 < size; i3++) {
            ((d) this.f2598j0.get(i3)).E(z2, z3);
        }
    }

    public final void G(d dVar, int i3) {
        if (i3 == 0) {
            int i4 = this.f2606r0 + 1;
            b[] bVarArr = this.f2608u0;
            if (i4 >= bVarArr.length) {
                this.f2608u0 = (b[]) Arrays.copyOf(bVarArr, bVarArr.length * 2);
            }
            b[] bVarArr2 = this.f2608u0;
            int i5 = this.f2606r0;
            bVarArr2[i5] = new b(dVar, 0, this.f2602n0);
            this.f2606r0 = i5 + 1;
            return;
        }
        if (i3 == 1) {
            int i6 = this.f2607s0 + 1;
            b[] bVarArr3 = this.t0;
            if (i6 >= bVarArr3.length) {
                this.t0 = (b[]) Arrays.copyOf(bVarArr3, bVarArr3.length * 2);
            }
            b[] bVarArr4 = this.t0;
            int i7 = this.f2607s0;
            bVarArr4[i7] = new b(dVar, 1, this.f2602n0);
            this.f2607s0 = i7 + 1;
        }
    }

    public final void H(n.c cVar) {
        e eVar;
        n.c cVar2;
        boolean zM = M(64);
        b(cVar, zM);
        int size = this.f2598j0.size();
        boolean z2 = false;
        for (int i3 = 0; i3 < size; i3++) {
            d dVar = (d) this.f2598j0.get(i3);
            boolean[] zArr = dVar.L;
            zArr[0] = false;
            zArr[1] = false;
            if (dVar instanceof a) {
                z2 = true;
            }
        }
        if (z2) {
            for (int i4 = 0; i4 < size; i4++) {
                d dVar2 = (d) this.f2598j0.get(i4);
                if (dVar2 instanceof a) {
                    a aVar = (a) dVar2;
                    for (int i5 = 0; i5 < aVar.f2538k0; i5++) {
                        d dVar3 = aVar.f2537j0[i5];
                        int i6 = aVar.f2539l0;
                        if (i6 == 0 || i6 == 1) {
                            dVar3.L[0] = true;
                        } else if (i6 == 2 || i6 == 3) {
                            dVar3.L[1] = true;
                        }
                    }
                }
            }
        }
        for (int i7 = 0; i7 < size; i7++) {
            d dVar4 = (d) this.f2598j0.get(i7);
            dVar4.getClass();
            if (dVar4 instanceof f) {
                dVar4.b(cVar, zM);
            }
        }
        if (n.c.f2451p) {
            HashSet<d> hashSet = new HashSet();
            for (int i8 = 0; i8 < size; i8++) {
                d dVar5 = (d) this.f2598j0.get(i8);
                dVar5.getClass();
                if (!(dVar5 instanceof f)) {
                    hashSet.add(dVar5);
                }
            }
            eVar = this;
            cVar2 = cVar;
            eVar.a(this, cVar2, hashSet, this.f2580i0[0] == 2 ? 0 : 1, false);
            for (d dVar6 : hashSet) {
                g.b(this, cVar2, dVar6);
                dVar6.b(cVar2, zM);
            }
        } else {
            eVar = this;
            cVar2 = cVar;
            for (int i9 = 0; i9 < size; i9++) {
                d dVar7 = (d) eVar.f2598j0.get(i9);
                if (dVar7 instanceof e) {
                    int[] iArr = dVar7.f2580i0;
                    int i10 = iArr[0];
                    int i11 = iArr[1];
                    if (i10 == 2) {
                        dVar7.B(1);
                    }
                    if (i11 == 2) {
                        dVar7.C(1);
                    }
                    dVar7.b(cVar2, zM);
                    if (i10 == 2) {
                        dVar7.B(i10);
                    }
                    if (i11 == 2) {
                        dVar7.C(i11);
                    }
                } else {
                    g.b(this, cVar2, dVar7);
                    if (!(dVar7 instanceof f)) {
                        dVar7.b(cVar2, zM);
                    }
                }
            }
        }
        if (eVar.f2606r0 > 0) {
            g.a(this, cVar2, null, 0);
        }
        if (eVar.f2607s0 > 0) {
            g.a(this, cVar2, null, 1);
        }
    }

    public final void I(c cVar) {
        WeakReference weakReference = this.y0;
        if (weakReference == null || weakReference.get() == null || cVar.c() > ((c) this.y0.get()).c()) {
            this.y0 = new WeakReference(cVar);
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00a4 A[PHI: r16
      0x00a4: PHI (r16v3 int) = (r16v0 int), (r16v4 int) binds: [B:32:0x00a1, B:27:0x0083] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    public final boolean J(int i3, boolean z2) {
        int i4;
        int i5;
        boolean z3;
        boolean z4;
        p.e eVar = this.f2600l0;
        ArrayList arrayList = eVar.f2652e;
        e eVar2 = eVar.f2649a;
        int iH = eVar2.h(0);
        int[] iArr = eVar2.f2580i0;
        int iH2 = eVar2.h(1);
        int iM = eVar2.m();
        int iN = eVar2.n();
        if (z2 && (iH == 2 || iH2 == 2)) {
            int size = arrayList.size();
            int i6 = 0;
            while (true) {
                if (i6 >= size) {
                    z4 = z2;
                    break;
                }
                Object obj = arrayList.get(i6);
                i6++;
                o oVar = (o) obj;
                if (oVar.f == i3 && !oVar.k()) {
                    z4 = false;
                    break;
                }
            }
            if (i3 == 0) {
                if (z4 && iH == 2) {
                    eVar2.B(1);
                    eVar2.D(eVar.d(eVar2, 0));
                    eVar2.f2570d.f2678e.d(eVar2.l());
                }
            } else if (z4 && iH2 == 2) {
                eVar2.C(1);
                eVar2.A(eVar.d(eVar2, 1));
                eVar2.f2572e.f2678e.d(eVar2.i());
            }
        }
        if (i3 == 0) {
            i4 = 0;
            int i7 = iArr[0];
            if (i7 == 1 || i7 == 4) {
                int iL = eVar2.l() + iM;
                eVar2.f2570d.f2681i.d(iL);
                eVar2.f2570d.f2678e.d(iL - iM);
                i5 = 1;
            } else {
                i5 = i4;
            }
        } else {
            i4 = 0;
            int i8 = iArr[1];
            if (i8 == 1 || i8 == 4) {
                int i9 = eVar2.i() + iN;
                eVar2.f2572e.f2681i.d(i9);
                eVar2.f2572e.f2678e.d(i9 - iN);
                i5 = 1;
            } else {
                i5 = i4;
            }
        }
        eVar.g();
        int size2 = arrayList.size();
        int i10 = i4;
        while (i10 < size2) {
            Object obj2 = arrayList.get(i10);
            i10++;
            o oVar2 = (o) obj2;
            if (oVar2.f == i3 && (oVar2.b != eVar2 || oVar2.f2679g)) {
                oVar2.e();
            }
        }
        int size3 = arrayList.size();
        int i11 = i4;
        while (i11 < size3) {
            Object obj3 = arrayList.get(i11);
            i11++;
            o oVar3 = (o) obj3;
            if (oVar3.f == i3 && (i5 != 0 || oVar3.b != eVar2)) {
                if (!oVar3.f2680h.f2662j || !oVar3.f2681i.f2662j || (!(oVar3 instanceof p.c) && !oVar3.f2678e.f2662j)) {
                    z3 = i4;
                    eVar2.B(iH);
                    eVar2.C(iH2);
                    return z3;
                }
            }
        }
        z3 = 1;
        eVar2.B(iH);
        eVar2.C(iH2);
        return z3;
    }

    /* JADX WARN: Code duplicated, block: B:331:0x05ee  */
    /* JADX WARN: Code duplicated, block: B:333:0x05f7  */
    /* JADX WARN: Code duplicated, block: B:341:0x0611  */
    /* JADX WARN: Code duplicated, block: B:342:0x0618  */
    /* JADX WARN: Code duplicated, block: B:348:0x062c  */
    /* JADX WARN: Code duplicated, block: B:354:0x0645  */
    /* JADX WARN: Code duplicated, block: B:357:0x064b  */
    /* JADX WARN: Code duplicated, block: B:359:0x0653 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:362:0x0661  */
    /* JADX WARN: Code duplicated, block: B:368:0x0671  */
    /* JADX WARN: Code duplicated, block: B:372:0x067c  */
    /* JADX WARN: Code duplicated, block: B:375:0x0687 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:377:0x068d  */
    /* JADX WARN: Code duplicated, block: B:380:0x0695  */
    /* JADX WARN: Code duplicated, block: B:384:0x069c  */
    /* JADX WARN: Code duplicated, block: B:387:0x06a6  */
    /* JADX WARN: Code duplicated, block: B:389:0x06b2  */
    /* JADX WARN: Code duplicated, block: B:393:0x06c3  */
    /* JADX WARN: Code duplicated, block: B:396:0x06d5 A[Catch: Exception -> 0x06e3, LOOP:14: B:395:0x06d3->B:396:0x06d5, LOOP_END, TryCatch #6 {Exception -> 0x06e3, blocks: (B:394:0x06c7, B:396:0x06d5, B:399:0x06ec), top: B:521:0x06c7 }] */
    /* JADX WARN: Code duplicated, block: B:402:0x06f3 A[Catch: Exception -> 0x0720, TryCatch #0 {Exception -> 0x0720, blocks: (B:400:0x06ef, B:402:0x06f3, B:404:0x06f9), top: B:509:0x06ef }] */
    /* JADX WARN: Code duplicated, block: B:416:0x0726  */
    /* JADX WARN: Code duplicated, block: B:419:0x072e A[Catch: Exception -> 0x0716, TryCatch #3 {Exception -> 0x0716, blocks: (B:408:0x070f, B:417:0x072a, B:419:0x072e, B:421:0x0734, B:422:0x074e, B:424:0x0752, B:426:0x0758, B:430:0x076e, B:433:0x0779, B:435:0x077d, B:437:0x0783), top: B:515:0x070f }] */
    /* JADX WARN: Code duplicated, block: B:424:0x0752 A[Catch: Exception -> 0x0716, TryCatch #3 {Exception -> 0x0716, blocks: (B:408:0x070f, B:417:0x072a, B:419:0x072e, B:421:0x0734, B:422:0x074e, B:424:0x0752, B:426:0x0758, B:430:0x076e, B:433:0x0779, B:435:0x077d, B:437:0x0783), top: B:515:0x070f }] */
    /* JADX WARN: Code duplicated, block: B:435:0x077d A[Catch: Exception -> 0x0716, TryCatch #3 {Exception -> 0x0716, blocks: (B:408:0x070f, B:417:0x072a, B:419:0x072e, B:421:0x0734, B:422:0x074e, B:424:0x0752, B:426:0x0758, B:430:0x076e, B:433:0x0779, B:435:0x077d, B:437:0x0783), top: B:515:0x070f }] */
    /* JADX WARN: Code duplicated, block: B:449:0x07a8  */
    /* JADX WARN: Code duplicated, block: B:455:0x07cd  */
    /* JADX WARN: Code duplicated, block: B:457:0x07e5 A[LOOP:15: B:456:0x07e3->B:457:0x07e5, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:458:0x07f5  */
    /* JADX WARN: Code duplicated, block: B:460:0x07fb A[LOOP:17: B:459:0x07f9->B:460:0x07fb, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:462:0x080b  */
    /* JADX WARN: Code duplicated, block: B:479:0x0870  */
    /* JADX WARN: Code duplicated, block: B:482:0x0881  */
    /* JADX WARN: Code duplicated, block: B:483:0x088d  */
    /* JADX WARN: Code duplicated, block: B:486:0x08a0  */
    /* JADX WARN: Code duplicated, block: B:487:0x08a8  */
    /* JADX WARN: Code duplicated, block: B:489:0x08ad  */
    /* JADX WARN: Code duplicated, block: B:491:0x08b4 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:494:0x08bc  */
    /* JADX WARN: Code duplicated, block: B:497:0x08ca A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:502:0x08de  */
    /* JADX WARN: Code duplicated, block: B:506:0x08f0  */
    /* JADX WARN: Code duplicated, block: B:566:0x06b7 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v86 */
    /* JADX WARN: Type inference failed for: r0v87 */
    /* JADX WARN: Type inference failed for: r0v88 */
    /* JADX WARN: Type inference failed for: r0v89 */
    /* JADX WARN: Type inference failed for: r0v90 */
    /* JADX WARN: Type inference failed for: r0v91 */
    /* JADX WARN: Type inference failed for: r0v92 */
    /* JADX WARN: Type inference failed for: r0v93 */
    /* JADX WARN: Type inference failed for: r0v94 */
    /* JADX WARN: Type inference failed for: r10v10, types: [o.d] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v37 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v34 */
    /* JADX WARN: Type inference failed for: r12v35 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r12v8 */
    /* JADX WARN: Type inference failed for: r13v0, types: [o.c] */
    /* JADX WARN: Type inference failed for: r15v14, types: [o.d] */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r23v0 */
    /* JADX WARN: Type inference failed for: r23v1 */
    /* JADX WARN: Type inference failed for: r23v10 */
    /* JADX WARN: Type inference failed for: r23v11 */
    /* JADX WARN: Type inference failed for: r23v12 */
    /* JADX WARN: Type inference failed for: r23v13 */
    /* JADX WARN: Type inference failed for: r23v14 */
    /* JADX WARN: Type inference failed for: r23v15 */
    /* JADX WARN: Type inference failed for: r23v16 */
    /* JADX WARN: Type inference failed for: r23v17 */
    /* JADX WARN: Type inference failed for: r23v18 */
    /* JADX WARN: Type inference failed for: r23v19 */
    /* JADX WARN: Type inference failed for: r23v2 */
    /* JADX WARN: Type inference failed for: r23v20 */
    /* JADX WARN: Type inference failed for: r23v21 */
    /* JADX WARN: Type inference failed for: r23v22 */
    /* JADX WARN: Type inference failed for: r23v23 */
    /* JADX WARN: Type inference failed for: r23v24 */
    /* JADX WARN: Type inference failed for: r23v25 */
    /* JADX WARN: Type inference failed for: r23v26 */
    /* JADX WARN: Type inference failed for: r23v27 */
    /* JADX WARN: Type inference failed for: r23v3 */
    /* JADX WARN: Type inference failed for: r23v4 */
    /* JADX WARN: Type inference failed for: r23v5 */
    /* JADX WARN: Type inference failed for: r23v6 */
    /* JADX WARN: Type inference failed for: r23v7 */
    /* JADX WARN: Type inference failed for: r23v8 */
    /* JADX WARN: Type inference failed for: r23v9 */
    /* JADX WARN: Type inference failed for: r24v5 */
    /* JADX WARN: Type inference failed for: r24v7 */
    /* JADX WARN: Type inference failed for: r24v8 */
    /* JADX WARN: Type inference failed for: r24v9 */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object, n.c] */
    /* JADX WARN: Type inference failed for: r31v0, types: [o.d, o.e] */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r3v18 */
    /* JADX WARN: Type inference failed for: r3v33, types: [int] */
    /* JADX WARN: Type inference failed for: r4v67, types: [int] */
    /* JADX WARN: Type inference failed for: r5v54, types: [int] */
    /* JADX WARN: Type inference failed for: r6v103 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v40 */
    /* JADX WARN: Type inference failed for: r6v41, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v98 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v21, types: [o.d] */
    /* JADX WARN: Type inference failed for: r7v30, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v41 */
    /* JADX WARN: Type inference failed for: r7v42 */
    /* JADX WARN: Type inference failed for: r7v43 */
    /* JADX WARN: Type inference failed for: r7v44 */
    /* JADX WARN: Type inference failed for: r7v45 */
    /* JADX WARN: Type inference failed for: r7v46 */
    /* JADX WARN: Type inference failed for: r7v48, types: [p.n] */
    /* JADX WARN: Type inference failed for: r7v59 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9, types: [boolean] */
    /* JADX WARN: Type inference failed for: r8v10, types: [p.n] */
    /* JADX WARN: Type inference failed for: r8v33, types: [int] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void K() {
        int i3;
        ?? r18;
        int i4;
        int i5;
        int i6;
        c cVar;
        ?? r23;
        int i7;
        ?? r24;
        boolean z2;
        boolean z3;
        char c3;
        boolean z4;
        int i8;
        int i9;
        boolean zM;
        ?? r12;
        int i10;
        boolean z5;
        ?? r25;
        boolean z6;
        boolean z7;
        c cVar2;
        ?? r26;
        boolean[] zArr;
        int i11;
        boolean z8;
        int iMax;
        ?? r7;
        ?? r16;
        int iMax2;
        boolean z9;
        ?? r3;
        ?? r4;
        ?? r13;
        ?? r5;
        ?? r6;
        boolean zM2;
        int size;
        int i12;
        ?? r27;
        int i13;
        ?? r28;
        WeakReference weakReference;
        WeakReference weakReference2;
        WeakReference weakReference3;
        ?? r29;
        WeakReference weakReference4;
        ?? r8;
        d dVar;
        ?? r210;
        int i14;
        int i15;
        int i16;
        char c4;
        ?? r9;
        ?? r10;
        int i17;
        int iL;
        int i18;
        int i19;
        int size2;
        int i20;
        int i21;
        ?? r11;
        ?? r14;
        int iB;
        int iB2;
        n nVar;
        n nVar2;
        boolean z10;
        int i22;
        boolean z11;
        ?? r15 = this.f2603o0;
        int i23 = 0;
        this.R = 0;
        this.S = 0;
        this.f2610w0 = false;
        this.x0 = false;
        int size3 = this.f2598j0.size();
        int iMax3 = Math.max(0, l());
        int iMax4 = Math.max(0, i());
        int[] iArr = this.f2580i0;
        int i24 = iArr[1];
        int i25 = iArr[0];
        boolean zC = g.c(this.f2609v0, 1);
        c cVar3 = this.C;
        ?? r17 = this.B;
        if (zC) {
            q.f fVar = this.f2601m0;
            int i26 = iArr[0];
            int i27 = iArr[1];
            this.f2577h = false;
            this.f2579i = false;
            ArrayList arrayList = this.K;
            int size4 = arrayList.size();
            while (i23 < size4) {
                int i28 = i23;
                c cVar4 = (c) arrayList.get(i23);
                cVar4.f2559c = false;
                cVar4.b = 0;
                i23 = i28 + 1;
                iArr = iArr;
            }
            r18 = iArr;
            ?? r19 = 0;
            ArrayList arrayList2 = this.f2598j0;
            int size5 = arrayList2.size();
            int i29 = 0;
            while (i29 < size5) {
                int i30 = i29;
                d dVar2 = (d) arrayList2.get(i29);
                dVar2.f2577h = r19;
                dVar2.f2579i = r19;
                ArrayList arrayList3 = dVar2.K;
                int i31 = iMax4;
                int i32 = 0;
                for (int size6 = arrayList3.size(); i32 < size6; size6 = size6) {
                    int i33 = i32;
                    c cVar5 = (c) arrayList3.get(i32);
                    cVar5.f2559c = false;
                    cVar5.b = 0;
                    i32 = i33 + 1;
                }
                r19 = 0;
                i29 = i30 + 1;
                iMax4 = i31;
            }
            i3 = iMax4;
            boolean z12 = this.f2602n0;
            if (i26 == 1) {
                y(r19, l());
            } else {
                r17.i(r19);
                this.R = r19;
            }
            boolean z13 = false;
            int i34 = 0;
            boolean z14 = false;
            while (true) {
                z10 = z13;
                if (i34 >= size5) {
                    break;
                }
                d dVar3 = (d) arrayList2.get(i34);
                int i35 = i34;
                if (dVar3 instanceof f) {
                    f fVar2 = (f) dVar3;
                    z11 = z14;
                    if (fVar2.f2616n0 == 1) {
                        int i36 = fVar2.f2613k0;
                        if (i36 != -1) {
                            fVar2.G(i36);
                        } else if (fVar2.f2614l0 != -1 && u()) {
                            fVar2.G(l() - fVar2.f2614l0);
                        } else if (u()) {
                            fVar2.G((int) ((fVar2.f2612j0 * l()) + 0.5f));
                        }
                        z10 = true;
                    }
                } else {
                    z11 = z14;
                    if ((dVar3 instanceof a) && ((a) dVar3).I() == 0) {
                        z13 = z10;
                        z14 = true;
                    }
                    i34 = i35 + 1;
                }
                z13 = z10;
                z14 = z11;
                i34 = i35 + 1;
            }
            boolean z15 = z14;
            if (z10) {
                int i37 = 0;
                while (i37 < size5) {
                    d dVar4 = (d) arrayList2.get(i37);
                    if (dVar4 instanceof f) {
                        f fVar3 = (f) dVar4;
                        i22 = i37;
                        if (fVar3.f2616n0 == 1) {
                            h.c(fVar3, fVar, z12);
                        }
                    } else {
                        i22 = i37;
                    }
                    i37 = i22 + 1;
                }
            }
            h.c(this, fVar, z12);
            if (z15) {
                for (int i38 = 0; i38 < size5; i38++) {
                    d dVar5 = (d) arrayList2.get(i38);
                    if (dVar5 instanceof a) {
                        a aVar = (a) dVar5;
                        if (aVar.I() == 0 && aVar.H()) {
                            h.c(aVar, fVar, z12);
                        }
                    }
                }
            }
            if (i27 == 1) {
                z(0, i());
            } else {
                cVar3.i(0);
                this.S = 0;
            }
            boolean z16 = false;
            boolean z17 = false;
            for (int i39 = 0; i39 < size5; i39++) {
                d dVar6 = (d) arrayList2.get(i39);
                boolean z18 = z16;
                if (dVar6 instanceof f) {
                    f fVar4 = (f) dVar6;
                    if (fVar4.f2616n0 == 0) {
                        int i40 = fVar4.f2613k0;
                        if (i40 != -1) {
                            fVar4.G(i40);
                        } else if (fVar4.f2614l0 != -1 && v()) {
                            fVar4.G(i() - fVar4.f2614l0);
                        } else if (v()) {
                            fVar4.G((int) ((fVar4.f2612j0 * i()) + 0.5f));
                        }
                        z17 = true;
                    }
                } else {
                    if ((dVar6 instanceof a) && ((a) dVar6).I() == 1) {
                        z16 = true;
                    }
                }
                z16 = z18;
            }
            boolean z19 = z16;
            if (z17) {
                for (int i41 = 0; i41 < size5; i41++) {
                    d dVar7 = (d) arrayList2.get(i41);
                    if (dVar7 instanceof f) {
                        f fVar5 = (f) dVar7;
                        if (fVar5.f2616n0 == 0) {
                            h.i(fVar5, fVar);
                        }
                    }
                }
            }
            h.i(this, fVar);
            if (z19) {
                for (int i42 = 0; i42 < size5; i42++) {
                    d dVar8 = (d) arrayList2.get(i42);
                    if (dVar8 instanceof a) {
                        a aVar2 = (a) dVar8;
                        if (aVar2.I() == 1 && aVar2.H()) {
                            h.i(aVar2, fVar);
                        }
                    }
                }
            }
            for (int i43 = 0; i43 < size5; i43++) {
                d dVar9 = (d) arrayList2.get(i43);
                if (dVar9.t() && h.a(dVar9)) {
                    L(dVar9, fVar, h.f2666a);
                    h.c(dVar9, fVar, z12);
                    h.i(dVar9, fVar);
                }
            }
            for (int i44 = 0; i44 < size3; i44++) {
                d dVar10 = (d) this.f2598j0.get(i44);
                if (dVar10.t() && !(dVar10 instanceof f) && !(dVar10 instanceof a)) {
                    int iH = dVar10.h(0);
                    int iH2 = dVar10.h(1);
                    if (iH != 3 || dVar10.f2583l == 1 || iH2 != 3 || dVar10.f2584m == 1) {
                        L(dVar10, this.f2601m0, new p.b());
                    }
                }
            }
        } else {
            i3 = iMax4;
            r18 = iArr;
        }
        if (size3 <= 2 || !((i25 == 2 || i24 == 2) && g.c(this.f2609v0, 1024))) {
            i4 = size3;
            i5 = i24;
            i6 = i25;
            cVar = cVar3;
            r23 = r17;
            i7 = iMax3;
        } else {
            q.f fVar6 = this.f2601m0;
            ArrayList arrayList4 = this.f2598j0;
            int size7 = arrayList4.size();
            int i45 = 0;
            while (true) {
                if (i45 < size7) {
                    d dVar11 = (d) arrayList4.get(i45);
                    ?? r20 = r18[0];
                    ?? r21 = r18[1];
                    int[] iArr2 = dVar11.f2580i0;
                    if (h.h(r20, r21, iArr2[0], iArr2[1])) {
                        i45++;
                    } else {
                        i14 = iMax3;
                        i4 = size3;
                        i15 = i24;
                        i16 = i25;
                        cVar = cVar3;
                        r210 = r17;
                    }
                } else {
                    cVar = cVar3;
                    r210 = r17;
                    int i46 = 0;
                    ArrayList arrayList5 = null;
                    ArrayList arrayList6 = null;
                    ArrayList arrayList7 = null;
                    ArrayList arrayList8 = null;
                    ArrayList arrayList9 = null;
                    ArrayList arrayList10 = null;
                    while (i46 < size7) {
                        int i47 = i46;
                        d dVar12 = (d) arrayList4.get(i46);
                        int i48 = size3;
                        ?? r22 = r18[0];
                        int i49 = i24;
                        ?? r30 = r18[1];
                        int i50 = iMax3;
                        int[] iArr3 = dVar12.f2580i0;
                        int i51 = i25;
                        if (!h.h(r22, r30, iArr3[0], iArr3[1])) {
                            L(dVar12, fVar6, this.C0);
                        }
                        boolean z20 = dVar12 instanceof f;
                        if (z20) {
                            f fVar7 = (f) dVar12;
                            if (fVar7.f2616n0 == 0) {
                                if (arrayList9 == null) {
                                    arrayList9 = new ArrayList();
                                }
                                arrayList9.add(fVar7);
                            }
                            if (fVar7.f2616n0 == 1) {
                                if (arrayList5 == null) {
                                    arrayList5 = new ArrayList();
                                }
                                arrayList5.add(fVar7);
                            }
                        }
                        if (dVar12 instanceof a) {
                            if (dVar12 instanceof a) {
                                a aVar3 = (a) dVar12;
                                if (aVar3.I() == 0) {
                                    if (arrayList6 == null) {
                                        arrayList6 = new ArrayList();
                                    }
                                    arrayList6.add(aVar3);
                                }
                                if (aVar3.I() == 1) {
                                    if (arrayList10 == null) {
                                        arrayList10 = new ArrayList();
                                    }
                                    arrayList10.add(aVar3);
                                }
                            } else {
                                a aVar4 = (a) dVar12;
                                if (arrayList6 == null) {
                                    arrayList6 = new ArrayList();
                                }
                                arrayList6.add(aVar4);
                                if (arrayList10 == null) {
                                    arrayList10 = new ArrayList();
                                }
                                arrayList10.add(aVar4);
                            }
                        }
                        if (dVar12.B.f == null && dVar12.D.f == null && !z20 && !(dVar12 instanceof a)) {
                            if (arrayList8 == null) {
                                arrayList8 = new ArrayList();
                            }
                            arrayList8.add(dVar12);
                        }
                        if (dVar12.C.f == null && dVar12.E.f == null && dVar12.F.f == null && !z20 && !(dVar12 instanceof a)) {
                            if (arrayList7 == null) {
                                arrayList7 = new ArrayList();
                            }
                            arrayList7.add(dVar12);
                        }
                        i46 = i47 + 1;
                        size3 = i48;
                        i24 = i49;
                        iMax3 = i50;
                        i25 = i51;
                    }
                    i14 = iMax3;
                    i4 = size3;
                    i15 = i24;
                    i16 = i25;
                    ArrayList arrayList11 = new ArrayList();
                    if (arrayList5 != null) {
                        int size8 = arrayList5.size();
                        int i52 = 0;
                        while (i52 < size8) {
                            Object obj = arrayList5.get(i52);
                            i52++;
                            h.b((f) obj, 0, arrayList11, null);
                        }
                    }
                    if (arrayList6 != null) {
                        int size9 = arrayList6.size();
                        int i53 = 0;
                        while (i53 < size9) {
                            Object obj2 = arrayList6.get(i53);
                            i53++;
                            a aVar5 = (a) obj2;
                            n nVarB = h.b(aVar5, 0, arrayList11, null);
                            aVar5.G(0, arrayList11, nVarB);
                            nVarB.a(arrayList11);
                        }
                    }
                    HashSet hashSet = g(2).f2558a;
                    if (hashSet != null) {
                        Iterator it = hashSet.iterator();
                        while (it.hasNext()) {
                            h.b(((c) it.next()).f2560d, 0, arrayList11, null);
                        }
                    }
                    HashSet hashSet2 = g(4).f2558a;
                    if (hashSet2 != null) {
                        Iterator it2 = hashSet2.iterator();
                        while (it2.hasNext()) {
                            h.b(((c) it2.next()).f2560d, 0, arrayList11, null);
                        }
                    }
                    HashSet hashSet3 = g(7).f2558a;
                    if (hashSet3 != null) {
                        Iterator it3 = hashSet3.iterator();
                        while (it3.hasNext()) {
                            h.b(((c) it3.next()).f2560d, 0, arrayList11, null);
                        }
                    }
                    if (arrayList8 != null) {
                        int size10 = arrayList8.size();
                        int i54 = 0;
                        while (i54 < size10) {
                            Object obj3 = arrayList8.get(i54);
                            i54++;
                            h.b((d) obj3, 0, arrayList11, null);
                        }
                    }
                    if (arrayList9 != null) {
                        int size11 = arrayList9.size();
                        int i55 = 0;
                        while (i55 < size11) {
                            Object obj4 = arrayList9.get(i55);
                            i55++;
                            h.b((f) obj4, 1, arrayList11, null);
                        }
                    }
                    if (arrayList10 != null) {
                        int size12 = arrayList10.size();
                        int i56 = 0;
                        while (i56 < size12) {
                            Object obj5 = arrayList10.get(i56);
                            i56++;
                            a aVar6 = (a) obj5;
                            n nVarB2 = h.b(aVar6, 1, arrayList11, null);
                            aVar6.G(1, arrayList11, nVarB2);
                            nVarB2.a(arrayList11);
                        }
                    }
                    HashSet hashSet4 = g(3).f2558a;
                    if (hashSet4 != null) {
                        Iterator it4 = hashSet4.iterator();
                        while (it4.hasNext()) {
                            h.b(((c) it4.next()).f2560d, 1, arrayList11, null);
                        }
                    }
                    HashSet hashSet5 = g(6).f2558a;
                    if (hashSet5 != null) {
                        Iterator it5 = hashSet5.iterator();
                        while (it5.hasNext()) {
                            h.b(((c) it5.next()).f2560d, 1, arrayList11, null);
                        }
                    }
                    HashSet hashSet6 = g(5).f2558a;
                    if (hashSet6 != null) {
                        Iterator it6 = hashSet6.iterator();
                        while (it6.hasNext()) {
                            h.b(((c) it6.next()).f2560d, 1, arrayList11, null);
                        }
                    }
                    HashSet hashSet7 = g(7).f2558a;
                    if (hashSet7 != null) {
                        Iterator it7 = hashSet7.iterator();
                        while (it7.hasNext()) {
                            h.b(((c) it7.next()).f2560d, 1, arrayList11, null);
                        }
                    }
                    if (arrayList7 != null) {
                        int size13 = arrayList7.size();
                        int i57 = 0;
                        while (i57 < size13) {
                            Object obj6 = arrayList7.get(i57);
                            i57++;
                            h.b((d) obj6, 1, arrayList11, null);
                        }
                    }
                    char c5 = 1;
                    int i58 = 0;
                    while (i58 < size7) {
                        d dVar13 = (d) arrayList4.get(i58);
                        int[] iArr4 = dVar13.f2580i0;
                        if (iArr4[0] == 3 && iArr4[c5] == 3) {
                            int i59 = dVar13.f2576g0;
                            int size14 = arrayList11.size();
                            int i60 = 0;
                            while (true) {
                                if (i60 >= size14) {
                                    nVar = null;
                                    break;
                                }
                                nVar = (n) arrayList11.get(i60);
                                if (i59 == nVar.b) {
                                    break;
                                } else {
                                    i60++;
                                }
                            }
                            int i61 = dVar13.f2578h0;
                            int size15 = arrayList11.size();
                            int i62 = 0;
                            while (true) {
                                if (i62 >= size15) {
                                    nVar2 = null;
                                    break;
                                }
                                nVar2 = (n) arrayList11.get(i62);
                                if (i61 == nVar2.b) {
                                    break;
                                } else {
                                    i62++;
                                }
                            }
                            if (nVar != null && nVar2 != null) {
                                nVar.c(0, nVar2);
                                nVar2.f2672c = 2;
                                arrayList11.remove(nVar);
                            }
                        }
                        i58++;
                        c5 = 1;
                    }
                    if (arrayList11.size() > 1) {
                        if (r18[0] == 2) {
                            int size16 = arrayList11.size();
                            int i63 = 0;
                            int i64 = 0;
                            ?? r31 = 0;
                            while (i64 < size16) {
                                Object obj7 = arrayList11.get(i64);
                                i64++;
                                ?? r32 = (n) obj7;
                                if (r32.f2672c != 1 && (iB2 = r32.b(r15, 0)) > i63) {
                                    r31 = r32;
                                    i63 = iB2;
                                }
                            }
                            c4 = 1;
                            if (r31 != 0) {
                                B(1);
                                D(i63);
                                r9 = r31;
                            }
                            if (r18[c4] == 2) {
                                size2 = arrayList11.size();
                                i20 = 0;
                                i21 = 0;
                                r11 = 0;
                                while (i21 < size2) {
                                    Object obj8 = arrayList11.get(i21);
                                    i21++;
                                    r14 = (n) obj8;
                                    if (r14.f2672c != 0 && (iB = r14.b(r15, 1)) > i20) {
                                        r11 = r14;
                                        i20 = iB;
                                    }
                                }
                                if (r11 != 0) {
                                    C(1);
                                    A(i20);
                                } else {
                                    r10 = 0;
                                }
                            } else {
                                r10 = 0;
                            }
                            if (r9 == 0 || r10 != 0) {
                                r10 = r11;
                                i6 = i16;
                                if (i6 == 2) {
                                    i17 = i14;
                                    if (i17 < l() || i17 <= 0) {
                                        iL = l();
                                    } else {
                                        D(i17);
                                        this.f2610w0 = true;
                                    }
                                    i5 = i15;
                                    if (i5 == 2) {
                                        i18 = i3;
                                        if (i18 < i() || i18 <= 0) {
                                            i19 = i();
                                        } else {
                                            A(i18);
                                            this.x0 = true;
                                        }
                                        i3 = i19;
                                        i7 = iL;
                                        z2 = true;
                                        r24 = r210;
                                    } else {
                                        i18 = i3;
                                    }
                                    i19 = i18;
                                    i3 = i19;
                                    i7 = iL;
                                    z2 = true;
                                    r24 = r210;
                                } else {
                                    i17 = i14;
                                }
                                iL = i17;
                                i5 = i15;
                                if (i5 == 2) {
                                    i18 = i3;
                                    if (i18 < i()) {
                                    }
                                    i19 = i();
                                    i3 = i19;
                                    i7 = iL;
                                    z2 = true;
                                    r24 = r210;
                                } else {
                                    i18 = i3;
                                }
                                i19 = i18;
                                i3 = i19;
                                i7 = iL;
                                z2 = true;
                                r24 = r210;
                            }
                            if (!M(64) || M(128)) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            r15.getClass();
                            r15.f2457g = false;
                            if (this.f2609v0 == 0 && z3) {
                                c3 = 1;
                                r15.f2457g = true;
                            } else {
                                c3 = 1;
                            }
                            ArrayList arrayList12 = this.f2598j0;
                            if (r18[0] != 2 || r18[c3] == 2) {
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            this.f2606r0 = 0;
                            this.f2607s0 = 0;
                            i8 = i4;
                            for (i9 = 0; i9 < i8; i9++) {
                                dVar = (d) this.f2598j0.get(i9);
                                if (dVar instanceof e) {
                                    ((e) dVar).K();
                                }
                            }
                            zM = M(64);
                            r12 = z2;
                            i10 = 0;
                            z5 = true;
                            r25 = r24;
                            while (z5) {
                                int i65 = i10 + 1;
                                try {
                                    r15.t();
                                    this.f2606r0 = 0;
                                    this.f2607s0 = 0;
                                    e(r15);
                                    for (i13 = 0; i13 < i8; i13++) {
                                        ((d) this.f2598j0.get(i13)).e(r15);
                                    }
                                    H(r15);
                                    try {
                                        weakReference = this.y0;
                                        if (weakReference != null || weakReference.get() == null) {
                                            z7 = z4;
                                            cVar2 = cVar;
                                        } else {
                                            cVar2 = cVar;
                                            try {
                                                z7 = z4;
                                                try {
                                                    r15.f(r15.k((c) this.y0.get()), r15.k(cVar2), 0, 5);
                                                    this.y0 = null;
                                                } catch (Exception e3) {
                                                    e = e3;
                                                    r28 = r25;
                                                    z5 = true;
                                                    r27 = r28;
                                                    e.printStackTrace();
                                                    System.out.println("EXCEPTION : " + e);
                                                    r26 = r27;
                                                    zArr = g.f2618a;
                                                    if (z5) {
                                                        zArr[2] = false;
                                                        zM2 = M(64);
                                                        F(r15, zM2);
                                                        size = this.f2598j0.size();
                                                        for (i12 = 0; i12 < size; i12++) {
                                                            ((d) this.f2598j0.get(i12)).F(r15, zM2);
                                                        }
                                                    } else {
                                                        F(r15, zM);
                                                        for (i11 = 0; i11 < i8; i11++) {
                                                            ((d) this.f2598j0.get(i11)).F(r15, zM);
                                                        }
                                                    }
                                                    if (z7) {
                                                        z8 = false;
                                                    } else {
                                                        z8 = false;
                                                    }
                                                    iMax = Math.max(this.U, l());
                                                    if (iMax > l()) {
                                                        D(iMax);
                                                        r7 = 1;
                                                        r18[0] = 1;
                                                        z8 = true;
                                                        r16 = 1;
                                                    } else {
                                                        r7 = 1;
                                                        r16 = r12;
                                                    }
                                                    iMax2 = Math.max(this.V, i());
                                                    if (iMax2 > i()) {
                                                        A(iMax2);
                                                        r18[r7] = r7;
                                                        r6 = r7;
                                                        z9 = r6 == true ? 1 : 0;
                                                    } else {
                                                        z9 = z8;
                                                        r3 = r16;
                                                    }
                                                    if (r3 == 0) {
                                                        if (r18[0] == 2) {
                                                            r5 = r3;
                                                            if (l() > i7) {
                                                                this.f2610w0 = r7;
                                                                r18[0] = r7;
                                                                D(i7);
                                                                ?? r33 = r7;
                                                                z9 = r33 == true ? 1 : 0;
                                                                r5 = r33;
                                                            }
                                                        }
                                                        r3 = r6;
                                                        r5 = r3;
                                                        r5 = r3;
                                                        r4 = r5;
                                                        r4 = r5;
                                                        if (r18[r7] != 2) {
                                                        }
                                                        z5 = z9;
                                                        i10 = i65;
                                                        cVar = cVar2;
                                                        z4 = z7;
                                                        r12 = r13;
                                                        r25 = r26;
                                                    } else {
                                                        r3 = r6;
                                                        r4 = r3;
                                                    }
                                                    r4 = r5;
                                                    r13 = r4;
                                                    z5 = z9;
                                                    i10 = i65;
                                                    cVar = cVar2;
                                                    z4 = z7;
                                                    r12 = r13;
                                                    r25 = r26;
                                                }
                                            } catch (Exception e4) {
                                                e = e4;
                                                z7 = z4;
                                            }
                                        }
                                        weakReference2 = this.A0;
                                        if (weakReference2 != null && weakReference2.get() != null) {
                                            r15.f(r15.k(this.E), r15.k((c) this.A0.get()), 0, 5);
                                            this.A0 = null;
                                        }
                                        weakReference3 = this.f2611z0;
                                        r29 = r25;
                                        if (weakReference3 != null && weakReference3.get() != null) {
                                            r29 = r25;
                                            r8 = r25;
                                            try {
                                                r29 = r8;
                                                r15.f(r15.k((c) this.f2611z0.get()), r15.k(r8), 0, 5);
                                                this.f2611z0 = null;
                                            } catch (Exception e5) {
                                                e = e5;
                                                r25 = r8;
                                                r28 = r25;
                                                z5 = true;
                                                r27 = r28;
                                                e.printStackTrace();
                                                System.out.println("EXCEPTION : " + e);
                                                r26 = r27;
                                                zArr = g.f2618a;
                                                if (z5) {
                                                    zArr[2] = false;
                                                    zM2 = M(64);
                                                    F(r15, zM2);
                                                    size = this.f2598j0.size();
                                                    while (i12 < size) {
                                                        ((d) this.f2598j0.get(i12)).F(r15, zM2);
                                                    }
                                                } else {
                                                    F(r15, zM);
                                                    while (i11 < i8) {
                                                        ((d) this.f2598j0.get(i11)).F(r15, zM);
                                                    }
                                                }
                                                if (z7) {
                                                    z8 = false;
                                                } else {
                                                    z8 = false;
                                                }
                                                iMax = Math.max(this.U, l());
                                                if (iMax > l()) {
                                                    D(iMax);
                                                    r7 = 1;
                                                    r18[0] = 1;
                                                    z8 = true;
                                                    r16 = 1;
                                                } else {
                                                    r7 = 1;
                                                    r16 = r12;
                                                }
                                                iMax2 = Math.max(this.V, i());
                                                if (iMax2 > i()) {
                                                    A(iMax2);
                                                    r18[r7] = r7;
                                                    r6 = r7;
                                                    z9 = r6 == true ? 1 : 0;
                                                } else {
                                                    z9 = z8;
                                                    r3 = r16;
                                                }
                                                if (r3 == 0) {
                                                    if (r18[0] == 2) {
                                                        r5 = r3;
                                                        if (l() > i7) {
                                                            this.f2610w0 = r7;
                                                            r18[0] = r7;
                                                            D(i7);
                                                            ?? r34 = r7;
                                                            z9 = r34 == true ? 1 : 0;
                                                            r5 = r34;
                                                        }
                                                    }
                                                    r3 = r6;
                                                    r5 = r3;
                                                    r5 = r3;
                                                    r4 = r5;
                                                    r4 = r5;
                                                    if (r18[r7] != 2) {
                                                    }
                                                    z5 = z9;
                                                    i10 = i65;
                                                    cVar = cVar2;
                                                    z4 = z7;
                                                    r12 = r13;
                                                    r25 = r26;
                                                } else {
                                                    r3 = r6;
                                                    r4 = r3;
                                                }
                                                r4 = r5;
                                                r13 = r4;
                                                z5 = z9;
                                                i10 = i65;
                                                cVar = cVar2;
                                                z4 = z7;
                                                r12 = r13;
                                                r25 = r26;
                                            }
                                        }
                                        r29 = r25;
                                        weakReference4 = this.B0;
                                        if (weakReference4 == null && weakReference4.get() != null) {
                                            try {
                                                try {
                                                    r15.f(r15.k(this.D), r15.k((c) this.B0.get()), 0, 5);
                                                    try {
                                                        this.B0 = null;
                                                    } catch (Exception e6) {
                                                        e = e6;
                                                        r28 = r29;
                                                        z5 = true;
                                                        r27 = r28;
                                                        e.printStackTrace();
                                                        System.out.println("EXCEPTION : " + e);
                                                        r26 = r27;
                                                    }
                                                } catch (Exception e7) {
                                                    e = e7;
                                                    r28 = r29;
                                                    z5 = true;
                                                    r27 = r28;
                                                    e.printStackTrace();
                                                    System.out.println("EXCEPTION : " + e);
                                                    r26 = r27;
                                                    zArr = g.f2618a;
                                                    if (z5) {
                                                        zArr[2] = false;
                                                        zM2 = M(64);
                                                        F(r15, zM2);
                                                        size = this.f2598j0.size();
                                                        while (i12 < size) {
                                                            ((d) this.f2598j0.get(i12)).F(r15, zM2);
                                                        }
                                                    } else {
                                                        F(r15, zM);
                                                        while (i11 < i8) {
                                                            ((d) this.f2598j0.get(i11)).F(r15, zM);
                                                        }
                                                    }
                                                    if (z7) {
                                                        z8 = false;
                                                    } else {
                                                        z8 = false;
                                                    }
                                                    iMax = Math.max(this.U, l());
                                                    if (iMax > l()) {
                                                        D(iMax);
                                                        r7 = 1;
                                                        r18[0] = 1;
                                                        z8 = true;
                                                        r16 = 1;
                                                    } else {
                                                        r7 = 1;
                                                        r16 = r12;
                                                    }
                                                    iMax2 = Math.max(this.V, i());
                                                    if (iMax2 > i()) {
                                                        A(iMax2);
                                                        r18[r7] = r7;
                                                        r6 = r7;
                                                        z9 = r6 == true ? 1 : 0;
                                                    } else {
                                                        z9 = z8;
                                                        r3 = r16;
                                                    }
                                                    if (r3 == 0) {
                                                        if (r18[0] == 2) {
                                                            r5 = r3;
                                                            if (l() > i7) {
                                                                this.f2610w0 = r7;
                                                                r18[0] = r7;
                                                                D(i7);
                                                                ?? r35 = r7;
                                                                z9 = r35 == true ? 1 : 0;
                                                                r5 = r35;
                                                            }
                                                        }
                                                        r3 = r6;
                                                        r5 = r3;
                                                        r5 = r3;
                                                        r4 = r5;
                                                        r4 = r5;
                                                        if (r18[r7] != 2) {
                                                        }
                                                        z5 = z9;
                                                        i10 = i65;
                                                        cVar = cVar2;
                                                        z4 = z7;
                                                        r12 = r13;
                                                        r25 = r26;
                                                    } else {
                                                        r3 = r6;
                                                        r4 = r3;
                                                    }
                                                    r4 = r5;
                                                    r13 = r4;
                                                    z5 = z9;
                                                    i10 = i65;
                                                    cVar = cVar2;
                                                    z4 = z7;
                                                    r12 = r13;
                                                    r25 = r26;
                                                }
                                            } catch (Exception e8) {
                                                e = e8;
                                            }
                                        }
                                        r15.p();
                                        z5 = true;
                                        r26 = r29;
                                    } catch (Exception e9) {
                                        e = e9;
                                        z7 = z4;
                                        cVar2 = cVar;
                                    }
                                } catch (Exception e10) {
                                    e = e10;
                                    z7 = z4;
                                    cVar2 = cVar;
                                    r27 = r25;
                                }
                                zArr = g.f2618a;
                                if (z5) {
                                    zArr[2] = false;
                                    zM2 = M(64);
                                    F(r15, zM2);
                                    size = this.f2598j0.size();
                                    while (i12 < size) {
                                        ((d) this.f2598j0.get(i12)).F(r15, zM2);
                                    }
                                } else {
                                    F(r15, zM);
                                    while (i11 < i8) {
                                        ((d) this.f2598j0.get(i11)).F(r15, zM);
                                    }
                                }
                                if (z7 || i65 >= 8 || !zArr[2]) {
                                    z8 = false;
                                } else {
                                    int iMax5 = 0;
                                    int iMax6 = 0;
                                    for (int i66 = 0; i66 < i8; i66++) {
                                        d dVar14 = (d) this.f2598j0.get(i66);
                                        iMax5 = Math.max(iMax5, dVar14.l() + dVar14.R);
                                        iMax6 = Math.max(iMax6, dVar14.i() + dVar14.S);
                                    }
                                    int iMax7 = Math.max(this.U, iMax5);
                                    int iMax8 = Math.max(this.V, iMax6);
                                    if (i6 != 2 || l() >= iMax7) {
                                        z8 = false;
                                        r12 = r12;
                                    } else {
                                        D(iMax7);
                                        r18[0] = 2;
                                        z8 = true;
                                        r12 = 1;
                                    }
                                    if (i5 == 2 && i() < iMax8) {
                                        A(iMax8);
                                        r18[1] = 2;
                                        z8 = true;
                                        r12 = 1;
                                    }
                                }
                                iMax = Math.max(this.U, l());
                                if (iMax > l()) {
                                    D(iMax);
                                    r7 = 1;
                                    r18[0] = 1;
                                    z8 = true;
                                    r16 = 1;
                                } else {
                                    r7 = 1;
                                    r16 = r12;
                                }
                                iMax2 = Math.max(this.V, i());
                                if (iMax2 > i()) {
                                    A(iMax2);
                                    r18[r7] = r7;
                                    r6 = r7;
                                    z9 = r6 == true ? 1 : 0;
                                } else {
                                    z9 = z8;
                                    r3 = r16;
                                }
                                if (r3 == 0) {
                                    if (r18[0] == 2 && i7 > 0) {
                                        r5 = r3;
                                        if (l() > i7) {
                                            this.f2610w0 = r7;
                                            r18[0] = r7;
                                            D(i7);
                                            ?? r36 = r7;
                                            z9 = r36 == true ? 1 : 0;
                                            r5 = r36;
                                        }
                                    }
                                    r3 = r6;
                                    r5 = r3;
                                    r5 = r3;
                                    r4 = r5;
                                    r4 = r5;
                                    if (r18[r7] != 2 && i3 > 0 && i() > i3) {
                                        r4 = r5;
                                        this.x0 = r7;
                                        r18[r7] = r7;
                                        A(i3);
                                        z9 = true;
                                        r13 = 1;
                                    }
                                    z5 = z9;
                                    i10 = i65;
                                    cVar = cVar2;
                                    z4 = z7;
                                    r12 = r13;
                                    r25 = r26;
                                } else {
                                    r3 = r6;
                                    r4 = r3;
                                }
                                r4 = r5;
                                r13 = r4;
                                z5 = z9;
                                i10 = i65;
                                cVar = cVar2;
                                z4 = z7;
                                r12 = r13;
                                r25 = r26;
                            }
                            z6 = r12 == true ? 1 : 0;
                            this.f2598j0 = arrayList12;
                            if (z6) {
                                r18[0] = i6;
                                r18[1] = i5;
                            }
                            x(r15.f2462l);
                        }
                        c4 = 1;
                        r9 = 0;
                        if (r18[c4] == 2) {
                            size2 = arrayList11.size();
                            i20 = 0;
                            i21 = 0;
                            r11 = 0;
                            while (i21 < size2) {
                                Object obj9 = arrayList11.get(i21);
                                i21++;
                                r14 = (n) obj9;
                                if (r14.f2672c != 0) {
                                    r11 = r14;
                                    i20 = iB;
                                }
                            }
                            if (r11 != 0) {
                                C(1);
                                A(i20);
                            } else {
                                r10 = 0;
                            }
                        } else {
                            r10 = 0;
                        }
                        if (r9 == 0) {
                        }
                        r10 = r11;
                        i6 = i16;
                        if (i6 == 2) {
                            i17 = i14;
                            if (i17 < l()) {
                            }
                            iL = l();
                            i5 = i15;
                            if (i5 == 2) {
                                i18 = i3;
                                if (i18 < i()) {
                                }
                                i19 = i();
                                i3 = i19;
                                i7 = iL;
                                z2 = true;
                                r24 = r210;
                                if (M(64)) {
                                    z3 = true;
                                } else {
                                    z3 = true;
                                }
                                r15.getClass();
                                r15.f2457g = false;
                                if (this.f2609v0 == 0) {
                                    c3 = 1;
                                } else {
                                    c3 = 1;
                                }
                                ArrayList arrayList13 = this.f2598j0;
                                if (r18[0] != 2) {
                                    z4 = true;
                                } else {
                                    z4 = true;
                                }
                                this.f2606r0 = 0;
                                this.f2607s0 = 0;
                                i8 = i4;
                                while (i9 < i8) {
                                    dVar = (d) this.f2598j0.get(i9);
                                    if (dVar instanceof e) {
                                        ((e) dVar).K();
                                    }
                                }
                                zM = M(64);
                                r12 = z2;
                                i10 = 0;
                                z5 = true;
                                r25 = r24;
                                while (z5) {
                                    int i67 = i10 + 1;
                                    r15.t();
                                    this.f2606r0 = 0;
                                    this.f2607s0 = 0;
                                    e(r15);
                                    while (i13 < i8) {
                                        ((d) this.f2598j0.get(i13)).e(r15);
                                    }
                                    H(r15);
                                    weakReference = this.y0;
                                    if (weakReference != null) {
                                        z7 = z4;
                                        cVar2 = cVar;
                                        weakReference2 = this.A0;
                                        if (weakReference2 != null) {
                                            r15.f(r15.k(this.E), r15.k((c) this.A0.get()), 0, 5);
                                            this.A0 = null;
                                        }
                                        weakReference3 = this.f2611z0;
                                        r29 = r25;
                                        if (weakReference3 != null) {
                                            r29 = r25;
                                            r8 = r25;
                                            r29 = r8;
                                            r15.f(r15.k((c) this.f2611z0.get()), r15.k(r8), 0, 5);
                                            this.f2611z0 = null;
                                        }
                                        r29 = r25;
                                        weakReference4 = this.B0;
                                        if (weakReference4 == null) {
                                        }
                                        r15.p();
                                        z5 = true;
                                        r26 = r29;
                                    } else {
                                        z7 = z4;
                                        cVar2 = cVar;
                                        weakReference2 = this.A0;
                                        if (weakReference2 != null) {
                                            r15.f(r15.k(this.E), r15.k((c) this.A0.get()), 0, 5);
                                            this.A0 = null;
                                        }
                                        weakReference3 = this.f2611z0;
                                        r29 = r25;
                                        if (weakReference3 != null) {
                                            r29 = r25;
                                            r8 = r25;
                                            r29 = r8;
                                            r15.f(r15.k((c) this.f2611z0.get()), r15.k(r8), 0, 5);
                                            this.f2611z0 = null;
                                        }
                                        r29 = r25;
                                        weakReference4 = this.B0;
                                        if (weakReference4 == null) {
                                        }
                                        r15.p();
                                        z5 = true;
                                        r26 = r29;
                                    }
                                    zArr = g.f2618a;
                                    if (z5) {
                                        zArr[2] = false;
                                        zM2 = M(64);
                                        F(r15, zM2);
                                        size = this.f2598j0.size();
                                        while (i12 < size) {
                                            ((d) this.f2598j0.get(i12)).F(r15, zM2);
                                        }
                                    } else {
                                        F(r15, zM);
                                        while (i11 < i8) {
                                            ((d) this.f2598j0.get(i11)).F(r15, zM);
                                        }
                                    }
                                    if (z7) {
                                        z8 = false;
                                    } else {
                                        z8 = false;
                                    }
                                    iMax = Math.max(this.U, l());
                                    if (iMax > l()) {
                                        D(iMax);
                                        r7 = 1;
                                        r18[0] = 1;
                                        z8 = true;
                                        r16 = 1;
                                    } else {
                                        r7 = 1;
                                        r16 = r12;
                                    }
                                    iMax2 = Math.max(this.V, i());
                                    if (iMax2 > i()) {
                                        A(iMax2);
                                        r18[r7] = r7;
                                        r6 = r7;
                                        z9 = r6 == true ? 1 : 0;
                                    } else {
                                        z9 = z8;
                                        r3 = r16;
                                    }
                                    if (r3 == 0) {
                                        if (r18[0] == 2) {
                                            r5 = r3;
                                            if (l() > i7) {
                                                this.f2610w0 = r7;
                                                r18[0] = r7;
                                                D(i7);
                                                ?? r37 = r7;
                                                z9 = r37 == true ? 1 : 0;
                                                r5 = r37;
                                            }
                                        }
                                        r3 = r6;
                                        r5 = r3;
                                        r5 = r3;
                                        r4 = r5;
                                        r4 = r5;
                                        if (r18[r7] != 2) {
                                        }
                                        z5 = z9;
                                        i10 = i67;
                                        cVar = cVar2;
                                        z4 = z7;
                                        r12 = r13;
                                        r25 = r26;
                                    } else {
                                        r3 = r6;
                                        r4 = r3;
                                    }
                                    r4 = r5;
                                    r13 = r4;
                                    z5 = z9;
                                    i10 = i67;
                                    cVar = cVar2;
                                    z4 = z7;
                                    r12 = r13;
                                    r25 = r26;
                                }
                                z6 = r12 == true ? 1 : 0;
                                this.f2598j0 = arrayList13;
                                if (z6) {
                                    r18[0] = i6;
                                    r18[1] = i5;
                                }
                                x(r15.f2462l);
                            }
                            i18 = i3;
                            i19 = i18;
                            i3 = i19;
                            i7 = iL;
                            z2 = true;
                            r24 = r210;
                            if (M(64)) {
                                z3 = true;
                            } else {
                                z3 = true;
                            }
                            r15.getClass();
                            r15.f2457g = false;
                            if (this.f2609v0 == 0) {
                                c3 = 1;
                            } else {
                                c3 = 1;
                            }
                            ArrayList arrayList14 = this.f2598j0;
                            if (r18[0] != 2) {
                                z4 = true;
                            } else {
                                z4 = true;
                            }
                            this.f2606r0 = 0;
                            this.f2607s0 = 0;
                            i8 = i4;
                            while (i9 < i8) {
                                dVar = (d) this.f2598j0.get(i9);
                                if (dVar instanceof e) {
                                    ((e) dVar).K();
                                }
                            }
                            zM = M(64);
                            r12 = z2;
                            i10 = 0;
                            z5 = true;
                            r25 = r24;
                            while (z5) {
                                int i68 = i10 + 1;
                                r15.t();
                                this.f2606r0 = 0;
                                this.f2607s0 = 0;
                                e(r15);
                                while (i13 < i8) {
                                    ((d) this.f2598j0.get(i13)).e(r15);
                                }
                                H(r15);
                                weakReference = this.y0;
                                if (weakReference != null) {
                                    z7 = z4;
                                    cVar2 = cVar;
                                    weakReference2 = this.A0;
                                    if (weakReference2 != null) {
                                        r15.f(r15.k(this.E), r15.k((c) this.A0.get()), 0, 5);
                                        this.A0 = null;
                                    }
                                    weakReference3 = this.f2611z0;
                                    r29 = r25;
                                    if (weakReference3 != null) {
                                        r29 = r25;
                                        r8 = r25;
                                        r29 = r8;
                                        r15.f(r15.k((c) this.f2611z0.get()), r15.k(r8), 0, 5);
                                        this.f2611z0 = null;
                                    }
                                    r29 = r25;
                                    weakReference4 = this.B0;
                                    if (weakReference4 == null) {
                                    }
                                    r15.p();
                                    z5 = true;
                                    r26 = r29;
                                } else {
                                    z7 = z4;
                                    cVar2 = cVar;
                                    weakReference2 = this.A0;
                                    if (weakReference2 != null) {
                                        r15.f(r15.k(this.E), r15.k((c) this.A0.get()), 0, 5);
                                        this.A0 = null;
                                    }
                                    weakReference3 = this.f2611z0;
                                    r29 = r25;
                                    if (weakReference3 != null) {
                                        r29 = r25;
                                        r8 = r25;
                                        r29 = r8;
                                        r15.f(r15.k((c) this.f2611z0.get()), r15.k(r8), 0, 5);
                                        this.f2611z0 = null;
                                    }
                                    r29 = r25;
                                    weakReference4 = this.B0;
                                    if (weakReference4 == null) {
                                    }
                                    r15.p();
                                    z5 = true;
                                    r26 = r29;
                                }
                                zArr = g.f2618a;
                                if (z5) {
                                    zArr[2] = false;
                                    zM2 = M(64);
                                    F(r15, zM2);
                                    size = this.f2598j0.size();
                                    while (i12 < size) {
                                        ((d) this.f2598j0.get(i12)).F(r15, zM2);
                                    }
                                } else {
                                    F(r15, zM);
                                    while (i11 < i8) {
                                        ((d) this.f2598j0.get(i11)).F(r15, zM);
                                    }
                                }
                                if (z7) {
                                    z8 = false;
                                } else {
                                    z8 = false;
                                }
                                iMax = Math.max(this.U, l());
                                if (iMax > l()) {
                                    D(iMax);
                                    r7 = 1;
                                    r18[0] = 1;
                                    z8 = true;
                                    r16 = 1;
                                } else {
                                    r7 = 1;
                                    r16 = r12;
                                }
                                iMax2 = Math.max(this.V, i());
                                if (iMax2 > i()) {
                                    A(iMax2);
                                    r18[r7] = r7;
                                    r6 = r7;
                                    z9 = r6 == true ? 1 : 0;
                                } else {
                                    z9 = z8;
                                    r3 = r16;
                                }
                                if (r3 == 0) {
                                    if (r18[0] == 2) {
                                        r5 = r3;
                                        if (l() > i7) {
                                            this.f2610w0 = r7;
                                            r18[0] = r7;
                                            D(i7);
                                            ?? r38 = r7;
                                            z9 = r38 == true ? 1 : 0;
                                            r5 = r38;
                                        }
                                    }
                                    r3 = r6;
                                    r5 = r3;
                                    r5 = r3;
                                    r4 = r5;
                                    r4 = r5;
                                    if (r18[r7] != 2) {
                                    }
                                    z5 = z9;
                                    i10 = i68;
                                    cVar = cVar2;
                                    z4 = z7;
                                    r12 = r13;
                                    r25 = r26;
                                } else {
                                    r3 = r6;
                                    r4 = r3;
                                }
                                r4 = r5;
                                r13 = r4;
                                z5 = z9;
                                i10 = i68;
                                cVar = cVar2;
                                z4 = z7;
                                r12 = r13;
                                r25 = r26;
                            }
                            z6 = r12 == true ? 1 : 0;
                            this.f2598j0 = arrayList14;
                            if (z6) {
                                r18[0] = i6;
                                r18[1] = i5;
                            }
                            x(r15.f2462l);
                        }
                        i17 = i14;
                        iL = i17;
                        i5 = i15;
                        if (i5 == 2) {
                            i18 = i3;
                            if (i18 < i()) {
                            }
                            i19 = i();
                            i3 = i19;
                            i7 = iL;
                            z2 = true;
                            r24 = r210;
                            if (M(64)) {
                                z3 = true;
                            } else {
                                z3 = true;
                            }
                            r15.getClass();
                            r15.f2457g = false;
                            if (this.f2609v0 == 0) {
                                c3 = 1;
                            } else {
                                c3 = 1;
                            }
                            ArrayList arrayList15 = this.f2598j0;
                            if (r18[0] != 2) {
                                z4 = true;
                            } else {
                                z4 = true;
                            }
                            this.f2606r0 = 0;
                            this.f2607s0 = 0;
                            i8 = i4;
                            while (i9 < i8) {
                                dVar = (d) this.f2598j0.get(i9);
                                if (dVar instanceof e) {
                                    ((e) dVar).K();
                                }
                            }
                            zM = M(64);
                            r12 = z2;
                            i10 = 0;
                            z5 = true;
                            r25 = r24;
                            while (z5) {
                                int i69 = i10 + 1;
                                r15.t();
                                this.f2606r0 = 0;
                                this.f2607s0 = 0;
                                e(r15);
                                while (i13 < i8) {
                                    ((d) this.f2598j0.get(i13)).e(r15);
                                }
                                H(r15);
                                weakReference = this.y0;
                                if (weakReference != null) {
                                    z7 = z4;
                                    cVar2 = cVar;
                                    weakReference2 = this.A0;
                                    if (weakReference2 != null) {
                                        r15.f(r15.k(this.E), r15.k((c) this.A0.get()), 0, 5);
                                        this.A0 = null;
                                    }
                                    weakReference3 = this.f2611z0;
                                    r29 = r25;
                                    if (weakReference3 != null) {
                                        r29 = r25;
                                        r8 = r25;
                                        r29 = r8;
                                        r15.f(r15.k((c) this.f2611z0.get()), r15.k(r8), 0, 5);
                                        this.f2611z0 = null;
                                    }
                                    r29 = r25;
                                    weakReference4 = this.B0;
                                    if (weakReference4 == null) {
                                    }
                                    r15.p();
                                    z5 = true;
                                    r26 = r29;
                                } else {
                                    z7 = z4;
                                    cVar2 = cVar;
                                    weakReference2 = this.A0;
                                    if (weakReference2 != null) {
                                        r15.f(r15.k(this.E), r15.k((c) this.A0.get()), 0, 5);
                                        this.A0 = null;
                                    }
                                    weakReference3 = this.f2611z0;
                                    r29 = r25;
                                    if (weakReference3 != null) {
                                        r29 = r25;
                                        r8 = r25;
                                        r29 = r8;
                                        r15.f(r15.k((c) this.f2611z0.get()), r15.k(r8), 0, 5);
                                        this.f2611z0 = null;
                                    }
                                    r29 = r25;
                                    weakReference4 = this.B0;
                                    if (weakReference4 == null) {
                                    }
                                    r15.p();
                                    z5 = true;
                                    r26 = r29;
                                }
                                zArr = g.f2618a;
                                if (z5) {
                                    zArr[2] = false;
                                    zM2 = M(64);
                                    F(r15, zM2);
                                    size = this.f2598j0.size();
                                    while (i12 < size) {
                                        ((d) this.f2598j0.get(i12)).F(r15, zM2);
                                    }
                                } else {
                                    F(r15, zM);
                                    while (i11 < i8) {
                                        ((d) this.f2598j0.get(i11)).F(r15, zM);
                                    }
                                }
                                if (z7) {
                                    z8 = false;
                                } else {
                                    z8 = false;
                                }
                                iMax = Math.max(this.U, l());
                                if (iMax > l()) {
                                    D(iMax);
                                    r7 = 1;
                                    r18[0] = 1;
                                    z8 = true;
                                    r16 = 1;
                                } else {
                                    r7 = 1;
                                    r16 = r12;
                                }
                                iMax2 = Math.max(this.V, i());
                                if (iMax2 > i()) {
                                    A(iMax2);
                                    r18[r7] = r7;
                                    r6 = r7;
                                    z9 = r6 == true ? 1 : 0;
                                } else {
                                    z9 = z8;
                                    r3 = r16;
                                }
                                if (r3 == 0) {
                                    if (r18[0] == 2) {
                                        r5 = r3;
                                        if (l() > i7) {
                                            this.f2610w0 = r7;
                                            r18[0] = r7;
                                            D(i7);
                                            ?? r39 = r7;
                                            z9 = r39 == true ? 1 : 0;
                                            r5 = r39;
                                        }
                                    }
                                    r3 = r6;
                                    r5 = r3;
                                    r5 = r3;
                                    r4 = r5;
                                    r4 = r5;
                                    if (r18[r7] != 2) {
                                    }
                                    z5 = z9;
                                    i10 = i69;
                                    cVar = cVar2;
                                    z4 = z7;
                                    r12 = r13;
                                    r25 = r26;
                                } else {
                                    r3 = r6;
                                    r4 = r3;
                                }
                                r4 = r5;
                                r13 = r4;
                                z5 = z9;
                                i10 = i69;
                                cVar = cVar2;
                                z4 = z7;
                                r12 = r13;
                                r25 = r26;
                            }
                            z6 = r12 == true ? 1 : 0;
                            this.f2598j0 = arrayList15;
                            if (z6) {
                                r18[0] = i6;
                                r18[1] = i5;
                            }
                            x(r15.f2462l);
                        }
                        i18 = i3;
                        i19 = i18;
                        i3 = i19;
                        i7 = iL;
                        z2 = true;
                        r24 = r210;
                        if (M(64)) {
                            z3 = true;
                        } else {
                            z3 = true;
                        }
                        r15.getClass();
                        r15.f2457g = false;
                        if (this.f2609v0 == 0) {
                            c3 = 1;
                        } else {
                            c3 = 1;
                        }
                        ArrayList arrayList16 = this.f2598j0;
                        if (r18[0] != 2) {
                            z4 = true;
                        } else {
                            z4 = true;
                        }
                        this.f2606r0 = 0;
                        this.f2607s0 = 0;
                        i8 = i4;
                        while (i9 < i8) {
                            dVar = (d) this.f2598j0.get(i9);
                            if (dVar instanceof e) {
                                ((e) dVar).K();
                            }
                        }
                        zM = M(64);
                        r12 = z2;
                        i10 = 0;
                        z5 = true;
                        r25 = r24;
                        while (z5) {
                            int i610 = i10 + 1;
                            r15.t();
                            this.f2606r0 = 0;
                            this.f2607s0 = 0;
                            e(r15);
                            while (i13 < i8) {
                                ((d) this.f2598j0.get(i13)).e(r15);
                            }
                            H(r15);
                            weakReference = this.y0;
                            if (weakReference != null) {
                                z7 = z4;
                                cVar2 = cVar;
                                weakReference2 = this.A0;
                                if (weakReference2 != null) {
                                    r15.f(r15.k(this.E), r15.k((c) this.A0.get()), 0, 5);
                                    this.A0 = null;
                                }
                                weakReference3 = this.f2611z0;
                                r29 = r25;
                                if (weakReference3 != null) {
                                    r29 = r25;
                                    r8 = r25;
                                    r29 = r8;
                                    r15.f(r15.k((c) this.f2611z0.get()), r15.k(r8), 0, 5);
                                    this.f2611z0 = null;
                                }
                                r29 = r25;
                                weakReference4 = this.B0;
                                if (weakReference4 == null) {
                                }
                                r15.p();
                                z5 = true;
                                r26 = r29;
                            } else {
                                z7 = z4;
                                cVar2 = cVar;
                                weakReference2 = this.A0;
                                if (weakReference2 != null) {
                                    r15.f(r15.k(this.E), r15.k((c) this.A0.get()), 0, 5);
                                    this.A0 = null;
                                }
                                weakReference3 = this.f2611z0;
                                r29 = r25;
                                if (weakReference3 != null) {
                                    r29 = r25;
                                    r8 = r25;
                                    r29 = r8;
                                    r15.f(r15.k((c) this.f2611z0.get()), r15.k(r8), 0, 5);
                                    this.f2611z0 = null;
                                }
                                r29 = r25;
                                weakReference4 = this.B0;
                                if (weakReference4 == null) {
                                }
                                r15.p();
                                z5 = true;
                                r26 = r29;
                            }
                            zArr = g.f2618a;
                            if (z5) {
                                zArr[2] = false;
                                zM2 = M(64);
                                F(r15, zM2);
                                size = this.f2598j0.size();
                                while (i12 < size) {
                                    ((d) this.f2598j0.get(i12)).F(r15, zM2);
                                }
                            } else {
                                F(r15, zM);
                                while (i11 < i8) {
                                    ((d) this.f2598j0.get(i11)).F(r15, zM);
                                }
                            }
                            if (z7) {
                                z8 = false;
                            } else {
                                z8 = false;
                            }
                            iMax = Math.max(this.U, l());
                            if (iMax > l()) {
                                D(iMax);
                                r7 = 1;
                                r18[0] = 1;
                                z8 = true;
                                r16 = 1;
                            } else {
                                r7 = 1;
                                r16 = r12;
                            }
                            iMax2 = Math.max(this.V, i());
                            if (iMax2 > i()) {
                                A(iMax2);
                                r18[r7] = r7;
                                r6 = r7;
                                z9 = r6 == true ? 1 : 0;
                            } else {
                                z9 = z8;
                                r3 = r16;
                            }
                            if (r3 == 0) {
                                if (r18[0] == 2) {
                                    r5 = r3;
                                    if (l() > i7) {
                                        this.f2610w0 = r7;
                                        r18[0] = r7;
                                        D(i7);
                                        ?? r310 = r7;
                                        z9 = r310 == true ? 1 : 0;
                                        r5 = r310;
                                    }
                                }
                                r3 = r6;
                                r5 = r3;
                                r5 = r3;
                                r4 = r5;
                                r4 = r5;
                                if (r18[r7] != 2) {
                                }
                                z5 = z9;
                                i10 = i610;
                                cVar = cVar2;
                                z4 = z7;
                                r12 = r13;
                                r25 = r26;
                            } else {
                                r3 = r6;
                                r4 = r3;
                            }
                            r4 = r5;
                            r13 = r4;
                            z5 = z9;
                            i10 = i610;
                            cVar = cVar2;
                            z4 = z7;
                            r12 = r13;
                            r25 = r26;
                        }
                        z6 = r12 == true ? 1 : 0;
                        this.f2598j0 = arrayList16;
                        if (z6) {
                            r18[0] = i6;
                            r18[1] = i5;
                        }
                        x(r15.f2462l);
                    }
                }
                i5 = i15;
                i7 = i14;
                i6 = i16;
                r23 = r210;
            }
        }
        z2 = false;
        r24 = r23;
        if (M(64)) {
            z3 = true;
        } else {
            z3 = true;
        }
        r15.getClass();
        r15.f2457g = false;
        if (this.f2609v0 == 0) {
            c3 = 1;
        } else {
            c3 = 1;
        }
        ArrayList arrayList17 = this.f2598j0;
        if (r18[0] != 2) {
            z4 = true;
        } else {
            z4 = true;
        }
        this.f2606r0 = 0;
        this.f2607s0 = 0;
        i8 = i4;
        while (i9 < i8) {
            dVar = (d) this.f2598j0.get(i9);
            if (dVar instanceof e) {
                ((e) dVar).K();
            }
        }
        zM = M(64);
        r12 = z2;
        i10 = 0;
        z5 = true;
        r25 = r24;
        while (z5) {
            int i611 = i10 + 1;
            r15.t();
            this.f2606r0 = 0;
            this.f2607s0 = 0;
            e(r15);
            while (i13 < i8) {
                ((d) this.f2598j0.get(i13)).e(r15);
            }
            H(r15);
            weakReference = this.y0;
            if (weakReference != null) {
                z7 = z4;
                cVar2 = cVar;
                weakReference2 = this.A0;
                if (weakReference2 != null) {
                    r15.f(r15.k(this.E), r15.k((c) this.A0.get()), 0, 5);
                    this.A0 = null;
                }
                weakReference3 = this.f2611z0;
                r29 = r25;
                if (weakReference3 != null) {
                    r29 = r25;
                    r8 = r25;
                    r29 = r8;
                    r15.f(r15.k((c) this.f2611z0.get()), r15.k(r8), 0, 5);
                    this.f2611z0 = null;
                }
                r29 = r25;
                weakReference4 = this.B0;
                if (weakReference4 == null) {
                }
                r15.p();
                z5 = true;
                r26 = r29;
            } else {
                z7 = z4;
                cVar2 = cVar;
                weakReference2 = this.A0;
                if (weakReference2 != null) {
                    r15.f(r15.k(this.E), r15.k((c) this.A0.get()), 0, 5);
                    this.A0 = null;
                }
                weakReference3 = this.f2611z0;
                r29 = r25;
                if (weakReference3 != null) {
                    r29 = r25;
                    r8 = r25;
                    r29 = r8;
                    r15.f(r15.k((c) this.f2611z0.get()), r15.k(r8), 0, 5);
                    this.f2611z0 = null;
                }
                r29 = r25;
                weakReference4 = this.B0;
                if (weakReference4 == null) {
                }
                r15.p();
                z5 = true;
                r26 = r29;
            }
            zArr = g.f2618a;
            if (z5) {
                zArr[2] = false;
                zM2 = M(64);
                F(r15, zM2);
                size = this.f2598j0.size();
                while (i12 < size) {
                    ((d) this.f2598j0.get(i12)).F(r15, zM2);
                }
            } else {
                F(r15, zM);
                while (i11 < i8) {
                    ((d) this.f2598j0.get(i11)).F(r15, zM);
                }
            }
            if (z7) {
                z8 = false;
            } else {
                z8 = false;
            }
            iMax = Math.max(this.U, l());
            if (iMax > l()) {
                D(iMax);
                r7 = 1;
                r18[0] = 1;
                z8 = true;
                r16 = 1;
            } else {
                r7 = 1;
                r16 = r12;
            }
            iMax2 = Math.max(this.V, i());
            if (iMax2 > i()) {
                A(iMax2);
                r18[r7] = r7;
                r6 = r7;
                z9 = r6 == true ? 1 : 0;
            } else {
                z9 = z8;
                r3 = r16;
            }
            if (r3 == 0) {
                if (r18[0] == 2) {
                    r5 = r3;
                    if (l() > i7) {
                        this.f2610w0 = r7;
                        r18[0] = r7;
                        D(i7);
                        ?? r311 = r7;
                        z9 = r311 == true ? 1 : 0;
                        r5 = r311;
                    }
                }
                r3 = r6;
                r5 = r3;
                r5 = r3;
                r4 = r5;
                r4 = r5;
                if (r18[r7] != 2) {
                }
                z5 = z9;
                i10 = i611;
                cVar = cVar2;
                z4 = z7;
                r12 = r13;
                r25 = r26;
            } else {
                r3 = r6;
                r4 = r3;
            }
            r4 = r5;
            r13 = r4;
            z5 = z9;
            i10 = i611;
            cVar = cVar2;
            z4 = z7;
            r12 = r13;
            r25 = r26;
        }
        z6 = r12 == true ? 1 : 0;
        this.f2598j0 = arrayList17;
        if (z6) {
            r18[0] = i6;
            r18[1] = i5;
        }
        x(r15.f2462l);
    }

    public final boolean M(int i3) {
        return (this.f2609v0 & i3) == i3;
    }

    @Override // o.d
    public final void w() {
        this.f2603o0.t();
        this.f2604p0 = 0;
        this.f2605q0 = 0;
        this.f2598j0.clear();
        super.w();
    }

    @Override // o.d
    public final void x(androidx.fragment.app.f fVar) {
        super.x(fVar);
        int size = this.f2598j0.size();
        for (int i3 = 0; i3 < size; i3++) {
            ((d) this.f2598j0.get(i3)).x(fVar);
        }
    }
}
