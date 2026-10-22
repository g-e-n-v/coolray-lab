package c0;

import android.view.WindowInsets;

/* JADX INFO: loaded from: classes.dex */
public abstract class e1 extends d1 {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public v.c f711k;

    public e1(k1 k1Var, WindowInsets windowInsets) {
        super(k1Var, windowInsets);
        this.f711k = null;
    }

    @Override // c0.j1
    public k1 b() {
        return k1.g(this.f706c.consumeStableInsets(), null);
    }

    @Override // c0.j1
    public k1 c() {
        return k1.g(this.f706c.consumeSystemWindowInsets(), null);
    }

    @Override // c0.j1
    public final v.c g() {
        if (this.f711k == null) {
            WindowInsets windowInsets = this.f706c;
            this.f711k = v.c.a(windowInsets.getStableInsetLeft(), windowInsets.getStableInsetTop(), windowInsets.getStableInsetRight(), windowInsets.getStableInsetBottom());
        }
        return this.f711k;
    }

    @Override // c0.j1
    public boolean j() {
        return this.f706c.isConsumed();
    }

    @Override // c0.j1
    public void n(v.c cVar) {
        this.f711k = cVar;
    }
}
