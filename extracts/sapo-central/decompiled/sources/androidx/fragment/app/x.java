package androidx.fragment.app;

import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public final class x implements View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ n0 f546a;
    public final /* synthetic */ y b;

    public x(y yVar, n0 n0Var) {
        this.b = yVar;
        this.f546a = n0Var;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        n0 n0Var = this.f546a;
        r rVar = n0Var.f479c;
        n0Var.k();
        j.f((ViewGroup) rVar.E.getParent(), this.b.f547a.B()).e();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
