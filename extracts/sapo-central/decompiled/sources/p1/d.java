package p1;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.util.Log;
import android.util.TypedValue;
import u.n;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f2692a;
    public final ColorStateList b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f2693c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f2694d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f2695e;
    public final ColorStateList f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final float f2696g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f2697h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float f2698i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f2699j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f2700k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Typeface f2701l;

    public d(Context context, int i3) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i3, b1.a.f689t);
        this.f2692a = typedArrayObtainStyledAttributes.getDimension(0, 0.0f);
        this.b = k1.a.z(context, typedArrayObtainStyledAttributes, 3);
        k1.a.z(context, typedArrayObtainStyledAttributes, 4);
        k1.a.z(context, typedArrayObtainStyledAttributes, 5);
        this.f2693c = typedArrayObtainStyledAttributes.getInt(2, 0);
        this.f2694d = typedArrayObtainStyledAttributes.getInt(1, 1);
        int i4 = typedArrayObtainStyledAttributes.hasValue(12) ? 12 : 10;
        this.f2699j = typedArrayObtainStyledAttributes.getResourceId(i4, 0);
        this.f2695e = typedArrayObtainStyledAttributes.getString(i4);
        typedArrayObtainStyledAttributes.getBoolean(14, false);
        this.f = k1.a.z(context, typedArrayObtainStyledAttributes, 6);
        this.f2696g = typedArrayObtainStyledAttributes.getFloat(7, 0.0f);
        this.f2697h = typedArrayObtainStyledAttributes.getFloat(8, 0.0f);
        this.f2698i = typedArrayObtainStyledAttributes.getFloat(9, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
    }

    public final void a() {
        String str;
        Typeface typeface = this.f2701l;
        int i3 = this.f2693c;
        if (typeface == null && (str = this.f2695e) != null) {
            this.f2701l = Typeface.create(str, i3);
        }
        if (this.f2701l == null) {
            int i4 = this.f2694d;
            if (i4 == 1) {
                this.f2701l = Typeface.SANS_SERIF;
            } else if (i4 == 2) {
                this.f2701l = Typeface.SERIF;
            } else if (i4 != 3) {
                this.f2701l = Typeface.DEFAULT;
            } else {
                this.f2701l = Typeface.MONOSPACE;
            }
            this.f2701l = Typeface.create(this.f2701l, i3);
        }
    }

    public final void b(Context context, k1.a aVar) {
        a();
        int i3 = this.f2699j;
        if (i3 == 0) {
            this.f2700k = true;
        }
        if (this.f2700k) {
            aVar.L(this.f2701l, true);
            return;
        }
        try {
            b bVar = new b(this, aVar);
            ThreadLocal threadLocal = n.f3235a;
            if (context.isRestricted()) {
                bVar.a(-4);
            } else {
                n.a(context, i3, new TypedValue(), 0, bVar, false);
            }
        } catch (Resources.NotFoundException unused) {
            this.f2700k = true;
            aVar.K(1);
        } catch (Exception e3) {
            Log.d("TextAppearance", "Error loading font " + this.f2695e, e3);
            this.f2700k = true;
            aVar.K(-3);
        }
    }

    public final void c(Context context, TextPaint textPaint, k1.a aVar) {
        a();
        d(textPaint, this.f2701l);
        b(context, new c(this, textPaint, aVar));
        ColorStateList colorStateList = this.b;
        textPaint.setColor(colorStateList != null ? colorStateList.getColorForState(textPaint.drawableState, colorStateList.getDefaultColor()) : -16777216);
        ColorStateList colorStateList2 = this.f;
        textPaint.setShadowLayer(this.f2698i, this.f2696g, this.f2697h, colorStateList2 != null ? colorStateList2.getColorForState(textPaint.drawableState, colorStateList2.getDefaultColor()) : 0);
    }

    public final void d(TextPaint textPaint, Typeface typeface) {
        textPaint.setTypeface(typeface);
        int i3 = (~typeface.getStyle()) & this.f2693c;
        textPaint.setFakeBoldText((i3 & 1) != 0);
        textPaint.setTextSkewX((i3 & 2) != 0 ? -0.25f : 0.0f);
        textPaint.setTextSize(this.f2692a);
    }
}
