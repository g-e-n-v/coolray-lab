package i;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import com.ex.auto.R;

/* JADX INFO: loaded from: classes.dex */
public final class h0 extends c0 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final g0 f2034e;
    public Drawable f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ColorStateList f2035g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public PorterDuff.Mode f2036h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f2037i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f2038j;

    public h0(g0 g0Var) {
        super(g0Var);
        this.f2035g = null;
        this.f2036h = null;
        this.f2037i = false;
        this.f2038j = false;
        this.f2034e = g0Var;
    }

    @Override // i.c0
    public final void d(AttributeSet attributeSet, int i3) {
        super.d(attributeSet, R.attr.seekBarStyle);
        g0 g0Var = this.f2034e;
        Context context = g0Var.getContext();
        int[] iArr = d.a.f1500g;
        androidx.fragment.app.f fVarV = androidx.fragment.app.f.v(context, attributeSet, iArr, R.attr.seekBarStyle);
        TypedArray typedArray = (TypedArray) fVarV.f413c;
        c0.p0.h(g0Var, g0Var.getContext(), iArr, attributeSet, (TypedArray) fVarV.f413c, R.attr.seekBarStyle);
        Drawable drawableL = fVarV.l(0);
        if (drawableL != null) {
            g0Var.setThumb(drawableL);
        }
        Drawable drawableK = fVarV.k(1);
        Drawable drawable = this.f;
        if (drawable != null) {
            drawable.setCallback(null);
        }
        this.f = drawableK;
        if (drawableK != null) {
            drawableK.setCallback(g0Var);
            w.c.b(drawableK, c0.b0.d(g0Var));
            if (drawableK.isStateful()) {
                drawableK.setState(g0Var.getDrawableState());
            }
            h();
        }
        g0Var.invalidate();
        if (typedArray.hasValue(3)) {
            this.f2036h = k1.b(typedArray.getInt(3, -1), this.f2036h);
            this.f2038j = true;
        }
        if (typedArray.hasValue(2)) {
            this.f2035g = fVarV.j(2);
            this.f2037i = true;
        }
        fVarV.x();
        h();
    }

    public final void h() {
        Drawable drawable = this.f;
        if (drawable != null) {
            if (this.f2037i || this.f2038j) {
                Drawable drawableMutate = drawable.mutate();
                this.f = drawableMutate;
                if (this.f2037i) {
                    w.b.h(drawableMutate, this.f2035g);
                }
                if (this.f2038j) {
                    w.b.i(this.f, this.f2036h);
                }
                if (this.f.isStateful()) {
                    this.f.setState(this.f2034e.getDrawableState());
                }
            }
        }
    }

    public final void i(Canvas canvas) {
        if (this.f != null) {
            g0 g0Var = this.f2034e;
            int max = g0Var.getMax();
            if (max > 1) {
                int intrinsicWidth = this.f.getIntrinsicWidth();
                int intrinsicHeight = this.f.getIntrinsicHeight();
                int i3 = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
                int i4 = intrinsicHeight >= 0 ? intrinsicHeight / 2 : 1;
                this.f.setBounds(-i3, -i4, i3, i4);
                float width = ((g0Var.getWidth() - g0Var.getPaddingLeft()) - g0Var.getPaddingRight()) / max;
                int iSave = canvas.save();
                canvas.translate(g0Var.getPaddingLeft(), g0Var.getHeight() / 2);
                for (int i5 = 0; i5 <= max; i5++) {
                    this.f.draw(canvas);
                    canvas.translate(width, 0.0f);
                }
                canvas.restoreToCount(iSave);
            }
        }
    }
}
