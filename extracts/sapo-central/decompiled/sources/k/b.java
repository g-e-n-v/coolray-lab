package k;

import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class b implements Iterator, e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c f2330a;
    public c b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f2331c;

    public b(c cVar, c cVar2, int i3) {
        this.f2331c = i3;
        this.f2330a = cVar2;
        this.b = cVar;
    }

    @Override // k.e
    public final void a(c cVar) {
        c cVar2;
        c cVarB = null;
        if (this.f2330a == cVar && cVar == this.b) {
            this.b = null;
            this.f2330a = null;
        }
        c cVar3 = this.f2330a;
        if (cVar3 == cVar) {
            switch (this.f2331c) {
                case 0:
                    cVar2 = cVar3.f2334d;
                    break;
                default:
                    cVar2 = cVar3.f2333c;
                    break;
            }
            this.f2330a = cVar2;
        }
        c cVar4 = this.b;
        if (cVar4 == cVar) {
            c cVar5 = this.f2330a;
            if (cVar4 != cVar5 && cVar5 != null) {
                cVarB = b(cVar4);
            }
            this.b = cVarB;
        }
    }

    public final c b(c cVar) {
        switch (this.f2331c) {
            case 0:
                return cVar.f2333c;
            default:
                return cVar.f2334d;
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.b != null;
    }

    @Override // java.util.Iterator
    public final Object next() {
        c cVar = this.b;
        c cVar2 = this.f2330a;
        this.b = (cVar == cVar2 || cVar2 == null) ? null : b(cVar);
        return cVar;
    }
}
