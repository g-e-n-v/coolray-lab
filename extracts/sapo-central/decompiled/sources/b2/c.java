package b2;

import h2.p;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public final class c implements h, Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final h f695a;
    public final f b;

    public c(h hVar, f fVar) {
        i2.g.e(hVar, "left");
        this.f695a = hVar;
        this.b = fVar;
    }

    public final boolean equals(Object obj) {
        boolean zA;
        if (this == obj) {
            return true;
        }
        if (obj instanceof c) {
            c cVar = (c) obj;
            int i3 = 2;
            c cVar2 = cVar;
            int i4 = 2;
            while (true) {
                h hVar = cVar2.f695a;
                cVar2 = hVar instanceof c ? (c) hVar : null;
                if (cVar2 == null) {
                    break;
                }
                i4++;
            }
            c cVar3 = this;
            while (true) {
                h hVar2 = cVar3.f695a;
                cVar3 = hVar2 instanceof c ? (c) hVar2 : null;
                if (cVar3 == null) {
                    break;
                }
                i3++;
            }
            if (i4 == i3) {
                c cVar4 = this;
                while (true) {
                    f fVar = cVar4.b;
                    if (!i2.g.a(cVar.get(fVar.getKey()), fVar)) {
                        zA = false;
                        break;
                    }
                    h hVar3 = cVar4.f695a;
                    if (!(hVar3 instanceof c)) {
                        i2.g.c(hVar3, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element");
                        f fVar2 = (f) hVar3;
                        zA = i2.g.a(cVar.get(fVar2.getKey()), fVar2);
                        break;
                    }
                    cVar4 = (c) hVar3;
                }
                if (zA) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // b2.h
    public final Object fold(Object obj, p pVar) {
        return pVar.b(this.f695a.fold(obj, pVar), this.b);
    }

    @Override // b2.h
    public final f get(g gVar) {
        i2.g.e(gVar, "key");
        c cVar = this;
        while (true) {
            f fVar = cVar.b.get(gVar);
            if (fVar != null) {
                return fVar;
            }
            h hVar = cVar.f695a;
            if (!(hVar instanceof c)) {
                return hVar.get(gVar);
            }
            cVar = (c) hVar;
        }
    }

    public final int hashCode() {
        return this.b.hashCode() + this.f695a.hashCode();
    }

    @Override // b2.h
    public final h minusKey(g gVar) {
        i2.g.e(gVar, "key");
        f fVar = this.b;
        f fVar2 = fVar.get(gVar);
        h hVar = this.f695a;
        if (fVar2 != null) {
            return hVar;
        }
        h hVarMinusKey = hVar.minusKey(gVar);
        if (hVarMinusKey == hVar) {
            return this;
        }
        return hVarMinusKey == i.f697a ? fVar : new c(hVarMinusKey, fVar);
    }

    public final String toString() {
        return androidx.activity.result.b.j(new StringBuilder("["), (String) fold("", b.b), ']');
    }
}
