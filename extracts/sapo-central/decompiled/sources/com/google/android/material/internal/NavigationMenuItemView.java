package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import c0.p0;
import com.google.android.material.datepicker.i;
import h.a0;
import h.o;
import i.m3;
import i.u1;
import java.util.WeakHashMap;
import n1.e;
import u.n;
import w.b;

/* JADX INFO: loaded from: classes.dex */
public class NavigationMenuItemView extends e implements a0 {
    public static final int[] F = {R.attr.state_checked};
    public o A;
    public ColorStateList B;
    public boolean C;
    public Drawable D;
    public final i E;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f1439v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f1440w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f1441x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final CheckedTextView f1442y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public FrameLayout f1443z;

    public NavigationMenuItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        i iVar = new i(2, this);
        this.E = iVar;
        setOrientation(0);
        LayoutInflater.from(context).inflate(com.ex.auto.R.layout.design_navigation_menu_item, (ViewGroup) this, true);
        setIconSize(context.getResources().getDimensionPixelSize(com.ex.auto.R.dimen.design_navigation_icon_size));
        CheckedTextView checkedTextView = (CheckedTextView) findViewById(com.ex.auto.R.id.design_menu_item_text);
        this.f1442y = checkedTextView;
        checkedTextView.setDuplicateParentStateEnabled(true);
        p0.i(checkedTextView, iVar);
    }

    private void setActionView(View view) {
        if (view != null) {
            if (this.f1443z == null) {
                this.f1443z = (FrameLayout) ((ViewStub) findViewById(com.ex.auto.R.id.design_menu_item_action_area_stub)).inflate();
            }
            this.f1443z.removeAllViews();
            this.f1443z.addView(view);
        }
    }

    @Override // h.a0
    public final void c(o oVar) {
        StateListDrawable stateListDrawable;
        this.A = oVar;
        int i3 = oVar.f1910a;
        if (i3 > 0) {
            setId(i3);
        }
        setVisibility(oVar.isVisible() ? 0 : 8);
        if (getBackground() == null) {
            TypedValue typedValue = new TypedValue();
            if (getContext().getTheme().resolveAttribute(com.ex.auto.R.attr.colorControlHighlight, typedValue, true)) {
                stateListDrawable = new StateListDrawable();
                stateListDrawable.addState(F, new ColorDrawable(typedValue.data));
                stateListDrawable.addState(ViewGroup.EMPTY_STATE_SET, new ColorDrawable(0));
            } else {
                stateListDrawable = null;
            }
            WeakHashMap weakHashMap = p0.f727a;
            c0.a0.q(this, stateListDrawable);
        }
        setCheckable(oVar.isCheckable());
        setChecked(oVar.isChecked());
        setEnabled(oVar.isEnabled());
        setTitle(oVar.f1913e);
        setIcon(oVar.getIcon());
        setActionView(oVar.getActionView());
        setContentDescription(oVar.f1924q);
        m3.a(this, oVar.f1925r);
        o oVar2 = this.A;
        CharSequence charSequence = oVar2.f1913e;
        CheckedTextView checkedTextView = this.f1442y;
        if (charSequence == null && oVar2.getIcon() == null && this.A.getActionView() != null) {
            checkedTextView.setVisibility(8);
            FrameLayout frameLayout = this.f1443z;
            if (frameLayout != null) {
                u1 u1Var = (u1) frameLayout.getLayoutParams();
                ((LinearLayout.LayoutParams) u1Var).width = -1;
                this.f1443z.setLayoutParams(u1Var);
                return;
            }
            return;
        }
        checkedTextView.setVisibility(0);
        FrameLayout frameLayout2 = this.f1443z;
        if (frameLayout2 != null) {
            u1 u1Var2 = (u1) frameLayout2.getLayoutParams();
            ((LinearLayout.LayoutParams) u1Var2).width = -2;
            this.f1443z.setLayoutParams(u1Var2);
        }
    }

    @Override // h.a0
    public o getItemData() {
        return this.A;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i3) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i3 + 1);
        o oVar = this.A;
        if (oVar != null && oVar.isCheckable() && this.A.isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, F);
        }
        return iArrOnCreateDrawableState;
    }

    public void setCheckable(boolean z2) {
        refreshDrawableState();
        if (this.f1441x != z2) {
            this.f1441x = z2;
            this.E.h(this.f1442y, 2048);
        }
    }

    public void setChecked(boolean z2) {
        refreshDrawableState();
        this.f1442y.setChecked(z2);
    }

    public void setHorizontalPadding(int i3) {
        setPadding(i3, 0, i3, 0);
    }

    public void setIcon(Drawable drawable) {
        if (drawable != null) {
            if (this.C) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable = drawable.mutate();
                b.h(drawable, this.B);
            }
            int i3 = this.f1439v;
            drawable.setBounds(0, 0, i3, i3);
        } else if (this.f1440w) {
            if (this.D == null) {
                Resources resources = getResources();
                Resources.Theme theme = getContext().getTheme();
                ThreadLocal threadLocal = n.f3235a;
                Drawable drawableA = u.i.a(resources, com.ex.auto.R.drawable.navigation_empty_icon, theme);
                this.D = drawableA;
                if (drawableA != null) {
                    int i4 = this.f1439v;
                    drawableA.setBounds(0, 0, i4, i4);
                }
            }
            drawable = this.D;
        }
        f0.o.e(this.f1442y, drawable, null, null, null);
    }

    public void setIconPadding(int i3) {
        this.f1442y.setCompoundDrawablePadding(i3);
    }

    public void setIconSize(int i3) {
        this.f1439v = i3;
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.B = colorStateList;
        this.C = colorStateList != null;
        o oVar = this.A;
        if (oVar != null) {
            setIcon(oVar.getIcon());
        }
    }

    public void setMaxLines(int i3) {
        this.f1442y.setMaxLines(i3);
    }

    public void setNeedsEmptyIcon(boolean z2) {
        this.f1440w = z2;
    }

    public void setTextAppearance(int i3) {
        this.f1442y.setTextAppearance(i3);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.f1442y.setTextColor(colorStateList);
    }

    public void setTitle(CharSequence charSequence) {
        this.f1442y.setText(charSequence);
    }
}
