package n;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f2471a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f2474e;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f2480l;
    public int b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2472c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2473d = 0;
    public boolean f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final float[] f2475g = new float[9];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float[] f2476h = new float[9];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public b[] f2477i = new b[16];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f2478j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f2479k = 0;

    public h(int i3) {
        this.f2480l = i3;
    }

    public final void a(b bVar) {
        int i3 = 0;
        while (true) {
            int i4 = this.f2478j;
            if (i3 >= i4) {
                b[] bVarArr = this.f2477i;
                if (i4 >= bVarArr.length) {
                    this.f2477i = (b[]) Arrays.copyOf(bVarArr, bVarArr.length * 2);
                }
                b[] bVarArr2 = this.f2477i;
                int i5 = this.f2478j;
                bVarArr2[i5] = bVar;
                this.f2478j = i5 + 1;
                return;
            }
            if (this.f2477i[i3] == bVar) {
                return;
            } else {
                i3++;
            }
        }
    }

    public final void b(b bVar) {
        int i3 = this.f2478j;
        int i4 = 0;
        while (i4 < i3) {
            if (this.f2477i[i4] == bVar) {
                while (i4 < i3 - 1) {
                    b[] bVarArr = this.f2477i;
                    int i5 = i4 + 1;
                    bVarArr[i4] = bVarArr[i5];
                    i4 = i5;
                }
                this.f2478j--;
                return;
            }
            i4++;
        }
    }

    public final void c() {
        this.f2480l = 5;
        this.f2473d = 0;
        this.b = -1;
        this.f2472c = -1;
        this.f2474e = 0.0f;
        this.f = false;
        int i3 = this.f2478j;
        for (int i4 = 0; i4 < i3; i4++) {
            this.f2477i[i4] = null;
        }
        this.f2478j = 0;
        this.f2479k = 0;
        this.f2471a = false;
        Arrays.fill(this.f2476h, 0.0f);
    }

    public final void d(c cVar, float f) {
        this.f2474e = f;
        this.f = true;
        int i3 = this.f2478j;
        this.f2472c = -1;
        for (int i4 = 0; i4 < i3; i4++) {
            this.f2477i[i4].h(cVar, this, false);
        }
        this.f2478j = 0;
    }

    public final void e(c cVar, b bVar) {
        int i3 = this.f2478j;
        for (int i4 = 0; i4 < i3; i4++) {
            this.f2477i[i4].i(cVar, bVar, false);
        }
        this.f2478j = 0;
    }

    public final String toString() {
        return "" + this.b;
    }
}
