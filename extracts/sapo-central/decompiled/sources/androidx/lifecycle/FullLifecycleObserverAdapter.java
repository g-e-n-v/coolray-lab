package androidx.lifecycle;

/* JADX INFO: loaded from: classes.dex */
class FullLifecycleObserverAdapter implements o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d f550a;
    public final o b;

    public FullLifecycleObserverAdapter(d dVar, o oVar) {
        this.f550a = dVar;
        this.b = oVar;
    }

    @Override // androidx.lifecycle.o
    public final void a(q qVar, k kVar) {
        int i3 = f.f572a[kVar.ordinal()];
        if (i3 == 3) {
            this.f550a.b();
        } else if (i3 == 7) {
            throw new IllegalArgumentException("ON_ANY must not been send by anybody");
        }
        o oVar = this.b;
        if (oVar != null) {
            oVar.a(qVar, kVar);
        }
    }
}
