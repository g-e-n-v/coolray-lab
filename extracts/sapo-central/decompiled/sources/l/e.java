package l;

/* JADX INFO: loaded from: classes.dex */
public final class e implements Cloneable {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Object f2397e = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f2398a = false;
    public long[] b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object[] f2399c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2400d;

    public e() {
        int i3;
        int i4 = 4;
        while (true) {
            i3 = 80;
            if (i4 >= 32) {
                break;
            }
            int i5 = (1 << i4) - 12;
            if (80 <= i5) {
                i3 = i5;
                break;
            }
            i4++;
        }
        int i6 = i3 / 8;
        this.b = new long[i6];
        this.f2399c = new Object[i6];
    }

    public final void a() {
        int i3 = this.f2400d;
        Object[] objArr = this.f2399c;
        for (int i4 = 0; i4 < i3; i4++) {
            objArr[i4] = null;
        }
        this.f2400d = 0;
        this.f2398a = false;
    }

    public final void b() {
        int i3 = this.f2400d;
        long[] jArr = this.b;
        Object[] objArr = this.f2399c;
        int i4 = 0;
        for (int i5 = 0; i5 < i3; i5++) {
            Object obj = objArr[i5];
            if (obj != f2397e) {
                if (i5 != i4) {
                    jArr[i4] = jArr[i5];
                    objArr[i4] = obj;
                    objArr[i5] = null;
                }
                i4++;
            }
        }
        this.f2398a = false;
        this.f2400d = i4;
    }

    public final Object c(long j3, Long l3) {
        Object obj;
        int iB = d.b(this.b, this.f2400d, j3);
        return (iB < 0 || (obj = this.f2399c[iB]) == f2397e) ? l3 : obj;
    }

    public final Object clone() {
        try {
            e eVar = (e) super.clone();
            eVar.b = (long[]) this.b.clone();
            eVar.f2399c = (Object[]) this.f2399c.clone();
            return eVar;
        } catch (CloneNotSupportedException e3) {
            throw new AssertionError(e3);
        }
    }

    public final void d(Object obj, long j3) {
        int iB = d.b(this.b, this.f2400d, j3);
        if (iB >= 0) {
            this.f2399c[iB] = obj;
            return;
        }
        int i3 = ~iB;
        int i4 = this.f2400d;
        if (i3 < i4) {
            Object[] objArr = this.f2399c;
            if (objArr[i3] == f2397e) {
                this.b[i3] = j3;
                objArr[i3] = obj;
                return;
            }
        }
        if (this.f2398a && i4 >= this.b.length) {
            b();
            i3 = ~d.b(this.b, this.f2400d, j3);
        }
        int i5 = this.f2400d;
        if (i5 >= this.b.length) {
            int i6 = (i5 + 1) * 8;
            for (int i7 = 4; i7 < 32; i7++) {
                int i8 = (1 << i7) - 12;
                if (i6 <= i8) {
                    i6 = i8;
                    break;
                }
            }
            int i9 = i6 / 8;
            long[] jArr = new long[i9];
            Object[] objArr2 = new Object[i9];
            long[] jArr2 = this.b;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.f2399c;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.b = jArr;
            this.f2399c = objArr2;
        }
        int i10 = this.f2400d - i3;
        if (i10 != 0) {
            long[] jArr3 = this.b;
            int i11 = i3 + 1;
            System.arraycopy(jArr3, i3, jArr3, i11, i10);
            Object[] objArr4 = this.f2399c;
            System.arraycopy(objArr4, i3, objArr4, i11, this.f2400d - i3);
        }
        this.b[i3] = j3;
        this.f2399c[i3] = obj;
        this.f2400d++;
    }

    public final int e() {
        if (this.f2398a) {
            b();
        }
        return this.f2400d;
    }

    public final Object f(int i3) {
        if (this.f2398a) {
            b();
        }
        return this.f2399c[i3];
    }

    public final String toString() {
        if (e() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f2400d * 28);
        sb.append('{');
        for (int i3 = 0; i3 < this.f2400d; i3++) {
            if (i3 > 0) {
                sb.append(", ");
            }
            if (this.f2398a) {
                b();
            }
            sb.append(this.b[i3]);
            sb.append('=');
            Object objF = f(i3);
            if (objF != this) {
                sb.append(objF);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
