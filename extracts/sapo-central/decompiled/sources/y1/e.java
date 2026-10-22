package y1;

import java.lang.reflect.Array;
import java.util.AbstractList;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public final class e extends d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Object[] f4658d = new Object[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f4659a;
    public Object[] b = f4658d;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4660c;

    @Override // y1.d
    public final int a() {
        return this.f4660c;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i3, Object obj) {
        int length;
        int length2;
        int i4 = this.f4660c;
        if (i3 < 0 || i3 > i4) {
            throw new IndexOutOfBoundsException(androidx.activity.result.b.f(i3, i4, "index: ", ", size: "));
        }
        if (i3 == i4) {
            addLast(obj);
            return;
        }
        if (i3 == 0) {
            i();
            d(this.f4660c + 1);
            int length3 = this.f4659a;
            if (length3 == 0) {
                Object[] objArr = this.b;
                i2.g.e(objArr, "<this>");
                length3 = objArr.length;
            }
            int i5 = length3 - 1;
            this.f4659a = i5;
            this.b[i5] = obj;
            this.f4660c++;
            return;
        }
        i();
        d(this.f4660c + 1);
        int iH = h(this.f4659a + i3);
        int i6 = this.f4660c;
        if (i3 < ((i6 + 1) >> 1)) {
            if (iH == 0) {
                Object[] objArr2 = this.b;
                i2.g.e(objArr2, "<this>");
                length = objArr2.length - 1;
            } else {
                length = iH - 1;
            }
            int i7 = this.f4659a;
            if (i7 == 0) {
                Object[] objArr3 = this.b;
                i2.g.e(objArr3, "<this>");
                length2 = objArr3.length - 1;
            } else {
                length2 = i7 - 1;
            }
            int i8 = this.f4659a;
            if (length >= i8) {
                Object[] objArr4 = this.b;
                objArr4[length2] = objArr4[i8];
                f.V(objArr4, objArr4, i8, i8 + 1, length + 1);
            } else {
                Object[] objArr5 = this.b;
                f.V(objArr5, objArr5, i8 - 1, i8, objArr5.length);
                Object[] objArr6 = this.b;
                objArr6[objArr6.length - 1] = objArr6[0];
                f.V(objArr6, objArr6, 0, 1, length + 1);
            }
            this.b[length] = obj;
            this.f4659a = length2;
        } else {
            int iH2 = h(i6 + this.f4659a);
            if (iH < iH2) {
                Object[] objArr7 = this.b;
                f.V(objArr7, objArr7, iH + 1, iH, iH2);
            } else {
                Object[] objArr8 = this.b;
                f.V(objArr8, objArr8, 1, 0, iH2);
                Object[] objArr9 = this.b;
                objArr9[0] = objArr9[objArr9.length - 1];
                f.V(objArr9, objArr9, iH + 1, iH, objArr9.length - 1);
            }
            this.b[iH] = obj;
        }
        this.f4660c++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i3, Collection collection) {
        i2.g.e(collection, "elements");
        int i4 = this.f4660c;
        if (i3 < 0 || i3 > i4) {
            throw new IndexOutOfBoundsException(androidx.activity.result.b.f(i3, i4, "index: ", ", size: "));
        }
        if (collection.isEmpty()) {
            return false;
        }
        if (i3 == this.f4660c) {
            return addAll(collection);
        }
        i();
        d(collection.size() + this.f4660c);
        int iH = h(this.f4660c + this.f4659a);
        int iH2 = h(this.f4659a + i3);
        int size = collection.size();
        if (i3 >= ((this.f4660c + 1) >> 1)) {
            int i5 = iH2 + size;
            if (iH2 < iH) {
                int i6 = size + iH;
                Object[] objArr = this.b;
                if (i6 <= objArr.length) {
                    f.V(objArr, objArr, i5, iH2, iH);
                } else if (i5 >= objArr.length) {
                    f.V(objArr, objArr, i5 - objArr.length, iH2, iH);
                } else {
                    int length = iH - (i6 - objArr.length);
                    f.V(objArr, objArr, 0, length, iH);
                    Object[] objArr2 = this.b;
                    f.V(objArr2, objArr2, i5, iH2, length);
                }
            } else {
                Object[] objArr3 = this.b;
                f.V(objArr3, objArr3, size, 0, iH);
                Object[] objArr4 = this.b;
                if (i5 >= objArr4.length) {
                    f.V(objArr4, objArr4, i5 - objArr4.length, iH2, objArr4.length);
                } else {
                    f.V(objArr4, objArr4, 0, objArr4.length - size, objArr4.length);
                    Object[] objArr5 = this.b;
                    f.V(objArr5, objArr5, i5, iH2, objArr5.length - size);
                }
            }
            c(iH2, collection);
            return true;
        }
        int i7 = this.f4659a;
        int length2 = i7 - size;
        if (iH2 < i7) {
            Object[] objArr6 = this.b;
            f.V(objArr6, objArr6, length2, i7, objArr6.length);
            if (size >= iH2) {
                Object[] objArr7 = this.b;
                f.V(objArr7, objArr7, objArr7.length - size, 0, iH2);
            } else {
                Object[] objArr8 = this.b;
                f.V(objArr8, objArr8, objArr8.length - size, 0, size);
                Object[] objArr9 = this.b;
                f.V(objArr9, objArr9, 0, size, iH2);
            }
        } else if (length2 >= 0) {
            Object[] objArr10 = this.b;
            f.V(objArr10, objArr10, length2, i7, iH2);
        } else {
            Object[] objArr11 = this.b;
            length2 += objArr11.length;
            int i8 = iH2 - i7;
            int length3 = objArr11.length - length2;
            if (length3 >= i8) {
                f.V(objArr11, objArr11, length2, i7, iH2);
            } else {
                f.V(objArr11, objArr11, length2, i7, i7 + length3);
                Object[] objArr12 = this.b;
                f.V(objArr12, objArr12, 0, this.f4659a + length3, iH2);
            }
        }
        this.f4659a = length2;
        c(f(iH2 - size), collection);
        return true;
    }

    public final void addLast(Object obj) {
        i();
        d(a() + 1);
        this.b[h(a() + this.f4659a)] = obj;
        this.f4660c = a() + 1;
    }

    @Override // y1.d
    public final Object b(int i3) {
        int i4 = this.f4660c;
        if (i3 < 0 || i3 >= i4) {
            throw new IndexOutOfBoundsException(androidx.activity.result.b.f(i3, i4, "index: ", ", size: "));
        }
        if (i3 == h.U(this)) {
            if (isEmpty()) {
                throw new NoSuchElementException("ArrayDeque is empty.");
            }
            i();
            int iH = h(h.U(this) + this.f4659a);
            Object[] objArr = this.b;
            Object obj = objArr[iH];
            objArr[iH] = null;
            this.f4660c--;
            return obj;
        }
        if (i3 == 0) {
            return removeFirst();
        }
        i();
        int iH2 = h(this.f4659a + i3);
        Object[] objArr2 = this.b;
        Object obj2 = objArr2[iH2];
        if (i3 < (this.f4660c >> 1)) {
            int i5 = this.f4659a;
            if (iH2 >= i5) {
                f.V(objArr2, objArr2, i5 + 1, i5, iH2);
            } else {
                f.V(objArr2, objArr2, 1, 0, iH2);
                Object[] objArr3 = this.b;
                objArr3[0] = objArr3[objArr3.length - 1];
                int i6 = this.f4659a;
                f.V(objArr3, objArr3, i6 + 1, i6, objArr3.length - 1);
            }
            Object[] objArr4 = this.b;
            int i7 = this.f4659a;
            objArr4[i7] = null;
            this.f4659a = e(i7);
        } else {
            int iH3 = h(h.U(this) + this.f4659a);
            if (iH2 <= iH3) {
                Object[] objArr5 = this.b;
                f.V(objArr5, objArr5, iH2, iH2 + 1, iH3 + 1);
            } else {
                Object[] objArr6 = this.b;
                f.V(objArr6, objArr6, iH2, iH2 + 1, objArr6.length);
                Object[] objArr7 = this.b;
                objArr7[objArr7.length - 1] = objArr7[0];
                f.V(objArr7, objArr7, 0, 1, iH3 + 1);
            }
            this.b[iH3] = null;
        }
        this.f4660c--;
        return obj2;
    }

    public final void c(int i3, Collection collection) {
        Iterator it = collection.iterator();
        int length = this.b.length;
        while (i3 < length && it.hasNext()) {
            this.b[i3] = it.next();
            i3++;
        }
        int i4 = this.f4659a;
        for (int i5 = 0; i5 < i4 && it.hasNext(); i5++) {
            this.b[i5] = it.next();
        }
        this.f4660c = collection.size() + this.f4660c;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        if (!isEmpty()) {
            i();
            g(this.f4659a, h(a() + this.f4659a));
        }
        this.f4659a = 0;
        this.f4660c = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    public final void d(int i3) {
        if (i3 < 0) {
            throw new IllegalStateException("Deque is too big.");
        }
        Object[] objArr = this.b;
        if (i3 <= objArr.length) {
            return;
        }
        if (objArr == f4658d) {
            if (i3 < 10) {
                i3 = 10;
            }
            this.b = new Object[i3];
            return;
        }
        int length = objArr.length;
        int i4 = length + (length >> 1);
        if (i4 - i3 < 0) {
            i4 = i3;
        }
        if (i4 - 2147483639 > 0) {
            i4 = i3 > 2147483639 ? Integer.MAX_VALUE : 2147483639;
        }
        Object[] objArr2 = new Object[i4];
        f.V(objArr, objArr2, 0, this.f4659a, objArr.length);
        Object[] objArr3 = this.b;
        int length2 = objArr3.length;
        int i5 = this.f4659a;
        f.V(objArr3, objArr2, length2 - i5, 0, i5);
        this.f4659a = 0;
        this.b = objArr2;
    }

    public final int e(int i3) {
        Object[] objArr = this.b;
        i2.g.e(objArr, "<this>");
        if (i3 == objArr.length - 1) {
            return 0;
        }
        return i3 + 1;
    }

    public final int f(int i3) {
        return i3 < 0 ? i3 + this.b.length : i3;
    }

    public final void g(int i3, int i4) {
        if (i3 < i4) {
            f.X(this.b, i3, i4);
            return;
        }
        Object[] objArr = this.b;
        f.X(objArr, i3, objArr.length);
        f.X(this.b, 0, i4);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i3) {
        int iA = a();
        if (i3 < 0 || i3 >= iA) {
            throw new IndexOutOfBoundsException(androidx.activity.result.b.f(i3, iA, "index: ", ", size: "));
        }
        return this.b[h(this.f4659a + i3)];
    }

    public final int h(int i3) {
        Object[] objArr = this.b;
        return i3 >= objArr.length ? i3 - objArr.length : i3;
    }

    public final void i() {
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        int i3;
        int iH = h(a() + this.f4659a);
        int length = this.f4659a;
        if (length < iH) {
            while (length < iH) {
                if (i2.g.a(obj, this.b[length])) {
                    i3 = this.f4659a;
                } else {
                    length++;
                }
            }
            return -1;
        }
        if (length < iH) {
            return -1;
        }
        int length2 = this.b.length;
        while (length < length2) {
            if (i2.g.a(obj, this.b[length])) {
                i3 = this.f4659a;
            } else {
                length++;
            }
        }
        for (int i4 = 0; i4 < iH; i4++) {
            if (i2.g.a(obj, this.b[i4])) {
                length = i4 + this.b.length;
                i3 = this.f4659a;
            }
        }
        return -1;
        return length - i3;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return a() == 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        int length;
        int i3;
        int iH = h(this.f4660c + this.f4659a);
        int i4 = this.f4659a;
        if (i4 < iH) {
            length = iH - 1;
            if (i4 <= length) {
                while (!i2.g.a(obj, this.b[length])) {
                    if (length != i4) {
                        length--;
                    }
                }
                i3 = this.f4659a;
                return length - i3;
            }
            return -1;
        }
        if (i4 > iH) {
            for (int i5 = iH - 1; -1 < i5; i5--) {
                if (i2.g.a(obj, this.b[i5])) {
                    length = i5 + this.b.length;
                    i3 = this.f4659a;
                    return length - i3;
                }
            }
            Object[] objArr = this.b;
            i2.g.e(objArr, "<this>");
            length = objArr.length - 1;
            int i6 = this.f4659a;
            if (i6 <= length) {
                while (!i2.g.a(obj, this.b[length])) {
                    if (length != i6) {
                        length--;
                    }
                }
                i3 = this.f4659a;
                return length - i3;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        int iIndexOf = indexOf(obj);
        if (iIndexOf == -1) {
            return false;
        }
        b(iIndexOf);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection collection) {
        int iH;
        i2.g.e(collection, "elements");
        boolean z2 = false;
        z2 = false;
        z2 = false;
        if (!isEmpty() && this.b.length != 0) {
            int iH2 = h(this.f4660c + this.f4659a);
            int i3 = this.f4659a;
            if (i3 < iH2) {
                iH = i3;
                while (i3 < iH2) {
                    Object obj = this.b[i3];
                    if (collection.contains(obj)) {
                        z2 = true;
                    } else {
                        this.b[iH] = obj;
                        iH++;
                    }
                    i3++;
                }
                f.X(this.b, iH, iH2);
            } else {
                int length = this.b.length;
                boolean z3 = false;
                int i4 = i3;
                while (i3 < length) {
                    Object[] objArr = this.b;
                    Object obj2 = objArr[i3];
                    objArr[i3] = null;
                    if (collection.contains(obj2)) {
                        z3 = true;
                    } else {
                        this.b[i4] = obj2;
                        i4++;
                    }
                    i3++;
                }
                iH = h(i4);
                for (int i5 = 0; i5 < iH2; i5++) {
                    Object[] objArr2 = this.b;
                    Object obj3 = objArr2[i5];
                    objArr2[i5] = null;
                    if (collection.contains(obj3)) {
                        z3 = true;
                    } else {
                        this.b[iH] = obj3;
                        iH = e(iH);
                    }
                }
                z2 = z3;
            }
            if (z2) {
                i();
                this.f4660c = f(iH - this.f4659a);
            }
        }
        return z2;
    }

    public final Object removeFirst() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        i();
        Object[] objArr = this.b;
        int i3 = this.f4659a;
        Object obj = objArr[i3];
        objArr[i3] = null;
        this.f4659a = e(i3);
        this.f4660c = a() - 1;
        return obj;
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i3, int i4) {
        k1.a.g(i3, i4, this.f4660c);
        int i5 = i4 - i3;
        if (i5 == 0) {
            return;
        }
        if (i5 == this.f4660c) {
            clear();
            return;
        }
        if (i5 == 1) {
            b(i3);
            return;
        }
        i();
        if (i3 < this.f4660c - i4) {
            int iH = h((i3 - 1) + this.f4659a);
            int iH2 = h((i4 - 1) + this.f4659a);
            while (i3 > 0) {
                int i6 = iH + 1;
                int iMin = Math.min(i3, Math.min(i6, iH2 + 1));
                Object[] objArr = this.b;
                int i7 = iH2 - iMin;
                int i8 = iH - iMin;
                f.V(objArr, objArr, i7 + 1, i8 + 1, i6);
                iH = f(i8);
                iH2 = f(i7);
                i3 -= iMin;
            }
            int iH3 = h(this.f4659a + i5);
            g(this.f4659a, iH3);
            this.f4659a = iH3;
        } else {
            int iH4 = h(this.f4659a + i4);
            int iH5 = h(this.f4659a + i3);
            int i9 = this.f4660c;
            while (true) {
                i9 -= i4;
                if (i9 <= 0) {
                    break;
                }
                Object[] objArr2 = this.b;
                i4 = Math.min(i9, Math.min(objArr2.length - iH4, objArr2.length - iH5));
                Object[] objArr3 = this.b;
                int i10 = iH4 + i4;
                f.V(objArr3, objArr3, iH5, iH4, i10);
                iH4 = h(i10);
                iH5 = h(iH5 + i4);
            }
            int iH6 = h(this.f4660c + this.f4659a);
            g(f(iH6 - i5), iH6);
        }
        this.f4660c -= i5;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection collection) {
        int iH;
        i2.g.e(collection, "elements");
        boolean z2 = false;
        z2 = false;
        z2 = false;
        if (!isEmpty() && this.b.length != 0) {
            int iH2 = h(this.f4660c + this.f4659a);
            int i3 = this.f4659a;
            if (i3 < iH2) {
                iH = i3;
                while (i3 < iH2) {
                    Object obj = this.b[i3];
                    if (collection.contains(obj)) {
                        this.b[iH] = obj;
                        iH++;
                    } else {
                        z2 = true;
                    }
                    i3++;
                }
                f.X(this.b, iH, iH2);
            } else {
                int length = this.b.length;
                boolean z3 = false;
                int i4 = i3;
                while (i3 < length) {
                    Object[] objArr = this.b;
                    Object obj2 = objArr[i3];
                    objArr[i3] = null;
                    if (collection.contains(obj2)) {
                        this.b[i4] = obj2;
                        i4++;
                    } else {
                        z3 = true;
                    }
                    i3++;
                }
                iH = h(i4);
                for (int i5 = 0; i5 < iH2; i5++) {
                    Object[] objArr2 = this.b;
                    Object obj3 = objArr2[i5];
                    objArr2[i5] = null;
                    if (collection.contains(obj3)) {
                        this.b[iH] = obj3;
                        iH = e(iH);
                    } else {
                        z3 = true;
                    }
                }
                z2 = z3;
            }
            if (z2) {
                i();
                this.f4660c = f(iH - this.f4659a);
            }
        }
        return z2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i3, Object obj) {
        int iA = a();
        if (i3 < 0 || i3 >= iA) {
            throw new IndexOutOfBoundsException(androidx.activity.result.b.f(i3, iA, "index: ", ", size: "));
        }
        int iH = h(this.f4659a + i3);
        Object[] objArr = this.b;
        Object obj2 = objArr[iH];
        objArr[iH] = obj;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        return toArray(new Object[a()]);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray(Object[] objArr) {
        i2.g.e(objArr, "array");
        int length = objArr.length;
        int i3 = this.f4660c;
        if (length < i3) {
            Object objNewInstance = Array.newInstance(objArr.getClass().getComponentType(), i3);
            i2.g.c(objNewInstance, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.arrayOfNulls>");
            objArr = (Object[]) objNewInstance;
        }
        int iH = h(this.f4660c + this.f4659a);
        int i4 = this.f4659a;
        if (i4 < iH) {
            f.V(this.b, objArr, 0, i4, iH);
        } else if (!isEmpty()) {
            Object[] objArr2 = this.b;
            f.V(objArr2, objArr, 0, this.f4659a, objArr2.length);
            Object[] objArr3 = this.b;
            f.V(objArr3, objArr, objArr3.length - this.f4659a, 0, iH);
        }
        int i5 = this.f4660c;
        if (i5 < objArr.length) {
            objArr[i5] = null;
        }
        return objArr;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        addLast(obj);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        i2.g.e(collection, "elements");
        if (collection.isEmpty()) {
            return false;
        }
        i();
        d(collection.size() + a());
        c(h(a() + this.f4659a), collection);
        return true;
    }
}
