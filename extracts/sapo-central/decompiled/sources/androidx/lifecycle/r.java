package androidx.lifecycle;

/* JADX INFO: loaded from: classes.dex */
public final class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public l f583a;
    public o b;

    public final void a(q qVar, k kVar) {
        l lVarA = kVar.a();
        l lVar = this.f583a;
        if (lVarA.compareTo(lVar) < 0) {
            lVar = lVarA;
        }
        this.f583a = lVar;
        this.b.a(qVar, kVar);
        this.f583a = lVarA;
    }
}
