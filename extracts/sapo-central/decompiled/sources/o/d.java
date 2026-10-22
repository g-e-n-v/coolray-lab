package o;

import android.view.View;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import n.h;
import p.k;
import p.m;

/* JADX INFO: loaded from: classes.dex */
public class d {
    public final c B;
    public final c C;
    public final c D;
    public final c E;
    public final c F;
    public final c G;
    public final c H;
    public final c I;
    public final c[] J;
    public final ArrayList K;
    public final boolean[] L;
    public d M;
    public int N;
    public int O;
    public float P;
    public int Q;
    public int R;
    public int S;
    public int T;
    public int U;
    public int V;
    public float W;
    public float X;
    public View Y;
    public int Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public String f2566a0;
    public p.c b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public int f2567b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public p.c f2568c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public int f2569c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public final float[] f2571d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final d[] f2573e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final d[] f2574f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public int f2576g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public int f2578h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public final int[] f2580i0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f2565a = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public k f2570d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public m f2572e = null;
    public final boolean[] f = {true, true};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f2575g = true;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f2577h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f2579i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f2581j = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f2582k = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f2583l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f2584m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int[] f2585n = new int[2];

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f2586o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f2587p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public float f2588q = 1.0f;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f2589r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f2590s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public float f2591t = 1.0f;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f2592u = -1;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public float f2593v = 1.0f;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final int[] f2594w = {Integer.MAX_VALUE, Integer.MAX_VALUE};

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public float f2595x = 0.0f;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f2596y = false;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f2597z = 0;
    public int A = 0;

    public d() {
        c cVar = new c(this, 2);
        this.B = cVar;
        c cVar2 = new c(this, 3);
        this.C = cVar2;
        c cVar3 = new c(this, 4);
        this.D = cVar3;
        c cVar4 = new c(this, 5);
        this.E = cVar4;
        c cVar5 = new c(this, 6);
        this.F = cVar5;
        c cVar6 = new c(this, 8);
        this.G = cVar6;
        c cVar7 = new c(this, 9);
        this.H = cVar7;
        c cVar8 = new c(this, 7);
        this.I = cVar8;
        this.J = new c[]{cVar, cVar3, cVar2, cVar4, cVar5, cVar8};
        ArrayList arrayList = new ArrayList();
        this.K = arrayList;
        this.L = new boolean[2];
        this.f2580i0 = new int[]{1, 1};
        this.M = null;
        this.N = 0;
        this.O = 0;
        this.P = 0.0f;
        this.Q = -1;
        this.R = 0;
        this.S = 0;
        this.T = 0;
        this.W = 0.5f;
        this.X = 0.5f;
        this.Z = 0;
        this.f2566a0 = null;
        this.f2567b0 = 0;
        this.f2569c0 = 0;
        this.f2571d0 = new float[]{-1.0f, -1.0f};
        this.f2573e0 = new d[]{null, null};
        this.f2574f0 = new d[]{null, null};
        this.f2576g0 = -1;
        this.f2578h0 = -1;
        arrayList.add(cVar);
        arrayList.add(cVar2);
        arrayList.add(cVar3);
        arrayList.add(cVar4);
        arrayList.add(cVar6);
        arrayList.add(cVar7);
        arrayList.add(cVar8);
        arrayList.add(cVar5);
    }

    public final void A(int i3) {
        this.O = i3;
        int i4 = this.V;
        if (i3 < i4) {
            this.O = i4;
        }
    }

    public final void B(int i3) {
        this.f2580i0[0] = i3;
    }

    public final void C(int i3) {
        this.f2580i0[1] = i3;
    }

    public final void D(int i3) {
        this.N = i3;
        int i4 = this.U;
        if (i3 < i4) {
            this.N = i4;
        }
    }

    public void E(boolean z2, boolean z3) {
        int i3;
        int i4;
        k kVar = this.f2570d;
        boolean z4 = z2 & kVar.f2679g;
        m mVar = this.f2572e;
        boolean z5 = z3 & mVar.f2679g;
        int i5 = kVar.f2680h.f2659g;
        int i6 = mVar.f2680h.f2659g;
        int i7 = kVar.f2681i.f2659g;
        int i8 = mVar.f2681i.f2659g;
        int i9 = i8 - i6;
        if (i7 - i5 < 0 || i9 < 0 || i5 == Integer.MIN_VALUE || i5 == Integer.MAX_VALUE || i6 == Integer.MIN_VALUE || i6 == Integer.MAX_VALUE || i7 == Integer.MIN_VALUE || i7 == Integer.MAX_VALUE || i8 == Integer.MIN_VALUE || i8 == Integer.MAX_VALUE) {
            i7 = 0;
            i8 = 0;
            i5 = 0;
            i6 = 0;
        }
        int i10 = i7 - i5;
        int i11 = i8 - i6;
        if (z4) {
            this.R = i5;
        }
        if (z5) {
            this.S = i6;
        }
        if (this.Z == 8) {
            this.N = 0;
            this.O = 0;
            return;
        }
        int[] iArr = this.f2580i0;
        if (z4) {
            if (iArr[0] == 1 && i10 < (i4 = this.N)) {
                i10 = i4;
            }
            this.N = i10;
            int i12 = this.U;
            if (i10 < i12) {
                this.N = i12;
            }
        }
        if (z5) {
            if (iArr[1] == 1 && i11 < (i3 = this.O)) {
                i11 = i3;
            }
            this.O = i11;
            int i13 = this.V;
            if (i11 < i13) {
                this.O = i13;
            }
        }
    }

    public void F(n.c cVar, boolean z2) {
        int i3;
        int i4;
        m mVar;
        k kVar;
        cVar.getClass();
        int iN = n.c.n(this.B);
        int iN2 = n.c.n(this.C);
        int iN3 = n.c.n(this.D);
        int iN4 = n.c.n(this.E);
        if (z2 && (kVar = this.f2570d) != null) {
            p.f fVar = kVar.f2680h;
            if (fVar.f2662j) {
                p.f fVar2 = kVar.f2681i;
                if (fVar2.f2662j) {
                    iN = fVar.f2659g;
                    iN3 = fVar2.f2659g;
                }
            }
        }
        if (z2 && (mVar = this.f2572e) != null) {
            p.f fVar3 = mVar.f2680h;
            if (fVar3.f2662j) {
                p.f fVar4 = mVar.f2681i;
                if (fVar4.f2662j) {
                    iN2 = fVar3.f2659g;
                    iN4 = fVar4.f2659g;
                }
            }
        }
        int i5 = iN4 - iN2;
        if (iN3 - iN < 0 || i5 < 0 || iN == Integer.MIN_VALUE || iN == Integer.MAX_VALUE || iN2 == Integer.MIN_VALUE || iN2 == Integer.MAX_VALUE || iN3 == Integer.MIN_VALUE || iN3 == Integer.MAX_VALUE || iN4 == Integer.MIN_VALUE || iN4 == Integer.MAX_VALUE) {
            iN = 0;
            iN2 = 0;
            iN3 = 0;
            iN4 = 0;
        }
        int i6 = iN3 - iN;
        int i7 = iN4 - iN2;
        this.R = iN;
        this.S = iN2;
        if (this.Z == 8) {
            this.N = 0;
            this.O = 0;
            return;
        }
        int[] iArr = this.f2580i0;
        if (iArr[0] == 1 && i6 < (i4 = this.N)) {
            i6 = i4;
        }
        if (iArr[1] == 1 && i7 < (i3 = this.O)) {
            i7 = i3;
        }
        this.N = i6;
        this.O = i7;
        int i8 = this.V;
        if (i7 < i8) {
            this.O = i8;
        }
        int i9 = this.U;
        if (i6 < i9) {
            this.N = i9;
        }
    }

    public final void a(e eVar, n.c cVar, HashSet hashSet, int i3, boolean z2) {
        if (z2) {
            if (!hashSet.contains(this)) {
                return;
            }
            g.b(eVar, cVar, this);
            hashSet.remove(this);
            b(cVar, eVar.M(64));
        }
        if (i3 == 0) {
            HashSet hashSet2 = this.B.f2558a;
            if (hashSet2 != null) {
                Iterator it = hashSet2.iterator();
                while (it.hasNext()) {
                    ((c) it.next()).f2560d.a(eVar, cVar, hashSet, i3, true);
                }
            }
            HashSet hashSet3 = this.D.f2558a;
            if (hashSet3 != null) {
                Iterator it2 = hashSet3.iterator();
                while (it2.hasNext()) {
                    ((c) it2.next()).f2560d.a(eVar, cVar, hashSet, i3, true);
                }
                return;
            }
            return;
        }
        HashSet hashSet4 = this.C.f2558a;
        if (hashSet4 != null) {
            Iterator it3 = hashSet4.iterator();
            while (it3.hasNext()) {
                ((c) it3.next()).f2560d.a(eVar, cVar, hashSet, i3, true);
            }
        }
        HashSet hashSet5 = this.E.f2558a;
        if (hashSet5 != null) {
            Iterator it4 = hashSet5.iterator();
            while (it4.hasNext()) {
                ((c) it4.next()).f2560d.a(eVar, cVar, hashSet, i3, true);
            }
        }
        HashSet hashSet6 = this.F.f2558a;
        if (hashSet6 != null) {
            Iterator it5 = hashSet6.iterator();
            while (it5.hasNext()) {
                ((c) it5.next()).f2560d.a(eVar, cVar, hashSet, i3, true);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:239:0x0395  */
    /* JADX WARN: Code duplicated, block: B:241:0x039a A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:243:0x039e  */
    /* JADX WARN: Code duplicated, block: B:246:0x03a2  */
    /* JADX WARN: Code duplicated, block: B:251:0x03ae  */
    /* JADX WARN: Code duplicated, block: B:254:0x03b6  */
    /* JADX WARN: Code duplicated, block: B:257:0x03bc  */
    /* JADX WARN: Code duplicated, block: B:259:0x03bf  */
    /* JADX WARN: Code duplicated, block: B:260:0x03c1  */
    /* JADX WARN: Code duplicated, block: B:263:0x03df  */
    /* JADX WARN: Code duplicated, block: B:282:0x0428  */
    /* JADX WARN: Code duplicated, block: B:298:0x04c9  */
    /* JADX WARN: Code duplicated, block: B:314:0x051c  */
    /* JADX WARN: Code duplicated, block: B:317:0x052e  */
    /* JADX WARN: Code duplicated, block: B:318:0x0530  */
    /* JADX WARN: Code duplicated, block: B:321:0x0534  */
    /* JADX WARN: Code duplicated, block: B:359:0x05e8  */
    /* JADX WARN: Code duplicated, block: B:361:0x05ee  */
    /* JADX WARN: Code duplicated, block: B:363:0x05f5  */
    /* JADX WARN: Code duplicated, block: B:364:0x061e  */
    /* JADX WARN: Code duplicated, block: B:367:0x064c  */
    /* JADX WARN: Code duplicated, block: B:98:0x01af  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r18v12 */
    /* JADX WARN: Type inference failed for: r18v6, types: [boolean] */
    /* JADX WARN: Type inference failed for: r18v7 */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r19v5 */
    /* JADX WARN: Type inference failed for: r20v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r27v3 */
    /* JADX WARN: Type inference failed for: r27v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r27v7 */
    /* JADX WARN: Type inference failed for: r27v8 */
    /* JADX WARN: Type inference failed for: r27v9 */
    /* JADX WARN: Type inference failed for: r4v79 */
    /* JADX WARN: Type inference failed for: r4v94 */
    /* JADX WARN: Type inference failed for: r4v95 */
    /* JADX WARN: Type inference failed for: r57v0, types: [o.d] */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v12, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v14 */
    public void b(n.c cVar, boolean z2) {
        char c3;
        boolean z3;
        boolean z4;
        boolean z5;
        d dVar;
        d dVar2;
        c cVar2;
        c cVar3;
        boolean zS;
        ?? r19;
        h hVar;
        int i3;
        int i4;
        int i5;
        boolean z6;
        int i6;
        boolean z7;
        boolean z8;
        int i7;
        c cVar4;
        boolean z9;
        boolean z10;
        int i8;
        int[] iArr;
        h hVar2;
        h hVar3;
        boolean z11;
        int[] iArr2;
        boolean z12;
        h hVar4;
        boolean z13;
        c cVar5;
        int i9;
        boolean z14;
        h hVar5;
        h hVar6;
        h hVar7;
        int i10;
        int i11;
        char c4;
        int i12;
        int i13;
        c cVar6;
        ?? r27;
        m mVar;
        boolean z15;
        k kVar;
        int i14;
        char c5;
        ?? R;
        k kVar2;
        m mVar2;
        boolean z16;
        n.c cVar7 = cVar;
        c cVar8 = this.B;
        h hVarK = cVar7.k(cVar8);
        c cVar9 = this.D;
        h hVarK2 = cVar7.k(cVar9);
        c cVar10 = this.C;
        h hVarK3 = cVar7.k(cVar10);
        c cVar11 = this.E;
        h hVarK4 = cVar7.k(cVar11);
        c cVar12 = this.F;
        h hVarK5 = cVar7.k(cVar12);
        d dVar3 = this.M;
        if (dVar3 != null) {
            int[] iArr3 = dVar3.f2580i0;
            c3 = 1;
            z4 = iArr3[0] == 2;
            z3 = iArr3[1] == 2;
        } else {
            c3 = 1;
            z3 = false;
            z4 = false;
        }
        int i15 = this.Z;
        boolean[] zArr = this.L;
        boolean z17 = z3;
        if (i15 == 8) {
            ArrayList arrayList = this.K;
            int size = arrayList.size();
            z5 = z4;
            int i16 = 0;
            while (true) {
                if (i16 >= size) {
                    if (zArr[0] || zArr[c3]) {
                        break;
                        break;
                    }
                    return;
                }
                int i17 = size;
                HashSet hashSet = ((c) arrayList.get(i16)).f2558a;
                if (hashSet != null && hashSet.size() > 0) {
                    break;
                }
                i16++;
                size = i17;
            }
        } else {
            z5 = z4;
        }
        boolean z18 = this.f2577h;
        if (z18 || this.f2579i) {
            if (z18) {
                cVar7.d(hVarK, this.R);
                cVar7.d(hVarK2, this.R + this.N);
                if (z5 && (dVar2 = this.M) != null) {
                    e eVar = (e) dVar2;
                    eVar.I(cVar8);
                    WeakReference weakReference = eVar.B0;
                    if (weakReference == null || weakReference.get() == null || cVar9.c() > ((c) eVar.B0.get()).c()) {
                        eVar.B0 = new WeakReference(cVar9);
                    }
                }
            }
            if (this.f2579i) {
                cVar7.d(hVarK3, this.S);
                cVar7.d(hVarK4, this.S + this.O);
                HashSet hashSet2 = cVar12.f2558a;
                if (hashSet2 != null && hashSet2.size() > 0) {
                    cVar7.d(hVarK5, this.S + this.T);
                }
                if (z17 && (dVar = this.M) != null) {
                    e eVar2 = (e) dVar;
                    eVar2.I(cVar10);
                    WeakReference weakReference2 = eVar2.A0;
                    if (weakReference2 == null || weakReference2.get() == null || cVar11.c() > ((c) eVar2.A0.get()).c()) {
                        eVar2.A0 = new WeakReference(cVar11);
                    }
                }
            }
            if (this.f2577h && this.f2579i) {
                this.f2577h = false;
                this.f2579i = false;
                return;
            }
        }
        boolean[] zArr2 = this.f;
        if (!z2 || (kVar2 = this.f2570d) == null || (mVar2 = this.f2572e) == null) {
            cVar2 = cVar10;
            cVar3 = cVar11;
        } else {
            cVar2 = cVar10;
            p.f fVar = kVar2.f2680h;
            cVar3 = cVar11;
            if (fVar.f2662j && kVar2.f2681i.f2662j && mVar2.f2680h.f2662j && mVar2.f2681i.f2662j) {
                cVar7.d(hVarK, fVar.f2659g);
                cVar7.d(hVarK2, this.f2570d.f2681i.f2659g);
                cVar7.d(hVarK3, this.f2572e.f2680h.f2659g);
                cVar7.d(hVarK4, this.f2572e.f2681i.f2659g);
                cVar7.d(hVarK5, this.f2572e.f2669k.f2659g);
                if (this.M == null) {
                    z16 = false;
                } else {
                    if (z5 && zArr2[0] && !r()) {
                        cVar7.f(cVar7.k(this.M.D), hVarK2, 0, 8);
                    }
                    if (z17 && zArr2[c3] && !s()) {
                        z16 = false;
                        cVar7.f(cVar7.k(this.M.E), hVarK4, 0, 8);
                    } else {
                        z16 = false;
                    }
                }
                this.f2577h = z16;
                this.f2579i = z16;
                return;
            }
        }
        if (this.M != null) {
            if (q(0)) {
                ((e) this.M).G(this, 0);
                char c6 = c3;
                c5 = c6 == true ? 1 : 0;
                R = c6;
            } else {
                c5 = c3;
                R = r();
            }
            if (q(c5)) {
                ((e) this.M).G(this, c5);
                zS = true;
            } else {
                zS = s();
            }
            if (R == 0 && z5 && this.Z != 8 && cVar8.f == null && cVar9.f == null) {
                cVar7.f(cVar7.k(this.M.D), hVarK2, 0, 1);
            }
            r19 = R;
        } else {
            zS = false;
            r19 = 0;
        }
        int i18 = this.N;
        int i19 = this.U;
        if (i18 >= i19) {
            i19 = i18;
        }
        int i20 = this.O;
        int i21 = this.V;
        int i22 = i20 < i21 ? i21 : i20;
        int[] iArr4 = this.f2580i0;
        int i23 = iArr4[0];
        boolean z19 = zS;
        boolean z20 = i23 != 3;
        int i24 = iArr4[1];
        boolean z21 = i24 != 3;
        int i25 = this.Q;
        this.f2592u = i25;
        float f = this.P;
        this.f2593v = f;
        int i26 = this.f2583l;
        int i27 = this.f2584m;
        if (f > 0.0f) {
            hVar = hVarK5;
            if (this.Z != 8) {
                i4 = (i23 == 3 && i26 == 0) ? 3 : i26;
                int i28 = (i24 == 3 && i27 == 0) ? 3 : i27;
                if (i23 != 3 || i24 != 3 || i4 != 3 || i28 != 3) {
                    if (i23 == 3 && i4 == 3) {
                        this.f2592u = 0;
                        i19 = (int) (f * i20);
                        if (i24 != 3) {
                            cVar3 = cVar3;
                            i3 = i22;
                            i4 = 4;
                            z6 = false;
                        }
                        i5 = i28;
                        int[] iArr5 = this.f2585n;
                        iArr5[0] = i4;
                        iArr5[1] = i5;
                        if (z6) {
                            int i29 = this.f2592u;
                            i6 = -1;
                            if (i29 != 0) {
                            }
                            if (z6) {
                                z7 = false;
                            } else {
                                z7 = false;
                            }
                            if (iArr4[0] == 2) {
                                z8 = false;
                            } else {
                                z8 = false;
                            }
                            if (z8) {
                                i7 = 0;
                            } else {
                                i7 = i19;
                            }
                            cVar4 = this.I;
                            z9 = !cVar4.f();
                            z10 = z5;
                            boolean z22 = zArr[0];
                            boolean z23 = zArr[1];
                            i8 = this.f2581j;
                            iArr = this.f2594w;
                            c cVar13 = cVar3;
                            if (i8 != 2) {
                                hVar2 = hVarK;
                                hVar3 = hVarK2;
                                z11 = z10;
                                iArr2 = iArr;
                                z12 = z17;
                                hVar4 = hVarK3;
                                z13 = z19;
                                cVar5 = cVar4;
                                i9 = i4;
                                z14 = z9;
                            } else {
                                hVar2 = hVarK;
                                hVar3 = hVarK2;
                                z11 = z10;
                                iArr2 = iArr;
                                z12 = z17;
                                hVar4 = hVarK3;
                                z13 = z19;
                                cVar5 = cVar4;
                                i9 = i4;
                                z14 = z9;
                            }
                            if (z2) {
                                hVar5 = hVar4;
                                hVar6 = r30;
                                hVar7 = hVar;
                                i10 = 0;
                                i11 = 8;
                                c4 = 1;
                                i12 = 1;
                            } else {
                                hVar5 = hVar4;
                                hVar6 = r30;
                                hVar7 = hVar;
                                i10 = 0;
                                i11 = 8;
                                c4 = 1;
                                i12 = 1;
                            }
                            if (this.f2582k == 2) {
                                i13 = i10;
                            } else {
                                i13 = i12;
                            }
                            if (i13 == 0) {
                            }
                            if (z6) {
                                if (this.f2592u == 1) {
                                    float f3 = this.f2593v;
                                    n.b bVarL = cVar7.l();
                                    bVarL.f2449d.g(hVar6, -1.0f);
                                    bVarL.f2449d.g(hVar5, 1.0f);
                                    bVarL.f2449d.g(hVar3, f3);
                                    bVarL.f2449d.g(hVar2, -f3);
                                    cVar7.c(bVarL);
                                } else {
                                    float f4 = this.f2593v;
                                    n.b bVarL2 = cVar7.l();
                                    bVarL2.f2449d.g(hVar3, -1.0f);
                                    bVarL2.f2449d.g(hVar2, 1.0f);
                                    bVarL2.f2449d.g(hVar6, f4);
                                    bVarL2.f2449d.g(hVar5, -f4);
                                    cVar7.c(bVarL2);
                                }
                            }
                            if (cVar5.f()) {
                                c cVar14 = cVar5;
                                d dVar4 = cVar14.f.f2560d;
                                float radians = (float) Math.toRadians(this.f2595x + 90.0f);
                                int iD = cVar14.d();
                                h hVarK6 = cVar7.k(g(2));
                                h hVarK7 = cVar7.k(g(3));
                                h hVarK8 = cVar7.k(g(4));
                                h hVarK9 = cVar7.k(g(5));
                                h hVarK10 = cVar7.k(dVar4.g(2));
                                h hVarK11 = cVar7.k(dVar4.g(3));
                                h hVarK12 = cVar7.k(dVar4.g(4));
                                h hVarK13 = cVar7.k(dVar4.g(5));
                                n.b bVarL3 = cVar7.l();
                                double d3 = radians;
                                double dSin = Math.sin(d3);
                                double d4 = iD;
                                bVarL3.f2449d.g(hVarK11, 0.5f);
                                bVarL3.f2449d.g(hVarK13, 0.5f);
                                bVarL3.f2449d.g(hVarK7, -0.5f);
                                bVarL3.f2449d.g(hVarK9, -0.5f);
                                bVarL3.b = -((float) (dSin * d4));
                                cVar7.c(bVarL3);
                                n.b bVarL4 = cVar7.l();
                                float fCos = (float) (Math.cos(d3) * d4);
                                bVarL4.f2449d.g(hVarK10, 0.5f);
                                bVarL4.f2449d.g(hVarK12, 0.5f);
                                bVarL4.f2449d.g(hVarK6, -0.5f);
                                bVarL4.f2449d.g(hVarK8, -0.5f);
                                bVarL4.b = -fCos;
                                cVar7.c(bVarL4);
                            }
                            this.f2577h = false;
                            this.f2579i = false;
                        }
                        i6 = -1;
                        if (z6) {
                            z7 = false;
                        } else {
                            z7 = false;
                        }
                        if (iArr4[0] == 2) {
                            z8 = false;
                        } else {
                            z8 = false;
                        }
                        if (z8) {
                            i7 = 0;
                        } else {
                            i7 = i19;
                        }
                        cVar4 = this.I;
                        z9 = !cVar4.f();
                        z10 = z5;
                        boolean z24 = zArr[0];
                        boolean z25 = zArr[1];
                        i8 = this.f2581j;
                        iArr = this.f2594w;
                        c cVar15 = cVar3;
                        if (i8 != 2) {
                            hVar2 = hVarK;
                            hVar3 = hVarK2;
                            z11 = z10;
                            iArr2 = iArr;
                            z12 = z17;
                            hVar4 = hVarK3;
                            z13 = z19;
                            cVar5 = cVar4;
                            i9 = i4;
                            z14 = z9;
                        } else {
                            hVar2 = hVarK;
                            hVar3 = hVarK2;
                            z11 = z10;
                            iArr2 = iArr;
                            z12 = z17;
                            hVar4 = hVarK3;
                            z13 = z19;
                            cVar5 = cVar4;
                            i9 = i4;
                            z14 = z9;
                        }
                        if (z2) {
                            hVar5 = hVar4;
                            hVar6 = r30;
                            hVar7 = hVar;
                            i10 = 0;
                            i11 = 8;
                            c4 = 1;
                            i12 = 1;
                        } else {
                            hVar5 = hVar4;
                            hVar6 = r30;
                            hVar7 = hVar;
                            i10 = 0;
                            i11 = 8;
                            c4 = 1;
                            i12 = 1;
                        }
                        if (this.f2582k == 2) {
                            i13 = i10;
                        } else {
                            i13 = i12;
                        }
                        if (i13 == 0) {
                        }
                        if (z6) {
                            if (this.f2592u == 1) {
                                float f5 = this.f2593v;
                                n.b bVarL5 = cVar7.l();
                                bVarL5.f2449d.g(hVar6, -1.0f);
                                bVarL5.f2449d.g(hVar5, 1.0f);
                                bVarL5.f2449d.g(hVar3, f5);
                                bVarL5.f2449d.g(hVar2, -f5);
                                cVar7.c(bVarL5);
                            } else {
                                float f6 = this.f2593v;
                                n.b bVarL6 = cVar7.l();
                                bVarL6.f2449d.g(hVar3, -1.0f);
                                bVarL6.f2449d.g(hVar2, 1.0f);
                                bVarL6.f2449d.g(hVar6, f6);
                                bVarL6.f2449d.g(hVar5, -f6);
                                cVar7.c(bVarL6);
                            }
                        }
                        if (cVar5.f()) {
                            c cVar16 = cVar5;
                            d dVar5 = cVar16.f.f2560d;
                            float radians2 = (float) Math.toRadians(this.f2595x + 90.0f);
                            int iD2 = cVar16.d();
                            h hVarK14 = cVar7.k(g(2));
                            h hVarK15 = cVar7.k(g(3));
                            h hVarK16 = cVar7.k(g(4));
                            h hVarK17 = cVar7.k(g(5));
                            h hVarK18 = cVar7.k(dVar5.g(2));
                            h hVarK19 = cVar7.k(dVar5.g(3));
                            h hVarK110 = cVar7.k(dVar5.g(4));
                            h hVarK111 = cVar7.k(dVar5.g(5));
                            n.b bVarL7 = cVar7.l();
                            double d5 = radians2;
                            double dSin2 = Math.sin(d5);
                            double d6 = iD2;
                            bVarL7.f2449d.g(hVarK19, 0.5f);
                            bVarL7.f2449d.g(hVarK111, 0.5f);
                            bVarL7.f2449d.g(hVarK15, -0.5f);
                            bVarL7.f2449d.g(hVarK17, -0.5f);
                            bVarL7.b = -((float) (dSin2 * d6));
                            cVar7.c(bVarL7);
                            n.b bVarL8 = cVar7.l();
                            float fCos2 = (float) (Math.cos(d5) * d6);
                            bVarL8.f2449d.g(hVarK18, 0.5f);
                            bVarL8.f2449d.g(hVarK110, 0.5f);
                            bVarL8.f2449d.g(hVarK14, -0.5f);
                            bVarL8.f2449d.g(hVarK16, -0.5f);
                            bVarL8.b = -fCos2;
                            cVar7.c(bVarL8);
                        }
                        this.f2577h = false;
                        this.f2579i = false;
                    }
                    if (i24 == 3 && i28 == 3) {
                        this.f2592u = 1;
                        if (i25 == -1) {
                            this.f2593v = 1.0f / f;
                        }
                        i3 = (int) (this.f2593v * i18);
                        if (i23 != 3) {
                            i4 = i4;
                            i5 = 4;
                        }
                    }
                    z6 = true;
                    i5 = i28;
                    int[] iArr6 = this.f2585n;
                    iArr6[0] = i4;
                    iArr6[1] = i5;
                    if (z6) {
                        int i210 = this.f2592u;
                        i6 = -1;
                        boolean z26 = i210 != 0 || i210 == -1;
                        if (z6 || !((i14 = this.f2592u) == 1 || i14 == i6)) {
                            z7 = false;
                        } else {
                            z7 = true;
                        }
                        if (iArr4[0] == 2 || !(this instanceof e)) {
                            z8 = false;
                        } else {
                            z8 = true;
                        }
                        if (z8) {
                            i7 = 0;
                        } else {
                            i7 = i19;
                        }
                        cVar4 = this.I;
                        z9 = !cVar4.f();
                        z10 = z5;
                        boolean z27 = zArr[0];
                        boolean z28 = zArr[1];
                        i8 = this.f2581j;
                        iArr = this.f2594w;
                        c cVar17 = cVar3;
                        if (i8 != 2 || this.f2577h) {
                            hVar2 = hVarK;
                            hVar3 = hVarK2;
                            z11 = z10;
                            iArr2 = iArr;
                            z12 = z17;
                            hVar4 = hVarK3;
                            z13 = z19;
                            cVar5 = cVar4;
                            i9 = i4;
                            z14 = z9;
                        } else {
                            if (!z2 || (kVar = this.f2570d) == null) {
                                z15 = z26;
                            } else {
                                p.f fVar2 = kVar.f2680h;
                                z15 = z26;
                                if (fVar2.f2662j && kVar.f2681i.f2662j) {
                                    if (z2) {
                                        cVar7.d(hVarK, fVar2.f2659g);
                                        cVar7.d(hVarK2, this.f2570d.f2681i.f2659g);
                                        if (this.M != null && z10 && zArr2[0] && !r()) {
                                            cVar7.f(cVar7.k(this.M.D), hVarK2, 0, 8);
                                        }
                                    }
                                    hVar2 = hVarK;
                                    hVar3 = hVarK2;
                                    z11 = z10;
                                    iArr2 = iArr;
                                    z12 = z17;
                                    hVar4 = hVarK3;
                                    z13 = z19;
                                    cVar5 = cVar4;
                                    i9 = i4;
                                    z14 = z9;
                                }
                            }
                            d dVar6 = this.M;
                            h hVarK20 = dVar6 != null ? cVar7.k(dVar6.D) : null;
                            d dVar7 = this.M;
                            h hVarK21 = dVar7 != null ? cVar7.k(dVar7.B) : null;
                            i9 = i4;
                            z11 = z10;
                            iArr2 = iArr;
                            z13 = z19;
                            cVar5 = cVar4;
                            hVar3 = hVarK2;
                            hVar2 = hVarK;
                            hVar4 = hVarK3;
                            cVar7 = cVar;
                            boolean z29 = z9;
                            h hVar8 = hVarK20;
                            z12 = z17;
                            d(cVar7, true, z11, z12, zArr2[0], hVarK21, hVar8, iArr4[0], z8, cVar8, cVar9, this.R, i7, this.U, iArr2[0], this.W, z15, iArr4[1] == 3, r19, z13, z27, i9, i5, this.f2586o, this.f2587p, this.f2588q, z29);
                            z14 = z29;
                        }
                        if (z2 || (mVar = this.f2572e) == null) {
                            hVar5 = hVar4;
                            hVar6 = r30;
                            hVar7 = hVar;
                            i10 = 0;
                            i11 = 8;
                            c4 = 1;
                            i12 = 1;
                        } else {
                            p.f fVar3 = mVar.f2680h;
                            if (fVar3.f2662j && mVar.f2681i.f2662j) {
                                int i30 = fVar3.f2659g;
                                hVar5 = hVar4;
                                cVar7.d(hVar5, i30);
                                hVar6 = hVarK4;
                                cVar7.d(hVar6, this.f2572e.f2681i.f2659g);
                                hVar7 = hVar;
                                cVar7.d(hVar7, this.f2572e.f2669k.f2659g);
                                d dVar8 = this.M;
                                if (dVar8 == null || z13 || !z12) {
                                    i10 = 0;
                                    i11 = 8;
                                    c4 = 1;
                                } else {
                                    c4 = 1;
                                    if (zArr2[1]) {
                                        i10 = 0;
                                        i11 = 8;
                                        cVar7.f(cVar7.k(dVar8.E), hVar6, 0, 8);
                                    } else {
                                        i10 = 0;
                                        i11 = 8;
                                    }
                                }
                                i12 = i10;
                            } else {
                                hVar5 = hVar4;
                                hVar6 = r30;
                                hVar7 = hVar;
                                i10 = 0;
                                i11 = 8;
                                c4 = 1;
                                i12 = 1;
                            }
                        }
                        if (this.f2582k == 2) {
                            i13 = i10;
                        } else {
                            i13 = i12;
                        }
                        if (i13 == 0 && !this.f2579i) {
                            ?? r9 = (r27[c4] == 2 && (this instanceof e)) ? c4 : i10;
                            int i31 = r9 != 0 ? i10 : i3;
                            d dVar9 = this.M;
                            h hVarK22 = dVar9 != null ? cVar7.k(dVar9.E) : null;
                            d dVar10 = this.M;
                            h hVarK23 = dVar10 != null ? cVar7.k(dVar10.C) : null;
                            int i32 = this.T;
                            if (i32 <= 0 && this.Z != i11) {
                                cVar6 = cVar17;
                                r27 = z14;
                            } else if (cVar12.f != null) {
                                cVar7.e(hVar7, hVar5, i32, i11);
                                cVar7.e(hVar7, cVar7.k(cVar12.f), i10, i11);
                                cVar6 = cVar17;
                                if (z12) {
                                    cVar7.f(hVarK22, cVar7.k(cVar6), i10, 5);
                                }
                                r27 = i10;
                            } else {
                                cVar6 = cVar17;
                                if (this.Z == i11) {
                                    cVar7.e(hVar7, hVar5, i10, i11);
                                    r27 = z14;
                                } else {
                                    cVar7.e(hVar7, hVar5, i32, i11);
                                    r27 = z14;
                                }
                            }
                            boolean z30 = zArr2[c4];
                            int i33 = i10;
                            int i34 = r27[c4];
                            int i35 = this.S;
                            int i36 = this.V;
                            int i37 = iArr2[c4];
                            float f7 = this.X;
                            int i38 = iArr4[i33 == true ? 1 : 0];
                            ?? r18 = i33;
                            if (i38 == 3) {
                                r18 = c4;
                            }
                            cVar7 = cVar;
                            d(cVar7, false, z12, z11, z30, hVarK23, hVarK22, i34, r9, cVar2, cVar6, i35, i31, i36, i37, f7, z7, r18, z13, r19, z28, i5, i9, this.f2589r, this.f2590s, this.f2591t, r27);
                        }
                        if (z6) {
                            if (this.f2592u == 1) {
                                float f8 = this.f2593v;
                                n.b bVarL9 = cVar7.l();
                                bVarL9.f2449d.g(hVar6, -1.0f);
                                bVarL9.f2449d.g(hVar5, 1.0f);
                                bVarL9.f2449d.g(hVar3, f8);
                                bVarL9.f2449d.g(hVar2, -f8);
                                cVar7.c(bVarL9);
                            } else {
                                float f9 = this.f2593v;
                                n.b bVarL10 = cVar7.l();
                                bVarL10.f2449d.g(hVar3, -1.0f);
                                bVarL10.f2449d.g(hVar2, 1.0f);
                                bVarL10.f2449d.g(hVar6, f9);
                                bVarL10.f2449d.g(hVar5, -f9);
                                cVar7.c(bVarL10);
                            }
                        }
                        if (cVar5.f()) {
                            c cVar18 = cVar5;
                            d dVar11 = cVar18.f.f2560d;
                            float radians3 = (float) Math.toRadians(this.f2595x + 90.0f);
                            int iD3 = cVar18.d();
                            h hVarK112 = cVar7.k(g(2));
                            h hVarK113 = cVar7.k(g(3));
                            h hVarK114 = cVar7.k(g(4));
                            h hVarK115 = cVar7.k(g(5));
                            h hVarK116 = cVar7.k(dVar11.g(2));
                            h hVarK117 = cVar7.k(dVar11.g(3));
                            h hVarK118 = cVar7.k(dVar11.g(4));
                            h hVarK119 = cVar7.k(dVar11.g(5));
                            n.b bVarL11 = cVar7.l();
                            double d7 = radians3;
                            double dSin3 = Math.sin(d7);
                            double d8 = iD3;
                            bVarL11.f2449d.g(hVarK117, 0.5f);
                            bVarL11.f2449d.g(hVarK119, 0.5f);
                            bVarL11.f2449d.g(hVarK113, -0.5f);
                            bVarL11.f2449d.g(hVarK115, -0.5f);
                            bVarL11.b = -((float) (dSin3 * d8));
                            cVar7.c(bVarL11);
                            n.b bVarL12 = cVar7.l();
                            float fCos3 = (float) (Math.cos(d7) * d8);
                            bVarL12.f2449d.g(hVarK116, 0.5f);
                            bVarL12.f2449d.g(hVarK118, 0.5f);
                            bVarL12.f2449d.g(hVarK112, -0.5f);
                            bVarL12.f2449d.g(hVarK114, -0.5f);
                            bVarL12.b = -fCos3;
                            cVar7.c(bVarL12);
                        }
                        this.f2577h = false;
                        this.f2579i = false;
                    }
                    i6 = -1;
                    if (z6) {
                        z7 = false;
                    } else {
                        z7 = false;
                    }
                    if (iArr4[0] == 2) {
                        z8 = false;
                    } else {
                        z8 = false;
                    }
                    if (z8) {
                        i7 = 0;
                    } else {
                        i7 = i19;
                    }
                    cVar4 = this.I;
                    z9 = !cVar4.f();
                    z10 = z5;
                    boolean z210 = zArr[0];
                    boolean z211 = zArr[1];
                    i8 = this.f2581j;
                    iArr = this.f2594w;
                    c cVar19 = cVar3;
                    if (i8 != 2) {
                        hVar2 = hVarK;
                        hVar3 = hVarK2;
                        z11 = z10;
                        iArr2 = iArr;
                        z12 = z17;
                        hVar4 = hVarK3;
                        z13 = z19;
                        cVar5 = cVar4;
                        i9 = i4;
                        z14 = z9;
                    } else {
                        hVar2 = hVarK;
                        hVar3 = hVarK2;
                        z11 = z10;
                        iArr2 = iArr;
                        z12 = z17;
                        hVar4 = hVarK3;
                        z13 = z19;
                        cVar5 = cVar4;
                        i9 = i4;
                        z14 = z9;
                    }
                    if (z2) {
                        hVar5 = hVar4;
                        hVar6 = r30;
                        hVar7 = hVar;
                        i10 = 0;
                        i11 = 8;
                        c4 = 1;
                        i12 = 1;
                    } else {
                        hVar5 = hVar4;
                        hVar6 = r30;
                        hVar7 = hVar;
                        i10 = 0;
                        i11 = 8;
                        c4 = 1;
                        i12 = 1;
                    }
                    if (this.f2582k == 2) {
                        i13 = i10;
                    } else {
                        i13 = i12;
                    }
                    if (i13 == 0) {
                    }
                    if (z6) {
                        if (this.f2592u == 1) {
                            float f10 = this.f2593v;
                            n.b bVarL13 = cVar7.l();
                            bVarL13.f2449d.g(hVar6, -1.0f);
                            bVarL13.f2449d.g(hVar5, 1.0f);
                            bVarL13.f2449d.g(hVar3, f10);
                            bVarL13.f2449d.g(hVar2, -f10);
                            cVar7.c(bVarL13);
                        } else {
                            float f11 = this.f2593v;
                            n.b bVarL14 = cVar7.l();
                            bVarL14.f2449d.g(hVar3, -1.0f);
                            bVarL14.f2449d.g(hVar2, 1.0f);
                            bVarL14.f2449d.g(hVar6, f11);
                            bVarL14.f2449d.g(hVar5, -f11);
                            cVar7.c(bVarL14);
                        }
                    }
                    if (cVar5.f()) {
                        c cVar110 = cVar5;
                        d dVar12 = cVar110.f.f2560d;
                        float radians4 = (float) Math.toRadians(this.f2595x + 90.0f);
                        int iD4 = cVar110.d();
                        h hVarK1110 = cVar7.k(g(2));
                        h hVarK1111 = cVar7.k(g(3));
                        h hVarK1112 = cVar7.k(g(4));
                        h hVarK1113 = cVar7.k(g(5));
                        h hVarK1114 = cVar7.k(dVar12.g(2));
                        h hVarK1115 = cVar7.k(dVar12.g(3));
                        h hVarK1116 = cVar7.k(dVar12.g(4));
                        h hVarK1117 = cVar7.k(dVar12.g(5));
                        n.b bVarL15 = cVar7.l();
                        double d9 = radians4;
                        double dSin4 = Math.sin(d9);
                        double d10 = iD4;
                        bVarL15.f2449d.g(hVarK1115, 0.5f);
                        bVarL15.f2449d.g(hVarK1117, 0.5f);
                        bVarL15.f2449d.g(hVarK1111, -0.5f);
                        bVarL15.f2449d.g(hVarK1113, -0.5f);
                        bVarL15.b = -((float) (dSin4 * d10));
                        cVar7.c(bVarL15);
                        n.b bVarL16 = cVar7.l();
                        float fCos4 = (float) (Math.cos(d9) * d10);
                        bVarL16.f2449d.g(hVarK1114, 0.5f);
                        bVarL16.f2449d.g(hVarK1116, 0.5f);
                        bVarL16.f2449d.g(hVarK1110, -0.5f);
                        bVarL16.f2449d.g(hVarK1112, -0.5f);
                        bVarL16.b = -fCos4;
                        cVar7.c(bVarL16);
                    }
                    this.f2577h = false;
                    this.f2579i = false;
                }
                if (i25 == -1) {
                    if (z20 && !z21) {
                        this.f2592u = 0;
                    } else if (!z20 && z21) {
                        this.f2592u = 1;
                        if (i25 == -1) {
                            this.f2593v = 1.0f / f;
                        }
                    }
                }
                if (this.f2592u == 0 && (!cVar2.f() || !cVar3.f())) {
                    this.f2592u = 1;
                } else if (this.f2592u == 1 && (!cVar8.f() || !cVar9.f())) {
                    this.f2592u = 0;
                }
                if (this.f2592u == -1 && (!cVar2.f() || !cVar3.f() || !cVar8.f() || !cVar9.f())) {
                    if (cVar2.f() && cVar3.f()) {
                        this.f2592u = 0;
                    } else if (cVar8.f() && cVar9.f()) {
                        this.f2593v = 1.0f / this.f2593v;
                        this.f2592u = 1;
                    }
                }
                if (this.f2592u == -1) {
                    int i39 = this.f2586o;
                    if (i39 > 0 && this.f2589r == 0) {
                        this.f2592u = 0;
                    } else if (i39 == 0 && this.f2589r > 0) {
                        this.f2593v = 1.0f / this.f2593v;
                        this.f2592u = 1;
                    }
                }
                i3 = i22;
                z6 = true;
                i5 = i28;
                int[] iArr7 = this.f2585n;
                iArr7[0] = i4;
                iArr7[1] = i5;
                if (z6) {
                    int i211 = this.f2592u;
                    i6 = -1;
                    if (i211 != 0) {
                    }
                    if (z6) {
                        z7 = false;
                    } else {
                        z7 = false;
                    }
                    if (iArr4[0] == 2) {
                        z8 = false;
                    } else {
                        z8 = false;
                    }
                    if (z8) {
                        i7 = 0;
                    } else {
                        i7 = i19;
                    }
                    cVar4 = this.I;
                    z9 = !cVar4.f();
                    z10 = z5;
                    boolean z212 = zArr[0];
                    boolean z213 = zArr[1];
                    i8 = this.f2581j;
                    iArr = this.f2594w;
                    c cVar111 = cVar3;
                    if (i8 != 2) {
                        hVar2 = hVarK;
                        hVar3 = hVarK2;
                        z11 = z10;
                        iArr2 = iArr;
                        z12 = z17;
                        hVar4 = hVarK3;
                        z13 = z19;
                        cVar5 = cVar4;
                        i9 = i4;
                        z14 = z9;
                    } else {
                        hVar2 = hVarK;
                        hVar3 = hVarK2;
                        z11 = z10;
                        iArr2 = iArr;
                        z12 = z17;
                        hVar4 = hVarK3;
                        z13 = z19;
                        cVar5 = cVar4;
                        i9 = i4;
                        z14 = z9;
                    }
                    if (z2) {
                        hVar5 = hVar4;
                        hVar6 = r30;
                        hVar7 = hVar;
                        i10 = 0;
                        i11 = 8;
                        c4 = 1;
                        i12 = 1;
                    } else {
                        hVar5 = hVar4;
                        hVar6 = r30;
                        hVar7 = hVar;
                        i10 = 0;
                        i11 = 8;
                        c4 = 1;
                        i12 = 1;
                    }
                    if (this.f2582k == 2) {
                        i13 = i10;
                    } else {
                        i13 = i12;
                    }
                    if (i13 == 0) {
                    }
                    if (z6) {
                        if (this.f2592u == 1) {
                            float f12 = this.f2593v;
                            n.b bVarL17 = cVar7.l();
                            bVarL17.f2449d.g(hVar6, -1.0f);
                            bVarL17.f2449d.g(hVar5, 1.0f);
                            bVarL17.f2449d.g(hVar3, f12);
                            bVarL17.f2449d.g(hVar2, -f12);
                            cVar7.c(bVarL17);
                        } else {
                            float f13 = this.f2593v;
                            n.b bVarL18 = cVar7.l();
                            bVarL18.f2449d.g(hVar3, -1.0f);
                            bVarL18.f2449d.g(hVar2, 1.0f);
                            bVarL18.f2449d.g(hVar6, f13);
                            bVarL18.f2449d.g(hVar5, -f13);
                            cVar7.c(bVarL18);
                        }
                    }
                    if (cVar5.f()) {
                        c cVar112 = cVar5;
                        d dVar13 = cVar112.f.f2560d;
                        float radians5 = (float) Math.toRadians(this.f2595x + 90.0f);
                        int iD5 = cVar112.d();
                        h hVarK1118 = cVar7.k(g(2));
                        h hVarK1119 = cVar7.k(g(3));
                        h hVarK11110 = cVar7.k(g(4));
                        h hVarK11111 = cVar7.k(g(5));
                        h hVarK11112 = cVar7.k(dVar13.g(2));
                        h hVarK11113 = cVar7.k(dVar13.g(3));
                        h hVarK11114 = cVar7.k(dVar13.g(4));
                        h hVarK11115 = cVar7.k(dVar13.g(5));
                        n.b bVarL19 = cVar7.l();
                        double d11 = radians5;
                        double dSin5 = Math.sin(d11);
                        double d12 = iD5;
                        bVarL19.f2449d.g(hVarK11113, 0.5f);
                        bVarL19.f2449d.g(hVarK11115, 0.5f);
                        bVarL19.f2449d.g(hVarK1119, -0.5f);
                        bVarL19.f2449d.g(hVarK11111, -0.5f);
                        bVarL19.b = -((float) (dSin5 * d12));
                        cVar7.c(bVarL19);
                        n.b bVarL110 = cVar7.l();
                        float fCos5 = (float) (Math.cos(d11) * d12);
                        bVarL110.f2449d.g(hVarK11112, 0.5f);
                        bVarL110.f2449d.g(hVarK11114, 0.5f);
                        bVarL110.f2449d.g(hVarK1118, -0.5f);
                        bVarL110.f2449d.g(hVarK11110, -0.5f);
                        bVarL110.b = -fCos5;
                        cVar7.c(bVarL110);
                    }
                    this.f2577h = false;
                    this.f2579i = false;
                }
                i6 = -1;
                if (z6) {
                    z7 = false;
                } else {
                    z7 = false;
                }
                if (iArr4[0] == 2) {
                    z8 = false;
                } else {
                    z8 = false;
                }
                if (z8) {
                    i7 = 0;
                } else {
                    i7 = i19;
                }
                cVar4 = this.I;
                z9 = !cVar4.f();
                z10 = z5;
                boolean z214 = zArr[0];
                boolean z215 = zArr[1];
                i8 = this.f2581j;
                iArr = this.f2594w;
                c cVar113 = cVar3;
                if (i8 != 2) {
                    hVar2 = hVarK;
                    hVar3 = hVarK2;
                    z11 = z10;
                    iArr2 = iArr;
                    z12 = z17;
                    hVar4 = hVarK3;
                    z13 = z19;
                    cVar5 = cVar4;
                    i9 = i4;
                    z14 = z9;
                } else {
                    hVar2 = hVarK;
                    hVar3 = hVarK2;
                    z11 = z10;
                    iArr2 = iArr;
                    z12 = z17;
                    hVar4 = hVarK3;
                    z13 = z19;
                    cVar5 = cVar4;
                    i9 = i4;
                    z14 = z9;
                }
                if (z2) {
                    hVar5 = hVar4;
                    hVar6 = r30;
                    hVar7 = hVar;
                    i10 = 0;
                    i11 = 8;
                    c4 = 1;
                    i12 = 1;
                } else {
                    hVar5 = hVar4;
                    hVar6 = r30;
                    hVar7 = hVar;
                    i10 = 0;
                    i11 = 8;
                    c4 = 1;
                    i12 = 1;
                }
                if (this.f2582k == 2) {
                    i13 = i10;
                } else {
                    i13 = i12;
                }
                if (i13 == 0) {
                }
                if (z6) {
                    if (this.f2592u == 1) {
                        float f14 = this.f2593v;
                        n.b bVarL111 = cVar7.l();
                        bVarL111.f2449d.g(hVar6, -1.0f);
                        bVarL111.f2449d.g(hVar5, 1.0f);
                        bVarL111.f2449d.g(hVar3, f14);
                        bVarL111.f2449d.g(hVar2, -f14);
                        cVar7.c(bVarL111);
                    } else {
                        float f15 = this.f2593v;
                        n.b bVarL112 = cVar7.l();
                        bVarL112.f2449d.g(hVar3, -1.0f);
                        bVarL112.f2449d.g(hVar2, 1.0f);
                        bVarL112.f2449d.g(hVar6, f15);
                        bVarL112.f2449d.g(hVar5, -f15);
                        cVar7.c(bVarL112);
                    }
                }
                if (cVar5.f()) {
                    c cVar114 = cVar5;
                    d dVar14 = cVar114.f.f2560d;
                    float radians6 = (float) Math.toRadians(this.f2595x + 90.0f);
                    int iD6 = cVar114.d();
                    h hVarK11116 = cVar7.k(g(2));
                    h hVarK11117 = cVar7.k(g(3));
                    h hVarK11118 = cVar7.k(g(4));
                    h hVarK11119 = cVar7.k(g(5));
                    h hVarK111110 = cVar7.k(dVar14.g(2));
                    h hVarK111111 = cVar7.k(dVar14.g(3));
                    h hVarK111112 = cVar7.k(dVar14.g(4));
                    h hVarK111113 = cVar7.k(dVar14.g(5));
                    n.b bVarL113 = cVar7.l();
                    double d13 = radians6;
                    double dSin6 = Math.sin(d13);
                    double d14 = iD6;
                    bVarL113.f2449d.g(hVarK111111, 0.5f);
                    bVarL113.f2449d.g(hVarK111113, 0.5f);
                    bVarL113.f2449d.g(hVarK11117, -0.5f);
                    bVarL113.f2449d.g(hVarK11119, -0.5f);
                    bVarL113.b = -((float) (dSin6 * d14));
                    cVar7.c(bVarL113);
                    n.b bVarL114 = cVar7.l();
                    float fCos6 = (float) (Math.cos(d13) * d14);
                    bVarL114.f2449d.g(hVarK111110, 0.5f);
                    bVarL114.f2449d.g(hVarK111112, 0.5f);
                    bVarL114.f2449d.g(hVarK11116, -0.5f);
                    bVarL114.f2449d.g(hVarK11118, -0.5f);
                    bVarL114.b = -fCos6;
                    cVar7.c(bVarL114);
                }
                this.f2577h = false;
                this.f2579i = false;
            }
            z6 = false;
            int[] iArr8 = this.f2585n;
            iArr8[0] = i4;
            iArr8[1] = i5;
            if (z6) {
                int i212 = this.f2592u;
                i6 = -1;
                if (i212 != 0) {
                }
                if (z6) {
                    z7 = false;
                } else {
                    z7 = false;
                }
                if (iArr4[0] == 2) {
                    z8 = false;
                } else {
                    z8 = false;
                }
                if (z8) {
                    i7 = 0;
                } else {
                    i7 = i19;
                }
                cVar4 = this.I;
                z9 = !cVar4.f();
                z10 = z5;
                boolean z216 = zArr[0];
                boolean z217 = zArr[1];
                i8 = this.f2581j;
                iArr = this.f2594w;
                c cVar115 = cVar3;
                if (i8 != 2) {
                    hVar2 = hVarK;
                    hVar3 = hVarK2;
                    z11 = z10;
                    iArr2 = iArr;
                    z12 = z17;
                    hVar4 = hVarK3;
                    z13 = z19;
                    cVar5 = cVar4;
                    i9 = i4;
                    z14 = z9;
                } else {
                    hVar2 = hVarK;
                    hVar3 = hVarK2;
                    z11 = z10;
                    iArr2 = iArr;
                    z12 = z17;
                    hVar4 = hVarK3;
                    z13 = z19;
                    cVar5 = cVar4;
                    i9 = i4;
                    z14 = z9;
                }
                if (z2) {
                    hVar5 = hVar4;
                    hVar6 = r30;
                    hVar7 = hVar;
                    i10 = 0;
                    i11 = 8;
                    c4 = 1;
                    i12 = 1;
                } else {
                    hVar5 = hVar4;
                    hVar6 = r30;
                    hVar7 = hVar;
                    i10 = 0;
                    i11 = 8;
                    c4 = 1;
                    i12 = 1;
                }
                if (this.f2582k == 2) {
                    i13 = i10;
                } else {
                    i13 = i12;
                }
                if (i13 == 0) {
                }
                if (z6) {
                    if (this.f2592u == 1) {
                        float f16 = this.f2593v;
                        n.b bVarL115 = cVar7.l();
                        bVarL115.f2449d.g(hVar6, -1.0f);
                        bVarL115.f2449d.g(hVar5, 1.0f);
                        bVarL115.f2449d.g(hVar3, f16);
                        bVarL115.f2449d.g(hVar2, -f16);
                        cVar7.c(bVarL115);
                    } else {
                        float f17 = this.f2593v;
                        n.b bVarL116 = cVar7.l();
                        bVarL116.f2449d.g(hVar3, -1.0f);
                        bVarL116.f2449d.g(hVar2, 1.0f);
                        bVarL116.f2449d.g(hVar6, f17);
                        bVarL116.f2449d.g(hVar5, -f17);
                        cVar7.c(bVarL116);
                    }
                }
                if (cVar5.f()) {
                    c cVar116 = cVar5;
                    d dVar15 = cVar116.f.f2560d;
                    float radians7 = (float) Math.toRadians(this.f2595x + 90.0f);
                    int iD7 = cVar116.d();
                    h hVarK111114 = cVar7.k(g(2));
                    h hVarK111115 = cVar7.k(g(3));
                    h hVarK111116 = cVar7.k(g(4));
                    h hVarK111117 = cVar7.k(g(5));
                    h hVarK111118 = cVar7.k(dVar15.g(2));
                    h hVarK111119 = cVar7.k(dVar15.g(3));
                    h hVarK1111110 = cVar7.k(dVar15.g(4));
                    h hVarK1111111 = cVar7.k(dVar15.g(5));
                    n.b bVarL117 = cVar7.l();
                    double d15 = radians7;
                    double dSin7 = Math.sin(d15);
                    double d16 = iD7;
                    bVarL117.f2449d.g(hVarK111119, 0.5f);
                    bVarL117.f2449d.g(hVarK1111111, 0.5f);
                    bVarL117.f2449d.g(hVarK111115, -0.5f);
                    bVarL117.f2449d.g(hVarK111117, -0.5f);
                    bVarL117.b = -((float) (dSin7 * d16));
                    cVar7.c(bVarL117);
                    n.b bVarL118 = cVar7.l();
                    float fCos7 = (float) (Math.cos(d15) * d16);
                    bVarL118.f2449d.g(hVarK111118, 0.5f);
                    bVarL118.f2449d.g(hVarK1111110, 0.5f);
                    bVarL118.f2449d.g(hVarK111114, -0.5f);
                    bVarL118.f2449d.g(hVarK111116, -0.5f);
                    bVarL118.b = -fCos7;
                    cVar7.c(bVarL118);
                }
                this.f2577h = false;
                this.f2579i = false;
            }
            i6 = -1;
            if (z6) {
                z7 = false;
            } else {
                z7 = false;
            }
            if (iArr4[0] == 2) {
                z8 = false;
            } else {
                z8 = false;
            }
            if (z8) {
                i7 = 0;
            } else {
                i7 = i19;
            }
            cVar4 = this.I;
            z9 = !cVar4.f();
            z10 = z5;
            boolean z218 = zArr[0];
            boolean z219 = zArr[1];
            i8 = this.f2581j;
            iArr = this.f2594w;
            c cVar117 = cVar3;
            if (i8 != 2) {
                hVar2 = hVarK;
                hVar3 = hVarK2;
                z11 = z10;
                iArr2 = iArr;
                z12 = z17;
                hVar4 = hVarK3;
                z13 = z19;
                cVar5 = cVar4;
                i9 = i4;
                z14 = z9;
            } else {
                hVar2 = hVarK;
                hVar3 = hVarK2;
                z11 = z10;
                iArr2 = iArr;
                z12 = z17;
                hVar4 = hVarK3;
                z13 = z19;
                cVar5 = cVar4;
                i9 = i4;
                z14 = z9;
            }
            if (z2) {
                hVar5 = hVar4;
                hVar6 = r30;
                hVar7 = hVar;
                i10 = 0;
                i11 = 8;
                c4 = 1;
                i12 = 1;
            } else {
                hVar5 = hVar4;
                hVar6 = r30;
                hVar7 = hVar;
                i10 = 0;
                i11 = 8;
                c4 = 1;
                i12 = 1;
            }
            if (this.f2582k == 2) {
                i13 = i10;
            } else {
                i13 = i12;
            }
            if (i13 == 0) {
            }
            if (z6) {
                if (this.f2592u == 1) {
                    float f18 = this.f2593v;
                    n.b bVarL119 = cVar7.l();
                    bVarL119.f2449d.g(hVar6, -1.0f);
                    bVarL119.f2449d.g(hVar5, 1.0f);
                    bVarL119.f2449d.g(hVar3, f18);
                    bVarL119.f2449d.g(hVar2, -f18);
                    cVar7.c(bVarL119);
                } else {
                    float f19 = this.f2593v;
                    n.b bVarL1110 = cVar7.l();
                    bVarL1110.f2449d.g(hVar3, -1.0f);
                    bVarL1110.f2449d.g(hVar2, 1.0f);
                    bVarL1110.f2449d.g(hVar6, f19);
                    bVarL1110.f2449d.g(hVar5, -f19);
                    cVar7.c(bVarL1110);
                }
            }
            if (cVar5.f()) {
                c cVar118 = cVar5;
                d dVar16 = cVar118.f.f2560d;
                float radians8 = (float) Math.toRadians(this.f2595x + 90.0f);
                int iD8 = cVar118.d();
                h hVarK1111112 = cVar7.k(g(2));
                h hVarK1111113 = cVar7.k(g(3));
                h hVarK1111114 = cVar7.k(g(4));
                h hVarK1111115 = cVar7.k(g(5));
                h hVarK1111116 = cVar7.k(dVar16.g(2));
                h hVarK1111117 = cVar7.k(dVar16.g(3));
                h hVarK1111118 = cVar7.k(dVar16.g(4));
                h hVarK1111119 = cVar7.k(dVar16.g(5));
                n.b bVarL1111 = cVar7.l();
                double d17 = radians8;
                double dSin8 = Math.sin(d17);
                double d18 = iD8;
                bVarL1111.f2449d.g(hVarK1111117, 0.5f);
                bVarL1111.f2449d.g(hVarK1111119, 0.5f);
                bVarL1111.f2449d.g(hVarK1111113, -0.5f);
                bVarL1111.f2449d.g(hVarK1111115, -0.5f);
                bVarL1111.b = -((float) (dSin8 * d18));
                cVar7.c(bVarL1111);
                n.b bVarL1112 = cVar7.l();
                float fCos8 = (float) (Math.cos(d17) * d18);
                bVarL1112.f2449d.g(hVarK1111116, 0.5f);
                bVarL1112.f2449d.g(hVarK1111118, 0.5f);
                bVarL1112.f2449d.g(hVarK1111112, -0.5f);
                bVarL1112.f2449d.g(hVarK1111114, -0.5f);
                bVarL1112.b = -fCos8;
                cVar7.c(bVarL1112);
            }
            this.f2577h = false;
            this.f2579i = false;
        }
        hVar = hVarK5;
        cVar8 = cVar8;
        i3 = i22;
        i4 = i26;
        i5 = i27;
        z6 = false;
        int[] iArr9 = this.f2585n;
        iArr9[0] = i4;
        iArr9[1] = i5;
        if (z6) {
            int i213 = this.f2592u;
            i6 = -1;
            if (i213 != 0) {
            }
            if (z6) {
                z7 = false;
            } else {
                z7 = false;
            }
            if (iArr4[0] == 2) {
                z8 = false;
            } else {
                z8 = false;
            }
            if (z8) {
                i7 = 0;
            } else {
                i7 = i19;
            }
            cVar4 = this.I;
            z9 = !cVar4.f();
            z10 = z5;
            boolean z2110 = zArr[0];
            boolean z2111 = zArr[1];
            i8 = this.f2581j;
            iArr = this.f2594w;
            c cVar119 = cVar3;
            if (i8 != 2) {
                hVar2 = hVarK;
                hVar3 = hVarK2;
                z11 = z10;
                iArr2 = iArr;
                z12 = z17;
                hVar4 = hVarK3;
                z13 = z19;
                cVar5 = cVar4;
                i9 = i4;
                z14 = z9;
            } else {
                hVar2 = hVarK;
                hVar3 = hVarK2;
                z11 = z10;
                iArr2 = iArr;
                z12 = z17;
                hVar4 = hVarK3;
                z13 = z19;
                cVar5 = cVar4;
                i9 = i4;
                z14 = z9;
            }
            if (z2) {
                hVar5 = hVar4;
                hVar6 = r30;
                hVar7 = hVar;
                i10 = 0;
                i11 = 8;
                c4 = 1;
                i12 = 1;
            } else {
                hVar5 = hVar4;
                hVar6 = r30;
                hVar7 = hVar;
                i10 = 0;
                i11 = 8;
                c4 = 1;
                i12 = 1;
            }
            if (this.f2582k == 2) {
                i13 = i10;
            } else {
                i13 = i12;
            }
            if (i13 == 0) {
            }
            if (z6) {
                if (this.f2592u == 1) {
                    float f110 = this.f2593v;
                    n.b bVarL1113 = cVar7.l();
                    bVarL1113.f2449d.g(hVar6, -1.0f);
                    bVarL1113.f2449d.g(hVar5, 1.0f);
                    bVarL1113.f2449d.g(hVar3, f110);
                    bVarL1113.f2449d.g(hVar2, -f110);
                    cVar7.c(bVarL1113);
                } else {
                    float f111 = this.f2593v;
                    n.b bVarL1114 = cVar7.l();
                    bVarL1114.f2449d.g(hVar3, -1.0f);
                    bVarL1114.f2449d.g(hVar2, 1.0f);
                    bVarL1114.f2449d.g(hVar6, f111);
                    bVarL1114.f2449d.g(hVar5, -f111);
                    cVar7.c(bVarL1114);
                }
            }
            if (cVar5.f()) {
                c cVar1110 = cVar5;
                d dVar17 = cVar1110.f.f2560d;
                float radians9 = (float) Math.toRadians(this.f2595x + 90.0f);
                int iD9 = cVar1110.d();
                h hVarK11111110 = cVar7.k(g(2));
                h hVarK11111111 = cVar7.k(g(3));
                h hVarK11111112 = cVar7.k(g(4));
                h hVarK11111113 = cVar7.k(g(5));
                h hVarK11111114 = cVar7.k(dVar17.g(2));
                h hVarK11111115 = cVar7.k(dVar17.g(3));
                h hVarK11111116 = cVar7.k(dVar17.g(4));
                h hVarK11111117 = cVar7.k(dVar17.g(5));
                n.b bVarL1115 = cVar7.l();
                double d19 = radians9;
                double dSin9 = Math.sin(d19);
                double d110 = iD9;
                bVarL1115.f2449d.g(hVarK11111115, 0.5f);
                bVarL1115.f2449d.g(hVarK11111117, 0.5f);
                bVarL1115.f2449d.g(hVarK11111111, -0.5f);
                bVarL1115.f2449d.g(hVarK11111113, -0.5f);
                bVarL1115.b = -((float) (dSin9 * d110));
                cVar7.c(bVarL1115);
                n.b bVarL1116 = cVar7.l();
                float fCos9 = (float) (Math.cos(d19) * d110);
                bVarL1116.f2449d.g(hVarK11111114, 0.5f);
                bVarL1116.f2449d.g(hVarK11111116, 0.5f);
                bVarL1116.f2449d.g(hVarK11111110, -0.5f);
                bVarL1116.f2449d.g(hVarK11111112, -0.5f);
                bVarL1116.b = -fCos9;
                cVar7.c(bVarL1116);
            }
            this.f2577h = false;
            this.f2579i = false;
        }
        i6 = -1;
        if (z6) {
            z7 = false;
        } else {
            z7 = false;
        }
        if (iArr4[0] == 2) {
            z8 = false;
        } else {
            z8 = false;
        }
        if (z8) {
            i7 = 0;
        } else {
            i7 = i19;
        }
        cVar4 = this.I;
        z9 = !cVar4.f();
        z10 = z5;
        boolean z2112 = zArr[0];
        boolean z2113 = zArr[1];
        i8 = this.f2581j;
        iArr = this.f2594w;
        c cVar1111 = cVar3;
        if (i8 != 2) {
            hVar2 = hVarK;
            hVar3 = hVarK2;
            z11 = z10;
            iArr2 = iArr;
            z12 = z17;
            hVar4 = hVarK3;
            z13 = z19;
            cVar5 = cVar4;
            i9 = i4;
            z14 = z9;
        } else {
            hVar2 = hVarK;
            hVar3 = hVarK2;
            z11 = z10;
            iArr2 = iArr;
            z12 = z17;
            hVar4 = hVarK3;
            z13 = z19;
            cVar5 = cVar4;
            i9 = i4;
            z14 = z9;
        }
        if (z2) {
            hVar5 = hVar4;
            hVar6 = r30;
            hVar7 = hVar;
            i10 = 0;
            i11 = 8;
            c4 = 1;
            i12 = 1;
        } else {
            hVar5 = hVar4;
            hVar6 = r30;
            hVar7 = hVar;
            i10 = 0;
            i11 = 8;
            c4 = 1;
            i12 = 1;
        }
        if (this.f2582k == 2) {
            i13 = i10;
        } else {
            i13 = i12;
        }
        if (i13 == 0) {
        }
        if (z6) {
            if (this.f2592u == 1) {
                float f112 = this.f2593v;
                n.b bVarL1117 = cVar7.l();
                bVarL1117.f2449d.g(hVar6, -1.0f);
                bVarL1117.f2449d.g(hVar5, 1.0f);
                bVarL1117.f2449d.g(hVar3, f112);
                bVarL1117.f2449d.g(hVar2, -f112);
                cVar7.c(bVarL1117);
            } else {
                float f113 = this.f2593v;
                n.b bVarL1118 = cVar7.l();
                bVarL1118.f2449d.g(hVar3, -1.0f);
                bVarL1118.f2449d.g(hVar2, 1.0f);
                bVarL1118.f2449d.g(hVar6, f113);
                bVarL1118.f2449d.g(hVar5, -f113);
                cVar7.c(bVarL1118);
            }
        }
        if (cVar5.f()) {
            c cVar1112 = cVar5;
            d dVar18 = cVar1112.f.f2560d;
            float radians10 = (float) Math.toRadians(this.f2595x + 90.0f);
            int iD10 = cVar1112.d();
            h hVarK11111118 = cVar7.k(g(2));
            h hVarK11111119 = cVar7.k(g(3));
            h hVarK111111110 = cVar7.k(g(4));
            h hVarK111111111 = cVar7.k(g(5));
            h hVarK111111112 = cVar7.k(dVar18.g(2));
            h hVarK111111113 = cVar7.k(dVar18.g(3));
            h hVarK111111114 = cVar7.k(dVar18.g(4));
            h hVarK111111115 = cVar7.k(dVar18.g(5));
            n.b bVarL1119 = cVar7.l();
            double d111 = radians10;
            double dSin10 = Math.sin(d111);
            double d112 = iD10;
            bVarL1119.f2449d.g(hVarK111111113, 0.5f);
            bVarL1119.f2449d.g(hVarK111111115, 0.5f);
            bVarL1119.f2449d.g(hVarK11111119, -0.5f);
            bVarL1119.f2449d.g(hVarK111111111, -0.5f);
            bVarL1119.b = -((float) (dSin10 * d112));
            cVar7.c(bVarL1119);
            n.b bVarL11110 = cVar7.l();
            float fCos10 = (float) (Math.cos(d111) * d112);
            bVarL11110.f2449d.g(hVarK111111112, 0.5f);
            bVarL11110.f2449d.g(hVarK111111114, 0.5f);
            bVarL11110.f2449d.g(hVarK11111118, -0.5f);
            bVarL11110.f2449d.g(hVarK111111110, -0.5f);
            bVarL11110.b = -fCos10;
            cVar7.c(bVarL11110);
        }
        this.f2577h = false;
        this.f2579i = false;
    }

    public boolean c() {
        return this.Z != 8;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x019e A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:107:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:109:0x01c2 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:191:0x038a  */
    /* JADX WARN: Code duplicated, block: B:193:0x038e  */
    /* JADX WARN: Code duplicated, block: B:199:0x03a3  */
    /* JADX WARN: Code duplicated, block: B:201:0x03c5  */
    /* JADX WARN: Code duplicated, block: B:210:0x03e4  */
    /* JADX WARN: Code duplicated, block: B:218:0x03f5  */
    /* JADX WARN: Code duplicated, block: B:227:0x041a  */
    /* JADX WARN: Code duplicated, block: B:229:0x0422  */
    /* JADX WARN: Code duplicated, block: B:240:0x0437  */
    /* JADX WARN: Code duplicated, block: B:245:0x0441  */
    /* JADX WARN: Code duplicated, block: B:247:0x0445  */
    /* JADX WARN: Code duplicated, block: B:248:0x0447  */
    /* JADX WARN: Code duplicated, block: B:251:0x044f  */
    /* JADX WARN: Code duplicated, block: B:257:0x045d A[PHI: r4
      0x045d: PHI (r4v16 int) = (r4v15 int), (r4v20 int), (r4v20 int), (r4v20 int) binds: [B:250:0x044d, B:252:0x0453, B:253:0x0455, B:255:0x0459] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:260:0x046f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:261:0x0471  */
    /* JADX WARN: Code duplicated, block: B:262:0x0476  */
    /* JADX WARN: Code duplicated, block: B:264:0x0479  */
    /* JADX WARN: Code duplicated, block: B:273:0x0491  */
    /* JADX WARN: Code duplicated, block: B:276:0x049b A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:285:0x04b1  */
    /* JADX WARN: Code duplicated, block: B:287:0x04bd A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:306:0x04f3  */
    /* JADX WARN: Code duplicated, block: B:315:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:318:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:92:0x017a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:93:0x017c  */
    /* JADX WARN: Code duplicated, block: B:94:0x0188  */
    /* JADX WARN: Code duplicated, block: B:95:0x018a A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:98:0x0197 A[ADDED_TO_REGION] */
    public final void d(n.c cVar, boolean z2, boolean z3, boolean z4, boolean z5, h hVar, h hVar2, int i3, boolean z6, c cVar2, c cVar3, int i4, int i5, int i6, int i7, float f, boolean z7, boolean z8, boolean z9, boolean z10, boolean z11, int i8, int i9, int i10, int i11, float f3, boolean z12) {
        boolean z13;
        int iMin;
        int i12;
        int i13;
        boolean z14;
        h hVarK;
        h hVarK2;
        int i14;
        char c3;
        boolean z15;
        c cVar4;
        h hVar3;
        h hVar4;
        int i15;
        boolean z16;
        boolean z17;
        boolean z18;
        int i16;
        boolean z19;
        d dVar;
        h hVar5;
        boolean z20;
        int iMin2;
        int i17;
        boolean z21;
        int iD;
        int i18;
        int i19;
        int i20;
        HashSet hashSet;
        int i21;
        int i22;
        int i23;
        int i24;
        cVar = cVar;
        int i25 = i10;
        int i26 = i11;
        h hVarK3 = cVar.k(cVar2);
        h hVarK4 = cVar.k(cVar3);
        h hVarK5 = cVar.k(cVar2.f);
        h hVarK6 = cVar.k(cVar3.f);
        boolean zF = cVar2.f();
        boolean zF2 = cVar3.f();
        boolean zF3 = this.I.f();
        int i27 = zF2 ? (zF ? 1 : 0) + 1 : zF ? 1 : 0;
        if (zF3) {
            i27++;
        }
        int i28 = i27;
        int i29 = z7 ? 3 : i8;
        int iB = n.g.b(i3);
        boolean z22 = (iB == 0 || iB == 1 || iB != 2 || i29 == 4) ? false : true;
        if (this.Z == 8) {
            iMin = 0;
            z13 = false;
        } else {
            z13 = z22;
            iMin = i5;
        }
        if (z12) {
            if (!zF && !zF2 && !zF3) {
                cVar.d(hVarK3, i4);
            } else if (zF && !zF2) {
                i12 = 8;
                cVar.e(hVarK3, hVarK5, cVar2.d(), 8);
            }
            i12 = 8;
        } else {
            i12 = 8;
        }
        if (z13 != 0) {
            if (i28 == 2 || z7 || !(i29 == 1 || i29 == 0)) {
                if (i25 == -2) {
                    i25 = iMin;
                }
                if (i26 == -2) {
                    i26 = iMin;
                }
                if (iMin > 0 && i29 != 1) {
                    iMin = 0;
                }
                if (i25 > 0) {
                    cVar.f(hVarK4, hVarK3, i25, 8);
                    iMin = Math.max(iMin, i25);
                }
                if (i26 > 0) {
                    if (!z3 || i29 != 1) {
                        cVar.g(hVarK4, hVarK3, i26, 8);
                    }
                    iMin = Math.min(iMin, i26);
                }
                if (i29 == 1) {
                    if (z3) {
                        cVar.e(hVarK4, hVarK3, iMin, 8);
                    } else if (z9) {
                        cVar.e(hVarK4, hVarK3, iMin, 5);
                        cVar.g(hVarK4, hVarK3, iMin, 8);
                    } else {
                        cVar.e(hVarK4, hVarK3, iMin, 5);
                        cVar.g(hVarK4, hVarK3, iMin, 8);
                    }
                } else if (i29 == 2) {
                    int i30 = cVar2.f2561e;
                    if (i30 == 3 || i30 == 5) {
                        hVarK = cVar.k(this.M.g(3));
                        hVarK2 = cVar.k(this.M.g(5));
                    } else {
                        hVarK = cVar.k(this.M.g(2));
                        hVarK2 = cVar.k(this.M.g(4));
                    }
                    n.b bVarL = cVar.l();
                    bVarL.f2449d.g(hVarK4, -1.0f);
                    bVarL.f2449d.g(hVarK3, 1.0f);
                    bVarL.f2449d.g(hVarK2, f3);
                    bVarL.f2449d.g(hVarK, -f3);
                    cVar.c(bVarL);
                    i13 = i25;
                } else {
                    i13 = i25;
                    z14 = z13;
                    z5 = true;
                }
                if (!z12) {
                    i14 = 3;
                    c3 = 2;
                } else {
                    if (!z9) {
                        if ((zF && !zF2 && !zF3) || (zF && !zF2)) {
                            hVar3 = hVarK6;
                        } else {
                            if (!zF || !zF2) {
                                hVar3 = hVarK6;
                                if (!zF && zF2) {
                                    d dVar2 = cVar2.f.f2560d;
                                    int i31 = i26;
                                    d dVar3 = cVar3.f.f2560d;
                                    z5 = z5;
                                    d dVar4 = this.M;
                                    int i32 = 6;
                                    if (z14) {
                                        if (i29 == 0) {
                                            if (i31 != 0 || i13 != 0) {
                                                i24 = 5;
                                                z17 = true;
                                                z18 = false;
                                                z16 = true;
                                                i16 = 5;
                                            } else if (hVarK5.f && hVar3.f) {
                                                cVar.e(hVarK3, hVarK5, cVar2.d(), 8);
                                                cVar.e(hVarK4, hVar3, -cVar3.d(), 8);
                                                return;
                                            } else {
                                                i24 = 8;
                                                z17 = false;
                                                z18 = true;
                                                z16 = false;
                                                i16 = 8;
                                            }
                                            if ((dVar2 instanceof a) || (dVar3 instanceof a)) {
                                                hVar4 = hVarK5;
                                                hVarK4 = hVarK4;
                                                i15 = 4;
                                            } else {
                                                hVar4 = hVarK5;
                                                hVarK4 = hVarK4;
                                                i15 = i24;
                                            }
                                            i32 = 6;
                                        } else {
                                            if (i29 == 1) {
                                                i29 = i29;
                                                hVar4 = hVarK5;
                                                hVarK3 = hVarK3;
                                                hVarK4 = hVarK4;
                                                cVar = cVar;
                                                hVar2 = hVar2;
                                                i32 = 6;
                                                i15 = 4;
                                                z16 = true;
                                                z17 = true;
                                                z18 = false;
                                            } else if (i29 != 3) {
                                                hVar4 = hVarK5;
                                                hVarK4 = hVarK4;
                                                i15 = 4;
                                                z16 = false;
                                                z17 = false;
                                            } else if (this.f2592u == -1) {
                                                if (z10) {
                                                    i29 = i29;
                                                    hVar4 = hVarK5;
                                                    hVarK3 = hVarK3;
                                                    hVarK4 = hVarK4;
                                                    cVar = cVar;
                                                    hVar2 = hVar2;
                                                    i32 = z3 ? 5 : 4;
                                                } else {
                                                    i29 = i29;
                                                    hVar4 = hVarK5;
                                                    hVarK3 = hVarK3;
                                                    hVarK4 = hVarK4;
                                                    cVar = cVar;
                                                    hVar2 = hVar2;
                                                    i32 = 8;
                                                }
                                                i15 = 5;
                                                z16 = true;
                                                z17 = true;
                                                z18 = true;
                                            } else if (z7) {
                                                if (i9 == 2 || i9 == 1) {
                                                    i22 = 4;
                                                    i23 = 5;
                                                } else {
                                                    i22 = 5;
                                                    i23 = 8;
                                                }
                                                i29 = i29;
                                                hVar4 = hVarK5;
                                                hVarK3 = hVarK3;
                                                hVarK4 = hVarK4;
                                                i15 = i22;
                                                i16 = i23;
                                                i32 = 6;
                                                z16 = true;
                                                z17 = true;
                                                z18 = true;
                                                cVar = cVar;
                                                hVar2 = hVar2;
                                            } else {
                                                if (i31 > 0) {
                                                    hVar4 = hVarK5;
                                                    hVarK4 = hVarK4;
                                                    i15 = 5;
                                                } else if (i31 != 0 || i13 != 0) {
                                                    hVar4 = hVarK5;
                                                    hVarK4 = hVarK4;
                                                    i15 = 4;
                                                } else if (z10) {
                                                    i29 = i29;
                                                    hVar4 = hVarK5;
                                                    hVarK3 = hVarK3;
                                                    hVarK4 = hVarK4;
                                                    hVar2 = hVar2;
                                                    i16 = (dVar2 == dVar4 || dVar3 == dVar4) ? 5 : 4;
                                                    i32 = 6;
                                                    i15 = 4;
                                                    z16 = true;
                                                    z17 = true;
                                                    z18 = true;
                                                    cVar = cVar;
                                                } else {
                                                    hVar4 = hVarK5;
                                                    hVarK4 = hVarK4;
                                                    i15 = 8;
                                                }
                                                z16 = true;
                                                z17 = true;
                                                z18 = true;
                                                i16 = 5;
                                            }
                                            i16 = 8;
                                        }
                                        if (z16 || hVar4 != hVar3 || dVar2 == dVar4) {
                                            z19 = true;
                                        } else {
                                            z16 = false;
                                            z19 = false;
                                        }
                                        if (z17) {
                                            if (z14 && !z8 && !z10 && hVar4 == hVar && hVar3 == hVar2) {
                                                i21 = 8;
                                                z20 = false;
                                                i16 = 8;
                                                z19 = false;
                                            } else {
                                                i21 = i32;
                                                z20 = z3;
                                            }
                                            hVar5 = hVarK3;
                                            dVar = dVar2;
                                            cVar3 = cVar3;
                                            cVar.b(hVar5, hVar4, cVar2.d(), f, hVar3, hVarK4, cVar3.d(), i21);
                                        } else {
                                            dVar = dVar2;
                                            cVar3 = cVar3;
                                            hVar5 = hVarK3;
                                            z20 = z3;
                                        }
                                        if (this.Z != 8 && ((hashSet = cVar3.f2558a) == null || hashSet.size() <= 0)) {
                                            return;
                                        }
                                        if (z16) {
                                            if (z20 || hVar4 == hVar3 || z14 || !((dVar instanceof a) || (dVar3 instanceof a))) {
                                                i20 = i16;
                                            } else {
                                                i20 = 6;
                                            }
                                            cVar.f(hVar5, hVar4, cVar2.d(), i20);
                                            cVar.g(hVarK4, hVar3, -cVar3.d(), i20);
                                            i16 = i20;
                                        }
                                        if (z20 || !z11 || (dVar instanceof a) || (dVar3 instanceof a)) {
                                            iMin2 = i15;
                                            i17 = i16;
                                            z21 = z19;
                                        } else {
                                            iMin2 = 6;
                                            i17 = 6;
                                            z21 = true;
                                        }
                                        if (z21) {
                                            if (z18 && (!z10 || z4)) {
                                                if (dVar != dVar4 && dVar3 != dVar4) {
                                                    i32 = iMin2;
                                                }
                                                if ((dVar instanceof f) || (dVar3 instanceof f)) {
                                                    i32 = 5;
                                                }
                                                if ((dVar instanceof a) || (dVar3 instanceof a)) {
                                                    i32 = 5;
                                                }
                                                if (z10) {
                                                    i19 = 5;
                                                } else {
                                                    i19 = i32;
                                                }
                                                iMin2 = Math.max(i19, iMin2);
                                            }
                                            if (z20) {
                                                iMin2 = Math.min(i17, iMin2);
                                                if (z7 || z10 || !(dVar == dVar4 || dVar3 == dVar4)) {
                                                    i18 = iMin2;
                                                } else {
                                                    i18 = 4;
                                                }
                                            } else {
                                                i18 = iMin2;
                                            }
                                            cVar.e(hVar5, hVar4, cVar2.d(), i18);
                                            cVar.e(hVarK4, hVar3, -cVar3.d(), i18);
                                        }
                                        if (z20) {
                                            if (hVar == hVar4) {
                                                iD = cVar2.d();
                                            } else {
                                                iD = 0;
                                            }
                                            if (hVar4 != hVar) {
                                                cVar.f(hVar5, hVar, iD, 5);
                                            }
                                        }
                                        if (z20 && z14 != 0 && i6 == 0 && i13 == 0) {
                                            if (z14 == 0 && i29 == 3) {
                                                cVar.f(hVarK4, hVar5, 0, 8);
                                            } else {
                                                cVar.f(hVarK4, hVar5, 0, 5);
                                            }
                                        }
                                    } else {
                                        if (hVarK5.f && hVar3.f) {
                                            cVar.b(hVarK3, hVarK5, cVar2.d(), f, hVar3, hVarK4, cVar3.d(), 8);
                                            if (z3 && z5) {
                                                int iD2 = cVar3.f != null ? cVar3.d() : 0;
                                                if (hVar3 != hVar2) {
                                                    cVar.f(hVar2, hVarK4, iD2, 5);
                                                    return;
                                                }
                                                return;
                                            }
                                            return;
                                        }
                                        hVar4 = hVarK5;
                                        hVarK4 = hVarK4;
                                        i15 = 4;
                                        z16 = true;
                                        z17 = true;
                                    }
                                    z18 = false;
                                    i16 = 5;
                                    if (z16) {
                                        z19 = true;
                                    } else {
                                        z19 = true;
                                    }
                                    if (z17) {
                                        if (z14) {
                                            i21 = i32;
                                            z20 = z3;
                                        } else {
                                            i21 = i32;
                                            z20 = z3;
                                        }
                                        hVar5 = hVarK3;
                                        dVar = dVar2;
                                        cVar3 = cVar3;
                                        cVar.b(hVar5, hVar4, cVar2.d(), f, hVar3, hVarK4, cVar3.d(), i21);
                                    } else {
                                        dVar = dVar2;
                                        cVar3 = cVar3;
                                        hVar5 = hVarK3;
                                        z20 = z3;
                                    }
                                    if (this.Z != 8) {
                                    }
                                    if (z16) {
                                        if (z20) {
                                            i20 = i16;
                                        } else {
                                            i20 = i16;
                                        }
                                        cVar.f(hVar5, hVar4, cVar2.d(), i20);
                                        cVar.g(hVarK4, hVar3, -cVar3.d(), i20);
                                        i16 = i20;
                                    }
                                    if (z20) {
                                        iMin2 = i15;
                                        i17 = i16;
                                        z21 = z19;
                                    } else {
                                        iMin2 = i15;
                                        i17 = i16;
                                        z21 = z19;
                                    }
                                    if (z21) {
                                        if (z18) {
                                            if (dVar != dVar4) {
                                                i32 = iMin2;
                                            }
                                            if (dVar instanceof f) {
                                                i32 = 5;
                                            } else {
                                                i32 = 5;
                                            }
                                            if (dVar instanceof a) {
                                                i32 = 5;
                                            } else {
                                                i32 = 5;
                                            }
                                            if (z10) {
                                                i19 = 5;
                                            } else {
                                                i19 = i32;
                                            }
                                            iMin2 = Math.max(i19, iMin2);
                                        }
                                        if (z20) {
                                            iMin2 = Math.min(i17, iMin2);
                                            if (z7) {
                                                i18 = iMin2;
                                            } else {
                                                i18 = iMin2;
                                            }
                                        } else {
                                            i18 = iMin2;
                                        }
                                        cVar.e(hVar5, hVar4, cVar2.d(), i18);
                                        cVar.e(hVarK4, hVar3, -cVar3.d(), i18);
                                    }
                                    if (z20) {
                                        if (hVar == hVar4) {
                                            iD = cVar2.d();
                                        } else {
                                            iD = 0;
                                        }
                                        if (hVar4 != hVar) {
                                            cVar.f(hVar5, hVar, iD, 5);
                                        }
                                    }
                                    if (z20) {
                                        if (z14 == 0) {
                                            cVar.f(hVarK4, hVar5, 0, 5);
                                        } else {
                                            cVar.f(hVarK4, hVar5, 0, 5);
                                        }
                                    }
                                }
                                if (z20 || !z5) {
                                    return;
                                }
                                int iD3 = cVar3.f != null ? cVar3.d() : 0;
                                if (hVar3 != hVar2) {
                                    cVar.f(hVar2, hVarK4, iD3, 5);
                                    return;
                                }
                                return;
                            }
                            hVar3 = hVarK6;
                            cVar.e(hVarK4, hVar3, -cVar3.d(), 8);
                            if (z3) {
                                cVar.f(hVarK3, hVar, 0, 5);
                            }
                        }
                        z20 = z3;
                        if (z20) {
                            return;
                        } else {
                            return;
                        }
                    }
                    c3 = 2;
                    i14 = 3;
                }
                if (i28 >= c3 && z3 && z5) {
                    cVar.f(hVarK3, hVar, 0, 8);
                    c cVar5 = this.F;
                    boolean z23 = z2 || cVar5.f == null;
                    if (z2 || (cVar4 = cVar5.f) == null) {
                        z15 = z23;
                    } else {
                        d dVar5 = cVar4.f2560d;
                        if (dVar5.P != 0.0f) {
                            int[] iArr = dVar5.f2580i0;
                            if (iArr[0] == i14 && iArr[1] == i14) {
                                z15 = true;
                            } else {
                                z15 = false;
                            }
                        } else {
                            z15 = false;
                        }
                    }
                    if (z15) {
                        cVar.f(hVar2, hVarK4, 0, 8);
                        return;
                    }
                    return;
                }
                return;
            }
            int iMax = Math.max(i25, iMin);
            if (i26 > 0) {
                iMax = Math.min(i26, iMax);
            }
            cVar.e(hVarK4, hVarK3, iMax, 8);
            i13 = i25;
            z14 = false;
            if (!z12) {
                i14 = 3;
                c3 = 2;
            } else {
                if (!z9) {
                    if (zF) {
                        if (!zF) {
                            hVar3 = hVarK6;
                            if (!zF) {
                            }
                            z20 = z3;
                        } else {
                            hVar3 = hVarK6;
                            if (!zF) {
                            }
                            z20 = z3;
                        }
                    } else if (!zF) {
                        hVar3 = hVarK6;
                        if (!zF) {
                        }
                        z20 = z3;
                    } else {
                        hVar3 = hVarK6;
                        if (!zF) {
                        }
                        z20 = z3;
                    }
                    if (z20) {
                        return;
                    } else {
                        return;
                    }
                }
                c3 = 2;
                i14 = 3;
            }
            if (i28 >= c3) {
            }
        }
        if (z6) {
            cVar.e(hVarK4, hVarK3, 0, 3);
            if (i6 > 0) {
                cVar.f(hVarK4, hVarK3, i6, i12);
            }
            if (i7 < Integer.MAX_VALUE) {
                cVar.g(hVarK4, hVarK3, i7, i12);
            }
        } else {
            cVar.e(hVarK4, hVarK3, iMin, i12);
        }
        z5 = z5;
        z14 = z13;
        i13 = i25;
        if (!z12) {
            i14 = 3;
            c3 = 2;
        } else {
            if (!z9) {
                if (zF) {
                    if (!zF) {
                        hVar3 = hVarK6;
                        if (!zF) {
                        }
                        z20 = z3;
                    } else {
                        hVar3 = hVarK6;
                        if (!zF) {
                        }
                        z20 = z3;
                    }
                } else if (!zF) {
                    hVar3 = hVarK6;
                    if (!zF) {
                    }
                    z20 = z3;
                } else {
                    hVar3 = hVarK6;
                    if (!zF) {
                    }
                    z20 = z3;
                }
                if (z20) {
                    return;
                } else {
                    return;
                }
            }
            c3 = 2;
            i14 = 3;
        }
        if (i28 >= c3) {
        }
    }

    public final void e(n.c cVar) {
        cVar.k(this.B);
        cVar.k(this.C);
        cVar.k(this.D);
        cVar.k(this.E);
        if (this.T > 0) {
            cVar.k(this.F);
        }
    }

    public final void f() {
        if (this.f2570d == null) {
            k kVar = new k(this);
            kVar.f2680h.f2658e = 4;
            kVar.f2681i.f2658e = 5;
            kVar.f = 0;
            this.f2570d = kVar;
        }
        if (this.f2572e == null) {
            m mVar = new m(this);
            p.f fVar = new p.f(mVar);
            mVar.f2669k = fVar;
            mVar.f2670l = null;
            mVar.f2680h.f2658e = 6;
            mVar.f2681i.f2658e = 7;
            fVar.f2658e = 8;
            mVar.f = 1;
            this.f2572e = mVar;
        }
    }

    public c g(int i3) {
        switch (n.g.b(i3)) {
            case 0:
                return null;
            case 1:
                return this.B;
            case 2:
                return this.C;
            case 3:
                return this.D;
            case 4:
                return this.E;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                return this.F;
            case MusicClient.TYPE_GESTURE /* 6 */:
                return this.I;
            case PlaybackState.STATE_ERROR /* 7 */:
                return this.G;
            case 8:
                return this.H;
            default:
                throw new AssertionError(androidx.activity.result.b.u(i3));
        }
    }

    public final int h(int i3) {
        int[] iArr = this.f2580i0;
        if (i3 == 0) {
            return iArr[0];
        }
        if (i3 == 1) {
            return iArr[1];
        }
        return 0;
    }

    public final int i() {
        if (this.Z == 8) {
            return 0;
        }
        return this.O;
    }

    public final d j(int i3) {
        c cVar;
        c cVar2;
        if (i3 != 0) {
            if (i3 == 1 && (cVar2 = (cVar = this.E).f) != null && cVar2.f == cVar) {
                return cVar2.f2560d;
            }
            return null;
        }
        c cVar3 = this.D;
        c cVar4 = cVar3.f;
        if (cVar4 == null || cVar4.f != cVar3) {
            return null;
        }
        return cVar4.f2560d;
    }

    public final d k(int i3) {
        c cVar;
        c cVar2;
        if (i3 != 0) {
            if (i3 == 1 && (cVar2 = (cVar = this.C).f) != null && cVar2.f == cVar) {
                return cVar2.f2560d;
            }
            return null;
        }
        c cVar3 = this.B;
        c cVar4 = cVar3.f;
        if (cVar4 == null || cVar4.f != cVar3) {
            return null;
        }
        return cVar4.f2560d;
    }

    public final int l() {
        if (this.Z == 8) {
            return 0;
        }
        return this.N;
    }

    public final int m() {
        d dVar = this.M;
        return (dVar == null || !(dVar instanceof e)) ? this.R : ((e) dVar).f2604p0 + this.R;
    }

    public final int n() {
        d dVar = this.M;
        return (dVar == null || !(dVar instanceof e)) ? this.S : ((e) dVar).f2605q0 + this.S;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x003a A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:30:0x003b A[RETURN] */
    public final boolean o(int i3) {
        if (i3 == 0) {
            if ((this.B.f != null ? 1 : 0) + (this.D.f != null ? 1 : 0) < 2) {
                return true;
            }
            return false;
        }
        if ((this.C.f != null ? 1 : 0) + (this.E.f != null ? 1 : 0) + (this.F.f != null ? 1 : 0) < 2) {
            return true;
        }
        return false;
    }

    public final void p(int i3, int i4, int i5, int i6, d dVar) {
        g(i3).a(dVar.g(i4), i5, i6);
    }

    public final boolean q(int i3) {
        c cVar;
        c cVar2;
        int i4 = i3 * 2;
        c[] cVarArr = this.J;
        c cVar3 = cVarArr[i4];
        c cVar4 = cVar3.f;
        return (cVar4 == null || cVar4.f == cVar3 || (cVar2 = (cVar = cVarArr[i4 + 1]).f) == null || cVar2.f != cVar) ? false : true;
    }

    public final boolean r() {
        c cVar = this.B;
        c cVar2 = cVar.f;
        if (cVar2 != null && cVar2.f == cVar) {
            return true;
        }
        c cVar3 = this.D;
        c cVar4 = cVar3.f;
        return cVar4 != null && cVar4.f == cVar3;
    }

    public final boolean s() {
        c cVar = this.C;
        c cVar2 = cVar.f;
        if (cVar2 != null && cVar2.f == cVar) {
            return true;
        }
        c cVar3 = this.E;
        c cVar4 = cVar3.f;
        return cVar4 != null && cVar4.f == cVar3;
    }

    public final boolean t() {
        return this.f2575g && this.Z != 8;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        String str = "";
        sb.append("");
        if (this.f2566a0 != null) {
            str = "id: " + this.f2566a0 + " ";
        }
        sb.append(str);
        sb.append("(");
        sb.append(this.R);
        sb.append(", ");
        sb.append(this.S);
        sb.append(") - (");
        sb.append(this.N);
        sb.append(" x ");
        sb.append(this.O);
        sb.append(")");
        return sb.toString();
    }

    public boolean u() {
        if (this.f2577h) {
            return true;
        }
        return this.B.f2559c && this.D.f2559c;
    }

    public boolean v() {
        if (this.f2579i) {
            return true;
        }
        return this.C.f2559c && this.E.f2559c;
    }

    public void w() {
        this.B.g();
        this.C.g();
        this.D.g();
        this.E.g();
        this.F.g();
        this.G.g();
        this.H.g();
        this.I.g();
        this.M = null;
        this.f2595x = 0.0f;
        this.N = 0;
        this.O = 0;
        this.P = 0.0f;
        this.Q = -1;
        this.R = 0;
        this.S = 0;
        this.T = 0;
        this.U = 0;
        this.V = 0;
        this.W = 0.5f;
        this.X = 0.5f;
        int[] iArr = this.f2580i0;
        iArr[0] = 1;
        iArr[1] = 1;
        this.Y = null;
        this.Z = 0;
        this.f2567b0 = 0;
        this.f2569c0 = 0;
        float[] fArr = this.f2571d0;
        fArr[0] = -1.0f;
        fArr[1] = -1.0f;
        this.f2581j = -1;
        this.f2582k = -1;
        int[] iArr2 = this.f2594w;
        iArr2[0] = Integer.MAX_VALUE;
        iArr2[1] = Integer.MAX_VALUE;
        this.f2583l = 0;
        this.f2584m = 0;
        this.f2588q = 1.0f;
        this.f2591t = 1.0f;
        this.f2587p = Integer.MAX_VALUE;
        this.f2590s = Integer.MAX_VALUE;
        this.f2586o = 0;
        this.f2589r = 0;
        this.f2592u = -1;
        this.f2593v = 1.0f;
        boolean[] zArr = this.f;
        zArr[0] = true;
        zArr[1] = true;
        boolean[] zArr2 = this.L;
        zArr2[0] = false;
        zArr2[1] = false;
        this.f2575g = true;
    }

    public void x(androidx.fragment.app.f fVar) {
        this.B.h();
        this.C.h();
        this.D.h();
        this.E.h();
        this.F.h();
        this.I.h();
        this.G.h();
        this.H.h();
    }

    public final void y(int i3, int i4) {
        this.B.i(i3);
        this.D.i(i4);
        this.R = i3;
        this.N = i4 - i3;
        this.f2577h = true;
    }

    public final void z(int i3, int i4) {
        this.C.i(i3);
        this.E.i(i4);
        this.S = i3;
        this.O = i4 - i3;
        if (this.f2596y) {
            this.F.i(i3 + this.T);
        }
        this.f2579i = true;
    }
}
