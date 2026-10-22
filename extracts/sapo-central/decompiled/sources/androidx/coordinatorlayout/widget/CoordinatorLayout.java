package androidx.coordinatorlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.emoji2.text.m;
import androidx.emoji2.text.t;
import c0.a0;
import c0.b0;
import c0.c0;
import c0.d0;
import c0.f0;
import c0.j;
import c0.k1;
import c0.o;
import c0.p;
import c0.p0;
import c0.q;
import com.ex.auto.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.WeakHashMap;
import l.k;
import n.d;
import r.a;
import s.b;
import s.c;
import s.e;
import s.f;
import s.g;

/* JADX INFO: loaded from: classes.dex */
public class CoordinatorLayout extends ViewGroup implements o, p {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final String f265t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final Class[] f266u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final ThreadLocal f267v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final d f268w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final b0.d f269x;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f270a;
    public final t b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f271c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ArrayList f272d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int[] f273e;
    public final int[] f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f274g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f275h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int[] f276i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public View f277j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public View f278k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public e f279l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f280m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public k1 f281n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f282o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Drawable f283p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public ViewGroup.OnHierarchyChangeListener f284q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public m f285r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final q f286s;

    static {
        Package r3 = CoordinatorLayout.class.getPackage();
        f265t = r3 != null ? r3.getName() : null;
        f268w = new d(2);
        f266u = new Class[]{Context.class, AttributeSet.class};
        f267v = new ThreadLocal();
        f269x = new b0.d();
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.coordinatorLayoutStyle);
        this.f270a = new ArrayList();
        this.b = new t();
        this.f271c = new ArrayList();
        this.f272d = new ArrayList();
        this.f273e = new int[2];
        this.f = new int[2];
        this.f286s = new q();
        int[] iArr = a.f3077a;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, R.attr.coordinatorLayoutStyle, 0);
        if (Build.VERSION.SDK_INT >= 29) {
            saveAttributeDataForStyleable(context, iArr, attributeSet, typedArrayObtainStyledAttributes, R.attr.coordinatorLayoutStyle, 0);
        }
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        if (resourceId != 0) {
            Resources resources = context.getResources();
            int[] intArray = resources.getIntArray(resourceId);
            this.f276i = intArray;
            float f = resources.getDisplayMetrics().density;
            int length = intArray.length;
            for (int i3 = 0; i3 < length; i3++) {
                int[] iArr2 = this.f276i;
                iArr2[i3] = (int) (iArr2[i3] * f);
            }
        }
        this.f283p = typedArrayObtainStyledAttributes.getDrawable(1);
        typedArrayObtainStyledAttributes.recycle();
        w();
        super.setOnHierarchyChangeListener(new c(this));
        WeakHashMap weakHashMap = p0.f727a;
        if (a0.c(this) == 0) {
            a0.s(this, 1);
        }
    }

    public static Rect g() {
        Rect rect = (Rect) f269x.a();
        return rect == null ? new Rect() : rect;
    }

    public static void l(int i3, Rect rect, Rect rect2, s.d dVar, int i4, int i5) {
        int iWidth;
        int iHeight;
        int i6 = dVar.f3105c;
        if (i6 == 0) {
            i6 = 17;
        }
        int absoluteGravity = Gravity.getAbsoluteGravity(i6, i3);
        int i7 = dVar.f3106d;
        if ((i7 & 7) == 0) {
            i7 |= 8388611;
        }
        if ((i7 & 112) == 0) {
            i7 |= 48;
        }
        int absoluteGravity2 = Gravity.getAbsoluteGravity(i7, i3);
        int i8 = absoluteGravity & 7;
        int i9 = absoluteGravity & 112;
        int i10 = absoluteGravity2 & 7;
        int i11 = absoluteGravity2 & 112;
        if (i10 != 1) {
            iWidth = i10 != 5 ? rect.left : rect.right;
        } else {
            iWidth = rect.left + (rect.width() / 2);
        }
        if (i11 != 16) {
            iHeight = i11 != 80 ? rect.top : rect.bottom;
        } else {
            iHeight = rect.top + (rect.height() / 2);
        }
        if (i8 == 1) {
            iWidth -= i4 / 2;
        } else if (i8 != 5) {
            iWidth -= i4;
        }
        if (i9 == 16) {
            iHeight -= i5 / 2;
        } else if (i9 != 80) {
            iHeight -= i5;
        }
        rect2.set(iWidth, iHeight, i4 + iWidth, i5 + iHeight);
    }

    public static s.d n(View view) {
        s.d dVar = (s.d) view.getLayoutParams();
        if (!dVar.b) {
            b bVar = null;
            for (Class<?> superclass = view.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
                bVar = (b) superclass.getAnnotation(b.class);
                if (bVar != null) {
                    break;
                }
            }
            if (bVar != null) {
                try {
                    s.a aVar = (s.a) bVar.value().getDeclaredConstructor(null).newInstance(null);
                    s.a aVar2 = dVar.f3104a;
                    if (aVar2 != aVar) {
                        if (aVar2 != null) {
                            aVar2.e();
                        }
                        dVar.f3104a = aVar;
                        dVar.b = true;
                        if (aVar != null) {
                            aVar.c(dVar);
                        }
                    }
                } catch (Exception e3) {
                    Log.e("CoordinatorLayout", "Default behavior class " + bVar.value().getName() + " could not be instantiated. Did you forget a default constructor?", e3);
                }
            }
            dVar.b = true;
        }
        return dVar;
    }

    public static void u(View view, int i3) {
        s.d dVar = (s.d) view.getLayoutParams();
        int i4 = dVar.f3110i;
        if (i4 != i3) {
            WeakHashMap weakHashMap = p0.f727a;
            view.offsetLeftAndRight(i3 - i4);
            dVar.f3110i = i3;
        }
    }

    public static void v(View view, int i3) {
        s.d dVar = (s.d) view.getLayoutParams();
        int i4 = dVar.f3111j;
        if (i4 != i3) {
            WeakHashMap weakHashMap = p0.f727a;
            view.offsetTopAndBottom(i3 - i4);
            dVar.f3111j = i3;
        }
    }

    @Override // c0.o
    public final void a(View view, View view2, int i3, int i4) {
        q qVar = this.f286s;
        if (i4 == 1) {
            qVar.b = i3;
        } else {
            qVar.f731a = i3;
        }
        this.f278k = view2;
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            ((s.d) getChildAt(i5).getLayoutParams()).getClass();
        }
    }

    @Override // c0.o
    public final void b(View view, int i3) {
        q qVar = this.f286s;
        if (i3 == 1) {
            qVar.b = 0;
        } else {
            qVar.f731a = 0;
        }
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            s.d dVar = (s.d) childAt.getLayoutParams();
            if (dVar.a(i3)) {
                s.a aVar = dVar.f3104a;
                if (aVar != null) {
                    aVar.p(childAt, view, i3);
                }
                if (i3 == 0) {
                    dVar.f3114m = false;
                } else if (i3 == 1) {
                    dVar.f3115n = false;
                }
            }
        }
        this.f278k = null;
    }

    @Override // c0.o
    public final void c(View view, int i3, int i4, int[] iArr, int i5) {
        s.a aVar;
        int childCount = getChildCount();
        boolean z2 = false;
        int iMax = 0;
        int iMax2 = 0;
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                s.d dVar = (s.d) childAt.getLayoutParams();
                if (dVar.a(i5) && (aVar = dVar.f3104a) != null) {
                    int[] iArr2 = this.f273e;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    aVar.j(this, childAt, view, i3, i4, iArr2, i5);
                    iMax = i3 > 0 ? Math.max(iMax, iArr2[0]) : Math.min(iMax, iArr2[0]);
                    iMax2 = i4 > 0 ? Math.max(iMax2, iArr2[1]) : Math.min(iMax2, iArr2[1]);
                    z2 = true;
                }
            }
        }
        iArr[0] = iMax;
        iArr[1] = iMax2;
        if (z2) {
            p(1);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof s.d) && super.checkLayoutParams(layoutParams);
    }

    @Override // c0.p
    public final void d(View view, int i3, int i4, int i5, int i6, int i7, int[] iArr) {
        s.a aVar;
        int childCount = getChildCount();
        int iMax = 0;
        int iMax2 = 0;
        boolean z2 = false;
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                s.d dVar = (s.d) childAt.getLayoutParams();
                if (dVar.a(i7) && (aVar = dVar.f3104a) != null) {
                    int[] iArr2 = this.f273e;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    aVar.k(this, childAt, i4, i5, i6, iArr2);
                    iMax = i5 > 0 ? Math.max(iMax, iArr2[0]) : Math.min(iMax, iArr2[0]);
                    iMax2 = i6 > 0 ? Math.max(iMax2, iArr2[1]) : Math.min(iMax2, iArr2[1]);
                    z2 = true;
                }
            }
        }
        iArr[0] = iArr[0] + iMax;
        iArr[1] = iArr[1] + iMax2;
        if (z2) {
            p(1);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j3) {
        s.a aVar = ((s.d) view.getLayoutParams()).f3104a;
        if (aVar != null) {
            aVar.getClass();
        }
        return super.drawChild(canvas, view, j3);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f283p;
        if ((drawable == null || !drawable.isStateful()) ? false : drawable.setState(drawableState)) {
            invalidate();
        }
    }

    @Override // c0.o
    public final void e(View view, int i3, int i4, int i5, int i6, int i7) {
        d(view, i3, i4, i5, i6, 0, this.f);
    }

    @Override // c0.o
    public final boolean f(View view, View view2, int i3, int i4) {
        int childCount = getChildCount();
        boolean z2 = false;
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                s.d dVar = (s.d) childAt.getLayoutParams();
                s.a aVar = dVar.f3104a;
                if (aVar != null) {
                    boolean zO = aVar.o(childAt, i3, i4);
                    z2 |= zO;
                    if (i4 == 0) {
                        dVar.f3114m = zO;
                    } else if (i4 == 1) {
                        dVar.f3115n = zO;
                    }
                } else if (i4 == 0) {
                    dVar.f3114m = false;
                } else if (i4 == 1) {
                    dVar.f3115n = false;
                }
            }
        }
        return z2;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new s.d();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new s.d(getContext(), attributeSet);
    }

    public final List<View> getDependencySortedChildren() {
        s();
        return Collections.unmodifiableList(this.f270a);
    }

    public final k1 getLastWindowInsets() {
        return this.f281n;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        q qVar = this.f286s;
        return qVar.b | qVar.f731a;
    }

    public Drawable getStatusBarBackground() {
        return this.f283p;
    }

    @Override // android.view.View
    public int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingBottom() + getPaddingTop());
    }

    @Override // android.view.View
    public int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingRight() + getPaddingLeft());
    }

    public final void h(s.d dVar, Rect rect, int i3, int i4) {
        int width = getWidth();
        int height = getHeight();
        int iMax = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) dVar).leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i3) - ((ViewGroup.MarginLayoutParams) dVar).rightMargin));
        int iMax2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) dVar).topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i4) - ((ViewGroup.MarginLayoutParams) dVar).bottomMargin));
        rect.set(iMax, iMax2, i3 + iMax, i4 + iMax2);
    }

    public final void i(View view, Rect rect, boolean z2) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
        } else if (z2) {
            k(view, rect);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    public final ArrayList j(View view) {
        k kVar = (k) this.b.b;
        int i3 = kVar.f2418c;
        ArrayList arrayList = null;
        for (int i4 = 0; i4 < i3; i4++) {
            ArrayList arrayList2 = (ArrayList) kVar.i(i4);
            if (arrayList2 != null && arrayList2.contains(view)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(kVar.g(i4));
            }
        }
        ArrayList arrayList3 = this.f272d;
        arrayList3.clear();
        if (arrayList != null) {
            arrayList3.addAll(arrayList);
        }
        return arrayList3;
    }

    public final void k(View view, Rect rect) {
        ThreadLocal threadLocal = g.f3119a;
        rect.set(0, 0, view.getWidth(), view.getHeight());
        ThreadLocal threadLocal2 = g.f3119a;
        Matrix matrix = (Matrix) threadLocal2.get();
        if (matrix == null) {
            matrix = new Matrix();
            threadLocal2.set(matrix);
        } else {
            matrix.reset();
        }
        g.a(this, view, matrix);
        ThreadLocal threadLocal3 = g.b;
        RectF rectF = (RectF) threadLocal3.get();
        if (rectF == null) {
            rectF = new RectF();
            threadLocal3.set(rectF);
        }
        rectF.set(rect);
        matrix.mapRect(rectF);
        rect.set((int) (rectF.left + 0.5f), (int) (rectF.top + 0.5f), (int) (rectF.right + 0.5f), (int) (rectF.bottom + 0.5f));
    }

    public final int m(int i3) {
        int[] iArr = this.f276i;
        if (iArr == null) {
            Log.e("CoordinatorLayout", "No keylines defined for " + this + " - attempted index lookup " + i3);
            return 0;
        }
        if (i3 >= 0 && i3 < iArr.length) {
            return iArr[i3];
        }
        Log.e("CoordinatorLayout", "Keyline index " + i3 + " out of range for " + this);
        return 0;
    }

    public final boolean o(View view, int i3, int i4) {
        b0.d dVar = f269x;
        Rect rectG = g();
        k(view, rectG);
        try {
            return rectG.contains(i3, i4);
        } finally {
            rectG.setEmpty();
            dVar.c(rectG);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        t(false);
        if (this.f280m) {
            if (this.f279l == null) {
                this.f279l = new e(this);
            }
            getViewTreeObserver().addOnPreDrawListener(this.f279l);
        }
        if (this.f281n == null) {
            WeakHashMap weakHashMap = p0.f727a;
            if (a0.b(this)) {
                d0.c(this);
            }
        }
        this.f275h = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        t(false);
        if (this.f280m && this.f279l != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.f279l);
        }
        View view = this.f278k;
        if (view != null) {
            b(view, 0);
        }
        this.f275h = false;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.f282o || this.f283p == null) {
            return;
        }
        k1 k1Var = this.f281n;
        int iD = k1Var != null ? k1Var.d() : 0;
        if (iD > 0) {
            this.f283p.setBounds(0, 0, getWidth(), iD);
            this.f283p.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            t(true);
        }
        boolean zR = r(motionEvent, 0);
        if (actionMasked != 1 && actionMasked != 3) {
            return zR;
        }
        t(true);
        return zR;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i3, int i4, int i5, int i6) {
        s.a aVar;
        WeakHashMap weakHashMap = p0.f727a;
        int iD = b0.d(this);
        ArrayList arrayList = this.f270a;
        int size = arrayList.size();
        for (int i7 = 0; i7 < size; i7++) {
            View view = (View) arrayList.get(i7);
            if (view.getVisibility() != 8 && ((aVar = ((s.d) view.getLayoutParams()).f3104a) == null || !aVar.g(this, view, iD))) {
                q(view, iD);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:70:0x0131  */
    /* JADX WARN: Code duplicated, block: B:73:0x016f  */
    /* JADX WARN: Code duplicated, block: B:76:0x0179  */
    /* JADX WARN: Code duplicated, block: B:78:0x017f  */
    @Override // android.view.View
    public final void onMeasure(int i3, int i4) {
        boolean z2;
        ArrayList arrayList;
        int i5;
        boolean z3;
        int iMakeMeasureSpec;
        int iMakeMeasureSpec2;
        s.a aVar;
        View view;
        int i6;
        int i7;
        boolean z4;
        int iMax;
        s();
        int childCount = getChildCount();
        int i8 = 0;
        loop0: while (true) {
            if (i8 >= childCount) {
                z2 = false;
                break;
            }
            View childAt = getChildAt(i8);
            k kVar = (k) this.b.b;
            int i9 = kVar.f2418c;
            for (int i10 = 0; i10 < i9; i10++) {
                ArrayList arrayList2 = (ArrayList) kVar.i(i10);
                if (arrayList2 != null && arrayList2.contains(childAt)) {
                    z2 = true;
                    break loop0;
                }
            }
            i8++;
        }
        if (z2 != this.f280m) {
            if (z2) {
                if (this.f275h) {
                    if (this.f279l == null) {
                        this.f279l = new e(this);
                    }
                    getViewTreeObserver().addOnPreDrawListener(this.f279l);
                }
                this.f280m = true;
            } else {
                if (this.f275h && this.f279l != null) {
                    getViewTreeObserver().removeOnPreDrawListener(this.f279l);
                }
                this.f280m = false;
            }
        }
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        WeakHashMap weakHashMap = p0.f727a;
        int iD = b0.d(this);
        boolean z5 = iD == 1;
        int mode = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i3);
        int mode2 = View.MeasureSpec.getMode(i4);
        int size2 = View.MeasureSpec.getSize(i4);
        int i11 = paddingLeft + paddingRight;
        int i12 = paddingTop + paddingBottom;
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        int suggestedMinimumHeight = getSuggestedMinimumHeight();
        boolean z6 = this.f281n != null && a0.b(this);
        ArrayList arrayList3 = this.f270a;
        int size3 = arrayList3.size();
        int i13 = 0;
        int iCombineMeasuredStates = 0;
        while (i13 < size3) {
            View view2 = (View) arrayList3.get(i13);
            int i14 = suggestedMinimumWidth;
            int i15 = suggestedMinimumHeight;
            if (view2.getVisibility() == 8) {
                arrayList = arrayList3;
                size3 = size3;
                paddingLeft = paddingLeft;
                suggestedMinimumWidth = i14;
                suggestedMinimumHeight = i15;
                z3 = false;
                i6 = i13;
                i7 = paddingRight;
            } else {
                s.d dVar = (s.d) view2.getLayoutParams();
                int i16 = dVar.f3107e;
                if (i16 < 0 || mode == 0) {
                    arrayList = arrayList3;
                } else {
                    int iM = m(i16);
                    int i17 = dVar.f3105c;
                    if (i17 == 0) {
                        i17 = 8388661;
                    }
                    int absoluteGravity = Gravity.getAbsoluteGravity(i17, iD) & 7;
                    arrayList = arrayList3;
                    if ((absoluteGravity != 3 || z5) && !(absoluteGravity == 5 && z5)) {
                        if ((absoluteGravity == 5 && !z5) || (absoluteGravity == 3 && z5)) {
                            z4 = false;
                            iMax = Math.max(0, iM - paddingLeft);
                        }
                        if (z6 || a0.b(view2)) {
                            iMakeMeasureSpec = i3;
                            iMakeMeasureSpec2 = i4;
                        } else {
                            int iC = this.f281n.c() + this.f281n.b();
                            int iA = this.f281n.a() + this.f281n.d();
                            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size - iC, mode);
                            iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(size2 - iA, mode2);
                        }
                        aVar = dVar.f3104a;
                        if (aVar == null && aVar.h(this, view2)) {
                            i7 = paddingRight;
                            view = view2;
                            i6 = i13;
                        } else {
                            view = view2;
                            i6 = i13;
                            i7 = paddingRight;
                            measureChildWithMargins(view, iMakeMeasureSpec, i5, iMakeMeasureSpec2, 0);
                        }
                        int iMax2 = Math.max(i14, view.getMeasuredWidth() + i11 + ((ViewGroup.MarginLayoutParams) dVar).leftMargin + ((ViewGroup.MarginLayoutParams) dVar).rightMargin);
                        int iMax3 = Math.max(i15, view.getMeasuredHeight() + i12 + ((ViewGroup.MarginLayoutParams) dVar).topMargin + ((ViewGroup.MarginLayoutParams) dVar).bottomMargin);
                        iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view.getMeasuredState());
                        suggestedMinimumWidth = iMax2;
                        suggestedMinimumHeight = iMax3;
                    } else {
                        z4 = false;
                        iMax = Math.max(0, (size - paddingRight) - iM);
                    }
                    z3 = z4;
                    i5 = iMax;
                    if (z6) {
                        iMakeMeasureSpec = i3;
                        iMakeMeasureSpec2 = i4;
                    } else {
                        iMakeMeasureSpec = i3;
                        iMakeMeasureSpec2 = i4;
                    }
                    aVar = dVar.f3104a;
                    if (aVar == null) {
                        view = view2;
                        i6 = i13;
                        i7 = paddingRight;
                        measureChildWithMargins(view, iMakeMeasureSpec, i5, iMakeMeasureSpec2, 0);
                    } else {
                        view = view2;
                        i6 = i13;
                        i7 = paddingRight;
                        measureChildWithMargins(view, iMakeMeasureSpec, i5, iMakeMeasureSpec2, 0);
                    }
                    int iMax4 = Math.max(i14, view.getMeasuredWidth() + i11 + ((ViewGroup.MarginLayoutParams) dVar).leftMargin + ((ViewGroup.MarginLayoutParams) dVar).rightMargin);
                    int iMax5 = Math.max(i15, view.getMeasuredHeight() + i12 + ((ViewGroup.MarginLayoutParams) dVar).topMargin + ((ViewGroup.MarginLayoutParams) dVar).bottomMargin);
                    iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view.getMeasuredState());
                    suggestedMinimumWidth = iMax4;
                    suggestedMinimumHeight = iMax5;
                }
                i5 = 0;
                z3 = false;
                if (z6) {
                    iMakeMeasureSpec = i3;
                    iMakeMeasureSpec2 = i4;
                } else {
                    iMakeMeasureSpec = i3;
                    iMakeMeasureSpec2 = i4;
                }
                aVar = dVar.f3104a;
                if (aVar == null) {
                    view = view2;
                    i6 = i13;
                    i7 = paddingRight;
                    measureChildWithMargins(view, iMakeMeasureSpec, i5, iMakeMeasureSpec2, 0);
                } else {
                    view = view2;
                    i6 = i13;
                    i7 = paddingRight;
                    measureChildWithMargins(view, iMakeMeasureSpec, i5, iMakeMeasureSpec2, 0);
                }
                int iMax6 = Math.max(i14, view.getMeasuredWidth() + i11 + ((ViewGroup.MarginLayoutParams) dVar).leftMargin + ((ViewGroup.MarginLayoutParams) dVar).rightMargin);
                int iMax7 = Math.max(i15, view.getMeasuredHeight() + i12 + ((ViewGroup.MarginLayoutParams) dVar).topMargin + ((ViewGroup.MarginLayoutParams) dVar).bottomMargin);
                iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view.getMeasuredState());
                suggestedMinimumWidth = iMax6;
                suggestedMinimumHeight = iMax7;
            }
            i13 = i6 + 1;
            paddingLeft = paddingLeft;
            paddingRight = i7;
            size3 = size3;
            arrayList3 = arrayList;
        }
        int i18 = iCombineMeasuredStates;
        setMeasuredDimension(View.resolveSizeAndState(suggestedMinimumWidth, i3, (-16777216) & i18), View.resolveSizeAndState(suggestedMinimumHeight, i4, i18 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f, float f3, boolean z2) {
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                s.d dVar = (s.d) childAt.getLayoutParams();
                if (dVar.a(0)) {
                    s.a aVar = dVar.f3104a;
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f, float f3) {
        s.a aVar;
        int childCount = getChildCount();
        boolean zI = false;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                s.d dVar = (s.d) childAt.getLayoutParams();
                if (dVar.a(0) && (aVar = dVar.f3104a) != null) {
                    zI |= aVar.i(view);
                }
            }
        }
        return zI;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i3, int i4, int[] iArr) {
        c(view, i3, i4, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i3, int i4, int i5, int i6) {
        e(view, i3, i4, i5, i6, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i3) {
        a(view, view2, i3, 0);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof f)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        f fVar = (f) parcelable;
        super.onRestoreInstanceState(fVar.f1951a);
        SparseArray sparseArray = fVar.f3118c;
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            int id = childAt.getId();
            s.a aVar = n(childAt).f3104a;
            if (id != -1 && aVar != null && (parcelable2 = (Parcelable) sparseArray.get(id)) != null) {
                aVar.m(childAt, parcelable2);
            }
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        Parcelable parcelableN;
        f fVar = new f(super.onSaveInstanceState());
        SparseArray sparseArray = new SparseArray();
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            int id = childAt.getId();
            s.a aVar = ((s.d) childAt.getLayoutParams()).f3104a;
            if (id != -1 && aVar != null && (parcelableN = aVar.n(childAt)) != null) {
                sparseArray.append(id, parcelableN);
            }
        }
        fVar.f3118c = sparseArray;
        return fVar;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i3) {
        return f(view, view2, i3, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        b(view, 0);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002f  */
    /* JADX WARN: Code duplicated, block: B:15:0x0035 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:16:0x0037  */
    /* JADX WARN: Code duplicated, block: B:18:0x004a  */
    /* JADX WARN: Code duplicated, block: B:7:0x0015 A[PHI: r3
      0x0015: PHI (r3v4 boolean) = (r3v2 boolean), (r3v5 boolean) binds: [B:10:0x0022, B:5:0x0012] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zR;
        boolean zQ;
        MotionEvent motionEventObtain;
        int actionMasked = motionEvent.getActionMasked();
        if (this.f277j == null) {
            zR = r(motionEvent, 1);
            if (!zR) {
                zQ = false;
            }
            motionEventObtain = null;
            if (this.f277j == null) {
                zQ |= super.onTouchEvent(motionEvent);
            } else if (zR) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                super.onTouchEvent(motionEventObtain);
            }
            if (motionEventObtain != null) {
                motionEventObtain.recycle();
            }
            if (actionMasked == 1 && actionMasked != 3) {
                return zQ;
            }
            t(false);
            return zQ;
        }
        zR = false;
        s.a aVar = ((s.d) this.f277j.getLayoutParams()).f3104a;
        if (aVar != null) {
            zQ = aVar.q(this.f277j, motionEvent);
        } else {
            zQ = false;
        }
        motionEventObtain = null;
        if (this.f277j == null) {
            zQ |= super.onTouchEvent(motionEvent);
        } else if (zR) {
            long jUptimeMillis2 = SystemClock.uptimeMillis();
            motionEventObtain = MotionEvent.obtain(jUptimeMillis2, jUptimeMillis2, 3, 0.0f, 0.0f, 0);
            super.onTouchEvent(motionEventObtain);
        }
        if (motionEventObtain != null) {
            motionEventObtain.recycle();
        }
        if (actionMasked == 1) {
        }
        t(false);
        return zQ;
    }

    /* JADX WARN: Code duplicated, block: B:104:0x026c  */
    /* JADX WARN: Code duplicated, block: B:33:0x00de  */
    public final void p(int i3) {
        int i4;
        Rect rect;
        int i5;
        ArrayList arrayList;
        boolean z2;
        boolean z3;
        int width;
        int i6;
        int i7;
        int i8;
        int height;
        int i9;
        int i10;
        int i11;
        s.d dVar;
        int i12;
        View view;
        s.a aVar;
        WeakHashMap weakHashMap = p0.f727a;
        int iD = b0.d(this);
        ArrayList arrayList2 = this.f270a;
        int size = arrayList2.size();
        Rect rectG = g();
        Rect rectG2 = g();
        Rect rectG3 = g();
        int i13 = 0;
        while (true) {
            b0.d dVar2 = f269x;
            if (i13 >= size) {
                Rect rect2 = rectG3;
                rectG.setEmpty();
                dVar2.c(rectG);
                rectG2.setEmpty();
                dVar2.c(rectG2);
                rect2.setEmpty();
                dVar2.c(rect2);
                return;
            }
            View view2 = (View) arrayList2.get(i13);
            s.d dVar3 = (s.d) view2.getLayoutParams();
            if (i3 == 0 && view2.getVisibility() == 8) {
                arrayList = arrayList2;
                i5 = size;
                rect = rectG3;
                i4 = i13;
            } else {
                int i14 = 0;
                while (i14 < i13) {
                    if (dVar3.f3113l == ((View) arrayList2.get(i14))) {
                        s.d dVar4 = (s.d) view2.getLayoutParams();
                        if (dVar4.f3112k != null) {
                            Rect rectG4 = g();
                            Rect rectG5 = g();
                            s.d dVar5 = dVar3;
                            Rect rectG6 = g();
                            k(dVar4.f3112k, rectG4);
                            i(view2, rectG5, false);
                            int measuredWidth = view2.getMeasuredWidth();
                            View view3 = view2;
                            int measuredHeight = view3.getMeasuredHeight();
                            dVar = dVar5;
                            i12 = i14;
                            iD = iD;
                            view = view3;
                            l(iD, rectG4, rectG6, dVar4, measuredWidth, measuredHeight);
                            boolean z4 = (rectG6.left == rectG5.left && rectG6.top == rectG5.top) ? false : true;
                            h(dVar4, rectG6, measuredWidth, measuredHeight);
                            int i15 = rectG6.left - rectG5.left;
                            int i16 = rectG6.top - rectG5.top;
                            if (i15 != 0) {
                                WeakHashMap weakHashMap2 = p0.f727a;
                                view.offsetLeftAndRight(i15);
                            }
                            if (i16 != 0) {
                                WeakHashMap weakHashMap3 = p0.f727a;
                                view.offsetTopAndBottom(i16);
                            }
                            if (z4 && (aVar = dVar4.f3104a) != null) {
                                aVar.d(view, dVar4.f3112k);
                            }
                            rectG4.setEmpty();
                            dVar2.c(rectG4);
                            rectG5.setEmpty();
                            dVar2.c(rectG5);
                            rectG6.setEmpty();
                            dVar2.c(rectG6);
                        } else {
                            dVar = dVar3;
                            i12 = i14;
                            view = view2;
                        }
                    } else {
                        dVar = dVar3;
                        i12 = i14;
                        view = view2;
                    }
                    i14 = i12 + 1;
                    dVar3 = dVar;
                    view2 = view;
                    arrayList2 = arrayList2;
                    size = size;
                    i13 = i13;
                    rectG3 = rectG3;
                }
                ArrayList arrayList3 = arrayList2;
                s.d dVar6 = dVar3;
                int i17 = size;
                Rect rect3 = rectG3;
                i4 = i13;
                View view4 = view2;
                i(view4, rectG2, true);
                if (dVar6.f3108g != 0 && !rectG2.isEmpty()) {
                    int absoluteGravity = Gravity.getAbsoluteGravity(dVar6.f3108g, iD);
                    int i18 = absoluteGravity & 112;
                    if (i18 == 48) {
                        rectG.top = Math.max(rectG.top, rectG2.bottom);
                    } else if (i18 == 80) {
                        rectG.bottom = Math.max(rectG.bottom, getHeight() - rectG2.top);
                    }
                    int i19 = absoluteGravity & 7;
                    if (i19 == 3) {
                        rectG.left = Math.max(rectG.left, rectG2.right);
                    } else if (i19 == 5) {
                        rectG.right = Math.max(rectG.right, getWidth() - rectG2.left);
                    }
                }
                if (dVar6.f3109h != 0 && view4.getVisibility() == 0) {
                    WeakHashMap weakHashMap4 = p0.f727a;
                    if (c0.c(view4) && view4.getWidth() > 0 && view4.getHeight() > 0) {
                        s.d dVar7 = (s.d) view4.getLayoutParams();
                        s.a aVar2 = dVar7.f3104a;
                        Rect rectG7 = g();
                        Rect rectG8 = g();
                        rectG8.set(view4.getLeft(), view4.getTop(), view4.getRight(), view4.getBottom());
                        if (aVar2 == null || !aVar2.a(view4)) {
                            rectG7.set(rectG8);
                        } else if (!rectG8.contains(rectG7)) {
                            throw new IllegalArgumentException("Rect should be within the child's bounds. Rect:" + rectG7.toShortString() + " | Bounds:" + rectG8.toShortString());
                        }
                        rectG8.setEmpty();
                        dVar2.c(rectG8);
                        if (rectG7.isEmpty()) {
                            rectG7.setEmpty();
                            dVar2.c(rectG7);
                        } else {
                            int absoluteGravity2 = Gravity.getAbsoluteGravity(dVar7.f3109h, iD);
                            if ((absoluteGravity2 & 48) != 48 || (i10 = (rectG7.top - ((ViewGroup.MarginLayoutParams) dVar7).topMargin) - dVar7.f3111j) >= (i11 = rectG.top)) {
                                z2 = false;
                            } else {
                                v(view4, i11 - i10);
                                z2 = true;
                            }
                            if ((absoluteGravity2 & 80) == 80 && (height = ((getHeight() - rectG7.bottom) - ((ViewGroup.MarginLayoutParams) dVar7).bottomMargin) + dVar7.f3111j) < (i9 = rectG.bottom)) {
                                v(view4, height - i9);
                                z2 = true;
                            }
                            if (!z2) {
                                v(view4, 0);
                            }
                            if ((absoluteGravity2 & 3) != 3 || (i7 = (rectG7.left - ((ViewGroup.MarginLayoutParams) dVar7).leftMargin) - dVar7.f3110i) >= (i8 = rectG.left)) {
                                z3 = false;
                            } else {
                                u(view4, i8 - i7);
                                z3 = true;
                            }
                            if ((absoluteGravity2 & 5) == 5 && (width = ((getWidth() - rectG7.right) - ((ViewGroup.MarginLayoutParams) dVar7).rightMargin) + dVar7.f3110i) < (i6 = rectG.right)) {
                                u(view4, width - i6);
                                z3 = true;
                            }
                            if (!z3) {
                                u(view4, 0);
                            }
                            rectG7.setEmpty();
                            dVar2.c(rectG7);
                        }
                    }
                }
                if (i3 != 2) {
                    rect = rect3;
                    rect.set(((s.d) view4.getLayoutParams()).f3116o);
                    if (rect.equals(rectG2)) {
                        arrayList = arrayList3;
                        i5 = i17;
                    } else {
                        ((s.d) view4.getLayoutParams()).f3116o.set(rectG2);
                    }
                } else {
                    rect = rect3;
                }
                int i20 = i4 + 1;
                i5 = i17;
                while (true) {
                    arrayList = arrayList3;
                    if (i20 < i5) {
                        View view5 = (View) arrayList.get(i20);
                        s.a aVar3 = ((s.d) view5.getLayoutParams()).f3104a;
                        if (aVar3 != null) {
                            aVar3.b(view5);
                        }
                        i20++;
                        arrayList3 = arrayList;
                    }
                }
            }
            i13 = i4 + 1;
            size = i5;
            rectG3 = rect;
            arrayList2 = arrayList;
        }
    }

    public final void q(View view, int i3) {
        int i4;
        s.d dVar = (s.d) view.getLayoutParams();
        View view2 = dVar.f3112k;
        if (view2 == null && dVar.f != -1) {
            throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
        }
        b0.d dVar2 = f269x;
        if (view2 != null) {
            Rect rectG = g();
            Rect rectG2 = g();
            try {
                k(view2, rectG);
                s.d dVar3 = (s.d) view.getLayoutParams();
                int measuredWidth = view.getMeasuredWidth();
                int measuredHeight = view.getMeasuredHeight();
                l(i3, rectG, rectG2, dVar3, measuredWidth, measuredHeight);
                h(dVar3, rectG2, measuredWidth, measuredHeight);
                view.layout(rectG2.left, rectG2.top, rectG2.right, rectG2.bottom);
                return;
            } finally {
                rectG.setEmpty();
                dVar2.c(rectG);
                rectG2.setEmpty();
                dVar2.c(rectG2);
            }
        }
        int i5 = dVar.f3107e;
        if (i5 < 0) {
            s.d dVar4 = (s.d) view.getLayoutParams();
            Rect rectG3 = g();
            rectG3.set(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) dVar4).leftMargin, getPaddingTop() + ((ViewGroup.MarginLayoutParams) dVar4).topMargin, (getWidth() - getPaddingRight()) - ((ViewGroup.MarginLayoutParams) dVar4).rightMargin, (getHeight() - getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) dVar4).bottomMargin);
            if (this.f281n != null) {
                WeakHashMap weakHashMap = p0.f727a;
                if (a0.b(this) && !a0.b(view)) {
                    rectG3.left = this.f281n.b() + rectG3.left;
                    rectG3.top = this.f281n.d() + rectG3.top;
                    rectG3.right -= this.f281n.c();
                    rectG3.bottom -= this.f281n.a();
                }
            }
            Rect rectG4 = g();
            int i6 = dVar4.f3105c;
            if ((i6 & 7) == 0) {
                i6 |= 8388611;
            }
            if ((i6 & 112) == 0) {
                i6 |= 48;
            }
            j.b(i6, view.getMeasuredWidth(), view.getMeasuredHeight(), rectG3, rectG4, i3);
            view.layout(rectG4.left, rectG4.top, rectG4.right, rectG4.bottom);
            rectG3.setEmpty();
            dVar2.c(rectG3);
            rectG4.setEmpty();
            dVar2.c(rectG4);
            return;
        }
        s.d dVar5 = (s.d) view.getLayoutParams();
        int i7 = dVar5.f3105c;
        if (i7 == 0) {
            i7 = 8388661;
        }
        int absoluteGravity = Gravity.getAbsoluteGravity(i7, i3);
        int i8 = absoluteGravity & 7;
        int i9 = absoluteGravity & 112;
        int width = getWidth();
        int height = getHeight();
        int measuredWidth2 = view.getMeasuredWidth();
        int measuredHeight2 = view.getMeasuredHeight();
        if (i3 == 1) {
            i5 = width - i5;
        }
        int iM = m(i5) - measuredWidth2;
        if (i8 == 1) {
            iM += measuredWidth2 / 2;
        } else if (i8 == 5) {
            iM += measuredWidth2;
        }
        if (i9 != 16) {
            i4 = i9 != 80 ? 0 : measuredHeight2;
        } else {
            i4 = measuredHeight2 / 2;
        }
        int iMax = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) dVar5).leftMargin, Math.min(iM, ((width - getPaddingRight()) - measuredWidth2) - ((ViewGroup.MarginLayoutParams) dVar5).rightMargin));
        int iMax2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) dVar5).topMargin, Math.min(i4, ((height - getPaddingBottom()) - measuredHeight2) - ((ViewGroup.MarginLayoutParams) dVar5).bottomMargin));
        view.layout(iMax, iMax2, measuredWidth2 + iMax, measuredHeight2 + iMax2);
    }

    public final boolean r(MotionEvent motionEvent, int i3) {
        int actionMasked = motionEvent.getActionMasked();
        ArrayList arrayList = this.f271c;
        arrayList.clear();
        boolean zIsChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i4 = childCount - 1; i4 >= 0; i4--) {
            arrayList.add(getChildAt(zIsChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i4) : i4));
        }
        d dVar = f268w;
        if (dVar != null) {
            Collections.sort(arrayList, dVar);
        }
        int size = arrayList.size();
        MotionEvent motionEventObtain = null;
        boolean zF = false;
        for (int i5 = 0; i5 < size; i5++) {
            View view = (View) arrayList.get(i5);
            s.a aVar = ((s.d) view.getLayoutParams()).f3104a;
            if (zF && actionMasked != 0) {
                if (aVar != null) {
                    if (motionEventObtain == null) {
                        long jUptimeMillis = SystemClock.uptimeMillis();
                        motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                    }
                    if (i3 == 0) {
                        aVar.f(this, view, motionEventObtain);
                    } else if (i3 == 1) {
                        aVar.q(view, motionEventObtain);
                    }
                }
            } else if (!zF && aVar != null) {
                if (i3 == 0) {
                    zF = aVar.f(this, view, motionEvent);
                } else if (i3 == 1) {
                    zF = aVar.q(view, motionEvent);
                }
                if (zF) {
                    this.f277j = view;
                }
            }
        }
        arrayList.clear();
        return zF;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z2) {
        s.a aVar = ((s.d) view.getLayoutParams()).f3104a;
        if (aVar != null) {
            aVar.l(this, view);
        }
        return super.requestChildRectangleOnScreen(view, rect, z2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z2) {
        super.requestDisallowInterceptTouchEvent(z2);
        if (!z2 || this.f274g) {
            return;
        }
        t(false);
        this.f274g = true;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0089 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:31:0x007c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:32:0x007e  */
    /* JADX WARN: Code duplicated, block: B:34:0x0084  */
    /* JADX WARN: Code duplicated, block: B:37:0x0091  */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Not found exit edge by exit block: B:38:0x0095
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.checkLoopExits(LoopRegionMaker.java:272)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeLoopRegion(LoopRegionMaker.java:237)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:80)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeEndlessLoop(LoopRegionMaker.java:590)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:82)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:162)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:49)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    public final void s() {
        /*
            Method dump skipped, instruction units count: 400
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.s():void");
    }

    @Override // android.view.View
    public void setFitsSystemWindows(boolean z2) {
        super.setFitsSystemWindows(z2);
        w();
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f284q = onHierarchyChangeListener;
    }

    public void setStatusBarBackground(Drawable drawable) {
        Drawable drawable2 = this.f283p;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.f283p = drawableMutate;
            if (drawableMutate != null) {
                if (drawableMutate.isStateful()) {
                    this.f283p.setState(getDrawableState());
                }
                Drawable drawable3 = this.f283p;
                WeakHashMap weakHashMap = p0.f727a;
                w.c.b(drawable3, b0.d(this));
                this.f283p.setVisible(getVisibility() == 0, false);
                this.f283p.setCallback(this);
            }
            WeakHashMap weakHashMap2 = p0.f727a;
            a0.k(this);
        }
    }

    public void setStatusBarBackgroundColor(int i3) {
        setStatusBarBackground(new ColorDrawable(i3));
    }

    public void setStatusBarBackgroundResource(int i3) {
        setStatusBarBackground(i3 != 0 ? androidx.core.content.b.b(getContext(), i3) : null);
    }

    @Override // android.view.View
    public void setVisibility(int i3) {
        super.setVisibility(i3);
        boolean z2 = i3 == 0;
        Drawable drawable = this.f283p;
        if (drawable == null || drawable.isVisible() == z2) {
            return;
        }
        this.f283p.setVisible(z2, false);
    }

    public final void t(boolean z2) {
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            s.a aVar = ((s.d) childAt.getLayoutParams()).f3104a;
            if (aVar != null) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                if (z2) {
                    aVar.f(this, childAt, motionEventObtain);
                } else {
                    aVar.q(childAt, motionEventObtain);
                }
                motionEventObtain.recycle();
            }
        }
        for (int i4 = 0; i4 < childCount; i4++) {
            ((s.d) getChildAt(i4).getLayoutParams()).getClass();
        }
        this.f277j = null;
        this.f274g = false;
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f283p;
    }

    public final void w() {
        WeakHashMap weakHashMap = p0.f727a;
        if (!a0.b(this)) {
            f0.u(this, null);
            return;
        }
        if (this.f285r == null) {
            this.f285r = new m(25, this);
        }
        f0.u(this, this.f285r);
        setSystemUiVisibility(1280);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof s.d) {
            return new s.d((s.d) layoutParams);
        }
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new s.d((ViewGroup.MarginLayoutParams) layoutParams) : new s.d(layoutParams);
    }
}
