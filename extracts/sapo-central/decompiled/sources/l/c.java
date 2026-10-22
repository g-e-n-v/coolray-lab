package l;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class c implements Collection, Set {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int[] f2388e = new int[0];
    public static final Object[] f = new Object[0];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static Object[] f2389g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static int f2390h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static Object[] f2391i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static int f2392j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int[] f2393a = f2388e;
    public Object[] b = f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2394c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public a f2395d;

    public static void b(int[] iArr, Object[] objArr, int i3) {
        if (iArr.length == 8) {
            synchronized (c.class) {
                try {
                    if (f2392j < 10) {
                        objArr[0] = f2391i;
                        objArr[1] = iArr;
                        for (int i4 = i3 - 1; i4 >= 2; i4--) {
                            objArr[i4] = null;
                        }
                        f2391i = objArr;
                        f2392j++;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (c.class) {
                try {
                    if (f2390h < 10) {
                        objArr[0] = f2389g;
                        objArr[1] = iArr;
                        for (int i5 = i3 - 1; i5 >= 2; i5--) {
                            objArr[i5] = null;
                        }
                        f2389g = objArr;
                        f2390h++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public final void a(int i3) {
        if (i3 == 8) {
            synchronized (c.class) {
                try {
                    Object[] objArr = f2391i;
                    if (objArr != null) {
                        this.b = objArr;
                        f2391i = (Object[]) objArr[0];
                        this.f2393a = (int[]) objArr[1];
                        objArr[1] = null;
                        objArr[0] = null;
                        f2392j--;
                        return;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } else if (i3 == 4) {
            synchronized (c.class) {
                try {
                    Object[] objArr2 = f2389g;
                    if (objArr2 != null) {
                        this.b = objArr2;
                        f2389g = (Object[]) objArr2[0];
                        this.f2393a = (int[]) objArr2[1];
                        objArr2[1] = null;
                        objArr2[0] = null;
                        f2390h--;
                        return;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        this.f2393a = new int[i3];
        this.b = new Object[i3];
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        int i3;
        int iC;
        if (obj == null) {
            iC = d();
            i3 = 0;
        } else {
            int iHashCode = obj.hashCode();
            i3 = iHashCode;
            iC = c(iHashCode, obj);
        }
        if (iC >= 0) {
            return false;
        }
        int i4 = ~iC;
        int i5 = this.f2394c;
        int[] iArr = this.f2393a;
        if (i5 >= iArr.length) {
            int i6 = 8;
            if (i5 >= 8) {
                i6 = (i5 >> 1) + i5;
            } else if (i5 < 4) {
                i6 = 4;
            }
            Object[] objArr = this.b;
            a(i6);
            int[] iArr2 = this.f2393a;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr, 0, this.b, 0, objArr.length);
            }
            b(iArr, objArr, this.f2394c);
        }
        int i7 = this.f2394c;
        if (i4 < i7) {
            int[] iArr3 = this.f2393a;
            int i8 = i4 + 1;
            System.arraycopy(iArr3, i4, iArr3, i8, i7 - i4);
            Object[] objArr2 = this.b;
            System.arraycopy(objArr2, i4, objArr2, i8, this.f2394c - i4);
        }
        this.f2393a[i4] = i3;
        this.b[i4] = obj;
        this.f2394c++;
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean addAll(Collection collection) {
        int size = collection.size() + this.f2394c;
        int[] iArr = this.f2393a;
        boolean zAdd = false;
        if (iArr.length < size) {
            Object[] objArr = this.b;
            a(size);
            int i3 = this.f2394c;
            if (i3 > 0) {
                System.arraycopy(iArr, 0, this.f2393a, 0, i3);
                System.arraycopy(objArr, 0, this.b, 0, this.f2394c);
            }
            b(iArr, objArr, this.f2394c);
        }
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            zAdd |= add(it.next());
        }
        return zAdd;
    }

    public final int c(int i3, Object obj) {
        int i4 = this.f2394c;
        if (i4 == 0) {
            return -1;
        }
        int iA = d.a(i4, i3, this.f2393a);
        if (iA < 0 || obj.equals(this.b[iA])) {
            return iA;
        }
        int i5 = iA + 1;
        while (i5 < i4 && this.f2393a[i5] == i3) {
            if (obj.equals(this.b[i5])) {
                return i5;
            }
            i5++;
        }
        for (int i6 = iA - 1; i6 >= 0 && this.f2393a[i6] == i3; i6--) {
            if (obj.equals(this.b[i6])) {
                return i6;
            }
        }
        return ~i5;
    }

    @Override // java.util.Collection, java.util.Set
    public final void clear() {
        int i3 = this.f2394c;
        if (i3 != 0) {
            b(this.f2393a, this.b, i3);
            this.f2393a = f2388e;
            this.b = f;
            this.f2394c = 0;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return (obj == null ? d() : c(obj.hashCode(), obj)) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean containsAll(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public final int d() {
        int i3 = this.f2394c;
        if (i3 == 0) {
            return -1;
        }
        int iA = d.a(i3, 0, this.f2393a);
        if (iA < 0 || this.b[iA] == null) {
            return iA;
        }
        int i4 = iA + 1;
        while (i4 < i3 && this.f2393a[i4] == 0) {
            if (this.b[i4] == null) {
                return i4;
            }
            i4++;
        }
        for (int i5 = iA - 1; i5 >= 0 && this.f2393a[i5] == 0; i5--) {
            if (this.b[i5] == null) {
                return i5;
            }
        }
        return ~i4;
    }

    public final void e(int i3) {
        Object[] objArr = this.b;
        Object obj = objArr[i3];
        int i4 = this.f2394c;
        if (i4 <= 1) {
            b(this.f2393a, objArr, i4);
            this.f2393a = f2388e;
            this.b = f;
            this.f2394c = 0;
            return;
        }
        int[] iArr = this.f2393a;
        if (iArr.length <= 8 || i4 >= iArr.length / 3) {
            int i5 = i4 - 1;
            this.f2394c = i5;
            if (i3 < i5) {
                int i6 = i3 + 1;
                System.arraycopy(iArr, i6, iArr, i3, i5 - i3);
                Object[] objArr2 = this.b;
                System.arraycopy(objArr2, i6, objArr2, i3, this.f2394c - i3);
            }
            this.b[this.f2394c] = null;
            return;
        }
        a(i4 > 8 ? i4 + (i4 >> 1) : 8);
        this.f2394c--;
        if (i3 > 0) {
            System.arraycopy(iArr, 0, this.f2393a, 0, i3);
            System.arraycopy(objArr, 0, this.b, 0, i3);
        }
        int i7 = this.f2394c;
        if (i3 < i7) {
            int i8 = i3 + 1;
            System.arraycopy(iArr, i8, this.f2393a, i3, i7 - i3);
            System.arraycopy(objArr, i8, this.b, i3, this.f2394c - i3);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            if (this.f2394c != set.size()) {
                return false;
            }
            for (int i3 = 0; i3 < this.f2394c; i3++) {
                try {
                    if (!set.contains(this.b[i3])) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        int[] iArr = this.f2393a;
        int i3 = this.f2394c;
        int i4 = 0;
        for (int i5 = 0; i5 < i3; i5++) {
            i4 += iArr[i5];
        }
        return i4;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this.f2394c <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        if (this.f2395d == null) {
            this.f2395d = new a(1, this);
        }
        a aVar = this.f2395d;
        if (aVar.b == null) {
            aVar.b = new h(aVar, 1);
        }
        return aVar.b.iterator();
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int iD = obj == null ? d() : c(obj.hashCode(), obj);
        if (iD < 0) {
            return false;
        }
        e(iD);
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean removeAll(Collection collection) {
        Iterator it = collection.iterator();
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= remove(it.next());
        }
        return zRemove;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean retainAll(Collection collection) {
        boolean z2 = false;
        for (int i3 = this.f2394c - 1; i3 >= 0; i3--) {
            if (!collection.contains(this.b[i3])) {
                e(i3);
                z2 = true;
            }
        }
        return z2;
    }

    @Override // java.util.Collection, java.util.Set
    public final int size() {
        return this.f2394c;
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray() {
        int i3 = this.f2394c;
        Object[] objArr = new Object[i3];
        System.arraycopy(this.b, 0, objArr, 0, i3);
        return objArr;
    }

    public final String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f2394c * 14);
        sb.append('{');
        for (int i3 = 0; i3 < this.f2394c; i3++) {
            if (i3 > 0) {
                sb.append(", ");
            }
            Object obj = this.b[i3];
            if (obj != this) {
                sb.append(obj);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray(Object[] objArr) {
        if (objArr.length < this.f2394c) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), this.f2394c);
        }
        System.arraycopy(this.b, 0, objArr, 0, this.f2394c);
        int length = objArr.length;
        int i3 = this.f2394c;
        if (length > i3) {
            objArr[i3] = null;
        }
        return objArr;
    }
}
