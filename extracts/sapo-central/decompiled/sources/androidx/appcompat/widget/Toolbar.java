package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.fragment.app.f;
import c0.a0;
import c0.b0;
import c0.c0;
import c0.l;
import c0.p0;
import com.ex.auto.R;
import com.google.android.material.datepicker.k;
import g.i;
import h.m;
import h.o;
import i.b1;
import i.d3;
import i.e3;
import i.f3;
import i.g3;
import i.h3;
import i.i3;
import i.j;
import i.j1;
import i.j3;
import i.k3;
import i.l3;
import i.m2;
import i.m3;
import i.p3;
import i.x;
import i.z;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public class Toolbar extends ViewGroup {
    public ColorStateList A;
    public boolean B;
    public boolean C;
    public final ArrayList D;
    public final ArrayList E;
    public final int[] F;
    public final androidx.activity.result.c G;
    public ArrayList H;
    public final e3 I;
    public l3 J;
    public j K;
    public g3 L;
    public boolean M;
    public OnBackInvokedCallback N;
    public OnBackInvokedDispatcher O;
    public boolean P;
    public final androidx.activity.d Q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ActionMenuView f220a;
    public b1 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public b1 f221c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public x f222d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public z f223e;
    public final Drawable f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final CharSequence f224g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public x f225h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public View f226i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Context f227j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f228k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f229l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f230m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f231n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f232o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f233p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f234q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f235r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f236s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public m2 f237t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f238u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f239v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final int f240w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public CharSequence f241x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public CharSequence f242y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public ColorStateList f243z;

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private ArrayList<MenuItem> getCurrentMenuItems() {
        ArrayList<MenuItem> arrayList = new ArrayList<>();
        Menu menu = getMenu();
        for (int i3 = 0; i3 < menu.size(); i3++) {
            arrayList.add(menu.getItem(i3));
        }
        return arrayList;
    }

    private MenuInflater getMenuInflater() {
        return new i(getContext());
    }

    public static h3 h() {
        h3 h3Var = new h3(-2, -2);
        h3Var.b = 0;
        h3Var.f2043a = 8388627;
        return h3Var;
    }

    public static h3 i(ViewGroup.LayoutParams layoutParams) {
        boolean z2 = layoutParams instanceof h3;
        if (z2) {
            h3 h3Var = (h3) layoutParams;
            h3 h3Var2 = new h3(h3Var);
            h3Var2.b = 0;
            h3Var2.b = h3Var.b;
            return h3Var2;
        }
        if (z2) {
            h3 h3Var3 = new h3((h3) layoutParams);
            h3Var3.b = 0;
            return h3Var3;
        }
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            h3 h3Var4 = new h3(layoutParams);
            h3Var4.b = 0;
            return h3Var4;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        h3 h3Var5 = new h3(marginLayoutParams);
        h3Var5.b = 0;
        ((ViewGroup.MarginLayoutParams) h3Var5).leftMargin = marginLayoutParams.leftMargin;
        ((ViewGroup.MarginLayoutParams) h3Var5).topMargin = marginLayoutParams.topMargin;
        ((ViewGroup.MarginLayoutParams) h3Var5).rightMargin = marginLayoutParams.rightMargin;
        ((ViewGroup.MarginLayoutParams) h3Var5).bottomMargin = marginLayoutParams.bottomMargin;
        return h3Var5;
    }

    public static int k(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return l.b(marginLayoutParams) + l.c(marginLayoutParams);
    }

    public static int l(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    public final void a(ArrayList arrayList, int i3) {
        WeakHashMap weakHashMap = p0.f727a;
        boolean z2 = b0.d(this) == 1;
        int childCount = getChildCount();
        int absoluteGravity = Gravity.getAbsoluteGravity(i3, b0.d(this));
        arrayList.clear();
        if (!z2) {
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = getChildAt(i4);
                h3 h3Var = (h3) childAt.getLayoutParams();
                if (h3Var.b == 0 && s(childAt)) {
                    int i5 = h3Var.f2043a;
                    WeakHashMap weakHashMap2 = p0.f727a;
                    int iD = b0.d(this);
                    int absoluteGravity2 = Gravity.getAbsoluteGravity(i5, iD) & 7;
                    if (absoluteGravity2 != 1 && absoluteGravity2 != 3 && absoluteGravity2 != 5) {
                        absoluteGravity2 = iD == 1 ? 5 : 3;
                    }
                    if (absoluteGravity2 == absoluteGravity) {
                        arrayList.add(childAt);
                    }
                }
            }
            return;
        }
        for (int i6 = childCount - 1; i6 >= 0; i6--) {
            View childAt2 = getChildAt(i6);
            h3 h3Var2 = (h3) childAt2.getLayoutParams();
            if (h3Var2.b == 0 && s(childAt2)) {
                int i7 = h3Var2.f2043a;
                WeakHashMap weakHashMap3 = p0.f727a;
                int iD2 = b0.d(this);
                int absoluteGravity3 = Gravity.getAbsoluteGravity(i7, iD2) & 7;
                if (absoluteGravity3 != 1 && absoluteGravity3 != 3 && absoluteGravity3 != 5) {
                    absoluteGravity3 = iD2 == 1 ? 5 : 3;
                }
                if (absoluteGravity3 == absoluteGravity) {
                    arrayList.add(childAt2);
                }
            }
        }
    }

    public final void b(View view, boolean z2) {
        h3 h3VarI;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            h3VarI = h();
        } else {
            h3VarI = !checkLayoutParams(layoutParams) ? i(layoutParams) : (h3) layoutParams;
        }
        h3VarI.b = 1;
        if (!z2 || this.f226i == null) {
            addView(view, h3VarI);
        } else {
            view.setLayoutParams(h3VarI);
            this.E.add(view);
        }
    }

    public final void c() {
        if (this.f225h == null) {
            x xVar = new x(getContext(), null, R.attr.toolbarNavigationButtonStyle);
            this.f225h = xVar;
            xVar.setImageDrawable(this.f);
            this.f225h.setContentDescription(this.f224g);
            h3 h3VarH = h();
            h3VarH.f2043a = (this.f231n & 112) | 8388611;
            h3VarH.b = 2;
            this.f225h.setLayoutParams(h3VarH);
            this.f225h.setOnClickListener(new k(4, this));
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof h3);
    }

    public final void d() {
        if (this.f237t == null) {
            m2 m2Var = new m2();
            m2Var.f2101a = 0;
            m2Var.b = 0;
            m2Var.f2102c = Integer.MIN_VALUE;
            m2Var.f2103d = Integer.MIN_VALUE;
            m2Var.f2104e = 0;
            m2Var.f = 0;
            m2Var.f2105g = false;
            m2Var.f2106h = false;
            this.f237t = m2Var;
        }
    }

    public final void e() {
        f();
        ActionMenuView actionMenuView = this.f220a;
        if (actionMenuView.f179p == null) {
            m mVar = (m) actionMenuView.getMenu();
            if (this.L == null) {
                this.L = new g3(this);
            }
            this.f220a.setExpandedActionViewsExclusive(true);
            mVar.b(this.L, this.f227j);
            t();
        }
    }

    public final void f() {
        if (this.f220a == null) {
            ActionMenuView actionMenuView = new ActionMenuView(getContext(), null);
            this.f220a = actionMenuView;
            actionMenuView.setPopupTheme(this.f228k);
            this.f220a.setOnMenuItemClickListener(this.I);
            ActionMenuView actionMenuView2 = this.f220a;
            e3 e3Var = new e3(this);
            actionMenuView2.getClass();
            actionMenuView2.f184u = e3Var;
            h3 h3VarH = h();
            h3VarH.f2043a = (this.f231n & 112) | 8388613;
            this.f220a.setLayoutParams(h3VarH);
            b(this.f220a, false);
        }
    }

    public final void g() {
        if (this.f222d == null) {
            this.f222d = new x(getContext(), null, R.attr.toolbarNavigationButtonStyle);
            h3 h3VarH = h();
            h3VarH.f2043a = (this.f231n & 112) | 8388611;
            this.f222d.setLayoutParams(h3VarH);
        }
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return h();
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return i(layoutParams);
    }

    public CharSequence getCollapseContentDescription() {
        x xVar = this.f225h;
        if (xVar != null) {
            return xVar.getContentDescription();
        }
        return null;
    }

    public Drawable getCollapseIcon() {
        x xVar = this.f225h;
        if (xVar != null) {
            return xVar.getDrawable();
        }
        return null;
    }

    public int getContentInsetEnd() {
        m2 m2Var = this.f237t;
        if (m2Var != null) {
            return m2Var.f2105g ? m2Var.f2101a : m2Var.b;
        }
        return 0;
    }

    public int getContentInsetEndWithActions() {
        int i3 = this.f239v;
        return i3 != Integer.MIN_VALUE ? i3 : getContentInsetEnd();
    }

    public int getContentInsetLeft() {
        m2 m2Var = this.f237t;
        if (m2Var != null) {
            return m2Var.f2101a;
        }
        return 0;
    }

    public int getContentInsetRight() {
        m2 m2Var = this.f237t;
        if (m2Var != null) {
            return m2Var.b;
        }
        return 0;
    }

    public int getContentInsetStart() {
        m2 m2Var = this.f237t;
        if (m2Var != null) {
            return m2Var.f2105g ? m2Var.b : m2Var.f2101a;
        }
        return 0;
    }

    public int getContentInsetStartWithNavigation() {
        int i3 = this.f238u;
        return i3 != Integer.MIN_VALUE ? i3 : getContentInsetStart();
    }

    public int getCurrentContentInsetEnd() {
        m mVar;
        ActionMenuView actionMenuView = this.f220a;
        return (actionMenuView == null || (mVar = actionMenuView.f179p) == null || !mVar.hasVisibleItems()) ? getContentInsetEnd() : Math.max(getContentInsetEnd(), Math.max(this.f239v, 0));
    }

    public int getCurrentContentInsetLeft() {
        WeakHashMap weakHashMap = p0.f727a;
        return b0.d(this) == 1 ? getCurrentContentInsetEnd() : getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        WeakHashMap weakHashMap = p0.f727a;
        return b0.d(this) == 1 ? getCurrentContentInsetStart() : getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        return getNavigationIcon() != null ? Math.max(getContentInsetStart(), Math.max(this.f238u, 0)) : getContentInsetStart();
    }

    public Drawable getLogo() {
        z zVar = this.f223e;
        if (zVar != null) {
            return zVar.getDrawable();
        }
        return null;
    }

    public CharSequence getLogoDescription() {
        z zVar = this.f223e;
        if (zVar != null) {
            return zVar.getContentDescription();
        }
        return null;
    }

    public Menu getMenu() {
        e();
        return this.f220a.getMenu();
    }

    public View getNavButtonView() {
        return this.f222d;
    }

    public CharSequence getNavigationContentDescription() {
        x xVar = this.f222d;
        if (xVar != null) {
            return xVar.getContentDescription();
        }
        return null;
    }

    public Drawable getNavigationIcon() {
        x xVar = this.f222d;
        if (xVar != null) {
            return xVar.getDrawable();
        }
        return null;
    }

    public j getOuterActionMenuPresenter() {
        return this.K;
    }

    public Drawable getOverflowIcon() {
        e();
        return this.f220a.getOverflowIcon();
    }

    public Context getPopupContext() {
        return this.f227j;
    }

    public int getPopupTheme() {
        return this.f228k;
    }

    public CharSequence getSubtitle() {
        return this.f242y;
    }

    public final TextView getSubtitleTextView() {
        return this.f221c;
    }

    public CharSequence getTitle() {
        return this.f241x;
    }

    public int getTitleMarginBottom() {
        return this.f236s;
    }

    public int getTitleMarginEnd() {
        return this.f234q;
    }

    public int getTitleMarginStart() {
        return this.f233p;
    }

    public int getTitleMarginTop() {
        return this.f235r;
    }

    public final TextView getTitleTextView() {
        return this.b;
    }

    public j1 getWrapper() {
        Drawable drawable;
        if (this.J == null) {
            l3 l3Var = new l3();
            l3Var.f2093n = 0;
            l3Var.f2082a = this;
            l3Var.f2087h = getTitle();
            l3Var.f2088i = getSubtitle();
            l3Var.f2086g = l3Var.f2087h != null;
            l3Var.f = getNavigationIcon();
            f fVarV = f.v(getContext(), null, d.a.f1496a, R.attr.actionBarStyle);
            TypedArray typedArray = (TypedArray) fVarV.f413c;
            l3Var.f2094o = fVarV.k(15);
            CharSequence text = typedArray.getText(27);
            if (!TextUtils.isEmpty(text)) {
                l3Var.f2086g = true;
                l3Var.f2087h = text;
                if ((l3Var.b & 8) != 0) {
                    setTitle(text);
                    if (l3Var.f2086g) {
                        p0.j(getRootView(), text);
                    }
                }
            }
            CharSequence text2 = typedArray.getText(25);
            if (!TextUtils.isEmpty(text2)) {
                l3Var.f2088i = text2;
                if ((l3Var.b & 8) != 0) {
                    setSubtitle(text2);
                }
            }
            Drawable drawableK = fVarV.k(20);
            if (drawableK != null) {
                l3Var.f2085e = drawableK;
                l3Var.c();
            }
            Drawable drawableK2 = fVarV.k(17);
            if (drawableK2 != null) {
                l3Var.f2084d = drawableK2;
                l3Var.c();
            }
            if (l3Var.f == null && (drawable = l3Var.f2094o) != null) {
                l3Var.f = drawable;
                if ((l3Var.b & 4) != 0) {
                    setNavigationIcon(drawable);
                } else {
                    setNavigationIcon((Drawable) null);
                }
            }
            l3Var.a(typedArray.getInt(10, 0));
            int resourceId = typedArray.getResourceId(9, 0);
            if (resourceId != 0) {
                View viewInflate = LayoutInflater.from(getContext()).inflate(resourceId, (ViewGroup) this, false);
                View view = l3Var.f2083c;
                if (view != null && (l3Var.b & 16) != 0) {
                    removeView(view);
                }
                l3Var.f2083c = viewInflate;
                if (viewInflate != null && (l3Var.b & 16) != 0) {
                    addView(viewInflate);
                }
                l3Var.a(l3Var.b | 16);
            }
            int layoutDimension = typedArray.getLayoutDimension(13, 0);
            if (layoutDimension > 0) {
                ViewGroup.LayoutParams layoutParams = getLayoutParams();
                layoutParams.height = layoutDimension;
                setLayoutParams(layoutParams);
            }
            int dimensionPixelOffset = typedArray.getDimensionPixelOffset(7, -1);
            int dimensionPixelOffset2 = typedArray.getDimensionPixelOffset(3, -1);
            if (dimensionPixelOffset >= 0 || dimensionPixelOffset2 >= 0) {
                int iMax = Math.max(dimensionPixelOffset, 0);
                int iMax2 = Math.max(dimensionPixelOffset2, 0);
                d();
                this.f237t.a(iMax, iMax2);
            }
            int resourceId2 = typedArray.getResourceId(28, 0);
            if (resourceId2 != 0) {
                Context context = getContext();
                this.f229l = resourceId2;
                b1 b1Var = this.b;
                if (b1Var != null) {
                    b1Var.setTextAppearance(context, resourceId2);
                }
            }
            int resourceId3 = typedArray.getResourceId(26, 0);
            if (resourceId3 != 0) {
                Context context2 = getContext();
                this.f230m = resourceId3;
                b1 b1Var2 = this.f221c;
                if (b1Var2 != null) {
                    b1Var2.setTextAppearance(context2, resourceId3);
                }
            }
            int resourceId4 = typedArray.getResourceId(22, 0);
            if (resourceId4 != 0) {
                setPopupTheme(resourceId4);
            }
            fVarV.x();
            if (R.string.abc_action_bar_up_description != l3Var.f2093n) {
                l3Var.f2093n = R.string.abc_action_bar_up_description;
                if (TextUtils.isEmpty(getNavigationContentDescription())) {
                    int i3 = l3Var.f2093n;
                    l3Var.f2089j = i3 != 0 ? getContext().getString(i3) : null;
                    l3Var.b();
                }
            }
            l3Var.f2089j = getNavigationContentDescription();
            setNavigationOnClickListener(new k3(l3Var));
            this.J = l3Var;
        }
        return this.J;
    }

    public final int j(View view, int i3) {
        h3 h3Var = (h3) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i4 = i3 > 0 ? (measuredHeight - i3) / 2 : 0;
        int i5 = h3Var.f2043a & 112;
        if (i5 != 16 && i5 != 48 && i5 != 80) {
            i5 = this.f240w & 112;
        }
        if (i5 == 48) {
            return getPaddingTop() - i4;
        }
        if (i5 == 80) {
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) h3Var).bottomMargin) - i4;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        int iMax = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
        int i6 = ((ViewGroup.MarginLayoutParams) h3Var).topMargin;
        if (iMax < i6) {
            iMax = i6;
        } else {
            int i7 = (((height - paddingBottom) - measuredHeight) - iMax) - paddingTop;
            int i8 = ((ViewGroup.MarginLayoutParams) h3Var).bottomMargin;
            if (i7 < i8) {
                iMax = Math.max(0, iMax - (i8 - i7));
            }
        }
        return paddingTop + iMax;
    }

    public final void m() {
        ArrayList arrayList = this.H;
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            getMenu().removeItem(((MenuItem) obj).getItemId());
        }
        getMenu();
        ArrayList<MenuItem> currentMenuItems = getCurrentMenuItems();
        getMenuInflater();
        Iterator it = ((CopyOnWriteArrayList) this.G.b).iterator();
        if (it.hasNext()) {
            it.next().getClass();
            throw new ClassCastException();
        }
        ArrayList<MenuItem> currentMenuItems2 = getCurrentMenuItems();
        currentMenuItems2.removeAll(currentMenuItems);
        this.H = currentMenuItems2;
    }

    public final boolean n(View view) {
        return view.getParent() == this || this.E.contains(view);
    }

    public final int o(View view, int i3, int i4, int[] iArr) {
        h3 h3Var = (h3) view.getLayoutParams();
        int i5 = ((ViewGroup.MarginLayoutParams) h3Var).leftMargin - iArr[0];
        int iMax = Math.max(0, i5) + i3;
        iArr[0] = Math.max(0, -i5);
        int iJ = j(view, i4);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax, iJ, iMax + measuredWidth, view.getMeasuredHeight() + iJ);
        return measuredWidth + ((ViewGroup.MarginLayoutParams) h3Var).rightMargin + iMax;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        t();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.Q);
        t();
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.C = false;
        }
        if (!this.C) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.C = true;
            }
        }
        if (actionMasked != 10 && actionMasked != 3) {
            return true;
        }
        this.C = false;
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x027d  */
    /* JADX WARN: Code duplicated, block: B:103:0x028f A[LOOP:0: B:102:0x028d->B:103:0x028f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:106:0x02a7 A[LOOP:1: B:105:0x02a5->B:106:0x02a7, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:109:0x02c7 A[LOOP:2: B:108:0x02c5->B:109:0x02c7, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:113:0x030d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:114:0x030f  */
    /* JADX WARN: Code duplicated, block: B:115:0x0313  */
    /* JADX WARN: Code duplicated, block: B:118:0x031a A[LOOP:3: B:117:0x0318->B:118:0x031a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:19:0x0062 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:20:0x0064  */
    /* JADX WARN: Code duplicated, block: B:21:0x006b  */
    /* JADX WARN: Code duplicated, block: B:24:0x0079 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:25:0x007b  */
    /* JADX WARN: Code duplicated, block: B:26:0x0082  */
    /* JADX WARN: Code duplicated, block: B:29:0x00b6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:30:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:31:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:34:0x00cd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:35:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:36:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:39:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:40:0x0101  */
    /* JADX WARN: Code duplicated, block: B:42:0x0106  */
    /* JADX WARN: Code duplicated, block: B:43:0x011f  */
    /* JADX WARN: Code duplicated, block: B:46:0x0125 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:47:0x0127  */
    /* JADX WARN: Code duplicated, block: B:48:0x012a  */
    /* JADX WARN: Code duplicated, block: B:50:0x012e  */
    /* JADX WARN: Code duplicated, block: B:51:0x0131  */
    /* JADX WARN: Code duplicated, block: B:54:0x0143  */
    /* JADX WARN: Code duplicated, block: B:56:0x014b A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:63:0x0164  */
    /* JADX WARN: Code duplicated, block: B:65:0x0168  */
    /* JADX WARN: Code duplicated, block: B:67:0x0179  */
    /* JADX WARN: Code duplicated, block: B:68:0x017b  */
    /* JADX WARN: Code duplicated, block: B:70:0x0187  */
    /* JADX WARN: Code duplicated, block: B:72:0x0193  */
    /* JADX WARN: Code duplicated, block: B:73:0x019d  */
    /* JADX WARN: Code duplicated, block: B:75:0x01aa A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:76:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:77:0x01af  */
    /* JADX WARN: Code duplicated, block: B:80:0x01c2  */
    /* JADX WARN: Code duplicated, block: B:81:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:83:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:84:0x020d  */
    /* JADX WARN: Code duplicated, block: B:86:0x0210  */
    /* JADX WARN: Code duplicated, block: B:88:0x0218 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:89:0x021a  */
    /* JADX WARN: Code duplicated, block: B:91:0x021e  */
    /* JADX WARN: Code duplicated, block: B:94:0x0232  */
    /* JADX WARN: Code duplicated, block: B:95:0x0255  */
    /* JADX WARN: Code duplicated, block: B:97:0x0258  */
    /* JADX WARN: Code duplicated, block: B:98:0x027a  */
    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i3, int i4, int i5, int i6) {
        int iO;
        int iP;
        int iMax;
        int iMin;
        boolean zS;
        boolean zS2;
        int measuredHeight;
        b1 b1Var;
        b1 b1Var2;
        h3 h3Var;
        h3 h3Var2;
        int i7;
        boolean z3;
        int i8;
        int i9;
        int paddingTop;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int iMax2;
        int i16;
        int i17;
        int i18;
        int i19;
        ArrayList arrayList;
        int size;
        int iO2;
        int i20;
        int size2;
        int i21;
        int i22;
        int size3;
        int i23;
        int i24;
        int measuredWidth;
        int i25;
        int i26;
        int i27;
        int size4;
        WeakHashMap weakHashMap = p0.f727a;
        boolean z4 = b0.d(this) == 1;
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop2 = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i28 = width - paddingRight;
        int[] iArr = this.F;
        iArr[1] = 0;
        iArr[0] = 0;
        int iD = a0.d(this);
        int iMin2 = iD >= 0 ? Math.min(iD, i6 - i4) : 0;
        if (s(this.f222d)) {
            if (z4) {
                iP = p(this.f222d, i28, iMin2, iArr);
                iO = paddingLeft;
            } else {
                iO = o(this.f222d, paddingLeft, iMin2, iArr);
            }
            if (s(this.f225h)) {
                if (z4) {
                    iP = p(this.f225h, iP, iMin2, iArr);
                } else {
                    iO = o(this.f225h, iO, iMin2, iArr);
                }
            }
            if (s(this.f220a)) {
                if (z4) {
                    iO = o(this.f220a, iO, iMin2, iArr);
                } else {
                    iP = p(this.f220a, iP, iMin2, iArr);
                }
            }
            int currentContentInsetLeft = getCurrentContentInsetLeft();
            int currentContentInsetRight = getCurrentContentInsetRight();
            iArr[0] = Math.max(0, currentContentInsetLeft - iO);
            iArr[1] = Math.max(0, currentContentInsetRight - (i28 - iP));
            iMax = Math.max(iO, currentContentInsetLeft);
            iMin = Math.min(iP, i28 - currentContentInsetRight);
            if (s(this.f226i)) {
                if (z4) {
                    iMin = p(this.f226i, iMin, iMin2, iArr);
                } else {
                    iMax = o(this.f226i, iMax, iMin2, iArr);
                }
            }
            if (s(this.f223e)) {
                if (z4) {
                    iMin = p(this.f223e, iMin, iMin2, iArr);
                } else {
                    iMax = o(this.f223e, iMax, iMin2, iArr);
                }
            }
            zS = s(this.b);
            zS2 = s(this.f221c);
            if (zS) {
                h3 h3Var3 = (h3) this.b.getLayoutParams();
                measuredHeight = this.b.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) h3Var3).topMargin + ((ViewGroup.MarginLayoutParams) h3Var3).bottomMargin;
            } else {
                measuredHeight = 0;
            }
            if (zS2) {
                h3 h3Var4 = (h3) this.f221c.getLayoutParams();
                measuredHeight = this.f221c.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) h3Var4).topMargin + ((ViewGroup.MarginLayoutParams) h3Var4).bottomMargin + measuredHeight;
            }
            if (zS || zS2) {
                if (zS) {
                    b1Var = this.b;
                } else {
                    b1Var = this.f221c;
                }
                if (zS2) {
                    b1Var2 = this.f221c;
                } else {
                    b1Var2 = this.b;
                }
                h3Var = (h3) b1Var.getLayoutParams();
                h3Var2 = (h3) b1Var2.getLayoutParams();
                i7 = measuredHeight;
                z3 = (!zS && this.b.getMeasuredWidth() > 0) || (zS2 && this.f221c.getMeasuredWidth() > 0);
                i8 = this.f240w & 112;
                i9 = iMax;
                if (i8 == 48) {
                    paddingTop = getPaddingTop() + ((ViewGroup.MarginLayoutParams) h3Var).topMargin + this.f235r;
                } else if (i8 != 80) {
                    iMax2 = (((height - paddingTop2) - paddingBottom) - i7) / 2;
                    i16 = ((ViewGroup.MarginLayoutParams) h3Var).topMargin + this.f235r;
                    if (iMax2 < i16) {
                        iMax2 = i16;
                    } else {
                        i17 = (((height - paddingBottom) - i7) - iMax2) - paddingTop2;
                        i18 = ((ViewGroup.MarginLayoutParams) h3Var).bottomMargin;
                        i19 = this.f236s;
                        if (i17 < i18 + i19) {
                            iMax2 = Math.max(0, iMax2 - ((((ViewGroup.MarginLayoutParams) h3Var2).bottomMargin + i19) - i17));
                        }
                    }
                    paddingTop = paddingTop2 + iMax2;
                } else {
                    paddingTop = (((height - paddingBottom) - ((ViewGroup.MarginLayoutParams) h3Var2).bottomMargin) - this.f236s) - i7;
                }
                if (z4) {
                    if (z3) {
                        i13 = this.f233p;
                    } else {
                        i13 = 0;
                    }
                    int i29 = i13 - iArr[1];
                    iMin -= Math.max(0, i29);
                    iArr[1] = Math.max(0, -i29);
                    if (zS) {
                        h3 h3Var5 = (h3) this.b.getLayoutParams();
                        int measuredWidth2 = iMin - this.b.getMeasuredWidth();
                        int measuredHeight2 = this.b.getMeasuredHeight() + paddingTop;
                        this.b.layout(measuredWidth2, paddingTop, iMin, measuredHeight2);
                        i14 = measuredWidth2 - this.f234q;
                        paddingTop = measuredHeight2 + ((ViewGroup.MarginLayoutParams) h3Var5).bottomMargin;
                    } else {
                        i14 = iMin;
                    }
                    if (zS2) {
                        int i30 = paddingTop + ((ViewGroup.MarginLayoutParams) ((h3) this.f221c.getLayoutParams())).topMargin;
                        this.f221c.layout(iMin - this.f221c.getMeasuredWidth(), i30, iMin, this.f221c.getMeasuredHeight() + i30);
                        i15 = iMin - this.f234q;
                    } else {
                        i15 = iMin;
                    }
                    if (z3) {
                        iMin = Math.min(i14, i15);
                    }
                    iMax = i9;
                } else {
                    if (z3) {
                        i10 = this.f233p;
                    } else {
                        i10 = 0;
                    }
                    int i31 = i10 - iArr[0];
                    iMax = Math.max(0, i31) + i9;
                    iArr[0] = Math.max(0, -i31);
                    if (zS) {
                        h3 h3Var6 = (h3) this.b.getLayoutParams();
                        int measuredWidth3 = this.b.getMeasuredWidth() + iMax;
                        int measuredHeight3 = this.b.getMeasuredHeight() + paddingTop;
                        this.b.layout(iMax, paddingTop, measuredWidth3, measuredHeight3);
                        i11 = measuredWidth3 + this.f234q;
                        paddingTop = measuredHeight3 + ((ViewGroup.MarginLayoutParams) h3Var6).bottomMargin;
                    } else {
                        i11 = iMax;
                    }
                    if (zS2) {
                        int i32 = paddingTop + ((ViewGroup.MarginLayoutParams) ((h3) this.f221c.getLayoutParams())).topMargin;
                        int measuredWidth4 = this.f221c.getMeasuredWidth() + iMax;
                        this.f221c.layout(iMax, i32, measuredWidth4, this.f221c.getMeasuredHeight() + i32);
                        i12 = measuredWidth4 + this.f234q;
                    } else {
                        i12 = iMax;
                    }
                    if (z3) {
                        iMax = Math.max(i11, i12);
                    }
                }
            }
            arrayList = this.D;
            a(arrayList, 3);
            size = arrayList.size();
            iO2 = iMax;
            for (i20 = 0; i20 < size; i20++) {
                iO2 = o((View) arrayList.get(i20), iO2, iMin2, iArr);
            }
            a(arrayList, 5);
            size2 = arrayList.size();
            for (i21 = 0; i21 < size2; i21++) {
                iMin = p((View) arrayList.get(i21), iMin, iMin2, iArr);
            }
            a(arrayList, 1);
            int i33 = iArr[0];
            i22 = iArr[1];
            size3 = arrayList.size();
            i23 = i33;
            i24 = 0;
            measuredWidth = 0;
            while (i24 < size3) {
                View view = (View) arrayList.get(i24);
                h3 h3Var7 = (h3) view.getLayoutParams();
                int i34 = i22;
                int i35 = ((ViewGroup.MarginLayoutParams) h3Var7).leftMargin - i23;
                int i36 = ((ViewGroup.MarginLayoutParams) h3Var7).rightMargin - i34;
                int iMax3 = Math.max(0, i35);
                int iMax4 = Math.max(0, i36);
                int iMax5 = Math.max(0, -i35);
                int iMax6 = Math.max(0, -i36);
                measuredWidth += view.getMeasuredWidth() + iMax3 + iMax4;
                i24++;
                i23 = iMax5;
                i22 = iMax6;
            }
            i26 = ((((width - paddingLeft) - paddingRight) / 2) + paddingLeft) - (measuredWidth / 2);
            i27 = measuredWidth + i26;
            if (i26 >= iO2) {
                if (i27 > iMin) {
                    iO2 = i26 - (i27 - iMin);
                } else {
                    iO2 = i26;
                }
            }
            size4 = arrayList.size();
            for (i25 = 0; i25 < size4; i25++) {
                iO2 = o((View) arrayList.get(i25), iO2, iMin2, iArr);
            }
            arrayList.clear();
        }
        iO = paddingLeft;
        iP = i28;
        if (s(this.f225h)) {
            if (z4) {
                iP = p(this.f225h, iP, iMin2, iArr);
            } else {
                iO = o(this.f225h, iO, iMin2, iArr);
            }
        }
        if (s(this.f220a)) {
            if (z4) {
                iO = o(this.f220a, iO, iMin2, iArr);
            } else {
                iP = p(this.f220a, iP, iMin2, iArr);
            }
        }
        int currentContentInsetLeft2 = getCurrentContentInsetLeft();
        int currentContentInsetRight2 = getCurrentContentInsetRight();
        iArr[0] = Math.max(0, currentContentInsetLeft2 - iO);
        iArr[1] = Math.max(0, currentContentInsetRight2 - (i28 - iP));
        iMax = Math.max(iO, currentContentInsetLeft2);
        iMin = Math.min(iP, i28 - currentContentInsetRight2);
        if (s(this.f226i)) {
            if (z4) {
                iMin = p(this.f226i, iMin, iMin2, iArr);
            } else {
                iMax = o(this.f226i, iMax, iMin2, iArr);
            }
        }
        if (s(this.f223e)) {
            if (z4) {
                iMin = p(this.f223e, iMin, iMin2, iArr);
            } else {
                iMax = o(this.f223e, iMax, iMin2, iArr);
            }
        }
        zS = s(this.b);
        zS2 = s(this.f221c);
        if (zS) {
            h3 h3Var8 = (h3) this.b.getLayoutParams();
            measuredHeight = this.b.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) h3Var8).topMargin + ((ViewGroup.MarginLayoutParams) h3Var8).bottomMargin;
        } else {
            measuredHeight = 0;
        }
        if (zS2) {
            h3 h3Var9 = (h3) this.f221c.getLayoutParams();
            measuredHeight = this.f221c.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) h3Var9).topMargin + ((ViewGroup.MarginLayoutParams) h3Var9).bottomMargin + measuredHeight;
        }
        if (zS) {
            if (zS) {
                b1Var = this.b;
            } else {
                b1Var = this.f221c;
            }
            if (zS2) {
                b1Var2 = this.f221c;
            } else {
                b1Var2 = this.b;
            }
            h3Var = (h3) b1Var.getLayoutParams();
            h3Var2 = (h3) b1Var2.getLayoutParams();
            i7 = measuredHeight;
            if (zS) {
            }
            i8 = this.f240w & 112;
            i9 = iMax;
            if (i8 == 48) {
                paddingTop = getPaddingTop() + ((ViewGroup.MarginLayoutParams) h3Var).topMargin + this.f235r;
            } else if (i8 != 80) {
                iMax2 = (((height - paddingTop2) - paddingBottom) - i7) / 2;
                i16 = ((ViewGroup.MarginLayoutParams) h3Var).topMargin + this.f235r;
                if (iMax2 < i16) {
                    iMax2 = i16;
                } else {
                    i17 = (((height - paddingBottom) - i7) - iMax2) - paddingTop2;
                    i18 = ((ViewGroup.MarginLayoutParams) h3Var).bottomMargin;
                    i19 = this.f236s;
                    if (i17 < i18 + i19) {
                        iMax2 = Math.max(0, iMax2 - ((((ViewGroup.MarginLayoutParams) h3Var2).bottomMargin + i19) - i17));
                    }
                }
                paddingTop = paddingTop2 + iMax2;
            } else {
                paddingTop = (((height - paddingBottom) - ((ViewGroup.MarginLayoutParams) h3Var2).bottomMargin) - this.f236s) - i7;
            }
            if (z4) {
                if (z3) {
                    i13 = this.f233p;
                } else {
                    i13 = 0;
                }
                int i210 = i13 - iArr[1];
                iMin -= Math.max(0, i210);
                iArr[1] = Math.max(0, -i210);
                if (zS) {
                    h3 h3Var10 = (h3) this.b.getLayoutParams();
                    int measuredWidth5 = iMin - this.b.getMeasuredWidth();
                    int measuredHeight4 = this.b.getMeasuredHeight() + paddingTop;
                    this.b.layout(measuredWidth5, paddingTop, iMin, measuredHeight4);
                    i14 = measuredWidth5 - this.f234q;
                    paddingTop = measuredHeight4 + ((ViewGroup.MarginLayoutParams) h3Var10).bottomMargin;
                } else {
                    i14 = iMin;
                }
                if (zS2) {
                    int i37 = paddingTop + ((ViewGroup.MarginLayoutParams) ((h3) this.f221c.getLayoutParams())).topMargin;
                    this.f221c.layout(iMin - this.f221c.getMeasuredWidth(), i37, iMin, this.f221c.getMeasuredHeight() + i37);
                    i15 = iMin - this.f234q;
                } else {
                    i15 = iMin;
                }
                if (z3) {
                    iMin = Math.min(i14, i15);
                }
                iMax = i9;
            } else {
                if (z3) {
                    i10 = this.f233p;
                } else {
                    i10 = 0;
                }
                int i38 = i10 - iArr[0];
                iMax = Math.max(0, i38) + i9;
                iArr[0] = Math.max(0, -i38);
                if (zS) {
                    h3 h3Var11 = (h3) this.b.getLayoutParams();
                    int measuredWidth6 = this.b.getMeasuredWidth() + iMax;
                    int measuredHeight5 = this.b.getMeasuredHeight() + paddingTop;
                    this.b.layout(iMax, paddingTop, measuredWidth6, measuredHeight5);
                    i11 = measuredWidth6 + this.f234q;
                    paddingTop = measuredHeight5 + ((ViewGroup.MarginLayoutParams) h3Var11).bottomMargin;
                } else {
                    i11 = iMax;
                }
                if (zS2) {
                    int i39 = paddingTop + ((ViewGroup.MarginLayoutParams) ((h3) this.f221c.getLayoutParams())).topMargin;
                    int measuredWidth7 = this.f221c.getMeasuredWidth() + iMax;
                    this.f221c.layout(iMax, i39, measuredWidth7, this.f221c.getMeasuredHeight() + i39);
                    i12 = measuredWidth7 + this.f234q;
                } else {
                    i12 = iMax;
                }
                if (z3) {
                    iMax = Math.max(i11, i12);
                }
            }
        } else {
            if (zS) {
                b1Var = this.b;
            } else {
                b1Var = this.f221c;
            }
            if (zS2) {
                b1Var2 = this.f221c;
            } else {
                b1Var2 = this.b;
            }
            h3Var = (h3) b1Var.getLayoutParams();
            h3Var2 = (h3) b1Var2.getLayoutParams();
            i7 = measuredHeight;
            if (zS) {
            }
            i8 = this.f240w & 112;
            i9 = iMax;
            if (i8 == 48) {
                paddingTop = getPaddingTop() + ((ViewGroup.MarginLayoutParams) h3Var).topMargin + this.f235r;
            } else if (i8 != 80) {
                iMax2 = (((height - paddingTop2) - paddingBottom) - i7) / 2;
                i16 = ((ViewGroup.MarginLayoutParams) h3Var).topMargin + this.f235r;
                if (iMax2 < i16) {
                    iMax2 = i16;
                } else {
                    i17 = (((height - paddingBottom) - i7) - iMax2) - paddingTop2;
                    i18 = ((ViewGroup.MarginLayoutParams) h3Var).bottomMargin;
                    i19 = this.f236s;
                    if (i17 < i18 + i19) {
                        iMax2 = Math.max(0, iMax2 - ((((ViewGroup.MarginLayoutParams) h3Var2).bottomMargin + i19) - i17));
                    }
                }
                paddingTop = paddingTop2 + iMax2;
            } else {
                paddingTop = (((height - paddingBottom) - ((ViewGroup.MarginLayoutParams) h3Var2).bottomMargin) - this.f236s) - i7;
            }
            if (z4) {
                if (z3) {
                    i13 = this.f233p;
                } else {
                    i13 = 0;
                }
                int i211 = i13 - iArr[1];
                iMin -= Math.max(0, i211);
                iArr[1] = Math.max(0, -i211);
                if (zS) {
                    h3 h3Var12 = (h3) this.b.getLayoutParams();
                    int measuredWidth8 = iMin - this.b.getMeasuredWidth();
                    int measuredHeight6 = this.b.getMeasuredHeight() + paddingTop;
                    this.b.layout(measuredWidth8, paddingTop, iMin, measuredHeight6);
                    i14 = measuredWidth8 - this.f234q;
                    paddingTop = measuredHeight6 + ((ViewGroup.MarginLayoutParams) h3Var12).bottomMargin;
                } else {
                    i14 = iMin;
                }
                if (zS2) {
                    int i310 = paddingTop + ((ViewGroup.MarginLayoutParams) ((h3) this.f221c.getLayoutParams())).topMargin;
                    this.f221c.layout(iMin - this.f221c.getMeasuredWidth(), i310, iMin, this.f221c.getMeasuredHeight() + i310);
                    i15 = iMin - this.f234q;
                } else {
                    i15 = iMin;
                }
                if (z3) {
                    iMin = Math.min(i14, i15);
                }
                iMax = i9;
            } else {
                if (z3) {
                    i10 = this.f233p;
                } else {
                    i10 = 0;
                }
                int i311 = i10 - iArr[0];
                iMax = Math.max(0, i311) + i9;
                iArr[0] = Math.max(0, -i311);
                if (zS) {
                    h3 h3Var13 = (h3) this.b.getLayoutParams();
                    int measuredWidth9 = this.b.getMeasuredWidth() + iMax;
                    int measuredHeight7 = this.b.getMeasuredHeight() + paddingTop;
                    this.b.layout(iMax, paddingTop, measuredWidth9, measuredHeight7);
                    i11 = measuredWidth9 + this.f234q;
                    paddingTop = measuredHeight7 + ((ViewGroup.MarginLayoutParams) h3Var13).bottomMargin;
                } else {
                    i11 = iMax;
                }
                if (zS2) {
                    int i312 = paddingTop + ((ViewGroup.MarginLayoutParams) ((h3) this.f221c.getLayoutParams())).topMargin;
                    int measuredWidth10 = this.f221c.getMeasuredWidth() + iMax;
                    this.f221c.layout(iMax, i312, measuredWidth10, this.f221c.getMeasuredHeight() + i312);
                    i12 = measuredWidth10 + this.f234q;
                } else {
                    i12 = iMax;
                }
                if (z3) {
                    iMax = Math.max(i11, i12);
                }
            }
        }
        arrayList = this.D;
        a(arrayList, 3);
        size = arrayList.size();
        iO2 = iMax;
        while (i20 < size) {
            iO2 = o((View) arrayList.get(i20), iO2, iMin2, iArr);
        }
        a(arrayList, 5);
        size2 = arrayList.size();
        while (i21 < size2) {
            iMin = p((View) arrayList.get(i21), iMin, iMin2, iArr);
        }
        a(arrayList, 1);
        int i313 = iArr[0];
        i22 = iArr[1];
        size3 = arrayList.size();
        i23 = i313;
        i24 = 0;
        measuredWidth = 0;
        while (i24 < size3) {
            View view2 = (View) arrayList.get(i24);
            h3 h3Var14 = (h3) view2.getLayoutParams();
            int i314 = i22;
            int i315 = ((ViewGroup.MarginLayoutParams) h3Var14).leftMargin - i23;
            int i316 = ((ViewGroup.MarginLayoutParams) h3Var14).rightMargin - i314;
            int iMax7 = Math.max(0, i315);
            int iMax8 = Math.max(0, i316);
            int iMax9 = Math.max(0, -i315);
            int iMax10 = Math.max(0, -i316);
            measuredWidth += view2.getMeasuredWidth() + iMax7 + iMax8;
            i24++;
            i23 = iMax9;
            i22 = iMax10;
        }
        i26 = ((((width - paddingLeft) - paddingRight) / 2) + paddingLeft) - (measuredWidth / 2);
        i27 = measuredWidth + i26;
        if (i26 >= iO2) {
            if (i27 > iMin) {
                iO2 = i26 - (i27 - iMin);
            } else {
                iO2 = i26;
            }
        }
        size4 = arrayList.size();
        while (i25 < size4) {
            iO2 = o((View) arrayList.get(i25), iO2, iMin2, iArr);
        }
        arrayList.clear();
    }

    @Override // android.view.View
    public final void onMeasure(int i3, int i4) {
        int iK;
        int iMax;
        int iCombineMeasuredStates;
        int iK2;
        int iL;
        int iCombineMeasuredStates2;
        int iMax2;
        boolean zA = p3.a(this);
        int i5 = !zA ? 1 : 0;
        int i6 = 0;
        if (s(this.f222d)) {
            r(this.f222d, i3, 0, i4, this.f232o);
            iK = k(this.f222d) + this.f222d.getMeasuredWidth();
            iMax = Math.max(0, l(this.f222d) + this.f222d.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(0, this.f222d.getMeasuredState());
        } else {
            iK = 0;
            iMax = 0;
            iCombineMeasuredStates = 0;
        }
        if (s(this.f225h)) {
            r(this.f225h, i3, 0, i4, this.f232o);
            iK = k(this.f225h) + this.f225h.getMeasuredWidth();
            iMax = Math.max(iMax, l(this.f225h) + this.f225h.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f225h.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int iMax3 = Math.max(currentContentInsetStart, iK);
        int iMax4 = Math.max(0, currentContentInsetStart - iK);
        int[] iArr = this.F;
        iArr[zA ? 1 : 0] = iMax4;
        if (s(this.f220a)) {
            r(this.f220a, i3, iMax3, i4, this.f232o);
            iK2 = k(this.f220a) + this.f220a.getMeasuredWidth();
            iMax = Math.max(iMax, l(this.f220a) + this.f220a.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f220a.getMeasuredState());
        } else {
            iK2 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int iMax5 = iMax3 + Math.max(currentContentInsetEnd, iK2);
        iArr[i5] = Math.max(0, currentContentInsetEnd - iK2);
        if (s(this.f226i)) {
            iMax5 += q(this.f226i, i3, iMax5, i4, 0, iArr);
            iMax = Math.max(iMax, l(this.f226i) + this.f226i.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f226i.getMeasuredState());
        }
        if (s(this.f223e)) {
            iMax5 += q(this.f223e, i3, iMax5, i4, 0, iArr);
            iMax = Math.max(iMax, l(this.f223e) + this.f223e.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f223e.getMeasuredState());
        }
        int childCount = getChildCount();
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (((h3) childAt.getLayoutParams()).b == 0 && s(childAt)) {
                iMax5 += q(childAt, i3, iMax5, i4, 0, iArr);
                int iMax6 = Math.max(iMax, l(childAt) + childAt.getMeasuredHeight());
                iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, childAt.getMeasuredState());
                iMax = iMax6;
            } else {
                iMax5 = iMax5;
            }
        }
        int i8 = iMax5;
        int i9 = this.f235r + this.f236s;
        int i10 = this.f233p + this.f234q;
        if (s(this.b)) {
            q(this.b, i3, i8 + i10, i4, i9, iArr);
            int iK3 = k(this.b) + this.b.getMeasuredWidth();
            iL = l(this.b) + this.b.getMeasuredHeight();
            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates, this.b.getMeasuredState());
            iMax2 = iK3;
        } else {
            iL = 0;
            iCombineMeasuredStates2 = iCombineMeasuredStates;
            iMax2 = 0;
        }
        if (s(this.f221c)) {
            iMax2 = Math.max(iMax2, q(this.f221c, i3, i8 + i10, i4, i9 + iL, iArr));
            iL += l(this.f221c) + this.f221c.getMeasuredHeight();
            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, this.f221c.getMeasuredState());
        }
        int iMax7 = Math.max(iMax, iL);
        int paddingRight = getPaddingRight() + getPaddingLeft() + i8 + iMax2;
        int paddingBottom = getPaddingBottom() + getPaddingTop() + iMax7;
        int iResolveSizeAndState = View.resolveSizeAndState(Math.max(paddingRight, getSuggestedMinimumWidth()), i3, (-16777216) & iCombineMeasuredStates2);
        int iResolveSizeAndState2 = View.resolveSizeAndState(Math.max(paddingBottom, getSuggestedMinimumHeight()), i4, iCombineMeasuredStates2 << 16);
        if (!this.M) {
            i6 = iResolveSizeAndState2;
            break;
        }
        int childCount2 = getChildCount();
        for (int i11 = 0; i11 < childCount2; i11++) {
            View childAt2 = getChildAt(i11);
            if (s(childAt2) && childAt2.getMeasuredWidth() > 0 && childAt2.getMeasuredHeight() > 0) {
                i6 = iResolveSizeAndState2;
                break;
            }
        }
        setMeasuredDimension(iResolveSizeAndState, i6);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem menuItemFindItem;
        if (!(parcelable instanceof j3)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        j3 j3Var = (j3) parcelable;
        super.onRestoreInstanceState(j3Var.f1951a);
        ActionMenuView actionMenuView = this.f220a;
        m mVar = actionMenuView != null ? actionMenuView.f179p : null;
        int i3 = j3Var.f2068c;
        if (i3 != 0 && this.L != null && mVar != null && (menuItemFindItem = mVar.findItem(i3)) != null) {
            menuItemFindItem.expandActionView();
        }
        if (j3Var.f2069d) {
            androidx.activity.d dVar = this.Q;
            removeCallbacks(dVar);
            post(dVar);
        }
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i3) {
        super.onRtlPropertiesChanged(i3);
        d();
        m2 m2Var = this.f237t;
        boolean z2 = i3 == 1;
        if (z2 == m2Var.f2105g) {
            return;
        }
        m2Var.f2105g = z2;
        if (!m2Var.f2106h) {
            m2Var.f2101a = m2Var.f2104e;
            m2Var.b = m2Var.f;
            return;
        }
        if (z2) {
            int i4 = m2Var.f2103d;
            if (i4 == Integer.MIN_VALUE) {
                i4 = m2Var.f2104e;
            }
            m2Var.f2101a = i4;
            int i5 = m2Var.f2102c;
            if (i5 == Integer.MIN_VALUE) {
                i5 = m2Var.f;
            }
            m2Var.b = i5;
            return;
        }
        int i6 = m2Var.f2102c;
        if (i6 == Integer.MIN_VALUE) {
            i6 = m2Var.f2104e;
        }
        m2Var.f2101a = i6;
        int i7 = m2Var.f2103d;
        if (i7 == Integer.MIN_VALUE) {
            i7 = m2Var.f;
        }
        m2Var.b = i7;
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        j jVar;
        o oVar;
        j3 j3Var = new j3(super.onSaveInstanceState());
        g3 g3Var = this.L;
        if (g3Var != null && (oVar = g3Var.b) != null) {
            j3Var.f2068c = oVar.f1910a;
        }
        ActionMenuView actionMenuView = this.f220a;
        j3Var.f2069d = (actionMenuView == null || (jVar = actionMenuView.f183t) == null || !jVar.f()) ? false : true;
        return j3Var;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.B = false;
        }
        if (!this.B) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.B = true;
            }
        }
        if (actionMasked != 1 && actionMasked != 3) {
            return true;
        }
        this.B = false;
        return true;
    }

    public final int p(View view, int i3, int i4, int[] iArr) {
        h3 h3Var = (h3) view.getLayoutParams();
        int i5 = ((ViewGroup.MarginLayoutParams) h3Var).rightMargin - iArr[1];
        int iMax = i3 - Math.max(0, i5);
        iArr[1] = Math.max(0, -i5);
        int iJ = j(view, i4);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax - measuredWidth, iJ, iMax, view.getMeasuredHeight() + iJ);
        return iMax - (measuredWidth + ((ViewGroup.MarginLayoutParams) h3Var).leftMargin);
    }

    public final int q(View view, int i3, int i4, int i5, int i6, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i7 = marginLayoutParams.leftMargin - iArr[0];
        int i8 = marginLayoutParams.rightMargin - iArr[1];
        int iMax = Math.max(0, i8) + Math.max(0, i7);
        iArr[0] = Math.max(0, -i7);
        iArr[1] = Math.max(0, -i8);
        view.measure(ViewGroup.getChildMeasureSpec(i3, getPaddingRight() + getPaddingLeft() + iMax + i4, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i5, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i6, marginLayoutParams.height));
        return view.getMeasuredWidth() + iMax;
    }

    public final void r(View view, int i3, int i4, int i5, int i6) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i3, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i4, marginLayoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i5, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i6 >= 0) {
            if (mode != 0) {
                i6 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i6);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i6, 1073741824);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    public final boolean s(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    public void setBackInvokedCallbackEnabled(boolean z2) {
        if (this.P != z2) {
            this.P = z2;
            t();
        }
    }

    public void setCollapseContentDescription(int i3) {
        setCollapseContentDescription(i3 != 0 ? getContext().getText(i3) : null);
    }

    public void setCollapseIcon(int i3) {
        setCollapseIcon(a1.b.v(getContext(), i3));
    }

    public void setCollapsible(boolean z2) {
        this.M = z2;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i3) {
        if (i3 < 0) {
            i3 = Integer.MIN_VALUE;
        }
        if (i3 != this.f239v) {
            this.f239v = i3;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetStartWithNavigation(int i3) {
        if (i3 < 0) {
            i3 = Integer.MIN_VALUE;
        }
        if (i3 != this.f238u) {
            this.f238u = i3;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setLogo(int i3) {
        setLogo(a1.b.v(getContext(), i3));
    }

    public void setLogoDescription(int i3) {
        setLogoDescription(getContext().getText(i3));
    }

    public void setNavigationContentDescription(int i3) {
        setNavigationContentDescription(i3 != 0 ? getContext().getText(i3) : null);
    }

    public void setNavigationIcon(int i3) {
        setNavigationIcon(a1.b.v(getContext(), i3));
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        g();
        this.f222d.setOnClickListener(onClickListener);
    }

    public void setOnMenuItemClickListener(i3 i3Var) {
    }

    public void setOverflowIcon(Drawable drawable) {
        e();
        this.f220a.setOverflowIcon(drawable);
    }

    public void setPopupTheme(int i3) {
        if (this.f228k != i3) {
            this.f228k = i3;
            if (i3 == 0) {
                this.f227j = getContext();
            } else {
                this.f227j = new ContextThemeWrapper(getContext(), i3);
            }
        }
    }

    public void setSubtitle(int i3) {
        setSubtitle(getContext().getText(i3));
    }

    public void setSubtitleTextColor(int i3) {
        setSubtitleTextColor(ColorStateList.valueOf(i3));
    }

    public void setTitle(int i3) {
        setTitle(getContext().getText(i3));
    }

    public void setTitleMarginBottom(int i3) {
        this.f236s = i3;
        requestLayout();
    }

    public void setTitleMarginEnd(int i3) {
        this.f234q = i3;
        requestLayout();
    }

    public void setTitleMarginStart(int i3) {
        this.f233p = i3;
        requestLayout();
    }

    public void setTitleMarginTop(int i3) {
        this.f235r = i3;
        requestLayout();
    }

    public void setTitleTextColor(int i3) {
        setTitleTextColor(ColorStateList.valueOf(i3));
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0023  */
    public final void t() {
        boolean z2;
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        if (Build.VERSION.SDK_INT >= 33) {
            OnBackInvokedDispatcher onBackInvokedDispatcherA = f3.a(this);
            g3 g3Var = this.L;
            int i3 = 0;
            if (g3Var == null || g3Var.b == null || onBackInvokedDispatcherA == null) {
                z2 = false;
            } else {
                WeakHashMap weakHashMap = p0.f727a;
                if (c0.b(this) && this.P) {
                    z2 = true;
                } else {
                    z2 = false;
                }
            }
            if (z2 && this.O == null) {
                if (this.N == null) {
                    this.N = f3.b(new d3(this, i3));
                }
                f3.c(onBackInvokedDispatcherA, this.N);
                this.O = onBackInvokedDispatcherA;
                return;
            }
            if (z2 || (onBackInvokedDispatcher = this.O) == null) {
                return;
            }
            f3.d(onBackInvokedDispatcher, this.N);
            this.O = null;
        }
    }

    public Toolbar(Context context, AttributeSet attributeSet, int i3) {
        super(context, attributeSet, R.attr.toolbarStyle);
        this.f240w = 8388627;
        this.D = new ArrayList();
        this.E = new ArrayList();
        this.F = new int[2];
        this.G = new androidx.activity.result.c(new d3(this, 1));
        this.H = new ArrayList();
        this.I = new e3(this);
        this.Q = new androidx.activity.d(7, this);
        Context context2 = getContext();
        int[] iArr = d.a.f1517x;
        f fVarV = f.v(context2, attributeSet, iArr, R.attr.toolbarStyle);
        p0.h(this, context, iArr, attributeSet, (TypedArray) fVarV.f413c, R.attr.toolbarStyle);
        TypedArray typedArray = (TypedArray) fVarV.f413c;
        this.f229l = typedArray.getResourceId(28, 0);
        this.f230m = typedArray.getResourceId(19, 0);
        this.f240w = typedArray.getInteger(0, 8388627);
        this.f231n = typedArray.getInteger(2, 48);
        int dimensionPixelOffset = typedArray.getDimensionPixelOffset(22, 0);
        dimensionPixelOffset = typedArray.hasValue(27) ? typedArray.getDimensionPixelOffset(27, dimensionPixelOffset) : dimensionPixelOffset;
        this.f236s = dimensionPixelOffset;
        this.f235r = dimensionPixelOffset;
        this.f234q = dimensionPixelOffset;
        this.f233p = dimensionPixelOffset;
        int dimensionPixelOffset2 = typedArray.getDimensionPixelOffset(25, -1);
        if (dimensionPixelOffset2 >= 0) {
            this.f233p = dimensionPixelOffset2;
        }
        int dimensionPixelOffset3 = typedArray.getDimensionPixelOffset(24, -1);
        if (dimensionPixelOffset3 >= 0) {
            this.f234q = dimensionPixelOffset3;
        }
        int dimensionPixelOffset4 = typedArray.getDimensionPixelOffset(26, -1);
        if (dimensionPixelOffset4 >= 0) {
            this.f235r = dimensionPixelOffset4;
        }
        int dimensionPixelOffset5 = typedArray.getDimensionPixelOffset(23, -1);
        if (dimensionPixelOffset5 >= 0) {
            this.f236s = dimensionPixelOffset5;
        }
        this.f232o = typedArray.getDimensionPixelSize(13, -1);
        int dimensionPixelOffset6 = typedArray.getDimensionPixelOffset(9, Integer.MIN_VALUE);
        int dimensionPixelOffset7 = typedArray.getDimensionPixelOffset(5, Integer.MIN_VALUE);
        int dimensionPixelSize = typedArray.getDimensionPixelSize(7, 0);
        int dimensionPixelSize2 = typedArray.getDimensionPixelSize(8, 0);
        d();
        m2 m2Var = this.f237t;
        m2Var.f2106h = false;
        if (dimensionPixelSize != Integer.MIN_VALUE) {
            m2Var.f2104e = dimensionPixelSize;
            m2Var.f2101a = dimensionPixelSize;
        }
        if (dimensionPixelSize2 != Integer.MIN_VALUE) {
            m2Var.f = dimensionPixelSize2;
            m2Var.b = dimensionPixelSize2;
        }
        if (dimensionPixelOffset6 != Integer.MIN_VALUE || dimensionPixelOffset7 != Integer.MIN_VALUE) {
            m2Var.a(dimensionPixelOffset6, dimensionPixelOffset7);
        }
        this.f238u = typedArray.getDimensionPixelOffset(10, Integer.MIN_VALUE);
        this.f239v = typedArray.getDimensionPixelOffset(6, Integer.MIN_VALUE);
        this.f = fVarV.k(4);
        this.f224g = typedArray.getText(3);
        CharSequence text = typedArray.getText(21);
        if (!TextUtils.isEmpty(text)) {
            setTitle(text);
        }
        CharSequence text2 = typedArray.getText(18);
        if (!TextUtils.isEmpty(text2)) {
            setSubtitle(text2);
        }
        this.f227j = getContext();
        setPopupTheme(typedArray.getResourceId(17, 0));
        Drawable drawableK = fVarV.k(16);
        if (drawableK != null) {
            setNavigationIcon(drawableK);
        }
        CharSequence text3 = typedArray.getText(15);
        if (!TextUtils.isEmpty(text3)) {
            setNavigationContentDescription(text3);
        }
        Drawable drawableK2 = fVarV.k(11);
        if (drawableK2 != null) {
            setLogo(drawableK2);
        }
        CharSequence text4 = typedArray.getText(12);
        if (!TextUtils.isEmpty(text4)) {
            setLogoDescription(text4);
        }
        if (typedArray.hasValue(29)) {
            setTitleTextColor(fVarV.j(29));
        }
        if (typedArray.hasValue(20)) {
            setSubtitleTextColor(fVarV.j(20));
        }
        if (typedArray.hasValue(14)) {
            getMenuInflater().inflate(typedArray.getResourceId(14, 0), getMenu());
        }
        fVarV.x();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        Context context = getContext();
        h3 h3Var = new h3(context, attributeSet);
        h3Var.f2043a = 0;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d.a.b);
        h3Var.f2043a = typedArrayObtainStyledAttributes.getInt(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        h3Var.b = 0;
        return h3Var;
    }

    public void setCollapseContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            c();
        }
        x xVar = this.f225h;
        if (xVar != null) {
            xVar.setContentDescription(charSequence);
        }
    }

    public void setCollapseIcon(Drawable drawable) {
        if (drawable != null) {
            c();
            this.f225h.setImageDrawable(drawable);
        } else {
            x xVar = this.f225h;
            if (xVar != null) {
                xVar.setImageDrawable(this.f);
            }
        }
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            if (this.f223e == null) {
                this.f223e = new z(getContext(), null, 0);
            }
            if (!n(this.f223e)) {
                b(this.f223e, true);
            }
        } else {
            z zVar = this.f223e;
            if (zVar != null && n(zVar)) {
                removeView(this.f223e);
                this.E.remove(this.f223e);
            }
        }
        z zVar2 = this.f223e;
        if (zVar2 != null) {
            zVar2.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence) && this.f223e == null) {
            this.f223e = new z(getContext(), null, 0);
        }
        z zVar = this.f223e;
        if (zVar != null) {
            zVar.setContentDescription(charSequence);
        }
    }

    public void setNavigationContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            g();
        }
        x xVar = this.f222d;
        if (xVar != null) {
            xVar.setContentDescription(charSequence);
            m3.a(this.f222d, charSequence);
        }
    }

    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null) {
            g();
            if (!n(this.f222d)) {
                b(this.f222d, true);
            }
        } else {
            x xVar = this.f222d;
            if (xVar != null && n(xVar)) {
                removeView(this.f222d);
                this.E.remove(this.f222d);
            }
        }
        x xVar2 = this.f222d;
        if (xVar2 != null) {
            xVar2.setImageDrawable(drawable);
        }
    }

    public void setSubtitle(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            b1 b1Var = this.f221c;
            if (b1Var != null && n(b1Var)) {
                removeView(this.f221c);
                this.E.remove(this.f221c);
            }
        } else {
            if (this.f221c == null) {
                Context context = getContext();
                b1 b1Var2 = new b1(context, null);
                this.f221c = b1Var2;
                b1Var2.setSingleLine();
                this.f221c.setEllipsize(TextUtils.TruncateAt.END);
                int i3 = this.f230m;
                if (i3 != 0) {
                    this.f221c.setTextAppearance(context, i3);
                }
                ColorStateList colorStateList = this.A;
                if (colorStateList != null) {
                    this.f221c.setTextColor(colorStateList);
                }
            }
            if (!n(this.f221c)) {
                b(this.f221c, true);
            }
        }
        b1 b1Var3 = this.f221c;
        if (b1Var3 != null) {
            b1Var3.setText(charSequence);
        }
        this.f242y = charSequence;
    }

    public void setSubtitleTextColor(ColorStateList colorStateList) {
        this.A = colorStateList;
        b1 b1Var = this.f221c;
        if (b1Var != null) {
            b1Var.setTextColor(colorStateList);
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            b1 b1Var = this.b;
            if (b1Var != null && n(b1Var)) {
                removeView(this.b);
                this.E.remove(this.b);
            }
        } else {
            if (this.b == null) {
                Context context = getContext();
                b1 b1Var2 = new b1(context, null);
                this.b = b1Var2;
                b1Var2.setSingleLine();
                this.b.setEllipsize(TextUtils.TruncateAt.END);
                int i3 = this.f229l;
                if (i3 != 0) {
                    this.b.setTextAppearance(context, i3);
                }
                ColorStateList colorStateList = this.f243z;
                if (colorStateList != null) {
                    this.b.setTextColor(colorStateList);
                }
            }
            if (!n(this.b)) {
                b(this.b, true);
            }
        }
        b1 b1Var3 = this.b;
        if (b1Var3 != null) {
            b1Var3.setText(charSequence);
        }
        this.f241x = charSequence;
    }

    public void setTitleTextColor(ColorStateList colorStateList) {
        this.f243z = colorStateList;
        b1 b1Var = this.b;
        if (b1Var != null) {
            b1Var.setTextColor(colorStateList);
        }
    }
}
