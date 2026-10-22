package androidx.emoji2.text;

import android.graphics.Rect;
import android.view.View;
import q0.i0;
import q0.y;

/* JADX INFO: loaded from: classes.dex */
public abstract class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f330a;
    public final Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f331c;

    public f(i0 i0Var) {
        this.f330a = Integer.MIN_VALUE;
        this.f331c = new Rect();
        this.b = i0Var;
    }

    public static f a(i0 i0Var, int i3) {
        if (i3 == 0) {
            return new y(i0Var, 0);
        }
        if (i3 == 1) {
            return new y(i0Var, 1);
        }
        throw new IllegalArgumentException("invalid orientation");
    }

    public abstract int b(View view);

    public abstract int c(View view);

    public abstract int d(View view);

    public abstract int e(View view);

    public abstract int f();

    public abstract int g();

    public abstract int h();

    public abstract int i();

    public abstract int j();

    public abstract int k();

    public abstract int l();

    public abstract int m(View view);

    public abstract int n(View view);

    public abstract void o(int i3);

    public f(j jVar) {
        this.f330a = 0;
        this.f331c = new c();
        this.b = jVar;
    }
}
