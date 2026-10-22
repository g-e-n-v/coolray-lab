package r0;

import android.os.Bundle;
import androidx.lifecycle.k;
import androidx.lifecycle.l;
import androidx.lifecycle.o;
import androidx.lifecycle.q;
import androidx.lifecycle.s;
import androidx.savedstate.Recreator;
import i.r;
import i2.g;
import java.util.Map;
import k.f;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f3079a;
    public final r b = new r();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f3080c;

    public d(e eVar) {
        this.f3079a = eVar;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.lifecycle.q, java.lang.Object, r0.e] */
    public final void a() {
        ?? r3 = this.f3079a;
        s sVarF = r3.f();
        g.d(sVarF, "owner.lifecycle");
        if (sVarF.b != l.b) {
            throw new IllegalStateException("Restarter must be created only during owner's initialization stage");
        }
        sVarF.a(new Recreator(r3));
        final r rVar = this.b;
        rVar.getClass();
        if (rVar.f2139c) {
            throw new IllegalStateException("SavedStateRegistry was already attached.");
        }
        sVarF.a(new o() { // from class: r0.a
            @Override // androidx.lifecycle.o
            public final void a(q qVar, k kVar) {
                r rVar2 = rVar;
                g.e(rVar2, "this$0");
                if (kVar == k.ON_START) {
                    rVar2.f2141e = true;
                } else if (kVar == k.ON_STOP) {
                    rVar2.f2141e = false;
                }
            }
        });
        rVar.f2139c = true;
        this.f3080c = true;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.lifecycle.q, java.lang.Object] */
    public final void b(Bundle bundle) {
        if (!this.f3080c) {
            a();
        }
        s sVarF = this.f3079a.f();
        g.d(sVarF, "owner.lifecycle");
        if (sVarF.b.a(l.f580d)) {
            throw new IllegalStateException(("performRestore cannot be called when owner is " + sVarF.b).toString());
        }
        r rVar = this.b;
        if (!rVar.f2139c) {
            throw new IllegalStateException("You must call performAttach() before calling performRestore(Bundle).");
        }
        if (rVar.f2140d) {
            throw new IllegalStateException("SavedStateRegistry was already restored.");
        }
        rVar.f2138a = bundle != null ? bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key") : null;
        rVar.f2140d = true;
    }

    public final void c(Bundle bundle) {
        g.e(bundle, "outBundle");
        r rVar = this.b;
        rVar.getClass();
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = (Bundle) rVar.f2138a;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        f fVar = (f) rVar.f;
        fVar.getClass();
        k.d dVar = new k.d(fVar);
        fVar.f2338c.put(dVar, Boolean.FALSE);
        while (dVar.hasNext()) {
            Map.Entry entry = (Map.Entry) dVar.next();
            bundle2.putBundle((String) entry.getKey(), ((c) entry.getValue()).a());
        }
        if (bundle2.isEmpty()) {
            return;
        }
        bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle2);
    }
}
