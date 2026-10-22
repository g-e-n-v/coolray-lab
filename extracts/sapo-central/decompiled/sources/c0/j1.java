package c0;

import android.os.Build;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class j1 {
    public static final k1 b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k1 f720a;

    static {
        c1 a1Var;
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 30) {
            a1Var = new b1();
        } else {
            a1Var = i3 >= 29 ? new a1() : new z0();
        }
        b = a1Var.b().f721a.a().f721a.b().f721a.c();
    }

    public j1(k1 k1Var) {
        this.f720a = k1Var;
    }

    public k1 a() {
        return this.f720a;
    }

    public k1 b() {
        return this.f720a;
    }

    public k1 c() {
        return this.f720a;
    }

    public void d(View view) {
    }

    public i e() {
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j1)) {
            return false;
        }
        j1 j1Var = (j1) obj;
        return k() == j1Var.k() && j() == j1Var.j() && b0.b.a(h(), j1Var.h()) && b0.b.a(g(), j1Var.g()) && b0.b.a(e(), j1Var.e());
    }

    public v.c f() {
        return h();
    }

    public v.c g() {
        return v.c.f3308e;
    }

    public v.c h() {
        return v.c.f3308e;
    }

    public int hashCode() {
        return b0.b.b(Boolean.valueOf(k()), Boolean.valueOf(j()), h(), g(), e());
    }

    public k1 i(int i3, int i4, int i5, int i6) {
        return b;
    }

    public boolean j() {
        return false;
    }

    public boolean k() {
        return false;
    }

    public void l(v.c[] cVarArr) {
    }

    public void m(k1 k1Var) {
    }

    public void n(v.c cVar) {
    }
}
