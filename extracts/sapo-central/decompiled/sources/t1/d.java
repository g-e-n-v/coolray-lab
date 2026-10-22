package t1;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import c0.a0;
import c0.d0;
import c0.f0;
import c0.p0;
import com.ex.auto.R;
import java.util.WeakHashMap;
import n1.i;

/* JADX INFO: loaded from: classes.dex */
public abstract class d extends FrameLayout {
    public static final c f = new c();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f3209a;
    public final float b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f3210c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ColorStateList f3211d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public PorterDuff.Mode f3212e;

    public d(Context context, AttributeSet attributeSet) {
        super(v1.a.a(context, attributeSet, 0, 0), attributeSet);
        Context context2 = getContext();
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, b1.a.f688s);
        if (typedArrayObtainStyledAttributes.hasValue(6)) {
            float dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(6, 0);
            WeakHashMap weakHashMap = p0.f727a;
            f0.s(this, dimensionPixelSize);
        }
        this.f3209a = typedArrayObtainStyledAttributes.getInt(2, 0);
        this.b = typedArrayObtainStyledAttributes.getFloat(3, 1.0f);
        setBackgroundTintList(k1.a.z(context2, typedArrayObtainStyledAttributes, 4));
        setBackgroundTintMode(i.e(typedArrayObtainStyledAttributes.getInt(5, -1), PorterDuff.Mode.SRC_IN));
        this.f3210c = typedArrayObtainStyledAttributes.getFloat(1, 1.0f);
        typedArrayObtainStyledAttributes.recycle();
        setOnTouchListener(f);
        setFocusable(true);
        if (getBackground() == null) {
            float dimension = getResources().getDimension(R.dimen.mtrl_snackbar_background_corner_radius);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(0);
            gradientDrawable.setCornerRadius(dimension);
            gradientDrawable.setColor(k1.a.H(k1.a.y(this, R.attr.colorSurface), k1.a.y(this, R.attr.colorOnSurface), getBackgroundOverlayColorAlpha()));
            ColorStateList colorStateList = this.f3211d;
            if (colorStateList != null) {
                w.b.h(gradientDrawable, colorStateList);
            }
            WeakHashMap weakHashMap2 = p0.f727a;
            a0.q(this, gradientDrawable);
        }
    }

    public float getActionTextColorAlpha() {
        return this.f3210c;
    }

    public int getAnimationMode() {
        return this.f3209a;
    }

    public float getBackgroundOverlayColorAlpha() {
        return this.b;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        WeakHashMap weakHashMap = p0.f727a;
        d0.c(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i3, int i4, int i5, int i6) {
        super.onLayout(z2, i3, i4, i5, i6);
    }

    public void setAnimationMode(int i3) {
        this.f3209a = i3;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable != null && this.f3211d != null) {
            drawable = drawable.mutate();
            w.b.h(drawable, this.f3211d);
            w.b.i(drawable, this.f3212e);
        }
        super.setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        this.f3211d = colorStateList;
        if (getBackground() != null) {
            Drawable drawableMutate = getBackground().mutate();
            w.b.h(drawableMutate, colorStateList);
            w.b.i(drawableMutate, this.f3212e);
            if (drawableMutate != getBackground()) {
                super.setBackgroundDrawable(drawableMutate);
            }
        }
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        this.f3212e = mode;
        if (getBackground() != null) {
            Drawable drawableMutate = getBackground().mutate();
            w.b.i(drawableMutate, mode);
            if (drawableMutate != getBackground()) {
                super.setBackgroundDrawable(drawableMutate);
            }
        }
    }

    public void setOnAttachStateChangeListener(a aVar) {
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        setOnTouchListener(onClickListener != null ? null : f);
        super.setOnClickListener(onClickListener);
    }

    public void setOnLayoutChangeListener(b bVar) {
    }
}
