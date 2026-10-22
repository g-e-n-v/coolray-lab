package h;

import android.view.MenuItem;

/* JADX INFO: loaded from: classes.dex */
public final class s implements MenuItem.OnMenuItemClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MenuItem.OnMenuItemClickListener f1937a;
    public final /* synthetic */ t b;

    public s(t tVar, MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.b = tVar;
        this.f1937a = onMenuItemClickListener;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public final boolean onMenuItemClick(MenuItem menuItem) {
        return this.f1937a.onMenuItemClick(this.b.g(menuItem));
    }
}
