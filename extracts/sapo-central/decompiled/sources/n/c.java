package n;

import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static boolean f2451p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static int f2452q = 1000;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final f f2454c;
    public b[] f;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final androidx.fragment.app.f f2462l;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public b f2465o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f2453a = false;
    public int b = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2455d = 32;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2456e = 32;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f2457g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean[] f2458h = new boolean[32];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f2459i = 1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f2460j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f2461k = 32;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public h[] f2463m = new h[f2452q];

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f2464n = 0;

    public c() {
        this.f = null;
        this.f = new b[32];
        s();
        androidx.fragment.app.f fVar = new androidx.fragment.app.f(6);
        fVar.b = new b0.c();
        fVar.f413c = new b0.c();
        fVar.f414d = new h[32];
        this.f2462l = fVar;
        f fVar2 = new f(fVar);
        fVar2.f = new h[128];
        fVar2.f2468g = new h[128];
        fVar2.f2469h = 0;
        fVar2.f2470i = new e(fVar2);
        this.f2454c = fVar2;
        this.f2465o = new b(fVar);
    }

    public static int n(Object obj) {
        h hVar = ((o.c) obj).f2564i;
        if (hVar != null) {
            return (int) (hVar.f2474e + 0.5f);
        }
        return 0;
    }

    public final h a(int i3) {
        b0.c cVar = (b0.c) this.f2462l.f413c;
        int i4 = cVar.b;
        Object obj = null;
        if (i4 > 0) {
            int i5 = i4 - 1;
            Object[] objArr = cVar.f670a;
            Object obj2 = objArr[i5];
            objArr[i5] = null;
            cVar.b = i5;
            obj = obj2;
        }
        h hVar = (h) obj;
        if (hVar == null) {
            hVar = new h(i3);
            hVar.f2480l = i3;
        } else {
            hVar.c();
            hVar.f2480l = i3;
        }
        int i6 = this.f2464n;
        int i7 = f2452q;
        if (i6 >= i7) {
            int i8 = i7 * 2;
            f2452q = i8;
            this.f2463m = (h[]) Arrays.copyOf(this.f2463m, i8);
        }
        h[] hVarArr = this.f2463m;
        int i9 = this.f2464n;
        this.f2464n = i9 + 1;
        hVarArr[i9] = hVar;
        return hVar;
    }

    public final void b(h hVar, h hVar2, int i3, float f, h hVar3, h hVar4, int i4, int i5) {
        b bVarL = l();
        if (hVar2 == hVar3) {
            bVarL.f2449d.g(hVar, 1.0f);
            bVarL.f2449d.g(hVar4, 1.0f);
            bVarL.f2449d.g(hVar2, -2.0f);
        } else if (f == 0.5f) {
            bVarL.f2449d.g(hVar, 1.0f);
            bVarL.f2449d.g(hVar2, -1.0f);
            bVarL.f2449d.g(hVar3, -1.0f);
            bVarL.f2449d.g(hVar4, 1.0f);
            if (i3 > 0 || i4 > 0) {
                bVarL.b = (-i3) + i4;
            }
        } else if (f <= 0.0f) {
            bVarL.f2449d.g(hVar, -1.0f);
            bVarL.f2449d.g(hVar2, 1.0f);
            bVarL.b = i3;
        } else if (f >= 1.0f) {
            bVarL.f2449d.g(hVar4, -1.0f);
            bVarL.f2449d.g(hVar3, 1.0f);
            bVarL.b = -i4;
        } else {
            float f3 = 1.0f - f;
            bVarL.f2449d.g(hVar, f3 * 1.0f);
            bVarL.f2449d.g(hVar2, f3 * (-1.0f));
            bVarL.f2449d.g(hVar3, (-1.0f) * f);
            bVarL.f2449d.g(hVar4, 1.0f * f);
            if (i3 > 0 || i4 > 0) {
                bVarL.b = (i4 * f) + ((-i3) * f3);
            }
        }
        if (i5 != 8) {
            bVarL.a(this, i5);
        }
        c(bVarL);
    }

    /* JADX WARN: Code duplicated, block: B:120:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:58:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:76:0x00f8  */
    public final void c(b bVar) {
        boolean z2;
        boolean z3;
        h hVarF;
        if (this.f2460j + 1 >= this.f2461k || this.f2459i + 1 >= this.f2456e) {
            o();
        }
        if (bVar.f2450e) {
            z2 = false;
        } else {
            ArrayList arrayList = bVar.f2448c;
            if (this.f.length != 0) {
                boolean z4 = false;
                while (!z4) {
                    int iD = bVar.f2449d.d();
                    for (int i3 = 0; i3 < iD; i3++) {
                        h hVarE = bVar.f2449d.e(i3);
                        if (hVarE.f2472c != -1 || hVarE.f) {
                            arrayList.add(hVarE);
                        }
                    }
                    int size = arrayList.size();
                    if (size > 0) {
                        for (int i4 = 0; i4 < size; i4++) {
                            h hVar = (h) arrayList.get(i4);
                            if (hVar.f) {
                                bVar.h(this, hVar, true);
                            } else {
                                bVar.i(this, this.f[hVar.f2472c], true);
                            }
                        }
                        arrayList.clear();
                    } else {
                        z4 = true;
                    }
                }
                if (bVar.f2447a != null && bVar.f2449d.d() == 0) {
                    bVar.f2450e = true;
                    this.f2453a = true;
                }
            }
            if (bVar.e()) {
                return;
            }
            float f = bVar.b;
            float f3 = 0.0f;
            if (f < 0.0f) {
                bVar.b = f * (-1.0f);
                a aVar = bVar.f2449d;
                int i5 = aVar.f2444h;
                for (int i6 = 0; i5 != -1 && i6 < aVar.f2439a; i6++) {
                    float[] fArr = aVar.f2443g;
                    fArr[i5] = fArr[i5] * (-1.0f);
                    i5 = aVar.f[i5];
                }
            }
            int iD2 = bVar.f2449d.d();
            float f4 = 0.0f;
            float f5 = 0.0f;
            h hVar2 = null;
            h hVar3 = null;
            int i7 = 0;
            boolean z5 = false;
            boolean z6 = false;
            while (i7 < iD2) {
                float f6 = bVar.f2449d.f(i7);
                h hVarE2 = bVar.f2449d.e(i7);
                float f7 = f3;
                if (hVarE2.f2480l == 1) {
                    if (hVar2 == null) {
                        if (hVarE2.f2479k <= 1) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        hVar2 = hVarE2;
                        f4 = f6;
                    } else {
                        if (f4 > f6) {
                            if (hVarE2.f2479k > 1) {
                                z5 = false;
                            }
                            hVar2 = hVarE2;
                            f4 = f6;
                        } else if (z5 || hVarE2.f2479k > 1) {
                        }
                        z5 = true;
                        hVar2 = hVarE2;
                        f4 = f6;
                    }
                } else if (hVar2 == null && f6 < f7) {
                    if (hVar3 == null) {
                        if (hVarE2.f2479k <= 1) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        hVar3 = hVarE2;
                        f5 = f6;
                    } else {
                        if (f5 > f6) {
                            if (hVarE2.f2479k > 1) {
                                z6 = false;
                            }
                            hVar3 = hVarE2;
                            f5 = f6;
                        } else if (z6 || hVarE2.f2479k > 1) {
                        }
                        z6 = true;
                        hVar3 = hVarE2;
                        f5 = f6;
                    }
                }
                i7++;
                f3 = f7;
            }
            float f8 = f3;
            if (hVar2 == null) {
                hVar2 = hVar3;
            }
            if (hVar2 == null) {
                z3 = true;
            } else {
                bVar.g(hVar2);
                z3 = false;
            }
            if (bVar.f2449d.d() == 0) {
                bVar.f2450e = true;
            }
            if (z3) {
                if (this.f2459i + 1 >= this.f2456e) {
                    o();
                }
                h hVarA = a(3);
                int i8 = this.b + 1;
                this.b = i8;
                this.f2459i++;
                hVarA.b = i8;
                androidx.fragment.app.f fVar = this.f2462l;
                ((h[]) fVar.f414d)[i8] = hVarA;
                bVar.f2447a = hVarA;
                int i9 = this.f2460j;
                h(bVar);
                if (this.f2460j == i9 + 1) {
                    b bVar2 = this.f2465o;
                    bVar2.f2447a = null;
                    bVar2.f2449d.b();
                    for (int i10 = 0; i10 < bVar.f2449d.d(); i10++) {
                        bVar2.f2449d.a(bVar.f2449d.e(i10), bVar.f2449d.f(i10), true);
                    }
                    r(this.f2465o);
                    if (hVarA.f2472c == -1) {
                        if (bVar.f2447a == hVarA && (hVarF = bVar.f(null, hVarA)) != null) {
                            bVar.g(hVarF);
                        }
                        if (!bVar.f2450e) {
                            bVar.f2447a.e(this, bVar);
                        }
                        ((b0.c) fVar.b).b(bVar);
                        this.f2460j--;
                    }
                    z2 = true;
                } else {
                    z2 = false;
                }
            } else {
                z2 = false;
            }
            h hVar4 = bVar.f2447a;
            if (hVar4 == null) {
                return;
            }
            if (hVar4.f2480l != 1 && bVar.b < f8) {
                return;
            }
        }
        if (z2) {
            return;
        }
        h(bVar);
    }

    public final void d(h hVar, int i3) {
        int i4 = hVar.f2472c;
        if (i4 == -1) {
            hVar.d(this, i3);
            for (int i5 = 0; i5 < this.b + 1; i5++) {
                h hVar2 = ((h[]) this.f2462l.f414d)[i5];
            }
            return;
        }
        if (i4 == -1) {
            b bVarL = l();
            bVarL.f2447a = hVar;
            float f = i3;
            hVar.f2474e = f;
            bVarL.b = f;
            bVarL.f2450e = true;
            c(bVarL);
            return;
        }
        b bVar = this.f[i4];
        if (bVar.f2450e) {
            bVar.b = i3;
            return;
        }
        if (bVar.f2449d.d() == 0) {
            bVar.f2450e = true;
            bVar.b = i3;
            return;
        }
        b bVarL2 = l();
        if (i3 < 0) {
            bVarL2.b = i3 * (-1);
            bVarL2.f2449d.g(hVar, 1.0f);
        } else {
            bVarL2.b = i3;
            bVarL2.f2449d.g(hVar, -1.0f);
        }
        c(bVarL2);
    }

    public final void e(h hVar, h hVar2, int i3, int i4) {
        if (i4 == 8 && hVar2.f && hVar.f2472c == -1) {
            hVar.d(this, hVar2.f2474e + i3);
            return;
        }
        b bVarL = l();
        boolean z2 = false;
        if (i3 != 0) {
            if (i3 < 0) {
                i3 *= -1;
                z2 = true;
            }
            bVarL.b = i3;
        }
        if (z2) {
            bVarL.f2449d.g(hVar, 1.0f);
            bVarL.f2449d.g(hVar2, -1.0f);
        } else {
            bVarL.f2449d.g(hVar, -1.0f);
            bVarL.f2449d.g(hVar2, 1.0f);
        }
        if (i4 != 8) {
            bVarL.a(this, i4);
        }
        c(bVarL);
    }

    public final void f(h hVar, h hVar2, int i3, int i4) {
        b bVarL = l();
        h hVarM = m();
        hVarM.f2473d = 0;
        bVarL.b(hVar, hVar2, hVarM, i3);
        if (i4 != 8) {
            bVarL.f2449d.g(j(i4), (int) (bVarL.f2449d.c(hVarM) * (-1.0f)));
        }
        c(bVarL);
    }

    public final void g(h hVar, h hVar2, int i3, int i4) {
        b bVarL = l();
        h hVarM = m();
        hVarM.f2473d = 0;
        bVarL.c(hVar, hVar2, hVarM, i3);
        if (i4 != 8) {
            bVarL.f2449d.g(j(i4), (int) (bVarL.f2449d.c(hVarM) * (-1.0f)));
        }
        c(bVarL);
    }

    public final void h(b bVar) {
        int i3;
        if (bVar.f2450e) {
            bVar.f2447a.d(this, bVar.b);
        } else {
            b[] bVarArr = this.f;
            int i4 = this.f2460j;
            bVarArr[i4] = bVar;
            h hVar = bVar.f2447a;
            hVar.f2472c = i4;
            this.f2460j = i4 + 1;
            hVar.e(this, bVar);
        }
        if (this.f2453a) {
            int i5 = 0;
            while (i5 < this.f2460j) {
                if (this.f[i5] == null) {
                    System.out.println("WTF");
                }
                b bVar2 = this.f[i5];
                if (bVar2 != null && bVar2.f2450e) {
                    bVar2.f2447a.d(this, bVar2.b);
                    ((b0.c) this.f2462l.b).b(bVar2);
                    this.f[i5] = null;
                    int i6 = i5 + 1;
                    int i7 = i6;
                    while (true) {
                        i3 = this.f2460j;
                        if (i6 >= i3) {
                            break;
                        }
                        b[] bVarArr2 = this.f;
                        int i8 = i6 - 1;
                        b bVar3 = bVarArr2[i6];
                        bVarArr2[i8] = bVar3;
                        h hVar2 = bVar3.f2447a;
                        if (hVar2.f2472c == i6) {
                            hVar2.f2472c = i8;
                        }
                        i7 = i6;
                        i6++;
                    }
                    if (i7 < i3) {
                        this.f[i7] = null;
                    }
                    this.f2460j = i3 - 1;
                    i5--;
                }
                i5++;
            }
            this.f2453a = false;
        }
    }

    public final void i() {
        for (int i3 = 0; i3 < this.f2460j; i3++) {
            b bVar = this.f[i3];
            bVar.f2447a.f2474e = bVar.b;
        }
    }

    public final h j(int i3) {
        if (this.f2459i + 1 >= this.f2456e) {
            o();
        }
        h hVarA = a(4);
        float[] fArr = hVarA.f2476h;
        int i4 = this.b + 1;
        this.b = i4;
        this.f2459i++;
        hVarA.b = i4;
        hVarA.f2473d = i3;
        ((h[]) this.f2462l.f414d)[i4] = hVarA;
        f fVar = this.f2454c;
        fVar.f2470i.f2467a = hVarA;
        Arrays.fill(fArr, 0.0f);
        fArr[hVarA.f2473d] = 1.0f;
        fVar.j(hVarA);
        return hVarA;
    }

    public final h k(Object obj) {
        if (obj == null) {
            return null;
        }
        if (this.f2459i + 1 >= this.f2456e) {
            o();
        }
        if (!(obj instanceof o.c)) {
            return null;
        }
        o.c cVar = (o.c) obj;
        h hVar = cVar.f2564i;
        if (hVar == null) {
            cVar.h();
            hVar = cVar.f2564i;
        }
        int i3 = hVar.b;
        androidx.fragment.app.f fVar = this.f2462l;
        if (i3 != -1 && i3 <= this.b && ((h[]) fVar.f414d)[i3] != null) {
            return hVar;
        }
        if (i3 != -1) {
            hVar.c();
        }
        int i4 = this.b + 1;
        this.b = i4;
        this.f2459i++;
        hVar.b = i4;
        hVar.f2480l = 1;
        ((h[]) fVar.f414d)[i4] = hVar;
        return hVar;
    }

    public final b l() {
        Object obj;
        androidx.fragment.app.f fVar = this.f2462l;
        b0.c cVar = (b0.c) fVar.b;
        int i3 = cVar.b;
        if (i3 > 0) {
            int i4 = i3 - 1;
            Object[] objArr = cVar.f670a;
            obj = objArr[i4];
            objArr[i4] = null;
            cVar.b = i4;
        } else {
            obj = null;
        }
        b bVar = (b) obj;
        if (bVar == null) {
            return new b(fVar);
        }
        bVar.f2447a = null;
        bVar.f2449d.b();
        bVar.b = 0.0f;
        bVar.f2450e = false;
        return bVar;
    }

    public final h m() {
        if (this.f2459i + 1 >= this.f2456e) {
            o();
        }
        h hVarA = a(3);
        int i3 = this.b + 1;
        this.b = i3;
        this.f2459i++;
        hVarA.b = i3;
        ((h[]) this.f2462l.f414d)[i3] = hVarA;
        return hVarA;
    }

    public final void o() {
        int i3 = this.f2455d * 2;
        this.f2455d = i3;
        this.f = (b[]) Arrays.copyOf(this.f, i3);
        androidx.fragment.app.f fVar = this.f2462l;
        fVar.f414d = (h[]) Arrays.copyOf((h[]) fVar.f414d, this.f2455d);
        int i4 = this.f2455d;
        this.f2458h = new boolean[i4];
        this.f2456e = i4;
        this.f2461k = i4;
    }

    public final void p() {
        f fVar = this.f2454c;
        if (fVar.e()) {
            i();
            return;
        }
        if (!this.f2457g) {
            q(fVar);
            return;
        }
        for (int i3 = 0; i3 < this.f2460j; i3++) {
            if (!this.f[i3].f2450e) {
                q(fVar);
                return;
            }
        }
        i();
    }

    public final void q(f fVar) {
        for (int i3 = 0; i3 < this.f2460j; i3++) {
            b bVar = this.f[i3];
            int i4 = 1;
            if (bVar.f2447a.f2480l != 1) {
                float f = 0.0f;
                if (bVar.b < 0.0f) {
                    boolean z2 = false;
                    int i5 = 0;
                    while (!z2) {
                        i5 += i4;
                        float f3 = Float.MAX_VALUE;
                        int i6 = -1;
                        int i7 = -1;
                        int i8 = 0;
                        int i9 = 0;
                        while (i8 < this.f2460j) {
                            b bVar2 = this.f[i8];
                            if (bVar2.f2447a.f2480l != i4 && !bVar2.f2450e && bVar2.b < f) {
                                int iD = bVar2.f2449d.d();
                                int i10 = 0;
                                while (i10 < iD) {
                                    h hVarE = bVar2.f2449d.e(i10);
                                    float fC = bVar2.f2449d.c(hVarE);
                                    if (fC > f) {
                                        for (int i11 = 0; i11 < 9; i11++) {
                                            float f4 = hVarE.f2475g[i11] / fC;
                                            if ((f4 < f3 && i11 == i9) || i11 > i9) {
                                                i9 = i11;
                                                i7 = hVarE.b;
                                                i6 = i8;
                                                f3 = f4;
                                            }
                                        }
                                    }
                                    i10++;
                                    f = 0.0f;
                                }
                            }
                            i8++;
                            f = 0.0f;
                            i4 = 1;
                        }
                        if (i6 != -1) {
                            b bVar3 = this.f[i6];
                            bVar3.f2447a.f2472c = -1;
                            bVar3.g(((h[]) this.f2462l.f414d)[i7]);
                            h hVar = bVar3.f2447a;
                            hVar.f2472c = i6;
                            hVar.e(this, bVar3);
                        } else {
                            z2 = true;
                        }
                        if (i5 > this.f2459i / 2) {
                            z2 = true;
                        }
                        f = 0.0f;
                        i4 = 1;
                    }
                    break;
                }
            }
        }
        r(fVar);
        i();
    }

    public final void r(b bVar) {
        boolean z2;
        int i3 = 0;
        for (int i4 = 0; i4 < this.f2459i; i4++) {
            this.f2458h[i4] = false;
        }
        boolean z3 = false;
        int i5 = 0;
        while (!z3) {
            int i6 = 1;
            i5++;
            if (i5 >= this.f2459i * 2) {
                return;
            }
            h hVar = bVar.f2447a;
            if (hVar != null) {
                this.f2458h[hVar.b] = true;
            }
            h hVarD = bVar.d(this.f2458h);
            if (hVarD != null) {
                boolean[] zArr = this.f2458h;
                int i7 = hVarD.b;
                if (zArr[i7]) {
                    return;
                } else {
                    zArr[i7] = true;
                }
            }
            if (hVarD != null) {
                float f = Float.MAX_VALUE;
                int i8 = i3;
                int i9 = -1;
                while (i8 < this.f2460j) {
                    b bVar2 = this.f[i8];
                    if (bVar2.f2447a.f2480l != i6 && !bVar2.f2450e) {
                        a aVar = bVar2.f2449d;
                        int i10 = aVar.f2444h;
                        if (i10 == -1) {
                            z2 = false;
                            break;
                        }
                        int i11 = 0;
                        while (true) {
                            if (i10 == -1 || i11 >= aVar.f2439a) {
                                z2 = false;
                                break;
                            } else if (aVar.f2442e[i10] == hVarD.b) {
                                z2 = true;
                                break;
                            } else {
                                i10 = aVar.f[i10];
                                i11++;
                            }
                        }
                        if (z2) {
                            float fC = bVar2.f2449d.c(hVarD);
                            if (fC < 0.0f) {
                                float f3 = (-bVar2.b) / fC;
                                if (f3 < f) {
                                    f = f3;
                                    i9 = i8;
                                }
                            }
                        }
                    }
                    i8++;
                    i6 = 1;
                }
                if (i9 > -1) {
                    b bVar3 = this.f[i9];
                    bVar3.f2447a.f2472c = -1;
                    bVar3.g(hVarD);
                    h hVar2 = bVar3.f2447a;
                    hVar2.f2472c = i9;
                    hVar2.e(this, bVar3);
                }
            } else {
                z3 = true;
            }
            i3 = 0;
        }
    }

    public final void s() {
        for (int i3 = 0; i3 < this.f2460j; i3++) {
            b bVar = this.f[i3];
            if (bVar != null) {
                ((b0.c) this.f2462l.b).b(bVar);
            }
            this.f[i3] = null;
        }
    }

    public final void t() {
        androidx.fragment.app.f fVar;
        int i3 = 0;
        while (true) {
            fVar = this.f2462l;
            h[] hVarArr = (h[]) fVar.f414d;
            if (i3 >= hVarArr.length) {
                break;
            }
            h hVar = hVarArr[i3];
            if (hVar != null) {
                hVar.c();
            }
            i3++;
        }
        b0.c cVar = (b0.c) fVar.f413c;
        h[] hVarArr2 = this.f2463m;
        int length = this.f2464n;
        cVar.getClass();
        if (length > hVarArr2.length) {
            length = hVarArr2.length;
        }
        for (int i4 = 0; i4 < length; i4++) {
            h hVar2 = hVarArr2[i4];
            int i5 = cVar.b;
            Object[] objArr = cVar.f670a;
            if (i5 < objArr.length) {
                objArr[i5] = hVar2;
                cVar.b = i5 + 1;
            }
        }
        this.f2464n = 0;
        Arrays.fill((h[]) fVar.f414d, (Object) null);
        this.b = 0;
        f fVar2 = this.f2454c;
        fVar2.f2469h = 0;
        fVar2.b = 0.0f;
        this.f2459i = 1;
        for (int i6 = 0; i6 < this.f2460j; i6++) {
            b bVar = this.f[i6];
        }
        s();
        this.f2460j = 0;
        this.f2465o = new b(fVar);
    }
}
