package i;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ViewTreeObserver;
import android.widget.ListAdapter;
import com.ex.auto.R;

/* JADX INFO: loaded from: classes.dex */
public final class q0 extends c2 implements s0 {
    public CharSequence B;
    public n0 C;
    public final Rect D;
    public int E;
    public final /* synthetic */ t0 F;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q0(t0 t0Var, Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.spinnerStyle, 0);
        this.F = t0Var;
        this.D = new Rect();
        this.f2002o = t0Var;
        this.f2011x = true;
        this.f2012y.setFocusable(true);
        this.f2003p = new o0(0, this);
    }

    @Override // i.s0
    public final void e(CharSequence charSequence) {
        this.B = charSequence;
    }

    @Override // i.s0
    public final void i(int i3) {
        this.E = i3;
    }

    @Override // i.s0
    public final void k(int i3, int i4) {
        ViewTreeObserver viewTreeObserver;
        b0 b0Var = this.f2012y;
        boolean zIsShowing = b0Var.isShowing();
        s();
        b0Var.setInputMethodMode(2);
        d();
        q1 q1Var = this.f1991c;
        q1Var.setChoiceMode(1);
        k0.d(q1Var, i3);
        k0.c(q1Var, i4);
        t0 t0Var = this.F;
        int selectedItemPosition = t0Var.getSelectedItemPosition();
        q1 q1Var2 = this.f1991c;
        if (b0Var.isShowing() && q1Var2 != null) {
            q1Var2.setListSelectionHidden(false);
            q1Var2.setSelection(selectedItemPosition);
            if (q1Var2.getChoiceMode() != 0) {
                q1Var2.setItemChecked(selectedItemPosition, true);
            }
        }
        if (zIsShowing || (viewTreeObserver = t0Var.getViewTreeObserver()) == null) {
            return;
        }
        h.d dVar = new h.d(3, this);
        viewTreeObserver.addOnGlobalLayoutListener(dVar);
        b0Var.setOnDismissListener(new p0(this, dVar));
    }

    @Override // i.s0
    public final CharSequence o() {
        return this.B;
    }

    @Override // i.c2, i.s0
    public final void p(ListAdapter listAdapter) {
        super.p(listAdapter);
        this.C = (n0) listAdapter;
    }

    public final void s() {
        int i3;
        t0 t0Var = this.F;
        Rect rect = t0Var.f2157h;
        b0 b0Var = this.f2012y;
        Drawable background = b0Var.getBackground();
        if (background != null) {
            background.getPadding(rect);
            i3 = p3.a(t0Var) ? rect.right : -rect.left;
        } else {
            i3 = 0;
            rect.right = 0;
            rect.left = 0;
        }
        int paddingLeft = t0Var.getPaddingLeft();
        int paddingRight = t0Var.getPaddingRight();
        int width = t0Var.getWidth();
        int i4 = t0Var.f2156g;
        if (i4 == -2) {
            int iA = t0Var.a(this.C, b0Var.getBackground());
            int i5 = (t0Var.getContext().getResources().getDisplayMetrics().widthPixels - rect.left) - rect.right;
            if (iA > i5) {
                iA = i5;
            }
            r(Math.max(iA, (width - paddingLeft) - paddingRight));
        } else if (i4 == -1) {
            r((width - paddingLeft) - paddingRight);
        } else {
            r(i4);
        }
        this.f = p3.a(t0Var) ? (((width - paddingRight) - this.f1993e) - this.E) + i3 : paddingLeft + this.E + i3;
    }
}
