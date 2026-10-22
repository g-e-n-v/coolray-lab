package b2;

import h2.p;

/* JADX INFO: loaded from: classes.dex */
public final class b extends i2.h implements p {
    public static final b b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final b f693c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f694a;

    static {
        int i3 = 2;
        b = new b(i3, 0);
        f693c = new b(i3, 1);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ b(int i3, int i4) {
        super(i3);
        this.f694a = i4;
    }

    @Override // h2.p
    public final Object b(Object obj, Object obj2) {
        c cVar;
        switch (this.f694a) {
            case 0:
                String str = (String) obj;
                f fVar = (f) obj2;
                i2.g.e(str, "acc");
                if (str.length() == 0) {
                    return fVar.toString();
                }
                return str + ", " + fVar;
            default:
                h hVar = (h) obj;
                f fVar2 = (f) obj2;
                i2.g.e(hVar, "acc");
                h hVarMinusKey = hVar.minusKey(fVar2.getKey());
                i iVar = i.f697a;
                if (hVarMinusKey == iVar) {
                    return fVar2;
                }
                d dVar = d.f696a;
                e eVar = (e) hVarMinusKey.get(dVar);
                if (eVar == null) {
                    cVar = new c(hVarMinusKey, fVar2);
                } else {
                    h hVarMinusKey2 = hVarMinusKey.minusKey(dVar);
                    if (hVarMinusKey2 == iVar) {
                        return new c(fVar2, eVar);
                    }
                    cVar = new c(new c(hVarMinusKey2, fVar2), eVar);
                }
                return cVar;
        }
    }
}
