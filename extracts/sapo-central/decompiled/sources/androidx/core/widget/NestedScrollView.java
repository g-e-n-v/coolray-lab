package androidx.core.widget;

import a1.b;
import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AnimationUtils;
import android.widget.EdgeEffect;
import android.widget.FrameLayout;
import android.widget.OverScroller;
import c0.a0;
import c0.f0;
import c0.n;
import c0.p;
import c0.p0;
import c0.q;
import com.google.android.material.datepicker.f;
import f0.e;
import f0.i;
import f0.j;
import f0.k;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public class NestedScrollView extends FrameLayout implements p {
    public static final float A = (float) (Math.log(0.78d) / Math.log(0.9d));
    public static final f B = new f(2);
    public static final int[] C = {R.attr.fillViewport};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f300a;
    public long b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Rect f301c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final OverScroller f302d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final EdgeEffect f303e;
    public final EdgeEffect f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f304g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f305h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f306i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public View f307j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f308k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public VelocityTracker f309l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f310m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f311n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f312o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f313p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f314q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f315r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final int[] f316s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int[] f317t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f318u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f319v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public k f320w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final q f321x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final n f322y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public float f323z;

    public NestedScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, com.ex.auto.R.attr.nestedScrollViewStyle);
        this.f301c = new Rect();
        this.f305h = true;
        this.f306i = false;
        this.f307j = null;
        this.f308k = false;
        this.f311n = true;
        this.f315r = -1;
        this.f316s = new int[2];
        this.f317t = new int[2];
        int i3 = Build.VERSION.SDK_INT;
        this.f303e = i3 >= 31 ? e.a(context, attributeSet) : new EdgeEffect(context);
        this.f = i3 >= 31 ? e.a(context, attributeSet) : new EdgeEffect(context);
        this.f300a = context.getResources().getDisplayMetrics().density * 160.0f * 386.0878f * 0.84f;
        this.f302d = new OverScroller(getContext());
        setFocusable(true);
        setDescendantFocusability(262144);
        setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.f312o = viewConfiguration.getScaledTouchSlop();
        this.f313p = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f314q = viewConfiguration.getScaledMaximumFlingVelocity();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C, com.ex.auto.R.attr.nestedScrollViewStyle, 0);
        setFillViewport(typedArrayObtainStyledAttributes.getBoolean(0, false));
        typedArrayObtainStyledAttributes.recycle();
        this.f321x = new q();
        this.f322y = new n(this);
        setNestedScrollingEnabled(true);
        p0.i(this, B);
    }

    private float getVerticalScrollFactorCompat() {
        if (this.f323z == 0.0f) {
            TypedValue typedValue = new TypedValue();
            Context context = getContext();
            if (!context.getTheme().resolveAttribute(R.attr.listPreferredItemHeight, typedValue, true)) {
                throw new IllegalStateException("Expected theme to define listPreferredItemHeight.");
            }
            this.f323z = typedValue.getDimension(context.getResources().getDisplayMetrics());
        }
        return this.f323z;
    }

    public static boolean m(View view, NestedScrollView nestedScrollView) {
        if (view == nestedScrollView) {
            return true;
        }
        Object parent = view.getParent();
        return (parent instanceof ViewGroup) && m((View) parent, nestedScrollView);
    }

    @Override // c0.o
    public final void a(View view, View view2, int i3, int i4) {
        q qVar = this.f321x;
        if (i4 == 1) {
            qVar.b = i3;
        } else {
            qVar.f731a = i3;
        }
        this.f322y.g(2, i4);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view);
    }

    @Override // c0.o
    public final void b(View view, int i3) {
        q qVar = this.f321x;
        if (i3 == 1) {
            qVar.b = 0;
        } else {
            qVar.f731a = 0;
        }
        v(i3);
    }

    @Override // c0.o
    public final void c(View view, int i3, int i4, int[] iArr, int i5) {
        this.f322y.c(i3, i4, iArr, null, i5);
    }

    @Override // android.view.View
    public final int computeHorizontalScrollExtent() {
        return super.computeHorizontalScrollExtent();
    }

    @Override // android.view.View
    public final int computeHorizontalScrollOffset() {
        return super.computeHorizontalScrollOffset();
    }

    @Override // android.view.View
    public final int computeHorizontalScrollRange() {
        return super.computeHorizontalScrollRange();
    }

    /* JADX WARN: Code duplicated, block: B:22:0x007f  */
    /* JADX WARN: Code duplicated, block: B:24:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:28:0x00af A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:29:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:31:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:32:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:34:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:38:0x00da  */
    /* JADX WARN: Code duplicated, block: B:40:0x00e0  */
    @Override // android.view.View
    public final void computeScroll() {
        int iRound;
        int[] iArr;
        int i3;
        int scrollRange;
        int overScrollMode;
        OverScroller overScroller = this.f302d;
        if (overScroller.isFinished()) {
            return;
        }
        overScroller.computeScrollOffset();
        int currY = overScroller.getCurrY();
        int i4 = currY - this.f319v;
        int height = getHeight();
        EdgeEffect edgeEffect = this.f303e;
        EdgeEffect edgeEffect2 = this.f;
        if (i4 <= 0 || b.u(edgeEffect) == 0.0f) {
            if (i4 < 0 && b.u(edgeEffect2) != 0.0f) {
                float f = height;
                iRound = Math.round(b.O(edgeEffect2, (i4 * 4.0f) / f, 0.5f) * (f / 4.0f));
                if (iRound != i4) {
                    edgeEffect2.finish();
                }
            }
            int i5 = i4;
            this.f319v = currY;
            iArr = this.f317t;
            iArr[1] = 0;
            this.f322y.c(0, i5, iArr, null, 1);
            i3 = i5 - iArr[1];
            scrollRange = getScrollRange();
            if (i3 != 0) {
                int scrollY = getScrollY();
                q(i3, getScrollX(), scrollY, scrollRange);
                int scrollY2 = getScrollY() - scrollY;
                int i6 = i3 - scrollY2;
                iArr[1] = 0;
                this.f322y.d(0, scrollY2, 0, i6, this.f316s, 1, iArr);
                i3 = i6 - iArr[1];
            }
            if (i3 != 0) {
                overScrollMode = getOverScrollMode();
                if (overScrollMode != 0 || (overScrollMode == 1 && scrollRange > 0)) {
                    if (i3 < 0) {
                        if (edgeEffect.isFinished()) {
                            edgeEffect.onAbsorb((int) overScroller.getCurrVelocity());
                        }
                    } else if (edgeEffect2.isFinished()) {
                        edgeEffect2.onAbsorb((int) overScroller.getCurrVelocity());
                    }
                }
                overScroller.abortAnimation();
                v(1);
            }
            if (!overScroller.isFinished()) {
                v(1);
            } else {
                WeakHashMap weakHashMap = p0.f727a;
                a0.k(this);
            }
        }
        iRound = Math.round(b.O(edgeEffect, ((-i4) * 4.0f) / height, 0.5f) * ((-height) / 4.0f));
        if (iRound != i4) {
            edgeEffect.finish();
        }
        i4 -= iRound;
        int i7 = i4;
        this.f319v = currY;
        iArr = this.f317t;
        iArr[1] = 0;
        this.f322y.c(0, i7, iArr, null, 1);
        i3 = i7 - iArr[1];
        scrollRange = getScrollRange();
        if (i3 != 0) {
            int scrollY3 = getScrollY();
            q(i3, getScrollX(), scrollY3, scrollRange);
            int scrollY4 = getScrollY() - scrollY3;
            int i8 = i3 - scrollY4;
            iArr[1] = 0;
            this.f322y.d(0, scrollY4, 0, i8, this.f316s, 1, iArr);
            i3 = i8 - iArr[1];
        }
        if (i3 != 0) {
            overScrollMode = getOverScrollMode();
            if (overScrollMode != 0) {
                if (i3 < 0) {
                    if (edgeEffect.isFinished()) {
                        edgeEffect.onAbsorb((int) overScroller.getCurrVelocity());
                    }
                } else if (edgeEffect2.isFinished()) {
                    edgeEffect2.onAbsorb((int) overScroller.getCurrVelocity());
                }
            } else if (i3 < 0) {
                if (edgeEffect.isFinished()) {
                    edgeEffect.onAbsorb((int) overScroller.getCurrVelocity());
                }
            } else if (edgeEffect2.isFinished()) {
                edgeEffect2.onAbsorb((int) overScroller.getCurrVelocity());
            }
            overScroller.abortAnimation();
            v(1);
        }
        if (!overScroller.isFinished()) {
            v(1);
        } else {
            WeakHashMap weakHashMap2 = p0.f727a;
            a0.k(this);
        }
    }

    @Override // android.view.View
    public final int computeVerticalScrollExtent() {
        return super.computeVerticalScrollExtent();
    }

    @Override // android.view.View
    public final int computeVerticalScrollOffset() {
        return Math.max(0, super.computeVerticalScrollOffset());
    }

    @Override // android.view.View
    public final int computeVerticalScrollRange() {
        int childCount = getChildCount();
        int height = (getHeight() - getPaddingBottom()) - getPaddingTop();
        if (childCount == 0) {
            return height;
        }
        View childAt = getChildAt(0);
        int bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
        int scrollY = getScrollY();
        int iMax = Math.max(0, bottom - height);
        if (scrollY < 0) {
            return bottom - scrollY;
        }
        return scrollY > iMax ? (scrollY - iMax) + bottom : bottom;
    }

    @Override // c0.p
    public final void d(View view, int i3, int i4, int i5, int i6, int i7, int[] iArr) {
        o(i6, i7, iArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || j(keyEvent);
    }

    @Override // android.view.View
    public final boolean dispatchNestedFling(float f, float f3, boolean z2) {
        return this.f322y.a(f, f3, z2);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreFling(float f, float f3) {
        return this.f322y.b(f, f3);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreScroll(int i3, int i4, int[] iArr, int[] iArr2) {
        return this.f322y.c(i3, i4, iArr, iArr2, 0);
    }

    @Override // android.view.View
    public final boolean dispatchNestedScroll(int i3, int i4, int i5, int i6, int[] iArr) {
        return this.f322y.d(i3, i4, i5, i6, iArr, 0, null);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int paddingLeft;
        super.draw(canvas);
        int scrollY = getScrollY();
        EdgeEffect edgeEffect = this.f303e;
        int paddingLeft2 = 0;
        if (!edgeEffect.isFinished()) {
            int iSave = canvas.save();
            int width = getWidth();
            int height = getHeight();
            int iMin = Math.min(0, scrollY);
            if (i.a(this)) {
                width -= getPaddingRight() + getPaddingLeft();
                paddingLeft = getPaddingLeft();
            } else {
                paddingLeft = 0;
            }
            if (i.a(this)) {
                height -= getPaddingBottom() + getPaddingTop();
                iMin += getPaddingTop();
            }
            canvas.translate(paddingLeft, iMin);
            edgeEffect.setSize(width, height);
            if (edgeEffect.draw(canvas)) {
                WeakHashMap weakHashMap = p0.f727a;
                a0.k(this);
            }
            canvas.restoreToCount(iSave);
        }
        EdgeEffect edgeEffect2 = this.f;
        if (edgeEffect2.isFinished()) {
            return;
        }
        int iSave2 = canvas.save();
        int width2 = getWidth();
        int height2 = getHeight();
        int iMax = Math.max(getScrollRange(), scrollY) + height2;
        if (i.a(this)) {
            width2 -= getPaddingRight() + getPaddingLeft();
            paddingLeft2 = getPaddingLeft();
        }
        if (i.a(this)) {
            height2 -= getPaddingBottom() + getPaddingTop();
            iMax -= getPaddingBottom();
        }
        canvas.translate(paddingLeft2 - width2, iMax);
        canvas.rotate(180.0f, width2, 0.0f);
        edgeEffect2.setSize(width2, height2);
        if (edgeEffect2.draw(canvas)) {
            WeakHashMap weakHashMap2 = p0.f727a;
            a0.k(this);
        }
        canvas.restoreToCount(iSave2);
    }

    @Override // c0.o
    public final void e(View view, int i3, int i4, int i5, int i6, int i7) {
        o(i6, i7, null);
    }

    @Override // c0.o
    public final boolean f(View view, View view2, int i3, int i4) {
        return (i3 & 2) != 0;
    }

    public final boolean g(int i3) {
        View viewFindFocus = findFocus();
        if (viewFindFocus == this) {
            viewFindFocus = null;
        }
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, i3);
        int maxScrollAmount = getMaxScrollAmount();
        if (viewFindNextFocus == null || !n(viewFindNextFocus, maxScrollAmount, getHeight())) {
            if (i3 == 33 && getScrollY() < maxScrollAmount) {
                maxScrollAmount = getScrollY();
            } else if (i3 == 130 && getChildCount() > 0) {
                View childAt = getChildAt(0);
                maxScrollAmount = Math.min((childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin) - ((getHeight() + getScrollY()) - getPaddingBottom()), maxScrollAmount);
            }
            if (maxScrollAmount == 0) {
                return false;
            }
            if (i3 != 130) {
                maxScrollAmount = -maxScrollAmount;
            }
            i(maxScrollAmount);
        } else {
            Rect rect = this.f301c;
            viewFindNextFocus.getDrawingRect(rect);
            offsetDescendantRectToMyCoords(viewFindNextFocus, rect);
            i(h(rect));
            viewFindNextFocus.requestFocus(i3);
        }
        if (viewFindFocus == null || !viewFindFocus.isFocused() || n(viewFindFocus, 0, getHeight())) {
            return true;
        }
        int descendantFocusability = getDescendantFocusability();
        setDescendantFocusability(131072);
        requestFocus();
        setDescendantFocusability(descendantFocusability);
        return true;
    }

    @Override // android.view.View
    public float getBottomFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int bottom = ((childAt.getBottom() + layoutParams.bottomMargin) - getScrollY()) - (getHeight() - getPaddingBottom());
        if (bottom < verticalFadingEdgeLength) {
            return bottom / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    public int getMaxScrollAmount() {
        return (int) (getHeight() * 0.5f);
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        q qVar = this.f321x;
        return qVar.b | qVar.f731a;
    }

    public int getScrollRange() {
        if (getChildCount() <= 0) {
            return 0;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        return Math.max(0, ((childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin) - ((getHeight() - getPaddingTop()) - getPaddingBottom()));
    }

    @Override // android.view.View
    public float getTopFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int scrollY = getScrollY();
        if (scrollY < verticalFadingEdgeLength) {
            return scrollY / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    public final int h(Rect rect) {
        if (getChildCount() == 0) {
            return 0;
        }
        int height = getHeight();
        int scrollY = getScrollY();
        int i3 = scrollY + height;
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        if (rect.top > 0) {
            scrollY += verticalFadingEdgeLength;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        int i4 = rect.bottom < (childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin ? i3 - verticalFadingEdgeLength : i3;
        int i5 = rect.bottom;
        if (i5 > i4 && rect.top > scrollY) {
            return Math.min(rect.height() > height ? rect.top - scrollY : rect.bottom - i4, (childAt.getBottom() + layoutParams.bottomMargin) - i3);
        }
        if (rect.top >= scrollY || i5 >= i4) {
            return 0;
        }
        return Math.max(rect.height() > height ? 0 - (i4 - rect.bottom) : 0 - (scrollY - rect.top), -getScrollY());
    }

    @Override // android.view.View
    public final boolean hasNestedScrollingParent() {
        return this.f322y.f(0);
    }

    public final void i(int i3) {
        if (i3 != 0) {
            if (this.f311n) {
                t(0, i3, false);
            } else {
                scrollBy(0, i3);
            }
        }
    }

    @Override // android.view.View
    public final boolean isNestedScrollingEnabled() {
        return this.f322y.f724d;
    }

    public final boolean j(KeyEvent keyEvent) {
        Rect rect = this.f301c;
        rect.setEmpty();
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            if (childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin > (getHeight() - getPaddingTop()) - getPaddingBottom()) {
                if (keyEvent.getAction() == 0) {
                    int keyCode = keyEvent.getKeyCode();
                    if (keyCode == 19) {
                        return !keyEvent.isAltPressed() ? g(33) : l(33);
                    }
                    if (keyCode == 20) {
                        return !keyEvent.isAltPressed() ? g(130) : l(130);
                    }
                    if (keyCode == 62) {
                        int i3 = keyEvent.isShiftPressed() ? 33 : 130;
                        boolean z2 = i3 == 130;
                        int height = getHeight();
                        if (z2) {
                            rect.top = getScrollY() + height;
                            int childCount = getChildCount();
                            if (childCount > 0) {
                                View childAt2 = getChildAt(childCount - 1);
                                int paddingBottom = getPaddingBottom() + childAt2.getBottom() + ((FrameLayout.LayoutParams) childAt2.getLayoutParams()).bottomMargin;
                                if (rect.top + height > paddingBottom) {
                                    rect.top = paddingBottom - height;
                                }
                            }
                        } else {
                            int scrollY = getScrollY() - height;
                            rect.top = scrollY;
                            if (scrollY < 0) {
                                rect.top = 0;
                            }
                        }
                        int i4 = rect.top;
                        int i5 = height + i4;
                        rect.bottom = i5;
                        r(i3, i4, i5);
                        return false;
                    }
                }
                return false;
            }
        }
        if (isFocused() && keyEvent.getKeyCode() != 4) {
            View viewFindFocus = findFocus();
            if (viewFindFocus == this) {
                viewFindFocus = null;
            }
            View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, 130);
            if (viewFindNextFocus != null && viewFindNextFocus != this && viewFindNextFocus.requestFocus(130)) {
                return true;
            }
        }
        return false;
    }

    public final void k(int i3) {
        if (getChildCount() > 0) {
            this.f302d.fling(getScrollX(), getScrollY(), 0, i3, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE, 0, 0);
            this.f322y.g(2, 1);
            this.f319v = getScrollY();
            WeakHashMap weakHashMap = p0.f727a;
            a0.k(this);
        }
    }

    public final boolean l(int i3) {
        int childCount;
        boolean z2 = i3 == 130;
        int height = getHeight();
        Rect rect = this.f301c;
        rect.top = 0;
        rect.bottom = height;
        if (z2 && (childCount = getChildCount()) > 0) {
            View childAt = getChildAt(childCount - 1);
            int paddingBottom = getPaddingBottom() + childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
            rect.bottom = paddingBottom;
            rect.top = paddingBottom - height;
        }
        return r(i3, rect.top, rect.bottom);
    }

    @Override // android.view.ViewGroup
    public final void measureChild(View view, int i3, int i4) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i3, getPaddingRight() + getPaddingLeft(), layoutParams.width), View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    @Override // android.view.ViewGroup
    public final void measureChildWithMargins(View view, int i3, int i4, int i5, int i6) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i3, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i4, marginLayoutParams.width), View.MeasureSpec.makeMeasureSpec(marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, 0));
    }

    public final boolean n(View view, int i3, int i4) {
        Rect rect = this.f301c;
        view.getDrawingRect(rect);
        offsetDescendantRectToMyCoords(view, rect);
        return rect.bottom + i3 >= getScrollY() && rect.top - i3 <= getScrollY() + i4;
    }

    public final void o(int i3, int i4, int[] iArr) {
        int scrollY = getScrollY();
        scrollBy(0, i3);
        int scrollY2 = getScrollY() - scrollY;
        if (iArr != null) {
            iArr[1] = iArr[1] + scrollY2;
        }
        this.f322y.d(0, scrollY2, 0, i3 - scrollY2, null, i4, iArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f306i = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float axisValue;
        boolean z2;
        int i3 = 0;
        if (motionEvent.getAction() == 8 && !this.f308k) {
            if (b.E(motionEvent, 2)) {
                axisValue = motionEvent.getAxisValue(9);
            } else {
                axisValue = b.E(motionEvent, 4194304) ? motionEvent.getAxisValue(26) : 0.0f;
            }
            if (axisValue != 0.0f) {
                int verticalScrollFactorCompat = (int) (axisValue * getVerticalScrollFactorCompat());
                int scrollRange = getScrollRange();
                int scrollY = getScrollY();
                int i4 = scrollY - verticalScrollFactorCompat;
                if (i4 < 0) {
                    int overScrollMode = getOverScrollMode();
                    if ((overScrollMode == 0 || (overScrollMode == 1 && getScrollRange() > 0)) && !b.E(motionEvent, 8194)) {
                        float height = (-i4) / getHeight();
                        EdgeEffect edgeEffect = this.f303e;
                        b.O(edgeEffect, height, 0.5f);
                        edgeEffect.onRelease();
                        invalidate();
                        z2 = 1;
                    } else {
                        z2 = 0;
                    }
                } else if (i4 > scrollRange) {
                    int overScrollMode2 = getOverScrollMode();
                    if ((overScrollMode2 == 0 || (overScrollMode2 == 1 && getScrollRange() > 0)) && !b.E(motionEvent, 8194)) {
                        float height2 = (i4 - scrollRange) / getHeight();
                        EdgeEffect edgeEffect2 = this.f;
                        b.O(edgeEffect2, height2, 0.5f);
                        edgeEffect2.onRelease();
                        invalidate();
                        i3 = 1;
                    }
                    z2 = i3;
                    i3 = scrollRange;
                } else {
                    z2 = 0;
                    i3 = i4;
                }
                if (i3 == scrollY) {
                    return z2;
                }
                super.scrollTo(getScrollX(), i3);
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0083  */
    /* JADX WARN: Code duplicated, block: B:36:0x008b  */
    /* JADX WARN: Code duplicated, block: B:39:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:62:0x0119  */
    /* JADX WARN: Code duplicated, block: B:70:0x012d  */
    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        VelocityTracker velocityTracker;
        VelocityTracker velocityTracker2;
        int action = motionEvent.getAction();
        boolean z2 = true;
        if (action == 2 && this.f308k) {
            return true;
        }
        int i3 = action & 255;
        if (i3 == 0) {
            int y2 = (int) motionEvent.getY();
            int x2 = (int) motionEvent.getX();
            int childCount = getChildCount();
            OverScroller overScroller = this.f302d;
            if (childCount > 0) {
                int scrollY = getScrollY();
                View childAt = getChildAt(0);
                if (y2 < childAt.getTop() - scrollY || y2 >= childAt.getBottom() - scrollY || x2 < childAt.getLeft() || x2 >= childAt.getRight()) {
                    if (!u(motionEvent) && overScroller.isFinished()) {
                        z2 = false;
                    }
                    this.f308k = z2;
                    velocityTracker = this.f309l;
                    if (velocityTracker != null) {
                        velocityTracker.recycle();
                        this.f309l = null;
                    }
                } else {
                    this.f304g = y2;
                    this.f315r = motionEvent.getPointerId(0);
                    VelocityTracker velocityTracker3 = this.f309l;
                    if (velocityTracker3 == null) {
                        this.f309l = VelocityTracker.obtain();
                    } else {
                        velocityTracker3.clear();
                    }
                    this.f309l.addMovement(motionEvent);
                    overScroller.computeScrollOffset();
                    if (!u(motionEvent) && overScroller.isFinished()) {
                        z2 = false;
                    }
                    this.f308k = z2;
                    this.f322y.g(2, 0);
                }
            } else {
                if (!u(motionEvent)) {
                    z2 = false;
                }
                this.f308k = z2;
                velocityTracker = this.f309l;
                if (velocityTracker != null) {
                    velocityTracker.recycle();
                    this.f309l = null;
                }
            }
        } else if (i3 == 1) {
            this.f308k = false;
            this.f315r = -1;
            velocityTracker2 = this.f309l;
            if (velocityTracker2 != null) {
                velocityTracker2.recycle();
                this.f309l = null;
            }
            if (this.f302d.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                WeakHashMap weakHashMap = p0.f727a;
                a0.k(this);
            }
            v(0);
        } else if (i3 == 2) {
            int i4 = this.f315r;
            if (i4 != -1) {
                int iFindPointerIndex = motionEvent.findPointerIndex(i4);
                if (iFindPointerIndex == -1) {
                    Log.e("NestedScrollView", "Invalid pointerId=" + i4 + " in onInterceptTouchEvent");
                } else {
                    int y3 = (int) motionEvent.getY(iFindPointerIndex);
                    if (Math.abs(y3 - this.f304g) > this.f312o && (2 & getNestedScrollAxes()) == 0) {
                        this.f308k = true;
                        this.f304g = y3;
                        if (this.f309l == null) {
                            this.f309l = VelocityTracker.obtain();
                        }
                        this.f309l.addMovement(motionEvent);
                        this.f318u = 0;
                        ViewParent parent = getParent();
                        if (parent != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                    }
                }
            }
        } else if (i3 == 3) {
            this.f308k = false;
            this.f315r = -1;
            velocityTracker2 = this.f309l;
            if (velocityTracker2 != null) {
                velocityTracker2.recycle();
                this.f309l = null;
            }
            if (this.f302d.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                WeakHashMap weakHashMap2 = p0.f727a;
                a0.k(this);
            }
            v(0);
        } else if (i3 == 6) {
            p(motionEvent);
        }
        return this.f308k;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i3, int i4, int i5, int i6) {
        int measuredHeight;
        super.onLayout(z2, i3, i4, i5, i6);
        int i7 = 0;
        this.f305h = false;
        View view = this.f307j;
        if (view != null && m(view, this)) {
            View view2 = this.f307j;
            Rect rect = this.f301c;
            view2.getDrawingRect(rect);
            offsetDescendantRectToMyCoords(view2, rect);
            int iH = h(rect);
            if (iH != 0) {
                scrollBy(0, iH);
            }
        }
        this.f307j = null;
        if (!this.f306i) {
            if (this.f320w != null) {
                scrollTo(getScrollX(), this.f320w.f1738a);
                this.f320w = null;
            }
            if (getChildCount() > 0) {
                View childAt = getChildAt(0);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                measuredHeight = childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            } else {
                measuredHeight = 0;
            }
            int paddingTop = ((i6 - i4) - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            if (paddingTop < measuredHeight && scrollY >= 0) {
                i7 = paddingTop + scrollY > measuredHeight ? measuredHeight - paddingTop : scrollY;
            }
            if (i7 != scrollY) {
                scrollTo(getScrollX(), i7);
            }
        }
        scrollTo(getScrollX(), getScrollY());
        this.f306i = true;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i3, int i4) {
        super.onMeasure(i3, i4);
        if (this.f310m && View.MeasureSpec.getMode(i4) != 0 && getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int measuredHeight2 = (((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) - layoutParams.topMargin) - layoutParams.bottomMargin;
            if (measuredHeight < measuredHeight2) {
                childAt.measure(ViewGroup.getChildMeasureSpec(i3, getPaddingRight() + getPaddingLeft() + layoutParams.leftMargin + layoutParams.rightMargin, layoutParams.width), View.MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824));
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f, float f3, boolean z2) {
        if (z2) {
            return false;
        }
        dispatchNestedFling(0.0f, f3, true);
        k((int) f3);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f, float f3) {
        return this.f322y.b(f, f3);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i3, int i4, int[] iArr) {
        this.f322y.c(i3, i4, iArr, null, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i3, int i4, int i5, int i6) {
        o(i6, 0, null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i3) {
        a(view, view2, i3, 0);
    }

    @Override // android.view.View
    public final void onOverScrolled(int i3, int i4, boolean z2, boolean z3) {
        super.scrollTo(i3, i4);
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i3, Rect rect) {
        if (i3 == 2) {
            i3 = 130;
        } else if (i3 == 1) {
            i3 = 33;
        }
        View viewFindNextFocus = rect == null ? FocusFinder.getInstance().findNextFocus(this, null, i3) : FocusFinder.getInstance().findNextFocusFromRect(this, rect, i3);
        if (viewFindNextFocus != null && n(viewFindNextFocus, 0, getHeight())) {
            return viewFindNextFocus.requestFocus(i3, rect);
        }
        return false;
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof k)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        k kVar = (k) parcelable;
        super.onRestoreInstanceState(kVar.getSuperState());
        this.f320w = kVar;
        requestLayout();
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        k kVar = new k(super.onSaveInstanceState());
        kVar.f1738a = getScrollY();
        return kVar;
    }

    @Override // android.view.View
    public final void onScrollChanged(int i3, int i4, int i5, int i6) {
        super.onScrollChanged(i3, i4, i5, i6);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i3, int i4, int i5, int i6) {
        super.onSizeChanged(i3, i4, i5, i6);
        View viewFindFocus = findFocus();
        if (viewFindFocus == null || this == viewFindFocus || !n(viewFindFocus, 0, i6)) {
            return;
        }
        Rect rect = this.f301c;
        viewFindFocus.getDrawingRect(rect);
        offsetDescendantRectToMyCoords(viewFindFocus, rect);
        i(h(rect));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i3) {
        return f(view, view2, i3, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        b(view, 0);
    }

    /* JADX WARN: Code duplicated, block: B:117:0x027b  */
    /* JADX WARN: Code duplicated, block: B:119:0x0283  */
    /* JADX WARN: Code duplicated, block: B:49:0x0123  */
    /* JADX WARN: Code duplicated, block: B:52:0x012b  */
    /* JADX WARN: Code duplicated, block: B:54:0x0133  */
    /* JADX WARN: Code duplicated, block: B:56:0x0139  */
    /* JADX WARN: Code duplicated, block: B:59:0x0140  */
    /* JADX WARN: Code duplicated, block: B:61:0x0144  */
    /* JADX WARN: Code duplicated, block: B:64:0x014a  */
    /* JADX WARN: Code duplicated, block: B:66:0x0164  */
    /* JADX WARN: Code duplicated, block: B:74:0x018d  */
    /* JADX WARN: Code duplicated, block: B:80:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:83:0x01cd  */
    /* JADX WARN: Code duplicated, block: B:85:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:87:0x01ee  */
    /* JADX WARN: Code duplicated, block: B:88:0x01f2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:89:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:91:0x0210  */
    /* JADX WARN: Code duplicated, block: B:97:0x0226  */
    /* JADX WARN: Code duplicated, block: B:99:0x0229  */
    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        ViewParent parent;
        boolean z2;
        int i3;
        float f;
        float fO;
        int iRound;
        int i4;
        int i5;
        boolean zC;
        int[] iArr;
        int[] iArr2;
        int i6;
        int scrollY;
        int scrollRange;
        int overScrollMode;
        boolean z3;
        boolean z4;
        boolean z5;
        int i7;
        int i8;
        int iAbs;
        int i9;
        ViewParent parent2;
        if (this.f309l == null) {
            this.f309l = VelocityTracker.obtain();
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f318u = 0;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        float f3 = 0.0f;
        motionEventObtain.offsetLocation(0.0f, this.f318u);
        n nVar = this.f322y;
        if (actionMasked != 0) {
            EdgeEffect edgeEffect = this.f303e;
            EdgeEffect edgeEffect2 = this.f;
            if (actionMasked == 1) {
                VelocityTracker velocityTracker = this.f309l;
                velocityTracker.computeCurrentVelocity(1000, this.f314q);
                int yVelocity = (int) velocityTracker.getYVelocity(this.f315r);
                if (Math.abs(yVelocity) >= this.f313p) {
                    if (b.u(edgeEffect) == 0.0f) {
                        if (b.u(edgeEffect2) != 0.0f) {
                            int i10 = -yVelocity;
                            if (s(edgeEffect2, i10)) {
                                edgeEffect2.onAbsorb(i10);
                            } else {
                                k(i10);
                            }
                        } else {
                            z2 = false;
                        }
                        if (!z2) {
                            i3 = -yVelocity;
                            f = i3;
                            if (!nVar.b(0.0f, f)) {
                                dispatchNestedFling(0.0f, f, true);
                                k(i3);
                            }
                        }
                    } else if (s(edgeEffect, yVelocity)) {
                        edgeEffect.onAbsorb(yVelocity);
                    } else {
                        k(-yVelocity);
                    }
                    z2 = true;
                    if (!z2) {
                        i3 = -yVelocity;
                        f = i3;
                        if (!nVar.b(0.0f, f)) {
                            dispatchNestedFling(0.0f, f, true);
                            k(i3);
                        }
                    }
                } else if (this.f302d.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    WeakHashMap weakHashMap = p0.f727a;
                    a0.k(this);
                }
                this.f315r = -1;
                this.f308k = false;
                VelocityTracker velocityTracker2 = this.f309l;
                if (velocityTracker2 != null) {
                    velocityTracker2.recycle();
                    this.f309l = null;
                }
                v(0);
                edgeEffect.onRelease();
                edgeEffect2.onRelease();
            } else if (actionMasked == 2) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.f315r);
                if (iFindPointerIndex == -1) {
                    Log.e("NestedScrollView", "Invalid pointerId=" + this.f315r + " in onTouchEvent");
                } else {
                    int y2 = (int) motionEvent.getY(iFindPointerIndex);
                    int i11 = this.f304g - y2;
                    float x2 = motionEvent.getX(iFindPointerIndex) / getWidth();
                    float height = i11 / getHeight();
                    if (b.u(edgeEffect) != 0.0f) {
                        fO = -b.O(edgeEffect, -height, x2);
                        if (b.u(edgeEffect) == 0.0f) {
                            edgeEffect.onRelease();
                        }
                    } else if (b.u(edgeEffect2) != 0.0f) {
                        fO = b.O(edgeEffect2, height, 1.0f - x2);
                        if (b.u(edgeEffect2) == 0.0f) {
                            edgeEffect2.onRelease();
                        }
                    } else {
                        iRound = Math.round(f3 * getHeight());
                        if (iRound != 0) {
                            invalidate();
                        }
                        i4 = i11 - iRound;
                        if (!this.f308k) {
                            iAbs = Math.abs(i4);
                            i9 = this.f312o;
                            if (iAbs > i9) {
                                parent2 = getParent();
                                if (parent2 != null) {
                                    parent2.requestDisallowInterceptTouchEvent(true);
                                }
                                this.f308k = true;
                                if (i4 > 0) {
                                    i4 -= i9;
                                } else {
                                    i4 += i9;
                                }
                            }
                        }
                        i5 = i4;
                        if (this.f308k) {
                            zC = this.f322y.c(0, i5, this.f317t, this.f316s, 0);
                            iArr = this.f317t;
                            iArr2 = this.f316s;
                            if (zC) {
                                i5 -= iArr[1];
                                this.f318u += iArr2[1];
                            }
                            i6 = i5;
                            this.f304g = y2 - iArr2[1];
                            scrollY = getScrollY();
                            scrollRange = getScrollRange();
                            overScrollMode = getOverScrollMode();
                            if (overScrollMode != 0 || (overScrollMode == 1 && scrollRange > 0)) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            if (q(i6, 0, getScrollY(), scrollRange) || nVar.f(0)) {
                                z4 = false;
                            } else {
                                z4 = true;
                            }
                            int scrollY2 = getScrollY() - scrollY;
                            iArr[1] = 0;
                            this.f322y.d(0, scrollY2, 0, i6 - scrollY2, this.f316s, 0, iArr);
                            int i12 = this.f304g;
                            int i13 = iArr2[1];
                            this.f304g = i12 - i13;
                            this.f318u += i13;
                            if (z3) {
                                i7 = i6 - iArr[1];
                                i8 = scrollY + i7;
                                if (i8 < 0) {
                                    b.O(edgeEffect, (-i7) / getHeight(), motionEvent.getX(iFindPointerIndex) / getWidth());
                                    if (!edgeEffect2.isFinished()) {
                                        edgeEffect2.onRelease();
                                    }
                                } else if (i8 > scrollRange) {
                                    b.O(edgeEffect2, i7 / getHeight(), 1.0f - (motionEvent.getX(iFindPointerIndex) / getWidth()));
                                    if (!edgeEffect.isFinished()) {
                                        edgeEffect.onRelease();
                                    }
                                }
                                if (edgeEffect.isFinished() || !edgeEffect2.isFinished()) {
                                    WeakHashMap weakHashMap2 = p0.f727a;
                                    a0.k(this);
                                    z5 = false;
                                } else {
                                    z5 = z4;
                                }
                            } else {
                                z5 = z4;
                            }
                            if (z5) {
                                this.f309l.clear();
                            }
                        }
                    }
                    f3 = fO;
                    iRound = Math.round(f3 * getHeight());
                    if (iRound != 0) {
                        invalidate();
                    }
                    i4 = i11 - iRound;
                    if (!this.f308k) {
                        iAbs = Math.abs(i4);
                        i9 = this.f312o;
                        if (iAbs > i9) {
                            parent2 = getParent();
                            if (parent2 != null) {
                                parent2.requestDisallowInterceptTouchEvent(true);
                            }
                            this.f308k = true;
                            if (i4 > 0) {
                                i4 -= i9;
                            } else {
                                i4 += i9;
                            }
                        }
                    }
                    i5 = i4;
                    if (this.f308k) {
                        zC = this.f322y.c(0, i5, this.f317t, this.f316s, 0);
                        iArr = this.f317t;
                        iArr2 = this.f316s;
                        if (zC) {
                            i5 -= iArr[1];
                            this.f318u += iArr2[1];
                        }
                        i6 = i5;
                        this.f304g = y2 - iArr2[1];
                        scrollY = getScrollY();
                        scrollRange = getScrollRange();
                        overScrollMode = getOverScrollMode();
                        if (overScrollMode != 0) {
                            z3 = true;
                        } else {
                            z3 = true;
                        }
                        if (q(i6, 0, getScrollY(), scrollRange)) {
                            z4 = false;
                        } else {
                            z4 = false;
                        }
                        int scrollY3 = getScrollY() - scrollY;
                        iArr[1] = 0;
                        this.f322y.d(0, scrollY3, 0, i6 - scrollY3, this.f316s, 0, iArr);
                        int i14 = this.f304g;
                        int i15 = iArr2[1];
                        this.f304g = i14 - i15;
                        this.f318u += i15;
                        if (z3) {
                            z5 = z4;
                        } else {
                            i7 = i6 - iArr[1];
                            i8 = scrollY + i7;
                            if (i8 < 0) {
                                b.O(edgeEffect, (-i7) / getHeight(), motionEvent.getX(iFindPointerIndex) / getWidth());
                                if (!edgeEffect2.isFinished()) {
                                    edgeEffect2.onRelease();
                                }
                            } else if (i8 > scrollRange) {
                                b.O(edgeEffect2, i7 / getHeight(), 1.0f - (motionEvent.getX(iFindPointerIndex) / getWidth()));
                                if (!edgeEffect.isFinished()) {
                                    edgeEffect.onRelease();
                                }
                            }
                            if (edgeEffect.isFinished()) {
                            }
                            WeakHashMap weakHashMap3 = p0.f727a;
                            a0.k(this);
                            z5 = false;
                        }
                        if (z5) {
                            this.f309l.clear();
                        }
                    }
                }
            } else if (actionMasked == 3) {
                if (this.f308k && getChildCount() > 0) {
                    if (this.f302d.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                        WeakHashMap weakHashMap4 = p0.f727a;
                        a0.k(this);
                    }
                }
                this.f315r = -1;
                this.f308k = false;
                VelocityTracker velocityTracker3 = this.f309l;
                if (velocityTracker3 != null) {
                    velocityTracker3.recycle();
                    this.f309l = null;
                }
                v(0);
                edgeEffect.onRelease();
                edgeEffect2.onRelease();
            } else if (actionMasked == 5) {
                int actionIndex = motionEvent.getActionIndex();
                this.f304g = (int) motionEvent.getY(actionIndex);
                this.f315r = motionEvent.getPointerId(actionIndex);
            } else if (actionMasked == 6) {
                p(motionEvent);
                this.f304g = (int) motionEvent.getY(motionEvent.findPointerIndex(this.f315r));
            }
        } else {
            if (getChildCount() == 0) {
                return false;
            }
            if (this.f308k && (parent = getParent()) != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
            OverScroller overScroller = this.f302d;
            if (!overScroller.isFinished()) {
                overScroller.abortAnimation();
                v(1);
            }
            this.f304g = (int) motionEvent.getY();
            this.f315r = motionEvent.getPointerId(0);
            nVar.g(2, 0);
        }
        VelocityTracker velocityTracker4 = this.f309l;
        if (velocityTracker4 != null) {
            velocityTracker4.addMovement(motionEventObtain);
        }
        motionEventObtain.recycle();
        return true;
    }

    public final void p(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f315r) {
            int i3 = actionIndex == 0 ? 1 : 0;
            this.f304g = (int) motionEvent.getY(i3);
            this.f315r = motionEvent.getPointerId(i3);
            VelocityTracker velocityTracker = this.f309l;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    public final boolean q(int i3, int i4, int i5, int i6) {
        int i7;
        boolean z2;
        int i8;
        boolean z3;
        getOverScrollMode();
        super.computeHorizontalScrollRange();
        super.computeHorizontalScrollExtent();
        computeVerticalScrollRange();
        super.computeVerticalScrollExtent();
        int i9 = i5 + i3;
        if (i4 <= 0 && i4 >= 0) {
            i7 = i4;
            z2 = false;
        } else {
            i7 = 0;
            z2 = true;
        }
        if (i9 <= i6) {
            if (i9 < 0) {
                i8 = 0;
            } else {
                i8 = i9;
                z3 = false;
            }
            if (z3 && !this.f322y.f(1)) {
                this.f302d.springBack(i7, i8, 0, 0, 0, getScrollRange());
            }
            super.scrollTo(i7, i8);
            return !z2 || z3;
        }
        i8 = i6;
        z3 = true;
        if (z3) {
            this.f302d.springBack(i7, i8, 0, 0, 0, getScrollRange());
        }
        super.scrollTo(i7, i8);
        if (z2) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0068  */
    public final boolean r(int i3, int i4, int i5) {
        boolean z2;
        int height = getHeight();
        int scrollY = getScrollY();
        int i6 = height + scrollY;
        boolean z3 = i3 == 33;
        ArrayList<View> focusables = getFocusables(2);
        int size = focusables.size();
        View view = null;
        boolean z4 = false;
        for (int i7 = 0; i7 < size; i7++) {
            View view2 = focusables.get(i7);
            int top = view2.getTop();
            int bottom = view2.getBottom();
            if (i4 < bottom && top < i5) {
                boolean z5 = i4 < top && bottom < i5;
                if (view == null) {
                    view = view2;
                    z4 = z5;
                } else {
                    boolean z6 = (z3 && top < view.getTop()) || (!z3 && bottom > view.getBottom());
                    if (z4) {
                        if (z5 && z6) {
                            view = view2;
                        }
                    } else if (z5) {
                        view = view2;
                        z4 = true;
                    } else if (z6) {
                        view = view2;
                    }
                }
            }
        }
        if (view == null) {
            view = this;
        }
        if (i4 < scrollY || i5 > i6) {
            i(z3 ? i4 - scrollY : i5 - i6);
            z2 = true;
        } else {
            z2 = false;
        }
        if (view != findFocus()) {
            view.requestFocus(i3);
        }
        return z2;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        if (this.f305h) {
            this.f307j = view2;
        } else {
            Rect rect = this.f301c;
            view2.getDrawingRect(rect);
            offsetDescendantRectToMyCoords(view2, rect);
            int iH = h(rect);
            if (iH != 0) {
                scrollBy(0, iH);
            }
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z2) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        int iH = h(rect);
        boolean z3 = iH != 0;
        if (z3) {
            if (z2) {
                scrollBy(0, iH);
                return z3;
            }
            t(0, iH, false);
        }
        return z3;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z2) {
        VelocityTracker velocityTracker;
        if (z2 && (velocityTracker = this.f309l) != null) {
            velocityTracker.recycle();
            this.f309l = null;
        }
        super.requestDisallowInterceptTouchEvent(z2);
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        this.f305h = true;
        super.requestLayout();
    }

    public final boolean s(EdgeEffect edgeEffect, int i3) {
        if (i3 > 0) {
            return true;
        }
        float fU = b.u(edgeEffect) * getHeight();
        float fAbs = Math.abs(-i3) * 0.35f;
        float f = this.f300a * 0.015f;
        double dLog = Math.log(fAbs / f);
        double d3 = A;
        return ((float) (Math.exp((d3 / (d3 - 1.0d)) * dLog) * ((double) f))) < fU;
    }

    @Override // android.view.View
    public final void scrollTo(int i3, int i4) {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
            int width2 = childAt.getWidth() + layoutParams.leftMargin + layoutParams.rightMargin;
            int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int height2 = childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            if (width >= width2 || i3 < 0) {
                i3 = 0;
            } else if (width + i3 > width2) {
                i3 = width2 - width;
            }
            if (height >= height2 || i4 < 0) {
                i4 = 0;
            } else if (height + i4 > height2) {
                i4 = height2 - height;
            }
            if (i3 == getScrollX() && i4 == getScrollY()) {
                return;
            }
            super.scrollTo(i3, i4);
        }
    }

    public void setFillViewport(boolean z2) {
        if (z2 != this.f310m) {
            this.f310m = z2;
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z2) {
        n nVar = this.f322y;
        if (nVar.f724d) {
            ViewGroup viewGroup = nVar.f723c;
            WeakHashMap weakHashMap = p0.f727a;
            f0.z(viewGroup);
        }
        nVar.f724d = z2;
    }

    public void setOnScrollChangeListener(j jVar) {
    }

    public void setSmoothScrollingEnabled(boolean z2) {
        this.f311n = z2;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return true;
    }

    @Override // android.view.View
    public final boolean startNestedScroll(int i3) {
        return this.f322y.g(i3, 0);
    }

    @Override // android.view.View
    public final void stopNestedScroll() {
        v(0);
    }

    public final void t(int i3, int i4, boolean z2) {
        if (getChildCount() == 0) {
            return;
        }
        if (AnimationUtils.currentAnimationTimeMillis() - this.b > 250) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int height = childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            int iMax = Math.max(0, Math.min(i4 + scrollY, Math.max(0, height - height2))) - scrollY;
            this.f302d.startScroll(getScrollX(), scrollY, 0, iMax, 250);
            if (z2) {
                this.f322y.g(2, 1);
            } else {
                v(1);
            }
            this.f319v = getScrollY();
            WeakHashMap weakHashMap = p0.f727a;
            a0.k(this);
        } else {
            OverScroller overScroller = this.f302d;
            if (!overScroller.isFinished()) {
                overScroller.abortAnimation();
                v(1);
            }
            scrollBy(i3, i4);
        }
        this.b = AnimationUtils.currentAnimationTimeMillis();
    }

    public final boolean u(MotionEvent motionEvent) {
        boolean z2;
        EdgeEffect edgeEffect = this.f303e;
        if (b.u(edgeEffect) != 0.0f) {
            b.O(edgeEffect, 0.0f, motionEvent.getX() / getWidth());
            z2 = true;
        } else {
            z2 = false;
        }
        EdgeEffect edgeEffect2 = this.f;
        if (b.u(edgeEffect2) == 0.0f) {
            return z2;
        }
        b.O(edgeEffect2, 0.0f, 1.0f - (motionEvent.getX() / getWidth()));
        return true;
    }

    public final void v(int i3) {
        this.f322y.h(i3);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i3) {
        if (getChildCount() <= 0) {
            super.addView(view, i3);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, layoutParams);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i3, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, i3, layoutParams);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }
}
