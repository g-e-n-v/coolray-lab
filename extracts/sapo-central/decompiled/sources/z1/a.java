package z1;

import java.util.AbstractList;
import java.util.ConcurrentModificationException;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import y1.d;

/* JADX INFO: loaded from: classes.dex */
public final class a implements ListIterator {
    public int b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4693d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final d f4694e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4691a = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4692c = -1;

    public a(c cVar, int i3) {
        this.f4694e = cVar;
        this.b = i3;
        this.f4693d = ((AbstractList) cVar).modCount;
    }

    public final void a() {
        switch (this.f4691a) {
            case 0:
                if (((AbstractList) ((b) this.f4694e).f4698e).modCount != this.f4693d) {
                    throw new ConcurrentModificationException();
                }
                return;
            default:
                if (((AbstractList) ((c) this.f4694e)).modCount != this.f4693d) {
                    throw new ConcurrentModificationException();
                }
                return;
        }
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        switch (this.f4691a) {
            case 0:
                a();
                b bVar = (b) this.f4694e;
                int i3 = this.b;
                this.b = i3 + 1;
                bVar.add(i3, obj);
                this.f4692c = -1;
                this.f4693d = ((AbstractList) bVar).modCount;
                break;
            default:
                a();
                c cVar = (c) this.f4694e;
                int i4 = this.b;
                this.b = i4 + 1;
                cVar.add(i4, obj);
                this.f4692c = -1;
                this.f4693d = ((AbstractList) cVar).modCount;
                break;
        }
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        switch (this.f4691a) {
            case 0:
                return this.b < ((b) this.f4694e).f4696c;
            default:
                return this.b < ((c) this.f4694e).b;
        }
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        switch (this.f4691a) {
            case 0:
                return this.b > 0;
            default:
                return this.b > 0;
        }
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        switch (this.f4691a) {
            case 0:
                a();
                int i3 = this.b;
                b bVar = (b) this.f4694e;
                if (i3 >= bVar.f4696c) {
                    throw new NoSuchElementException();
                }
                this.b = i3 + 1;
                this.f4692c = i3;
                return bVar.f4695a[bVar.b + i3];
            default:
                a();
                int i4 = this.b;
                c cVar = (c) this.f4694e;
                if (i4 >= cVar.b) {
                    throw new NoSuchElementException();
                }
                this.b = i4 + 1;
                this.f4692c = i4;
                return cVar.f4700a[i4];
        }
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        switch (this.f4691a) {
            case 0:
                break;
        }
        return this.b;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        switch (this.f4691a) {
            case 0:
                a();
                int i3 = this.b;
                if (i3 <= 0) {
                    throw new NoSuchElementException();
                }
                int i4 = i3 - 1;
                this.b = i4;
                this.f4692c = i4;
                b bVar = (b) this.f4694e;
                return bVar.f4695a[bVar.b + i4];
            default:
                a();
                int i5 = this.b;
                if (i5 <= 0) {
                    throw new NoSuchElementException();
                }
                int i6 = i5 - 1;
                this.b = i6;
                this.f4692c = i6;
                return ((c) this.f4694e).f4700a[i6];
        }
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        int i3;
        switch (this.f4691a) {
            case 0:
                i3 = this.b;
                break;
            default:
                i3 = this.b;
                break;
        }
        return i3 - 1;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        switch (this.f4691a) {
            case 0:
                b bVar = (b) this.f4694e;
                a();
                int i3 = this.f4692c;
                if (i3 == -1) {
                    throw new IllegalStateException("Call next() or previous() before removing element from the iterator.");
                }
                bVar.b(i3);
                this.b = this.f4692c;
                this.f4692c = -1;
                this.f4693d = ((AbstractList) bVar).modCount;
                return;
            default:
                c cVar = (c) this.f4694e;
                a();
                int i4 = this.f4692c;
                if (i4 == -1) {
                    throw new IllegalStateException("Call next() or previous() before removing element from the iterator.");
                }
                cVar.b(i4);
                this.b = this.f4692c;
                this.f4692c = -1;
                this.f4693d = ((AbstractList) cVar).modCount;
                return;
        }
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        switch (this.f4691a) {
            case 0:
                a();
                int i3 = this.f4692c;
                if (i3 == -1) {
                    throw new IllegalStateException("Call next() or previous() before replacing element from the iterator.");
                }
                ((b) this.f4694e).set(i3, obj);
                return;
            default:
                a();
                int i4 = this.f4692c;
                if (i4 == -1) {
                    throw new IllegalStateException("Call next() or previous() before replacing element from the iterator.");
                }
                ((c) this.f4694e).set(i4, obj);
                return;
        }
    }

    public a(b bVar, int i3) {
        this.f4694e = bVar;
        this.b = i3;
        this.f4693d = ((AbstractList) bVar).modCount;
    }
}
