package n;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    public final b b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final androidx.fragment.app.f f2440c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f2439a = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2441d = 8;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[] f2442e = new int[8];
    public int[] f = new int[8];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float[] f2443g = new float[8];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f2444h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f2445i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f2446j = false;

    public a(b bVar, androidx.fragment.app.f fVar) {
        this.b = bVar;
        this.f2440c = fVar;
    }

    public final void a(h hVar, float f, boolean z2) {
        if (f <= -0.001f || f >= 0.001f) {
            int i3 = this.f2444h;
            b bVar = this.b;
            if (i3 == -1) {
                this.f2444h = 0;
                this.f2443g[0] = f;
                this.f2442e[0] = hVar.b;
                this.f[0] = -1;
                hVar.f2479k++;
                hVar.a(bVar);
                this.f2439a++;
                if (this.f2446j) {
                    return;
                }
                int i4 = this.f2445i + 1;
                this.f2445i = i4;
                int[] iArr = this.f2442e;
                if (i4 >= iArr.length) {
                    this.f2446j = true;
                    this.f2445i = iArr.length - 1;
                    return;
                }
                return;
            }
            int i5 = -1;
            for (int i6 = 0; i3 != -1 && i6 < this.f2439a; i6++) {
                int i7 = this.f2442e[i3];
                int i8 = hVar.b;
                if (i7 == i8) {
                    float[] fArr = this.f2443g;
                    float f3 = fArr[i3] + f;
                    if (f3 > -0.001f && f3 < 0.001f) {
                        f3 = 0.0f;
                    }
                    fArr[i3] = f3;
                    if (f3 == 0.0f) {
                        if (i3 == this.f2444h) {
                            this.f2444h = this.f[i3];
                        } else {
                            int[] iArr2 = this.f;
                            iArr2[i5] = iArr2[i3];
                        }
                        if (z2) {
                            hVar.b(bVar);
                        }
                        if (this.f2446j) {
                            this.f2445i = i3;
                        }
                        hVar.f2479k--;
                        this.f2439a--;
                        return;
                    }
                    return;
                }
                if (i7 < i8) {
                    i5 = i3;
                }
                i3 = this.f[i3];
            }
            int length = this.f2445i;
            int i9 = length + 1;
            if (this.f2446j) {
                int[] iArr3 = this.f2442e;
                if (iArr3[length] != -1) {
                    length = iArr3.length;
                }
            } else {
                length = i9;
            }
            int[] iArr4 = this.f2442e;
            if (length >= iArr4.length && this.f2439a < iArr4.length) {
                int i10 = 0;
                while (true) {
                    int[] iArr5 = this.f2442e;
                    if (i10 >= iArr5.length) {
                        break;
                    }
                    if (iArr5[i10] == -1) {
                        length = i10;
                        break;
                    }
                    i10++;
                }
            }
            int[] iArr6 = this.f2442e;
            if (length >= iArr6.length) {
                length = iArr6.length;
                int i11 = this.f2441d * 2;
                this.f2441d = i11;
                this.f2446j = false;
                this.f2445i = length - 1;
                this.f2443g = Arrays.copyOf(this.f2443g, i11);
                this.f2442e = Arrays.copyOf(this.f2442e, this.f2441d);
                this.f = Arrays.copyOf(this.f, this.f2441d);
            }
            this.f2442e[length] = hVar.b;
            this.f2443g[length] = f;
            if (i5 != -1) {
                int[] iArr7 = this.f;
                iArr7[length] = iArr7[i5];
                iArr7[i5] = length;
            } else {
                this.f[length] = this.f2444h;
                this.f2444h = length;
            }
            hVar.f2479k++;
            hVar.a(bVar);
            this.f2439a++;
            if (!this.f2446j) {
                this.f2445i++;
            }
            int i12 = this.f2445i;
            int[] iArr8 = this.f2442e;
            if (i12 >= iArr8.length) {
                this.f2446j = true;
                this.f2445i = iArr8.length - 1;
            }
        }
    }

    public final void b() {
        int i3 = this.f2444h;
        for (int i4 = 0; i3 != -1 && i4 < this.f2439a; i4++) {
            h hVar = ((h[]) this.f2440c.f414d)[this.f2442e[i3]];
            if (hVar != null) {
                hVar.b(this.b);
            }
            i3 = this.f[i3];
        }
        this.f2444h = -1;
        this.f2445i = -1;
        this.f2446j = false;
        this.f2439a = 0;
    }

    public final float c(h hVar) {
        int i3 = this.f2444h;
        for (int i4 = 0; i3 != -1 && i4 < this.f2439a; i4++) {
            if (this.f2442e[i3] == hVar.b) {
                return this.f2443g[i3];
            }
            i3 = this.f[i3];
        }
        return 0.0f;
    }

    public final int d() {
        return this.f2439a;
    }

    public final h e(int i3) {
        int i4 = this.f2444h;
        for (int i5 = 0; i4 != -1 && i5 < this.f2439a; i5++) {
            if (i5 == i3) {
                return ((h[]) this.f2440c.f414d)[this.f2442e[i4]];
            }
            i4 = this.f[i4];
        }
        return null;
    }

    public final float f(int i3) {
        int i4 = this.f2444h;
        for (int i5 = 0; i4 != -1 && i5 < this.f2439a; i5++) {
            if (i5 == i3) {
                return this.f2443g[i4];
            }
            i4 = this.f[i4];
        }
        return 0.0f;
    }

    public final void g(h hVar, float f) {
        if (f == 0.0f) {
            h(hVar, true);
            return;
        }
        int i3 = this.f2444h;
        b bVar = this.b;
        if (i3 == -1) {
            this.f2444h = 0;
            this.f2443g[0] = f;
            this.f2442e[0] = hVar.b;
            this.f[0] = -1;
            hVar.f2479k++;
            hVar.a(bVar);
            this.f2439a++;
            if (this.f2446j) {
                return;
            }
            int i4 = this.f2445i + 1;
            this.f2445i = i4;
            int[] iArr = this.f2442e;
            if (i4 >= iArr.length) {
                this.f2446j = true;
                this.f2445i = iArr.length - 1;
                return;
            }
            return;
        }
        int i5 = -1;
        for (int i6 = 0; i3 != -1 && i6 < this.f2439a; i6++) {
            int i7 = this.f2442e[i3];
            int i8 = hVar.b;
            if (i7 == i8) {
                this.f2443g[i3] = f;
                return;
            }
            if (i7 < i8) {
                i5 = i3;
            }
            i3 = this.f[i3];
        }
        int length = this.f2445i;
        int i9 = length + 1;
        if (this.f2446j) {
            int[] iArr2 = this.f2442e;
            if (iArr2[length] != -1) {
                length = iArr2.length;
            }
        } else {
            length = i9;
        }
        int[] iArr3 = this.f2442e;
        if (length >= iArr3.length && this.f2439a < iArr3.length) {
            int i10 = 0;
            while (true) {
                int[] iArr4 = this.f2442e;
                if (i10 >= iArr4.length) {
                    break;
                }
                if (iArr4[i10] == -1) {
                    length = i10;
                    break;
                }
                i10++;
            }
        }
        int[] iArr5 = this.f2442e;
        if (length >= iArr5.length) {
            length = iArr5.length;
            int i11 = this.f2441d * 2;
            this.f2441d = i11;
            this.f2446j = false;
            this.f2445i = length - 1;
            this.f2443g = Arrays.copyOf(this.f2443g, i11);
            this.f2442e = Arrays.copyOf(this.f2442e, this.f2441d);
            this.f = Arrays.copyOf(this.f, this.f2441d);
        }
        this.f2442e[length] = hVar.b;
        this.f2443g[length] = f;
        if (i5 != -1) {
            int[] iArr6 = this.f;
            iArr6[length] = iArr6[i5];
            iArr6[i5] = length;
        } else {
            this.f[length] = this.f2444h;
            this.f2444h = length;
        }
        hVar.f2479k++;
        hVar.a(bVar);
        int i12 = this.f2439a + 1;
        this.f2439a = i12;
        if (!this.f2446j) {
            this.f2445i++;
        }
        int[] iArr7 = this.f2442e;
        if (i12 >= iArr7.length) {
            this.f2446j = true;
        }
        if (this.f2445i >= iArr7.length) {
            this.f2446j = true;
            this.f2445i = iArr7.length - 1;
        }
    }

    public final float h(h hVar, boolean z2) {
        int i3 = this.f2444h;
        if (i3 == -1) {
            return 0.0f;
        }
        int i4 = 0;
        int i5 = -1;
        while (i3 != -1 && i4 < this.f2439a) {
            if (this.f2442e[i3] == hVar.b) {
                if (i3 == this.f2444h) {
                    this.f2444h = this.f[i3];
                } else {
                    int[] iArr = this.f;
                    iArr[i5] = iArr[i3];
                }
                if (z2) {
                    hVar.b(this.b);
                }
                hVar.f2479k--;
                this.f2439a--;
                this.f2442e[i3] = -1;
                if (this.f2446j) {
                    this.f2445i = i3;
                }
                return this.f2443g[i3];
            }
            i4++;
            i5 = i3;
            i3 = this.f[i3];
        }
        return 0.0f;
    }

    public final String toString() {
        int i3 = this.f2444h;
        String str = "";
        for (int i4 = 0; i3 != -1 && i4 < this.f2439a; i4++) {
            str = (g.a(str, " -> ") + this.f2443g[i3] + " : ") + ((h[]) this.f2440c.f414d)[this.f2442e[i3]];
            i3 = this.f[i3];
        }
        return str;
    }
}
