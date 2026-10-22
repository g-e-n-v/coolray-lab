package y1;

import java.util.Enumeration;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class j implements Iterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Enumeration f4661a;

    public j(Enumeration enumeration) {
        this.f4661a = enumeration;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f4661a.hasMoreElements();
    }

    @Override // java.util.Iterator
    public final Object next() {
        return this.f4661a.nextElement();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
