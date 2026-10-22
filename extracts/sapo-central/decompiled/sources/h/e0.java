package h;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.fragment.app.m0;
import c0.p0;
import com.ex.auto.R;
import i.i2;
import i.q1;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class e0 extends u implements PopupWindow.OnDismissListener, View.OnKeyListener {
    public final Context b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final m f1833c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final j f1834d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f1835e;
    public final int f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f1836g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final i2 f1837h;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public PopupWindow.OnDismissListener f1840k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public View f1841l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public View f1842m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public y f1843n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public ViewTreeObserver f1844o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f1845p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f1846q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f1847r;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f1849t;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final d f1838i = new d(1, this);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final m0 f1839j = new m0(2, this);

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f1848s = 0;

    public e0(Context context, m mVar, View view, int i3, boolean z2) {
        this.b = context;
        this.f1833c = mVar;
        this.f1835e = z2;
        this.f1834d = new j(mVar, LayoutInflater.from(context), z2, R.layout.abc_popup_menu_item_layout);
        this.f1836g = i3;
        Resources resources = context.getResources();
        this.f = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.f1841l = view;
        this.f1837h = new i2(context, null, i3, 0);
        mVar.b(this, context);
    }

    @Override // h.d0
    public final boolean a() {
        return !this.f1845p && this.f1837h.f2012y.isShowing();
    }

    @Override // h.z
    public final void b(m mVar, boolean z2) {
        if (mVar != this.f1833c) {
            return;
        }
        dismiss();
        y yVar = this.f1843n;
        if (yVar != null) {
            yVar.b(mVar, z2);
        }
    }

    @Override // h.z
    public final void c(y yVar) {
        this.f1843n = yVar;
    }

    @Override // h.d0
    public final void d() {
        View view;
        if (a()) {
            return;
        }
        if (this.f1845p || (view = this.f1841l) == null) {
            throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
        this.f1842m = view;
        i2 i2Var = this.f1837h;
        i.b0 b0Var = i2Var.f2012y;
        i.b0 b0Var2 = i2Var.f2012y;
        b0Var.setOnDismissListener(this);
        i2Var.f2003p = this;
        i2Var.f2011x = true;
        b0Var2.setFocusable(true);
        View view2 = this.f1842m;
        boolean z2 = this.f1844o == null;
        ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
        this.f1844o = viewTreeObserver;
        if (z2) {
            viewTreeObserver.addOnGlobalLayoutListener(this.f1838i);
        }
        view2.addOnAttachStateChangeListener(this.f1839j);
        i2Var.f2002o = view2;
        i2Var.f1999l = this.f1848s;
        boolean z3 = this.f1846q;
        Context context = this.b;
        j jVar = this.f1834d;
        if (!z3) {
            this.f1847r = u.m(jVar, context, this.f);
            this.f1846q = true;
        }
        i2Var.r(this.f1847r);
        b0Var2.setInputMethodMode(2);
        Rect rect = this.f1940a;
        i2Var.f2010w = rect != null ? new Rect(rect) : null;
        i2Var.d();
        q1 q1Var = i2Var.f1991c;
        q1Var.setOnKeyListener(this);
        if (this.f1849t) {
            m mVar = this.f1833c;
            if (mVar.f1896m != null) {
                FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(context).inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) q1Var, false);
                TextView textView = (TextView) frameLayout.findViewById(android.R.id.title);
                if (textView != null) {
                    textView.setText(mVar.f1896m);
                }
                frameLayout.setEnabled(false);
                q1Var.addHeaderView(frameLayout, null, false);
            }
        }
        i2Var.p(jVar);
        i2Var.d();
    }

    @Override // h.d0
    public final void dismiss() {
        if (a()) {
            this.f1837h.dismiss();
        }
    }

    @Override // h.z
    public final void e() {
        this.f1846q = false;
        j jVar = this.f1834d;
        if (jVar != null) {
            jVar.notifyDataSetChanged();
        }
    }

    @Override // h.d0
    public final q1 f() {
        return this.f1837h.f1991c;
    }

    @Override // h.z
    public final boolean h() {
        return false;
    }

    @Override // h.z
    public final boolean k(f0 f0Var) {
        boolean z2;
        if (f0Var.hasVisibleItems()) {
            x xVar = new x(this.b, f0Var, this.f1842m, this.f1835e, this.f1836g, 0);
            y yVar = this.f1843n;
            xVar.f1947h = yVar;
            u uVar = xVar.f1948i;
            if (uVar != null) {
                uVar.c(yVar);
            }
            int size = f0Var.f.size();
            int i3 = 0;
            while (true) {
                if (i3 >= size) {
                    z2 = false;
                    break;
                }
                MenuItem item = f0Var.getItem(i3);
                if (item.isVisible() && item.getIcon() != null) {
                    z2 = true;
                    break;
                }
                i3++;
            }
            xVar.f1946g = z2;
            u uVar2 = xVar.f1948i;
            if (uVar2 != null) {
                uVar2.o(z2);
            }
            xVar.f1949j = this.f1840k;
            this.f1840k = null;
            this.f1833c.c(false);
            i2 i2Var = this.f1837h;
            int width = i2Var.f;
            int iM = i2Var.m();
            int i4 = this.f1848s;
            View view = this.f1841l;
            WeakHashMap weakHashMap = p0.f727a;
            if ((Gravity.getAbsoluteGravity(i4, c0.b0.d(view)) & 7) == 5) {
                width += this.f1841l.getWidth();
            }
            if (!xVar.b()) {
                if (xVar.f1945e != null) {
                    xVar.d(width, iM, true, true);
                }
            }
            y yVar2 = this.f1843n;
            if (yVar2 != null) {
                yVar2.g(f0Var);
            }
            return true;
        }
        return false;
    }

    @Override // h.u
    public final void l(m mVar) {
    }

    @Override // h.u
    public final void n(View view) {
        this.f1841l = view;
    }

    @Override // h.u
    public final void o(boolean z2) {
        this.f1834d.f1882c = z2;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        this.f1845p = true;
        this.f1833c.c(true);
        ViewTreeObserver viewTreeObserver = this.f1844o;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.f1844o = this.f1842m.getViewTreeObserver();
            }
            this.f1844o.removeGlobalOnLayoutListener(this.f1838i);
            this.f1844o = null;
        }
        this.f1842m.removeOnAttachStateChangeListener(this.f1839j);
        PopupWindow.OnDismissListener onDismissListener = this.f1840k;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i3, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i3 != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override // h.u
    public final void p(int i3) {
        this.f1848s = i3;
    }

    @Override // h.u
    public final void q(int i3) {
        this.f1837h.f = i3;
    }

    @Override // h.u
    public final void r(PopupWindow.OnDismissListener onDismissListener) {
        this.f1840k = onDismissListener;
    }

    @Override // h.u
    public final void s(boolean z2) {
        this.f1849t = z2;
    }

    @Override // h.u
    public final void t(int i3) {
        this.f1837h.h(i3);
    }
}
