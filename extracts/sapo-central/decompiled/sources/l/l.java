package l;

/* JADX INFO: loaded from: classes.dex */
public final class l implements Cloneable {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Object f2419d = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int[] f2420a;
    public Object[] b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2421c;

    public l() {
        int i3;
        int i4 = 4;
        while (true) {
            i3 = 40;
            if (i4 >= 32) {
                break;
            }
            int i5 = (1 << i4) - 12;
            if (40 <= i5) {
                i3 = i5;
                break;
            }
            i4++;
        }
        int i6 = i3 / 4;
        this.f2420a = new int[i6];
        this.b = new Object[i6];
    }

    public final void a(int i3, Object obj) {
        int i4 = this.f2421c;
        if (i4 != 0 && i3 <= this.f2420a[i4 - 1]) {
            c(i3, obj);
            return;
        }
        if (i4 >= this.f2420a.length) {
            int i5 = (i4 + 1) * 4;
            for (int i6 = 4; i6 < 32; i6++) {
                int i7 = (1 << i6) - 12;
                if (i5 <= i7) {
                    i5 = i7;
                    break;
                }
            }
            int i8 = i5 / 4;
            int[] iArr = new int[i8];
            Object[] objArr = new Object[i8];
            int[] iArr2 = this.f2420a;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr2 = this.b;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f2420a = iArr;
            this.b = objArr;
        }
        this.f2420a[i4] = i3;
        this.b[i4] = obj;
        this.f2421c = i4 + 1;
    }

    public final Object b(int i3, Integer num) {
        Object obj;
        int iA = d.a(this.f2421c, i3, this.f2420a);
        return (iA < 0 || (obj = this.b[iA]) == f2419d) ? num : obj;
    }

    public final void c(int i3, Object obj) {
        int iA = d.a(this.f2421c, i3, this.f2420a);
        if (iA >= 0) {
            this.b[iA] = obj;
            return;
        }
        int i4 = ~iA;
        int i5 = this.f2421c;
        if (i4 < i5) {
            Object[] objArr = this.b;
            if (objArr[i4] == f2419d) {
                this.f2420a[i4] = i3;
                objArr[i4] = obj;
                return;
            }
        }
        if (i5 >= this.f2420a.length) {
            int i6 = (i5 + 1) * 4;
            for (int i7 = 4; i7 < 32; i7++) {
                int i8 = (1 << i7) - 12;
                if (i6 <= i8) {
                    i6 = i8;
                    break;
                }
            }
            int i9 = i6 / 4;
            int[] iArr = new int[i9];
            Object[] objArr2 = new Object[i9];
            int[] iArr2 = this.f2420a;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr3 = this.b;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f2420a = iArr;
            this.b = objArr2;
        }
        int i10 = this.f2421c - i4;
        if (i10 != 0) {
            int[] iArr3 = this.f2420a;
            int i11 = i4 + 1;
            System.arraycopy(iArr3, i4, iArr3, i11, i10);
            Object[] objArr4 = this.b;
            System.arraycopy(objArr4, i4, objArr4, i11, this.f2421c - i4);
        }
        this.f2420a[i4] = i3;
        this.b[i4] = obj;
        this.f2421c++;
    }

    public final Object clone() {
        try {
            l lVar = (l) super.clone();
            lVar.f2420a = (int[]) this.f2420a.clone();
            lVar.b = (Object[]) this.b.clone();
            return lVar;
        } catch (CloneNotSupportedException e3) {
            throw new AssertionError(e3);
        }
    }

    public final String toString() {
        int i3 = this.f2421c;
        if (i3 <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(i3 * 28);
        sb.append('{');
        for (int i4 = 0; i4 < this.f2421c; i4++) {
            if (i4 > 0) {
                sb.append(", ");
            }
            sb.append(this.f2420a[i4]);
            sb.append('=');
            Object obj = this.b[i4];
            if (obj != this) {
                sb.append(obj);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
