package com.google.android.material.snackbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import b1.a;
import c0.b0;
import c0.p0;
import com.ex.auto.R;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public class SnackbarContentLayout extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public TextView f1445a;
    public Button b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1446c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1447d;

    public SnackbarContentLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.f688s);
        this.f1446c = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -1);
        this.f1447d = typedArrayObtainStyledAttributes.getDimensionPixelSize(7, -1);
        typedArrayObtainStyledAttributes.recycle();
    }

    public final boolean a(int i3, int i4, int i5) {
        boolean z2;
        if (i3 != getOrientation()) {
            setOrientation(i3);
            z2 = true;
        } else {
            z2 = false;
        }
        if (this.f1445a.getPaddingTop() == i4 && this.f1445a.getPaddingBottom() == i5) {
            return z2;
        }
        TextView textView = this.f1445a;
        WeakHashMap weakHashMap = p0.f727a;
        if (b0.g(textView)) {
            b0.k(textView, b0.f(textView), i4, b0.e(textView), i5);
            return true;
        }
        textView.setPadding(textView.getPaddingLeft(), i4, textView.getPaddingRight(), i5);
        return true;
    }

    public Button getActionView() {
        return this.b;
    }

    public TextView getMessageView() {
        return this.f1445a;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f1445a = (TextView) findViewById(R.id.snackbar_text);
        this.b = (Button) findViewById(R.id.snackbar_action);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i3, int i4) {
        super.onMeasure(i3, i4);
        int i5 = this.f1446c;
        if (i5 > 0 && getMeasuredWidth() > i5) {
            i3 = View.MeasureSpec.makeMeasureSpec(i5, 1073741824);
            super.onMeasure(i3, i4);
        }
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.design_snackbar_padding_vertical_2lines);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.design_snackbar_padding_vertical);
        boolean z2 = this.f1445a.getLayout().getLineCount() > 1;
        if (!z2 || this.f1447d <= 0 || this.b.getMeasuredWidth() <= this.f1447d) {
            if (!z2) {
                dimensionPixelSize = dimensionPixelSize2;
            }
            if (!a(0, dimensionPixelSize, dimensionPixelSize)) {
                return;
            }
        } else if (!a(1, dimensionPixelSize, dimensionPixelSize - dimensionPixelSize2)) {
            return;
        }
        super.onMeasure(i3, i4);
    }

    public void setMaxInlineActionWidth(int i3) {
        this.f1447d = i3;
    }
}
