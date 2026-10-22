package h;

/* JADX INFO: loaded from: classes.dex */
public final class e implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f f1830a;
    public final /* synthetic */ o b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ m f1831c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ androidx.emoji2.text.m f1832d;

    public e(androidx.emoji2.text.m mVar, f fVar, o oVar, m mVar2) {
        this.f1832d = mVar;
        this.f1830a = fVar;
        this.b = oVar;
        this.f1831c = mVar2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        g gVar = (g) this.f1832d.b;
        f fVar = this.f1830a;
        if (fVar != null) {
            gVar.f1875z = true;
            fVar.b.c(false);
            gVar.f1875z = false;
        }
        o oVar = this.b;
        if (oVar.isEnabled() && oVar.hasSubMenu()) {
            this.f1831c.q(oVar, null, 4);
        }
    }
}
