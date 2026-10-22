package com.google.android.material.button;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Parcelable;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.CompoundButton;
import c0.b0;
import c0.p0;
import h1.c;
import i.o;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;
import n1.i;
import s1.f;
import s1.g;
import s1.k;
import s1.u;
import v1.a;
import w.b;

/* JADX INFO: loaded from: classes.dex */
public class MaterialButton extends o implements Checkable, u {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int[] f1347o = {R.attr.state_checkable};

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int[] f1348p = {R.attr.state_checked};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final c f1349d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LinkedHashSet f1350e;
    public PorterDuff.Mode f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ColorStateList f1351g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Drawable f1352h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f1353i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f1354j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f1355k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f1356l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f1357m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f1358n;

    public MaterialButton(Context context, AttributeSet attributeSet) {
        boolean z2;
        boolean z3;
        super(a.a(context, attributeSet, com.ex.auto.R.attr.materialButtonStyle, com.ex.auto.R.style.Widget_MaterialComponents_Button), attributeSet, com.ex.auto.R.attr.materialButtonStyle);
        this.f1350e = new LinkedHashSet();
        this.f1356l = false;
        this.f1357m = false;
        Context context2 = getContext();
        TypedArray typedArrayD = i.d(context2, attributeSet, b1.a.f678i, com.ex.auto.R.attr.materialButtonStyle, com.ex.auto.R.style.Widget_MaterialComponents_Button, new int[0]);
        this.f1355k = typedArrayD.getDimensionPixelSize(12, 0);
        int i3 = typedArrayD.getInt(15, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        this.f = i.e(i3, mode);
        this.f1351g = k1.a.z(getContext(), typedArrayD, 14);
        this.f1352h = k1.a.C(getContext(), typedArrayD, 10);
        this.f1358n = typedArrayD.getInteger(11, 1);
        this.f1353i = typedArrayD.getDimensionPixelSize(13, 0);
        c cVar = new c(this, k.b(context2, attributeSet, com.ex.auto.R.attr.materialButtonStyle, com.ex.auto.R.style.Widget_MaterialComponents_Button).a());
        this.f1349d = cVar;
        cVar.f1954c = typedArrayD.getDimensionPixelOffset(1, 0);
        cVar.f1955d = typedArrayD.getDimensionPixelOffset(2, 0);
        cVar.f1956e = typedArrayD.getDimensionPixelOffset(3, 0);
        cVar.f = typedArrayD.getDimensionPixelOffset(4, 0);
        if (typedArrayD.hasValue(8)) {
            int dimensionPixelSize = typedArrayD.getDimensionPixelSize(8, -1);
            cVar.f1957g = dimensionPixelSize;
            cVar.c(cVar.b.f(dimensionPixelSize));
            cVar.f1966p = true;
        }
        cVar.f1958h = typedArrayD.getDimensionPixelSize(20, 0);
        cVar.f1959i = i.e(typedArrayD.getInt(7, -1), mode);
        cVar.f1960j = k1.a.z(getContext(), typedArrayD, 6);
        cVar.f1961k = k1.a.z(getContext(), typedArrayD, 19);
        cVar.f1962l = k1.a.z(getContext(), typedArrayD, 16);
        cVar.f1967q = typedArrayD.getBoolean(5, false);
        int dimensionPixelSize2 = typedArrayD.getDimensionPixelSize(9, 0);
        WeakHashMap weakHashMap = p0.f727a;
        int iF = b0.f(this);
        int paddingTop = getPaddingTop();
        int iE = b0.e(this);
        int paddingBottom = getPaddingBottom();
        if (typedArrayD.hasValue(0)) {
            cVar.f1965o = true;
            setSupportBackgroundTintList(cVar.f1960j);
            setSupportBackgroundTintMode(cVar.f1959i);
            z3 = false;
            z2 = true;
        } else {
            g gVar = new g(cVar.b);
            gVar.g(getContext());
            b.h(gVar, cVar.f1960j);
            PorterDuff.Mode mode2 = cVar.f1959i;
            if (mode2 != null) {
                b.i(gVar, mode2);
            }
            float f = cVar.f1958h;
            ColorStateList colorStateList = cVar.f1961k;
            gVar.f3142a.f3134j = f;
            gVar.invalidateSelf();
            f fVar = gVar.f3142a;
            if (fVar.f3129d != colorStateList) {
                fVar.f3129d = colorStateList;
                gVar.onStateChange(gVar.getState());
            }
            g gVar2 = new g(cVar.b);
            gVar2.setTint(0);
            float f3 = cVar.f1958h;
            int iY = cVar.f1964n ? k1.a.y(this, com.ex.auto.R.attr.colorSurface) : 0;
            z2 = true;
            gVar2.f3142a.f3134j = f3;
            gVar2.invalidateSelf();
            ColorStateList colorStateListValueOf = ColorStateList.valueOf(iY);
            f fVar2 = gVar2.f3142a;
            if (fVar2.f3129d != colorStateListValueOf) {
                fVar2.f3129d = colorStateListValueOf;
                gVar2.onStateChange(gVar2.getState());
            }
            g gVar3 = new g(cVar.b);
            cVar.f1963m = gVar3;
            b.g(gVar3, -1);
            ColorStateList colorStateList2 = cVar.f1962l;
            RippleDrawable rippleDrawable = new RippleDrawable(colorStateList2 == null ? ColorStateList.valueOf(0) : colorStateList2, new InsetDrawable((Drawable) new LayerDrawable(new Drawable[]{gVar2, gVar}), cVar.f1954c, cVar.f1956e, cVar.f1955d, cVar.f), cVar.f1963m);
            cVar.f1968r = rippleDrawable;
            setInternalBackground(rippleDrawable);
            z3 = false;
            g gVarB = cVar.b(false);
            if (gVarB != null) {
                gVarB.h(dimensionPixelSize2);
            }
        }
        b0.k(this, iF + cVar.f1954c, paddingTop + cVar.f1956e, iE + cVar.f1955d, paddingBottom + cVar.f);
        typedArrayD.recycle();
        setCompoundDrawablePadding(this.f1355k);
        b(this.f1352h != null ? z2 : z3);
    }

    private String getA11yClassName() {
        c cVar = this.f1349d;
        return ((cVar == null || !cVar.f1967q) ? Button.class : CompoundButton.class).getName();
    }

    public final boolean a() {
        c cVar = this.f1349d;
        return (cVar == null || cVar.f1965o) ? false : true;
    }

    public final void b(boolean z2) {
        Drawable drawable = this.f1352h;
        if (drawable != null) {
            Drawable drawableMutate = drawable.mutate();
            this.f1352h = drawableMutate;
            b.h(drawableMutate, this.f1351g);
            PorterDuff.Mode mode = this.f;
            if (mode != null) {
                b.i(this.f1352h, mode);
            }
            int intrinsicWidth = this.f1353i;
            if (intrinsicWidth == 0) {
                intrinsicWidth = this.f1352h.getIntrinsicWidth();
            }
            int intrinsicHeight = this.f1353i;
            if (intrinsicHeight == 0) {
                intrinsicHeight = this.f1352h.getIntrinsicHeight();
            }
            Drawable drawable2 = this.f1352h;
            int i3 = this.f1354j;
            drawable2.setBounds(i3, 0, intrinsicWidth + i3, intrinsicHeight);
        }
        int i4 = this.f1358n;
        boolean z3 = true;
        if (i4 != 1 && i4 != 2) {
            z3 = false;
        }
        if (z2) {
            if (z3) {
                f0.o.e(this, this.f1352h, null, null, null);
                return;
            } else {
                f0.o.e(this, null, null, this.f1352h, null);
                return;
            }
        }
        Drawable[] drawableArrA = f0.o.a(this);
        Drawable drawable3 = drawableArrA[0];
        Drawable drawable4 = drawableArrA[2];
        if ((!z3 || drawable3 == this.f1352h) && (z3 || drawable4 == this.f1352h)) {
            return;
        }
        if (z3) {
            f0.o.e(this, this.f1352h, null, null, null);
        } else {
            f0.o.e(this, null, null, this.f1352h, null);
        }
    }

    public final void c() {
        if (this.f1352h == null || getLayout() == null) {
            return;
        }
        int i3 = this.f1358n;
        if (i3 == 1 || i3 == 3) {
            this.f1354j = 0;
            b(false);
            return;
        }
        TextPaint paint = getPaint();
        String string = getText().toString();
        if (getTransformationMethod() != null) {
            string = getTransformationMethod().getTransformation(string, this).toString();
        }
        int iMin = Math.min((int) paint.measureText(string), getLayout().getEllipsizedWidth());
        int intrinsicWidth = this.f1353i;
        if (intrinsicWidth == 0) {
            intrinsicWidth = this.f1352h.getIntrinsicWidth();
        }
        int measuredWidth = getMeasuredWidth() - iMin;
        WeakHashMap weakHashMap = p0.f727a;
        int iE = ((((measuredWidth - b0.e(this)) - intrinsicWidth) - this.f1355k) - b0.f(this)) / 2;
        if ((b0.d(this) == 1) != (this.f1358n == 4)) {
            iE = -iE;
        }
        if (this.f1354j != iE) {
            this.f1354j = iE;
            b(false);
        }
    }

    @Override // android.view.View
    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    @Override // android.view.View
    public PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    public int getCornerRadius() {
        if (a()) {
            return this.f1349d.f1957g;
        }
        return 0;
    }

    public Drawable getIcon() {
        return this.f1352h;
    }

    public int getIconGravity() {
        return this.f1358n;
    }

    public int getIconPadding() {
        return this.f1355k;
    }

    public int getIconSize() {
        return this.f1353i;
    }

    public ColorStateList getIconTint() {
        return this.f1351g;
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.f;
    }

    public ColorStateList getRippleColor() {
        if (a()) {
            return this.f1349d.f1962l;
        }
        return null;
    }

    public k getShapeAppearanceModel() {
        if (a()) {
            return this.f1349d.b;
        }
        throw new IllegalStateException("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
    }

    public ColorStateList getStrokeColor() {
        if (a()) {
            return this.f1349d.f1961k;
        }
        return null;
    }

    public int getStrokeWidth() {
        if (a()) {
            return this.f1349d.f1958h;
        }
        return 0;
    }

    @Override // i.o
    public ColorStateList getSupportBackgroundTintList() {
        return a() ? this.f1349d.f1960j : super.getSupportBackgroundTintList();
    }

    @Override // i.o
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return a() ? this.f1349d.f1959i : super.getSupportBackgroundTintMode();
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.f1356l;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (a()) {
            k1.a.Q(this, this.f1349d.b(false));
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i3) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i3 + 2);
        c cVar = this.f1349d;
        if (cVar != null && cVar.f1967q) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f1347o);
        }
        if (this.f1356l) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f1348p);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // i.o, android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(getA11yClassName());
        accessibilityEvent.setChecked(this.f1356l);
    }

    @Override // i.o, android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getA11yClassName());
        c cVar = this.f1349d;
        accessibilityNodeInfo.setCheckable(cVar != null && cVar.f1967q);
        accessibilityNodeInfo.setChecked(this.f1356l);
        accessibilityNodeInfo.setClickable(isClickable());
    }

    @Override // android.widget.TextView, android.view.View
    public final void onMeasure(int i3, int i4) {
        super.onMeasure(i3, i4);
        c();
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof h1.b)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        h1.b bVar = (h1.b) parcelable;
        super.onRestoreInstanceState(bVar.f1951a);
        setChecked(bVar.f1952c);
    }

    @Override // android.widget.TextView, android.view.View
    public final Parcelable onSaveInstanceState() {
        h1.b bVar = new h1.b(super.onSaveInstanceState());
        bVar.f1952c = this.f1356l;
        return bVar;
    }

    @Override // i.o, android.widget.TextView
    public final void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
        super.onTextChanged(charSequence, i3, i4, i5);
        c();
    }

    @Override // android.view.View
    public final boolean performClick() {
        toggle();
        return super.performClick();
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i3) {
        if (!a()) {
            super.setBackgroundColor(i3);
            return;
        }
        c cVar = this.f1349d;
        if (cVar.b(false) != null) {
            cVar.b(false).setTint(i3);
        }
    }

    @Override // i.o, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (!a()) {
            super.setBackgroundDrawable(drawable);
            return;
        }
        if (drawable == getBackground()) {
            getBackground().setState(drawable.getState());
            return;
        }
        Log.w("MaterialButton", "Do not set the background; MaterialButton manages its own background drawable.");
        c cVar = this.f1349d;
        cVar.f1965o = true;
        MaterialButton materialButton = cVar.f1953a;
        materialButton.setSupportBackgroundTintList(cVar.f1960j);
        materialButton.setSupportBackgroundTintMode(cVar.f1959i);
        super.setBackgroundDrawable(drawable);
    }

    @Override // i.o, android.view.View
    public void setBackgroundResource(int i3) {
        setBackgroundDrawable(i3 != 0 ? a1.b.v(getContext(), i3) : null);
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        setSupportBackgroundTintMode(mode);
    }

    public void setCheckable(boolean z2) {
        if (a()) {
            this.f1349d.f1967q = z2;
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z2) {
        c cVar = this.f1349d;
        if (cVar == null || !cVar.f1967q || !isEnabled() || this.f1356l == z2) {
            return;
        }
        this.f1356l = z2;
        refreshDrawableState();
        if (this.f1357m) {
            return;
        }
        this.f1357m = true;
        Iterator it = this.f1350e.iterator();
        if (it.hasNext()) {
            it.next().getClass();
            throw new ClassCastException();
        }
        this.f1357m = false;
    }

    public void setCornerRadius(int i3) {
        if (a()) {
            c cVar = this.f1349d;
            if (cVar.f1966p && cVar.f1957g == i3) {
                return;
            }
            cVar.f1957g = i3;
            cVar.f1966p = true;
            cVar.c(cVar.b.f(i3));
        }
    }

    public void setCornerRadiusResource(int i3) {
        if (a()) {
            setCornerRadius(getResources().getDimensionPixelSize(i3));
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        if (a()) {
            this.f1349d.b(false).h(f);
        }
    }

    public void setIcon(Drawable drawable) {
        if (this.f1352h != drawable) {
            this.f1352h = drawable;
            b(true);
        }
    }

    public void setIconGravity(int i3) {
        if (this.f1358n != i3) {
            this.f1358n = i3;
            c();
        }
    }

    public void setIconPadding(int i3) {
        if (this.f1355k != i3) {
            this.f1355k = i3;
            setCompoundDrawablePadding(i3);
        }
    }

    public void setIconResource(int i3) {
        setIcon(i3 != 0 ? a1.b.v(getContext(), i3) : null);
    }

    public void setIconSize(int i3) {
        if (i3 < 0) {
            throw new IllegalArgumentException("iconSize cannot be less than 0");
        }
        if (this.f1353i != i3) {
            this.f1353i = i3;
            b(true);
        }
    }

    public void setIconTint(ColorStateList colorStateList) {
        if (this.f1351g != colorStateList) {
            this.f1351g = colorStateList;
            b(false);
        }
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.f != mode) {
            this.f = mode;
            b(false);
        }
    }

    public void setIconTintResource(int i3) {
        setIconTint(a1.b.t(getContext(), i3));
    }

    public void setInternalBackground(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    public void setOnPressedChangeListenerInternal(h1.a aVar) {
    }

    @Override // android.view.View
    public void setPressed(boolean z2) {
        super.setPressed(z2);
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (a()) {
            c cVar = this.f1349d;
            MaterialButton materialButton = cVar.f1953a;
            if (cVar.f1962l != colorStateList) {
                cVar.f1962l = colorStateList;
                if (materialButton.getBackground() instanceof RippleDrawable) {
                    RippleDrawable rippleDrawable = (RippleDrawable) materialButton.getBackground();
                    if (colorStateList == null) {
                        colorStateList = ColorStateList.valueOf(0);
                    }
                    rippleDrawable.setColor(colorStateList);
                }
            }
        }
    }

    public void setRippleColorResource(int i3) {
        if (a()) {
            setRippleColor(a1.b.t(getContext(), i3));
        }
    }

    @Override // s1.u
    public void setShapeAppearanceModel(k kVar) {
        if (!a()) {
            throw new IllegalStateException("Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background.");
        }
        this.f1349d.c(kVar);
    }

    public void setShouldDrawSurfaceColorStroke(boolean z2) {
        if (a()) {
            c cVar = this.f1349d;
            cVar.f1964n = z2;
            cVar.d();
        }
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        if (a()) {
            c cVar = this.f1349d;
            if (cVar.f1961k != colorStateList) {
                cVar.f1961k = colorStateList;
                cVar.d();
            }
        }
    }

    public void setStrokeColorResource(int i3) {
        if (a()) {
            setStrokeColor(a1.b.t(getContext(), i3));
        }
    }

    public void setStrokeWidth(int i3) {
        if (a()) {
            c cVar = this.f1349d;
            if (cVar.f1958h != i3) {
                cVar.f1958h = i3;
                cVar.d();
            }
        }
    }

    public void setStrokeWidthResource(int i3) {
        if (a()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i3));
        }
    }

    @Override // i.o
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (!a()) {
            super.setSupportBackgroundTintList(colorStateList);
            return;
        }
        c cVar = this.f1349d;
        if (cVar.f1960j != colorStateList) {
            cVar.f1960j = colorStateList;
            if (cVar.b(false) != null) {
                b.h(cVar.b(false), cVar.f1960j);
            }
        }
    }

    @Override // i.o
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (!a()) {
            super.setSupportBackgroundTintMode(mode);
            return;
        }
        c cVar = this.f1349d;
        if (cVar.f1959i != mode) {
            cVar.f1959i = mode;
            if (cVar.b(false) == null || cVar.f1959i == null) {
                return;
            }
            b.i(cVar.b(false), cVar.f1959i);
        }
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        setChecked(!this.f1356l);
    }
}
