package k;

import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class d implements Iterator, e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c f2335a;
    public boolean b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ f f2336c;

    public d(f fVar) {
        this.f2336c = fVar;
    }

    @Override // k.e
    public final void a(c cVar) {
        c cVar2 = this.f2335a;
        if (cVar == cVar2) {
            c cVar3 = cVar2.f2334d;
            this.f2335a = cVar3;
            this.b = cVar3 == null;
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.b) {
            return this.f2336c.f2337a != null;
        }
        c cVar = this.f2335a;
        return (cVar == null || cVar.f2333c == null) ? false : true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.b) {
            this.b = false;
            this.f2335a = this.f2336c.f2337a;
        } else {
            c cVar = this.f2335a;
            this.f2335a = cVar != null ? cVar.f2333c : null;
        }
        return this.f2335a;
    }
}
