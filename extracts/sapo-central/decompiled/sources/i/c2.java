package i;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public class c2 implements h.d0 {
    public static final Method A;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final Method f1989z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f1990a;
    public ListAdapter b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public q1 f1991c;
    public int f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f1994g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f1996i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f1997j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f1998k;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public g0.b f2001n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public View f2002o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public AdapterView.OnItemClickListener f2003p;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final Handler f2008u;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Rect f2010w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f2011x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final b0 f2012y;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f1992d = -2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1993e = -2;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f1995h = 1002;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f1999l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f2000m = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final z1 f2004q = new z1(this, 1);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final b2 f2005r = new b2(this);

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final a2 f2006s = new a2(this);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final z1 f2007t = new z1(this, 0);

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final Rect f2009v = new Rect();

    static {
        if (Build.VERSION.SDK_INT <= 28) {
            try {
                f1989z = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", Boolean.TYPE);
            } catch (NoSuchMethodException unused) {
                Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
            }
            try {
                A = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
            } catch (NoSuchMethodException unused2) {
                Log.i("ListPopupWindow", "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well.");
            }
        }
    }

    public c2(Context context, AttributeSet attributeSet, int i3, int i4) {
        int resourceId;
        this.f1990a = context;
        this.f2008u = new Handler(context.getMainLooper());
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d.a.f1508o, i3, 0);
        this.f = typedArrayObtainStyledAttributes.getDimensionPixelOffset(0, 0);
        int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(1, 0);
        this.f1994g = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.f1996i = true;
        }
        typedArrayObtainStyledAttributes.recycle();
        b0 b0Var = new b0(context, attributeSet, i3, 0);
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, d.a.f1512s, i3, 0);
        if (typedArrayObtainStyledAttributes2.hasValue(2)) {
            f0.m.c(b0Var, typedArrayObtainStyledAttributes2.getBoolean(2, false));
        }
        b0Var.setBackgroundDrawable((!typedArrayObtainStyledAttributes2.hasValue(0) || (resourceId = typedArrayObtainStyledAttributes2.getResourceId(0, 0)) == 0) ? typedArrayObtainStyledAttributes2.getDrawable(0) : a1.b.v(context, resourceId));
        typedArrayObtainStyledAttributes2.recycle();
        this.f2012y = b0Var;
        b0Var.setInputMethodMode(1);
    }

    @Override // h.d0
    public final boolean a() {
        return this.f2012y.isShowing();
    }

    public final int b() {
        return this.f;
    }

    public final Drawable c() {
        return this.f2012y.getBackground();
    }

    @Override // h.d0
    public final void d() {
        int i3;
        int iMakeMeasureSpec;
        int paddingBottom;
        q1 q1Var;
        q1 q1Var2 = this.f1991c;
        Context context = this.f1990a;
        b0 b0Var = this.f2012y;
        if (q1Var2 == null) {
            q1 q1VarQ = q(context, !this.f2011x);
            this.f1991c = q1VarQ;
            q1VarQ.setAdapter(this.b);
            this.f1991c.setOnItemClickListener(this.f2003p);
            this.f1991c.setFocusable(true);
            this.f1991c.setFocusableInTouchMode(true);
            this.f1991c.setOnItemSelectedListener(new w1(0, this));
            this.f1991c.setOnScrollListener(this.f2006s);
            b0Var.setContentView(this.f1991c);
        }
        Drawable background = b0Var.getBackground();
        Rect rect = this.f2009v;
        if (background != null) {
            background.getPadding(rect);
            int i4 = rect.top;
            i3 = rect.bottom + i4;
            if (!this.f1996i) {
                this.f1994g = -i4;
            }
        } else {
            rect.setEmpty();
            i3 = 0;
        }
        int iA = x1.a(b0Var, this.f2002o, this.f1994g, b0Var.getInputMethodMode() == 2);
        int i5 = this.f1992d;
        if (i5 == -1) {
            paddingBottom = iA + i3;
        } else {
            int i6 = this.f1993e;
            if (i6 != -2) {
                iMakeMeasureSpec = i6 != -1 ? View.MeasureSpec.makeMeasureSpec(i6, 1073741824) : View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), 1073741824);
            } else {
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), Integer.MIN_VALUE);
            }
            int iA2 = this.f1991c.a(iMakeMeasureSpec, iA);
            paddingBottom = iA2 + (iA2 > 0 ? this.f1991c.getPaddingBottom() + this.f1991c.getPaddingTop() + i3 : 0);
        }
        boolean z2 = b0Var.getInputMethodMode() == 2;
        f0.m.d(b0Var, this.f1995h);
        if (b0Var.isShowing()) {
            View view = this.f2002o;
            WeakHashMap weakHashMap = c0.p0.f727a;
            if (c0.c0.b(view)) {
                int width = this.f1993e;
                if (width == -1) {
                    width = -1;
                } else if (width == -2) {
                    width = this.f2002o.getWidth();
                }
                if (i5 == -1) {
                    i5 = z2 ? paddingBottom : -1;
                    if (z2) {
                        b0Var.setWidth(this.f1993e == -1 ? -1 : 0);
                        b0Var.setHeight(0);
                    } else {
                        b0Var.setWidth(this.f1993e == -1 ? -1 : 0);
                        b0Var.setHeight(-1);
                    }
                } else if (i5 == -2) {
                    i5 = paddingBottom;
                }
                b0Var.setOutsideTouchable(true);
                View view2 = this.f2002o;
                int i7 = width;
                int i8 = this.f;
                int i9 = this.f1994g;
                int i10 = i7 < 0 ? -1 : i7;
                if (i5 < 0) {
                    i5 = -1;
                }
                b0Var.update(view2, i8, i9, i10, i5);
                return;
            }
            return;
        }
        int width2 = this.f1993e;
        if (width2 == -1) {
            width2 = -1;
        } else if (width2 == -2) {
            width2 = this.f2002o.getWidth();
        }
        if (i5 == -1) {
            i5 = -1;
        } else if (i5 == -2) {
            i5 = paddingBottom;
        }
        b0Var.setWidth(width2);
        b0Var.setHeight(i5);
        if (Build.VERSION.SDK_INT <= 28) {
            Method method = f1989z;
            if (method != null) {
                try {
                    method.invoke(b0Var, Boolean.TRUE);
                } catch (Exception unused) {
                    Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
                }
            }
        } else {
            y1.b(b0Var, true);
        }
        b0Var.setOutsideTouchable(true);
        b0Var.setTouchInterceptor(this.f2005r);
        if (this.f1998k) {
            f0.m.c(b0Var, this.f1997j);
        }
        if (Build.VERSION.SDK_INT <= 28) {
            Method method2 = A;
            if (method2 != null) {
                try {
                    method2.invoke(b0Var, this.f2010w);
                } catch (Exception e3) {
                    Log.e("ListPopupWindow", "Could not invoke setEpicenterBounds on PopupWindow", e3);
                }
            }
        } else {
            y1.a(b0Var, this.f2010w);
        }
        f0.l.a(b0Var, this.f2002o, this.f, this.f1994g, this.f1999l);
        this.f1991c.setSelection(-1);
        if ((!this.f2011x || this.f1991c.isInTouchMode()) && (q1Var = this.f1991c) != null) {
            q1Var.setListSelectionHidden(true);
            q1Var.requestLayout();
        }
        if (this.f2011x) {
            return;
        }
        this.f2008u.post(this.f2007t);
    }

    @Override // h.d0
    public final void dismiss() {
        b0 b0Var = this.f2012y;
        b0Var.dismiss();
        b0Var.setContentView(null);
        this.f1991c = null;
        this.f2008u.removeCallbacks(this.f2004q);
    }

    @Override // h.d0
    public final q1 f() {
        return this.f1991c;
    }

    public final void g(Drawable drawable) {
        this.f2012y.setBackgroundDrawable(drawable);
    }

    public final void h(int i3) {
        this.f1994g = i3;
        this.f1996i = true;
    }

    public final void j(int i3) {
        this.f = i3;
    }

    public final int m() {
        if (this.f1996i) {
            return this.f1994g;
        }
        return 0;
    }

    public void p(ListAdapter listAdapter) {
        g0.b bVar = this.f2001n;
        if (bVar == null) {
            this.f2001n = new g0.b(1, this);
        } else {
            ListAdapter listAdapter2 = this.b;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(bVar);
            }
        }
        this.b = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.f2001n);
        }
        q1 q1Var = this.f1991c;
        if (q1Var != null) {
            q1Var.setAdapter(this.b);
        }
    }

    public q1 q(Context context, boolean z2) {
        return new q1(context, z2);
    }

    public final void r(int i3) {
        Drawable background = this.f2012y.getBackground();
        if (background == null) {
            this.f1993e = i3;
            return;
        }
        Rect rect = this.f2009v;
        background.getPadding(rect);
        this.f1993e = rect.left + rect.right + i3;
    }
}
