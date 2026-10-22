package l;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class j implements Collection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2413a;
    public final Object b;

    public /* synthetic */ j(int i3, Object obj) {
        this.f2413a = i3;
        this.b = obj;
    }

    @Override // java.util.Collection
    public final boolean add(Object obj) {
        switch (this.f2413a) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    @Override // java.util.Collection
    public final boolean addAll(Collection collection) {
        switch (this.f2413a) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    @Override // java.util.Collection
    public final void clear() {
        switch (this.f2413a) {
            case 0:
                ((a) this.b).a();
                return;
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    @Override // java.util.Collection
    public final boolean contains(Object obj) {
        int i3;
        switch (this.f2413a) {
            case 0:
                return ((a) this.b).f(obj) >= 0;
            default:
                Object[] objArr = (Object[]) this.b;
                i2.g.e(objArr, "<this>");
                if (obj == null) {
                    int length = objArr.length;
                    i3 = 0;
                    while (i3 < length) {
                        if (objArr[i3] != null) {
                            i3++;
                        }
                    }
                    i3 = -1;
                } else {
                    int length2 = objArr.length;
                    for (int i4 = 0; i4 < length2; i4++) {
                        if (obj.equals(objArr[i4])) {
                            i3 = i4;
                        }
                    }
                    i3 = -1;
                }
                return i3 >= 0;
        }
    }

    @Override // java.util.Collection
    public final boolean containsAll(Collection collection) {
        switch (this.f2413a) {
            case 0:
                Iterator it = collection.iterator();
                while (it.hasNext()) {
                    if (!contains(it.next())) {
                        return false;
                    }
                }
                return true;
            default:
                i2.g.e(collection, "elements");
                if (collection.isEmpty()) {
                    return true;
                }
                Iterator it2 = collection.iterator();
                while (it2.hasNext()) {
                    if (!contains(it2.next())) {
                        return false;
                    }
                }
                return true;
        }
    }

    @Override // java.util.Collection
    public final boolean isEmpty() {
        switch (this.f2413a) {
            case 0:
                return ((a) this.b).d() == 0;
            default:
                return ((Object[]) this.b).length == 0;
        }
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        switch (this.f2413a) {
            case 0:
                return new g((a) this.b, 1);
            default:
                return new i2.a((Object[]) this.b);
        }
    }

    @Override // java.util.Collection
    public final boolean remove(Object obj) {
        switch (this.f2413a) {
            case 0:
                a aVar = (a) this.b;
                int iF = aVar.f(obj);
                if (iF < 0) {
                    return false;
                }
                aVar.g(iF);
                return true;
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    @Override // java.util.Collection
    public final boolean removeAll(Collection collection) {
        switch (this.f2413a) {
            case 0:
                a aVar = (a) this.b;
                int iD = aVar.d();
                int i3 = 0;
                boolean z2 = false;
                while (i3 < iD) {
                    if (collection.contains(aVar.b(i3, 1))) {
                        aVar.g(i3);
                        i3--;
                        iD--;
                        z2 = true;
                    }
                    i3++;
                }
                return z2;
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    @Override // java.util.Collection
    public final boolean retainAll(Collection collection) {
        switch (this.f2413a) {
            case 0:
                a aVar = (a) this.b;
                int iD = aVar.d();
                int i3 = 0;
                boolean z2 = false;
                while (i3 < iD) {
                    if (!collection.contains(aVar.b(i3, 1))) {
                        aVar.g(i3);
                        i3--;
                        iD--;
                        z2 = true;
                    }
                    i3++;
                }
                return z2;
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    @Override // java.util.Collection
    public final int size() {
        switch (this.f2413a) {
            case 0:
                return ((a) this.b).d();
            default:
                return ((Object[]) this.b).length;
        }
    }

    @Override // java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        switch (this.f2413a) {
            case 0:
                return ((a) this.b).i(objArr, 1);
            default:
                i2.g.e(objArr, "array");
                return i2.f.b(this, objArr);
        }
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        switch (this.f2413a) {
            case 0:
                a aVar = (a) this.b;
                int iD = aVar.d();
                Object[] objArr = new Object[iD];
                for (int i3 = 0; i3 < iD; i3++) {
                    objArr[i3] = aVar.b(i3, 1);
                }
                return objArr;
            default:
                Object[] objArr2 = (Object[]) this.b;
                if (objArr2.getClass().equals(Object[].class)) {
                    return objArr2;
                }
                Object[] objArrCopyOf = Arrays.copyOf(objArr2, objArr2.length, Object[].class);
                i2.g.d(objArrCopyOf, "copyOf(...)");
                return objArrCopyOf;
        }
    }
}
