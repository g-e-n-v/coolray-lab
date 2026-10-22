package n2;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public final class e implements Iterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f2532a;
    public int b = -2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ f2.f f2533c;

    public e(f2.f fVar) {
        this.f2533c = fVar;
    }

    public final void a() {
        Object objC;
        if (this.b == -2) {
            objC = ((o2.f) this.f2533c.b).a();
        } else {
            o2.g gVar = o2.g.f2633i;
            Object obj = this.f2532a;
            i2.g.b(obj);
            objC = gVar.c(obj);
        }
        this.f2532a = objC;
        this.b = objC == null ? 0 : 1;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.b < 0) {
            a();
        }
        return this.b == 1;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.b < 0) {
            a();
        }
        if (this.b == 0) {
            throw new NoSuchElementException();
        }
        Object obj = this.f2532a;
        i2.g.c(obj, "null cannot be cast to non-null type T of kotlin.sequences.GeneratorSequence");
        this.b = -1;
        return obj;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
