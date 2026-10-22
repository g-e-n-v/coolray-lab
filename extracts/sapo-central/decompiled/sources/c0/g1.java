package c0;

import android.graphics.Insets;
import android.view.WindowInsets;

/* JADX INFO: loaded from: classes.dex */
public class g1 extends f1 {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public v.c f716l;

    public g1(k1 k1Var, WindowInsets windowInsets) {
        super(k1Var, windowInsets);
        this.f716l = null;
    }

    @Override // c0.j1
    public v.c f() {
        if (this.f716l == null) {
            Insets mandatorySystemGestureInsets = this.f706c.getMandatorySystemGestureInsets();
            this.f716l = v.c.a(mandatorySystemGestureInsets.left, mandatorySystemGestureInsets.top, mandatorySystemGestureInsets.right, mandatorySystemGestureInsets.bottom);
        }
        return this.f716l;
    }

    @Override // c0.d1, c0.j1
    public k1 i(int i3, int i4, int i5, int i6) {
        return k1.g(this.f706c.inset(i3, i4, i5, i6), null);
    }

    @Override // c0.e1, c0.j1
    public void n(v.c cVar) {
    }
}
