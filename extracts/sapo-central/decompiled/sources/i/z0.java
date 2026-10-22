package i;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public final class z0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextView f2221a;
    public b3 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public b3 f2222c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public b3 f2223d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public b3 f2224e;
    public b3 f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public b3 f2225g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public b3 f2226h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final f1 f2227i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f2228j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f2229k = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Typeface f2230l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f2231m;

    public z0(TextView textView) {
        this.f2221a = textView;
        this.f2227i = new f1(textView);
    }

    public static b3 c(Context context, t tVar, int i3) {
        ColorStateList colorStateListF;
        synchronized (tVar) {
            colorStateListF = tVar.f2150a.f(context, i3);
        }
        if (colorStateListF == null) {
            return null;
        }
        b3 b3Var = new b3();
        b3Var.f1984d = true;
        b3Var.f1982a = colorStateListF;
        return b3Var;
    }

    public static void h(EditorInfo editorInfo, InputConnection inputConnection, TextView textView) {
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 30 || inputConnection == null) {
            return;
        }
        CharSequence text = textView.getText();
        if (i3 >= 30) {
            e0.a.a(editorInfo, text);
            return;
        }
        text.getClass();
        if (i3 >= 30) {
            e0.a.a(editorInfo, text);
            return;
        }
        int i4 = editorInfo.initialSelStart;
        int i5 = editorInfo.initialSelEnd;
        int i6 = i4 > i5 ? i5 : i4;
        if (i4 <= i5) {
            i4 = i5;
        }
        int length = text.length();
        if (i6 < 0 || i4 > length) {
            a1.b.c0(editorInfo, null, 0, 0);
            return;
        }
        int i7 = editorInfo.inputType & 4095;
        if (i7 == 129 || i7 == 225 || i7 == 18) {
            a1.b.c0(editorInfo, null, 0, 0);
            return;
        }
        if (length <= 2048) {
            a1.b.c0(editorInfo, text, i6, i4);
            return;
        }
        int i8 = i4 - i6;
        int i9 = i8 > 1024 ? 0 : i8;
        int i10 = 2048 - i9;
        int iMin = Math.min(text.length() - i4, i10 - Math.min(i6, (int) (((double) i10) * 0.8d)));
        int iMin2 = Math.min(i6, i10 - iMin);
        int i11 = i6 - iMin2;
        if (Character.isLowSurrogate(text.charAt(i11))) {
            i11++;
            iMin2--;
        }
        if (Character.isHighSurrogate(text.charAt((i4 + iMin) - 1))) {
            iMin--;
        }
        int i12 = iMin2 + i9;
        a1.b.c0(editorInfo, i9 != i8 ? TextUtils.concat(text.subSequence(i11, i11 + iMin2), text.subSequence(i4, iMin + i4)) : text.subSequence(i11, i12 + iMin + i11), iMin2, i12);
    }

    public final void a(Drawable drawable, b3 b3Var) {
        if (drawable == null || b3Var == null) {
            return;
        }
        t.e(drawable, b3Var, this.f2221a.getDrawableState());
    }

    public final void b() {
        b3 b3Var = this.b;
        TextView textView = this.f2221a;
        if (b3Var != null || this.f2222c != null || this.f2223d != null || this.f2224e != null) {
            Drawable[] compoundDrawables = textView.getCompoundDrawables();
            a(compoundDrawables[0], this.b);
            a(compoundDrawables[1], this.f2222c);
            a(compoundDrawables[2], this.f2223d);
            a(compoundDrawables[3], this.f2224e);
        }
        if (this.f == null && this.f2225g == null) {
            return;
        }
        Drawable[] drawableArrA = v0.a(textView);
        a(drawableArrA[0], this.f);
        a(drawableArrA[2], this.f2225g);
    }

    public final ColorStateList d() {
        b3 b3Var = this.f2226h;
        if (b3Var != null) {
            return b3Var.f1982a;
        }
        return null;
    }

    public final PorterDuff.Mode e() {
        b3 b3Var = this.f2226h;
        if (b3Var != null) {
            return b3Var.b;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void f(AttributeSet attributeSet, int i3) {
        boolean z2;
        boolean z3;
        String string;
        String string2;
        int i4;
        ColorStateList colorStateList;
        int resourceId;
        int i5;
        int resourceId2;
        TextView textView = this.f2221a;
        Context context = textView.getContext();
        t tVarA = t.a();
        int[] iArr = d.a.f1501h;
        androidx.fragment.app.f fVarV = androidx.fragment.app.f.v(context, attributeSet, iArr, i3);
        c0.p0.h(textView, textView.getContext(), iArr, attributeSet, (TypedArray) fVarV.f413c, i3);
        TypedArray typedArray = (TypedArray) fVarV.f413c;
        int resourceId3 = typedArray.getResourceId(0, -1);
        if (typedArray.hasValue(3)) {
            this.b = c(context, tVarA, typedArray.getResourceId(3, 0));
        }
        if (typedArray.hasValue(1)) {
            this.f2222c = c(context, tVarA, typedArray.getResourceId(1, 0));
        }
        if (typedArray.hasValue(4)) {
            this.f2223d = c(context, tVarA, typedArray.getResourceId(4, 0));
        }
        if (typedArray.hasValue(2)) {
            this.f2224e = c(context, tVarA, typedArray.getResourceId(2, 0));
        }
        if (typedArray.hasValue(5)) {
            this.f = c(context, tVarA, typedArray.getResourceId(5, 0));
        }
        if (typedArray.hasValue(6)) {
            this.f2225g = c(context, tVarA, typedArray.getResourceId(6, 0));
        }
        fVarV.x();
        boolean z4 = textView.getTransformationMethod() instanceof PasswordTransformationMethod;
        int[] iArr2 = d.a.f1516w;
        if (resourceId3 != -1) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(resourceId3, iArr2);
            androidx.fragment.app.f fVar = new androidx.fragment.app.f(context, typedArrayObtainStyledAttributes);
            if (z4 || !typedArrayObtainStyledAttributes.hasValue(14)) {
                z2 = false;
                z3 = false;
            } else {
                z3 = typedArrayObtainStyledAttributes.getBoolean(14, false);
                z2 = true;
            }
            k(context, fVar);
            string2 = typedArrayObtainStyledAttributes.hasValue(15) ? typedArrayObtainStyledAttributes.getString(15) : null;
            string = typedArrayObtainStyledAttributes.hasValue(13) ? typedArrayObtainStyledAttributes.getString(13) : null;
            fVar.x();
        } else {
            z2 = false;
            z3 = false;
            string = null;
            string2 = null;
        }
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr2, i3, 0);
        androidx.fragment.app.f fVar2 = new androidx.fragment.app.f(context, typedArrayObtainStyledAttributes2);
        if (!z4 && typedArrayObtainStyledAttributes2.hasValue(14)) {
            z3 = typedArrayObtainStyledAttributes2.getBoolean(14, false);
            z2 = true;
        }
        boolean z5 = z3;
        if (typedArrayObtainStyledAttributes2.hasValue(15)) {
            string2 = typedArrayObtainStyledAttributes2.getString(15);
        }
        if (typedArrayObtainStyledAttributes2.hasValue(13)) {
            string = typedArrayObtainStyledAttributes2.getString(13);
        }
        if (typedArrayObtainStyledAttributes2.hasValue(0) && typedArrayObtainStyledAttributes2.getDimensionPixelSize(0, -1) == 0) {
            textView.setTextSize(0, 0.0f);
        }
        k(context, fVar2);
        fVar2.x();
        if (!z4 && z2) {
            textView.setAllCaps(z5);
        }
        Typeface typeface = this.f2230l;
        if (typeface != null) {
            if (this.f2229k == -1) {
                textView.setTypeface(typeface, this.f2228j);
            } else {
                textView.setTypeface(typeface);
            }
        }
        if (string != null) {
            x0.d(textView, string);
        }
        if (string2 != null) {
            w0.b(textView, w0.a(string2));
        }
        f1 f1Var = this.f2227i;
        Context context2 = f1Var.f2026h;
        int[] iArr3 = d.a.f1502i;
        TypedArray typedArrayObtainStyledAttributes3 = context2.obtainStyledAttributes(attributeSet, iArr3, i3, 0);
        TextView textView2 = f1Var.f2025g;
        c0.p0.h(textView2, textView2.getContext(), iArr3, attributeSet, typedArrayObtainStyledAttributes3, i3);
        if (typedArrayObtainStyledAttributes3.hasValue(5)) {
            f1Var.f2021a = typedArrayObtainStyledAttributes3.getInt(5, 0);
        }
        float dimension = typedArrayObtainStyledAttributes3.hasValue(4) ? typedArrayObtainStyledAttributes3.getDimension(4, -1.0f) : -1.0f;
        float dimension2 = typedArrayObtainStyledAttributes3.hasValue(2) ? typedArrayObtainStyledAttributes3.getDimension(2, -1.0f) : -1.0f;
        float dimension3 = typedArrayObtainStyledAttributes3.hasValue(1) ? typedArrayObtainStyledAttributes3.getDimension(1, -1.0f) : -1.0f;
        if (!typedArrayObtainStyledAttributes3.hasValue(3) || (resourceId2 = typedArrayObtainStyledAttributes3.getResourceId(3, 0)) <= 0) {
            i4 = 0;
        } else {
            TypedArray typedArrayObtainTypedArray = typedArrayObtainStyledAttributes3.getResources().obtainTypedArray(resourceId2);
            int length = typedArrayObtainTypedArray.length();
            i4 = 0;
            int[] iArr4 = new int[length];
            if (length > 0) {
                for (int i6 = 0; i6 < length; i6++) {
                    iArr4[i6] = typedArrayObtainTypedArray.getDimensionPixelSize(i6, -1);
                }
                int[] iArrA = f1.a(iArr4);
                f1Var.f2024e = iArrA;
                int length2 = iArrA.length;
                boolean z6 = length2 > 0;
                f1Var.f = z6;
                if (z6) {
                    f1Var.f2021a = 1;
                    f1Var.f2022c = iArrA[0];
                    f1Var.f2023d = iArrA[length2 - 1];
                    f1Var.b = -1.0f;
                }
            }
            typedArrayObtainTypedArray.recycle();
        }
        typedArrayObtainStyledAttributes3.recycle();
        if (!f1Var.b()) {
            f1Var.f2021a = i4;
        } else if (f1Var.f2021a == 1) {
            if (!f1Var.f) {
                DisplayMetrics displayMetrics = context2.getResources().getDisplayMetrics();
                if (dimension2 == -1.0f) {
                    i5 = 2;
                    dimension2 = TypedValue.applyDimension(2, 12.0f, displayMetrics);
                } else {
                    i5 = 2;
                }
                if (dimension3 == -1.0f) {
                    dimension3 = TypedValue.applyDimension(i5, 112.0f, displayMetrics);
                }
                float f = dimension3;
                if (dimension == -1.0f) {
                    dimension = 1.0f;
                }
                if (dimension2 <= 0.0f) {
                    throw new IllegalArgumentException("Minimum auto-size text size (" + dimension2 + "px) is less or equal to (0px)");
                }
                if (f <= dimension2) {
                    throw new IllegalArgumentException("Maximum auto-size text size (" + f + "px) is less or equal to minimum auto-size text size (" + dimension2 + "px)");
                }
                if (dimension <= 0.0f) {
                    throw new IllegalArgumentException("The auto-size step granularity (" + dimension + "px) is less or equal to (0px)");
                }
                f1Var.f2021a = 1;
                f1Var.f2022c = dimension2;
                f1Var.f2023d = f;
                f1Var.b = dimension;
                f1Var.f = i4;
            }
            if (f1Var.b() && f1Var.f2021a == 1 && (!f1Var.f || f1Var.f2024e.length == 0)) {
                int iFloor = ((int) Math.floor((f1Var.f2023d - f1Var.f2022c) / f1Var.b)) + 1;
                int[] iArr5 = new int[iFloor];
                for (int i7 = 0; i7 < iFloor; i7++) {
                    iArr5[i7] = Math.round((i7 * f1Var.b) + f1Var.f2022c);
                }
                f1Var.f2024e = f1.a(iArr5);
            }
        }
        Method method = p3.f2123a;
        if (f1Var.f2021a != 0) {
            int[] iArr6 = f1Var.f2024e;
            if (iArr6.length > 0) {
                if (x0.a(textView) != -1.0f) {
                    x0.b(textView, Math.round(f1Var.f2022c), Math.round(f1Var.f2023d), Math.round(f1Var.b), 0);
                } else {
                    x0.c(textView, iArr6, 0);
                }
            }
        }
        TypedArray typedArrayObtainStyledAttributes4 = context.obtainStyledAttributes(attributeSet, iArr3);
        int resourceId4 = typedArrayObtainStyledAttributes4.getResourceId(8, -1);
        Drawable drawableB = resourceId4 != -1 ? tVarA.b(context, resourceId4) : null;
        int resourceId5 = typedArrayObtainStyledAttributes4.getResourceId(13, -1);
        Drawable drawableB2 = resourceId5 != -1 ? tVarA.b(context, resourceId5) : null;
        int resourceId6 = typedArrayObtainStyledAttributes4.getResourceId(9, -1);
        Drawable drawableB3 = resourceId6 != -1 ? tVarA.b(context, resourceId6) : null;
        int resourceId7 = typedArrayObtainStyledAttributes4.getResourceId(6, -1);
        Drawable drawableB4 = resourceId7 != -1 ? tVarA.b(context, resourceId7) : null;
        int resourceId8 = typedArrayObtainStyledAttributes4.getResourceId(10, -1);
        Drawable drawableB5 = resourceId8 != -1 ? tVarA.b(context, resourceId8) : null;
        int resourceId9 = typedArrayObtainStyledAttributes4.getResourceId(7, -1);
        Drawable drawableB6 = resourceId9 != -1 ? tVarA.b(context, resourceId9) : null;
        if (drawableB5 != null || drawableB6 != null) {
            Drawable[] drawableArrA = v0.a(textView);
            if (drawableB5 == null) {
                drawableB5 = drawableArrA[0];
            }
            if (drawableB2 == null) {
                drawableB2 = drawableArrA[1];
            }
            if (drawableB6 == null) {
                drawableB6 = drawableArrA[2];
            }
            if (drawableB4 == null) {
                drawableB4 = drawableArrA[3];
            }
            v0.b(textView, drawableB5, drawableB2, drawableB6, drawableB4);
        } else if (drawableB != null || drawableB2 != null || drawableB3 != null || drawableB4 != null) {
            Drawable[] drawableArrA2 = v0.a(textView);
            Drawable drawable = drawableArrA2[0];
            if (drawable == null && drawableArrA2[2] == null) {
                Drawable[] compoundDrawables = textView.getCompoundDrawables();
                if (drawableB == null) {
                    drawableB = compoundDrawables[0];
                }
                if (drawableB2 == null) {
                    drawableB2 = compoundDrawables[1];
                }
                if (drawableB3 == null) {
                    drawableB3 = compoundDrawables[2];
                }
                if (drawableB4 == null) {
                    drawableB4 = compoundDrawables[3];
                }
                textView.setCompoundDrawablesWithIntrinsicBounds(drawableB, drawableB2, drawableB3, drawableB4);
            } else {
                if (drawableB2 == null) {
                    drawableB2 = drawableArrA2[1];
                }
                Drawable drawable2 = drawableArrA2[2];
                if (drawableB4 == null) {
                    drawableB4 = drawableArrA2[3];
                }
                v0.b(textView, drawable, drawableB2, drawable2, drawableB4);
            }
        }
        if (typedArrayObtainStyledAttributes4.hasValue(11)) {
            if (!typedArrayObtainStyledAttributes4.hasValue(11) || (resourceId = typedArrayObtainStyledAttributes4.getResourceId(11, 0)) == 0 || (colorStateList = a1.b.t(context, resourceId)) == null) {
                colorStateList = typedArrayObtainStyledAttributes4.getColorStateList(11);
            }
            f0.p.f(textView, colorStateList);
        }
        if (typedArrayObtainStyledAttributes4.hasValue(12)) {
            f0.p.g(textView, k1.b(typedArrayObtainStyledAttributes4.getInt(12, -1), null));
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes4.getDimensionPixelSize(15, -1);
        int dimensionPixelSize2 = typedArrayObtainStyledAttributes4.getDimensionPixelSize(18, -1);
        int dimensionPixelSize3 = typedArrayObtainStyledAttributes4.getDimensionPixelSize(19, -1);
        typedArrayObtainStyledAttributes4.recycle();
        if (dimensionPixelSize != -1) {
            a1.b.k(dimensionPixelSize);
            f0.q.c(textView, dimensionPixelSize);
        }
        if (dimensionPixelSize2 != -1) {
            a1.b.k(dimensionPixelSize2);
            Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
            int i8 = f0.n.a(textView) ? fontMetricsInt.bottom : fontMetricsInt.descent;
            if (dimensionPixelSize2 > Math.abs(i8)) {
                textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), dimensionPixelSize2 - i8);
            }
        }
        if (dimensionPixelSize3 != -1) {
            a1.b.k(dimensionPixelSize3);
            int fontMetricsInt2 = textView.getPaint().getFontMetricsInt(null);
            if (dimensionPixelSize3 != fontMetricsInt2) {
                textView.setLineSpacing(dimensionPixelSize3 - fontMetricsInt2, 1.0f);
            }
        }
    }

    public final void g(Context context, int i3) {
        String string;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i3, d.a.f1516w);
        androidx.fragment.app.f fVar = new androidx.fragment.app.f(context, typedArrayObtainStyledAttributes);
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(14);
        TextView textView = this.f2221a;
        if (zHasValue) {
            textView.setAllCaps(typedArrayObtainStyledAttributes.getBoolean(14, false));
        }
        if (typedArrayObtainStyledAttributes.hasValue(0) && typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -1) == 0) {
            textView.setTextSize(0, 0.0f);
        }
        k(context, fVar);
        if (typedArrayObtainStyledAttributes.hasValue(13) && (string = typedArrayObtainStyledAttributes.getString(13)) != null) {
            x0.d(textView, string);
        }
        fVar.x();
        Typeface typeface = this.f2230l;
        if (typeface != null) {
            textView.setTypeface(typeface, this.f2228j);
        }
    }

    public final void i(ColorStateList colorStateList) {
        if (this.f2226h == null) {
            this.f2226h = new b3();
        }
        b3 b3Var = this.f2226h;
        b3Var.f1982a = colorStateList;
        b3Var.f1984d = colorStateList != null;
        this.b = b3Var;
        this.f2222c = b3Var;
        this.f2223d = b3Var;
        this.f2224e = b3Var;
        this.f = b3Var;
        this.f2225g = b3Var;
    }

    public final void j(PorterDuff.Mode mode) {
        if (this.f2226h == null) {
            this.f2226h = new b3();
        }
        b3 b3Var = this.f2226h;
        b3Var.b = mode;
        b3Var.f1983c = mode != null;
        this.b = b3Var;
        this.f2222c = b3Var;
        this.f2223d = b3Var;
        this.f2224e = b3Var;
        this.f = b3Var;
        this.f2225g = b3Var;
    }

    public final void k(Context context, androidx.fragment.app.f fVar) {
        String string;
        int i3 = this.f2228j;
        TypedArray typedArray = (TypedArray) fVar.f413c;
        this.f2228j = typedArray.getInt(2, i3);
        int i4 = typedArray.getInt(11, -1);
        this.f2229k = i4;
        if (i4 != -1) {
            this.f2228j &= 2;
        }
        if (!typedArray.hasValue(10) && !typedArray.hasValue(12)) {
            if (typedArray.hasValue(1)) {
                this.f2231m = false;
                int i5 = typedArray.getInt(1, 1);
                if (i5 == 1) {
                    this.f2230l = Typeface.SANS_SERIF;
                    return;
                } else if (i5 == 2) {
                    this.f2230l = Typeface.SERIF;
                    return;
                } else {
                    if (i5 != 3) {
                        return;
                    }
                    this.f2230l = Typeface.MONOSPACE;
                    return;
                }
            }
            return;
        }
        this.f2230l = null;
        int i6 = typedArray.hasValue(12) ? 12 : 10;
        int i7 = this.f2229k;
        int i8 = this.f2228j;
        if (!context.isRestricted()) {
            try {
                Typeface typefaceM = fVar.m(i6, this.f2228j, new u0(this, i7, i8, new WeakReference(this.f2221a)));
                if (typefaceM != null) {
                    if (this.f2229k != -1) {
                        this.f2230l = y0.a(Typeface.create(typefaceM, 0), this.f2229k, (this.f2228j & 2) != 0);
                    } else {
                        this.f2230l = typefaceM;
                    }
                }
                this.f2231m = this.f2230l == null;
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            }
        }
        if (this.f2230l != null || (string = typedArray.getString(i6)) == null) {
            return;
        }
        if (this.f2229k != -1) {
            this.f2230l = y0.a(Typeface.create(string, 0), this.f2229k, (this.f2228j & 2) != 0);
        } else {
            this.f2230l = Typeface.create(string, this.f2228j);
        }
    }
}
