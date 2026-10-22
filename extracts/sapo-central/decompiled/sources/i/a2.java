package i;

import android.widget.AbsListView;

/* JADX INFO: loaded from: classes.dex */
public final class a2 implements AbsListView.OnScrollListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c2 f1974a;

    public a2(c2 c2Var) {
        this.f1974a = c2Var;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScroll(AbsListView absListView, int i3, int i4, int i5) {
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScrollStateChanged(AbsListView absListView, int i3) {
        c2 c2Var = this.f1974a;
        z1 z1Var = c2Var.f2004q;
        b0 b0Var = c2Var.f2012y;
        if (i3 != 1 || b0Var.getInputMethodMode() == 2 || b0Var.getContentView() == null) {
            return;
        }
        c2Var.f2008u.removeCallbacks(z1Var);
        z1Var.run();
    }
}
