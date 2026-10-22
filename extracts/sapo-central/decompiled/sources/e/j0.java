package e;

import android.content.Context;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public final class j0 extends g.a implements h.k {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f1619c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final h.m f1620d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public androidx.activity.result.c f1621e;
    public WeakReference f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ k0 f1622g;

    public j0(k0 k0Var, Context context, androidx.activity.result.c cVar) {
        this.f1622g = k0Var;
        this.f1619c = context;
        this.f1621e = cVar;
        h.m mVar = new h.m(context);
        mVar.f1895l = 1;
        this.f1620d = mVar;
        mVar.f1889e = this;
    }

    @Override // h.k
    public final boolean a(h.m mVar, MenuItem menuItem) {
        androidx.activity.result.c cVar = this.f1621e;
        if (cVar != null) {
            return ((androidx.emoji2.text.t) cVar.f100a).c(this, menuItem);
        }
        return false;
    }

    @Override // g.a
    public final void b() {
        k0 k0Var = this.f1622g;
        if (k0Var.f1631i != this) {
            return;
        }
        if (k0Var.f1638p) {
            k0Var.f1632j = this;
            k0Var.f1633k = this.f1621e;
        } else {
            this.f1621e.y(this);
        }
        this.f1621e = null;
        k0Var.e0(false);
        ActionBarContextView actionBarContextView = k0Var.f;
        if (actionBarContextView.f145k == null) {
            actionBarContextView.e();
        }
        k0Var.f1626c.setHideOnContentScrollEnabled(k0Var.f1643u);
        k0Var.f1631i = null;
    }

    @Override // g.a
    public final View c() {
        WeakReference weakReference = this.f;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    @Override // g.a
    public final h.m d() {
        return this.f1620d;
    }

    @Override // g.a
    public final MenuInflater e() {
        return new g.i(this.f1619c);
    }

    @Override // h.k
    public final void f(h.m mVar) {
        if (this.f1621e == null) {
            return;
        }
        i();
        i.j jVar = this.f1622g.f.f139d;
        if (jVar != null) {
            jVar.l();
        }
    }

    @Override // g.a
    public final CharSequence g() {
        return this.f1622g.f.getSubtitle();
    }

    @Override // g.a
    public final CharSequence h() {
        return this.f1622g.f.getTitle();
    }

    @Override // g.a
    public final void i() {
        if (this.f1622g.f1631i != this) {
            return;
        }
        h.m mVar = this.f1620d;
        mVar.w();
        try {
            this.f1621e.z(this, mVar);
        } finally {
            mVar.v();
        }
    }

    @Override // g.a
    public final boolean j() {
        return this.f1622g.f.f153s;
    }

    @Override // g.a
    public final void k(View view) {
        this.f1622g.f.setCustomView(view);
        this.f = new WeakReference(view);
    }

    @Override // g.a
    public final void l(int i3) {
        m(this.f1622g.f1625a.getResources().getString(i3));
    }

    @Override // g.a
    public final void m(CharSequence charSequence) {
        this.f1622g.f.setSubtitle(charSequence);
    }

    @Override // g.a
    public final void n(int i3) {
        o(this.f1622g.f1625a.getResources().getString(i3));
    }

    @Override // g.a
    public final void o(CharSequence charSequence) {
        this.f1622g.f.setTitle(charSequence);
    }

    @Override // g.a
    public final void p(boolean z2) {
        this.b = z2;
        this.f1622g.f.setTitleOptional(z2);
    }
}
