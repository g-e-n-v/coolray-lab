package n;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class f extends b {
    public h[] f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public h[] f2468g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f2469h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public e f2470i;

    @Override // n.b
    public final h d(boolean[] zArr) {
        int i3 = -1;
        for (int i4 = 0; i4 < this.f2469h; i4++) {
            h[] hVarArr = this.f;
            h hVar = hVarArr[i4];
            if (!zArr[hVar.b]) {
                e eVar = this.f2470i;
                eVar.f2467a = hVar;
                int i5 = 8;
                if (i3 != -1) {
                    h hVar2 = hVarArr[i3];
                    while (i5 >= 0) {
                        float f = hVar2.f2476h[i5];
                        float f3 = eVar.f2467a.f2476h[i5];
                        if (f3 != f) {
                            if (f3 >= f) {
                                break;
                            }
                            i3 = i4;
                            break;
                            break;
                        }
                        i5--;
                    }
                } else {
                    while (i5 >= 0) {
                        float f4 = eVar.f2467a.f2476h[i5];
                        if (f4 > 0.0f) {
                            break;
                        }
                        if (f4 < 0.0f) {
                            i3 = i4;
                            break;
                        }
                        i5--;
                    }
                }
            }
        }
        if (i3 == -1) {
            return null;
        }
        return this.f[i3];
    }

    @Override // n.b
    public final boolean e() {
        return this.f2469h == 0;
    }

    @Override // n.b
    public final void i(c cVar, b bVar, boolean z2) {
        h hVar = bVar.f2447a;
        if (hVar == null) {
            return;
        }
        float[] fArr = hVar.f2476h;
        a aVar = bVar.f2449d;
        int iD = aVar.d();
        for (int i3 = 0; i3 < iD; i3++) {
            h hVarE = aVar.e(i3);
            float f = aVar.f(i3);
            e eVar = this.f2470i;
            eVar.f2467a = hVarE;
            if (hVarE.f2471a) {
                boolean z3 = true;
                for (int i4 = 0; i4 < 9; i4++) {
                    float[] fArr2 = eVar.f2467a.f2476h;
                    float f3 = (fArr[i4] * f) + fArr2[i4];
                    fArr2[i4] = f3;
                    if (Math.abs(f3) < 1.0E-4f) {
                        eVar.f2467a.f2476h[i4] = 0.0f;
                    } else {
                        z3 = false;
                    }
                }
                if (z3) {
                    eVar.b.k(eVar.f2467a);
                }
            } else {
                for (int i5 = 0; i5 < 9; i5++) {
                    float f4 = fArr[i5];
                    if (f4 != 0.0f) {
                        float f5 = f4 * f;
                        if (Math.abs(f5) < 1.0E-4f) {
                            f5 = 0.0f;
                        }
                        eVar.f2467a.f2476h[i5] = f5;
                    } else {
                        eVar.f2467a.f2476h[i5] = 0.0f;
                    }
                }
                j(hVarE);
            }
            this.b = (bVar.b * f) + this.b;
        }
        k(hVar);
    }

    public final void j(h hVar) {
        int i3;
        int i4 = this.f2469h + 1;
        h[] hVarArr = this.f;
        if (i4 > hVarArr.length) {
            h[] hVarArr2 = (h[]) Arrays.copyOf(hVarArr, hVarArr.length * 2);
            this.f = hVarArr2;
            this.f2468g = (h[]) Arrays.copyOf(hVarArr2, hVarArr2.length * 2);
        }
        h[] hVarArr3 = this.f;
        int i5 = this.f2469h;
        hVarArr3[i5] = hVar;
        int i6 = i5 + 1;
        this.f2469h = i6;
        if (i6 > 1 && hVarArr3[i5].b > hVar.b) {
            int i7 = 0;
            while (true) {
                i3 = this.f2469h;
                if (i7 >= i3) {
                    break;
                }
                this.f2468g[i7] = this.f[i7];
                i7++;
            }
            Arrays.sort(this.f2468g, 0, i3, new d(0));
            for (int i8 = 0; i8 < this.f2469h; i8++) {
                this.f[i8] = this.f2468g[i8];
            }
        }
        hVar.f2471a = true;
        hVar.a(this);
    }

    public final void k(h hVar) {
        int i3 = 0;
        while (i3 < this.f2469h) {
            if (this.f[i3] == hVar) {
                while (true) {
                    int i4 = this.f2469h;
                    if (i3 >= i4 - 1) {
                        this.f2469h = i4 - 1;
                        hVar.f2471a = false;
                        return;
                    } else {
                        h[] hVarArr = this.f;
                        int i5 = i3 + 1;
                        hVarArr[i3] = hVarArr[i5];
                        i3 = i5;
                    }
                }
            } else {
                i3++;
            }
        }
    }

    @Override // n.b
    public final String toString() {
        e eVar = this.f2470i;
        String str = " goal -> (" + this.b + ") : ";
        for (int i3 = 0; i3 < this.f2469h; i3++) {
            eVar.f2467a = this.f[i3];
            str = str + eVar + " ";
        }
        return str;
    }
}
