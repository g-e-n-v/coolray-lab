package b0;

/* JADX INFO: loaded from: classes.dex */
public final class d extends c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f671c;

    public d() {
        super(12);
        this.f671c = new Object();
    }

    @Override // b0.c
    public final Object a() {
        Object objA;
        synchronized (this.f671c) {
            objA = super.a();
        }
        return objA;
    }

    @Override // b0.c
    public final boolean c(Object obj) {
        boolean zC;
        synchronized (this.f671c) {
            zC = super.c(obj);
        }
        return zC;
    }
}
