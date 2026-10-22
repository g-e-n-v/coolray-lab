package androidx.fragment.app;

/* JADX INFO: loaded from: classes.dex */
public final class p0 implements androidx.lifecycle.h, r0.e, androidx.lifecycle.j0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.lifecycle.i0 f498a;
    public androidx.lifecycle.s b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public r0.d f499c = null;

    public p0(androidx.lifecycle.i0 i0Var) {
        this.f498a = i0Var;
    }

    @Override // r0.e
    public final i.r a() {
        d();
        return this.f499c.b;
    }

    public final void c(androidx.lifecycle.k kVar) {
        this.b.d(kVar);
    }

    public final void d() {
        if (this.b == null) {
            this.b = new androidx.lifecycle.s(this);
            this.f499c = new r0.d(this);
        }
    }

    @Override // androidx.lifecycle.j0
    public final androidx.lifecycle.i0 e() {
        d();
        return this.f498a;
    }

    @Override // androidx.lifecycle.q
    public final androidx.lifecycle.s f() {
        d();
        return this.b;
    }
}
