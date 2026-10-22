package com.google.android.material.textview;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import i.b1;
import v1.a;

/* JADX INFO: loaded from: classes.dex */
public class MaterialTextView extends b1 {
    public MaterialTextView(Context context, AttributeSet attributeSet) {
        super(a.a(context, attributeSet, R.attr.textViewStyle, 0), attributeSet, R.attr.textViewStyle);
        Context context2 = getContext();
        TypedValue typedValueN = k1.a.N(context2, com.ex.auto.R.attr.textAppearanceLineHeightEnabled);
        if (typedValueN != null && typedValueN.type == 18 && typedValueN.data == 0) {
            return;
        }
        Resources.Theme theme = context2.getTheme();
        int[] iArr = b1.a.f685p;
        TypedArray typedArrayObtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, iArr, R.attr.textViewStyle, 0);
        int iF = f(context2, typedArrayObtainStyledAttributes, 1, 2);
        typedArrayObtainStyledAttributes.recycle();
        if (iF != -1) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes2 = theme.obtainStyledAttributes(attributeSet, iArr, R.attr.textViewStyle, 0);
        int resourceId = typedArrayObtainStyledAttributes2.getResourceId(0, -1);
        typedArrayObtainStyledAttributes2.recycle();
        if (resourceId != -1) {
            TypedArray typedArrayObtainStyledAttributes3 = theme.obtainStyledAttributes(resourceId, b1.a.f684o);
            int iF2 = f(getContext(), typedArrayObtainStyledAttributes3, 0, 1);
            typedArrayObtainStyledAttributes3.recycle();
            if (iF2 >= 0) {
                setLineHeight(iF2);
            }
        }
    }

    public static int f(Context context, TypedArray typedArray, int... iArr) {
        int dimensionPixelSize = -1;
        for (int i3 = 0; i3 < iArr.length && dimensionPixelSize < 0; i3++) {
            int i4 = iArr[i3];
            TypedValue typedValue = new TypedValue();
            if (typedArray.getValue(i4, typedValue) && typedValue.type == 2) {
                TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{typedValue.data});
                int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -1);
                typedArrayObtainStyledAttributes.recycle();
                dimensionPixelSize = dimensionPixelSize2;
            } else {
                dimensionPixelSize = typedArray.getDimensionPixelSize(i4, -1);
            }
        }
        return dimensionPixelSize;
    }

    @Override // i.b1, android.widget.TextView
    public final void setTextAppearance(Context context, int i3) {
        super.setTextAppearance(context, i3);
        TypedValue typedValueN = k1.a.N(context, com.ex.auto.R.attr.textAppearanceLineHeightEnabled);
        if (typedValueN != null && typedValueN.type == 18 && typedValueN.data == 0) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(i3, b1.a.f684o);
        int iF = f(getContext(), typedArrayObtainStyledAttributes, 0, 1);
        typedArrayObtainStyledAttributes.recycle();
        if (iF >= 0) {
            setLineHeight(iF);
        }
    }
}
