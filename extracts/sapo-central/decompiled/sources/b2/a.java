package b2;

import h2.p;

/* JADX INFO: loaded from: classes.dex */
public abstract class a implements f {
    private final g key;

    public a(g gVar) {
        this.key = gVar;
    }

    @Override // b2.h
    public <R> R fold(R r3, p pVar) {
        i2.g.e(pVar, "operation");
        return (R) pVar.b(r3, this);
    }

    @Override // b2.h
    public <E extends f> E get(g gVar) {
        i2.g.e(gVar, "key");
        if (i2.g.a(getKey(), gVar)) {
            return this;
        }
        return null;
    }

    @Override // b2.f
    public g getKey() {
        return this.key;
    }

    @Override // b2.h
    public h minusKey(g gVar) {
        i2.g.e(gVar, "key");
        return i2.g.a(getKey(), gVar) ? i.f697a : this;
    }

    public h plus(h hVar) {
        i2.g.e(hVar, "context");
        return hVar == i.f697a ? this : (h) hVar.fold(this, b.f693c);
    }
}
