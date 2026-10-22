package com.google.android.material.behavior;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import s.a;

/* JADX INFO: loaded from: classes.dex */
public class HideBottomViewOnScrollBehavior<V extends View> extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1317a = 0;
    public int b = 2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ViewPropertyAnimator f1318c;

    public HideBottomViewOnScrollBehavior() {
    }

    @Override // s.a
    public boolean g(CoordinatorLayout coordinatorLayout, View view, int i3) {
        this.f1317a = view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).bottomMargin;
        return false;
    }

    @Override // s.a
    public final void k(CoordinatorLayout coordinatorLayout, View view, int i3, int i4, int i5, int[] iArr) {
        if (i3 > 0) {
            if (this.b == 1) {
                return;
            }
            ViewPropertyAnimator viewPropertyAnimator = this.f1318c;
            if (viewPropertyAnimator != null) {
                viewPropertyAnimator.cancel();
                view.clearAnimation();
            }
            this.b = 1;
            this.f1318c = view.animate().translationY(this.f1317a).setInterpolator(c1.a.f750c).setDuration(175L).setListener(new e1.a(0, this));
            return;
        }
        if (i3 >= 0 || this.b == 2) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator2 = this.f1318c;
        if (viewPropertyAnimator2 != null) {
            viewPropertyAnimator2.cancel();
            view.clearAnimation();
        }
        this.b = 2;
        this.f1318c = view.animate().translationY(0).setInterpolator(c1.a.f751d).setDuration(225L).setListener(new e1.a(0, this));
    }

    @Override // s.a
    public boolean o(View view, int i3, int i4) {
        return i3 == 2;
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
    }
}
