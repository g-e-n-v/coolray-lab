package l;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class h implements Set {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2409a;
    public final /* synthetic */ a b;

    public /* synthetic */ h(a aVar, int i3) {
        this.f2409a = i3;
        this.b = aVar;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean add(Object obj) {
        switch (this.f2409a) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean addAll(Collection collection) {
        switch (this.f2409a) {
            case 0:
                a aVar = this.b;
                int iD = aVar.d();
                Iterator it = collection.iterator();
                while (it.hasNext()) {
                    Map.Entry entry = (Map.Entry) it.next();
                    Object key = entry.getKey();
                    Object value = entry.getValue();
                    switch (aVar.f2385d) {
                        case 0:
                            ((b) aVar.f2386e).put(key, value);
                            break;
                        default:
                            ((c) aVar.f2386e).add(key);
                            break;
                    }
                }
                return iD != aVar.d();
            default:
                throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final void clear() {
        switch (this.f2409a) {
            case 0:
                this.b.a();
                break;
            default:
                this.b.a();
                break;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean contains(Object obj) {
        switch (this.f2409a) {
            case 0:
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                a aVar = this.b;
                int iE = aVar.e(key);
                if (iE < 0) {
                    return false;
                }
                Object objB = aVar.b(iE, 1);
                Object value = entry.getValue();
                return objB == value || (objB != null && objB.equals(value));
            default:
                return this.b.e(obj) >= 0;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean containsAll(Collection collection) {
        switch (this.f2409a) {
            case 0:
                Iterator it = collection.iterator();
                while (it.hasNext()) {
                    if (!contains(it.next())) {
                        return false;
                    }
                }
                return true;
            default:
                Map mapC = this.b.c();
                Iterator it2 = collection.iterator();
                while (it2.hasNext()) {
                    if (!mapC.containsKey(it2.next())) {
                        return false;
                    }
                }
                return true;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean equals(Object obj) {
        switch (this.f2409a) {
            case 0:
                break;
        }
        return a.h(this, obj);
    }

    @Override // java.util.Set, java.util.Collection
    public final int hashCode() {
        switch (this.f2409a) {
            case 0:
                a aVar = this.b;
                int iHashCode = 0;
                for (int iD = aVar.d() - 1; iD >= 0; iD--) {
                    Object objB = aVar.b(iD, 0);
                    Object objB2 = aVar.b(iD, 1);
                    iHashCode += (objB == null ? 0 : objB.hashCode()) ^ (objB2 == null ? 0 : objB2.hashCode());
                }
                return iHashCode;
            default:
                a aVar2 = this.b;
                int iHashCode2 = 0;
                for (int iD2 = aVar2.d() - 1; iD2 >= 0; iD2--) {
                    Object objB3 = aVar2.b(iD2, 0);
                    iHashCode2 += objB3 == null ? 0 : objB3.hashCode();
                }
                return iHashCode2;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean isEmpty() {
        switch (this.f2409a) {
            case 0:
                return this.b.d() == 0;
            default:
                return this.b.d() == 0;
        }
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        switch (this.f2409a) {
            case 0:
                return new i(this.b);
            default:
                return new g(this.b, 0);
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean remove(Object obj) {
        switch (this.f2409a) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                a aVar = this.b;
                int iE = aVar.e(obj);
                if (iE < 0) {
                    return false;
                }
                aVar.g(iE);
                return true;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean removeAll(Collection collection) {
        switch (this.f2409a) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                Map mapC = this.b.c();
                int size = mapC.size();
                Iterator it = collection.iterator();
                while (it.hasNext()) {
                    mapC.remove(it.next());
                }
                return size != mapC.size();
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean retainAll(Collection collection) {
        switch (this.f2409a) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                Map mapC = this.b.c();
                int size = mapC.size();
                Iterator it = mapC.keySet().iterator();
                while (it.hasNext()) {
                    if (!collection.contains(it.next())) {
                        it.remove();
                    }
                }
                return size != mapC.size();
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final int size() {
        switch (this.f2409a) {
            case 0:
                break;
        }
        return this.b.d();
    }

    @Override // java.util.Set, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        switch (this.f2409a) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                return this.b.i(objArr, 0);
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final Object[] toArray() {
        switch (this.f2409a) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                a aVar = this.b;
                int iD = aVar.d();
                Object[] objArr = new Object[iD];
                for (int i3 = 0; i3 < iD; i3++) {
                    objArr[i3] = aVar.b(i3, 0);
                }
                return objArr;
        }
    }
}
