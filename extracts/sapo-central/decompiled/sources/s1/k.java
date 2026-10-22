package s1;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;

/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public k1.a f3173a = new i();
    public k1.a b = new i();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public k1.a f3174c = new i();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public k1.a f3175d = new i();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public c f3176e = new a(0.0f);
    public c f = new a(0.0f);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public c f3177g = new a(0.0f);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public c f3178h = new a(0.0f);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public e f3179i = new e();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public e f3180j = new e();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public e f3181k = new e();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public e f3182l = new e();

    public static j a(Context context, int i3, int i4, a aVar) {
        if (i4 != 0) {
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, i3);
            i3 = i4;
            context = contextThemeWrapper;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i3, b1.a.f687r);
        try {
            int i5 = typedArrayObtainStyledAttributes.getInt(0, 0);
            int i6 = typedArrayObtainStyledAttributes.getInt(3, i5);
            int i7 = typedArrayObtainStyledAttributes.getInt(4, i5);
            int i8 = typedArrayObtainStyledAttributes.getInt(2, i5);
            int i9 = typedArrayObtainStyledAttributes.getInt(1, i5);
            c cVarC = c(typedArrayObtainStyledAttributes, 5, aVar);
            c cVarC2 = c(typedArrayObtainStyledAttributes, 8, cVarC);
            c cVarC3 = c(typedArrayObtainStyledAttributes, 9, cVarC);
            c cVarC4 = c(typedArrayObtainStyledAttributes, 7, cVarC);
            c cVarC5 = c(typedArrayObtainStyledAttributes, 6, cVarC);
            j jVar = new j();
            jVar.f3163a = k1.a.s(i6);
            jVar.f3166e = cVarC2;
            jVar.b = k1.a.s(i7);
            jVar.f = cVarC3;
            jVar.f3164c = k1.a.s(i8);
            jVar.f3167g = cVarC4;
            jVar.f3165d = k1.a.s(i9);
            jVar.f3168h = cVarC5;
            return jVar;
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static j b(Context context, AttributeSet attributeSet, int i3, int i4) {
        a aVar = new a(0);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b1.a.f683n, i3, i4);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        return a(context, resourceId, resourceId2, aVar);
    }

    public static c c(TypedArray typedArray, int i3, c cVar) {
        TypedValue typedValuePeekValue = typedArray.peekValue(i3);
        if (typedValuePeekValue != null) {
            int i4 = typedValuePeekValue.type;
            if (i4 == 5) {
                return new a(TypedValue.complexToDimensionPixelSize(typedValuePeekValue.data, typedArray.getResources().getDisplayMetrics()));
            }
            if (i4 == 6) {
                return new h(typedValuePeekValue.getFraction(1.0f, 1.0f));
            }
        }
        return cVar;
    }

    public final boolean d(RectF rectF) {
        boolean z2 = this.f3182l.getClass().equals(e.class) && this.f3180j.getClass().equals(e.class) && this.f3179i.getClass().equals(e.class) && this.f3181k.getClass().equals(e.class);
        float fA = this.f3176e.a(rectF);
        return z2 && ((this.f.a(rectF) > fA ? 1 : (this.f.a(rectF) == fA ? 0 : -1)) == 0 && (this.f3178h.a(rectF) > fA ? 1 : (this.f3178h.a(rectF) == fA ? 0 : -1)) == 0 && (this.f3177g.a(rectF) > fA ? 1 : (this.f3177g.a(rectF) == fA ? 0 : -1)) == 0) && ((this.b instanceof i) && (this.f3173a instanceof i) && (this.f3174c instanceof i) && (this.f3175d instanceof i));
    }

    public final j e() {
        j jVar = new j();
        jVar.f3163a = this.f3173a;
        jVar.b = this.b;
        jVar.f3164c = this.f3174c;
        jVar.f3165d = this.f3175d;
        jVar.f3166e = this.f3176e;
        jVar.f = this.f;
        jVar.f3167g = this.f3177g;
        jVar.f3168h = this.f3178h;
        jVar.f3169i = this.f3179i;
        jVar.f3170j = this.f3180j;
        jVar.f3171k = this.f3181k;
        jVar.f3172l = this.f3182l;
        return jVar;
    }

    public final k f(float f) {
        j jVarE = e();
        jVarE.f3166e = new a(f);
        jVarE.f = new a(f);
        jVarE.f3167g = new a(f);
        jVarE.f3168h = new a(f);
        return jVarE.a();
    }
}
