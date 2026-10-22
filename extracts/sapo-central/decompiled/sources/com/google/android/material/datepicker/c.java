package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import c0.f0;
import c0.p0;
import i.b3;
import i.k1;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1389a;
    public final Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f1390c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f1391d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f1392e;
    public Object f;

    public c(View view) {
        this.f1389a = -1;
        this.b = view;
        this.f1390c = i.t.a();
    }

    public static c b(Context context, int i3) {
        a1.b.j("Cannot create a CalendarItemStyle with a styleResId of 0", i3 != 0);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i3, b1.a.f680k);
        Rect rect = new Rect(typedArrayObtainStyledAttributes.getDimensionPixelOffset(0, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(2, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(1, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(3, 0));
        ColorStateList colorStateListZ = k1.a.z(context, typedArrayObtainStyledAttributes, 4);
        ColorStateList colorStateListZ2 = k1.a.z(context, typedArrayObtainStyledAttributes, 9);
        ColorStateList colorStateListZ3 = k1.a.z(context, typedArrayObtainStyledAttributes, 7);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(8, 0);
        s1.k kVarA = s1.k.a(context, typedArrayObtainStyledAttributes.getResourceId(5, 0), typedArrayObtainStyledAttributes.getResourceId(6, 0), new s1.a(0)).a();
        typedArrayObtainStyledAttributes.recycle();
        return new c(colorStateListZ, colorStateListZ2, colorStateListZ3, dimensionPixelSize, kVarA, rect);
    }

    public void a() {
        View view = (View) this.b;
        Drawable background = view.getBackground();
        if (background != null) {
            if (((b3) this.f1391d) != null) {
                if (((b3) this.f) == null) {
                    this.f = new b3();
                }
                b3 b3Var = (b3) this.f;
                b3Var.f1982a = null;
                b3Var.f1984d = false;
                b3Var.b = null;
                b3Var.f1983c = false;
                WeakHashMap weakHashMap = p0.f727a;
                ColorStateList colorStateListG = f0.g(view);
                if (colorStateListG != null) {
                    b3Var.f1984d = true;
                    b3Var.f1982a = colorStateListG;
                }
                PorterDuff.Mode modeH = f0.h(view);
                if (modeH != null) {
                    b3Var.f1983c = true;
                    b3Var.b = modeH;
                }
                if (b3Var.f1984d || b3Var.f1983c) {
                    i.t.e(background, b3Var, view.getDrawableState());
                    return;
                }
            }
            b3 b3Var2 = (b3) this.f1392e;
            if (b3Var2 != null) {
                i.t.e(background, b3Var2, view.getDrawableState());
                return;
            }
            b3 b3Var3 = (b3) this.f1391d;
            if (b3Var3 != null) {
                i.t.e(background, b3Var3, view.getDrawableState());
            }
        }
    }

    public ColorStateList c() {
        b3 b3Var = (b3) this.f1392e;
        if (b3Var != null) {
            return b3Var.f1982a;
        }
        return null;
    }

    public PorterDuff.Mode d() {
        b3 b3Var = (b3) this.f1392e;
        if (b3Var != null) {
            return b3Var.b;
        }
        return null;
    }

    public void e(AttributeSet attributeSet, int i3) {
        ColorStateList colorStateListF;
        View view = (View) this.b;
        Context context = view.getContext();
        int[] iArr = d.a.f1519z;
        androidx.fragment.app.f fVarV = androidx.fragment.app.f.v(context, attributeSet, iArr, i3);
        TypedArray typedArray = (TypedArray) fVarV.f413c;
        View view2 = (View) this.b;
        p0.h(view2, view2.getContext(), iArr, attributeSet, (TypedArray) fVarV.f413c, i3);
        try {
            if (typedArray.hasValue(0)) {
                this.f1389a = typedArray.getResourceId(0, -1);
                i.t tVar = (i.t) this.f1390c;
                Context context2 = view.getContext();
                int i4 = this.f1389a;
                synchronized (tVar) {
                    colorStateListF = tVar.f2150a.f(context2, i4);
                }
                if (colorStateListF != null) {
                    h(colorStateListF);
                }
            }
            if (typedArray.hasValue(1)) {
                f0.q(view, fVarV.j(1));
            }
            if (typedArray.hasValue(2)) {
                f0.r(view, k1.b(typedArray.getInt(2, -1), null));
            }
            fVarV.x();
        } catch (Throwable th) {
            fVarV.x();
            throw th;
        }
    }

    public void f() {
        this.f1389a = -1;
        h(null);
        a();
    }

    public void g(int i3) {
        ColorStateList colorStateListF;
        this.f1389a = i3;
        i.t tVar = (i.t) this.f1390c;
        if (tVar != null) {
            Context context = ((View) this.b).getContext();
            synchronized (tVar) {
                colorStateListF = tVar.f2150a.f(context, i3);
            }
        } else {
            colorStateListF = null;
        }
        h(colorStateListF);
        a();
    }

    public void h(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (((b3) this.f1391d) == null) {
                this.f1391d = new b3();
            }
            b3 b3Var = (b3) this.f1391d;
            b3Var.f1982a = colorStateList;
            b3Var.f1984d = true;
        } else {
            this.f1391d = null;
        }
        a();
    }

    public void i(ColorStateList colorStateList) {
        if (((b3) this.f1392e) == null) {
            this.f1392e = new b3();
        }
        b3 b3Var = (b3) this.f1392e;
        b3Var.f1982a = colorStateList;
        b3Var.f1984d = true;
        a();
    }

    public void j(PorterDuff.Mode mode) {
        if (((b3) this.f1392e) == null) {
            this.f1392e = new b3();
        }
        b3 b3Var = (b3) this.f1392e;
        b3Var.b = mode;
        b3Var.f1983c = true;
        a();
    }

    public c(ColorStateList colorStateList, ColorStateList colorStateList2, ColorStateList colorStateList3, int i3, s1.k kVar, Rect rect) {
        a1.b.k(rect.left);
        a1.b.k(rect.top);
        a1.b.k(rect.right);
        a1.b.k(rect.bottom);
        this.b = rect;
        this.f1390c = colorStateList2;
        this.f1391d = colorStateList;
        this.f1392e = colorStateList3;
        this.f1389a = i3;
        this.f = kVar;
    }
}
