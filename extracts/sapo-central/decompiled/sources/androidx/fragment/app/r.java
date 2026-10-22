package androidx.fragment.app;

import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.ex.auto.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public abstract class r implements ComponentCallbacks, View.OnCreateContextMenuListener, androidx.lifecycle.q, androidx.lifecycle.j0, androidx.lifecycle.h, r0.e {
    public static final Object Q = new Object();
    public boolean A;
    public boolean C;
    public ViewGroup D;
    public View E;
    public boolean F;
    public p H;
    public boolean I;
    public boolean J;
    public androidx.lifecycle.s L;
    public p0 M;
    public r0.d O;
    public final ArrayList P;
    public Bundle b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SparseArray f502c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Bundle f503d;
    public Bundle f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public r f505g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f507i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f509k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f510l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f511m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f512n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f513o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f514p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f515q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public h0 f516r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public u f517s;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public r f519u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f520v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f521w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f522x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f523y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f524z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f501a = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f504e = UUID.randomUUID().toString();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f506h = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Boolean f508j = null;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public h0 f518t = new h0();
    public final boolean B = true;
    public boolean G = true;
    public androidx.lifecycle.l K = androidx.lifecycle.l.f581e;
    public final androidx.lifecycle.w N = new androidx.lifecycle.w();

    public r() {
        new AtomicInteger();
        this.P = new ArrayList();
        this.L = new androidx.lifecycle.s(this);
        this.O = new r0.d(this);
    }

    @Override // r0.e
    public final i.r a() {
        return this.O.b;
    }

    public a1.b c() {
        return new o(this);
    }

    public final p d() {
        if (this.H == null) {
            p pVar = new p();
            Object obj = Q;
            pVar.f493g = obj;
            pVar.f494h = obj;
            pVar.f495i = obj;
            pVar.f496j = 1.0f;
            pVar.f497k = null;
            this.H = pVar;
        }
        return this.H;
    }

    @Override // androidx.lifecycle.j0
    public final androidx.lifecycle.i0 e() {
        if (this.f516r == null) {
            throw new IllegalStateException("Can't access ViewModels from detached fragment");
        }
        if (i() == 1) {
            throw new IllegalStateException("Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported");
        }
        HashMap map = this.f516r.F.f456e;
        androidx.lifecycle.i0 i0Var = (androidx.lifecycle.i0) map.get(this.f504e);
        if (i0Var != null) {
            return i0Var;
        }
        androidx.lifecycle.i0 i0Var2 = new androidx.lifecycle.i0();
        map.put(this.f504e, i0Var2);
        return i0Var2;
    }

    @Override // androidx.lifecycle.q
    public final androidx.lifecycle.s f() {
        return this.L;
    }

    public final h0 g() {
        if (this.f517s != null) {
            return this.f518t;
        }
        throw new IllegalStateException("Fragment " + this + " has not been attached yet.");
    }

    public final Context h() {
        u uVar = this.f517s;
        if (uVar == null) {
            return null;
        }
        return uVar.b;
    }

    public final int i() {
        androidx.lifecycle.l lVar = this.K;
        return (lVar == androidx.lifecycle.l.b || this.f519u == null) ? lVar.ordinal() : Math.min(lVar.ordinal(), this.f519u.i());
    }

    public final h0 j() {
        h0 h0Var = this.f516r;
        if (h0Var != null) {
            return h0Var;
        }
        throw new IllegalStateException("Fragment " + this + " not associated with a fragment manager.");
    }

    public final void k(int i3, int i4, Intent intent) {
        if (h0.D(2)) {
            Log.v("FragmentManager", "Fragment " + this + " received the following in onActivityResult(): requestCode: " + i3 + " resultCode: " + i4 + " data: " + intent);
        }
    }

    public void l(Context context) {
        this.C = true;
        u uVar = this.f517s;
        if ((uVar == null ? null : uVar.f535a) != null) {
            this.C = true;
        }
    }

    public void m(Bundle bundle) {
        Parcelable parcelable;
        this.C = true;
        if (bundle != null && (parcelable = bundle.getParcelable("android:support:fragments")) != null) {
            this.f518t.N(parcelable);
            h0 h0Var = this.f518t;
            h0Var.f442y = false;
            h0Var.f443z = false;
            h0Var.F.f458h = false;
            h0Var.s(1);
        }
        h0 h0Var2 = this.f518t;
        if (h0Var2.f430m >= 1) {
            return;
        }
        h0Var2.f442y = false;
        h0Var2.f443z = false;
        h0Var2.F.f458h = false;
        h0Var2.s(1);
    }

    public View n(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return null;
    }

    public void o() {
        this.C = true;
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        this.C = true;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public final void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        u uVar = this.f517s;
        e.j jVar = uVar == null ? null : uVar.f535a;
        if (jVar != null) {
            jVar.onCreateContextMenu(contextMenu, view, contextMenuInfo);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to an activity.");
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
        this.C = true;
    }

    public void p() {
        this.C = true;
    }

    public LayoutInflater q(Bundle bundle) {
        u uVar = this.f517s;
        if (uVar == null) {
            throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
        }
        e.j jVar = uVar.f538e;
        LayoutInflater layoutInflaterCloneInContext = jVar.getLayoutInflater().cloneInContext(jVar);
        layoutInflaterCloneInContext.setFactory2(this.f518t.f);
        return layoutInflaterCloneInContext;
    }

    public abstract void r(Bundle bundle);

    public void s() {
        this.C = true;
    }

    public void t() {
        this.C = true;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append(getClass().getSimpleName());
        sb.append("{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} (");
        sb.append(this.f504e);
        if (this.f520v != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.f520v));
        }
        if (this.f522x != null) {
            sb.append(" tag=");
            sb.append(this.f522x);
        }
        sb.append(")");
        return sb.toString();
    }

    public void u(Bundle bundle) {
        this.C = true;
    }

    public void v(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f518t.I();
        this.f514p = true;
        this.M = new p0(e());
        View viewN = n(layoutInflater, viewGroup);
        this.E = viewN;
        if (viewN == null) {
            if (this.M.b != null) {
                throw new IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
            }
            this.M = null;
            return;
        }
        this.M.d();
        this.E.setTag(R.id.view_tree_lifecycle_owner, this.M);
        this.E.setTag(R.id.view_tree_view_model_store_owner, this.M);
        View view = this.E;
        p0 p0Var = this.M;
        i2.g.e(view, "<this>");
        view.setTag(R.id.view_tree_saved_state_registry_owner, p0Var);
        this.N.e(this.M);
    }

    public final Context w() {
        Context contextH = h();
        if (contextH != null) {
            return contextH;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to a context.");
    }

    public final View x() {
        View view = this.E;
        if (view != null) {
            return view;
        }
        throw new IllegalStateException("Fragment " + this + " did not return a View from onCreateView() or this was called before onCreateView().");
    }

    public final void y(int i3, int i4, int i5, int i6) {
        if (this.H == null && i3 == 0 && i4 == 0 && i5 == 0 && i6 == 0) {
            return;
        }
        d().b = i3;
        d().f490c = i4;
        d().f491d = i5;
        d().f492e = i6;
    }

    public final void z(Bundle bundle) {
        h0 h0Var = this.f516r;
        if (h0Var != null && (h0Var.f442y || h0Var.f443z)) {
            throw new IllegalStateException("Fragment already added and state has been saved");
        }
        this.f = bundle;
    }
}
