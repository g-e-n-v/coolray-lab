package h;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class o implements x.a {
    public p A;
    public MenuItem.OnActionExpandListener B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1910a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1911c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f1912d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CharSequence f1913e;
    public CharSequence f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Intent f1914g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public char f1915h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public char f1917j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Drawable f1919l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final m f1921n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public f0 f1922o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public MenuItem.OnMenuItemClickListener f1923p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public CharSequence f1924q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public CharSequence f1925r;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f1932y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public View f1933z;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f1916i = 4096;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f1918k = 4096;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f1920m = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public ColorStateList f1926s = null;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public PorterDuff.Mode f1927t = null;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f1928u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f1929v = false;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f1930w = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f1931x = 16;
    public boolean C = false;

    public o(m mVar, int i3, int i4, int i5, int i6, CharSequence charSequence, int i7) {
        this.f1921n = mVar;
        this.f1910a = i4;
        this.b = i3;
        this.f1911c = i5;
        this.f1912d = i6;
        this.f1913e = charSequence;
        this.f1932y = i7;
    }

    public static void c(StringBuilder sb, int i3, int i4, String str) {
        if ((i3 & i4) == i4) {
            sb.append(str);
        }
    }

    @Override // x.a
    public final p a() {
        return this.A;
    }

    @Override // x.a
    public final x.a b(p pVar) {
        this.f1933z = null;
        this.A = pVar;
        this.f1921n.p(true);
        p pVar2 = this.A;
        if (pVar2 != null) {
            pVar2.b = new androidx.emoji2.text.m(16, this);
            pVar2.f1934a.setVisibilityListener(pVar2);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final boolean collapseActionView() {
        if ((this.f1932y & 8) == 0) {
            return false;
        }
        if (this.f1933z == null) {
            return true;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.B;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionCollapse(this)) {
            return this.f1921n.d(this);
        }
        return false;
    }

    public final Drawable d(Drawable drawable) {
        if (drawable != null && this.f1930w && (this.f1928u || this.f1929v)) {
            drawable = drawable.mutate();
            if (this.f1928u) {
                w.b.h(drawable, this.f1926s);
            }
            if (this.f1929v) {
                w.b.i(drawable, this.f1927t);
            }
            this.f1930w = false;
        }
        return drawable;
    }

    public final boolean e() {
        p pVar;
        if ((this.f1932y & 8) == 0) {
            return false;
        }
        if (this.f1933z == null && (pVar = this.A) != null) {
            this.f1933z = pVar.a(this);
        }
        return this.f1933z != null;
    }

    @Override // android.view.MenuItem
    public final boolean expandActionView() {
        if (!e()) {
            return false;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.B;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionExpand(this)) {
            return this.f1921n.f(this);
        }
        return false;
    }

    public final void f(boolean z2) {
        if (z2) {
            this.f1931x |= 32;
        } else {
            this.f1931x &= -33;
        }
    }

    @Override // android.view.MenuItem
    public final ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    @Override // android.view.MenuItem
    public final View getActionView() {
        View view = this.f1933z;
        if (view != null) {
            return view;
        }
        p pVar = this.A;
        if (pVar == null) {
            return null;
        }
        View viewA = pVar.a(this);
        this.f1933z = viewA;
        return viewA;
    }

    @Override // x.a, android.view.MenuItem
    public final int getAlphabeticModifiers() {
        return this.f1918k;
    }

    @Override // android.view.MenuItem
    public final char getAlphabeticShortcut() {
        return this.f1917j;
    }

    @Override // x.a, android.view.MenuItem
    public final CharSequence getContentDescription() {
        return this.f1924q;
    }

    @Override // android.view.MenuItem
    public final int getGroupId() {
        return this.b;
    }

    @Override // android.view.MenuItem
    public final Drawable getIcon() {
        Drawable drawable = this.f1919l;
        if (drawable != null) {
            return d(drawable);
        }
        int i3 = this.f1920m;
        if (i3 == 0) {
            return null;
        }
        Drawable drawableV = a1.b.v(this.f1921n.f1886a, i3);
        this.f1920m = 0;
        this.f1919l = drawableV;
        return d(drawableV);
    }

    @Override // x.a, android.view.MenuItem
    public final ColorStateList getIconTintList() {
        return this.f1926s;
    }

    @Override // x.a, android.view.MenuItem
    public final PorterDuff.Mode getIconTintMode() {
        return this.f1927t;
    }

    @Override // android.view.MenuItem
    public final Intent getIntent() {
        return this.f1914g;
    }

    @Override // android.view.MenuItem
    public final int getItemId() {
        return this.f1910a;
    }

    @Override // android.view.MenuItem
    public final ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // x.a, android.view.MenuItem
    public final int getNumericModifiers() {
        return this.f1916i;
    }

    @Override // android.view.MenuItem
    public final char getNumericShortcut() {
        return this.f1915h;
    }

    @Override // android.view.MenuItem
    public final int getOrder() {
        return this.f1911c;
    }

    @Override // android.view.MenuItem
    public final SubMenu getSubMenu() {
        return this.f1922o;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitle() {
        return this.f1913e;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f;
        return charSequence != null ? charSequence : this.f1913e;
    }

    @Override // x.a, android.view.MenuItem
    public final CharSequence getTooltipText() {
        return this.f1925r;
    }

    @Override // android.view.MenuItem
    public final boolean hasSubMenu() {
        return this.f1922o != null;
    }

    @Override // android.view.MenuItem
    public final boolean isActionViewExpanded() {
        return this.C;
    }

    @Override // android.view.MenuItem
    public final boolean isCheckable() {
        return (this.f1931x & 1) == 1;
    }

    @Override // android.view.MenuItem
    public final boolean isChecked() {
        return (this.f1931x & 2) == 2;
    }

    @Override // android.view.MenuItem
    public final boolean isEnabled() {
        return (this.f1931x & 16) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isVisible() {
        p pVar = this.A;
        if (pVar == null || !pVar.f1934a.overridesItemVisibility()) {
            return (this.f1931x & 8) == 0;
        }
        return (this.f1931x & 8) == 0 && this.A.f1934a.isVisible();
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(View view) {
        int i3;
        this.f1933z = view;
        this.A = null;
        if (view != null && view.getId() == -1 && (i3 = this.f1910a) > 0) {
            view.setId(i3);
        }
        m mVar = this.f1921n;
        mVar.f1894k = true;
        mVar.p(true);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c3) {
        if (this.f1917j == c3) {
            return this;
        }
        this.f1917j = Character.toLowerCase(c3);
        this.f1921n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setCheckable(boolean z2) {
        int i3 = this.f1931x;
        int i4 = (z2 ? 1 : 0) | (i3 & (-2));
        this.f1931x = i4;
        if (i3 != i4) {
            this.f1921n.p(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setChecked(boolean z2) {
        int i3 = this.f1931x;
        int i4 = i3 & 4;
        m mVar = this.f1921n;
        if (i4 == 0) {
            int i5 = (i3 & (-3)) | (z2 ? 2 : 0);
            this.f1931x = i5;
            if (i3 != i5) {
                mVar.p(false);
            }
            return this;
        }
        ArrayList arrayList = mVar.f;
        int size = arrayList.size();
        mVar.w();
        for (int i6 = 0; i6 < size; i6++) {
            o oVar = (o) arrayList.get(i6);
            if (oVar.b == this.b && (oVar.f1931x & 4) != 0 && oVar.isCheckable()) {
                boolean z3 = oVar == this;
                int i7 = oVar.f1931x;
                int i8 = (z3 ? 2 : 0) | (i7 & (-3));
                oVar.f1931x = i8;
                if (i7 != i8) {
                    oVar.f1921n.p(false);
                }
            }
        }
        mVar.v();
        return this;
    }

    @Override // android.view.MenuItem
    public final /* bridge */ /* synthetic */ MenuItem setContentDescription(CharSequence charSequence) {
        setContentDescription(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setEnabled(boolean z2) {
        if (z2) {
            this.f1931x |= 16;
        } else {
            this.f1931x &= -17;
        }
        this.f1921n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(Drawable drawable) {
        this.f1920m = 0;
        this.f1919l = drawable;
        this.f1930w = true;
        this.f1921n.p(false);
        return this;
    }

    @Override // x.a, android.view.MenuItem
    public final MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f1926s = colorStateList;
        this.f1928u = true;
        this.f1930w = true;
        this.f1921n.p(false);
        return this;
    }

    @Override // x.a, android.view.MenuItem
    public final MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f1927t = mode;
        this.f1929v = true;
        this.f1930w = true;
        this.f1921n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIntent(Intent intent) {
        this.f1914g = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c3) {
        if (this.f1915h == c3) {
            return this;
        }
        this.f1915h = c3;
        this.f1921n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.B = onActionExpandListener;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f1923p = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c3, char c4) {
        this.f1915h = c3;
        this.f1917j = Character.toLowerCase(c4);
        this.f1921n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final void setShowAsAction(int i3) {
        int i4 = i3 & 3;
        if (i4 != 0 && i4 != 1 && i4 != 2) {
            throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
        }
        this.f1932y = i3;
        m mVar = this.f1921n;
        mVar.f1894k = true;
        mVar.p(true);
    }

    @Override // android.view.MenuItem
    public final MenuItem setShowAsActionFlags(int i3) {
        setShowAsAction(i3);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(CharSequence charSequence) {
        this.f1913e = charSequence;
        this.f1921n.p(false);
        f0 f0Var = this.f1922o;
        if (f0Var != null) {
            f0Var.setHeaderTitle(charSequence);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f = charSequence;
        this.f1921n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final /* bridge */ /* synthetic */ MenuItem setTooltipText(CharSequence charSequence) {
        setTooltipText(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setVisible(boolean z2) {
        int i3 = this.f1931x;
        int i4 = (z2 ? 0 : 8) | (i3 & (-9));
        this.f1931x = i4;
        if (i3 != i4) {
            m mVar = this.f1921n;
            mVar.f1891h = true;
            mVar.p(true);
        }
        return this;
    }

    public final String toString() {
        CharSequence charSequence = this.f1913e;
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }

    @Override // x.a, android.view.MenuItem
    public final x.a setContentDescription(CharSequence charSequence) {
        this.f1924q = charSequence;
        this.f1921n.p(false);
        return this;
    }

    @Override // x.a, android.view.MenuItem
    public final x.a setTooltipText(CharSequence charSequence) {
        this.f1925r = charSequence;
        this.f1921n.p(false);
        return this;
    }

    @Override // x.a, android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c3, int i3) {
        if (this.f1917j == c3 && this.f1918k == i3) {
            return this;
        }
        this.f1917j = Character.toLowerCase(c3);
        this.f1918k = KeyEvent.normalizeMetaState(i3);
        this.f1921n.p(false);
        return this;
    }

    @Override // x.a, android.view.MenuItem
    public final MenuItem setNumericShortcut(char c3, int i3) {
        if (this.f1915h == c3 && this.f1916i == i3) {
            return this;
        }
        this.f1915h = c3;
        this.f1916i = KeyEvent.normalizeMetaState(i3);
        this.f1921n.p(false);
        return this;
    }

    @Override // x.a, android.view.MenuItem
    public final MenuItem setShortcut(char c3, char c4, int i3, int i4) {
        this.f1915h = c3;
        this.f1916i = KeyEvent.normalizeMetaState(i3);
        this.f1917j = Character.toLowerCase(c4);
        this.f1918k = KeyEvent.normalizeMetaState(i4);
        this.f1921n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(int i3) {
        this.f1919l = null;
        this.f1920m = i3;
        this.f1930w = true;
        this.f1921n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(int i3) {
        setTitle(this.f1921n.f1886a.getString(i3));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(int i3) {
        int i4;
        m mVar = this.f1921n;
        Context context = mVar.f1886a;
        View viewInflate = LayoutInflater.from(context).inflate(i3, (ViewGroup) new LinearLayout(context), false);
        this.f1933z = viewInflate;
        this.A = null;
        if (viewInflate != null && viewInflate.getId() == -1 && (i4 = this.f1910a) > 0) {
            viewInflate.setId(i4);
        }
        mVar.f1894k = true;
        mVar.p(true);
        return this;
    }
}
