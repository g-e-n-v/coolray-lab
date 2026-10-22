package y1;

import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
public final class b extends c implements RandomAccess {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c f4656a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f4657c;

    public b(c cVar, int i3, int i4) {
        this.f4656a = cVar;
        this.b = i3;
        k1.a.g(i3, i4, cVar.a());
        this.f4657c = i4 - i3;
    }

    @Override // y1.c
    public final int a() {
        return this.f4657c;
    }

    @Override // java.util.List
    public final Object get(int i3) {
        int i4 = this.f4657c;
        if (i3 < 0 || i3 >= i4) {
            throw new IndexOutOfBoundsException(androidx.activity.result.b.f(i3, i4, "index: ", ", size: "));
        }
        return this.f4656a.get(this.b + i3);
    }
}
