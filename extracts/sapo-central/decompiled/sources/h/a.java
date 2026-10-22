package h;

import android.R;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class a implements x.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public CharSequence f1812a;
    public CharSequence b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Intent f1813c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public char f1814d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1815e;
    public char f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f1816g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Drawable f1817h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Context f1818i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public CharSequence f1819j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public CharSequence f1820k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ColorStateList f1821l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public PorterDuff.Mode f1822m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f1823n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f1824o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f1825p;

    @Override // x.a
    public final p a() {
        return null;
    }

    @Override // x.a
    public final x.a b(p pVar) {
        throw new UnsupportedOperationException();
    }

    public final void c() {
        Drawable drawable = this.f1817h;
        if (drawable != null) {
            if (this.f1823n || this.f1824o) {
                this.f1817h = drawable;
                Drawable drawableMutate = drawable.mutate();
                this.f1817h = drawableMutate;
                if (this.f1823n) {
                    w.b.h(drawableMutate, this.f1821l);
                }
                if (this.f1824o) {
                    w.b.i(this.f1817h, this.f1822m);
                }
            }
        }
    }

    @Override // android.view.MenuItem
    public final boolean collapseActionView() {
        return false;
    }

    @Override // android.view.MenuItem
    public final boolean expandActionView() {
        return false;
    }

    @Override // android.view.MenuItem
    public final ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final View getActionView() {
        return null;
    }

    @Override // x.a, android.view.MenuItem
    public final int getAlphabeticModifiers() {
        return this.f1816g;
    }

    @Override // android.view.MenuItem
    public final char getAlphabeticShortcut() {
        return this.f;
    }

    @Override // x.a, android.view.MenuItem
    public final CharSequence getContentDescription() {
        return this.f1819j;
    }

    @Override // android.view.MenuItem
    public final int getGroupId() {
        return 0;
    }

    @Override // android.view.MenuItem
    public final Drawable getIcon() {
        return this.f1817h;
    }

    @Override // x.a, android.view.MenuItem
    public final ColorStateList getIconTintList() {
        return this.f1821l;
    }

    @Override // x.a, android.view.MenuItem
    public final PorterDuff.Mode getIconTintMode() {
        return this.f1822m;
    }

    @Override // android.view.MenuItem
    public final Intent getIntent() {
        return this.f1813c;
    }

    @Override // android.view.MenuItem
    public final int getItemId() {
        return R.id.home;
    }

    @Override // android.view.MenuItem
    public final ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // x.a, android.view.MenuItem
    public final int getNumericModifiers() {
        return this.f1815e;
    }

    @Override // android.view.MenuItem
    public final char getNumericShortcut() {
        return this.f1814d;
    }

    @Override // android.view.MenuItem
    public final int getOrder() {
        return 0;
    }

    @Override // android.view.MenuItem
    public final SubMenu getSubMenu() {
        return null;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitle() {
        return this.f1812a;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitleCondensed() {
        CharSequence charSequence = this.b;
        return charSequence != null ? charSequence : this.f1812a;
    }

    @Override // x.a, android.view.MenuItem
    public final CharSequence getTooltipText() {
        return this.f1820k;
    }

    @Override // android.view.MenuItem
    public final boolean hasSubMenu() {
        return false;
    }

    @Override // android.view.MenuItem
    public final boolean isActionViewExpanded() {
        return false;
    }

    @Override // android.view.MenuItem
    public final boolean isCheckable() {
        return (this.f1825p & 1) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isChecked() {
        return (this.f1825p & 2) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isEnabled() {
        return (this.f1825p & 16) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isVisible() {
        return (this.f1825p & 8) == 0;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(View view) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c3) {
        this.f = Character.toLowerCase(c3);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setCheckable(boolean z2) {
        this.f1825p = (z2 ? 1 : 0) | (this.f1825p & (-2));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setChecked(boolean z2) {
        this.f1825p = (z2 ? 2 : 0) | (this.f1825p & (-3));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setContentDescription(CharSequence charSequence) {
        this.f1819j = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setEnabled(boolean z2) {
        this.f1825p = (z2 ? 16 : 0) | (this.f1825p & (-17));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(Drawable drawable) {
        this.f1817h = drawable;
        c();
        return this;
    }

    @Override // x.a, android.view.MenuItem
    public final MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f1821l = colorStateList;
        this.f1823n = true;
        c();
        return this;
    }

    @Override // x.a, android.view.MenuItem
    public final MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f1822m = mode;
        this.f1824o = true;
        c();
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIntent(Intent intent) {
        this.f1813c = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c3) {
        this.f1814d = c3;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c3, char c4) {
        this.f1814d = c3;
        this.f = Character.toLowerCase(c4);
        return this;
    }

    @Override // android.view.MenuItem
    public final void setShowAsAction(int i3) {
    }

    @Override // android.view.MenuItem
    public final MenuItem setShowAsActionFlags(int i3) {
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(CharSequence charSequence) {
        this.f1812a = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitleCondensed(CharSequence charSequence) {
        this.b = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTooltipText(CharSequence charSequence) {
        this.f1820k = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setVisible(boolean z2) {
        this.f1825p = (this.f1825p & 8) | (z2 ? 0 : 8);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(int i3) {
        throw new UnsupportedOperationException();
    }

    @Override // x.a, android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c3, int i3) {
        this.f = Character.toLowerCase(c3);
        this.f1816g = KeyEvent.normalizeMetaState(i3);
        return this;
    }

    @Override // x.a, android.view.MenuItem
    public final x.a setContentDescription(CharSequence charSequence) {
        this.f1819j = charSequence;
        return this;
    }

    @Override // x.a, android.view.MenuItem
    public final MenuItem setNumericShortcut(char c3, int i3) {
        this.f1814d = c3;
        this.f1815e = KeyEvent.normalizeMetaState(i3);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(int i3) {
        this.f1812a = this.f1818i.getResources().getString(i3);
        return this;
    }

    @Override // x.a, android.view.MenuItem
    public final x.a setTooltipText(CharSequence charSequence) {
        this.f1820k = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(int i3) {
        this.f1817h = androidx.core.content.b.b(this.f1818i, i3);
        c();
        return this;
    }

    @Override // x.a, android.view.MenuItem
    public final MenuItem setShortcut(char c3, char c4, int i3, int i4) {
        this.f1814d = c3;
        this.f1815e = KeyEvent.normalizeMetaState(i3);
        this.f = Character.toLowerCase(c4);
        this.f1816g = KeyEvent.normalizeMetaState(i4);
        return this;
    }
}
