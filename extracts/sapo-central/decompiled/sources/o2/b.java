package o2;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public final class b implements Iterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f2623a = -1;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2624c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public l2.c f2625d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2626e;
    public final /* synthetic */ c f;

    public b(c cVar) {
        this.f = cVar;
        int iK = k1.a.k(0, 0, cVar.f2627a.length());
        this.b = iK;
        this.f2624c = iK;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001c  */
    /* JADX WARN: Code duplicated, block: B:12:0x0022 A[ADDED_TO_REGION, REMOVE] */
    /* JADX WARN: Code duplicated, block: B:18:0x006f  */
    /* JADX WARN: Type inference failed for: r0v1, types: [h2.p, i2.h] */
    public final void a() {
        x1.a aVar;
        c cVar = this.f;
        CharSequence charSequence = cVar.f2627a;
        int i3 = this.f2624c;
        if (i3 < 0) {
            this.f2623a = 0;
            this.f2625d = null;
            return;
        }
        int i4 = cVar.b;
        if (i4 > 0) {
            int i5 = this.f2626e + 1;
            this.f2626e = i5;
            if (i5 >= i4) {
                this.f2625d = new l2.c(this.b, k.h0(charSequence), 1);
                this.f2624c = -1;
            } else if (i3 > charSequence.length() && (aVar = (x1.a) cVar.f2628c.b(charSequence, Integer.valueOf(this.f2624c))) != null) {
                int iIntValue = ((Number) aVar.f4641a).intValue();
                int iIntValue2 = ((Number) aVar.b).intValue();
                this.f2625d = k1.a.T(this.b, iIntValue);
                int i6 = iIntValue + iIntValue2;
                this.b = i6;
                this.f2624c = i6 + (iIntValue2 == 0 ? 1 : 0);
            } else {
                this.f2625d = new l2.c(this.b, k.h0(charSequence), 1);
                this.f2624c = -1;
            }
        } else if (i3 > charSequence.length()) {
            this.f2625d = new l2.c(this.b, k.h0(charSequence), 1);
            this.f2624c = -1;
        } else {
            int iIntValue3 = ((Number) aVar.f4641a).intValue();
            int iIntValue4 = ((Number) aVar.b).intValue();
            this.f2625d = k1.a.T(this.b, iIntValue3);
            int i7 = iIntValue3 + iIntValue4;
            this.b = i7;
            this.f2624c = i7 + (iIntValue4 == 0 ? 1 : 0);
        }
        this.f2623a = 1;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f2623a == -1) {
            a();
        }
        return this.f2623a == 1;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f2623a == -1) {
            a();
        }
        if (this.f2623a == 0) {
            throw new NoSuchElementException();
        }
        l2.c cVar = this.f2625d;
        i2.g.c(cVar, "null cannot be cast to non-null type kotlin.ranges.IntRange");
        this.f2625d = null;
        this.f2623a = -1;
        return cVar;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
