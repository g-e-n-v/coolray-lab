package l2;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public final class b implements Iterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f2427a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2428c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2429d;

    public b(int i3, int i4, int i5) {
        this.f2427a = i5;
        this.b = i4;
        boolean z2 = false;
        if (i5 <= 0 ? i3 >= i4 : i3 <= i4) {
            z2 = true;
        }
        this.f2428c = z2;
        this.f2429d = z2 ? i3 : i4;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f2428c;
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return Integer.valueOf(nextInt());
    }

    public final int nextInt() {
        int i3 = this.f2429d;
        if (i3 != this.b) {
            this.f2429d = this.f2427a + i3;
            return i3;
        }
        if (!this.f2428c) {
            throw new NoSuchElementException();
        }
        this.f2428c = false;
        return i3;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
