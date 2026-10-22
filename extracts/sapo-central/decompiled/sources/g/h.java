package g;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.util.Log;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import h.o;
import h.p;
import h.t;
import java.lang.reflect.Constructor;

/* JADX INFO: loaded from: classes.dex */
public final class h {
    public CharSequence A;
    public CharSequence B;
    public final /* synthetic */ i E;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Menu f1756a;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f1761h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f1762i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f1763j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public CharSequence f1764k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public CharSequence f1765l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f1766m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public char f1767n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f1768o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public char f1769p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f1770q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f1771r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f1772s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f1773t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f1774u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f1775v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f1776w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f1777x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public String f1778y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public p f1779z;
    public ColorStateList C = null;
    public PorterDuff.Mode D = null;
    public int b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1757c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1758d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1759e = 0;
    public boolean f = true;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f1760g = true;

    public h(i iVar, Menu menu) {
        this.E = iVar;
        this.f1756a = menu;
    }

    public final Object a(String str, Class[] clsArr, Object[] objArr) {
        try {
            Constructor<?> constructor = Class.forName(str, false, this.E.f1782c.getClassLoader()).getConstructor(clsArr);
            constructor.setAccessible(true);
            return constructor.newInstance(objArr);
        } catch (Exception e3) {
            Log.w("SupportMenuInflater", "Cannot instantiate class: " + str, e3);
            return null;
        }
    }

    public final void b(MenuItem menuItem) {
        i iVar = this.E;
        Context context = iVar.f1782c;
        boolean z2 = false;
        menuItem.setChecked(this.f1772s).setVisible(this.f1773t).setEnabled(this.f1774u).setCheckable(this.f1771r >= 1).setTitleCondensed(this.f1765l).setIcon(this.f1766m);
        int i3 = this.f1775v;
        if (i3 >= 0) {
            menuItem.setShowAsAction(i3);
        }
        if (this.f1778y != null) {
            if (context.isRestricted()) {
                throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
            }
            if (iVar.f1783d == null) {
                iVar.f1783d = i.a(context);
            }
            Object obj = iVar.f1783d;
            String str = this.f1778y;
            g gVar = new g();
            gVar.f1755a = obj;
            Class<?> cls = obj.getClass();
            try {
                gVar.b = cls.getMethod(str, g.f1754c);
                menuItem.setOnMenuItemClickListener(gVar);
            } catch (Exception e3) {
                StringBuilder sbL = androidx.activity.result.b.l("Couldn't resolve menu item onClick handler ", str, " in class ");
                sbL.append(cls.getName());
                InflateException inflateException = new InflateException(sbL.toString());
                inflateException.initCause(e3);
                throw inflateException;
            }
        }
        if (this.f1771r >= 2) {
            if (menuItem instanceof o) {
                o oVar = (o) menuItem;
                oVar.f1931x = (oVar.f1931x & (-5)) | 4;
            } else if (menuItem instanceof t) {
                t tVar = (t) menuItem;
                x.a aVar = tVar.f1938c;
                try {
                    if (tVar.f1939d == null) {
                        tVar.f1939d = aVar.getClass().getDeclaredMethod("setExclusiveCheckable", Boolean.TYPE);
                    }
                    tVar.f1939d.invoke(aVar, Boolean.TRUE);
                } catch (Exception e4) {
                    Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", e4);
                }
            }
        }
        String str2 = this.f1777x;
        if (str2 != null) {
            menuItem.setActionView((View) a(str2, i.f1780e, iVar.f1781a));
            z2 = true;
        }
        int i4 = this.f1776w;
        if (i4 > 0) {
            if (z2) {
                Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
            } else {
                menuItem.setActionView(i4);
            }
        }
        p pVar = this.f1779z;
        if (pVar != null) {
            if (menuItem instanceof x.a) {
                ((x.a) menuItem).b(pVar);
            } else {
                Log.w("MenuItemCompat", "setActionProvider: item does not implement SupportMenuItem; ignoring");
            }
        }
        CharSequence charSequence = this.A;
        boolean z3 = menuItem instanceof x.a;
        if (z3) {
            ((x.a) menuItem).setContentDescription(charSequence);
        } else {
            c0.m.h(menuItem, charSequence);
        }
        CharSequence charSequence2 = this.B;
        if (z3) {
            ((x.a) menuItem).setTooltipText(charSequence2);
        } else {
            c0.m.m(menuItem, charSequence2);
        }
        char c3 = this.f1767n;
        int i5 = this.f1768o;
        if (z3) {
            ((x.a) menuItem).setAlphabeticShortcut(c3, i5);
        } else {
            c0.m.g(menuItem, c3, i5);
        }
        char c4 = this.f1769p;
        int i6 = this.f1770q;
        if (z3) {
            ((x.a) menuItem).setNumericShortcut(c4, i6);
        } else {
            c0.m.k(menuItem, c4, i6);
        }
        PorterDuff.Mode mode = this.D;
        if (mode != null) {
            if (z3) {
                ((x.a) menuItem).setIconTintMode(mode);
            } else {
                c0.m.j(menuItem, mode);
            }
        }
        ColorStateList colorStateList = this.C;
        if (colorStateList != null) {
            if (z3) {
                ((x.a) menuItem).setIconTintList(colorStateList);
            } else {
                c0.m.i(menuItem, colorStateList);
            }
        }
    }
}
