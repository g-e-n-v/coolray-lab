package j1;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.emoji2.text.m;
import com.google.android.material.chip.Chip;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import s1.k;
import s1.l;

/* JADX INFO: loaded from: classes.dex */
public final class e extends s1.g implements Drawable.Callback, n1.g {
    public static final int[] F0 = {R.attr.state_enabled};
    public static final ShapeDrawable G0 = new ShapeDrawable(new OvalShape());
    public float A;
    public WeakReference A0;
    public ColorStateList B;
    public TextUtils.TruncateAt B0;
    public float C;
    public boolean C0;
    public ColorStateList D;
    public int D0;
    public CharSequence E;
    public boolean E0;
    public boolean F;
    public Drawable G;
    public ColorStateList H;
    public float I;
    public boolean J;
    public boolean K;
    public Drawable L;
    public RippleDrawable M;
    public ColorStateList N;
    public float O;
    public SpannableStringBuilder P;
    public boolean Q;
    public boolean R;
    public Drawable S;
    public ColorStateList T;
    public c1.b U;
    public c1.b V;
    public float W;
    public float X;
    public float Y;
    public float Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public float f2300a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public float f2301b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public float f2302c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public float f2303d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final Context f2304e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final Paint f2305f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public final Paint.FontMetrics f2306g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public final RectF f2307h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public final PointF f2308i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public final Path f2309j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public final n1.h f2310k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public int f2311l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public int f2312m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public int f2313n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public int f2314o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public int f2315p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public int f2316q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public boolean f2317r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public int f2318s0;
    public int t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public ColorFilter f2319u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public PorterDuffColorFilter f2320v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public ColorStateList f2321w0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public ColorStateList f2322x;
    public PorterDuff.Mode x0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public ColorStateList f2323y;
    public int[] y0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public float f2324z;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public ColorStateList f2325z0;

    public e(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, com.ex.auto.R.attr.chipStyle, com.ex.auto.R.style.Widget_MaterialComponents_Chip_Action);
        this.A = -1.0f;
        this.f2305f0 = new Paint(1);
        this.f2306g0 = new Paint.FontMetrics();
        this.f2307h0 = new RectF();
        this.f2308i0 = new PointF();
        this.f2309j0 = new Path();
        this.t0 = 255;
        this.x0 = PorterDuff.Mode.SRC_IN;
        this.A0 = new WeakReference(null);
        g(context);
        this.f2304e0 = context;
        n1.h hVar = new n1.h(this);
        this.f2310k0 = hVar;
        this.E = "";
        hVar.f2518a.density = context.getResources().getDisplayMetrics().density;
        int[] iArr = F0;
        setState(iArr);
        if (!Arrays.equals(this.y0, iArr)) {
            this.y0 = iArr;
            if (S()) {
                u(getState(), iArr);
            }
        }
        this.C0 = true;
        G0.setTint(-1);
    }

    public static void T(Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    public static boolean r(ColorStateList colorStateList) {
        return colorStateList != null && colorStateList.isStateful();
    }

    public static boolean s(Drawable drawable) {
        return drawable != null && drawable.isStateful();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2, types: [android.graphics.drawable.Drawable] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    public final void A(Drawable drawable) {
        ?? r3;
        Object obj = this.G;
        if (obj == null) {
            r3 = 0;
        } else if (obj instanceof w.e) {
            r3 = obj;
            r3 = 0;
        }
        if (r3 != drawable) {
            float fO = o();
            this.G = drawable != null ? drawable.mutate() : null;
            float fO2 = o();
            T(r3);
            if (R()) {
                m(this.G);
            }
            invalidateSelf();
            if (fO != fO2) {
                t();
            }
        }
    }

    public final void B(float f) {
        if (this.I != f) {
            float fO = o();
            this.I = f;
            float fO2 = o();
            invalidateSelf();
            if (fO != fO2) {
                t();
            }
        }
    }

    public final void C(ColorStateList colorStateList) {
        this.J = true;
        if (this.H != colorStateList) {
            this.H = colorStateList;
            if (R()) {
                w.b.h(this.G, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public final void D(boolean z2) {
        if (this.F != z2) {
            boolean zR = R();
            this.F = z2;
            boolean zR2 = R();
            if (zR != zR2) {
                if (zR2) {
                    m(this.G);
                } else {
                    T(this.G);
                }
                invalidateSelf();
                t();
            }
        }
    }

    public final void E(ColorStateList colorStateList) {
        if (this.B != colorStateList) {
            this.B = colorStateList;
            if (this.E0) {
                s1.f fVar = this.f3142a;
                if (fVar.f3129d != colorStateList) {
                    fVar.f3129d = colorStateList;
                    onStateChange(getState());
                }
            }
            onStateChange(getState());
        }
    }

    public final void F(float f) {
        if (this.C != f) {
            this.C = f;
            this.f2305f0.setStrokeWidth(f);
            if (this.E0) {
                this.f3142a.f3134j = f;
                invalidateSelf();
            }
            invalidateSelf();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2, types: [android.graphics.drawable.Drawable] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    public final void G(Drawable drawable) {
        ?? r3;
        Object obj = this.L;
        if (obj == null) {
            r3 = 0;
        } else if (obj instanceof w.e) {
            r3 = obj;
            r3 = 0;
        }
        if (r3 != drawable) {
            float fP = p();
            this.L = drawable != null ? drawable.mutate() : null;
            ColorStateList colorStateListValueOf = this.D;
            if (colorStateListValueOf == null) {
                colorStateListValueOf = ColorStateList.valueOf(0);
            }
            this.M = new RippleDrawable(colorStateListValueOf, this.L, G0);
            float fP2 = p();
            T(r3);
            if (S()) {
                m(this.L);
            }
            invalidateSelf();
            if (fP != fP2) {
                t();
            }
        }
    }

    public final void H(float f) {
        if (this.f2302c0 != f) {
            this.f2302c0 = f;
            invalidateSelf();
            if (S()) {
                t();
            }
        }
    }

    public final void I(float f) {
        if (this.O != f) {
            this.O = f;
            invalidateSelf();
            if (S()) {
                t();
            }
        }
    }

    public final void J(float f) {
        if (this.f2301b0 != f) {
            this.f2301b0 = f;
            invalidateSelf();
            if (S()) {
                t();
            }
        }
    }

    public final void K(ColorStateList colorStateList) {
        if (this.N != colorStateList) {
            this.N = colorStateList;
            if (S()) {
                w.b.h(this.L, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public final void L(boolean z2) {
        if (this.K != z2) {
            boolean zS = S();
            this.K = z2;
            boolean zS2 = S();
            if (zS != zS2) {
                if (zS2) {
                    m(this.L);
                } else {
                    T(this.L);
                }
                invalidateSelf();
                t();
            }
        }
    }

    public final void M(float f) {
        if (this.Y != f) {
            float fO = o();
            this.Y = f;
            float fO2 = o();
            invalidateSelf();
            if (fO != fO2) {
                t();
            }
        }
    }

    public final void N(float f) {
        if (this.X != f) {
            float fO = o();
            this.X = f;
            float fO2 = o();
            invalidateSelf();
            if (fO != fO2) {
                t();
            }
        }
    }

    public final void O(ColorStateList colorStateList) {
        if (this.D != colorStateList) {
            this.D = colorStateList;
            this.f2325z0 = null;
            onStateChange(getState());
        }
    }

    public final void P(p1.d dVar) {
        n1.h hVar = this.f2310k0;
        a aVar = hVar.b;
        TextPaint textPaint = hVar.f2518a;
        if (hVar.f != dVar) {
            hVar.f = dVar;
            if (dVar != null) {
                dVar.a();
                dVar.d(textPaint, dVar.f2701l);
                p1.c cVar = new p1.c(dVar, textPaint, aVar);
                Context context = this.f2304e0;
                dVar.b(context, cVar);
                n1.g gVar = (n1.g) hVar.f2521e.get();
                if (gVar != null) {
                    textPaint.drawableState = gVar.getState();
                }
                dVar.c(context, textPaint, aVar);
                hVar.f2520d = true;
            }
            n1.g gVar2 = (n1.g) hVar.f2521e.get();
            if (gVar2 != null) {
                e eVar = (e) gVar2;
                eVar.t();
                eVar.invalidateSelf();
                eVar.onStateChange(gVar2.getState());
            }
        }
    }

    public final boolean Q() {
        return this.R && this.S != null && this.f2317r0;
    }

    public final boolean R() {
        return this.F && this.G != null;
    }

    public final boolean S() {
        return this.K && this.L != null;
    }

    @Override // s1.g, android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        int i3;
        Canvas canvas2;
        int iSaveLayerAlpha;
        float fMeasureText;
        int i4;
        Rect bounds = getBounds();
        if (bounds.isEmpty() || (i3 = this.t0) == 0) {
            return;
        }
        if (i3 < 255) {
            canvas2 = canvas;
            iSaveLayerAlpha = canvas2.saveLayerAlpha(bounds.left, bounds.top, bounds.right, bounds.bottom, i3);
        } else {
            canvas2 = canvas;
            iSaveLayerAlpha = 0;
        }
        boolean z2 = this.E0;
        Paint paint = this.f2305f0;
        RectF rectF = this.f2307h0;
        if (!z2) {
            paint.setColor(this.f2311l0);
            paint.setStyle(Paint.Style.FILL);
            rectF.set(bounds);
            canvas2.drawRoundRect(rectF, q(), q(), paint);
        }
        if (!this.E0) {
            paint.setColor(this.f2312m0);
            paint.setStyle(Paint.Style.FILL);
            ColorFilter colorFilter = this.f2319u0;
            if (colorFilter == null) {
                colorFilter = this.f2320v0;
            }
            paint.setColorFilter(colorFilter);
            rectF.set(bounds);
            canvas2.drawRoundRect(rectF, q(), q(), paint);
        }
        if (this.E0) {
            super.draw(canvas);
        }
        if (this.C > 0.0f && !this.E0) {
            paint.setColor(this.f2314o0);
            paint.setStyle(Paint.Style.STROKE);
            if (!this.E0) {
                ColorFilter colorFilter2 = this.f2319u0;
                if (colorFilter2 == null) {
                    colorFilter2 = this.f2320v0;
                }
                paint.setColorFilter(colorFilter2);
            }
            float f = bounds.left;
            float f3 = this.C / 2.0f;
            rectF.set(f + f3, bounds.top + f3, bounds.right - f3, bounds.bottom - f3);
            float f4 = this.A - (this.C / 2.0f);
            canvas2.drawRoundRect(rectF, f4, f4, paint);
        }
        paint.setColor(this.f2315p0);
        paint.setStyle(Paint.Style.FILL);
        rectF.set(bounds);
        if (this.E0) {
            RectF rectF2 = new RectF(bounds);
            s1.f fVar = this.f3142a;
            k kVar = fVar.f3127a;
            float f5 = fVar.f3133i;
            m mVar = this.f3156q;
            l lVar = this.f3157r;
            Path path = this.f2309j0;
            lVar.a(kVar, f5, rectF2, mVar, path);
            d(canvas2, paint, path, this.f3142a.f3127a, e());
        } else {
            canvas2.drawRoundRect(rectF, q(), q(), paint);
        }
        if (R()) {
            n(bounds, rectF);
            float f6 = rectF.left;
            float f7 = rectF.top;
            canvas2.translate(f6, f7);
            this.G.setBounds(0, 0, (int) rectF.width(), (int) rectF.height());
            this.G.draw(canvas2);
            canvas2.translate(-f6, -f7);
        }
        if (Q()) {
            n(bounds, rectF);
            float f8 = rectF.left;
            float f9 = rectF.top;
            canvas2.translate(f8, f9);
            this.S.setBounds(0, 0, (int) rectF.width(), (int) rectF.height());
            this.S.draw(canvas2);
            canvas2.translate(-f8, -f9);
        }
        if (this.C0 && this.E != null) {
            PointF pointF = this.f2308i0;
            pointF.set(0.0f, 0.0f);
            Paint.Align align = Paint.Align.LEFT;
            CharSequence charSequence = this.E;
            n1.h hVar = this.f2310k0;
            if (charSequence != null) {
                float fO = o() + this.W + this.Z;
                if (w.c.a(this) == 0) {
                    pointF.x = bounds.left + fO;
                } else {
                    pointF.x = bounds.right - fO;
                    align = Paint.Align.RIGHT;
                }
                float fCenterY = bounds.centerY();
                TextPaint textPaint = hVar.f2518a;
                Paint.FontMetrics fontMetrics = this.f2306g0;
                textPaint.getFontMetrics(fontMetrics);
                pointF.y = fCenterY - ((fontMetrics.descent + fontMetrics.ascent) / 2.0f);
            }
            rectF.setEmpty();
            if (this.E != null) {
                float fO2 = o() + this.W + this.Z;
                float fP = p() + this.f2303d0 + this.f2300a0;
                if (w.c.a(this) == 0) {
                    rectF.left = bounds.left + fO2;
                    rectF.right = bounds.right - fP;
                } else {
                    rectF.left = bounds.left + fP;
                    rectF.right = bounds.right - fO2;
                }
                rectF.top = bounds.top;
                rectF.bottom = bounds.bottom;
            }
            p1.d dVar = hVar.f;
            TextPaint textPaint2 = hVar.f2518a;
            if (dVar != null) {
                textPaint2.drawableState = getState();
                hVar.f.c(this.f2304e0, textPaint2, hVar.b);
            }
            textPaint2.setTextAlign(align);
            String string = this.E.toString();
            if (hVar.f2520d) {
                fMeasureText = string == null ? 0.0f : textPaint2.measureText((CharSequence) string, 0, string.length());
                hVar.f2519c = fMeasureText;
                hVar.f2520d = false;
            } else {
                fMeasureText = hVar.f2519c;
            }
            boolean z3 = Math.round(fMeasureText) > Math.round(rectF.width());
            if (z3) {
                int iSave = canvas2.save();
                canvas2.clipRect(rectF);
                i4 = iSave;
            } else {
                i4 = 0;
            }
            CharSequence charSequenceEllipsize = this.E;
            if (z3 && this.B0 != null) {
                charSequenceEllipsize = TextUtils.ellipsize(charSequenceEllipsize, textPaint2, rectF.width(), this.B0);
            }
            canvas.drawText(charSequenceEllipsize, 0, charSequenceEllipsize.length(), pointF.x, pointF.y, textPaint2);
            canvas2 = canvas;
            if (z3) {
                canvas2.restoreToCount(i4);
            }
        }
        if (S()) {
            rectF.setEmpty();
            if (S()) {
                float f10 = this.f2303d0 + this.f2302c0;
                if (w.c.a(this) == 0) {
                    float f11 = bounds.right - f10;
                    rectF.right = f11;
                    rectF.left = f11 - this.O;
                } else {
                    float f12 = bounds.left + f10;
                    rectF.left = f12;
                    rectF.right = f12 + this.O;
                }
                float fExactCenterY = bounds.exactCenterY();
                float f13 = this.O;
                float f14 = fExactCenterY - (f13 / 2.0f);
                rectF.top = f14;
                rectF.bottom = f14 + f13;
            }
            float f15 = rectF.left;
            float f16 = rectF.top;
            canvas2.translate(f15, f16);
            this.L.setBounds(0, 0, (int) rectF.width(), (int) rectF.height());
            this.M.setBounds(this.L.getBounds());
            this.M.jumpToCurrentState();
            this.M.draw(canvas2);
            canvas2.translate(-f15, -f16);
        }
        if (this.t0 < 255) {
            canvas2.restoreToCount(iSaveLayerAlpha);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.t0;
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        return this.f2319u0;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return (int) this.f2324z;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        float fMeasureText;
        float fO = o() + this.W + this.Z;
        String string = this.E.toString();
        n1.h hVar = this.f2310k0;
        if (hVar.f2520d) {
            fMeasureText = string == null ? 0.0f : hVar.f2518a.measureText((CharSequence) string, 0, string.length());
            hVar.f2519c = fMeasureText;
            hVar.f2520d = false;
        } else {
            fMeasureText = hVar.f2519c;
        }
        return Math.min(Math.round(p() + fMeasureText + fO + this.f2300a0 + this.f2303d0), this.D0);
    }

    @Override // s1.g, android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // s1.g, android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        Outline outline2;
        if (this.E0) {
            super.getOutline(outline);
            return;
        }
        Rect bounds = getBounds();
        if (bounds.isEmpty()) {
            outline2 = outline;
            outline2.setRoundRect(0, 0, getIntrinsicWidth(), (int) this.f2324z, this.A);
        } else {
            outline.setRoundRect(bounds, this.A);
            outline2 = outline;
        }
        outline2.setAlpha(this.t0 / 255.0f);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // s1.g, android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList;
        if (r(this.f2322x) || r(this.f2323y) || r(this.B)) {
            return true;
        }
        p1.d dVar = this.f2310k0.f;
        if (dVar == null || (colorStateList = dVar.b) == null || !colorStateList.isStateful()) {
            return (this.R && this.S != null && this.Q) || s(this.G) || s(this.S) || r(this.f2321w0);
        }
        return true;
    }

    public final void m(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        drawable.setCallback(this);
        w.c.b(drawable, w.c.a(this));
        drawable.setLevel(getLevel());
        drawable.setVisible(isVisible(), false);
        if (drawable == this.L) {
            if (drawable.isStateful()) {
                drawable.setState(this.y0);
            }
            w.b.h(drawable, this.N);
            return;
        }
        if (drawable.isStateful()) {
            drawable.setState(getState());
        }
        Drawable drawable2 = this.G;
        if (drawable == drawable2 && this.J) {
            w.b.h(drawable2, this.H);
        }
    }

    public final void n(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (R() || Q()) {
            float f = this.W + this.X;
            if (w.c.a(this) == 0) {
                float f3 = rect.left + f;
                rectF.left = f3;
                rectF.right = f3 + this.I;
            } else {
                float f4 = rect.right - f;
                rectF.right = f4;
                rectF.left = f4 - this.I;
            }
            float fExactCenterY = rect.exactCenterY();
            float f5 = this.I;
            float f6 = fExactCenterY - (f5 / 2.0f);
            rectF.top = f6;
            rectF.bottom = f6 + f5;
        }
    }

    public final float o() {
        if (R() || Q()) {
            return this.X + this.I + this.Y;
        }
        return 0.0f;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLayoutDirectionChanged(int i3) {
        boolean zOnLayoutDirectionChanged = super.onLayoutDirectionChanged(i3);
        if (R()) {
            zOnLayoutDirectionChanged |= w.c.b(this.G, i3);
        }
        if (Q()) {
            zOnLayoutDirectionChanged |= w.c.b(this.S, i3);
        }
        if (S()) {
            zOnLayoutDirectionChanged |= w.c.b(this.L, i3);
        }
        if (!zOnLayoutDirectionChanged) {
            return true;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i3) {
        boolean zOnLevelChange = super.onLevelChange(i3);
        if (R()) {
            zOnLevelChange |= this.G.setLevel(i3);
        }
        if (Q()) {
            zOnLevelChange |= this.S.setLevel(i3);
        }
        if (S()) {
            zOnLevelChange |= this.L.setLevel(i3);
        }
        if (zOnLevelChange) {
            invalidateSelf();
        }
        return zOnLevelChange;
    }

    @Override // s1.g, android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        if (this.E0) {
            super.onStateChange(iArr);
        }
        return u(iArr, this.y0);
    }

    public final float p() {
        if (S()) {
            return this.f2301b0 + this.O + this.f2302c0;
        }
        return 0.0f;
    }

    public final float q() {
        return this.E0 ? this.f3142a.f3127a.f3176e.a(e()) : this.A;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j3) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j3);
        }
    }

    @Override // s1.g, android.graphics.drawable.Drawable
    public final void setAlpha(int i3) {
        if (this.t0 != i3) {
            this.t0 = i3;
            invalidateSelf();
        }
    }

    @Override // s1.g, android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        if (this.f2319u0 != colorFilter) {
            this.f2319u0 = colorFilter;
            invalidateSelf();
        }
    }

    @Override // s1.g, android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        if (this.f2321w0 != colorStateList) {
            this.f2321w0 = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // s1.g, android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        if (this.x0 != mode) {
            this.x0 = mode;
            ColorStateList colorStateList = this.f2321w0;
            this.f2320v0 = (colorStateList == null || mode == null) ? null : new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z2, boolean z3) {
        boolean visible = super.setVisible(z2, z3);
        if (R()) {
            visible |= this.G.setVisible(z2, z3);
        }
        if (Q()) {
            visible |= this.S.setVisible(z2, z3);
        }
        if (S()) {
            visible |= this.L.setVisible(z2, z3);
        }
        if (visible) {
            invalidateSelf();
        }
        return visible;
    }

    public final void t() {
        d dVar = (d) this.A0.get();
        if (dVar != null) {
            Chip chip = (Chip) dVar;
            chip.b(chip.f1372p);
            chip.requestLayout();
            chip.invalidateOutline();
        }
    }

    /* JADX WARN: Code duplicated, block: B:57:0x009b  */
    public final boolean u(int[] iArr, int[] iArr2) {
        int colorForState;
        boolean z2;
        boolean z3;
        ColorStateList colorStateList;
        boolean zOnStateChange = super.onStateChange(iArr);
        ColorStateList colorStateList2 = this.f2322x;
        int colorForState2 = colorStateList2 != null ? colorStateList2.getColorForState(iArr, this.f2311l0) : 0;
        boolean state = true;
        if (this.f2311l0 != colorForState2) {
            this.f2311l0 = colorForState2;
            zOnStateChange = true;
        }
        ColorStateList colorStateList3 = this.f2323y;
        int colorForState3 = colorStateList3 != null ? colorStateList3.getColorForState(iArr, this.f2312m0) : 0;
        if (this.f2312m0 != colorForState3) {
            this.f2312m0 = colorForState3;
            zOnStateChange = true;
        }
        int iB = v.a.b(colorForState3, colorForState2);
        if ((this.f2313n0 != iB) | (this.f3142a.f3128c == null)) {
            this.f2313n0 = iB;
            i(ColorStateList.valueOf(iB));
            zOnStateChange = true;
        }
        ColorStateList colorStateList4 = this.B;
        int colorForState4 = colorStateList4 != null ? colorStateList4.getColorForState(iArr, this.f2314o0) : 0;
        if (this.f2314o0 != colorForState4) {
            this.f2314o0 = colorForState4;
            zOnStateChange = true;
        }
        if (this.f2325z0 != null) {
            boolean z4 = false;
            boolean z5 = false;
            boolean z6 = false;
            for (int i3 : iArr) {
                if (i3 == 16842910) {
                    z5 = true;
                } else if (i3 == 16842908 || i3 == 16842919 || i3 == 16843623) {
                    z6 = true;
                }
            }
            if (z5 && z6) {
                z4 = true;
            }
            if (z4) {
                colorForState = this.f2325z0.getColorForState(iArr, this.f2315p0);
            } else {
                colorForState = 0;
            }
        } else {
            colorForState = 0;
        }
        if (this.f2315p0 != colorForState) {
            this.f2315p0 = colorForState;
        }
        p1.d dVar = this.f2310k0.f;
        int colorForState5 = (dVar == null || (colorStateList = dVar.b) == null) ? 0 : colorStateList.getColorForState(iArr, this.f2316q0);
        if (this.f2316q0 != colorForState5) {
            this.f2316q0 = colorForState5;
            zOnStateChange = true;
        }
        int[] state2 = getState();
        if (state2 == null) {
            z2 = false;
            break;
        }
        int length = state2.length;
        int i4 = 0;
        while (true) {
            if (i4 < length) {
                if (state2[i4] == 16842912) {
                    if (this.Q) {
                        z2 = true;
                        break;
                    }
                } else {
                    i4++;
                }
            }
            z2 = false;
            break;
        }
        if (this.f2317r0 == z2 || this.S == null) {
            z3 = false;
        } else {
            float fO = o();
            this.f2317r0 = z2;
            if (fO != o()) {
                zOnStateChange = true;
                z3 = true;
            } else {
                z3 = false;
                zOnStateChange = true;
            }
        }
        ColorStateList colorStateList5 = this.f2321w0;
        int colorForState6 = colorStateList5 != null ? colorStateList5.getColorForState(iArr, this.f2318s0) : 0;
        if (this.f2318s0 != colorForState6) {
            this.f2318s0 = colorForState6;
            ColorStateList colorStateList6 = this.f2321w0;
            PorterDuff.Mode mode = this.x0;
            this.f2320v0 = (colorStateList6 == null || mode == null) ? null : new PorterDuffColorFilter(colorStateList6.getColorForState(getState(), 0), mode);
        } else {
            state = zOnStateChange;
        }
        if (s(this.G)) {
            state |= this.G.setState(iArr);
        }
        if (s(this.S)) {
            state |= this.S.setState(iArr);
        }
        if (s(this.L)) {
            int[] iArr3 = new int[iArr.length + iArr2.length];
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            System.arraycopy(iArr2, 0, iArr3, iArr.length, iArr2.length);
            state |= this.L.setState(iArr3);
        }
        if (s(this.M)) {
            state |= this.M.setState(iArr2);
        }
        if (state) {
            invalidateSelf();
        }
        if (z3) {
            t();
        }
        return state;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    public final void v(boolean z2) {
        if (this.Q != z2) {
            this.Q = z2;
            float fO = o();
            if (!z2 && this.f2317r0) {
                this.f2317r0 = false;
            }
            float fO2 = o();
            invalidateSelf();
            if (fO != fO2) {
                t();
            }
        }
    }

    public final void w(Drawable drawable) {
        if (this.S != drawable) {
            float fO = o();
            this.S = drawable;
            float fO2 = o();
            T(this.S);
            m(this.S);
            invalidateSelf();
            if (fO != fO2) {
                t();
            }
        }
    }

    public final void x(ColorStateList colorStateList) {
        Drawable drawable;
        if (this.T != colorStateList) {
            this.T = colorStateList;
            if (this.R && (drawable = this.S) != null && this.Q) {
                w.b.h(drawable, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public final void y(boolean z2) {
        if (this.R != z2) {
            boolean zQ = Q();
            this.R = z2;
            boolean zQ2 = Q();
            if (zQ != zQ2) {
                if (zQ2) {
                    m(this.S);
                } else {
                    T(this.S);
                }
                invalidateSelf();
                t();
            }
        }
    }

    public final void z(float f) {
        if (this.A != f) {
            this.A = f;
            setShapeAppearanceModel(this.f3142a.f3127a.f(f));
        }
    }
}
