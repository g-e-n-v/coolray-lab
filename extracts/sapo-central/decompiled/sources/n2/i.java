package n2;

import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class i implements Iterable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ o2.c f2534a;

    public i(o2.c cVar) {
        this.f2534a = cVar;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new o2.b(this.f2534a);
    }
}
