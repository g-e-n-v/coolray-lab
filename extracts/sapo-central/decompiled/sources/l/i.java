package l;

import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public final class i implements Iterator, Map.Entry {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f2410a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ a f2412d;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2411c = false;
    public int b = -1;

    public i(a aVar) {
        this.f2412d = aVar;
        this.f2410a = aVar.d() - 1;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (!this.f2411c) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object key = entry.getKey();
        int i3 = this.b;
        a aVar = this.f2412d;
        Object objB = aVar.b(i3, 0);
        if (key != objB && (key == null || !key.equals(objB))) {
            return false;
        }
        Object value = entry.getValue();
        Object objB2 = aVar.b(this.b, 1);
        return value == objB2 || (value != null && value.equals(objB2));
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        if (!this.f2411c) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        return this.f2412d.b(this.b, 0);
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (!this.f2411c) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        return this.f2412d.b(this.b, 1);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.b < this.f2410a;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        if (!this.f2411c) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        int i3 = this.b;
        a aVar = this.f2412d;
        Object objB = aVar.b(i3, 0);
        Object objB2 = aVar.b(this.b, 1);
        return (objB == null ? 0 : objB.hashCode()) ^ (objB2 != null ? objB2.hashCode() : 0);
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.b++;
        this.f2411c = true;
        return this;
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.f2411c) {
            throw new IllegalStateException();
        }
        this.f2412d.g(this.b);
        this.b--;
        this.f2410a--;
        this.f2411c = false;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (!this.f2411c) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        int i3 = this.b;
        a aVar = this.f2412d;
        switch (aVar.f2385d) {
            case 0:
                int i4 = (i3 << 1) + 1;
                Object[] objArr = ((b) aVar.f2386e).b;
                Object obj2 = objArr[i4];
                objArr[i4] = obj;
                return obj2;
            default:
                throw new UnsupportedOperationException("not a map");
        }
    }

    public final String toString() {
        return getKey() + "=" + getValue();
    }
}
