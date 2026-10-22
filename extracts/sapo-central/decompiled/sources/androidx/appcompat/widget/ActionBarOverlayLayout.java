package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.OverScroller;
import c0.a0;
import c0.a1;
import c0.b1;
import c0.c1;
import c0.d0;
import c0.f0;
import c0.k1;
import c0.o;
import c0.p;
import c0.p0;
import c0.q;
import c0.z0;
import com.ex.auto.R;
import e.k0;
import g.k;
import h.m;
import h.y;
import i.e;
import i.g3;
import i.i1;
import i.j;
import i.j1;
import i.l3;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"UnknownNullness"})
public class ActionBarOverlayLayout extends ViewGroup implements i1, o, p {
    public static final int[] B = {R.attr.actionBarSize, android.R.attr.windowContentOverlay};
    public final q A;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f155a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ContentFrameLayout f156c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ActionBarContainer f157d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public j1 f158e;
    public Drawable f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f159g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f160h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f161i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f162j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f163k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f164l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f165m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Rect f166n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final Rect f167o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Rect f168p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public k1 f169q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public k1 f170r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public k1 f171s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public k1 f172t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public i.d f173u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public OverScroller f174v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public ViewPropertyAnimator f175w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final e1.a f176x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final i.c f177y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final i.c f178z;

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = 0;
        this.f166n = new Rect();
        this.f167o = new Rect();
        this.f168p = new Rect();
        new Rect();
        new Rect();
        new Rect();
        new Rect();
        k1 k1Var = k1.b;
        this.f169q = k1Var;
        this.f170r = k1Var;
        this.f171s = k1Var;
        this.f172t = k1Var;
        this.f176x = new e1.a(1, this);
        this.f177y = new i.c(this, 0);
        this.f178z = new i.c(this, 1);
        i(context);
        this.A = new q();
    }

    public static boolean g(View view, Rect rect, boolean z2) {
        boolean z3;
        e eVar = (e) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) eVar).leftMargin;
        int i4 = rect.left;
        if (i3 != i4) {
            ((ViewGroup.MarginLayoutParams) eVar).leftMargin = i4;
            z3 = true;
        } else {
            z3 = false;
        }
        int i5 = ((ViewGroup.MarginLayoutParams) eVar).topMargin;
        int i6 = rect.top;
        if (i5 != i6) {
            ((ViewGroup.MarginLayoutParams) eVar).topMargin = i6;
            z3 = true;
        }
        int i7 = ((ViewGroup.MarginLayoutParams) eVar).rightMargin;
        int i8 = rect.right;
        if (i7 != i8) {
            ((ViewGroup.MarginLayoutParams) eVar).rightMargin = i8;
            z3 = true;
        }
        if (z2) {
            int i9 = ((ViewGroup.MarginLayoutParams) eVar).bottomMargin;
            int i10 = rect.bottom;
            if (i9 != i10) {
                ((ViewGroup.MarginLayoutParams) eVar).bottomMargin = i10;
                return true;
            }
        }
        return z3;
    }

    @Override // c0.o
    public final void a(View view, View view2, int i3, int i4) {
        if (i4 == 0) {
            onNestedScrollAccepted(view, view2, i3);
        }
    }

    @Override // c0.o
    public final void b(View view, int i3) {
        if (i3 == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // c0.o
    public final void c(View view, int i3, int i4, int[] iArr, int i5) {
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof e;
    }

    @Override // c0.p
    public final void d(View view, int i3, int i4, int i5, int i6, int i7, int[] iArr) {
        e(view, i3, i4, i5, i6, i7);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int translationY;
        super.draw(canvas);
        if (this.f == null || this.f159g) {
            return;
        }
        if (this.f157d.getVisibility() == 0) {
            translationY = (int) (this.f157d.getTranslationY() + this.f157d.getBottom() + 0.5f);
        } else {
            translationY = 0;
        }
        this.f.setBounds(0, translationY, getWidth(), this.f.getIntrinsicHeight() + translationY);
        this.f.draw(canvas);
    }

    @Override // c0.o
    public final void e(View view, int i3, int i4, int i5, int i6, int i7) {
        if (i7 == 0) {
            onNestedScroll(view, i3, i4, i5, i6);
        }
    }

    @Override // c0.o
    public final boolean f(View view, View view2, int i3, int i4) {
        return i4 == 0 && onStartNestedScroll(view, view2, i3);
    }

    @Override // android.view.View
    public final boolean fitSystemWindows(Rect rect) {
        return super.fitSystemWindows(rect);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new e(-1, -1);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new e(getContext(), attributeSet);
    }

    public int getActionBarHideOffset() {
        ActionBarContainer actionBarContainer = this.f157d;
        if (actionBarContainer != null) {
            return -((int) actionBarContainer.getTranslationY());
        }
        return 0;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        q qVar = this.A;
        return qVar.b | qVar.f731a;
    }

    public CharSequence getTitle() {
        k();
        return ((l3) this.f158e).f2082a.getTitle();
    }

    public final void h() {
        removeCallbacks(this.f177y);
        removeCallbacks(this.f178z);
        ViewPropertyAnimator viewPropertyAnimator = this.f175w;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    public final void i(Context context) {
        TypedArray typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(B);
        this.f155a = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(1);
        this.f = drawable;
        setWillNotDraw(drawable == null);
        typedArrayObtainStyledAttributes.recycle();
        this.f159g = context.getApplicationInfo().targetSdkVersion < 19;
        this.f174v = new OverScroller(context);
    }

    public final void j(int i3) {
        k();
        if (i3 == 2) {
            ((l3) this.f158e).getClass();
            Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
        } else if (i3 == 5) {
            ((l3) this.f158e).getClass();
            Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
        } else {
            if (i3 != 109) {
                return;
            }
            setOverlayMode(true);
        }
    }

    public final void k() {
        j1 wrapper;
        if (this.f156c == null) {
            this.f156c = (ContentFrameLayout) findViewById(R.id.action_bar_activity_content);
            this.f157d = (ActionBarContainer) findViewById(R.id.action_bar_container);
            KeyEvent.Callback callbackFindViewById = findViewById(R.id.action_bar);
            if (callbackFindViewById instanceof j1) {
                wrapper = (j1) callbackFindViewById;
            } else {
                if (!(callbackFindViewById instanceof Toolbar)) {
                    throw new IllegalStateException("Can't make a decor toolbar out of ".concat(callbackFindViewById.getClass().getSimpleName()));
                }
                wrapper = ((Toolbar) callbackFindViewById).getWrapper();
            }
            this.f158e = wrapper;
        }
    }

    public final void l(Menu menu, y yVar) {
        k();
        l3 l3Var = (l3) this.f158e;
        Toolbar toolbar = l3Var.f2082a;
        if (l3Var.f2092m == null) {
            l3Var.f2092m = new j(toolbar.getContext());
        }
        j jVar = l3Var.f2092m;
        jVar.f2050e = yVar;
        m mVar = (m) menu;
        if (mVar == null && toolbar.f220a == null) {
            return;
        }
        toolbar.f();
        m mVar2 = toolbar.f220a.f179p;
        if (mVar2 == mVar) {
            return;
        }
        if (mVar2 != null) {
            mVar2.r(toolbar.K);
            mVar2.r(toolbar.L);
        }
        if (toolbar.L == null) {
            toolbar.L = new g3(toolbar);
        }
        jVar.f2061q = true;
        if (mVar != null) {
            mVar.b(jVar, toolbar.f227j);
            mVar.b(toolbar.L, toolbar.f227j);
        } else {
            jVar.g(toolbar.f227j, null);
            toolbar.L.g(toolbar.f227j, null);
            jVar.e();
            toolbar.L.e();
        }
        toolbar.f220a.setPopupTheme(toolbar.f228k);
        toolbar.f220a.setPresenter(jVar);
        toolbar.K = jVar;
        toolbar.t();
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        k();
        k1 k1VarG = k1.g(windowInsets, this);
        boolean zG = g(this.f157d, new Rect(k1VarG.b(), k1VarG.d(), k1VarG.c(), k1VarG.a()), false);
        WeakHashMap weakHashMap = p0.f727a;
        Rect rect = this.f166n;
        f0.b(this, k1VarG, rect);
        int i3 = rect.left;
        int i4 = rect.top;
        int i5 = rect.right;
        int i6 = rect.bottom;
        c0.j1 j1Var = k1VarG.f721a;
        k1 k1VarI = j1Var.i(i3, i4, i5, i6);
        this.f169q = k1VarI;
        boolean z2 = true;
        if (!this.f170r.equals(k1VarI)) {
            this.f170r = this.f169q;
            zG = true;
        }
        Rect rect2 = this.f167o;
        if (rect2.equals(rect)) {
            z2 = zG;
        } else {
            rect2.set(rect);
        }
        if (z2) {
            requestLayout();
        }
        return j1Var.a().f721a.c().f721a.b().f();
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        i(getContext());
        WeakHashMap weakHashMap = p0.f727a;
        d0.c(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        h();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i3, int i4, int i5, int i6) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                e eVar = (e) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i8 = ((ViewGroup.MarginLayoutParams) eVar).leftMargin + paddingLeft;
                int i9 = ((ViewGroup.MarginLayoutParams) eVar).topMargin + paddingTop;
                childAt.layout(i8, i9, measuredWidth + i8, measuredHeight + i9);
            }
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i3, int i4) {
        int measuredHeight;
        c1 a1Var;
        k();
        measureChildWithMargins(this.f157d, i3, 0, i4, 0);
        e eVar = (e) this.f157d.getLayoutParams();
        int iMax = Math.max(0, this.f157d.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) eVar).leftMargin + ((ViewGroup.MarginLayoutParams) eVar).rightMargin);
        int iMax2 = Math.max(0, this.f157d.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) eVar).topMargin + ((ViewGroup.MarginLayoutParams) eVar).bottomMargin);
        int iCombineMeasuredStates = View.combineMeasuredStates(0, this.f157d.getMeasuredState());
        WeakHashMap weakHashMap = p0.f727a;
        boolean z2 = (a0.g(this) & 256) != 0;
        if (z2) {
            measuredHeight = this.f155a;
            if (this.f161i && this.f157d.getTabContainer() != null) {
                measuredHeight += this.f155a;
            }
        } else {
            measuredHeight = this.f157d.getVisibility() != 8 ? this.f157d.getMeasuredHeight() : 0;
        }
        Rect rect = this.f166n;
        Rect rect2 = this.f168p;
        rect2.set(rect);
        k1 k1Var = this.f169q;
        this.f171s = k1Var;
        if (this.f160h || z2) {
            v.c cVarA = v.c.a(k1Var.b(), this.f171s.d() + measuredHeight, this.f171s.c(), this.f171s.a());
            k1 k1Var2 = this.f171s;
            int i5 = Build.VERSION.SDK_INT;
            if (i5 >= 30) {
                a1Var = new b1(k1Var2);
            } else {
                a1Var = i5 >= 29 ? new a1(k1Var2) : new z0(k1Var2);
            }
            a1Var.d(cVarA);
            this.f171s = a1Var.b();
        } else {
            rect2.top += measuredHeight;
            rect2.bottom = rect2.bottom;
            this.f171s = k1Var.f721a.i(0, measuredHeight, 0, 0);
        }
        g(this.f156c, rect2, true);
        if (!this.f172t.equals(this.f171s)) {
            k1 k1Var3 = this.f171s;
            this.f172t = k1Var3;
            ContentFrameLayout contentFrameLayout = this.f156c;
            WindowInsets windowInsetsF = k1Var3.f();
            if (windowInsetsF != null) {
                WindowInsets windowInsetsA = d0.a(contentFrameLayout, windowInsetsF);
                if (!windowInsetsA.equals(windowInsetsF)) {
                    k1.g(windowInsetsA, contentFrameLayout);
                }
            }
        }
        measureChildWithMargins(this.f156c, i3, 0, i4, 0);
        e eVar2 = (e) this.f156c.getLayoutParams();
        int iMax3 = Math.max(iMax, this.f156c.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) eVar2).leftMargin + ((ViewGroup.MarginLayoutParams) eVar2).rightMargin);
        int iMax4 = Math.max(iMax2, this.f156c.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) eVar2).topMargin + ((ViewGroup.MarginLayoutParams) eVar2).bottomMargin);
        int iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates, this.f156c.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(getPaddingRight() + getPaddingLeft() + iMax3, getSuggestedMinimumWidth()), i3, iCombineMeasuredStates2), View.resolveSizeAndState(Math.max(getPaddingBottom() + getPaddingTop() + iMax4, getSuggestedMinimumHeight()), i4, iCombineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f, float f3, boolean z2) {
        if (!this.f162j || !z2) {
            return false;
        }
        this.f174v.fling(0, 0, 0, (int) f3, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
        if (this.f174v.getFinalY() > this.f157d.getHeight()) {
            h();
            this.f178z.run();
        } else {
            h();
            this.f177y.run();
        }
        this.f163k = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f, float f3) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i3, int i4, int[] iArr) {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i3, int i4, int i5, int i6) {
        int i7 = this.f164l + i4;
        this.f164l = i7;
        setActionBarHideOffset(i7);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i3) {
        k0 k0Var;
        k kVar;
        this.A.f731a = i3;
        this.f164l = getActionBarHideOffset();
        h();
        i.d dVar = this.f173u;
        if (dVar == null || (kVar = (k0Var = (k0) dVar).f1641s) == null) {
            return;
        }
        kVar.a();
        k0Var.f1641s = null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i3) {
        if ((i3 & 2) == 0 || this.f157d.getVisibility() != 0) {
            return false;
        }
        return this.f162j;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        if (!this.f162j || this.f163k) {
            return;
        }
        if (this.f164l <= this.f157d.getHeight()) {
            h();
            postDelayed(this.f177y, 600L);
        } else {
            h();
            postDelayed(this.f178z, 600L);
        }
    }

    @Override // android.view.View
    public final void onWindowSystemUiVisibilityChanged(int i3) {
        super.onWindowSystemUiVisibilityChanged(i3);
        k();
        int i4 = this.f165m ^ i3;
        this.f165m = i3;
        boolean z2 = (i3 & 4) == 0;
        boolean z3 = (i3 & 256) != 0;
        i.d dVar = this.f173u;
        if (dVar != null) {
            k0 k0Var = (k0) dVar;
            k0Var.f1637o = !z3;
            if (z2 || !z3) {
                if (k0Var.f1638p) {
                    k0Var.f1638p = false;
                    k0Var.j0(true);
                }
            } else if (!k0Var.f1638p) {
                k0Var.f1638p = true;
                k0Var.j0(true);
            }
        }
        if ((i4 & 256) == 0 || this.f173u == null) {
            return;
        }
        WeakHashMap weakHashMap = p0.f727a;
        d0.c(this);
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i3) {
        super.onWindowVisibilityChanged(i3);
        this.b = i3;
        i.d dVar = this.f173u;
        if (dVar != null) {
            ((k0) dVar).f1636n = i3;
        }
    }

    public void setActionBarHideOffset(int i3) {
        h();
        this.f157d.setTranslationY(-Math.max(0, Math.min(i3, this.f157d.getHeight())));
    }

    public void setActionBarVisibilityCallback(i.d dVar) {
        this.f173u = dVar;
        if (getWindowToken() != null) {
            ((k0) this.f173u).f1636n = this.b;
            int i3 = this.f165m;
            if (i3 != 0) {
                onWindowSystemUiVisibilityChanged(i3);
                WeakHashMap weakHashMap = p0.f727a;
                d0.c(this);
            }
        }
    }

    public void setHasNonEmbeddedTabs(boolean z2) {
        this.f161i = z2;
    }

    public void setHideOnContentScrollEnabled(boolean z2) {
        if (z2 != this.f162j) {
            this.f162j = z2;
            if (z2) {
                return;
            }
            h();
            setActionBarHideOffset(0);
        }
    }

    public void setIcon(int i3) {
        k();
        l3 l3Var = (l3) this.f158e;
        l3Var.f2084d = i3 != 0 ? a1.b.v(l3Var.f2082a.getContext(), i3) : null;
        l3Var.c();
    }

    public void setLogo(int i3) {
        k();
        l3 l3Var = (l3) this.f158e;
        l3Var.f2085e = i3 != 0 ? a1.b.v(l3Var.f2082a.getContext(), i3) : null;
        l3Var.c();
    }

    public void setOverlayMode(boolean z2) {
        this.f160h = z2;
        this.f159g = z2 && getContext().getApplicationInfo().targetSdkVersion < 19;
    }

    public void setShowingForActionMode(boolean z2) {
    }

    public void setUiOptions(int i3) {
    }

    @Override // i.i1
    public void setWindowCallback(Window.Callback callback) {
        k();
        ((l3) this.f158e).f2090k = callback;
    }

    @Override // i.i1
    public void setWindowTitle(CharSequence charSequence) {
        k();
        l3 l3Var = (l3) this.f158e;
        if (l3Var.f2086g) {
            return;
        }
        Toolbar toolbar = l3Var.f2082a;
        l3Var.f2087h = charSequence;
        if ((l3Var.b & 8) != 0) {
            toolbar.setTitle(charSequence);
            if (l3Var.f2086g) {
                p0.j(toolbar.getRootView(), charSequence);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new e(layoutParams);
    }

    public void setIcon(Drawable drawable) {
        k();
        l3 l3Var = (l3) this.f158e;
        l3Var.f2084d = drawable;
        l3Var.c();
    }
}
