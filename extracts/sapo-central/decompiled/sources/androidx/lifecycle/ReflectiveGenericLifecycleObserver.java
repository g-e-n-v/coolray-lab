package androidx.lifecycle;

import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
class ReflectiveGenericLifecycleObserver implements o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p f551a;
    public final a b;

    public ReflectiveGenericLifecycleObserver(p pVar) {
        this.f551a = pVar;
        c cVar = c.f564c;
        Class<?> cls = pVar.getClass();
        a aVar = (a) cVar.f565a.get(cls);
        this.b = aVar == null ? cVar.a(cls, null) : aVar;
    }

    @Override // androidx.lifecycle.o
    public final void a(q qVar, k kVar) {
        HashMap map = this.b.f554a;
        List list = (List) map.get(kVar);
        p pVar = this.f551a;
        a.a(list, qVar, kVar, pVar);
        a.a((List) map.get(k.ON_ANY), qVar, kVar, pVar);
    }
}
