package com.google.android.material.appbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.appcompat.widget.Toolbar;
import c0.a0;
import c0.f0;
import c0.p0;
import com.ex.auto.R;
import java.util.WeakHashMap;
import s1.g;
import v1.a;

/* JADX INFO: loaded from: classes.dex */
public class MaterialToolbar extends Toolbar {
    public MaterialToolbar(Context context, AttributeSet attributeSet) {
        super(a.a(context, attributeSet, R.attr.toolbarStyle, R.style.Widget_MaterialComponents_Toolbar), attributeSet, 0);
        Context context2 = getContext();
        Drawable background = getBackground();
        if (background == null || (background instanceof ColorDrawable)) {
            g gVar = new g();
            gVar.i(ColorStateList.valueOf(background != null ? ((ColorDrawable) background).getColor() : 0));
            gVar.g(context2);
            WeakHashMap weakHashMap = p0.f727a;
            gVar.h(f0.i(this));
            a0.q(this, gVar);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable background = getBackground();
        if (background instanceof g) {
            k1.a.Q(this, (g) background);
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        Drawable background = getBackground();
        if (background instanceof g) {
            ((g) background).h(f);
        }
    }
}
