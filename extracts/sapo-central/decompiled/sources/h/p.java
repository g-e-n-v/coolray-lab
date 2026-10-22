package h;

import android.view.ActionProvider;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class p implements ActionProvider.VisibilityListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ActionProvider f1934a;
    public androidx.emoji2.text.m b;

    public p(t tVar, ActionProvider actionProvider) {
        this.f1934a = actionProvider;
    }

    public final View a(o oVar) {
        return this.f1934a.onCreateActionView(oVar);
    }

    @Override // android.view.ActionProvider.VisibilityListener
    public final void onActionProviderVisibilityChanged(boolean z2) {
        androidx.emoji2.text.m mVar = this.b;
        if (mVar != null) {
            m mVar2 = ((o) mVar.b).f1921n;
            mVar2.f1891h = true;
            mVar2.p(true);
        }
    }
}
