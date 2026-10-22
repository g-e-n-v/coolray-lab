package n2;

import h2.l;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class k implements Iterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Iterator f2536a;
    public final /* synthetic */ c b;

    public k(c cVar) {
        this.b = cVar;
        this.f2536a = cVar.b.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f2536a.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        return ((l) this.b.f2529c).c(this.f2536a.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
