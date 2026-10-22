package androidx.emoji2.text;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class d extends a1.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ e f327a;

    public d(e eVar) {
        this.f327a = eVar;
    }

    @Override // a1.b
    public final void K(Throwable th) {
        this.f327a.f328a.d(th);
    }

    @Override // a1.b
    public final void N(t tVar) {
        e eVar = this.f327a;
        eVar.f329c = tVar;
        t tVar2 = eVar.f329c;
        c cVar = eVar.f328a.f341h;
        androidx.activity.result.c cVar2 = new androidx.activity.result.c();
        cVar2.f100a = tVar2;
        cVar2.b = cVar;
        eVar.b = cVar2;
        k kVar = eVar.f328a;
        kVar.getClass();
        ArrayList arrayList = new ArrayList();
        kVar.f336a.writeLock().lock();
        try {
            kVar.f337c = 1;
            arrayList.addAll(kVar.b);
            kVar.b.clear();
            kVar.f336a.writeLock().unlock();
            kVar.f338d.post(new i(arrayList, kVar.f337c, (Throwable) null));
        } catch (Throwable th) {
            kVar.f336a.writeLock().unlock();
            throw th;
        }
    }
}
