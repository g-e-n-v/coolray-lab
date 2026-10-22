package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import c0.a0;
import c0.p0;
import c0.w0;
import com.ex.auto.R;
import com.google.android.material.datepicker.k;
import h.b0;
import h.m;
import i.f;
import i.j;
import i.p3;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public class ActionBarContextView extends ViewGroup {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final i.a f137a;
    public final Context b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ActionMenuView f138c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public j f139d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f140e;
    public w0 f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f141g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f142h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public CharSequence f143i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public CharSequence f144j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public View f145k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public View f146l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public View f147m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public LinearLayout f148n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public TextView f149o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public TextView f150p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f151q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f152r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f153s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f154t;

    public ActionBarContextView(Context context, AttributeSet attributeSet) {
        int resourceId;
        super(context, attributeSet, R.attr.actionModeStyle);
        this.f137a = new i.a(this);
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(R.attr.actionBarPopupTheme, typedValue, true) || typedValue.resourceId == 0) {
            this.b = context;
        } else {
            this.b = new ContextThemeWrapper(context, typedValue.resourceId);
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d.a.f1498d, R.attr.actionModeStyle, 0);
        Drawable drawable = (!typedArrayObtainStyledAttributes.hasValue(0) || (resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0)) == 0) ? typedArrayObtainStyledAttributes.getDrawable(0) : a1.b.v(context, resourceId);
        WeakHashMap weakHashMap = p0.f727a;
        a0.q(this, drawable);
        this.f151q = typedArrayObtainStyledAttributes.getResourceId(5, 0);
        this.f152r = typedArrayObtainStyledAttributes.getResourceId(4, 0);
        this.f140e = typedArrayObtainStyledAttributes.getLayoutDimension(3, 0);
        this.f154t = typedArrayObtainStyledAttributes.getResourceId(2, R.layout.abc_action_mode_close_item_material);
        typedArrayObtainStyledAttributes.recycle();
    }

    public static int f(View view, int i3, int i4) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE), i4);
        return Math.max(0, i3 - view.getMeasuredWidth());
    }

    public static int g(View view, int i3, int i4, int i5, boolean z2) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i6 = ((i5 - measuredHeight) / 2) + i4;
        if (z2) {
            view.layout(i3 - measuredWidth, i6, i3, measuredHeight + i6);
        } else {
            view.layout(i3, i6, i3 + measuredWidth, measuredHeight + i6);
        }
        return z2 ? -measuredWidth : measuredWidth;
    }

    public final void c(g.a aVar) {
        View view = this.f145k;
        if (view == null) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(this.f154t, (ViewGroup) this, false);
            this.f145k = viewInflate;
            addView(viewInflate);
        } else if (view.getParent() == null) {
            addView(this.f145k);
        }
        View viewFindViewById = this.f145k.findViewById(R.id.action_mode_close_button);
        this.f146l = viewFindViewById;
        viewFindViewById.setOnClickListener(new k(3, aVar));
        m mVarD = aVar.d();
        j jVar = this.f139d;
        if (jVar != null) {
            jVar.d();
            f fVar = jVar.f2064t;
            if (fVar != null && fVar.b()) {
                fVar.f1948i.dismiss();
            }
        }
        j jVar2 = new j(getContext());
        this.f139d = jVar2;
        jVar2.f2056l = true;
        jVar2.f2057m = true;
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
        mVarD.b(this.f139d, this.b);
        j jVar3 = this.f139d;
        b0 b0Var = jVar3.f2052h;
        if (b0Var == null) {
            b0 b0Var2 = (b0) jVar3.f2049d.inflate(jVar3.f, (ViewGroup) this, false);
            jVar3.f2052h = b0Var2;
            b0Var2.a(jVar3.f2048c);
            jVar3.e();
        }
        b0 b0Var3 = jVar3.f2052h;
        if (b0Var != b0Var3) {
            ((ActionMenuView) b0Var3).setPresenter(jVar3);
        }
        ActionMenuView actionMenuView = (ActionMenuView) b0Var3;
        this.f138c = actionMenuView;
        WeakHashMap weakHashMap = p0.f727a;
        a0.q(actionMenuView, null);
        addView(this.f138c, layoutParams);
    }

    public final void d() {
        if (this.f148n == null) {
            LayoutInflater.from(getContext()).inflate(R.layout.abc_action_bar_title_item, this);
            LinearLayout linearLayout = (LinearLayout) getChildAt(getChildCount() - 1);
            this.f148n = linearLayout;
            this.f149o = (TextView) linearLayout.findViewById(R.id.action_bar_title);
            this.f150p = (TextView) this.f148n.findViewById(R.id.action_bar_subtitle);
            int i3 = this.f151q;
            if (i3 != 0) {
                this.f149o.setTextAppearance(getContext(), i3);
            }
            int i4 = this.f152r;
            if (i4 != 0) {
                this.f150p.setTextAppearance(getContext(), i4);
            }
        }
        this.f149o.setText(this.f143i);
        this.f150p.setText(this.f144j);
        boolean zIsEmpty = TextUtils.isEmpty(this.f143i);
        boolean zIsEmpty2 = TextUtils.isEmpty(this.f144j);
        this.f150p.setVisibility(!zIsEmpty2 ? 0 : 8);
        this.f148n.setVisibility((zIsEmpty && zIsEmpty2) ? 8 : 0);
        if (this.f148n.getParent() == null) {
            addView(this.f148n);
        }
    }

    public final void e() {
        removeAllViews();
        this.f147m = null;
        this.f138c = null;
        this.f139d = null;
        View view = this.f146l;
        if (view != null) {
            view.setOnClickListener(null);
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    public int getAnimatedVisibility() {
        return this.f != null ? this.f137a.b : getVisibility();
    }

    public int getContentHeight() {
        return this.f140e;
    }

    public CharSequence getSubtitle() {
        return this.f144j;
    }

    public CharSequence getTitle() {
        return this.f143i;
    }

    @Override // android.view.View
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public final void setVisibility(int i3) {
        if (i3 != getVisibility()) {
            w0 w0Var = this.f;
            if (w0Var != null) {
                w0Var.b();
            }
            super.setVisibility(i3);
        }
    }

    public final w0 i(int i3, long j3) {
        w0 w0Var = this.f;
        if (w0Var != null) {
            w0Var.b();
        }
        i.a aVar = this.f137a;
        if (i3 != 0) {
            w0 w0VarA = p0.a(this);
            w0VarA.a(0.0f);
            w0VarA.c(j3);
            aVar.f1970c.f = w0VarA;
            aVar.b = i3;
            w0VarA.d(aVar);
            return w0VarA;
        }
        if (getVisibility() != 0) {
            setAlpha(0.0f);
        }
        w0 w0VarA2 = p0.a(this);
        w0VarA2.a(1.0f);
        w0VarA2.c(j3);
        aVar.f1970c.f = w0VarA2;
        aVar.b = i3;
        w0VarA2.d(aVar);
        return w0VarA2;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        int i3;
        super.onConfigurationChanged(configuration);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(null, d.a.f1496a, R.attr.actionBarStyle, 0);
        setContentHeight(typedArrayObtainStyledAttributes.getLayoutDimension(13, 0));
        typedArrayObtainStyledAttributes.recycle();
        j jVar = this.f139d;
        if (jVar != null) {
            Configuration configuration2 = jVar.b.getResources().getConfiguration();
            int i4 = configuration2.screenWidthDp;
            int i5 = configuration2.screenHeightDp;
            if (configuration2.smallestScreenWidthDp > 600 || i4 > 600 || ((i4 > 960 && i5 > 720) || (i4 > 720 && i5 > 960))) {
                i3 = 5;
            } else if (i4 >= 500 || ((i4 > 640 && i5 > 480) || (i4 > 480 && i5 > 640))) {
                i3 = 4;
            } else {
                i3 = i4 >= 360 ? 3 : 2;
            }
            jVar.f2060p = i3;
            m mVar = jVar.f2048c;
            if (mVar != null) {
                mVar.p(true);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        j jVar = this.f139d;
        if (jVar != null) {
            jVar.d();
            f fVar = this.f139d.f2064t;
            if (fVar == null || !fVar.b()) {
                return;
            }
            fVar.f1948i.dismiss();
        }
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f142h = false;
        }
        if (!this.f142h) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.f142h = true;
            }
        }
        if (actionMasked != 10 && actionMasked != 3) {
            return true;
        }
        this.f142h = false;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i3, int i4, int i5, int i6) {
        boolean zA = p3.a(this);
        int paddingRight = zA ? (i5 - i3) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i6 - i4) - getPaddingTop()) - getPaddingBottom();
        View view = this.f145k;
        if (view != null && view.getVisibility() != 8) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f145k.getLayoutParams();
            int i7 = zA ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
            int i8 = zA ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
            int i9 = zA ? paddingRight - i7 : paddingRight + i7;
            int iG = g(this.f145k, i9, paddingTop, paddingTop2, zA) + i9;
            paddingRight = zA ? iG - i8 : iG + i8;
        }
        LinearLayout linearLayout = this.f148n;
        if (linearLayout != null && this.f147m == null && linearLayout.getVisibility() != 8) {
            paddingRight += g(this.f148n, paddingRight, paddingTop, paddingTop2, zA);
        }
        View view2 = this.f147m;
        if (view2 != null) {
            g(view2, paddingRight, paddingTop, paddingTop2, zA);
        }
        int paddingLeft = zA ? getPaddingLeft() : (i5 - i3) - getPaddingRight();
        ActionMenuView actionMenuView = this.f138c;
        if (actionMenuView != null) {
            g(actionMenuView, paddingLeft, paddingTop, paddingTop2, !zA);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i3, int i4) {
        if (View.MeasureSpec.getMode(i3) != 1073741824) {
            throw new IllegalStateException(getClass().getSimpleName().concat(" can only be used with android:layout_width=\"match_parent\" (or fill_parent)"));
        }
        if (View.MeasureSpec.getMode(i4) == 0) {
            throw new IllegalStateException(getClass().getSimpleName().concat(" can only be used with android:layout_height=\"wrap_content\""));
        }
        int size = View.MeasureSpec.getSize(i3);
        int size2 = this.f140e;
        if (size2 <= 0) {
            size2 = View.MeasureSpec.getSize(i4);
        }
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int iMin = size2 - paddingBottom;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iMin, Integer.MIN_VALUE);
        View view = this.f145k;
        if (view != null) {
            int iF = f(view, paddingLeft, iMakeMeasureSpec);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f145k.getLayoutParams();
            paddingLeft = iF - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
        }
        ActionMenuView actionMenuView = this.f138c;
        if (actionMenuView != null && actionMenuView.getParent() == this) {
            paddingLeft = f(this.f138c, paddingLeft, iMakeMeasureSpec);
        }
        LinearLayout linearLayout = this.f148n;
        if (linearLayout != null && this.f147m == null) {
            if (this.f153s) {
                this.f148n.measure(View.MeasureSpec.makeMeasureSpec(0, 0), iMakeMeasureSpec);
                int measuredWidth = this.f148n.getMeasuredWidth();
                boolean z2 = measuredWidth <= paddingLeft;
                if (z2) {
                    paddingLeft -= measuredWidth;
                }
                this.f148n.setVisibility(z2 ? 0 : 8);
            } else {
                paddingLeft = f(linearLayout, paddingLeft, iMakeMeasureSpec);
            }
        }
        View view2 = this.f147m;
        if (view2 != null) {
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            int i5 = layoutParams.width;
            int i6 = i5 != -2 ? 1073741824 : Integer.MIN_VALUE;
            if (i5 >= 0) {
                paddingLeft = Math.min(i5, paddingLeft);
            }
            int i7 = layoutParams.height;
            int i8 = i7 == -2 ? Integer.MIN_VALUE : 1073741824;
            if (i7 >= 0) {
                iMin = Math.min(i7, iMin);
            }
            this.f147m.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, i6), View.MeasureSpec.makeMeasureSpec(iMin, i8));
        }
        if (this.f140e > 0) {
            setMeasuredDimension(size, size2);
            return;
        }
        int childCount = getChildCount();
        int i9 = 0;
        for (int i10 = 0; i10 < childCount; i10++) {
            int measuredHeight = getChildAt(i10).getMeasuredHeight() + paddingBottom;
            if (measuredHeight > i9) {
                i9 = measuredHeight;
            }
        }
        setMeasuredDimension(size, i9);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f141g = false;
        }
        if (!this.f141g) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.f141g = true;
            }
        }
        if (actionMasked != 1 && actionMasked != 3) {
            return true;
        }
        this.f141g = false;
        return true;
    }

    public void setContentHeight(int i3) {
        this.f140e = i3;
    }

    public void setCustomView(View view) {
        LinearLayout linearLayout;
        View view2 = this.f147m;
        if (view2 != null) {
            removeView(view2);
        }
        this.f147m = view;
        if (view != null && (linearLayout = this.f148n) != null) {
            removeView(linearLayout);
            this.f148n = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void setSubtitle(CharSequence charSequence) {
        this.f144j = charSequence;
        d();
    }

    public void setTitle(CharSequence charSequence) {
        this.f143i = charSequence;
        d();
        p0.j(this, charSequence);
    }

    public void setTitleOptional(boolean z2) {
        if (z2 != this.f153s) {
            requestLayout();
        }
        this.f153s = z2;
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }
}
