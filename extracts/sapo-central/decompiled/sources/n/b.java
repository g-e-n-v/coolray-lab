package n;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final a f2449d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public h f2447a = null;
    public float b = 0.0f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f2448c = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f2450e = false;

    public b(androidx.fragment.app.f fVar) {
        this.f2449d = new a(this, fVar);
    }

    public final void a(c cVar, int i3) {
        this.f2449d.g(cVar.j(i3), 1.0f);
        this.f2449d.g(cVar.j(i3), -1.0f);
    }

    public final void b(h hVar, h hVar2, h hVar3, int i3) {
        boolean z2 = false;
        if (i3 != 0) {
            if (i3 < 0) {
                i3 *= -1;
                z2 = true;
            }
            this.b = i3;
        }
        if (z2) {
            this.f2449d.g(hVar, 1.0f);
            this.f2449d.g(hVar2, -1.0f);
            this.f2449d.g(hVar3, -1.0f);
        } else {
            this.f2449d.g(hVar, -1.0f);
            this.f2449d.g(hVar2, 1.0f);
            this.f2449d.g(hVar3, 1.0f);
        }
    }

    public final void c(h hVar, h hVar2, h hVar3, int i3) {
        boolean z2 = false;
        if (i3 != 0) {
            if (i3 < 0) {
                i3 *= -1;
                z2 = true;
            }
            this.b = i3;
        }
        if (z2) {
            this.f2449d.g(hVar, 1.0f);
            this.f2449d.g(hVar2, -1.0f);
            this.f2449d.g(hVar3, 1.0f);
        } else {
            this.f2449d.g(hVar, -1.0f);
            this.f2449d.g(hVar2, 1.0f);
            this.f2449d.g(hVar3, -1.0f);
        }
    }

    public h d(boolean[] zArr) {
        return f(zArr, null);
    }

    public boolean e() {
        return this.f2447a == null && this.b == 0.0f && this.f2449d.d() == 0;
    }

    public final h f(boolean[] zArr, h hVar) {
        int i3;
        int iD = this.f2449d.d();
        h hVar2 = null;
        float f = 0.0f;
        for (int i4 = 0; i4 < iD; i4++) {
            float f3 = this.f2449d.f(i4);
            if (f3 < 0.0f) {
                h hVarE = this.f2449d.e(i4);
                if ((zArr == null || !zArr[hVarE.b]) && hVarE != hVar && (((i3 = hVarE.f2480l) == 3 || i3 == 4) && f3 < f)) {
                    f = f3;
                    hVar2 = hVarE;
                }
            }
        }
        return hVar2;
    }

    public final void g(h hVar) {
        h hVar2 = this.f2447a;
        if (hVar2 != null) {
            this.f2449d.g(hVar2, -1.0f);
            this.f2447a.f2472c = -1;
            this.f2447a = null;
        }
        float fH = this.f2449d.h(hVar, true) * (-1.0f);
        this.f2447a = hVar;
        if (fH == 1.0f) {
            return;
        }
        this.b /= fH;
        a aVar = this.f2449d;
        int i3 = aVar.f2444h;
        for (int i4 = 0; i3 != -1 && i4 < aVar.f2439a; i4++) {
            float[] fArr = aVar.f2443g;
            fArr[i3] = fArr[i3] / fH;
            i3 = aVar.f[i3];
        }
    }

    public final void h(c cVar, h hVar, boolean z2) {
        if (hVar.f) {
            float fC = this.f2449d.c(hVar);
            this.b = (hVar.f2474e * fC) + this.b;
            this.f2449d.h(hVar, z2);
            if (z2) {
                hVar.b(this);
            }
            if (this.f2449d.d() == 0) {
                this.f2450e = true;
                cVar.f2453a = true;
            }
        }
    }

    public void i(c cVar, b bVar, boolean z2) {
        a aVar = this.f2449d;
        aVar.getClass();
        float fC = aVar.c(bVar.f2447a);
        aVar.h(bVar.f2447a, z2);
        a aVar2 = bVar.f2449d;
        int iD = aVar2.d();
        for (int i3 = 0; i3 < iD; i3++) {
            h hVarE = aVar2.e(i3);
            aVar.a(hVarE, aVar2.c(hVarE) * fC, z2);
        }
        this.b = (bVar.b * fC) + this.b;
        if (z2) {
            bVar.f2447a.b(this);
        }
        if (this.f2447a == null || this.f2449d.d() != 0) {
            return;
        }
        this.f2450e = true;
        cVar.f2453a = true;
    }

    public String toString() {
        boolean z2;
        String strA = g.a(this.f2447a == null ? "0" : "" + this.f2447a, " = ");
        if (this.b != 0.0f) {
            strA = strA + this.b;
            z2 = true;
        } else {
            z2 = false;
        }
        int iD = this.f2449d.d();
        for (int i3 = 0; i3 < iD; i3++) {
            h hVarE = this.f2449d.e(i3);
            if (hVarE != null) {
                float f = this.f2449d.f(i3);
                if (f != 0.0f) {
                    String string = hVarE.toString();
                    if (z2) {
                        if (f > 0.0f) {
                            strA = g.a(strA, " + ");
                        } else {
                            strA = g.a(strA, " - ");
                            f *= -1.0f;
                        }
                    } else if (f < 0.0f) {
                        strA = g.a(strA, "- ");
                        f *= -1.0f;
                    }
                    strA = f == 1.0f ? g.a(strA, string) : strA + f + " " + string;
                    z2 = true;
                }
            }
        }
        return !z2 ? g.a(strA, "0.0") : strA;
    }
}
