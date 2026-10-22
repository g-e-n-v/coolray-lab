package androidx.lifecycle;

/* JADX INFO: loaded from: classes.dex */
public final class SavedStateHandleAttacher implements o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e0 f552a;

    public SavedStateHandleAttacher(e0 e0Var) {
        this.f552a = e0Var;
    }

    @Override // androidx.lifecycle.o
    public final void a(q qVar, k kVar) {
        if (kVar != k.ON_CREATE) {
            throw new IllegalStateException(("Next event must be ON_CREATE, it was " + kVar).toString());
        }
        qVar.f().f(this);
        e0 e0Var = this.f552a;
        if (e0Var.b) {
            return;
        }
        e0Var.f570c = e0Var.f569a.c("androidx.lifecycle.internal.SavedStateHandlesProvider");
        e0Var.b = true;
    }
}
