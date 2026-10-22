package g;

import android.content.Context;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.emoji2.text.t;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public final class e extends a implements h.k {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Context f1748c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ActionBarContextView f1749d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public androidx.activity.result.c f1750e;
    public WeakReference f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f1751g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public h.m f1752h;

    @Override // h.k
    public final boolean a(h.m mVar, MenuItem menuItem) {
        return ((t) this.f1750e.f100a).c(this, menuItem);
    }

    @Override // g.a
    public final void b() {
        if (this.f1751g) {
            return;
        }
        this.f1751g = true;
        this.f1750e.y(this);
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
        return this.f1752h;
    }

    @Override // g.a
    public final MenuInflater e() {
        return new i(this.f1749d.getContext());
    }

    @Override // h.k
    public final void f(h.m mVar) {
        i();
        i.j jVar = this.f1749d.f139d;
        if (jVar != null) {
            jVar.l();
        }
    }

    @Override // g.a
    public final CharSequence g() {
        return this.f1749d.getSubtitle();
    }

    @Override // g.a
    public final CharSequence h() {
        return this.f1749d.getTitle();
    }

    @Override // g.a
    public final void i() {
        this.f1750e.z(this, this.f1752h);
    }

    @Override // g.a
    public final boolean j() {
        return this.f1749d.f153s;
    }

    @Override // g.a
    public final void k(View view) {
        this.f1749d.setCustomView(view);
        this.f = view != null ? new WeakReference(view) : null;
    }

    @Override // g.a
    public final void l(int i3) {
        m(this.f1748c.getString(i3));
    }

    @Override // g.a
    public final void m(CharSequence charSequence) {
        this.f1749d.setSubtitle(charSequence);
    }

    @Override // g.a
    public final void n(int i3) {
        o(this.f1748c.getString(i3));
    }

    @Override // g.a
    public final void o(CharSequence charSequence) {
        this.f1749d.setTitle(charSequence);
    }

    @Override // g.a
    public final void p(boolean z2) {
        this.b = z2;
        this.f1749d.setTitleOptional(z2);
    }
}
