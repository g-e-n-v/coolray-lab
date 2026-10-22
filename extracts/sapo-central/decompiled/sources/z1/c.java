package z1;

import i2.g;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import y1.d;
import y1.f;

/* JADX INFO: loaded from: classes.dex */
public final class c extends d implements RandomAccess, Serializable {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final c f4699d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object[] f4700a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f4701c;

    static {
        c cVar = new c(0);
        cVar.f4701c = true;
        f4699d = cVar;
    }

    public c(int i3) {
        if (i3 < 0) {
            throw new IllegalArgumentException("capacity must be non-negative.");
        }
        this.f4700a = new Object[i3];
    }

    @Override // y1.d
    public final int a() {
        return this.b;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        f();
        int i3 = this.b;
        ((AbstractList) this).modCount++;
        g(i3, 1);
        this.f4700a[i3] = obj;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        g.e(collection, "elements");
        f();
        int size = collection.size();
        d(this.b, collection, size);
        return size > 0;
    }

    @Override // y1.d
    public final Object b(int i3) {
        f();
        int i4 = this.b;
        if (i3 < 0 || i3 >= i4) {
            throw new IndexOutOfBoundsException(androidx.activity.result.b.f(i3, i4, "index: ", ", size: "));
        }
        return h(i3);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        f();
        i(0, this.b);
    }

    public final void d(int i3, Collection collection, int i4) {
        ((AbstractList) this).modCount++;
        g(i3, i4);
        Iterator it = collection.iterator();
        for (int i5 = 0; i5 < i4; i5++) {
            this.f4700a[i3 + i5] = it.next();
        }
    }

    public final void e(int i3, Object obj) {
        ((AbstractList) this).modCount++;
        g(i3, 1);
        this.f4700a[i3] = obj;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            Object[] objArr = this.f4700a;
            int i3 = this.b;
            if (i3 == list.size()) {
                for (int i4 = 0; i4 < i3; i4++) {
                    if (g.a(objArr[i4], list.get(i4))) {
                    }
                }
                return true;
            }
        }
        return false;
    }

    public final void f() {
        if (this.f4701c) {
            throw new UnsupportedOperationException();
        }
    }

    public final void g(int i3, int i4) {
        int i5 = this.b + i4;
        if (i5 < 0) {
            throw new OutOfMemoryError();
        }
        Object[] objArr = this.f4700a;
        if (i5 > objArr.length) {
            int length = objArr.length;
            int i6 = length + (length >> 1);
            if (i6 - i5 < 0) {
                i6 = i5;
            }
            if (i6 - 2147483639 > 0) {
                i6 = i5 > 2147483639 ? Integer.MAX_VALUE : 2147483639;
            }
            Object[] objArrCopyOf = Arrays.copyOf(objArr, i6);
            g.d(objArrCopyOf, "copyOf(...)");
            this.f4700a = objArrCopyOf;
        }
        Object[] objArr2 = this.f4700a;
        f.V(objArr2, objArr2, i3 + i4, i3, this.b);
        this.b += i4;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i3) {
        int i4 = this.b;
        if (i3 < 0 || i3 >= i4) {
            throw new IndexOutOfBoundsException(androidx.activity.result.b.f(i3, i4, "index: ", ", size: "));
        }
        return this.f4700a[i3];
    }

    public final Object h(int i3) {
        ((AbstractList) this).modCount++;
        Object[] objArr = this.f4700a;
        Object obj = objArr[i3];
        f.V(objArr, objArr, i3, i3 + 1, this.b);
        Object[] objArr2 = this.f4700a;
        int i4 = this.b - 1;
        g.e(objArr2, "<this>");
        objArr2[i4] = null;
        this.b--;
        return obj;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        Object[] objArr = this.f4700a;
        int i3 = this.b;
        int iHashCode = 1;
        for (int i4 = 0; i4 < i3; i4++) {
            Object obj = objArr[i4];
            iHashCode = (iHashCode * 31) + (obj != null ? obj.hashCode() : 0);
        }
        return iHashCode;
    }

    public final void i(int i3, int i4) {
        if (i4 > 0) {
            ((AbstractList) this).modCount++;
        }
        Object[] objArr = this.f4700a;
        f.V(objArr, objArr, i3, i3 + i4, this.b);
        Object[] objArr2 = this.f4700a;
        int i5 = this.b;
        g.e(objArr2, "<this>");
        for (int i6 = i5 - i4; i6 < i5; i6++) {
            objArr2[i6] = null;
        }
        this.b -= i4;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        for (int i3 = 0; i3 < this.b; i3++) {
            if (g.a(this.f4700a[i3], obj)) {
                return i3;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return this.b == 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return listIterator(0);
    }

    public final int j(int i3, int i4, Collection collection, boolean z2) {
        int i5 = 0;
        int i6 = 0;
        while (i5 < i4) {
            int i7 = i3 + i5;
            if (collection.contains(this.f4700a[i7]) == z2) {
                Object[] objArr = this.f4700a;
                i5++;
                objArr[i6 + i3] = objArr[i7];
                i6++;
            } else {
                i5++;
            }
        }
        int i8 = i4 - i6;
        Object[] objArr2 = this.f4700a;
        f.V(objArr2, objArr2, i3 + i6, i4 + i3, this.b);
        Object[] objArr3 = this.f4700a;
        int i9 = this.b;
        g.e(objArr3, "<this>");
        for (int i10 = i9 - i8; i10 < i9; i10++) {
            objArr3[i10] = null;
        }
        if (i8 > 0) {
            ((AbstractList) this).modCount++;
        }
        this.b -= i8;
        return i8;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        for (int i3 = this.b - 1; i3 >= 0; i3--) {
            if (g.a(this.f4700a[i3], obj)) {
                return i3;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        f();
        int iIndexOf = indexOf(obj);
        if (iIndexOf >= 0) {
            b(iIndexOf);
        }
        return iIndexOf >= 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection collection) {
        g.e(collection, "elements");
        f();
        return j(0, this.b, collection, false) > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection collection) {
        g.e(collection, "elements");
        f();
        return j(0, this.b, collection, true) > 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i3, Object obj) {
        f();
        int i4 = this.b;
        if (i3 < 0 || i3 >= i4) {
            throw new IndexOutOfBoundsException(androidx.activity.result.b.f(i3, i4, "index: ", ", size: "));
        }
        Object[] objArr = this.f4700a;
        Object obj2 = objArr[i3];
        objArr[i3] = obj;
        return obj2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final List subList(int i3, int i4) {
        k1.a.g(i3, i4, this.b);
        return new b(this.f4700a, i3, i4 - i3, null, this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray(Object[] objArr) {
        g.e(objArr, "array");
        int length = objArr.length;
        int i3 = this.b;
        if (length < i3) {
            Object[] objArrCopyOfRange = Arrays.copyOfRange(this.f4700a, 0, i3, objArr.getClass());
            g.d(objArrCopyOfRange, "copyOfRange(...)");
            return objArrCopyOfRange;
        }
        f.V(this.f4700a, objArr, 0, 0, i3);
        int i4 = this.b;
        if (i4 < objArr.length) {
            objArr[i4] = null;
        }
        return objArr;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return k1.a.c(this.f4700a, 0, this.b, this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i3) {
        int i4 = this.b;
        if (i3 < 0 || i3 > i4) {
            throw new IndexOutOfBoundsException(androidx.activity.result.b.f(i3, i4, "index: ", ", size: "));
        }
        return new a(this, i3);
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i3, Collection collection) {
        g.e(collection, "elements");
        f();
        int i4 = this.b;
        if (i3 >= 0 && i3 <= i4) {
            int size = collection.size();
            d(i3, collection, size);
            return size > 0;
        }
        throw new IndexOutOfBoundsException(androidx.activity.result.b.f(i3, i4, "index: ", ", size: "));
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i3, Object obj) {
        f();
        int i4 = this.b;
        if (i3 >= 0 && i3 <= i4) {
            ((AbstractList) this).modCount++;
            g(i3, 1);
            this.f4700a[i3] = obj;
            return;
        }
        throw new IndexOutOfBoundsException(androidx.activity.result.b.f(i3, i4, "index: ", ", size: "));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        Object[] objArr = this.f4700a;
        int i3 = this.b;
        g.e(objArr, "<this>");
        k1.a.p(i3, objArr.length);
        Object[] objArrCopyOfRange = Arrays.copyOfRange(objArr, 0, i3);
        g.d(objArrCopyOfRange, "copyOfRange(...)");
        return objArrCopyOfRange;
    }
}
