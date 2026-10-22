package h;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class f0 extends m implements SubMenu {
    public final o A;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final m f1852z;

    public f0(Context context, m mVar, o oVar) {
        super(context);
        this.f1852z = mVar;
        this.A = oVar;
    }

    @Override // h.m
    public final boolean d(o oVar) {
        return this.f1852z.d(oVar);
    }

    @Override // h.m
    public final boolean e(m mVar, MenuItem menuItem) {
        return super.e(mVar, menuItem) || this.f1852z.e(mVar, menuItem);
    }

    @Override // h.m
    public final boolean f(o oVar) {
        return this.f1852z.f(oVar);
    }

    @Override // android.view.SubMenu
    public final MenuItem getItem() {
        return this.A;
    }

    @Override // h.m
    public final String j() {
        o oVar = this.A;
        int i3 = oVar != null ? oVar.f1910a : 0;
        if (i3 == 0) {
            return null;
        }
        return "android:menu:actionviewstates:" + i3;
    }

    @Override // h.m
    public final m k() {
        return this.f1852z.k();
    }

    @Override // h.m
    public final boolean m() {
        return this.f1852z.m();
    }

    @Override // h.m
    public final boolean n() {
        return this.f1852z.n();
    }

    @Override // h.m
    public final boolean o() {
        return this.f1852z.o();
    }

    @Override // h.m, android.view.Menu
    public final void setGroupDividerEnabled(boolean z2) {
        this.f1852z.setGroupDividerEnabled(z2);
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(Drawable drawable) {
        u(0, null, 0, drawable, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(CharSequence charSequence) {
        u(0, charSequence, 0, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderView(View view) {
        u(0, null, 0, null, view);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(Drawable drawable) {
        this.A.setIcon(drawable);
        return this;
    }

    @Override // h.m, android.view.Menu
    public final void setQwertyMode(boolean z2) {
        this.f1852z.setQwertyMode(z2);
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(int i3) {
        u(0, null, i3, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(int i3) {
        u(i3, null, 0, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(int i3) {
        this.A.setIcon(i3);
        return this;
    }
}
