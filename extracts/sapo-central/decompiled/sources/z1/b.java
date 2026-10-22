package z1;

import i2.g;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import y1.d;
import y1.f;

/* JADX INFO: loaded from: classes.dex */
public final class b extends d implements RandomAccess, Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object[] f4695a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4696c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final b f4697d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final c f4698e;

    public b(Object[] objArr, int i3, int i4, b bVar, c cVar) {
        g.e(objArr, "backing");
        g.e(cVar, "root");
        this.f4695a = objArr;
        this.b = i3;
        this.f4696c = i4;
        this.f4697d = bVar;
        this.f4698e = cVar;
        ((AbstractList) this).modCount = ((AbstractList) cVar).modCount;
    }

    @Override // y1.d
    public final int a() {
        f();
        return this.f4696c;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        g();
        f();
        e(this.b + this.f4696c, obj);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        g.e(collection, "elements");
        g();
        f();
        int size = collection.size();
        d(this.b + this.f4696c, collection, size);
        return size > 0;
    }

    @Override // y1.d
    public final Object b(int i3) {
        g();
        f();
        int i4 = this.f4696c;
        if (i3 < 0 || i3 >= i4) {
            throw new IndexOutOfBoundsException(androidx.activity.result.b.f(i3, i4, "index: ", ", size: "));
        }
        return h(this.b + i3);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        g();
        f();
        i(this.b, this.f4696c);
    }

    public final void d(int i3, Collection collection, int i4) {
        ((AbstractList) this).modCount++;
        c cVar = this.f4698e;
        b bVar = this.f4697d;
        if (bVar != null) {
            bVar.d(i3, collection, i4);
        } else {
            c cVar2 = c.f4699d;
            cVar.d(i3, collection, i4);
        }
        this.f4695a = cVar.f4700a;
        this.f4696c += i4;
    }

    public final void e(int i3, Object obj) {
        ((AbstractList) this).modCount++;
        c cVar = this.f4698e;
        b bVar = this.f4697d;
        if (bVar != null) {
            bVar.e(i3, obj);
        } else {
            c cVar2 = c.f4699d;
            cVar.e(i3, obj);
        }
        this.f4695a = cVar.f4700a;
        this.f4696c++;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        f();
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            Object[] objArr = this.f4695a;
            int i3 = this.f4696c;
            if (i3 == list.size()) {
                for (int i4 = 0; i4 < i3; i4++) {
                    if (g.a(objArr[this.b + i4], list.get(i4))) {
                    }
                }
                return true;
            }
        }
        return false;
    }

    public final void f() {
        if (((AbstractList) this.f4698e).modCount != ((AbstractList) this).modCount) {
            throw new ConcurrentModificationException();
        }
    }

    public final void g() {
        if (this.f4698e.f4701c) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i3) {
        f();
        int i4 = this.f4696c;
        if (i3 < 0 || i3 >= i4) {
            throw new IndexOutOfBoundsException(androidx.activity.result.b.f(i3, i4, "index: ", ", size: "));
        }
        return this.f4695a[this.b + i3];
    }

    public final Object h(int i3) {
        Object objH;
        ((AbstractList) this).modCount++;
        b bVar = this.f4697d;
        if (bVar != null) {
            objH = bVar.h(i3);
        } else {
            c cVar = c.f4699d;
            objH = this.f4698e.h(i3);
        }
        this.f4696c--;
        return objH;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        f();
        Object[] objArr = this.f4695a;
        int i3 = this.f4696c;
        int iHashCode = 1;
        for (int i4 = 0; i4 < i3; i4++) {
            Object obj = objArr[this.b + i4];
            iHashCode = (iHashCode * 31) + (obj != null ? obj.hashCode() : 0);
        }
        return iHashCode;
    }

    public final void i(int i3, int i4) {
        if (i4 > 0) {
            ((AbstractList) this).modCount++;
        }
        b bVar = this.f4697d;
        if (bVar != null) {
            bVar.i(i3, i4);
        } else {
            c cVar = c.f4699d;
            this.f4698e.i(i3, i4);
        }
        this.f4696c -= i4;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        f();
        for (int i3 = 0; i3 < this.f4696c; i3++) {
            if (g.a(this.f4695a[this.b + i3], obj)) {
                return i3;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        f();
        return this.f4696c == 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return listIterator(0);
    }

    public final int j(int i3, int i4, Collection collection, boolean z2) {
        int iJ;
        b bVar = this.f4697d;
        if (bVar != null) {
            iJ = bVar.j(i3, i4, collection, z2);
        } else {
            c cVar = c.f4699d;
            iJ = this.f4698e.j(i3, i4, collection, z2);
        }
        if (iJ > 0) {
            ((AbstractList) this).modCount++;
        }
        this.f4696c -= iJ;
        return iJ;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        f();
        for (int i3 = this.f4696c - 1; i3 >= 0; i3--) {
            if (g.a(this.f4695a[this.b + i3], obj)) {
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
        g();
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
        g();
        f();
        return j(this.b, this.f4696c, collection, false) > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection collection) {
        g.e(collection, "elements");
        g();
        f();
        return j(this.b, this.f4696c, collection, true) > 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i3, Object obj) {
        g();
        f();
        int i4 = this.f4696c;
        if (i3 < 0 || i3 >= i4) {
            throw new IndexOutOfBoundsException(androidx.activity.result.b.f(i3, i4, "index: ", ", size: "));
        }
        Object[] objArr = this.f4695a;
        int i5 = this.b;
        Object obj2 = objArr[i5 + i3];
        objArr[i5 + i3] = obj;
        return obj2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final List subList(int i3, int i4) {
        k1.a.g(i3, i4, this.f4696c);
        return new b(this.f4695a, this.b + i3, i4 - i3, this, this.f4698e);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray(Object[] objArr) {
        g.e(objArr, "array");
        f();
        int length = objArr.length;
        int i3 = this.f4696c;
        int i4 = this.b;
        if (length < i3) {
            Object[] objArrCopyOfRange = Arrays.copyOfRange(this.f4695a, i4, i3 + i4, objArr.getClass());
            g.d(objArrCopyOfRange, "copyOfRange(...)");
            return objArrCopyOfRange;
        }
        f.V(this.f4695a, objArr, 0, i4, i3 + i4);
        int i5 = this.f4696c;
        if (i5 < objArr.length) {
            objArr[i5] = null;
        }
        return objArr;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        f();
        return k1.a.c(this.f4695a, this.b, this.f4696c, this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i3) {
        f();
        int i4 = this.f4696c;
        if (i3 < 0 || i3 > i4) {
            throw new IndexOutOfBoundsException(androidx.activity.result.b.f(i3, i4, "index: ", ", size: "));
        }
        return new a(this, i3);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i3, Object obj) {
        g();
        f();
        int i4 = this.f4696c;
        if (i3 >= 0 && i3 <= i4) {
            e(this.b + i3, obj);
            return;
        }
        throw new IndexOutOfBoundsException(androidx.activity.result.b.f(i3, i4, "index: ", ", size: "));
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i3, Collection collection) {
        g.e(collection, "elements");
        g();
        f();
        int i4 = this.f4696c;
        if (i3 >= 0 && i3 <= i4) {
            int size = collection.size();
            d(this.b + i3, collection, size);
            return size > 0;
        }
        throw new IndexOutOfBoundsException(androidx.activity.result.b.f(i3, i4, "index: ", ", size: "));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        f();
        Object[] objArr = this.f4695a;
        int i3 = this.f4696c;
        int i4 = this.b;
        int i5 = i3 + i4;
        g.e(objArr, "<this>");
        k1.a.p(i5, objArr.length);
        Object[] objArrCopyOfRange = Arrays.copyOfRange(objArr, i4, i5);
        g.d(objArrCopyOfRange, "copyOfRange(...)");
        return objArrCopyOfRange;
    }
}
