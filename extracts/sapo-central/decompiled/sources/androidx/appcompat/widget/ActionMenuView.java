package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import androidx.appcompat.view.menu.ActionMenuItemView;
import h.b0;
import h.l;
import h.m;
import h.o;
import i.e3;
import i.f;
import i.i;
import i.j;
import i.k;
import i.p3;
import i.u1;
import i.v1;
import s1.e;

/* JADX INFO: loaded from: classes.dex */
public class ActionMenuView extends v1 implements l, b0 {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public m f179p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Context f180q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f181r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f182s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public j f183t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public e3 f184u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f185v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f186w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int f187x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int f188y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public i.m f189z;

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        setBaselineAligned(false);
        float f = context.getResources().getDisplayMetrics().density;
        this.f187x = (int) (56.0f * f);
        this.f188y = (int) (f * 4.0f);
        this.f180q = context;
        this.f181r = 0;
    }

    public static i.l j() {
        i.l lVar = new i.l(-2, -2);
        lVar.f2078a = false;
        ((LinearLayout.LayoutParams) lVar).gravity = 16;
        return lVar;
    }

    public static i.l k(ViewGroup.LayoutParams layoutParams) {
        i.l lVar;
        if (layoutParams == null) {
            return j();
        }
        if (layoutParams instanceof i.l) {
            i.l lVar2 = (i.l) layoutParams;
            lVar = new i.l(lVar2);
            lVar.f2078a = lVar2.f2078a;
        } else {
            lVar = new i.l(layoutParams);
        }
        if (((LinearLayout.LayoutParams) lVar).gravity <= 0) {
            ((LinearLayout.LayoutParams) lVar).gravity = 16;
        }
        return lVar;
    }

    @Override // h.b0
    public final void a(m mVar) {
        this.f179p = mVar;
    }

    @Override // h.l
    public final boolean b(o oVar) {
        return this.f179p.q(oVar, null, 0);
    }

    @Override // i.v1, android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof i.l;
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    @Override // i.v1
    /* JADX INFO: renamed from: f */
    public final /* bridge */ /* synthetic */ u1 generateDefaultLayoutParams() {
        return j();
    }

    @Override // i.v1
    /* JADX INFO: renamed from: g */
    public final u1 generateLayoutParams(AttributeSet attributeSet) {
        return new i.l(getContext(), attributeSet);
    }

    @Override // i.v1, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return j();
    }

    @Override // i.v1, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return k(layoutParams);
    }

    public Menu getMenu() {
        if (this.f179p == null) {
            Context context = getContext();
            m mVar = new m(context);
            this.f179p = mVar;
            mVar.f1889e = new androidx.emoji2.text.m(18, this);
            j jVar = new j(context);
            this.f183t = jVar;
            jVar.f2056l = true;
            jVar.f2057m = true;
            jVar.f2050e = new e();
            this.f179p.b(jVar, this.f180q);
            j jVar2 = this.f183t;
            jVar2.f2052h = this;
            this.f179p = jVar2.f2048c;
        }
        return this.f179p;
    }

    public Drawable getOverflowIcon() {
        getMenu();
        j jVar = this.f183t;
        i iVar = jVar.f2053i;
        if (iVar != null) {
            return iVar.getDrawable();
        }
        if (jVar.f2055k) {
            return jVar.f2054j;
        }
        return null;
    }

    public int getPopupTheme() {
        return this.f181r;
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // i.v1
    /* JADX INFO: renamed from: h */
    public final /* bridge */ /* synthetic */ u1 generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return k(layoutParams);
    }

    public final boolean l(int i3) {
        boolean zA = false;
        if (i3 == 0) {
            return false;
        }
        KeyEvent.Callback childAt = getChildAt(i3 - 1);
        KeyEvent.Callback childAt2 = getChildAt(i3);
        if (i3 < getChildCount() && (childAt instanceof k)) {
            zA = ((k) childAt).a();
        }
        return (i3 <= 0 || !(childAt2 instanceof k)) ? zA : ((k) childAt2).b() | zA;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        j jVar = this.f183t;
        if (jVar != null) {
            jVar.e();
            if (this.f183t.f()) {
                this.f183t.d();
                this.f183t.l();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        j jVar = this.f183t;
        if (jVar != null) {
            jVar.d();
            f fVar = jVar.f2064t;
            if (fVar == null || !fVar.b()) {
                return;
            }
            fVar.f1948i.dismiss();
        }
    }

    @Override // i.v1, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i3, int i4, int i5, int i6) {
        int width;
        int paddingLeft;
        if (!this.f185v) {
            super.onLayout(z2, i3, i4, i5, i6);
            return;
        }
        int childCount = getChildCount();
        int i7 = (i6 - i4) / 2;
        int dividerWidth = getDividerWidth();
        int i8 = i5 - i3;
        int paddingRight = (i8 - getPaddingRight()) - getPaddingLeft();
        boolean zA = p3.a(this);
        int i9 = 0;
        int i10 = 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                i.l lVar = (i.l) childAt.getLayoutParams();
                if (lVar.f2078a) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    if (l(i11)) {
                        measuredWidth += dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (zA) {
                        paddingLeft = getPaddingLeft() + ((LinearLayout.LayoutParams) lVar).leftMargin;
                        width = paddingLeft + measuredWidth;
                    } else {
                        width = (getWidth() - getPaddingRight()) - ((LinearLayout.LayoutParams) lVar).rightMargin;
                        paddingLeft = width - measuredWidth;
                    }
                    int i12 = i7 - (measuredHeight / 2);
                    childAt.layout(paddingLeft, i12, width, measuredHeight + i12);
                    paddingRight -= measuredWidth;
                    i9 = 1;
                } else {
                    paddingRight -= (childAt.getMeasuredWidth() + ((LinearLayout.LayoutParams) lVar).leftMargin) + ((LinearLayout.LayoutParams) lVar).rightMargin;
                    l(i11);
                    i10++;
                }
            }
        }
        if (childCount == 1 && i9 == 0) {
            View childAt2 = getChildAt(0);
            int measuredWidth2 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i13 = (i8 / 2) - (measuredWidth2 / 2);
            int i14 = i7 - (measuredHeight2 / 2);
            childAt2.layout(i13, i14, measuredWidth2 + i13, measuredHeight2 + i14);
            return;
        }
        int i15 = i10 - (i9 ^ 1);
        int iMax = Math.max(0, i15 > 0 ? paddingRight / i15 : 0);
        if (zA) {
            int width2 = getWidth() - getPaddingRight();
            for (int i16 = 0; i16 < childCount; i16++) {
                View childAt3 = getChildAt(i16);
                i.l lVar2 = (i.l) childAt3.getLayoutParams();
                if (childAt3.getVisibility() != 8 && !lVar2.f2078a) {
                    int i17 = width2 - ((LinearLayout.LayoutParams) lVar2).rightMargin;
                    int measuredWidth3 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i18 = i7 - (measuredHeight3 / 2);
                    childAt3.layout(i17 - measuredWidth3, i18, i17, measuredHeight3 + i18);
                    width2 = i17 - ((measuredWidth3 + ((LinearLayout.LayoutParams) lVar2).leftMargin) + iMax);
                }
            }
            return;
        }
        int paddingLeft2 = getPaddingLeft();
        for (int i19 = 0; i19 < childCount; i19++) {
            View childAt4 = getChildAt(i19);
            i.l lVar3 = (i.l) childAt4.getLayoutParams();
            if (childAt4.getVisibility() != 8 && !lVar3.f2078a) {
                int i20 = paddingLeft2 + ((LinearLayout.LayoutParams) lVar3).leftMargin;
                int measuredWidth4 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i21 = i7 - (measuredHeight4 / 2);
                childAt4.layout(i20, i21, i20 + measuredWidth4, measuredHeight4 + i21);
                paddingLeft2 = measuredWidth4 + ((LinearLayout.LayoutParams) lVar3).rightMargin + iMax + i20;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r11v15 */
    /* JADX WARN: Type inference failed for: r11v16, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r11v18 */
    /* JADX WARN: Type inference failed for: r11v41 */
    @Override // i.v1, android.view.View
    public final void onMeasure(int i3, int i4) {
        int i5;
        int i6;
        ?? r11;
        int i7;
        int i8;
        m mVar;
        boolean z2 = this.f185v;
        boolean z3 = View.MeasureSpec.getMode(i3) == 1073741824;
        this.f185v = z3;
        if (z2 != z3) {
            this.f186w = 0;
        }
        int size = View.MeasureSpec.getSize(i3);
        if (this.f185v && (mVar = this.f179p) != null && size != this.f186w) {
            this.f186w = size;
            mVar.p(true);
        }
        int childCount = getChildCount();
        if (!this.f185v || childCount <= 0) {
            for (int i9 = 0; i9 < childCount; i9++) {
                i.l lVar = (i.l) getChildAt(i9).getLayoutParams();
                ((LinearLayout.LayoutParams) lVar).rightMargin = 0;
                ((LinearLayout.LayoutParams) lVar).leftMargin = 0;
            }
            super.onMeasure(i3, i4);
            return;
        }
        int mode = View.MeasureSpec.getMode(i4);
        int size2 = View.MeasureSpec.getSize(i3);
        int size3 = View.MeasureSpec.getSize(i4);
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i4, paddingBottom, -2);
        int i10 = size2 - paddingRight;
        int i11 = this.f187x;
        int i12 = i10 / i11;
        int i13 = i10 % i11;
        if (i12 == 0) {
            setMeasuredDimension(i10, 0);
            return;
        }
        int i14 = (i13 / i12) + i11;
        int childCount2 = getChildCount();
        int iMax = 0;
        int i15 = 0;
        int iMax2 = 0;
        int i16 = 0;
        boolean z4 = false;
        int i17 = 0;
        long j3 = 0;
        while (true) {
            i5 = this.f188y;
            if (i16 >= childCount2) {
                break;
            }
            View childAt = getChildAt(i16);
            int i18 = size3;
            int i19 = paddingBottom;
            if (childAt.getVisibility() == 8) {
                i7 = i14;
            } else {
                boolean z5 = childAt instanceof ActionMenuItemView;
                i15++;
                if (z5) {
                    childAt.setPadding(i5, 0, i5, 0);
                }
                i.l lVar2 = (i.l) childAt.getLayoutParams();
                lVar2.f = false;
                lVar2.f2079c = 0;
                lVar2.b = 0;
                lVar2.f2080d = false;
                ((LinearLayout.LayoutParams) lVar2).leftMargin = 0;
                ((LinearLayout.LayoutParams) lVar2).rightMargin = 0;
                lVar2.f2081e = z5 && !TextUtils.isEmpty(((ActionMenuItemView) childAt).getText());
                int i20 = lVar2.f2078a ? 1 : i12;
                i.l lVar3 = (i.l) childAt.getLayoutParams();
                int i21 = i12;
                i7 = i14;
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(childMeasureSpec) - i19, View.MeasureSpec.getMode(childMeasureSpec));
                ActionMenuItemView actionMenuItemView = z5 ? (ActionMenuItemView) childAt : null;
                boolean z6 = (actionMenuItemView == null || TextUtils.isEmpty(actionMenuItemView.getText())) ? false : true;
                boolean z7 = z6;
                if (i20 <= 0 || (z6 && i20 < 2)) {
                    i8 = 0;
                } else {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(i7 * i20, Integer.MIN_VALUE), iMakeMeasureSpec);
                    int measuredWidth = childAt.getMeasuredWidth();
                    i8 = measuredWidth / i7;
                    if (measuredWidth % i7 != 0) {
                        i8++;
                    }
                    if (z7 && i8 < 2) {
                        i8 = 2;
                    }
                }
                lVar3.f2080d = !lVar3.f2078a && z7;
                lVar3.b = i8;
                childAt.measure(View.MeasureSpec.makeMeasureSpec(i8 * i7, 1073741824), iMakeMeasureSpec);
                iMax2 = Math.max(iMax2, i8);
                if (lVar2.f2080d) {
                    i17++;
                }
                if (lVar2.f2078a) {
                    z4 = true;
                }
                i12 = i21 - i8;
                iMax = Math.max(iMax, childAt.getMeasuredHeight());
                if (i8 == 1) {
                    j3 |= (long) (1 << i16);
                }
            }
            i16++;
            size3 = i18;
            paddingBottom = i19;
            i14 = i7;
        }
        int i22 = size3;
        int i23 = i12;
        int i24 = i14;
        boolean z8 = z4 && i15 == 2;
        int i25 = i23;
        boolean z9 = false;
        while (true) {
            if (i17 <= 0 || i25 <= 0) {
                i6 = iMax;
                break;
            }
            int i26 = Integer.MAX_VALUE;
            long j4 = 0;
            int i27 = 0;
            int i28 = 0;
            while (i28 < childCount2) {
                int i29 = iMax;
                i.l lVar4 = (i.l) getChildAt(i28).getLayoutParams();
                boolean z10 = z8;
                if (lVar4.f2080d) {
                    int i30 = lVar4.b;
                    if (i30 < i26) {
                        j4 = 1 << i28;
                        i26 = i30;
                        i27 = 1;
                    } else if (i30 == i26) {
                        j4 |= 1 << i28;
                        i27++;
                    }
                }
                i28++;
                z8 = z10;
                iMax = i29;
            }
            i6 = iMax;
            boolean z11 = z8;
            j3 |= j4;
            if (i27 > i25) {
                break;
            }
            int i31 = i26 + 1;
            int i32 = 0;
            while (i32 < childCount2) {
                View childAt2 = getChildAt(i32);
                i.l lVar5 = (i.l) childAt2.getLayoutParams();
                boolean z12 = z4;
                long j5 = 1 << i32;
                if ((j4 & j5) != 0) {
                    if (z11 && lVar5.f2081e) {
                        r11 = 1;
                        r11 = 1;
                        if (i25 == 1) {
                            childAt2.setPadding(i5 + i24, 0, i5, 0);
                        }
                    } else {
                        r11 = 1;
                    }
                    lVar5.b += r11;
                    lVar5.f = r11;
                    i25--;
                } else if (lVar5.b == i31) {
                    j3 |= j5;
                }
                i32++;
                z4 = z12;
            }
            z8 = z11;
            iMax = i6;
            z9 = true;
        }
        boolean z13 = !z4 && i15 == 1;
        if (i25 > 0 && j3 != 0 && (i25 < i15 - 1 || z13 || iMax2 > 1)) {
            float fBitCount = Long.bitCount(j3);
            if (!z13) {
                if ((j3 & 1) != 0 && !((i.l) getChildAt(0).getLayoutParams()).f2081e) {
                    fBitCount -= 0.5f;
                }
                int i33 = childCount2 - 1;
                if ((j3 & ((long) (1 << i33))) != 0 && !((i.l) getChildAt(i33).getLayoutParams()).f2081e) {
                    fBitCount -= 0.5f;
                }
            }
            int i34 = fBitCount > 0.0f ? (int) ((i25 * i24) / fBitCount) : 0;
            boolean z14 = z9;
            for (int i35 = 0; i35 < childCount2; i35++) {
                if ((j3 & ((long) (1 << i35))) != 0) {
                    View childAt3 = getChildAt(i35);
                    i.l lVar6 = (i.l) childAt3.getLayoutParams();
                    if (childAt3 instanceof ActionMenuItemView) {
                        lVar6.f2079c = i34;
                        lVar6.f = true;
                        if (i35 == 0 && !lVar6.f2081e) {
                            ((LinearLayout.LayoutParams) lVar6).leftMargin = (-i34) / 2;
                        }
                        z14 = true;
                    } else if (lVar6.f2078a) {
                        lVar6.f2079c = i34;
                        lVar6.f = true;
                        ((LinearLayout.LayoutParams) lVar6).rightMargin = (-i34) / 2;
                        z14 = true;
                    } else {
                        if (i35 != 0) {
                            ((LinearLayout.LayoutParams) lVar6).leftMargin = i34 / 2;
                        }
                        if (i35 != childCount2 - 1) {
                            ((LinearLayout.LayoutParams) lVar6).rightMargin = i34 / 2;
                        }
                    }
                }
            }
            z9 = z14;
        }
        if (z9) {
            for (int i36 = 0; i36 < childCount2; i36++) {
                View childAt4 = getChildAt(i36);
                i.l lVar7 = (i.l) childAt4.getLayoutParams();
                if (lVar7.f) {
                    childAt4.measure(View.MeasureSpec.makeMeasureSpec((lVar7.b * i24) + lVar7.f2079c, 1073741824), childMeasureSpec);
                }
            }
        }
        setMeasuredDimension(i10, mode != 1073741824 ? i6 : i22);
    }

    public void setExpandedActionViewsExclusive(boolean z2) {
        this.f183t.f2061q = z2;
    }

    public void setOnMenuItemClickListener(i.m mVar) {
        this.f189z = mVar;
    }

    public void setOverflowIcon(Drawable drawable) {
        getMenu();
        j jVar = this.f183t;
        i iVar = jVar.f2053i;
        if (iVar != null) {
            iVar.setImageDrawable(drawable);
        } else {
            jVar.f2055k = true;
            jVar.f2054j = drawable;
        }
    }

    public void setOverflowReserved(boolean z2) {
        this.f182s = z2;
    }

    public void setPopupTheme(int i3) {
        if (this.f181r != i3) {
            this.f181r = i3;
            if (i3 == 0) {
                this.f180q = getContext();
            } else {
                this.f180q = new ContextThemeWrapper(getContext(), i3);
            }
        }
    }

    public void setPresenter(j jVar) {
        this.f183t = jVar;
        jVar.f2052h = this;
        this.f179p = jVar.f2048c;
    }

    @Override // i.v1, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new i.l(getContext(), attributeSet);
    }
}
