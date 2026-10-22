package n2;

import android.content.pm.ActivityInfo;
import java.util.HashSet;
import java.util.Iterator;
import java.util.NoSuchElementException;
import w0.zf;

/* JADX INFO: loaded from: classes.dex */
public final class b implements Iterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2524a;
    public final Iterator b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2525c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f2526d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f2527e;

    public b(Iterator it, zf zfVar) {
        this.f2524a = 0;
        i2.g.e(it, "source");
        this.b = it;
        this.f2527e = new HashSet();
    }

    public void a() {
        Object next;
        d dVar = (d) this.f2527e;
        do {
            Iterator it = this.b;
            if (!it.hasNext()) {
                this.f2525c = 0;
                return;
            }
            next = it.next();
        } while (((Boolean) dVar.f2531c.c(next)).booleanValue() != dVar.b);
        this.f2526d = next;
        this.f2525c = 1;
    }

    public void b() {
        Object next;
        do {
            Iterator it = this.b;
            if (!it.hasNext()) {
                this.f2525c = 2;
                return;
            } else {
                next = it.next();
            }
        } while (!((HashSet) this.f2527e).add(((ActivityInfo) next).packageName));
        this.f2526d = next;
        this.f2525c = 1;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.f2524a) {
            case 0:
                int i3 = this.f2525c;
                if (i3 == 0) {
                    this.f2525c = 3;
                    b();
                    if (this.f2525c != 1) {
                        return false;
                    }
                } else if (i3 != 1) {
                    if (i3 == 2) {
                        return false;
                    }
                    throw new IllegalArgumentException("hasNext called when the iterator is in the FAILED state.");
                }
                return true;
            default:
                if (this.f2525c == -1) {
                    a();
                }
                return this.f2525c == 1;
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.f2524a) {
            case 0:
                int i3 = this.f2525c;
                if (i3 == 1) {
                    this.f2525c = 0;
                    return this.f2526d;
                }
                if (i3 != 2) {
                    this.f2525c = 3;
                    b();
                    if (this.f2525c == 1) {
                        this.f2525c = 0;
                        return this.f2526d;
                    }
                }
                throw new NoSuchElementException();
            default:
                if (this.f2525c == -1) {
                    a();
                }
                if (this.f2525c == 0) {
                    throw new NoSuchElementException();
                }
                Object obj = this.f2526d;
                this.f2526d = null;
                this.f2525c = -1;
                return obj;
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.f2524a) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public b(d dVar) {
        this.f2524a = 1;
        this.f2527e = dVar;
        this.b = dVar.f2530a.iterator();
        this.f2525c = -1;
    }
}
