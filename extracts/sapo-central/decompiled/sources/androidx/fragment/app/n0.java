package androidx.fragment.app;

import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.R;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.UUID;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class n0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.activity.result.c f478a;
    public final f b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final r f479c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f480d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f481e = -1;

    public n0(androidx.activity.result.c cVar, f fVar, r rVar) {
        this.f478a = cVar;
        this.b = fVar;
        this.f479c = rVar;
    }

    public final void a() {
        boolean zD = h0.D(3);
        r rVar = this.f479c;
        if (zD) {
            Log.d("FragmentManager", "moveto ACTIVITY_CREATED: " + rVar);
        }
        Bundle bundle = rVar.b;
        rVar.f518t.I();
        rVar.f501a = 3;
        rVar.C = true;
        if (h0.D(3)) {
            Log.d("FragmentManager", "moveto RESTORE_VIEW_STATE: " + rVar);
        }
        View view = rVar.E;
        if (view != null) {
            Bundle bundle2 = rVar.b;
            SparseArray<Parcelable> sparseArray = rVar.f502c;
            if (sparseArray != null) {
                view.restoreHierarchyState(sparseArray);
                rVar.f502c = null;
            }
            if (rVar.E != null) {
                rVar.M.f499c.b(rVar.f503d);
                rVar.f503d = null;
            }
            rVar.C = false;
            rVar.u(bundle2);
            if (!rVar.C) {
                throw new t0("Fragment " + rVar + " did not call through to super.onViewStateRestored()");
            }
            if (rVar.E != null) {
                rVar.M.c(androidx.lifecycle.k.ON_CREATE);
            }
        }
        rVar.b = null;
        h0 h0Var = rVar.f518t;
        h0Var.f442y = false;
        h0Var.f443z = false;
        h0Var.F.f458h = false;
        h0Var.s(4);
        this.f478a.c(false);
    }

    public final void b() {
        View view;
        View view2;
        ArrayList arrayList = (ArrayList) this.b.b;
        r rVar = this.f479c;
        ViewGroup viewGroup = rVar.D;
        int iIndexOfChild = -1;
        if (viewGroup != null) {
            int iIndexOf = arrayList.indexOf(rVar);
            for (int i3 = iIndexOf - 1; i3 >= 0; i3--) {
                r rVar2 = (r) arrayList.get(i3);
                if (rVar2.D == viewGroup && (view2 = rVar2.E) != null) {
                    iIndexOfChild = viewGroup.indexOfChild(view2) + 1;
                }
            }
            while (true) {
                iIndexOf++;
                if (iIndexOf >= arrayList.size()) {
                    break;
                }
                r rVar3 = (r) arrayList.get(iIndexOf);
                if (rVar3.D == viewGroup && (view = rVar3.E) != null) {
                    iIndexOfChild = viewGroup.indexOfChild(view);
                    break;
                }
            }
        }
        rVar.D.addView(rVar.E, iIndexOfChild);
    }

    public final void c() {
        boolean zD = h0.D(3);
        r rVar = this.f479c;
        if (zD) {
            Log.d("FragmentManager", "moveto ATTACHED: " + rVar);
        }
        r rVar2 = rVar.f505g;
        f fVar = this.b;
        n0 n0Var = null;
        if (rVar2 != null) {
            n0 n0Var2 = (n0) ((HashMap) fVar.f413c).get(rVar2.f504e);
            if (n0Var2 == null) {
                throw new IllegalStateException("Fragment " + rVar + " declared target fragment " + rVar.f505g + " that does not belong to this FragmentManager!");
            }
            rVar.f506h = rVar.f505g.f504e;
            rVar.f505g = null;
            n0Var = n0Var2;
        } else {
            String str = rVar.f506h;
            if (str != null && (n0Var = (n0) ((HashMap) fVar.f413c).get(str)) == null) {
                throw new IllegalStateException("Fragment " + rVar + " declared target fragment " + rVar.f506h + " that does not belong to this FragmentManager!");
            }
        }
        if (n0Var != null) {
            n0Var.k();
        }
        h0 h0Var = rVar.f516r;
        rVar.f517s = h0Var.f431n;
        rVar.f519u = h0Var.f433p;
        androidx.activity.result.c cVar = this.f478a;
        cVar.i(false);
        ArrayList arrayList = rVar.P;
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            it.next().getClass();
            throw new ClassCastException();
        }
        arrayList.clear();
        rVar.f518t.b(rVar.f517s, rVar.c(), rVar);
        rVar.f501a = 0;
        rVar.C = false;
        rVar.l(rVar.f517s.b);
        if (!rVar.C) {
            throw new t0("Fragment " + rVar + " did not call through to super.onAttach()");
        }
        Iterator it2 = rVar.f516r.f429l.iterator();
        while (it2.hasNext()) {
            ((k0) it2.next()).d();
        }
        h0 h0Var2 = rVar.f518t;
        h0Var2.f442y = false;
        h0Var2.f443z = false;
        h0Var2.F.f458h = false;
        h0Var2.s(0);
        cVar.d(false);
    }

    public final int d() {
        s0 s0Var;
        r rVar = this.f479c;
        if (rVar.f516r == null) {
            return rVar.f501a;
        }
        int iMin = this.f481e;
        int iOrdinal = rVar.K.ordinal();
        int i3 = 0;
        if (iOrdinal == 1) {
            iMin = Math.min(iMin, 0);
        } else if (iOrdinal == 2) {
            iMin = Math.min(iMin, 1);
        } else if (iOrdinal == 3) {
            iMin = Math.min(iMin, 5);
        } else if (iOrdinal != 4) {
            iMin = Math.min(iMin, -1);
        }
        if (rVar.f511m) {
            if (rVar.f512n) {
                iMin = Math.max(this.f481e, 2);
                View view = rVar.E;
                if (view != null && view.getParent() == null) {
                    iMin = Math.min(iMin, 2);
                }
            } else {
                iMin = this.f481e < 4 ? Math.min(iMin, rVar.f501a) : Math.min(iMin, 1);
            }
        }
        if (!rVar.f509k) {
            iMin = Math.min(iMin, 1);
        }
        ViewGroup viewGroup = rVar.D;
        if (viewGroup != null) {
            j jVarF = j.f(viewGroup, rVar.j().B());
            s0 s0VarD = jVarF.d(rVar);
            int i4 = s0VarD != null ? s0VarD.b : 0;
            ArrayList arrayList = jVarF.f451c;
            int size = arrayList.size();
            while (true) {
                if (i3 >= size) {
                    s0Var = null;
                    break;
                }
                Object obj = arrayList.get(i3);
                i3++;
                s0Var = (s0) obj;
                if (s0Var.f529c.equals(rVar) && !s0Var.f) {
                    break;
                }
            }
            i3 = (s0Var == null || !(i4 == 0 || i4 == 1)) ? i4 : s0Var.b;
        }
        if (i3 == 2) {
            iMin = Math.min(iMin, 6);
        } else if (i3 == 3) {
            iMin = Math.max(iMin, 3);
        } else if (rVar.f510l) {
            iMin = rVar.f515q > 0 ? Math.min(iMin, 1) : Math.min(iMin, -1);
        }
        if (rVar.F && rVar.f501a < 5) {
            iMin = Math.min(iMin, 4);
        }
        if (h0.D(2)) {
            Log.v("FragmentManager", "computeExpectedState() of " + iMin + " for " + rVar);
        }
        return iMin;
    }

    public final void e() {
        Parcelable parcelable;
        boolean zD = h0.D(3);
        final r rVar = this.f479c;
        if (zD) {
            Log.d("FragmentManager", "moveto CREATED: " + rVar);
        }
        if (rVar.J) {
            Bundle bundle = rVar.b;
            if (bundle != null && (parcelable = bundle.getParcelable("android:support:fragments")) != null) {
                rVar.f518t.N(parcelable);
                h0 h0Var = rVar.f518t;
                h0Var.f442y = false;
                h0Var.f443z = false;
                h0Var.F.f458h = false;
                h0Var.s(1);
            }
            rVar.f501a = 1;
            return;
        }
        androidx.activity.result.c cVar = this.f478a;
        cVar.j(false);
        Bundle bundle2 = rVar.b;
        rVar.f518t.I();
        rVar.f501a = 1;
        rVar.C = false;
        rVar.L.a(new androidx.lifecycle.o() { // from class: androidx.fragment.app.Fragment$5
            @Override // androidx.lifecycle.o
            public final void a(androidx.lifecycle.q qVar, androidx.lifecycle.k kVar) {
                View view;
                if (kVar != androidx.lifecycle.k.ON_STOP || (view = rVar.E) == null) {
                    return;
                }
                view.cancelPendingInputEvents();
            }
        });
        rVar.O.b(bundle2);
        rVar.m(bundle2);
        rVar.J = true;
        if (rVar.C) {
            rVar.L.d(androidx.lifecycle.k.ON_CREATE);
            cVar.e(false);
        } else {
            throw new t0("Fragment " + rVar + " did not call through to super.onCreate()");
        }
    }

    public final void f() {
        String resourceName;
        r rVar = this.f479c;
        if (rVar.f511m) {
            return;
        }
        if (h0.D(3)) {
            Log.d("FragmentManager", "moveto CREATE_VIEW: " + rVar);
        }
        LayoutInflater layoutInflaterQ = rVar.q(rVar.b);
        ViewGroup viewGroup = rVar.D;
        if (viewGroup == null) {
            int i3 = rVar.f521w;
            if (i3 == 0) {
                viewGroup = null;
            } else {
                if (i3 == -1) {
                    throw new IllegalArgumentException("Cannot create fragment " + rVar + " for a container view with no id");
                }
                viewGroup = (ViewGroup) rVar.f516r.f432o.L(i3);
                if (viewGroup == null && !rVar.f513o) {
                    try {
                        resourceName = rVar.w().getResources().getResourceName(rVar.f521w);
                    } catch (Resources.NotFoundException unused) {
                        resourceName = "unknown";
                    }
                    throw new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(rVar.f521w) + " (" + resourceName + ") for fragment " + rVar);
                }
            }
        }
        rVar.D = viewGroup;
        rVar.v(layoutInflaterQ, viewGroup, rVar.b);
        View view = rVar.E;
        if (view != null) {
            int i4 = 0;
            view.setSaveFromParentEnabled(false);
            rVar.E.setTag(R.id.fragment_container_view_tag, rVar);
            if (viewGroup != null) {
                b();
            }
            if (rVar.f523y) {
                rVar.E.setVisibility(8);
            }
            View view2 = rVar.E;
            WeakHashMap weakHashMap = c0.p0.f727a;
            if (c0.c0.b(view2)) {
                c0.d0.c(rVar.E);
            } else {
                View view3 = rVar.E;
                view3.addOnAttachStateChangeListener(new m0(i4, view3));
            }
            rVar.f518t.s(2);
            this.f478a.o(false);
            int visibility = rVar.E.getVisibility();
            rVar.d().f496j = rVar.E.getAlpha();
            if (rVar.D != null && visibility == 0) {
                View viewFindFocus = rVar.E.findFocus();
                if (viewFindFocus != null) {
                    rVar.d().f497k = viewFindFocus;
                    if (h0.D(2)) {
                        Log.v("FragmentManager", "requestFocus: Saved focused view " + viewFindFocus + " for Fragment " + rVar);
                    }
                }
                rVar.E.setAlpha(0.0f);
            }
        }
        rVar.f501a = 2;
    }

    public final void g() {
        boolean z2;
        r rVarE;
        boolean zD = h0.D(3);
        r rVar = this.f479c;
        if (zD) {
            Log.d("FragmentManager", "movefrom CREATED: " + rVar);
        }
        int i3 = 0;
        boolean z3 = rVar.f510l && rVar.f515q <= 0;
        f fVar = this.b;
        if (!z3) {
            j0 j0Var = (j0) fVar.f414d;
            if (!((j0Var.f454c.containsKey(rVar.f504e) && j0Var.f) ? j0Var.f457g : true)) {
                String str = rVar.f506h;
                if (str != null && (rVarE = fVar.e(str)) != null && rVarE.A) {
                    rVar.f505g = rVarE;
                }
                rVar.f501a = 0;
                return;
            }
        }
        u uVar = rVar.f517s;
        if (uVar != null) {
            z2 = ((j0) fVar.f414d).f457g;
        } else {
            e.j jVar = uVar.b;
            z2 = jVar != null ? !jVar.isChangingConfigurations() : true;
        }
        if (z3 || z2) {
            j0 j0Var2 = (j0) fVar.f414d;
            HashMap map = j0Var2.f456e;
            HashMap map2 = j0Var2.f455d;
            if (h0.D(3)) {
                Log.d("FragmentManager", "Clearing non-config state for " + rVar);
            }
            j0 j0Var3 = (j0) map2.get(rVar.f504e);
            if (j0Var3 != null) {
                j0Var3.a();
                map2.remove(rVar.f504e);
            }
            androidx.lifecycle.i0 i0Var = (androidx.lifecycle.i0) map.get(rVar.f504e);
            if (i0Var != null) {
                i0Var.a();
                map.remove(rVar.f504e);
            }
        }
        rVar.f518t.k();
        rVar.L.d(androidx.lifecycle.k.ON_DESTROY);
        rVar.f501a = 0;
        rVar.J = false;
        rVar.C = true;
        this.f478a.f(false);
        ArrayList arrayListG = fVar.g();
        int size = arrayListG.size();
        while (i3 < size) {
            Object obj = arrayListG.get(i3);
            i3++;
            n0 n0Var = (n0) obj;
            if (n0Var != null) {
                r rVar2 = n0Var.f479c;
                if (rVar.f504e.equals(rVar2.f506h)) {
                    rVar2.f505g = rVar;
                    rVar2.f506h = null;
                }
            }
        }
        String str2 = rVar.f506h;
        if (str2 != null) {
            rVar.f505g = fVar.e(str2);
        }
        fVar.t(this);
    }

    public final void h() {
        o0.a aVar;
        View view;
        boolean zD = h0.D(3);
        r rVar = this.f479c;
        if (zD) {
            Log.d("FragmentManager", "movefrom CREATE_VIEW: " + rVar);
        }
        ViewGroup viewGroup = rVar.D;
        if (viewGroup != null && (view = rVar.E) != null) {
            viewGroup.removeView(view);
        }
        rVar.f518t.s(1);
        if (rVar.E != null) {
            p0 p0Var = rVar.M;
            p0Var.d();
            if (p0Var.b.b.a(androidx.lifecycle.l.f579c)) {
                rVar.M.c(androidx.lifecycle.k.ON_DESTROY);
            }
        }
        rVar.f501a = 1;
        rVar.C = false;
        rVar.o();
        if (!rVar.C) {
            throw new t0("Fragment " + rVar + " did not call through to super.onDestroyView()");
        }
        androidx.lifecycle.i0 i0VarE = rVar.e();
        i2.g.e(i0VarE, "store");
        HashMap map = i0VarE.f576a;
        n0.a aVar2 = n0.a.b;
        i2.g.e(aVar2, "defaultCreationExtras");
        String canonicalName = o0.a.class.getCanonicalName();
        if (canonicalName == null) {
            throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
        }
        String strConcat = "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(canonicalName);
        i2.g.e(strConcat, "key");
        androidx.lifecycle.g0 g0Var = (androidx.lifecycle.g0) map.get(strConcat);
        if (!o0.a.class.isInstance(g0Var)) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.putAll(aVar2.f2481a);
            linkedHashMap.put(androidx.lifecycle.h0.b, strConcat);
            try {
                aVar = new o0.a();
            } catch (AbstractMethodError unused) {
                aVar = new o0.a();
            }
            g0Var = aVar;
            androidx.lifecycle.g0 g0Var2 = (androidx.lifecycle.g0) map.put(strConcat, g0Var);
            if (g0Var2 != null) {
                g0Var2.a();
            }
        } else if (g0Var == null) {
            throw new NullPointerException("null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get");
        }
        l.l lVar = ((o0.a) g0Var).f2619c;
        if (lVar.f2421c > 0) {
            lVar.b[0].getClass();
            throw new ClassCastException();
        }
        rVar.f514p = false;
        this.f478a.p(false);
        rVar.D = null;
        rVar.E = null;
        rVar.M = null;
        rVar.N.e(null);
        rVar.f512n = false;
    }

    public final void i() {
        boolean zD = h0.D(3);
        r rVar = this.f479c;
        if (zD) {
            Log.d("FragmentManager", "movefrom ATTACHED: " + rVar);
        }
        rVar.f501a = -1;
        rVar.C = false;
        rVar.p();
        if (!rVar.C) {
            throw new t0("Fragment " + rVar + " did not call through to super.onDetach()");
        }
        h0 h0Var = rVar.f518t;
        if (!h0Var.A) {
            h0Var.k();
            rVar.f518t = new h0();
        }
        this.f478a.g(false);
        rVar.f501a = -1;
        rVar.f517s = null;
        rVar.f519u = null;
        rVar.f516r = null;
        if (!rVar.f510l || rVar.f515q > 0) {
            j0 j0Var = (j0) this.b.f414d;
            if (!((j0Var.f454c.containsKey(rVar.f504e) && j0Var.f) ? j0Var.f457g : true)) {
                return;
            }
        }
        if (h0.D(3)) {
            Log.d("FragmentManager", "initState called for fragment: " + rVar);
        }
        rVar.L = new androidx.lifecycle.s(rVar);
        rVar.O = new r0.d(rVar);
        rVar.f504e = UUID.randomUUID().toString();
        rVar.f509k = false;
        rVar.f510l = false;
        rVar.f511m = false;
        rVar.f512n = false;
        rVar.f513o = false;
        rVar.f515q = 0;
        rVar.f516r = null;
        rVar.f518t = new h0();
        rVar.f517s = null;
        rVar.f520v = 0;
        rVar.f521w = 0;
        rVar.f522x = null;
        rVar.f523y = false;
        rVar.f524z = false;
    }

    public final void j() {
        r rVar = this.f479c;
        if (rVar.f511m && rVar.f512n && !rVar.f514p) {
            if (h0.D(3)) {
                Log.d("FragmentManager", "moveto CREATE_VIEW: " + rVar);
            }
            rVar.v(rVar.q(rVar.b), null, rVar.b);
            View view = rVar.E;
            if (view != null) {
                view.setSaveFromParentEnabled(false);
                rVar.E.setTag(R.id.fragment_container_view_tag, rVar);
                if (rVar.f523y) {
                    rVar.E.setVisibility(8);
                }
                rVar.f518t.s(2);
                this.f478a.o(false);
                rVar.f501a = 2;
            }
        }
    }

    public final void k() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        ViewGroup viewGroup3;
        boolean z2 = this.f480d;
        r rVar = this.f479c;
        if (z2) {
            if (h0.D(2)) {
                Log.v("FragmentManager", "Ignoring re-entrant call to moveToExpectedState() for " + rVar);
                return;
            }
            return;
        }
        try {
            this.f480d = true;
            while (true) {
                int iD = d();
                int i3 = rVar.f501a;
                if (iD == i3) {
                    if (rVar.I) {
                        if (rVar.E != null && (viewGroup = rVar.D) != null) {
                            j jVarF = j.f(viewGroup, rVar.j().B());
                            if (rVar.f523y) {
                                if (h0.D(2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing hide operation for fragment " + rVar);
                                }
                                jVarF.a(3, 1, this);
                            } else {
                                if (h0.D(2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing show operation for fragment " + rVar);
                                }
                                jVarF.a(2, 1, this);
                            }
                        }
                        h0 h0Var = rVar.f516r;
                        if (h0Var != null && rVar.f509k && h0.E(rVar)) {
                            h0Var.f441x = true;
                        }
                        rVar.I = false;
                    }
                    return;
                }
                if (iD <= i3) {
                    switch (i3 - 1) {
                        case -1:
                            i();
                            break;
                        case 0:
                            g();
                            break;
                        case 1:
                            h();
                            rVar.f501a = 1;
                            break;
                        case 2:
                            rVar.f512n = false;
                            rVar.f501a = 2;
                            break;
                        case 3:
                            if (h0.D(3)) {
                                Log.d("FragmentManager", "movefrom ACTIVITY_CREATED: " + rVar);
                            }
                            if (rVar.E != null && rVar.f502c == null) {
                                o();
                            }
                            if (rVar.E != null && (viewGroup3 = rVar.D) != null) {
                                j jVarF2 = j.f(viewGroup3, rVar.j().B());
                                if (h0.D(2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing remove operation for fragment " + rVar);
                                }
                                jVarF2.a(1, 3, this);
                            }
                            rVar.f501a = 3;
                            break;
                        case 4:
                            q();
                            break;
                        case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                            rVar.f501a = 5;
                            break;
                        case MusicClient.TYPE_GESTURE /* 6 */:
                            l();
                            break;
                    }
                } else {
                    switch (i3 + 1) {
                        case 0:
                            c();
                            break;
                        case 1:
                            e();
                            break;
                        case 2:
                            j();
                            f();
                            break;
                        case 3:
                            a();
                            break;
                        case 4:
                            if (rVar.E != null && (viewGroup2 = rVar.D) != null) {
                                j jVarF3 = j.f(viewGroup2, rVar.j().B());
                                int iB = androidx.activity.result.b.b(rVar.E.getVisibility());
                                if (h0.D(2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing add operation for fragment " + rVar);
                                }
                                jVarF3.a(iB, 2, this);
                            }
                            rVar.f501a = 4;
                            break;
                        case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                            p();
                            break;
                        case MusicClient.TYPE_GESTURE /* 6 */:
                            rVar.f501a = 6;
                            break;
                        case PlaybackState.STATE_ERROR /* 7 */:
                            n();
                            break;
                    }
                }
            }
        } finally {
            this.f480d = false;
        }
    }

    public final void l() {
        boolean zD = h0.D(3);
        r rVar = this.f479c;
        if (zD) {
            Log.d("FragmentManager", "movefrom RESUMED: " + rVar);
        }
        rVar.f518t.s(5);
        if (rVar.E != null) {
            rVar.M.c(androidx.lifecycle.k.ON_PAUSE);
        }
        rVar.L.d(androidx.lifecycle.k.ON_PAUSE);
        rVar.f501a = 6;
        rVar.C = true;
        this.f478a.h(false);
    }

    public final void m(ClassLoader classLoader) {
        r rVar = this.f479c;
        Bundle bundle = rVar.b;
        if (bundle == null) {
            return;
        }
        bundle.setClassLoader(classLoader);
        rVar.f502c = rVar.b.getSparseParcelableArray("android:view_state");
        rVar.f503d = rVar.b.getBundle("android:view_registry_state");
        String string = rVar.b.getString("android:target_state");
        rVar.f506h = string;
        if (string != null) {
            rVar.f507i = rVar.b.getInt("android:target_req_state", 0);
        }
        boolean z2 = rVar.b.getBoolean("android:user_visible_hint", true);
        rVar.G = z2;
        if (z2) {
            return;
        }
        rVar.F = true;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0041  */
    /* JADX WARN: Code duplicated, block: B:21:0x0052  */
    /* JADX WARN: Code duplicated, block: B:22:0x0055  */
    public final void n() {
        boolean zRequestFocus;
        String str;
        boolean zD = h0.D(3);
        r rVar = this.f479c;
        if (zD) {
            Log.d("FragmentManager", "moveto RESUMED: " + rVar);
        }
        p pVar = rVar.H;
        View view = pVar == null ? null : pVar.f497k;
        if (view != null) {
            if (view == rVar.E) {
                zRequestFocus = view.requestFocus();
                if (h0.D(2)) {
                    StringBuilder sb = new StringBuilder("requestFocus: Restoring focused view ");
                    sb.append(view);
                    sb.append(" ");
                    if (zRequestFocus) {
                        str = "succeeded";
                    } else {
                        str = "failed";
                    }
                    sb.append(str);
                    sb.append(" on Fragment ");
                    sb.append(rVar);
                    sb.append(" resulting in focused view ");
                    sb.append(rVar.E.findFocus());
                    Log.v("FragmentManager", sb.toString());
                }
            } else {
                ViewParent parent = view.getParent();
                while (true) {
                    if (parent != null) {
                        if (parent == rVar.E) {
                            zRequestFocus = view.requestFocus();
                            if (h0.D(2)) {
                                StringBuilder sb2 = new StringBuilder("requestFocus: Restoring focused view ");
                                sb2.append(view);
                                sb2.append(" ");
                                if (zRequestFocus) {
                                    str = "succeeded";
                                } else {
                                    str = "failed";
                                }
                                sb2.append(str);
                                sb2.append(" on Fragment ");
                                sb2.append(rVar);
                                sb2.append(" resulting in focused view ");
                                sb2.append(rVar.E.findFocus());
                                Log.v("FragmentManager", sb2.toString());
                            }
                        } else {
                            parent = parent.getParent();
                        }
                    }
                }
            }
        }
        rVar.d().f497k = null;
        rVar.f518t.I();
        rVar.f518t.w(true);
        rVar.f501a = 7;
        rVar.C = true;
        androidx.lifecycle.s sVar = rVar.L;
        androidx.lifecycle.k kVar = androidx.lifecycle.k.ON_RESUME;
        sVar.d(kVar);
        if (rVar.E != null) {
            rVar.M.c(kVar);
        }
        h0 h0Var = rVar.f518t;
        h0Var.f442y = false;
        h0Var.f443z = false;
        h0Var.F.f458h = false;
        h0Var.s(7);
        this.f478a.k(false);
        rVar.b = null;
        rVar.f502c = null;
        rVar.f503d = null;
    }

    public final void o() {
        r rVar = this.f479c;
        if (rVar.E == null) {
            return;
        }
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        rVar.E.saveHierarchyState(sparseArray);
        if (sparseArray.size() > 0) {
            rVar.f502c = sparseArray;
        }
        Bundle bundle = new Bundle();
        rVar.M.f499c.c(bundle);
        if (bundle.isEmpty()) {
            return;
        }
        rVar.f503d = bundle;
    }

    public final void p() {
        boolean zD = h0.D(3);
        r rVar = this.f479c;
        if (zD) {
            Log.d("FragmentManager", "moveto STARTED: " + rVar);
        }
        rVar.f518t.I();
        rVar.f518t.w(true);
        rVar.f501a = 5;
        rVar.C = false;
        rVar.s();
        if (!rVar.C) {
            throw new t0("Fragment " + rVar + " did not call through to super.onStart()");
        }
        androidx.lifecycle.s sVar = rVar.L;
        androidx.lifecycle.k kVar = androidx.lifecycle.k.ON_START;
        sVar.d(kVar);
        if (rVar.E != null) {
            rVar.M.c(kVar);
        }
        h0 h0Var = rVar.f518t;
        h0Var.f442y = false;
        h0Var.f443z = false;
        h0Var.F.f458h = false;
        h0Var.s(5);
        this.f478a.m(false);
    }

    public final void q() {
        boolean zD = h0.D(3);
        r rVar = this.f479c;
        if (zD) {
            Log.d("FragmentManager", "movefrom STARTED: " + rVar);
        }
        h0 h0Var = rVar.f518t;
        h0Var.f443z = true;
        h0Var.F.f458h = true;
        h0Var.s(4);
        if (rVar.E != null) {
            rVar.M.c(androidx.lifecycle.k.ON_STOP);
        }
        rVar.L.d(androidx.lifecycle.k.ON_STOP);
        rVar.f501a = 4;
        rVar.C = false;
        rVar.t();
        if (rVar.C) {
            this.f478a.n(false);
            return;
        }
        throw new t0("Fragment " + rVar + " did not call through to super.onStop()");
    }

    public n0(androidx.activity.result.c cVar, f fVar, ClassLoader classLoader, b0 b0Var, l0 l0Var) {
        this.f478a = cVar;
        this.b = fVar;
        r rVarA = b0Var.a(l0Var.f461a);
        this.f479c = rVarA;
        Bundle bundle = l0Var.f468j;
        if (bundle != null) {
            bundle.setClassLoader(classLoader);
        }
        rVarA.z(bundle);
        rVarA.f504e = l0Var.b;
        rVarA.f511m = l0Var.f462c;
        rVarA.f513o = true;
        rVarA.f520v = l0Var.f463d;
        rVarA.f521w = l0Var.f464e;
        rVarA.f522x = l0Var.f;
        rVarA.A = l0Var.f465g;
        rVarA.f510l = l0Var.f466h;
        rVarA.f524z = l0Var.f467i;
        rVarA.f523y = l0Var.f469k;
        rVarA.K = androidx.lifecycle.l.values()[l0Var.f470l];
        Bundle bundle2 = l0Var.f471m;
        if (bundle2 != null) {
            rVarA.b = bundle2;
        } else {
            rVarA.b = new Bundle();
        }
        if (h0.D(2)) {
            Log.v("FragmentManager", "Instantiated fragment " + rVarA);
        }
    }

    public n0(androidx.activity.result.c cVar, f fVar, r rVar, l0 l0Var) {
        this.f478a = cVar;
        this.b = fVar;
        this.f479c = rVar;
        rVar.f502c = null;
        rVar.f503d = null;
        rVar.f515q = 0;
        rVar.f512n = false;
        rVar.f509k = false;
        r rVar2 = rVar.f505g;
        rVar.f506h = rVar2 != null ? rVar2.f504e : null;
        rVar.f505g = null;
        Bundle bundle = l0Var.f471m;
        if (bundle != null) {
            rVar.b = bundle;
        } else {
            rVar.b = new Bundle();
        }
    }
}
