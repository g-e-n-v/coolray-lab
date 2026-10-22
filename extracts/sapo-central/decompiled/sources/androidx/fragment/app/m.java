package androidx.fragment.app;

import android.app.Dialog;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class m extends a1.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ o f472a;
    public final /* synthetic */ n b;

    public m(n nVar, o oVar) {
        this.b = nVar;
        this.f472a = oVar;
    }

    @Override // a1.b
    public final View L(int i3) {
        o oVar = this.f472a;
        if (oVar.M()) {
            return oVar.L(i3);
        }
        Dialog dialog = this.b.f474a0;
        if (dialog != null) {
            return dialog.findViewById(i3);
        }
        return null;
    }

    @Override // a1.b
    public final boolean M() {
        return this.f472a.M() || this.b.f477d0;
    }
}
