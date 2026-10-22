package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.widget.FrameLayout;
import c0.w0;
import e.q;
import e.y;
import h.m;
import i.f;
import i.h1;
import i.i1;
import i.j;
import i.l3;

/* JADX INFO: loaded from: classes.dex */
public class ContentFrameLayout extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public TypedValue f193a;
    public TypedValue b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TypedValue f194c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public TypedValue f195d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public TypedValue f196e;
    public TypedValue f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Rect f197g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public h1 f198h;

    public ContentFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f197g = new Rect();
    }

    public TypedValue getFixedHeightMajor() {
        if (this.f196e == null) {
            this.f196e = new TypedValue();
        }
        return this.f196e;
    }

    public TypedValue getFixedHeightMinor() {
        if (this.f == null) {
            this.f = new TypedValue();
        }
        return this.f;
    }

    public TypedValue getFixedWidthMajor() {
        if (this.f194c == null) {
            this.f194c = new TypedValue();
        }
        return this.f194c;
    }

    public TypedValue getFixedWidthMinor() {
        if (this.f195d == null) {
            this.f195d = new TypedValue();
        }
        return this.f195d;
    }

    public TypedValue getMinWidthMajor() {
        if (this.f193a == null) {
            this.f193a = new TypedValue();
        }
        return this.f193a;
    }

    public TypedValue getMinWidthMinor() {
        if (this.b == null) {
            this.b = new TypedValue();
        }
        return this.b;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        h1 h1Var = this.f198h;
        if (h1Var != null) {
            h1Var.getClass();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        j jVar;
        super.onDetachedFromWindow();
        h1 h1Var = this.f198h;
        if (h1Var != null) {
            y yVar = ((q) h1Var).b;
            i1 i1Var = yVar.f1699r;
            if (i1Var != null) {
                ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) i1Var;
                actionBarOverlayLayout.k();
                ActionMenuView actionMenuView = ((l3) actionBarOverlayLayout.f158e).f2082a.f220a;
                if (actionMenuView != null && (jVar = actionMenuView.f183t) != null) {
                    jVar.d();
                    f fVar = jVar.f2064t;
                    if (fVar != null && fVar.b()) {
                        fVar.f1948i.dismiss();
                    }
                }
            }
            if (yVar.f1704w != null) {
                yVar.f1693l.getDecorView().removeCallbacks(yVar.f1705x);
                if (yVar.f1704w.isShowing()) {
                    try {
                        yVar.f1704w.dismiss();
                    } catch (IllegalArgumentException unused) {
                    }
                }
                yVar.f1704w = null;
            }
            w0 w0Var = yVar.f1706y;
            if (w0Var != null) {
                w0Var.b();
            }
            m mVar = yVar.F(0).f1671h;
            if (mVar != null) {
                mVar.c(true);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x004e  */
    /* JADX WARN: Code duplicated, block: B:22:0x0062  */
    /* JADX WARN: Code duplicated, block: B:37:0x008a  */
    /* JADX WARN: Code duplicated, block: B:38:0x009d  */
    /* JADX WARN: Code duplicated, block: B:55:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:57:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:58:0x00de  */
    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i3, int i4) {
        int iMakeMeasureSpec;
        boolean z2;
        int iMakeMeasureSpec2;
        int i5;
        int i6;
        float fraction;
        int i7;
        int i8;
        float fraction2;
        int i9;
        int i10;
        float fraction3;
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        boolean z3 = true;
        boolean z4 = displayMetrics.widthPixels < displayMetrics.heightPixels;
        int mode = View.MeasureSpec.getMode(i3);
        int mode2 = View.MeasureSpec.getMode(i4);
        Rect rect = this.f197g;
        if (mode != Integer.MIN_VALUE) {
            iMakeMeasureSpec = i3;
            z2 = false;
        } else {
            TypedValue typedValue = z4 ? this.f195d : this.f194c;
            if (typedValue == null || (i9 = typedValue.type) == 0) {
                iMakeMeasureSpec = i3;
                z2 = false;
            } else {
                if (i9 == 5) {
                    fraction3 = typedValue.getDimension(displayMetrics);
                } else {
                    if (i9 == 6) {
                        int i11 = displayMetrics.widthPixels;
                        fraction3 = typedValue.getFraction(i11, i11);
                    } else {
                        i10 = 0;
                    }
                    if (i10 > 0) {
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.min(i10 - (rect.left + rect.right), View.MeasureSpec.getSize(i3)), 1073741824);
                        z2 = true;
                    } else {
                        iMakeMeasureSpec = i3;
                        z2 = false;
                    }
                }
                i10 = (int) fraction3;
                if (i10 > 0) {
                    iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.min(i10 - (rect.left + rect.right), View.MeasureSpec.getSize(i3)), 1073741824);
                    z2 = true;
                } else {
                    iMakeMeasureSpec = i3;
                    z2 = false;
                }
            }
        }
        if (mode2 != Integer.MIN_VALUE) {
            iMakeMeasureSpec2 = i4;
        } else {
            TypedValue typedValue2 = z4 ? this.f196e : this.f;
            if (typedValue2 == null || (i7 = typedValue2.type) == 0) {
                iMakeMeasureSpec2 = i4;
            } else {
                if (i7 == 5) {
                    fraction2 = typedValue2.getDimension(displayMetrics);
                } else {
                    if (i7 == 6) {
                        int i12 = displayMetrics.heightPixels;
                        fraction2 = typedValue2.getFraction(i12, i12);
                    } else {
                        i8 = 0;
                    }
                    if (i8 > 0) {
                        iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(Math.min(i8 - (rect.top + rect.bottom), View.MeasureSpec.getSize(i4)), 1073741824);
                    } else {
                        iMakeMeasureSpec2 = i4;
                    }
                }
                i8 = (int) fraction2;
                if (i8 > 0) {
                    iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(Math.min(i8 - (rect.top + rect.bottom), View.MeasureSpec.getSize(i4)), 1073741824);
                } else {
                    iMakeMeasureSpec2 = i4;
                }
            }
        }
        super.onMeasure(iMakeMeasureSpec, iMakeMeasureSpec2);
        int measuredWidth = getMeasuredWidth();
        int iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
        if (z2 || mode != Integer.MIN_VALUE) {
            z3 = false;
        } else {
            TypedValue typedValue3 = z4 ? this.b : this.f193a;
            if (typedValue3 == null || (i5 = typedValue3.type) == 0) {
                z3 = false;
            } else {
                if (i5 == 5) {
                    fraction = typedValue3.getDimension(displayMetrics);
                } else {
                    if (i5 == 6) {
                        int i13 = displayMetrics.widthPixels;
                        fraction = typedValue3.getFraction(i13, i13);
                    } else {
                        i6 = 0;
                    }
                    if (i6 > 0) {
                        i6 -= rect.left + rect.right;
                    }
                    if (measuredWidth < i6) {
                        iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(i6, 1073741824);
                    } else {
                        z3 = false;
                    }
                }
                i6 = (int) fraction;
                if (i6 > 0) {
                    i6 -= rect.left + rect.right;
                }
                if (measuredWidth < i6) {
                    iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(i6, 1073741824);
                } else {
                    z3 = false;
                }
            }
        }
        if (z3) {
            super.onMeasure(iMakeMeasureSpec3, iMakeMeasureSpec2);
        }
    }

    public void setAttachListener(h1 h1Var) {
        this.f198h = h1Var;
    }
}
