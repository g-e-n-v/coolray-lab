package androidx.fragment.app;

import android.content.Context;
import android.content.IntentFilter;
import android.view.MenuItem;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public abstract class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f419a;
    public Object b;

    public h(Context context) {
        this.f419a = context;
    }

    public void c() {
        a1.s sVar = (a1.s) this.f419a;
        if (sVar != null) {
            try {
                ((e.y) this.b).f1692k.unregisterReceiver(sVar);
            } catch (IllegalArgumentException unused) {
            }
            this.f419a = null;
        }
    }

    public void d() {
        s0 s0Var = (s0) this.f419a;
        y.b bVar = (y.b) this.b;
        HashSet hashSet = s0Var.f531e;
        if (hashSet.remove(bVar) && hashSet.isEmpty()) {
            s0Var.b();
        }
    }

    public abstract IntentFilter e();

    public abstract int f();

    public MenuItem g(MenuItem menuItem) {
        if (!(menuItem instanceof x.a)) {
            return menuItem;
        }
        x.a aVar = (x.a) menuItem;
        if (((l.k) this.b) == null) {
            this.b = new l.k();
        }
        MenuItem menuItem2 = (MenuItem) ((l.k) this.b).getOrDefault(aVar, null);
        if (menuItem2 != null) {
            return menuItem2;
        }
        h.t tVar = new h.t((Context) this.f419a, aVar);
        ((l.k) this.b).put(aVar, tVar);
        return tVar;
    }

    public abstract void h();

    public void i() {
        c();
        IntentFilter intentFilterE = e();
        if (intentFilterE.countActions() == 0) {
            return;
        }
        if (((a1.s) this.f419a) == null) {
            this.f419a = new a1.s(1, this);
        }
        ((e.y) this.b).f1692k.registerReceiver((a1.s) this.f419a, intentFilterE);
    }

    public h(s0 s0Var, y.b bVar) {
        this.f419a = s0Var;
        this.b = bVar;
    }

    public h(e.y yVar) {
        this.b = yVar;
    }
}
