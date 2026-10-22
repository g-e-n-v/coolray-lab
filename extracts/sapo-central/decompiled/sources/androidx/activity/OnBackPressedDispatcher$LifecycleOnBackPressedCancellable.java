package androidx.activity;

import androidx.fragment.app.a0;
import androidx.lifecycle.o;
import androidx.lifecycle.q;
import androidx.lifecycle.s;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes.dex */
class OnBackPressedDispatcher$LifecycleOnBackPressedCancellable implements o, a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final s f68a;
    public final a0 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public m f69c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ n f70d;

    public OnBackPressedDispatcher$LifecycleOnBackPressedCancellable(n nVar, s sVar, a0 a0Var) {
        this.f70d = nVar;
        this.f68a = sVar;
        this.b = a0Var;
        sVar.a(this);
    }

    @Override // androidx.lifecycle.o
    public final void a(q qVar, androidx.lifecycle.k kVar) {
        if (kVar != androidx.lifecycle.k.ON_START) {
            if (kVar != androidx.lifecycle.k.ON_STOP) {
                if (kVar == androidx.lifecycle.k.ON_DESTROY) {
                    cancel();
                    return;
                }
                return;
            } else {
                m mVar = this.f69c;
                if (mVar != null) {
                    mVar.cancel();
                    return;
                }
                return;
            }
        }
        n nVar = this.f70d;
        ArrayDeque arrayDeque = nVar.b;
        a0 a0Var = this.b;
        arrayDeque.add(a0Var);
        m mVar2 = new m(nVar, a0Var);
        a0Var.b.add(mVar2);
        if (k1.a.E()) {
            nVar.c();
            a0Var.f385c = nVar.f96c;
        }
        this.f69c = mVar2;
    }

    @Override // androidx.activity.a
    public final void cancel() {
        this.f68a.f(this);
        this.b.b.remove(this);
        m mVar = this.f69c;
        if (mVar != null) {
            mVar.cancel();
            this.f69c = null;
        }
    }
}
