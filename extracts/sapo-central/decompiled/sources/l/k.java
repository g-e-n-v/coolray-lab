package l;

import java.util.ConcurrentModificationException;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class k {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static Object[] f2414d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static int f2415e;
    public static Object[] f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static int f2416g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int[] f2417a = d.f2396a;
    public Object[] b = d.b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2418c = 0;

    public static void b(int[] iArr, Object[] objArr, int i3) {
        if (iArr.length == 8) {
            synchronized (k.class) {
                try {
                    if (f2416g < 10) {
                        objArr[0] = f;
                        objArr[1] = iArr;
                        for (int i4 = (i3 << 1) - 1; i4 >= 2; i4--) {
                            objArr[i4] = null;
                        }
                        f = objArr;
                        f2416g++;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (k.class) {
                try {
                    if (f2415e < 10) {
                        objArr[0] = f2414d;
                        objArr[1] = iArr;
                        for (int i5 = (i3 << 1) - 1; i5 >= 2; i5--) {
                            objArr[i5] = null;
                        }
                        f2414d = objArr;
                        f2415e++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public final void a(int i3) {
        if (i3 == 8) {
            synchronized (k.class) {
                try {
                    Object[] objArr = f;
                    if (objArr != null) {
                        this.b = objArr;
                        f = (Object[]) objArr[0];
                        this.f2417a = (int[]) objArr[1];
                        objArr[1] = null;
                        objArr[0] = null;
                        f2416g--;
                        return;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } else if (i3 == 4) {
            synchronized (k.class) {
                try {
                    Object[] objArr2 = f2414d;
                    if (objArr2 != null) {
                        this.b = objArr2;
                        f2414d = (Object[]) objArr2[0];
                        this.f2417a = (int[]) objArr2[1];
                        objArr2[1] = null;
                        objArr2[0] = null;
                        f2415e--;
                        return;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        this.f2417a = new int[i3];
        this.b = new Object[i3 << 1];
    }

    public final int c(int i3, Object obj) {
        int i4 = this.f2418c;
        if (i4 == 0) {
            return -1;
        }
        try {
            int iA = d.a(i4, i3, this.f2417a);
            if (iA < 0 || obj.equals(this.b[iA << 1])) {
                return iA;
            }
            int i5 = iA + 1;
            while (i5 < i4 && this.f2417a[i5] == i3) {
                if (obj.equals(this.b[i5 << 1])) {
                    return i5;
                }
                i5++;
            }
            for (int i6 = iA - 1; i6 >= 0 && this.f2417a[i6] == i3; i6--) {
                if (obj.equals(this.b[i6 << 1])) {
                    return i6;
                }
            }
            return ~i5;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    public final void clear() {
        int i3 = this.f2418c;
        if (i3 > 0) {
            int[] iArr = this.f2417a;
            Object[] objArr = this.b;
            this.f2417a = d.f2396a;
            this.b = d.b;
            this.f2418c = 0;
            b(iArr, objArr, i3);
        }
        if (this.f2418c > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public final boolean containsKey(Object obj) {
        return d(obj) >= 0;
    }

    public final boolean containsValue(Object obj) {
        return f(obj) >= 0;
    }

    public final int d(Object obj) {
        return obj == null ? e() : c(obj.hashCode(), obj);
    }

    public final int e() {
        int i3 = this.f2418c;
        if (i3 == 0) {
            return -1;
        }
        try {
            int iA = d.a(i3, 0, this.f2417a);
            if (iA < 0 || this.b[iA << 1] == null) {
                return iA;
            }
            int i4 = iA + 1;
            while (i4 < i3 && this.f2417a[i4] == 0) {
                if (this.b[i4 << 1] == null) {
                    return i4;
                }
                i4++;
            }
            for (int i5 = iA - 1; i5 >= 0 && this.f2417a[i5] == 0; i5--) {
                if (this.b[i5 << 1] == null) {
                    return i5;
                }
            }
            return ~i4;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof k) {
            k kVar = (k) obj;
            if (this.f2418c != kVar.f2418c) {
                return false;
            }
            for (int i3 = 0; i3 < this.f2418c; i3++) {
                try {
                    Object objG = g(i3);
                    Object objI = i(i3);
                    Object orDefault = kVar.getOrDefault(objG, null);
                    if (objI == null) {
                        if (orDefault != null || !kVar.containsKey(objG)) {
                            return false;
                        }
                    } else if (!objI.equals(orDefault)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                    return false;
                }
            }
            return true;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (this.f2418c != map.size()) {
                return false;
            }
            for (int i4 = 0; i4 < this.f2418c; i4++) {
                try {
                    Object objG2 = g(i4);
                    Object objI2 = i(i4);
                    Object obj2 = map.get(objG2);
                    if (objI2 == null) {
                        if (obj2 != null || !map.containsKey(objG2)) {
                            return false;
                        }
                    } else if (!objI2.equals(obj2)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused2) {
                }
            }
            return true;
        }
        return false;
    }

    public final int f(Object obj) {
        int i3 = this.f2418c * 2;
        Object[] objArr = this.b;
        if (obj == null) {
            for (int i4 = 1; i4 < i3; i4 += 2) {
                if (objArr[i4] == null) {
                    return i4 >> 1;
                }
            }
            return -1;
        }
        for (int i5 = 1; i5 < i3; i5 += 2) {
            if (obj.equals(objArr[i5])) {
                return i5 >> 1;
            }
        }
        return -1;
    }

    public final Object g(int i3) {
        return this.b[i3 << 1];
    }

    public final Object get(Object obj) {
        return getOrDefault(obj, null);
    }

    public final Object getOrDefault(Object obj, Object obj2) {
        int iD = d(obj);
        return iD >= 0 ? this.b[(iD << 1) + 1] : obj2;
    }

    public final Object h(int i3) {
        Object[] objArr = this.b;
        int i4 = i3 << 1;
        Object obj = objArr[i4 + 1];
        int i5 = this.f2418c;
        int i6 = 0;
        if (i5 <= 1) {
            b(this.f2417a, objArr, i5);
            this.f2417a = d.f2396a;
            this.b = d.b;
        } else {
            int i7 = i5 - 1;
            int[] iArr = this.f2417a;
            if (iArr.length <= 8 || i5 >= iArr.length / 3) {
                if (i3 < i7) {
                    int i8 = i3 + 1;
                    int i9 = i7 - i3;
                    System.arraycopy(iArr, i8, iArr, i3, i9);
                    Object[] objArr2 = this.b;
                    System.arraycopy(objArr2, i8 << 1, objArr2, i4, i9 << 1);
                }
                Object[] objArr3 = this.b;
                int i10 = i7 << 1;
                objArr3[i10] = null;
                objArr3[i10 + 1] = null;
            } else {
                a(i5 > 8 ? i5 + (i5 >> 1) : 8);
                if (i5 != this.f2418c) {
                    throw new ConcurrentModificationException();
                }
                if (i3 > 0) {
                    System.arraycopy(iArr, 0, this.f2417a, 0, i3);
                    System.arraycopy(objArr, 0, this.b, 0, i4);
                }
                if (i3 < i7) {
                    int i11 = i3 + 1;
                    int i12 = i7 - i3;
                    System.arraycopy(iArr, i11, this.f2417a, i3, i12);
                    System.arraycopy(objArr, i11 << 1, this.b, i4, i12 << 1);
                }
            }
            i6 = i7;
        }
        if (i5 != this.f2418c) {
            throw new ConcurrentModificationException();
        }
        this.f2418c = i6;
        return obj;
    }

    public final int hashCode() {
        int[] iArr = this.f2417a;
        Object[] objArr = this.b;
        int i3 = this.f2418c;
        int i4 = 1;
        int i5 = 0;
        int iHashCode = 0;
        while (i5 < i3) {
            Object obj = objArr[i4];
            iHashCode += (obj == null ? 0 : obj.hashCode()) ^ iArr[i5];
            i5++;
            i4 += 2;
        }
        return iHashCode;
    }

    public final Object i(int i3) {
        return this.b[(i3 << 1) + 1];
    }

    public final boolean isEmpty() {
        return this.f2418c <= 0;
    }

    public final Object put(Object obj, Object obj2) {
        int i3;
        int iC;
        int i4 = this.f2418c;
        if (obj == null) {
            iC = e();
            i3 = 0;
        } else {
            int iHashCode = obj.hashCode();
            i3 = iHashCode;
            iC = c(iHashCode, obj);
        }
        if (iC >= 0) {
            int i5 = (iC << 1) + 1;
            Object[] objArr = this.b;
            Object obj3 = objArr[i5];
            objArr[i5] = obj2;
            return obj3;
        }
        int i6 = ~iC;
        int[] iArr = this.f2417a;
        if (i4 >= iArr.length) {
            int i7 = 8;
            if (i4 >= 8) {
                i7 = (i4 >> 1) + i4;
            } else if (i4 < 4) {
                i7 = 4;
            }
            Object[] objArr2 = this.b;
            a(i7);
            if (i4 != this.f2418c) {
                throw new ConcurrentModificationException();
            }
            int[] iArr2 = this.f2417a;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr2, 0, this.b, 0, objArr2.length);
            }
            b(iArr, objArr2, i4);
        }
        if (i6 < i4) {
            int[] iArr3 = this.f2417a;
            int i8 = i6 + 1;
            System.arraycopy(iArr3, i6, iArr3, i8, i4 - i6);
            Object[] objArr3 = this.b;
            System.arraycopy(objArr3, i6 << 1, objArr3, i8 << 1, (this.f2418c - i6) << 1);
        }
        int i9 = this.f2418c;
        if (i4 == i9) {
            int[] iArr4 = this.f2417a;
            if (i6 < iArr4.length) {
                iArr4[i6] = i3;
                Object[] objArr4 = this.b;
                int i10 = i6 << 1;
                objArr4[i10] = obj;
                objArr4[i10 + 1] = obj2;
                this.f2418c = i9 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public final Object putIfAbsent(Object obj, Object obj2) {
        Object orDefault = getOrDefault(obj, null);
        return orDefault == null ? put(obj, obj2) : orDefault;
    }

    public final Object remove(Object obj) {
        int iD = d(obj);
        if (iD >= 0) {
            return h(iD);
        }
        return null;
    }

    public final Object replace(Object obj, Object obj2) {
        int iD = d(obj);
        if (iD < 0) {
            return null;
        }
        int i3 = (iD << 1) + 1;
        Object[] objArr = this.b;
        Object obj3 = objArr[i3];
        objArr[i3] = obj2;
        return obj3;
    }

    public final int size() {
        return this.f2418c;
    }

    public final String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f2418c * 28);
        sb.append('{');
        for (int i3 = 0; i3 < this.f2418c; i3++) {
            if (i3 > 0) {
                sb.append(", ");
            }
            Object objG = g(i3);
            if (objG != this) {
                sb.append(objG);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            Object objI = i(i3);
            if (objI != this) {
                sb.append(objI);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public final boolean remove(Object obj, Object obj2) {
        int iD = d(obj);
        if (iD < 0) {
            return false;
        }
        Object objI = i(iD);
        if (obj2 != objI && (obj2 == null || !obj2.equals(objI))) {
            return false;
        }
        h(iD);
        return true;
    }

    public final boolean replace(Object obj, Object obj2, Object obj3) {
        int iD = d(obj);
        if (iD < 0) {
            return false;
        }
        Object objI = i(iD);
        if (objI != obj2 && (obj2 == null || !obj2.equals(objI))) {
            return false;
        }
        int i3 = (iD << 1) + 1;
        Object[] objArr = this.b;
        Object obj4 = objArr[i3];
        objArr[i3] = obj3;
        return true;
    }
}
