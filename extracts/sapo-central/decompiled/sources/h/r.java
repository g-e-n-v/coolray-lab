package h;

import android.view.MenuItem;

/* JADX INFO: loaded from: classes.dex */
public final class r implements MenuItem.OnActionExpandListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MenuItem.OnActionExpandListener f1936a;
    public final /* synthetic */ t b;

    public r(t tVar, MenuItem.OnActionExpandListener onActionExpandListener) {
        this.b = tVar;
        this.f1936a = onActionExpandListener;
    }

    @Override // android.view.MenuItem.OnActionExpandListener
    public final boolean onMenuItemActionCollapse(MenuItem menuItem) {
        return this.f1936a.onMenuItemActionCollapse(this.b.g(menuItem));
    }

    @Override // android.view.MenuItem.OnActionExpandListener
    public final boolean onMenuItemActionExpand(MenuItem menuItem) {
        return this.f1936a.onMenuItemActionExpand(this.b.g(menuItem));
    }
}
