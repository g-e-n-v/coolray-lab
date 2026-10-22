package com.google.android.material.theme;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.ex.auto.R;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textview.MaterialTextView;
import e.b0;
import f0.b;
import i.b1;
import i.d0;
import i.n;
import i.p;
import i1.a;
import n1.i;
import u1.o;

/* JADX INFO: loaded from: classes.dex */
public class MaterialComponentsViewInflater extends b0 {
    @Override // e.b0
    public final n a(Context context, AttributeSet attributeSet) {
        return new o(context, attributeSet);
    }

    @Override // e.b0
    public final i.o b(Context context, AttributeSet attributeSet) {
        return new MaterialButton(context, attributeSet);
    }

    @Override // e.b0
    public final p c(Context context, AttributeSet attributeSet) {
        a aVar = new a(v1.a.a(context, attributeSet, R.attr.checkboxStyle, R.style.Widget_MaterialComponents_CompoundButton_CheckBox), attributeSet, R.attr.checkboxStyle);
        Context context2 = aVar.getContext();
        TypedArray typedArrayD = i.d(context2, attributeSet, b1.a.f681l, R.attr.checkboxStyle, R.style.Widget_MaterialComponents_CompoundButton_CheckBox, new int[0]);
        if (typedArrayD.hasValue(0)) {
            b.c(aVar, k1.a.z(context2, typedArrayD, 0));
        }
        aVar.f = typedArrayD.getBoolean(1, false);
        typedArrayD.recycle();
        return aVar;
    }

    @Override // e.b0
    public final d0 d(Context context, AttributeSet attributeSet) {
        o1.a aVar = new o1.a(v1.a.a(context, attributeSet, R.attr.radioButtonStyle, R.style.Widget_MaterialComponents_CompoundButton_RadioButton), attributeSet);
        Context context2 = aVar.getContext();
        TypedArray typedArrayD = i.d(context2, attributeSet, b1.a.f682m, R.attr.radioButtonStyle, R.style.Widget_MaterialComponents_CompoundButton_RadioButton, new int[0]);
        if (typedArrayD.hasValue(0)) {
            b.c(aVar, k1.a.z(context2, typedArrayD, 0));
        }
        aVar.f = typedArrayD.getBoolean(1, false);
        typedArrayD.recycle();
        return aVar;
    }

    @Override // e.b0
    public final b1 e(Context context, AttributeSet attributeSet) {
        return new MaterialTextView(context, attributeSet);
    }
}
