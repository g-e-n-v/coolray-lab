package s1;

import android.content.res.ColorStateList;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes.dex */
public final class f extends Drawable.ConstantState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public k f3127a;
    public m1.a b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ColorStateList f3128c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ColorStateList f3129d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ColorStateList f3130e;
    public PorterDuff.Mode f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Rect f3131g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f3132h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f3133i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f3134j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f3135k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public float f3136l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public float f3137m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f3138n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f3139o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Paint.Style f3140p;

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        g gVar = new g(this);
        gVar.f3145e = true;
        return gVar;
    }
}
