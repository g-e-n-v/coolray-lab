package s1;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import java.util.BitSet;

/* JADX INFO: loaded from: classes.dex */
public class g extends Drawable implements u {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final Paint f3141w = new Paint(1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public f f3142a;
    public final s[] b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final s[] f3143c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final BitSet f3144d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f3145e;
    public final Matrix f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Path f3146g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Path f3147h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final RectF f3148i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final RectF f3149j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Region f3150k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Region f3151l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public k f3152m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Paint f3153n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final Paint f3154o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final r1.a f3155p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final androidx.emoji2.text.m f3156q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final l f3157r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public PorterDuffColorFilter f3158s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public PorterDuffColorFilter f3159t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final RectF f3160u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final boolean f3161v;

    public g() {
        this(new k());
    }

    public final void a(RectF rectF, Path path) {
        f fVar = this.f3142a;
        this.f3157r.a(fVar.f3127a, fVar.f3133i, rectF, this.f3156q, path);
        if (this.f3142a.f3132h != 1.0f) {
            Matrix matrix = this.f;
            matrix.reset();
            float f = this.f3142a.f3132h;
            matrix.setScale(f, f, rectF.width() / 2.0f, rectF.height() / 2.0f);
            path.transform(matrix);
        }
        path.computeBounds(this.f3160u, true);
    }

    public final int b(int i3) {
        f fVar = this.f3142a;
        float fMin = 0.0f;
        float f = fVar.f3137m + 0.0f + fVar.f3136l;
        m1.a aVar = fVar.b;
        if (aVar == null || !aVar.f2436a || v.a.d(i3, 255) != aVar.f2437c) {
            return i3;
        }
        float f3 = aVar.f2438d;
        if (f3 > 0.0f && f > 0.0f) {
            fMin = Math.min(((((float) Math.log1p(f / f3)) * 4.5f) + 2.0f) / 100.0f, 1.0f);
        }
        return v.a.d(k1.a.H(v.a.d(i3, 255), aVar.b, fMin), Color.alpha(i3));
    }

    public final void c(Canvas canvas) {
        if (this.f3144d.cardinality() > 0) {
            Log.w("g", "Compatibility shadow requested but can't be drawn for all operations in this shape.");
        }
        int i3 = this.f3142a.f3139o;
        Path path = this.f3146g;
        r1.a aVar = this.f3155p;
        if (i3 != 0) {
            canvas.drawPath(path, aVar.f3085a);
        }
        for (int i4 = 0; i4 < 4; i4++) {
            s sVar = this.b[i4];
            int i5 = this.f3142a.f3138n;
            Matrix matrix = s.f3201a;
            sVar.a(matrix, aVar, i5, canvas);
            this.f3143c[i4].a(matrix, aVar, this.f3142a.f3138n, canvas);
        }
        if (this.f3161v) {
            double d3 = 0;
            int iSin = (int) (Math.sin(Math.toRadians(d3)) * ((double) this.f3142a.f3139o));
            int iCos = (int) (Math.cos(Math.toRadians(d3)) * ((double) this.f3142a.f3139o));
            canvas.translate(-iSin, -iCos);
            canvas.drawPath(path, f3141w);
            canvas.translate(iSin, iCos);
        }
    }

    public final void d(Canvas canvas, Paint paint, Path path, k kVar, RectF rectF) {
        if (!kVar.d(rectF)) {
            canvas.drawPath(path, paint);
        } else {
            float fA = kVar.f.a(rectF) * this.f3142a.f3133i;
            canvas.drawRoundRect(rectF, fA, fA, paint);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        RectF rectF;
        Paint paint;
        PorterDuffColorFilter porterDuffColorFilter = this.f3158s;
        Paint paint2 = this.f3153n;
        paint2.setColorFilter(porterDuffColorFilter);
        int alpha = paint2.getAlpha();
        int i3 = this.f3142a.f3135k;
        paint2.setAlpha(((i3 + (i3 >>> 7)) * alpha) >>> 8);
        PorterDuffColorFilter porterDuffColorFilter2 = this.f3159t;
        Paint paint3 = this.f3154o;
        paint3.setColorFilter(porterDuffColorFilter2);
        paint3.setStrokeWidth(this.f3142a.f3134j);
        int alpha2 = paint3.getAlpha();
        int i4 = this.f3142a.f3135k;
        paint3.setAlpha(((i4 + (i4 >>> 7)) * alpha2) >>> 8);
        boolean z2 = this.f3145e;
        RectF rectF2 = this.f3149j;
        Path path = this.f3147h;
        Path path2 = this.f3146g;
        if (z2) {
            float f = -(f() ? paint3.getStrokeWidth() / 2.0f : 0.0f);
            k kVar = this.f3142a.f3127a;
            j jVarE = kVar.e();
            c bVar = kVar.f3176e;
            if (!(bVar instanceof h)) {
                bVar = new b(f, bVar);
            }
            jVarE.f3166e = bVar;
            c bVar2 = kVar.f;
            if (!(bVar2 instanceof h)) {
                bVar2 = new b(f, bVar2);
            }
            jVarE.f = bVar2;
            c bVar3 = kVar.f3178h;
            if (!(bVar3 instanceof h)) {
                bVar3 = new b(f, bVar3);
            }
            jVarE.f3168h = bVar3;
            c bVar4 = kVar.f3177g;
            if (!(bVar4 instanceof h)) {
                bVar4 = new b(f, bVar4);
            }
            jVarE.f3167g = bVar4;
            k kVarA = jVarE.a();
            this.f3152m = kVarA;
            float f3 = this.f3142a.f3133i;
            rectF2.set(e());
            float strokeWidth = f() ? paint3.getStrokeWidth() / 2.0f : 0.0f;
            rectF2.inset(strokeWidth, strokeWidth);
            rectF = rectF2;
            this.f3157r.a(kVarA, f3, rectF, null, path);
            a(e(), path2);
            this.f3145e = false;
        } else {
            rectF = rectF2;
        }
        f fVar = this.f3142a;
        fVar.getClass();
        if (fVar.f3138n > 0) {
            int i5 = Build.VERSION.SDK_INT;
            if (!this.f3142a.f3127a.d(e()) && !path2.isConvex() && i5 < 29) {
                canvas.save();
                double d3 = 0;
                canvas.translate((int) (((double) this.f3142a.f3139o) * Math.sin(Math.toRadians(d3))), (int) (Math.cos(Math.toRadians(d3)) * ((double) this.f3142a.f3139o)));
                if (this.f3161v) {
                    RectF rectF3 = this.f3160u;
                    int iWidth = (int) (rectF3.width() - getBounds().width());
                    int iHeight = (int) (rectF3.height() - getBounds().height());
                    if (iWidth < 0 || iHeight < 0) {
                        throw new IllegalStateException("Invalid shadow bounds. Check that the treatments result in a valid path.");
                    }
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap((this.f3142a.f3138n * 2) + ((int) rectF3.width()) + iWidth, (this.f3142a.f3138n * 2) + ((int) rectF3.height()) + iHeight, Bitmap.Config.ARGB_8888);
                    Canvas canvas2 = new Canvas(bitmapCreateBitmap);
                    float f4 = (getBounds().left - this.f3142a.f3138n) - iWidth;
                    float f5 = (getBounds().top - this.f3142a.f3138n) - iHeight;
                    canvas2.translate(-f4, -f5);
                    c(canvas2);
                    canvas.drawBitmap(bitmapCreateBitmap, f4, f5, (Paint) null);
                    bitmapCreateBitmap.recycle();
                    canvas.restore();
                } else {
                    c(canvas);
                    canvas.restore();
                }
            }
        }
        f fVar2 = this.f3142a;
        Paint.Style style = fVar2.f3140p;
        if (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.FILL) {
            d(canvas, paint2, path2, fVar2.f3127a, e());
        }
        if (f()) {
            k kVar2 = this.f3152m;
            rectF.set(e());
            float strokeWidth2 = f() ? paint3.getStrokeWidth() / 2.0f : 0.0f;
            rectF.inset(strokeWidth2, strokeWidth2);
            paint = paint3;
            d(canvas, paint, path, kVar2, rectF);
        } else {
            paint = paint3;
        }
        paint2.setAlpha(alpha);
        paint.setAlpha(alpha2);
    }

    public final RectF e() {
        Rect bounds = getBounds();
        RectF rectF = this.f3148i;
        rectF.set(bounds);
        return rectF;
    }

    public final boolean f() {
        Paint.Style style = this.f3142a.f3140p;
        return (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.STROKE) && this.f3154o.getStrokeWidth() > 0.0f;
    }

    public final void g(Context context) {
        this.f3142a.b = new m1.a(context);
        l();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.f3142a;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        this.f3142a.getClass();
        if (this.f3142a.f3127a.d(e())) {
            outline.setRoundRect(getBounds(), this.f3142a.f3127a.f3176e.a(e()) * this.f3142a.f3133i);
            return;
        }
        RectF rectFE = e();
        Path path = this.f3146g;
        a(rectFE, path);
        if (path.isConvex() || Build.VERSION.SDK_INT >= 29) {
            try {
                outline.setConvexPath(path);
            } catch (IllegalArgumentException unused) {
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        Rect rect2 = this.f3142a.f3131g;
        if (rect2 == null) {
            return super.getPadding(rect);
        }
        rect.set(rect2);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final Region getTransparentRegion() {
        Rect bounds = getBounds();
        Region region = this.f3150k;
        region.set(bounds);
        RectF rectFE = e();
        Path path = this.f3146g;
        a(rectFE, path);
        Region region2 = this.f3151l;
        region2.setPath(path, region);
        region.op(region2, Region.Op.DIFFERENCE);
        return region;
    }

    public final void h(float f) {
        f fVar = this.f3142a;
        if (fVar.f3137m != f) {
            fVar.f3137m = f;
            l();
        }
    }

    public final void i(ColorStateList colorStateList) {
        f fVar = this.f3142a;
        if (fVar.f3128c != colorStateList) {
            fVar.f3128c = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        this.f3145e = true;
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        if (super.isStateful()) {
            return true;
        }
        ColorStateList colorStateList = this.f3142a.f3130e;
        if (colorStateList != null && colorStateList.isStateful()) {
            return true;
        }
        this.f3142a.getClass();
        ColorStateList colorStateList2 = this.f3142a.f3129d;
        if (colorStateList2 != null && colorStateList2.isStateful()) {
            return true;
        }
        ColorStateList colorStateList3 = this.f3142a.f3128c;
        return colorStateList3 != null && colorStateList3.isStateful();
    }

    public final boolean j(int[] iArr) {
        boolean z2;
        Paint paint;
        int color;
        int colorForState;
        Paint paint2;
        int color2;
        int colorForState2;
        if (this.f3142a.f3128c == null || color2 == (colorForState2 = this.f3142a.f3128c.getColorForState(iArr, (color2 = (paint2 = this.f3153n).getColor())))) {
            z2 = false;
        } else {
            paint2.setColor(colorForState2);
            z2 = true;
        }
        if (this.f3142a.f3129d == null || color == (colorForState = this.f3142a.f3129d.getColorForState(iArr, (color = (paint = this.f3154o).getColor())))) {
            return z2;
        }
        paint.setColor(colorForState);
        return true;
    }

    public final boolean k() {
        PorterDuffColorFilter porterDuffColorFilter;
        PorterDuffColorFilter porterDuffColorFilter2 = this.f3158s;
        PorterDuffColorFilter porterDuffColorFilter3 = this.f3159t;
        f fVar = this.f3142a;
        ColorStateList colorStateList = fVar.f3130e;
        PorterDuff.Mode mode = fVar.f;
        if (colorStateList == null || mode == null) {
            int color = this.f3153n.getColor();
            int iB = b(color);
            porterDuffColorFilter = iB != color ? new PorterDuffColorFilter(iB, PorterDuff.Mode.SRC_IN) : null;
        } else {
            porterDuffColorFilter = new PorterDuffColorFilter(b(colorStateList.getColorForState(getState(), 0)), mode);
        }
        this.f3158s = porterDuffColorFilter;
        this.f3142a.getClass();
        this.f3159t = null;
        this.f3142a.getClass();
        return (b0.b.a(porterDuffColorFilter2, this.f3158s) && b0.b.a(porterDuffColorFilter3, this.f3159t)) ? false : true;
    }

    public final void l() {
        f fVar = this.f3142a;
        float f = fVar.f3137m + 0.0f;
        fVar.f3138n = (int) Math.ceil(0.75f * f);
        this.f3142a.f3139o = (int) Math.ceil(f * 0.25f);
        k();
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        f fVar = this.f3142a;
        f fVar2 = new f();
        fVar2.f3128c = null;
        fVar2.f3129d = null;
        fVar2.f3130e = null;
        fVar2.f = PorterDuff.Mode.SRC_IN;
        fVar2.f3131g = null;
        fVar2.f3132h = 1.0f;
        fVar2.f3133i = 1.0f;
        fVar2.f3135k = 255;
        fVar2.f3136l = 0.0f;
        fVar2.f3137m = 0.0f;
        fVar2.f3138n = 0;
        fVar2.f3139o = 0;
        fVar2.f3140p = Paint.Style.FILL_AND_STROKE;
        fVar2.f3127a = fVar.f3127a;
        fVar2.b = fVar.b;
        fVar2.f3134j = fVar.f3134j;
        fVar2.f3128c = fVar.f3128c;
        fVar2.f3129d = fVar.f3129d;
        fVar2.f = fVar.f;
        fVar2.f3130e = fVar.f3130e;
        fVar2.f3135k = fVar.f3135k;
        fVar2.f3132h = fVar.f3132h;
        fVar2.f3139o = fVar.f3139o;
        fVar2.f3133i = fVar.f3133i;
        fVar2.f3136l = fVar.f3136l;
        fVar2.f3137m = fVar.f3137m;
        fVar2.f3138n = fVar.f3138n;
        fVar2.f3140p = fVar.f3140p;
        if (fVar.f3131g != null) {
            fVar2.f3131g = new Rect(fVar.f3131g);
        }
        this.f3142a = fVar2;
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        this.f3145e = true;
        super.onBoundsChange(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        boolean z2 = j(iArr) || k();
        if (z2) {
            invalidateSelf();
        }
        return z2;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i3) {
        f fVar = this.f3142a;
        if (fVar.f3135k != i3) {
            fVar.f3135k = i3;
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f3142a.getClass();
        super.invalidateSelf();
    }

    @Override // s1.u
    public final void setShapeAppearanceModel(k kVar) {
        this.f3142a.f3127a = kVar;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i3) {
        setTintList(ColorStateList.valueOf(i3));
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.f3142a.f3130e = colorStateList;
        k();
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        f fVar = this.f3142a;
        if (fVar.f != mode) {
            fVar.f = mode;
            k();
            super.invalidateSelf();
        }
    }

    public g(Context context, AttributeSet attributeSet, int i3, int i4) {
        this(k.b(context, attributeSet, i3, i4).a());
    }

    public g(k kVar) {
        f fVar = new f();
        fVar.f3128c = null;
        fVar.f3129d = null;
        fVar.f3130e = null;
        fVar.f = PorterDuff.Mode.SRC_IN;
        fVar.f3131g = null;
        fVar.f3132h = 1.0f;
        fVar.f3133i = 1.0f;
        fVar.f3135k = 255;
        fVar.f3136l = 0.0f;
        fVar.f3137m = 0.0f;
        fVar.f3138n = 0;
        fVar.f3139o = 0;
        fVar.f3140p = Paint.Style.FILL_AND_STROKE;
        fVar.f3127a = kVar;
        fVar.b = null;
        this(fVar);
    }

    public g(f fVar) {
        this.b = new s[4];
        this.f3143c = new s[4];
        this.f3144d = new BitSet(8);
        this.f = new Matrix();
        this.f3146g = new Path();
        this.f3147h = new Path();
        this.f3148i = new RectF();
        this.f3149j = new RectF();
        this.f3150k = new Region();
        this.f3151l = new Region();
        Paint paint = new Paint(1);
        this.f3153n = paint;
        Paint paint2 = new Paint(1);
        this.f3154o = paint2;
        this.f3155p = new r1.a();
        this.f3157r = new l();
        this.f3160u = new RectF();
        this.f3161v = true;
        this.f3142a = fVar;
        paint2.setStyle(Paint.Style.STROKE);
        paint.setStyle(Paint.Style.FILL);
        Paint paint3 = f3141w;
        paint3.setColor(-1);
        paint3.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        k();
        j(getState());
        this.f3156q = new androidx.emoji2.text.m(26, this);
    }
}
