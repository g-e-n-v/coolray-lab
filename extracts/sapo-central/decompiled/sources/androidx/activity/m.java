package androidx.activity;

import androidx.fragment.app.a0;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes.dex */
public final class m implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a0 f94a;
    public final /* synthetic */ n b;

    public m(n nVar, a0 a0Var) {
        this.b = nVar;
        this.f94a = a0Var;
    }

    @Override // androidx.activity.a
    public final void cancel() {
        n nVar = this.b;
        ArrayDeque arrayDeque = nVar.b;
        a0 a0Var = this.f94a;
        arrayDeque.remove(a0Var);
        a0Var.b.remove(this);
        if (k1.a.E()) {
            a0Var.f385c = null;
            nVar.c();
        }
    }
}
