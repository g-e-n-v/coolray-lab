package c0;

import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class k1 {
    public static final k1 b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final j1 f721a;

    static {
        if (Build.VERSION.SDK_INT >= 30) {
            b = i1.f719m;
        } else {
            b = j1.b;
        }
    }

    public k1(WindowInsets windowInsets) {
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 30) {
            this.f721a = new i1(this, windowInsets);
        } else if (i3 >= 29) {
            this.f721a = new g1(this, windowInsets);
        } else {
            this.f721a = new f1(this, windowInsets);
        }
    }

    public static v.c e(v.c cVar, int i3, int i4, int i5, int i6) {
        int iMax = Math.max(0, cVar.f3309a - i3);
        int iMax2 = Math.max(0, cVar.b - i4);
        int iMax3 = Math.max(0, cVar.f3310c - i5);
        int iMax4 = Math.max(0, cVar.f3311d - i6);
        return (iMax == i3 && iMax2 == i4 && iMax3 == i5 && iMax4 == i6) ? cVar : v.c.a(iMax, iMax2, iMax3, iMax4);
    }

    public static k1 g(WindowInsets windowInsets, View view) {
        windowInsets.getClass();
        k1 k1Var = new k1(windowInsets);
        if (view != null) {
            WeakHashMap weakHashMap = p0.f727a;
            if (c0.b(view)) {
                k1 k1VarA = g0.a(view);
                j1 j1Var = k1Var.f721a;
                j1Var.m(k1VarA);
                j1Var.d(view.getRootView());
            }
        }
        return k1Var;
    }

    public final int a() {
        return this.f721a.h().f3311d;
    }

    public final int b() {
        return this.f721a.h().f3309a;
    }

    public final int c() {
        return this.f721a.h().f3310c;
    }

    public final int d() {
        return this.f721a.h().b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof k1) {
            return b0.b.a(this.f721a, ((k1) obj).f721a);
        }
        return false;
    }

    public final WindowInsets f() {
        j1 j1Var = this.f721a;
        if (j1Var instanceof d1) {
            return ((d1) j1Var).f706c;
        }
        return null;
    }

    public final int hashCode() {
        j1 j1Var = this.f721a;
        if (j1Var == null) {
            return 0;
        }
        return j1Var.hashCode();
    }

    public k1() {
        this.f721a = new j1(this);
    }
}
