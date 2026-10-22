package com.google.android.material.appbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import c0.p0;
import d1.a;
import java.util.ArrayList;
import java.util.WeakHashMap;
import s.d;

/* JADX INFO: loaded from: classes.dex */
public class AppBarLayout$ScrollingViewBehavior extends a {
    public final int b;

    public AppBarLayout$ScrollingViewBehavior() {
        new Rect();
        new Rect();
    }

    public static void s(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
        }
    }

    @Override // s.a
    public final boolean d(View view, View view2) {
        int i3;
        if (((d) view2.getLayoutParams()).f3104a instanceof AppBarLayout$BaseBehavior) {
            int bottom = view2.getBottom() - view.getTop();
            int i4 = this.b;
            if (i4 == 0 || (i3 = (int) (0.0f * i4)) < 0) {
                i4 = 0;
            } else if (i3 <= i4) {
                i4 = i3;
            }
            int i5 = bottom - i4;
            WeakHashMap weakHashMap = p0.f727a;
            view.offsetTopAndBottom(i5);
        }
        return false;
    }

    @Override // s.a
    public final boolean h(CoordinatorLayout coordinatorLayout, View view) {
        int i3 = view.getLayoutParams().height;
        if (i3 != -1 && i3 != -2) {
            return false;
        }
        s(coordinatorLayout.j(view));
        return false;
    }

    @Override // s.a
    public final void l(CoordinatorLayout coordinatorLayout, View view) {
        s(coordinatorLayout.j(view));
    }

    @Override // d1.a
    public final void r(CoordinatorLayout coordinatorLayout, View view, int i3) {
        s(coordinatorLayout.j(view));
        coordinatorLayout.q(view, i3);
    }

    public AppBarLayout$ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
        new Rect();
        new Rect();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b1.a.f686q);
        this.b = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        typedArrayObtainStyledAttributes.recycle();
    }
}
