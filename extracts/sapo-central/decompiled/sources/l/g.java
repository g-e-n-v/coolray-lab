package l;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public final class g implements Iterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f2405a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2406c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2407d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ a f2408e;

    public g(a aVar, int i3) {
        this.f2408e = aVar;
        this.f2405a = i3;
        this.b = aVar.d();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f2406c < this.b;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        Object objB = this.f2408e.b(this.f2406c, this.f2405a);
        this.f2406c++;
        this.f2407d = true;
        return objB;
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.f2407d) {
            throw new IllegalStateException();
        }
        int i3 = this.f2406c - 1;
        this.f2406c = i3;
        this.b--;
        this.f2407d = false;
        this.f2408e.g(i3);
    }
}
