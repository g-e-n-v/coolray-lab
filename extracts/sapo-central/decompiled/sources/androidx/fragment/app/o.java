package androidx.fragment.app;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class o extends a1.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ r f482a;

    public o(r rVar) {
        this.f482a = rVar;
    }

    @Override // a1.b
    public final View L(int i3) {
        r rVar = this.f482a;
        View view = rVar.E;
        if (view != null) {
            return view.findViewById(i3);
        }
        throw new IllegalStateException("Fragment " + rVar + " does not have a view");
    }

    @Override // a1.b
    public final boolean M() {
        return this.f482a.E != null;
    }
}
