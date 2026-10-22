package androidx.fragment.app;

import android.os.Handler;
import android.view.View;
import android.view.Window;

/* JADX INFO: loaded from: classes.dex */
public final class u extends a1.b implements androidx.lifecycle.j0, androidx.lifecycle.q, k0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e.j f535a;
    public final e.j b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Handler f536c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final h0 f537d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ e.j f538e;

    public u(e.j jVar) {
        this.f538e = jVar;
        Handler handler = new Handler();
        this.f537d = new h0();
        this.f535a = jVar;
        this.b = jVar;
        this.f536c = handler;
    }

    @Override // a1.b
    public final View L(int i3) {
        return this.f538e.findViewById(i3);
    }

    @Override // a1.b
    public final boolean M() {
        Window window = this.f538e.getWindow();
        return (window == null || window.peekDecorView() == null) ? false : true;
    }

    @Override // androidx.fragment.app.k0
    public final void d() {
    }

    @Override // androidx.lifecycle.j0
    public final androidx.lifecycle.i0 e() {
        return this.f538e.e();
    }

    @Override // androidx.lifecycle.q
    public final androidx.lifecycle.s f() {
        return this.f538e.f1614o;
    }
}
