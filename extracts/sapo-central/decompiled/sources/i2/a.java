package i2;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public class a implements Iterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2277a = 1;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f2278c;

    public a(Object[] objArr) {
        g.e(objArr, "array");
        this.f2278c = objArr;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.f2277a) {
            case 0:
                return this.b < ((Object[]) this.f2278c).length;
            default:
                return this.b < ((y1.c) this.f2278c).a();
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.f2277a) {
            case 0:
                try {
                    Object[] objArr = (Object[]) this.f2278c;
                    int i3 = this.b;
                    this.b = i3 + 1;
                    return objArr[i3];
                } catch (ArrayIndexOutOfBoundsException e3) {
                    this.b--;
                    throw new NoSuchElementException(e3.getMessage());
                }
            default:
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                y1.c cVar = (y1.c) this.f2278c;
                int i4 = this.b;
                this.b = i4 + 1;
                return cVar.get(i4);
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.f2277a) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public a(y1.c cVar) {
        this.f2278c = cVar;
    }
}
