package i;

/* JADX INFO: loaded from: classes.dex */
public final class i0 extends t1 {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ q0 f2045j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ t0 f2046k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i0(t0 t0Var, t0 t0Var2, q0 q0Var) {
        super(t0Var2);
        this.f2046k = t0Var;
        this.f2045j = q0Var;
    }

    @Override // i.t1
    public final h.d0 b() {
        return this.f2045j;
    }

    @Override // i.t1
    public final boolean c() {
        t0 t0Var = this.f2046k;
        if (t0Var.getInternalPopup().a()) {
            return true;
        }
        t0Var.f.k(k0.b(t0Var), k0.a(t0Var));
        return true;
    }
}
