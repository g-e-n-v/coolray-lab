package i;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class v1 extends ViewGroup {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f2174a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2175c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2176d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2177e;
    public int f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float f2178g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f2179h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[] f2180i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[] f2181j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Drawable f2182k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f2183l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f2184m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f2185n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f2186o;

    public v1(Context context, AttributeSet attributeSet, int i3) {
        super(context, attributeSet, i3);
        this.f2174a = true;
        this.b = -1;
        this.f2175c = 0;
        this.f2177e = 8388659;
        int[] iArr = d.a.f1507n;
        androidx.fragment.app.f fVarV = androidx.fragment.app.f.v(context, attributeSet, iArr, i3);
        c0.p0.h(this, context, iArr, attributeSet, (TypedArray) fVarV.f413c, i3);
        TypedArray typedArray = (TypedArray) fVarV.f413c;
        int i4 = typedArray.getInt(1, -1);
        if (i4 >= 0) {
            setOrientation(i4);
        }
        int i5 = typedArray.getInt(0, -1);
        if (i5 >= 0) {
            setGravity(i5);
        }
        boolean z2 = typedArray.getBoolean(2, true);
        if (!z2) {
            setBaselineAligned(z2);
        }
        this.f2178g = typedArray.getFloat(4, -1.0f);
        this.b = typedArray.getInt(3, -1);
        this.f2179h = typedArray.getBoolean(7, false);
        setDividerDrawable(fVarV.k(5));
        this.f2185n = typedArray.getInt(8, 0);
        this.f2186o = typedArray.getDimensionPixelSize(6, 0);
        fVarV.x();
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof u1;
    }

    public final void d(Canvas canvas, int i3) {
        this.f2182k.setBounds(getPaddingLeft() + this.f2186o, i3, (getWidth() - getPaddingRight()) - this.f2186o, this.f2184m + i3);
        this.f2182k.draw(canvas);
    }

    public final void e(Canvas canvas, int i3) {
        this.f2182k.setBounds(i3, getPaddingTop() + this.f2186o, this.f2183l + i3, (getHeight() - getPaddingBottom()) - this.f2186o);
        this.f2182k.draw(canvas);
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public u1 generateDefaultLayoutParams() {
        int i3 = this.f2176d;
        if (i3 == 0) {
            return new u1(-2, -2);
        }
        if (i3 == 1) {
            return new u1(-1, -2);
        }
        return null;
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public u1 generateLayoutParams(AttributeSet attributeSet) {
        return new u1(getContext(), attributeSet);
    }

    @Override // android.view.View
    public int getBaseline() {
        int i3;
        if (this.b < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i4 = this.b;
        if (childCount <= i4) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        View childAt = getChildAt(i4);
        int baseline = childAt.getBaseline();
        if (baseline == -1) {
            if (this.b == 0) {
                return -1;
            }
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
        }
        int bottom = this.f2175c;
        if (this.f2176d == 1 && (i3 = this.f2177e & 112) != 48) {
            if (i3 == 16) {
                bottom += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.f) / 2;
            } else if (i3 == 80) {
                bottom = ((getBottom() - getTop()) - getPaddingBottom()) - this.f;
            }
        }
        return bottom + ((LinearLayout.LayoutParams) ((u1) childAt.getLayoutParams())).topMargin + baseline;
    }

    public int getBaselineAlignedChildIndex() {
        return this.b;
    }

    public Drawable getDividerDrawable() {
        return this.f2182k;
    }

    public int getDividerPadding() {
        return this.f2186o;
    }

    public int getDividerWidth() {
        return this.f2183l;
    }

    public int getGravity() {
        return this.f2177e;
    }

    public int getOrientation() {
        return this.f2176d;
    }

    public int getShowDividers() {
        return this.f2185n;
    }

    public int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.f2178g;
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public u1 generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new u1(layoutParams);
    }

    public final boolean i(int i3) {
        if (i3 == 0) {
            return (this.f2185n & 1) != 0;
        }
        if (i3 == getChildCount()) {
            return (this.f2185n & 4) != 0;
        }
        if ((this.f2185n & 2) != 0) {
            for (int i4 = i3 - 1; i4 >= 0; i4--) {
                if (getChildAt(i4).getVisibility() != 8) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int right;
        int left;
        int i3;
        int bottom;
        if (this.f2182k == null) {
            return;
        }
        int i4 = 0;
        if (this.f2176d == 1) {
            int virtualChildCount = getVirtualChildCount();
            while (i4 < virtualChildCount) {
                View childAt = getChildAt(i4);
                if (childAt != null && childAt.getVisibility() != 8 && i(i4)) {
                    d(canvas, (childAt.getTop() - ((LinearLayout.LayoutParams) ((u1) childAt.getLayoutParams())).topMargin) - this.f2184m);
                }
                i4++;
            }
            if (i(virtualChildCount)) {
                View childAt2 = getChildAt(virtualChildCount - 1);
                if (childAt2 == null) {
                    bottom = (getHeight() - getPaddingBottom()) - this.f2184m;
                } else {
                    bottom = childAt2.getBottom() + ((LinearLayout.LayoutParams) ((u1) childAt2.getLayoutParams())).bottomMargin;
                }
                d(canvas, bottom);
                return;
            }
            return;
        }
        int virtualChildCount2 = getVirtualChildCount();
        boolean zA = p3.a(this);
        while (i4 < virtualChildCount2) {
            View childAt3 = getChildAt(i4);
            if (childAt3 != null && childAt3.getVisibility() != 8 && i(i4)) {
                u1 u1Var = (u1) childAt3.getLayoutParams();
                e(canvas, zA ? childAt3.getRight() + ((LinearLayout.LayoutParams) u1Var).rightMargin : (childAt3.getLeft() - ((LinearLayout.LayoutParams) u1Var).leftMargin) - this.f2183l);
            }
            i4++;
        }
        if (i(virtualChildCount2)) {
            View childAt4 = getChildAt(virtualChildCount2 - 1);
            if (childAt4 != null) {
                u1 u1Var2 = (u1) childAt4.getLayoutParams();
                if (zA) {
                    left = childAt4.getLeft() - ((LinearLayout.LayoutParams) u1Var2).leftMargin;
                    i3 = this.f2183l;
                    right = left - i3;
                } else {
                    right = childAt4.getRight() + ((LinearLayout.LayoutParams) u1Var2).rightMargin;
                }
            } else if (zA) {
                right = getPaddingLeft();
            } else {
                left = getWidth() - getPaddingRight();
                i3 = this.f2183l;
                right = left - i3;
            }
            e(canvas, right);
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    /* JADX WARN: Code duplicated, block: B:29:0x009f  */
    /* JADX WARN: Code duplicated, block: B:58:0x0157  */
    /* JADX WARN: Code duplicated, block: B:61:0x0160  */
    /* JADX WARN: Code duplicated, block: B:63:0x0164  */
    /* JADX WARN: Code duplicated, block: B:65:0x0168  */
    /* JADX WARN: Code duplicated, block: B:66:0x016c  */
    /* JADX WARN: Code duplicated, block: B:68:0x0174  */
    /* JADX WARN: Code duplicated, block: B:70:0x0180  */
    /* JADX WARN: Code duplicated, block: B:72:0x0187  */
    /* JADX WARN: Code duplicated, block: B:73:0x018e  */
    /* JADX WARN: Code duplicated, block: B:76:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:77:0x01a6  */
    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z2, int i3, int i4, int i5, int i6) {
        int paddingLeft;
        int i7;
        int i8;
        int i9;
        int i10;
        int baseline;
        int i11;
        int i12;
        int i13;
        int measuredHeight;
        int i14;
        int paddingTop;
        int i15;
        int i16;
        int i17;
        int i18 = 8;
        char c3 = 2;
        if (this.f2176d == 1) {
            int paddingLeft2 = getPaddingLeft();
            int i19 = i5 - i3;
            int paddingRight = i19 - getPaddingRight();
            int paddingRight2 = (i19 - paddingLeft2) - getPaddingRight();
            int virtualChildCount = getVirtualChildCount();
            int i20 = this.f2177e;
            int i21 = i20 & 112;
            int i22 = 8388615 & i20;
            if (i21 != 16) {
                paddingTop = i21 != 80 ? getPaddingTop() : ((getPaddingTop() + i6) - i4) - this.f;
            } else {
                paddingTop = getPaddingTop() + (((i6 - i4) - this.f) / 2);
            }
            int i23 = 0;
            while (i23 < virtualChildCount) {
                View childAt = getChildAt(i23);
                if (childAt != null && childAt.getVisibility() != i18) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight2 = childAt.getMeasuredHeight();
                    u1 u1Var = (u1) childAt.getLayoutParams();
                    int i24 = ((LinearLayout.LayoutParams) u1Var).gravity;
                    if (i24 < 0) {
                        i24 = i22;
                    }
                    WeakHashMap weakHashMap = c0.p0.f727a;
                    int absoluteGravity = Gravity.getAbsoluteGravity(i24, c0.b0.d(this)) & 7;
                    if (absoluteGravity != 1) {
                        if (absoluteGravity != 5) {
                            i17 = ((LinearLayout.LayoutParams) u1Var).leftMargin + paddingLeft2;
                        } else {
                            i15 = paddingRight - measuredWidth;
                            i16 = ((LinearLayout.LayoutParams) u1Var).rightMargin;
                        }
                        if (i(i23)) {
                            paddingTop += this.f2184m;
                        }
                        int i25 = paddingTop + ((LinearLayout.LayoutParams) u1Var).topMargin;
                        childAt.layout(i17, i25, measuredWidth + i17, i25 + measuredHeight2);
                        paddingTop = measuredHeight2 + ((LinearLayout.LayoutParams) u1Var).bottomMargin + i25;
                    } else {
                        i15 = ((paddingRight2 - measuredWidth) / 2) + paddingLeft2 + ((LinearLayout.LayoutParams) u1Var).leftMargin;
                        i16 = ((LinearLayout.LayoutParams) u1Var).rightMargin;
                    }
                    i17 = i15 - i16;
                    if (i(i23)) {
                        paddingTop += this.f2184m;
                    }
                    int i26 = paddingTop + ((LinearLayout.LayoutParams) u1Var).topMargin;
                    childAt.layout(i17, i26, measuredWidth + i17, i26 + measuredHeight2);
                    paddingTop = measuredHeight2 + ((LinearLayout.LayoutParams) u1Var).bottomMargin + i26;
                }
                i23++;
                c3 = c3;
                i18 = 8;
            }
            return;
        }
        boolean zA = p3.a(this);
        int paddingTop2 = getPaddingTop();
        int i27 = i6 - i4;
        int paddingBottom = i27 - getPaddingBottom();
        int paddingBottom2 = (i27 - paddingTop2) - getPaddingBottom();
        int virtualChildCount2 = getVirtualChildCount();
        int i28 = this.f2177e;
        int i29 = 8388615 & i28;
        int i30 = i28 & 112;
        boolean z3 = this.f2174a;
        int[] iArr = this.f2180i;
        int[] iArr2 = this.f2181j;
        WeakHashMap weakHashMap2 = c0.p0.f727a;
        int absoluteGravity2 = Gravity.getAbsoluteGravity(i29, c0.b0.d(this));
        if (absoluteGravity2 != 1) {
            paddingLeft = absoluteGravity2 != 5 ? getPaddingLeft() : ((getPaddingLeft() + i5) - i3) - this.f;
        } else {
            paddingLeft = getPaddingLeft() + (((i5 - i3) - this.f) / 2);
        }
        if (zA) {
            i8 = virtualChildCount2 - 1;
            i7 = -1;
        } else {
            i7 = 1;
            i8 = 0;
        }
        int i31 = 0;
        while (i31 < virtualChildCount2) {
            int i32 = (i7 * i31) + i8;
            View childAt2 = getChildAt(i32);
            if (childAt2 == null) {
                i9 = i8;
            } else {
                i9 = i8;
                if (childAt2.getVisibility() != 8) {
                    int measuredWidth2 = childAt2.getMeasuredWidth();
                    int measuredHeight3 = childAt2.getMeasuredHeight();
                    u1 u1Var2 = (u1) childAt2.getLayoutParams();
                    int i33 = paddingLeft;
                    if (z3) {
                        i10 = paddingTop2;
                        baseline = ((LinearLayout.LayoutParams) u1Var2).height != -1 ? childAt2.getBaseline() : -1;
                        i11 = ((LinearLayout.LayoutParams) u1Var2).gravity;
                        if (i11 < 0) {
                            i11 = i30;
                        }
                        i12 = i11 & 112;
                        if (i12 != 16) {
                            if (i12 != 48) {
                                i13 = i10 + ((LinearLayout.LayoutParams) u1Var2).topMargin;
                                if (baseline != -1) {
                                    i13 = (iArr[1] - baseline) + i13;
                                }
                            } else if (i12 != 80) {
                                i13 = i10;
                            } else {
                                i13 = (paddingBottom - measuredHeight3) - ((LinearLayout.LayoutParams) u1Var2).bottomMargin;
                                if (baseline != -1) {
                                    measuredHeight = iArr2[2] - (childAt2.getMeasuredHeight() - baseline);
                                }
                            }
                            if (i(i32)) {
                                i14 = i33 + this.f2183l;
                            } else {
                                i14 = i33;
                            }
                            int i34 = i14 + ((LinearLayout.LayoutParams) u1Var2).leftMargin;
                            childAt2.layout(i34, i13, i34 + measuredWidth2, i13 + measuredHeight3);
                            paddingLeft = measuredWidth2 + ((LinearLayout.LayoutParams) u1Var2).rightMargin + i34;
                        } else {
                            i13 = ((paddingBottom2 - measuredHeight3) / 2) + i10 + ((LinearLayout.LayoutParams) u1Var2).topMargin;
                            measuredHeight = ((LinearLayout.LayoutParams) u1Var2).bottomMargin;
                        }
                        i13 -= measuredHeight;
                        if (i(i32)) {
                            i14 = i33 + this.f2183l;
                        } else {
                            i14 = i33;
                        }
                        int i35 = i14 + ((LinearLayout.LayoutParams) u1Var2).leftMargin;
                        childAt2.layout(i35, i13, i35 + measuredWidth2, i13 + measuredHeight3);
                        paddingLeft = measuredWidth2 + ((LinearLayout.LayoutParams) u1Var2).rightMargin + i35;
                    } else {
                        i10 = paddingTop2;
                    }
                    i11 = ((LinearLayout.LayoutParams) u1Var2).gravity;
                    if (i11 < 0) {
                        i11 = i30;
                    }
                    i12 = i11 & 112;
                    if (i12 != 16) {
                        if (i12 != 48) {
                            i13 = i10 + ((LinearLayout.LayoutParams) u1Var2).topMargin;
                            if (baseline != -1) {
                                i13 = (iArr[1] - baseline) + i13;
                            }
                        } else if (i12 != 80) {
                            i13 = i10;
                        } else {
                            i13 = (paddingBottom - measuredHeight3) - ((LinearLayout.LayoutParams) u1Var2).bottomMargin;
                            if (baseline != -1) {
                                measuredHeight = iArr2[2] - (childAt2.getMeasuredHeight() - baseline);
                            }
                        }
                        if (i(i32)) {
                            i14 = i33 + this.f2183l;
                        } else {
                            i14 = i33;
                        }
                        int i36 = i14 + ((LinearLayout.LayoutParams) u1Var2).leftMargin;
                        childAt2.layout(i36, i13, i36 + measuredWidth2, i13 + measuredHeight3);
                        paddingLeft = measuredWidth2 + ((LinearLayout.LayoutParams) u1Var2).rightMargin + i36;
                    } else {
                        i13 = ((paddingBottom2 - measuredHeight3) / 2) + i10 + ((LinearLayout.LayoutParams) u1Var2).topMargin;
                        measuredHeight = ((LinearLayout.LayoutParams) u1Var2).bottomMargin;
                    }
                    i13 -= measuredHeight;
                    if (i(i32)) {
                        i14 = i33 + this.f2183l;
                    } else {
                        i14 = i33;
                    }
                    int i37 = i14 + ((LinearLayout.LayoutParams) u1Var2).leftMargin;
                    childAt2.layout(i37, i13, i37 + measuredWidth2, i13 + measuredHeight3);
                    paddingLeft = measuredWidth2 + ((LinearLayout.LayoutParams) u1Var2).rightMargin + i37;
                }
                i31++;
                i8 = i9;
                paddingTop2 = i10;
            }
            i10 = paddingTop2;
            i31++;
            i8 = i9;
            paddingTop2 = i10;
        }
    }

    /* JADX WARN: Code duplicated, block: B:228:0x04e3  */
    /* JADX WARN: Code duplicated, block: B:231:0x04f8  */
    /* JADX WARN: Code duplicated, block: B:233:0x0501  */
    /* JADX WARN: Code duplicated, block: B:235:0x0505  */
    /* JADX WARN: Code duplicated, block: B:237:0x0526  */
    /* JADX WARN: Code duplicated, block: B:243:0x0536  */
    /* JADX WARN: Code duplicated, block: B:246:0x053d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:248:0x0540  */
    /* JADX WARN: Code duplicated, block: B:250:0x0547 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:252:0x054a  */
    /* JADX WARN: Code duplicated, block: B:366:0x079c  */
    /* JADX WARN: Code duplicated, block: B:64:0x013f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:66:0x0142  */
    /* JADX WARN: Code duplicated, block: B:68:0x0148 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:70:0x014b  */
    @Override // android.view.View
    public void onMeasure(int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int iMax;
        int i8;
        int baseline;
        int i9;
        int i10;
        int[] iArr;
        int i11;
        int i12;
        boolean z2;
        boolean z3;
        u1 u1Var;
        View view;
        int i13;
        int[] iArr2;
        int i14;
        int i15;
        boolean z4;
        int i16;
        int measuredHeight;
        boolean z5;
        boolean z6;
        int iMax2;
        int i17;
        int baseline2;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        boolean z7;
        int i23;
        int i24;
        int i25;
        View view2;
        boolean z8;
        v1 v1Var = this;
        int i26 = -2;
        int iMax3 = 0;
        int i27 = 1073741824;
        int i28 = 8;
        if (v1Var.f2176d == 1) {
            v1Var.f = 0;
            int virtualChildCount = v1Var.getVirtualChildCount();
            int mode = View.MeasureSpec.getMode(i3);
            int mode2 = View.MeasureSpec.getMode(i4);
            int i29 = v1Var.b;
            boolean z9 = v1Var.f2179h;
            int i30 = 0;
            int iMax4 = 0;
            int iMax5 = 0;
            boolean z10 = false;
            int i31 = 0;
            boolean z11 = false;
            boolean z12 = true;
            float f = 0.0f;
            int iMax6 = 0;
            while (i30 < virtualChildCount) {
                int i32 = mode;
                View childAt = v1Var.getChildAt(i30);
                if (childAt == null) {
                    v1Var.f = v1Var.f;
                } else {
                    if (childAt.getVisibility() != i28) {
                        if (v1Var.i(i30)) {
                            v1Var.f += v1Var.f2184m;
                        }
                        u1 u1Var2 = (u1) childAt.getLayoutParams();
                        float f3 = ((LinearLayout.LayoutParams) u1Var2).weight;
                        f += f3;
                        if (mode2 == i27 && ((LinearLayout.LayoutParams) u1Var2).height == 0 && f3 > 0.0f) {
                            int i33 = v1Var.f;
                            v1Var.f = Math.max(i33, ((LinearLayout.LayoutParams) u1Var2).topMargin + i33 + ((LinearLayout.LayoutParams) u1Var2).bottomMargin);
                            view2 = childAt;
                            i22 = mode2;
                            i23 = i29;
                            z7 = z9;
                            i24 = i30;
                            z10 = true;
                            i25 = i32;
                        } else {
                            if (((LinearLayout.LayoutParams) u1Var2).height != 0 || f3 <= 0.0f) {
                                i21 = Integer.MIN_VALUE;
                            } else {
                                ((LinearLayout.LayoutParams) u1Var2).height = i26;
                                i21 = 0;
                            }
                            i22 = mode2;
                            z7 = z9;
                            i23 = i29;
                            i24 = i30;
                            i25 = i32;
                            v1Var.measureChildWithMargins(childAt, i3, 0, i4, f == 0.0f ? v1Var.f : 0);
                            if (i21 != Integer.MIN_VALUE) {
                                ((LinearLayout.LayoutParams) u1Var2).height = i21;
                            }
                            int measuredHeight2 = childAt.getMeasuredHeight();
                            int i34 = v1Var.f;
                            view2 = childAt;
                            v1Var.f = Math.max(i34, i34 + measuredHeight2 + ((LinearLayout.LayoutParams) u1Var2).topMargin + ((LinearLayout.LayoutParams) u1Var2).bottomMargin);
                            if (z7) {
                                iMax6 = Math.max(measuredHeight2, iMax6);
                            }
                        }
                        if (i23 >= 0 && i23 == i24 + 1) {
                            v1Var.f2175c = v1Var.f;
                        }
                        if (i24 < i23 && ((LinearLayout.LayoutParams) u1Var2).weight > 0.0f) {
                            throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                        }
                        if (i25 == 1073741824 || ((LinearLayout.LayoutParams) u1Var2).width != -1) {
                            z8 = false;
                        } else {
                            z8 = true;
                            z11 = true;
                        }
                        int i35 = ((LinearLayout.LayoutParams) u1Var2).leftMargin + ((LinearLayout.LayoutParams) u1Var2).rightMargin;
                        int measuredWidth = view2.getMeasuredWidth() + i35;
                        iMax3 = Math.max(iMax3, measuredWidth);
                        int measuredState = view2.getMeasuredState();
                        boolean z13 = z8;
                        int iCombineMeasuredStates = View.combineMeasuredStates(i31, measuredState);
                        if (z12) {
                            i31 = iCombineMeasuredStates;
                            boolean z14 = ((LinearLayout.LayoutParams) u1Var2).width == -1;
                            if (((LinearLayout.LayoutParams) u1Var2).weight > 0.0f) {
                                if (!z13) {
                                    i35 = measuredWidth;
                                }
                                iMax5 = Math.max(iMax5, i35);
                            } else {
                                if (!z13) {
                                    i35 = measuredWidth;
                                }
                                iMax4 = Math.max(iMax4, i35);
                            }
                            z12 = z14;
                        } else {
                            i31 = iCombineMeasuredStates;
                        }
                        if (((LinearLayout.LayoutParams) u1Var2).weight > 0.0f) {
                            if (!z13) {
                                i35 = measuredWidth;
                            }
                            iMax5 = Math.max(iMax5, i35);
                        } else {
                            if (!z13) {
                                i35 = measuredWidth;
                            }
                            iMax4 = Math.max(iMax4, i35);
                        }
                        z12 = z14;
                    }
                    i30 = i24 + 1;
                    i29 = i23;
                    mode = i25;
                    z9 = z7;
                    mode2 = i22;
                    i26 = -2;
                    i27 = 1073741824;
                    i28 = 8;
                }
                i22 = mode2;
                i23 = i29;
                z7 = z9;
                i24 = i30;
                i25 = i32;
                i30 = i24 + 1;
                i29 = i23;
                mode = i25;
                z9 = z7;
                mode2 = i22;
                i26 = -2;
                i27 = 1073741824;
                i28 = 8;
            }
            int i36 = mode;
            int i37 = mode2;
            boolean z15 = z9;
            int i38 = i31;
            int i39 = i4;
            if (v1Var.f > 0 && v1Var.i(virtualChildCount)) {
                v1Var.f += v1Var.f2184m;
            }
            if (z15 && (i37 == Integer.MIN_VALUE || i37 == 0)) {
                v1Var.f = 0;
                for (int i40 = 0; i40 < virtualChildCount; i40++) {
                    View childAt2 = v1Var.getChildAt(i40);
                    if (childAt2 == null) {
                        v1Var.f = v1Var.f;
                    } else if (childAt2.getVisibility() != 8) {
                        u1 u1Var3 = (u1) childAt2.getLayoutParams();
                        int i41 = v1Var.f;
                        v1Var.f = Math.max(i41, i41 + iMax6 + ((LinearLayout.LayoutParams) u1Var3).topMargin + ((LinearLayout.LayoutParams) u1Var3).bottomMargin);
                    }
                }
            }
            int paddingBottom = v1Var.getPaddingBottom() + v1Var.getPaddingTop() + v1Var.f;
            v1Var.f = paddingBottom;
            int iResolveSizeAndState = View.resolveSizeAndState(Math.max(paddingBottom, v1Var.getSuggestedMinimumHeight()), i39, 0);
            int i42 = (iResolveSizeAndState & 16777215) - v1Var.f;
            if (z10 || (i42 != 0 && f > 0.0f)) {
                float f4 = v1Var.f2178g;
                if (f4 > 0.0f) {
                    f = f4;
                }
                v1Var.f = 0;
                int iCombineMeasuredStates2 = i38;
                int i43 = 0;
                while (i43 < virtualChildCount) {
                    View childAt3 = v1Var.getChildAt(i43);
                    if (childAt3.getVisibility() == 8) {
                        i43 = i43;
                    } else {
                        u1 u1Var4 = (u1) childAt3.getLayoutParams();
                        float f5 = ((LinearLayout.LayoutParams) u1Var4).weight;
                        if (f5 > 0.0f) {
                            int i44 = (int) ((i42 * f5) / f);
                            f -= f5;
                            i42 -= i44;
                            int childMeasureSpec = ViewGroup.getChildMeasureSpec(i3, v1Var.getPaddingRight() + v1Var.getPaddingLeft() + ((LinearLayout.LayoutParams) u1Var4).leftMargin + ((LinearLayout.LayoutParams) u1Var4).rightMargin, ((LinearLayout.LayoutParams) u1Var4).width);
                            if (((LinearLayout.LayoutParams) u1Var4).height == 0) {
                                i20 = 1073741824;
                                if (i37 == 1073741824) {
                                    if (i44 <= 0) {
                                        i44 = 0;
                                    }
                                    childAt3.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(i44, 1073741824));
                                }
                                iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, childAt3.getMeasuredState() & (-256));
                            } else {
                                i20 = 1073741824;
                            }
                            int measuredHeight3 = childAt3.getMeasuredHeight() + i44;
                            if (measuredHeight3 < 0) {
                                measuredHeight3 = 0;
                            }
                            childAt3.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(measuredHeight3, i20));
                            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, childAt3.getMeasuredState() & (-256));
                        }
                        int i45 = ((LinearLayout.LayoutParams) u1Var4).leftMargin + ((LinearLayout.LayoutParams) u1Var4).rightMargin;
                        int measuredWidth2 = childAt3.getMeasuredWidth() + i45;
                        iMax3 = Math.max(iMax3, measuredWidth2);
                        if (i36 != 1073741824) {
                            i19 = -1;
                            if (((LinearLayout.LayoutParams) u1Var4).width == -1) {
                                measuredWidth2 = i45;
                            }
                        } else {
                            i19 = -1;
                        }
                        iMax4 = Math.max(iMax4, measuredWidth2);
                        boolean z16 = z12 && ((LinearLayout.LayoutParams) u1Var4).width == i19;
                        int i46 = v1Var.f;
                        v1Var.f = Math.max(i46, childAt3.getMeasuredHeight() + i46 + ((LinearLayout.LayoutParams) u1Var4).topMargin + ((LinearLayout.LayoutParams) u1Var4).bottomMargin);
                        z12 = z16;
                    }
                    i43++;
                }
                v1Var.f = v1Var.getPaddingBottom() + v1Var.getPaddingTop() + v1Var.f;
                i38 = iCombineMeasuredStates2;
            } else {
                iMax4 = Math.max(iMax4, iMax5);
                if (z15 && i37 != 1073741824) {
                    for (int i47 = 0; i47 < virtualChildCount; i47++) {
                        View childAt4 = v1Var.getChildAt(i47);
                        if (childAt4 != null && childAt4.getVisibility() != 8 && ((LinearLayout.LayoutParams) ((u1) childAt4.getLayoutParams())).weight > 0.0f) {
                            childAt4.measure(View.MeasureSpec.makeMeasureSpec(childAt4.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(iMax6, 1073741824));
                        }
                    }
                }
            }
            if (z12 || i36 == 1073741824) {
                iMax4 = iMax3;
            }
            v1Var.setMeasuredDimension(View.resolveSizeAndState(Math.max(v1Var.getPaddingRight() + v1Var.getPaddingLeft() + iMax4, v1Var.getSuggestedMinimumWidth()), i3, i38), iResolveSizeAndState);
            if (z11) {
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(v1Var.getMeasuredWidth(), 1073741824);
                int i48 = 0;
                while (i48 < virtualChildCount) {
                    View childAt5 = v1Var.getChildAt(i48);
                    if (childAt5.getVisibility() != 8) {
                        u1 u1Var5 = (u1) childAt5.getLayoutParams();
                        if (((LinearLayout.LayoutParams) u1Var5).width == -1) {
                            int i49 = ((LinearLayout.LayoutParams) u1Var5).height;
                            ((LinearLayout.LayoutParams) u1Var5).height = childAt5.getMeasuredHeight();
                            v1Var.measureChildWithMargins(childAt5, iMakeMeasureSpec, 0, i39, 0);
                            ((LinearLayout.LayoutParams) u1Var5).height = i49;
                        }
                    }
                    i48++;
                    i39 = i4;
                }
                return;
            }
            return;
        }
        int i50 = i3;
        v1Var.f = 0;
        int virtualChildCount2 = v1Var.getVirtualChildCount();
        int mode3 = View.MeasureSpec.getMode(i50);
        int mode4 = View.MeasureSpec.getMode(i4);
        if (v1Var.f2180i == null || v1Var.f2181j == null) {
            v1Var.f2180i = new int[4];
            v1Var.f2181j = new int[4];
        }
        int[] iArr3 = v1Var.f2180i;
        int[] iArr4 = v1Var.f2181j;
        iArr3[3] = -1;
        char c3 = 2;
        iArr3[2] = -1;
        iArr3[1] = -1;
        iArr3[0] = -1;
        iArr4[3] = -1;
        iArr4[2] = -1;
        iArr4[1] = -1;
        iArr4[0] = -1;
        boolean z17 = v1Var.f2174a;
        boolean z18 = v1Var.f2179h;
        boolean z19 = mode3 == 1073741824;
        float f6 = 0.0f;
        boolean z20 = true;
        int i51 = 0;
        int i52 = 0;
        int i53 = 0;
        int iMax7 = 0;
        int iMax8 = 0;
        int iCombineMeasuredStates3 = 0;
        boolean z21 = false;
        boolean z22 = false;
        while (i51 < virtualChildCount2) {
            char c4 = c3;
            View childAt6 = v1Var.getChildAt(i51);
            if (childAt6 == null) {
                v1Var.f = v1Var.f;
                i12 = i51;
                i17 = i53;
                iArr2 = iArr3;
                iArr = iArr4;
                z2 = z17;
                z3 = z18;
            } else {
                int i54 = i52;
                if (childAt6.getVisibility() == 8) {
                    i50 = i3;
                    i12 = i51;
                    i17 = i53;
                    iArr = iArr4;
                    z2 = z17;
                    z3 = z18;
                    i52 = i54;
                    iArr2 = iArr3;
                } else {
                    if (v1Var.i(i51)) {
                        v1Var.f += v1Var.f2183l;
                    }
                    u1 u1Var6 = (u1) childAt6.getLayoutParams();
                    float f7 = ((LinearLayout.LayoutParams) u1Var6).weight;
                    f6 += f7;
                    int i55 = i51;
                    if (mode3 == 1073741824 && ((LinearLayout.LayoutParams) u1Var6).width == 0 && f7 > 0.0f) {
                        if (z19) {
                            v1Var.f = ((LinearLayout.LayoutParams) u1Var6).leftMargin + ((LinearLayout.LayoutParams) u1Var6).rightMargin + v1Var.f;
                        } else {
                            int i56 = v1Var.f;
                            v1Var.f = Math.max(i56, ((LinearLayout.LayoutParams) u1Var6).leftMargin + i56 + ((LinearLayout.LayoutParams) u1Var6).rightMargin);
                        }
                        if (z17) {
                            int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
                            childAt6.measure(iMakeMeasureSpec2, iMakeMeasureSpec2);
                            view = childAt6;
                            z2 = z17;
                            z3 = z18;
                            i13 = i54;
                            i12 = i55;
                            u1Var = u1Var6;
                            iArr2 = iArr3;
                            iArr = iArr4;
                            i50 = i3;
                            i14 = i53;
                            i11 = iMax7;
                        } else {
                            view = childAt6;
                            z2 = z17;
                            z3 = z18;
                            z22 = true;
                            i13 = i54;
                            i12 = i55;
                            i15 = 1073741824;
                            u1Var = u1Var6;
                            iArr2 = iArr3;
                            iArr = iArr4;
                            i50 = i3;
                            i14 = i53;
                            i11 = iMax7;
                        }
                        if (mode4 == i15 && ((LinearLayout.LayoutParams) u1Var).height == -1) {
                            z4 = true;
                            z21 = true;
                        } else {
                            z4 = false;
                        }
                        i16 = ((LinearLayout.LayoutParams) u1Var).topMargin + ((LinearLayout.LayoutParams) u1Var).bottomMargin;
                        measuredHeight = view.getMeasuredHeight() + i16;
                        iCombineMeasuredStates3 = View.combineMeasuredStates(iCombineMeasuredStates3, view.getMeasuredState());
                        if (z2) {
                            baseline2 = view.getBaseline();
                            z5 = z4;
                            if (baseline2 != -1) {
                                i18 = ((LinearLayout.LayoutParams) u1Var).gravity;
                                if (i18 < 0) {
                                    i18 = v1Var.f2177e;
                                }
                                int i57 = (((i18 & 112) >> 4) & (-2)) >> 1;
                                iArr2[i57] = Math.max(iArr2[i57], baseline2);
                                iArr[i57] = Math.max(iArr[i57], measuredHeight - baseline2);
                            }
                        } else {
                            z5 = z4;
                        }
                        int iMax9 = Math.max(i13, measuredHeight);
                        if (z20 || ((LinearLayout.LayoutParams) u1Var).height != -1) {
                            z6 = false;
                        } else {
                            z6 = true;
                        }
                        if (((LinearLayout.LayoutParams) u1Var).weight > 0.0f) {
                            if (!z5) {
                                i16 = measuredHeight;
                            }
                            iMax7 = Math.max(i11, i16);
                            iMax2 = i14;
                        } else {
                            if (!z5) {
                                i16 = measuredHeight;
                            }
                            iMax2 = Math.max(i14, i16);
                            iMax7 = i11;
                        }
                        int i58 = iMax2;
                        i52 = iMax9;
                        i17 = i58;
                        z20 = z6;
                    } else {
                        if (((LinearLayout.LayoutParams) u1Var6).width != 0 || f7 <= 0.0f) {
                            i10 = Integer.MIN_VALUE;
                        } else {
                            ((LinearLayout.LayoutParams) u1Var6).width = -2;
                            i10 = 0;
                        }
                        iArr = iArr4;
                        i11 = iMax7;
                        i12 = i55;
                        z2 = z17;
                        z3 = z18;
                        int i59 = i10;
                        u1Var = u1Var6;
                        view = childAt6;
                        i13 = i54;
                        i50 = i3;
                        iArr2 = iArr3;
                        i14 = i53;
                        v1Var.measureChildWithMargins(view, i50, f6 == 0.0f ? v1Var.f : 0, i4, 0);
                        if (i59 != Integer.MIN_VALUE) {
                            ((LinearLayout.LayoutParams) u1Var).width = i59;
                        }
                        int measuredWidth3 = view.getMeasuredWidth();
                        if (z19) {
                            v1Var.f = ((LinearLayout.LayoutParams) u1Var).leftMargin + measuredWidth3 + ((LinearLayout.LayoutParams) u1Var).rightMargin + v1Var.f;
                        } else {
                            int i60 = v1Var.f;
                            v1Var.f = Math.max(i60, i60 + measuredWidth3 + ((LinearLayout.LayoutParams) u1Var).leftMargin + ((LinearLayout.LayoutParams) u1Var).rightMargin);
                        }
                        if (z3) {
                            iMax8 = Math.max(measuredWidth3, iMax8);
                        }
                    }
                    i15 = 1073741824;
                    if (mode4 == i15) {
                        z4 = false;
                    } else {
                        z4 = false;
                    }
                    i16 = ((LinearLayout.LayoutParams) u1Var).topMargin + ((LinearLayout.LayoutParams) u1Var).bottomMargin;
                    measuredHeight = view.getMeasuredHeight() + i16;
                    iCombineMeasuredStates3 = View.combineMeasuredStates(iCombineMeasuredStates3, view.getMeasuredState());
                    if (z2) {
                        baseline2 = view.getBaseline();
                        z5 = z4;
                        if (baseline2 != -1) {
                            i18 = ((LinearLayout.LayoutParams) u1Var).gravity;
                            if (i18 < 0) {
                                i18 = v1Var.f2177e;
                            }
                            int i510 = (((i18 & 112) >> 4) & (-2)) >> 1;
                            iArr2[i510] = Math.max(iArr2[i510], baseline2);
                            iArr[i510] = Math.max(iArr[i510], measuredHeight - baseline2);
                        }
                    } else {
                        z5 = z4;
                    }
                    int iMax10 = Math.max(i13, measuredHeight);
                    if (z20) {
                        z6 = false;
                    } else {
                        z6 = false;
                    }
                    if (((LinearLayout.LayoutParams) u1Var).weight > 0.0f) {
                        if (!z5) {
                            i16 = measuredHeight;
                        }
                        iMax7 = Math.max(i11, i16);
                        iMax2 = i14;
                    } else {
                        if (!z5) {
                            i16 = measuredHeight;
                        }
                        iMax2 = Math.max(i14, i16);
                        iMax7 = i11;
                    }
                    int i511 = iMax2;
                    i52 = iMax10;
                    i17 = i511;
                    z20 = z6;
                }
            }
            i53 = i17;
            i51 = i12 + 1;
            c3 = c4;
            iArr3 = iArr2;
            iArr4 = iArr;
            z17 = z2;
            z18 = z3;
        }
        int[] iArr5 = iArr3;
        int[] iArr6 = iArr4;
        char c5 = c3;
        boolean z23 = z17;
        boolean z24 = z18;
        int i61 = i52;
        int i62 = i53;
        int i63 = iMax7;
        if (v1Var.f > 0 && v1Var.i(virtualChildCount2)) {
            v1Var.f += v1Var.f2183l;
        }
        int i64 = iArr5[1];
        int iMax11 = (i64 == -1 && iArr5[0] == -1 && iArr5[c5] == -1 && iArr5[3] == -1) ? i61 : Math.max(i61, Math.max(iArr6[3], Math.max(iArr6[0], Math.max(iArr6[1], iArr6[c5]))) + Math.max(iArr5[3], Math.max(iArr5[0], Math.max(i64, iArr5[c5]))));
        if (z24 && (mode3 == Integer.MIN_VALUE || mode3 == 0)) {
            v1Var.f = 0;
            for (int i65 = 0; i65 < virtualChildCount2; i65++) {
                View childAt7 = v1Var.getChildAt(i65);
                if (childAt7 == null) {
                    v1Var.f = v1Var.f;
                } else if (childAt7.getVisibility() != 8) {
                    u1 u1Var7 = (u1) childAt7.getLayoutParams();
                    if (z19) {
                        v1Var.f = ((LinearLayout.LayoutParams) u1Var7).leftMargin + iMax8 + ((LinearLayout.LayoutParams) u1Var7).rightMargin + v1Var.f;
                    } else {
                        int i66 = v1Var.f;
                        v1Var.f = Math.max(i66, i66 + iMax8 + ((LinearLayout.LayoutParams) u1Var7).leftMargin + ((LinearLayout.LayoutParams) u1Var7).rightMargin);
                    }
                }
            }
        }
        int paddingRight = v1Var.getPaddingRight() + v1Var.getPaddingLeft() + v1Var.f;
        v1Var.f = paddingRight;
        int iResolveSizeAndState2 = View.resolveSizeAndState(Math.max(paddingRight, v1Var.getSuggestedMinimumWidth()), i50, 0);
        int i67 = (iResolveSizeAndState2 & 16777215) - v1Var.f;
        if (z22 || (i67 != 0 && f6 > 0.0f)) {
            float f8 = v1Var.f2178g;
            if (f8 > 0.0f) {
                f6 = f8;
            }
            iArr5[3] = -1;
            iArr5[c5] = -1;
            iArr5[1] = -1;
            iArr5[0] = -1;
            iArr6[3] = -1;
            iArr6[c5] = -1;
            iArr6[1] = -1;
            iArr6[0] = -1;
            v1Var.f = 0;
            iMax11 = -1;
            int i68 = 0;
            while (i68 < virtualChildCount2) {
                View childAt8 = v1Var.getChildAt(i68);
                if (childAt8 == null || childAt8.getVisibility() == 8) {
                    iResolveSizeAndState2 = iResolveSizeAndState2;
                } else {
                    u1 u1Var8 = (u1) childAt8.getLayoutParams();
                    float f9 = ((LinearLayout.LayoutParams) u1Var8).weight;
                    if (f9 > 0.0f) {
                        int i69 = (int) ((i67 * f9) / f6);
                        f6 -= f9;
                        i67 -= i69;
                        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i4, v1Var.getPaddingBottom() + v1Var.getPaddingTop() + ((LinearLayout.LayoutParams) u1Var8).topMargin + ((LinearLayout.LayoutParams) u1Var8).bottomMargin, ((LinearLayout.LayoutParams) u1Var8).height);
                        if (((LinearLayout.LayoutParams) u1Var8).width == 0) {
                            i9 = 1073741824;
                            if (mode3 == 1073741824) {
                                if (i69 <= 0) {
                                    i69 = 0;
                                }
                                childAt8.measure(View.MeasureSpec.makeMeasureSpec(i69, 1073741824), childMeasureSpec2);
                            }
                            iCombineMeasuredStates3 = View.combineMeasuredStates(iCombineMeasuredStates3, childAt8.getMeasuredState() & (-16777216));
                        } else {
                            i9 = 1073741824;
                        }
                        int measuredWidth4 = childAt8.getMeasuredWidth() + i69;
                        if (measuredWidth4 < 0) {
                            measuredWidth4 = 0;
                        }
                        childAt8.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth4, i9), childMeasureSpec2);
                        iCombineMeasuredStates3 = View.combineMeasuredStates(iCombineMeasuredStates3, childAt8.getMeasuredState() & (-16777216));
                    }
                    if (z19) {
                        v1Var.f = childAt8.getMeasuredWidth() + ((LinearLayout.LayoutParams) u1Var8).leftMargin + ((LinearLayout.LayoutParams) u1Var8).rightMargin + v1Var.f;
                    } else {
                        int i70 = v1Var.f;
                        v1Var.f = Math.max(i70, childAt8.getMeasuredWidth() + i70 + ((LinearLayout.LayoutParams) u1Var8).leftMargin + ((LinearLayout.LayoutParams) u1Var8).rightMargin);
                    }
                    boolean z25 = mode4 != 1073741824 && ((LinearLayout.LayoutParams) u1Var8).height == -1;
                    int i71 = ((LinearLayout.LayoutParams) u1Var8).topMargin + ((LinearLayout.LayoutParams) u1Var8).bottomMargin;
                    int measuredHeight4 = childAt8.getMeasuredHeight() + i71;
                    iMax11 = Math.max(iMax11, measuredHeight4);
                    if (!z25) {
                        i71 = measuredHeight4;
                    }
                    int iMax12 = Math.max(i62, i71);
                    if (z20) {
                        i8 = -1;
                        boolean z26 = ((LinearLayout.LayoutParams) u1Var8).height == -1;
                        if (!z23 && (baseline = childAt8.getBaseline()) != i8) {
                            int i72 = ((LinearLayout.LayoutParams) u1Var8).gravity;
                            if (i72 < 0) {
                                i72 = v1Var.f2177e;
                            }
                            int i73 = (((i72 & 112) >> 4) & (-2)) >> 1;
                            iArr5[i73] = Math.max(iArr5[i73], baseline);
                            iArr6[i73] = Math.max(iArr6[i73], measuredHeight4 - baseline);
                        }
                        z20 = z26;
                        i62 = iMax12;
                    } else {
                        i8 = -1;
                    }
                    if (!z23) {
                    }
                    z20 = z26;
                    i62 = iMax12;
                }
                i68++;
                iResolveSizeAndState2 = iResolveSizeAndState2;
            }
            i5 = iResolveSizeAndState2;
            i6 = -16777216;
            v1Var.f = v1Var.getPaddingRight() + v1Var.getPaddingLeft() + v1Var.f;
            int i74 = iArr5[1];
            if (i74 == -1 && iArr5[0] == -1 && iArr5[c5] == -1 && iArr5[3] == -1) {
                i7 = 0;
            } else {
                i7 = 0;
                iMax11 = Math.max(iMax11, Math.max(iArr6[3], Math.max(iArr6[0], Math.max(iArr6[1], iArr6[c5]))) + Math.max(iArr5[3], Math.max(iArr5[0], Math.max(i74, iArr5[c5]))));
            }
            iMax = i62;
        } else {
            iMax = Math.max(i62, i63);
            if (z24 && mode3 != 1073741824) {
                for (int i75 = 0; i75 < virtualChildCount2; i75++) {
                    View childAt9 = v1Var.getChildAt(i75);
                    if (childAt9 != null && childAt9.getVisibility() != 8 && ((LinearLayout.LayoutParams) ((u1) childAt9.getLayoutParams())).weight > 0.0f) {
                        childAt9.measure(View.MeasureSpec.makeMeasureSpec(iMax8, 1073741824), View.MeasureSpec.makeMeasureSpec(childAt9.getMeasuredHeight(), 1073741824));
                    }
                }
            }
            i5 = iResolveSizeAndState2;
            i6 = -16777216;
            i7 = 0;
        }
        if (!z20 && mode4 != 1073741824) {
            iMax11 = iMax;
        }
        v1Var.setMeasuredDimension(i5 | (iCombineMeasuredStates3 & i6), View.resolveSizeAndState(Math.max(v1Var.getPaddingBottom() + v1Var.getPaddingTop() + iMax11, v1Var.getSuggestedMinimumHeight()), i4, iCombineMeasuredStates3 << 16));
        if (z21) {
            int iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(v1Var.getMeasuredHeight(), 1073741824);
            int i76 = i7;
            while (i76 < virtualChildCount2) {
                View childAt10 = v1Var.getChildAt(i76);
                if (childAt10.getVisibility() != 8) {
                    u1 u1Var9 = (u1) childAt10.getLayoutParams();
                    if (((LinearLayout.LayoutParams) u1Var9).height == -1) {
                        int i77 = ((LinearLayout.LayoutParams) u1Var9).width;
                        ((LinearLayout.LayoutParams) u1Var9).width = childAt10.getMeasuredWidth();
                        v1Var.measureChildWithMargins(childAt10, i50, 0, iMakeMeasureSpec3, 0);
                        ((LinearLayout.LayoutParams) u1Var9).width = i77;
                    }
                }
                i76++;
                v1Var = this;
                i50 = i3;
            }
        }
    }

    public void setBaselineAligned(boolean z2) {
        this.f2174a = z2;
    }

    public void setBaselineAlignedChildIndex(int i3) {
        if (i3 >= 0 && i3 < getChildCount()) {
            this.b = i3;
            return;
        }
        throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable == this.f2182k) {
            return;
        }
        this.f2182k = drawable;
        if (drawable != null) {
            this.f2183l = drawable.getIntrinsicWidth();
            this.f2184m = drawable.getIntrinsicHeight();
        } else {
            this.f2183l = 0;
            this.f2184m = 0;
        }
        setWillNotDraw(drawable == null);
        requestLayout();
    }

    public void setDividerPadding(int i3) {
        this.f2186o = i3;
    }

    public void setGravity(int i3) {
        if (this.f2177e != i3) {
            if ((8388615 & i3) == 0) {
                i3 |= 8388611;
            }
            if ((i3 & 112) == 0) {
                i3 |= 48;
            }
            this.f2177e = i3;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i3) {
        int i4 = i3 & 8388615;
        int i5 = this.f2177e;
        if ((8388615 & i5) != i4) {
            this.f2177e = i4 | ((-8388616) & i5);
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z2) {
        this.f2179h = z2;
    }

    public void setOrientation(int i3) {
        if (this.f2176d != i3) {
            this.f2176d = i3;
            requestLayout();
        }
    }

    public void setShowDividers(int i3) {
        if (i3 != this.f2185n) {
            requestLayout();
        }
        this.f2185n = i3;
    }

    public void setVerticalGravity(int i3) {
        int i4 = i3 & 112;
        int i5 = this.f2177e;
        if ((i5 & 112) != i4) {
            this.f2177e = i4 | (i5 & (-113));
            requestLayout();
        }
    }

    public void setWeightSum(float f) {
        this.f2178g = Math.max(0.0f, f);
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }
}
