package h1;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import com.ex.auto.R;
import com.google.android.material.button.MaterialButton;
import s1.f;
import s1.g;
import s1.k;
import s1.u;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MaterialButton f1953a;
    public k b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1954c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1955d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1956e;
    public int f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f1957g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f1958h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public PorterDuff.Mode f1959i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ColorStateList f1960j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ColorStateList f1961k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ColorStateList f1962l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public g f1963m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f1964n = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f1965o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f1966p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f1967q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public RippleDrawable f1968r;

    public c(MaterialButton materialButton, k kVar) {
        this.f1953a = materialButton;
        this.b = kVar;
    }

    public final u a() {
        RippleDrawable rippleDrawable = this.f1968r;
        if (rippleDrawable == null || rippleDrawable.getNumberOfLayers() <= 1) {
            return null;
        }
        return this.f1968r.getNumberOfLayers() > 2 ? (u) this.f1968r.getDrawable(2) : (u) this.f1968r.getDrawable(1);
    }

    public final g b(boolean z2) {
        RippleDrawable rippleDrawable = this.f1968r;
        if (rippleDrawable == null || rippleDrawable.getNumberOfLayers() <= 0) {
            return null;
        }
        return (g) ((LayerDrawable) ((InsetDrawable) this.f1968r.getDrawable(0)).getDrawable()).getDrawable(!z2 ? 1 : 0);
    }

    public final void c(k kVar) {
        this.b = kVar;
        if (b(false) != null) {
            b(false).setShapeAppearanceModel(kVar);
        }
        if (b(true) != null) {
            b(true).setShapeAppearanceModel(kVar);
        }
        if (a() != null) {
            a().setShapeAppearanceModel(kVar);
        }
    }

    public final void d() {
        g gVarB = b(false);
        g gVarB2 = b(true);
        if (gVarB != null) {
            float f = this.f1958h;
            ColorStateList colorStateList = this.f1961k;
            gVarB.f3142a.f3134j = f;
            gVarB.invalidateSelf();
            f fVar = gVarB.f3142a;
            if (fVar.f3129d != colorStateList) {
                fVar.f3129d = colorStateList;
                gVarB.onStateChange(gVarB.getState());
            }
            if (gVarB2 != null) {
                float f3 = this.f1958h;
                int iY = this.f1964n ? k1.a.y(this.f1953a, R.attr.colorSurface) : 0;
                gVarB2.f3142a.f3134j = f3;
                gVarB2.invalidateSelf();
                ColorStateList colorStateListValueOf = ColorStateList.valueOf(iY);
                f fVar2 = gVarB2.f3142a;
                if (fVar2.f3129d != colorStateListValueOf) {
                    fVar2.f3129d = colorStateListValueOf;
                    gVarB2.onStateChange(gVarB2.getState());
                }
            }
        }
    }
}
