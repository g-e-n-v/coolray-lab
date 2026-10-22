package n1;

import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.Gravity;
import android.view.animation.LinearInterpolator;
import c0.a0;
import c0.b0;
import c0.p0;
import com.google.android.material.textfield.TextInputLayout;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    public float A;
    public float B;
    public int[] C;
    public boolean D;
    public final TextPaint E;
    public final TextPaint F;
    public TimeInterpolator G;
    public TimeInterpolator H;
    public float I;
    public float J;
    public float K;
    public ColorStateList L;
    public StaticLayout M;
    public CharSequence N;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextInputLayout f2484a;
    public boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f2485c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Rect f2486d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Rect f2487e;
    public final RectF f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f2488g = 16;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f2489h = 16;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f2490i = 15.0f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f2491j = 15.0f;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ColorStateList f2492k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ColorStateList f2493l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public float f2494m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f2495n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public float f2496o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public float f2497p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public float f2498q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public float f2499r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Typeface f2500s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Typeface f2501t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Typeface f2502u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public p1.a f2503v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public CharSequence f2504w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public CharSequence f2505x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f2506y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Bitmap f2507z;

    public b(TextInputLayout textInputLayout) {
        this.f2484a = textInputLayout;
        TextPaint textPaint = new TextPaint(129);
        this.E = textPaint;
        this.F = new TextPaint(textPaint);
        this.f2487e = new Rect();
        this.f2486d = new Rect();
        this.f = new RectF();
    }

    public static int a(int i3, int i4, float f) {
        float f3 = 1.0f - f;
        return Color.argb((int) ((Color.alpha(i4) * f) + (Color.alpha(i3) * f3)), (int) ((Color.red(i4) * f) + (Color.red(i3) * f3)), (int) ((Color.green(i4) * f) + (Color.green(i3) * f3)), (int) ((Color.blue(i4) * f) + (Color.blue(i3) * f3)));
    }

    public static float e(float f, float f3, float f4, TimeInterpolator timeInterpolator) {
        if (timeInterpolator != null) {
            f4 = timeInterpolator.getInterpolation(f4);
        }
        LinearInterpolator linearInterpolator = c1.a.f749a;
        return androidx.activity.result.b.d(f3, f, f4, f);
    }

    public final float b() {
        if (this.f2504w == null) {
            return 0.0f;
        }
        float f = this.f2491j;
        TextPaint textPaint = this.F;
        textPaint.setTextSize(f);
        textPaint.setTypeface(this.f2500s);
        CharSequence charSequence = this.f2504w;
        return textPaint.measureText(charSequence, 0, charSequence.length());
    }

    public final void c(float f) {
        boolean z2;
        float f3;
        boolean z3;
        if (this.f2504w == null) {
            return;
        }
        float fWidth = this.f2487e.width();
        float fWidth2 = this.f2486d.width();
        if (Math.abs(f - this.f2491j) < 0.001f) {
            f3 = this.f2491j;
            this.A = 1.0f;
            Typeface typeface = this.f2502u;
            Typeface typeface2 = this.f2500s;
            if (typeface != typeface2) {
                this.f2502u = typeface2;
                z3 = true;
            } else {
                z3 = false;
            }
        } else {
            float f4 = this.f2490i;
            Typeface typeface3 = this.f2502u;
            Typeface typeface4 = this.f2501t;
            if (typeface3 != typeface4) {
                this.f2502u = typeface4;
                z2 = true;
            } else {
                z2 = false;
            }
            if (Math.abs(f - f4) < 0.001f) {
                this.A = 1.0f;
            } else {
                this.A = f / this.f2490i;
            }
            float f5 = this.f2491j / this.f2490i;
            fWidth = fWidth2 * f5 > fWidth ? Math.min(fWidth / f5, fWidth2) : fWidth2;
            f3 = f4;
            z3 = z2;
        }
        if (fWidth > 0.0f) {
            z3 = this.B != f3 || this.D || z3;
            this.B = f3;
            this.D = false;
        }
        if (this.f2505x == null || z3) {
            float f6 = this.B;
            TextPaint textPaint = this.E;
            textPaint.setTextSize(f6);
            textPaint.setTypeface(this.f2502u);
            textPaint.setLinearText(this.A != 1.0f);
            CharSequence charSequence = this.f2504w;
            WeakHashMap weakHashMap = p0.f727a;
            boolean zB = (b0.d(this.f2484a) == 1 ? a0.h.f16d : a0.h.f15c).b(charSequence, charSequence.length());
            this.f2506y = zB;
            CharSequence charSequence2 = this.f2504w;
            int length = charSequence2.length();
            Layout.Alignment alignment = Layout.Alignment.ALIGN_NORMAL;
            TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
            int iMax = Math.max(0, (int) fWidth);
            CharSequence charSequenceEllipsize = TextUtils.ellipsize(charSequence2, textPaint, iMax, truncateAt);
            int iMin = Math.min(charSequenceEllipsize.length(), length);
            if (zB) {
                alignment = Layout.Alignment.ALIGN_OPPOSITE;
            }
            StaticLayout.Builder builderObtain = StaticLayout.Builder.obtain(charSequenceEllipsize, 0, iMin, textPaint, iMax);
            builderObtain.setAlignment(alignment);
            builderObtain.setIncludePad(false);
            builderObtain.setTextDirection(zB ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR);
            if (truncateAt != null) {
                builderObtain.setEllipsize(truncateAt);
            }
            builderObtain.setMaxLines(1);
            StaticLayout staticLayoutBuild = builderObtain.build();
            staticLayoutBuild.getClass();
            this.M = staticLayoutBuild;
            this.f2505x = staticLayoutBuild.getText();
        }
    }

    public final int d(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return 0;
        }
        int[] iArr = this.C;
        return iArr != null ? colorStateList.getColorForState(iArr, 0) : colorStateList.getDefaultColor();
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001e  */
    public final void f() {
        boolean z2;
        Rect rect = this.f2487e;
        if (rect.width() <= 0 || rect.height() <= 0) {
            z2 = false;
        } else {
            Rect rect2 = this.f2486d;
            if (rect2.width() <= 0 || rect2.height() <= 0) {
                z2 = false;
            } else {
                z2 = true;
            }
        }
        this.b = z2;
    }

    public final void g() {
        StaticLayout staticLayout;
        TextInputLayout textInputLayout = this.f2484a;
        if (textInputLayout.getHeight() <= 0 || textInputLayout.getWidth() <= 0) {
            return;
        }
        float f = this.B;
        c(this.f2491j);
        CharSequence charSequence = this.f2505x;
        TextPaint textPaint = this.E;
        if (charSequence != null && (staticLayout = this.M) != null) {
            this.N = TextUtils.ellipsize(charSequence, textPaint, staticLayout.getWidth(), TextUtils.TruncateAt.END);
        }
        CharSequence charSequence2 = this.N;
        float fMeasureText = charSequence2 != null ? textPaint.measureText(charSequence2, 0, charSequence2.length()) : 0.0f;
        int absoluteGravity = Gravity.getAbsoluteGravity(this.f2489h, this.f2506y ? 1 : 0);
        int i3 = absoluteGravity & 112;
        Rect rect = this.f2487e;
        if (i3 == 48) {
            this.f2495n = rect.top;
        } else if (i3 != 80) {
            this.f2495n = rect.centerY() - ((textPaint.descent() - textPaint.ascent()) / 2.0f);
        } else {
            this.f2495n = textPaint.ascent() + rect.bottom;
        }
        int i4 = absoluteGravity & 8388615;
        if (i4 == 1) {
            this.f2497p = rect.centerX() - (fMeasureText / 2.0f);
        } else if (i4 != 5) {
            this.f2497p = rect.left;
        } else {
            this.f2497p = rect.right - fMeasureText;
        }
        c(this.f2490i);
        StaticLayout staticLayout2 = this.M;
        float height = staticLayout2 != null ? staticLayout2.getHeight() : 0.0f;
        CharSequence charSequence3 = this.f2505x;
        float fMeasureText2 = charSequence3 != null ? textPaint.measureText(charSequence3, 0, charSequence3.length()) : 0.0f;
        StaticLayout staticLayout3 = this.M;
        if (staticLayout3 != null) {
            staticLayout3.getLineLeft(0);
        }
        int absoluteGravity2 = Gravity.getAbsoluteGravity(this.f2488g, this.f2506y ? 1 : 0);
        int i5 = absoluteGravity2 & 112;
        Rect rect2 = this.f2486d;
        if (i5 == 48) {
            this.f2494m = rect2.top;
        } else if (i5 != 80) {
            this.f2494m = rect2.centerY() - (height / 2.0f);
        } else {
            this.f2494m = textPaint.descent() + (rect2.bottom - height);
        }
        int i6 = absoluteGravity2 & 8388615;
        if (i6 == 1) {
            this.f2496o = rect2.centerX() - (fMeasureText2 / 2.0f);
        } else if (i6 != 5) {
            this.f2496o = rect2.left;
        } else {
            this.f2496o = rect2.right - fMeasureText2;
        }
        Bitmap bitmap = this.f2507z;
        if (bitmap != null) {
            bitmap.recycle();
            this.f2507z = null;
        }
        j(f);
        float f3 = this.f2485c;
        float fE = e(rect2.left, rect.left, f3, this.G);
        RectF rectF = this.f;
        rectF.left = fE;
        rectF.top = e(this.f2494m, this.f2495n, f3, this.G);
        rectF.right = e(rect2.right, rect.right, f3, this.G);
        rectF.bottom = e(rect2.bottom, rect.bottom, f3, this.G);
        this.f2498q = e(this.f2496o, this.f2497p, f3, this.G);
        this.f2499r = e(this.f2494m, this.f2495n, f3, this.G);
        j(e(this.f2490i, this.f2491j, f3, this.H));
        m0.a aVar = c1.a.b;
        e(0.0f, 1.0f, 1.0f - f3, aVar);
        WeakHashMap weakHashMap = p0.f727a;
        a0.k(textInputLayout);
        e(1.0f, 0.0f, f3, aVar);
        a0.k(textInputLayout);
        ColorStateList colorStateList = this.f2493l;
        ColorStateList colorStateList2 = this.f2492k;
        if (colorStateList != colorStateList2) {
            textPaint.setColor(a(d(colorStateList2), d(this.f2493l), f3));
        } else {
            textPaint.setColor(d(colorStateList));
        }
        textPaint.setShadowLayer(androidx.activity.result.b.d(this.I, 0.0f, f3, 0.0f), androidx.activity.result.b.d(this.J, 0.0f, f3, 0.0f), androidx.activity.result.b.d(this.K, 0.0f, f3, 0.0f), a(0, d(this.L), f3));
        a0.k(textInputLayout);
    }

    public final void h(ColorStateList colorStateList) {
        if (this.f2493l != colorStateList) {
            this.f2493l = colorStateList;
            g();
        }
    }

    public final void i(float f) {
        if (f < 0.0f) {
            f = 0.0f;
        } else if (f > 1.0f) {
            f = 1.0f;
        }
        if (f != this.f2485c) {
            this.f2485c = f;
            Rect rect = this.f2486d;
            float f3 = rect.left;
            Rect rect2 = this.f2487e;
            float fE = e(f3, rect2.left, f, this.G);
            RectF rectF = this.f;
            rectF.left = fE;
            rectF.top = e(this.f2494m, this.f2495n, f, this.G);
            rectF.right = e(rect.right, rect2.right, f, this.G);
            rectF.bottom = e(rect.bottom, rect2.bottom, f, this.G);
            this.f2498q = e(this.f2496o, this.f2497p, f, this.G);
            this.f2499r = e(this.f2494m, this.f2495n, f, this.G);
            j(e(this.f2490i, this.f2491j, f, this.H));
            m0.a aVar = c1.a.b;
            e(0.0f, 1.0f, 1.0f - f, aVar);
            WeakHashMap weakHashMap = p0.f727a;
            TextInputLayout textInputLayout = this.f2484a;
            a0.k(textInputLayout);
            e(1.0f, 0.0f, f, aVar);
            a0.k(textInputLayout);
            ColorStateList colorStateList = this.f2493l;
            ColorStateList colorStateList2 = this.f2492k;
            TextPaint textPaint = this.E;
            if (colorStateList != colorStateList2) {
                textPaint.setColor(a(d(colorStateList2), d(this.f2493l), f));
            } else {
                textPaint.setColor(d(colorStateList));
            }
            textPaint.setShadowLayer(androidx.activity.result.b.d(this.I, 0.0f, f, 0.0f), androidx.activity.result.b.d(this.J, 0.0f, f, 0.0f), androidx.activity.result.b.d(this.K, 0.0f, f, 0.0f), a(0, d(this.L), f));
            a0.k(textInputLayout);
        }
    }

    public final void j(float f) {
        c(f);
        WeakHashMap weakHashMap = p0.f727a;
        a0.k(this.f2484a);
    }
}
