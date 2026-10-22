package w0;

/* JADX INFO: loaded from: classes.dex */
public final class p3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final l9 f4046a;
    public final e9 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final h9 f4047c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final h9 f4048d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f4049e;
    public final a1.r f = new a1.r(6, this);

    public p3(l9 l9Var, e9 e9Var, h9 h9Var, h9 h9Var2) {
        this.f4046a = l9Var;
        this.b = e9Var;
        this.f4047c = h9Var;
        this.f4048d = h9Var2;
    }

    public final void a() {
        if (this.f4049e || !((Boolean) this.f4047c.a()).booleanValue()) {
            return;
        }
        this.f4049e = true;
        this.f4046a.b(this.f, 16L);
    }
}
