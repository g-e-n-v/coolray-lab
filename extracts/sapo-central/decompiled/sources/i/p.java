package i;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.CheckBox;

/* JADX INFO: loaded from: classes.dex */
public class p extends CheckBox {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final r f2117a;
    public final com.google.android.material.datepicker.c b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final z0 f2118c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public w f2119d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p(Context context, AttributeSet attributeSet, int i3) {
        super(context, attributeSet, i3);
        a3.a(context);
        z2.a(this, getContext());
        r rVar = new r(this);
        this.f2117a = rVar;
        rVar.d(attributeSet, i3);
        com.google.android.material.datepicker.c cVar = new com.google.android.material.datepicker.c(this);
        this.b = cVar;
        cVar.e(attributeSet, i3);
        z0 z0Var = new z0(this);
        this.f2118c = z0Var;
        z0Var.f(attributeSet, i3);
        getEmojiTextViewHelper().a(attributeSet, i3);
    }

    private w getEmojiTextViewHelper() {
        if (this.f2119d == null) {
            this.f2119d = new w(this);
        }
        return this.f2119d;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        com.google.android.material.datepicker.c cVar = this.b;
        if (cVar != null) {
            cVar.a();
        }
        z0 z0Var = this.f2118c;
        if (z0Var != null) {
            z0Var.b();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        r rVar = this.f2117a;
        if (rVar != null) {
            rVar.getClass();
        }
        return compoundPaddingLeft;
    }

    public ColorStateList getSupportBackgroundTintList() {
        com.google.android.material.datepicker.c cVar = this.b;
        if (cVar != null) {
            return cVar.c();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        com.google.android.material.datepicker.c cVar = this.b;
        if (cVar != null) {
            return cVar.d();
        }
        return null;
    }

    public ColorStateList getSupportButtonTintList() {
        r rVar = this.f2117a;
        if (rVar != null) {
            return (ColorStateList) rVar.f2138a;
        }
        return null;
    }

    public PorterDuff.Mode getSupportButtonTintMode() {
        r rVar = this.f2117a;
        if (rVar != null) {
            return (PorterDuff.Mode) rVar.b;
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f2118c.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f2118c.e();
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z2) {
        super.setAllCaps(z2);
        getEmojiTextViewHelper().b(z2);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        com.google.android.material.datepicker.c cVar = this.b;
        if (cVar != null) {
            cVar.f();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i3) {
        super.setBackgroundResource(i3);
        com.google.android.material.datepicker.c cVar = this.b;
        if (cVar != null) {
            cVar.g(i3);
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        r rVar = this.f2117a;
        if (rVar != null) {
            if (rVar.f2141e) {
                rVar.f2141e = false;
            } else {
                rVar.f2141e = true;
                rVar.a();
            }
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        z0 z0Var = this.f2118c;
        if (z0Var != null) {
            z0Var.b();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        z0 z0Var = this.f2118c;
        if (z0Var != null) {
            z0Var.b();
        }
    }

    public void setEmojiCompatEnabled(boolean z2) {
        getEmojiTextViewHelper().c(z2);
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(((a1.b) getEmojiTextViewHelper().b.b).w(inputFilterArr));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        com.google.android.material.datepicker.c cVar = this.b;
        if (cVar != null) {
            cVar.i(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        com.google.android.material.datepicker.c cVar = this.b;
        if (cVar != null) {
            cVar.j(mode);
        }
    }

    public void setSupportButtonTintList(ColorStateList colorStateList) {
        r rVar = this.f2117a;
        if (rVar != null) {
            rVar.f2138a = colorStateList;
            rVar.f2139c = true;
            rVar.a();
        }
    }

    public void setSupportButtonTintMode(PorterDuff.Mode mode) {
        r rVar = this.f2117a;
        if (rVar != null) {
            rVar.b = mode;
            rVar.f2140d = true;
            rVar.a();
        }
    }

    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        z0 z0Var = this.f2118c;
        z0Var.i(colorStateList);
        z0Var.b();
    }

    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        z0 z0Var = this.f2118c;
        z0Var.j(mode);
        z0Var.b();
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(int i3) {
        setButtonDrawable(a1.b.v(getContext(), i3));
    }
}
