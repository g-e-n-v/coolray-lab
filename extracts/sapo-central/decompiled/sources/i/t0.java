package i;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.ThemedSpinnerAdapter;

/* JADX INFO: loaded from: classes.dex */
public final class t0 extends Spinner {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int[] f2151i = {R.attr.spinnerMode};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.google.android.material.datepicker.c f2152a;
    public final Context b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final i0 f2153c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public SpinnerAdapter f2154d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f2155e;
    public final s0 f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f2156g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Rect f2157h;

    /* JADX WARN: Code duplicated, block: B:26:0x0067 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:28:0x006a  */
    /* JADX WARN: Code duplicated, block: B:29:0x009d  */
    /* JADX WARN: Code duplicated, block: B:32:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:35:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:39:0x00d7  */
    public t0(Context context, AttributeSet attributeSet) throws Throwable {
        TypedArray typedArrayObtainStyledAttributes;
        CharSequence[] textArray;
        SpinnerAdapter spinnerAdapter;
        super(context, attributeSet, com.ex.auto.R.attr.spinnerStyle);
        this.f2157h = new Rect();
        z2.a(this, getContext());
        int[] iArr = d.a.f1515v;
        androidx.fragment.app.f fVarV = androidx.fragment.app.f.v(context, attributeSet, iArr, com.ex.auto.R.attr.spinnerStyle);
        TypedArray typedArray = (TypedArray) fVarV.f413c;
        this.f2152a = new com.google.android.material.datepicker.c(this);
        int resourceId = typedArray.getResourceId(4, 0);
        if (resourceId != 0) {
            this.b = new g.d(context, resourceId);
        } else {
            this.b = context;
        }
        int i3 = -1;
        TypedArray typedArray2 = null;
        try {
            typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f2151i, com.ex.auto.R.attr.spinnerStyle, 0);
            try {
                try {
                    if (typedArrayObtainStyledAttributes.hasValue(0)) {
                        i3 = typedArrayObtainStyledAttributes.getInt(0, 0);
                    }
                } catch (Exception e3) {
                    e = e3;
                    Log.i("AppCompatSpinner", "Could not read android:spinnerMode", e);
                    if (typedArrayObtainStyledAttributes != null) {
                    }
                    if (i3 != 0) {
                        m0 m0Var = new m0(this);
                        this.f = m0Var;
                        m0Var.f2096c = typedArray.getString(2);
                    } else if (i3 == 1) {
                        q0 q0Var = new q0(this, this.b, attributeSet);
                        androidx.fragment.app.f fVarV2 = androidx.fragment.app.f.v(this.b, attributeSet, iArr, com.ex.auto.R.attr.spinnerStyle);
                        this.f2156g = ((TypedArray) fVarV2.f413c).getLayoutDimension(3, -2);
                        q0Var.g(fVarV2.k(1));
                        q0Var.B = typedArray.getString(2);
                        fVarV2.x();
                        this.f = q0Var;
                        this.f2153c = new i0(this, this, q0Var);
                    }
                    textArray = typedArray.getTextArray(0);
                    if (textArray != null) {
                        ArrayAdapter arrayAdapter = new ArrayAdapter(context, R.layout.simple_spinner_item, textArray);
                        arrayAdapter.setDropDownViewResource(com.ex.auto.R.layout.support_simple_spinner_dropdown_item);
                        setAdapter((SpinnerAdapter) arrayAdapter);
                    }
                    fVarV.x();
                    this.f2155e = true;
                    spinnerAdapter = this.f2154d;
                    if (spinnerAdapter != null) {
                        setAdapter(spinnerAdapter);
                        this.f2154d = null;
                    }
                    this.f2152a.e(attributeSet, com.ex.auto.R.attr.spinnerStyle);
                }
            } catch (Throwable th) {
                th = th;
                typedArray2 = typedArrayObtainStyledAttributes;
                if (typedArray2 != null) {
                    typedArray2.recycle();
                }
                throw th;
            }
        } catch (Exception e4) {
            e = e4;
            typedArrayObtainStyledAttributes = null;
        } catch (Throwable th2) {
            th = th2;
            if (typedArray2 != null) {
                typedArray2.recycle();
            }
            throw th;
        }
        typedArrayObtainStyledAttributes.recycle();
        if (i3 != 0) {
            m0 m0Var2 = new m0(this);
            this.f = m0Var2;
            m0Var2.f2096c = typedArray.getString(2);
        } else if (i3 == 1) {
            q0 q0Var2 = new q0(this, this.b, attributeSet);
            androidx.fragment.app.f fVarV3 = androidx.fragment.app.f.v(this.b, attributeSet, iArr, com.ex.auto.R.attr.spinnerStyle);
            this.f2156g = ((TypedArray) fVarV3.f413c).getLayoutDimension(3, -2);
            q0Var2.g(fVarV3.k(1));
            q0Var2.B = typedArray.getString(2);
            fVarV3.x();
            this.f = q0Var2;
            this.f2153c = new i0(this, this, q0Var2);
        }
        textArray = typedArray.getTextArray(0);
        if (textArray != null) {
            ArrayAdapter arrayAdapter2 = new ArrayAdapter(context, R.layout.simple_spinner_item, textArray);
            arrayAdapter2.setDropDownViewResource(com.ex.auto.R.layout.support_simple_spinner_dropdown_item);
            setAdapter((SpinnerAdapter) arrayAdapter2);
        }
        fVarV.x();
        this.f2155e = true;
        spinnerAdapter = this.f2154d;
        if (spinnerAdapter != null) {
            setAdapter(spinnerAdapter);
            this.f2154d = null;
        }
        this.f2152a.e(attributeSet, com.ex.auto.R.attr.spinnerStyle);
    }

    public final int a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i3 = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int iMax = Math.max(0, getSelectedItemPosition());
        int iMin = Math.min(spinnerAdapter.getCount(), iMax + 15);
        View view = null;
        int iMax2 = 0;
        for (int iMax3 = Math.max(0, iMax - (15 - (iMin - iMax))); iMax3 < iMin; iMax3++) {
            int itemViewType = spinnerAdapter.getItemViewType(iMax3);
            if (itemViewType != i3) {
                view = null;
                i3 = itemViewType;
            }
            view = spinnerAdapter.getView(iMax3, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            iMax2 = Math.max(iMax2, view.getMeasuredWidth());
        }
        if (drawable == null) {
            return iMax2;
        }
        Rect rect = this.f2157h;
        drawable.getPadding(rect);
        return rect.left + rect.right + iMax2;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        com.google.android.material.datepicker.c cVar = this.f2152a;
        if (cVar != null) {
            cVar.a();
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownHorizontalOffset() {
        s0 s0Var = this.f;
        return s0Var != null ? s0Var.b() : super.getDropDownHorizontalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownVerticalOffset() {
        s0 s0Var = this.f;
        return s0Var != null ? s0Var.m() : super.getDropDownVerticalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownWidth() {
        return this.f != null ? this.f2156g : super.getDropDownWidth();
    }

    public final s0 getInternalPopup() {
        return this.f;
    }

    @Override // android.widget.Spinner
    public Drawable getPopupBackground() {
        s0 s0Var = this.f;
        return s0Var != null ? s0Var.c() : super.getPopupBackground();
    }

    @Override // android.widget.Spinner
    public Context getPopupContext() {
        return this.b;
    }

    @Override // android.widget.Spinner
    public CharSequence getPrompt() {
        s0 s0Var = this.f;
        return s0Var != null ? s0Var.o() : super.getPrompt();
    }

    public ColorStateList getSupportBackgroundTintList() {
        com.google.android.material.datepicker.c cVar = this.f2152a;
        if (cVar != null) {
            return cVar.c();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        com.google.android.material.datepicker.c cVar = this.f2152a;
        if (cVar != null) {
            return cVar.d();
        }
        return null;
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        s0 s0Var = this.f;
        if (s0Var == null || !s0Var.a()) {
            return;
        }
        s0Var.dismiss();
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final void onMeasure(int i3, int i4) {
        super.onMeasure(i3, i4);
        if (this.f == null || View.MeasureSpec.getMode(i3) != Integer.MIN_VALUE) {
            return;
        }
        setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), a(getAdapter(), getBackground())), View.MeasureSpec.getSize(i3)), getMeasuredHeight());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        r0 r0Var = (r0) parcelable;
        super.onRestoreInstanceState(r0Var.getSuperState());
        if (!r0Var.f2142a || (viewTreeObserver = getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new h.d(2, this));
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final Parcelable onSaveInstanceState() {
        r0 r0Var = new r0(super.onSaveInstanceState());
        s0 s0Var = this.f;
        r0Var.f2142a = s0Var != null && s0Var.a();
        return r0Var;
    }

    @Override // android.widget.Spinner, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        i0 i0Var = this.f2153c;
        if (i0Var == null || !i0Var.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.Spinner, android.view.View
    public final boolean performClick() {
        s0 s0Var = this.f;
        if (s0Var == null) {
            return super.performClick();
        }
        if (s0Var.a()) {
            return true;
        }
        s0Var.k(k0.b(this), k0.a(this));
        return true;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        com.google.android.material.datepicker.c cVar = this.f2152a;
        if (cVar != null) {
            cVar.f();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i3) {
        super.setBackgroundResource(i3);
        com.google.android.material.datepicker.c cVar = this.f2152a;
        if (cVar != null) {
            cVar.g(i3);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownHorizontalOffset(int i3) {
        s0 s0Var = this.f;
        if (s0Var == null) {
            super.setDropDownHorizontalOffset(i3);
        } else {
            s0Var.i(i3);
            s0Var.j(i3);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownVerticalOffset(int i3) {
        s0 s0Var = this.f;
        if (s0Var != null) {
            s0Var.h(i3);
        } else {
            super.setDropDownVerticalOffset(i3);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownWidth(int i3) {
        if (this.f != null) {
            this.f2156g = i3;
        } else {
            super.setDropDownWidth(i3);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundDrawable(Drawable drawable) {
        s0 s0Var = this.f;
        if (s0Var != null) {
            s0Var.g(drawable);
        } else {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundResource(int i3) {
        setPopupBackgroundDrawable(a1.b.v(getPopupContext(), i3));
    }

    @Override // android.widget.Spinner
    public void setPrompt(CharSequence charSequence) {
        s0 s0Var = this.f;
        if (s0Var != null) {
            s0Var.e(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        com.google.android.material.datepicker.c cVar = this.f2152a;
        if (cVar != null) {
            cVar.i(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        com.google.android.material.datepicker.c cVar = this.f2152a;
        if (cVar != null) {
            cVar.j(mode);
        }
    }

    @Override // android.widget.AdapterView
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.f2155e) {
            this.f2154d = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        s0 s0Var = this.f;
        if (s0Var != null) {
            Context context = this.b;
            if (context == null) {
                context = getContext();
            }
            Resources.Theme theme = context.getTheme();
            n0 n0Var = new n0();
            n0Var.f2110a = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                n0Var.b = (ListAdapter) spinnerAdapter;
            }
            if (theme != null && (spinnerAdapter instanceof ThemedSpinnerAdapter)) {
                l0.a((ThemedSpinnerAdapter) spinnerAdapter, theme);
            }
            s0Var.p(n0Var);
        }
    }
}
