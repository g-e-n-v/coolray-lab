package c0;

import android.view.WindowInsets;

/* JADX INFO: loaded from: classes.dex */
public class a1 extends c1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WindowInsets.Builder f699a;

    public a1() {
        this.f699a = androidx.lifecycle.y.d();
    }

    @Override // c0.c1
    public k1 b() {
        a();
        k1 k1VarG = k1.g(this.f699a.build(), null);
        k1VarG.f721a.l(null);
        return k1VarG;
    }

    @Override // c0.c1
    public void c(v.c cVar) {
        this.f699a.setStableInsets(cVar.b());
    }

    @Override // c0.c1
    public void d(v.c cVar) {
        this.f699a.setSystemWindowInsets(cVar.b());
    }

    public a1(k1 k1Var) {
        WindowInsets.Builder builderD;
        super(k1Var);
        WindowInsets windowInsetsF = k1Var.f();
        if (windowInsetsF != null) {
            builderD = androidx.lifecycle.y.e(windowInsetsF);
        } else {
            builderD = androidx.lifecycle.y.d();
        }
        this.f699a = builderD;
    }
}
