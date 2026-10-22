package i;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.TypedValue;
import com.ex.auto.R;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class k2 {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static k2 f2071g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WeakHashMap f2073a;
    public final WeakHashMap b = new WeakHashMap(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TypedValue f2074c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2075d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public s f2076e;
    public static final PorterDuff.Mode f = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final j2 f2072h = new j2(6);

    public static synchronized k2 b() {
        try {
            if (f2071g == null) {
                f2071g = new k2();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f2071g;
    }

    public static synchronized PorterDuffColorFilter e(int i3, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        j2 j2Var = f2072h;
        j2Var.getClass();
        int i4 = (31 + i3) * 31;
        porterDuffColorFilter = (PorterDuffColorFilter) j2Var.a(Integer.valueOf(mode.hashCode() + i4));
        if (porterDuffColorFilter == null) {
            porterDuffColorFilter = new PorterDuffColorFilter(i3, mode);
        }
        return porterDuffColorFilter;
    }

    public final Drawable a(Context context, int i3) {
        Drawable drawableNewDrawable;
        WeakReference weakReference;
        if (this.f2074c == null) {
            this.f2074c = new TypedValue();
        }
        TypedValue typedValue = this.f2074c;
        context.getResources().getValue(i3, typedValue, true);
        long j3 = (((long) typedValue.assetCookie) << 32) | ((long) typedValue.data);
        synchronized (this) {
            l.e eVar = (l.e) this.b.get(context);
            drawableNewDrawable = null;
            if (eVar != null && (weakReference = (WeakReference) eVar.c(j3, null)) != null) {
                Drawable.ConstantState constantState = (Drawable.ConstantState) weakReference.get();
                if (constantState != null) {
                    drawableNewDrawable = constantState.newDrawable(context.getResources());
                } else {
                    int iB = l.d.b(eVar.b, eVar.f2400d, j3);
                    if (iB >= 0) {
                        Object[] objArr = eVar.f2399c;
                        Object obj = objArr[iB];
                        Object obj2 = l.e.f2397e;
                        if (obj != obj2) {
                            objArr[iB] = obj2;
                            eVar.f2398a = true;
                        }
                    }
                }
            }
        }
        if (drawableNewDrawable != null) {
            return drawableNewDrawable;
        }
        LayerDrawable layerDrawableD = null;
        if (this.f2076e != null) {
            if (i3 == R.drawable.abc_cab_background_top_material) {
                layerDrawableD = new LayerDrawable(new Drawable[]{c(context, R.drawable.abc_cab_background_internal_bg), c(context, R.drawable.abc_cab_background_top_mtrl_alpha)});
            } else if (i3 == R.drawable.abc_ratingbar_material) {
                layerDrawableD = s.d(this, context, R.dimen.abc_star_big);
            } else if (i3 == R.drawable.abc_ratingbar_indicator_material) {
                layerDrawableD = s.d(this, context, R.dimen.abc_star_medium);
            } else if (i3 == R.drawable.abc_ratingbar_small_material) {
                layerDrawableD = s.d(this, context, R.dimen.abc_star_small);
            }
        }
        if (layerDrawableD == null) {
            return layerDrawableD;
        }
        layerDrawableD.setChangingConfigurations(typedValue.changingConfigurations);
        synchronized (this) {
            try {
                Drawable.ConstantState constantState2 = layerDrawableD.getConstantState();
                if (constantState2 != null) {
                    l.e eVar2 = (l.e) this.b.get(context);
                    if (eVar2 == null) {
                        eVar2 = new l.e();
                        this.b.put(context, eVar2);
                    }
                    eVar2.d(new WeakReference(constantState2), j3);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return layerDrawableD;
    }

    public final synchronized Drawable c(Context context, int i3) {
        return d(context, i3, false);
    }

    public final synchronized Drawable d(Context context, int i3, boolean z2) {
        Drawable drawableA;
        try {
            if (!this.f2075d) {
                this.f2075d = true;
                Drawable drawableC = c(context, R.drawable.abc_vector_test);
                if (drawableC == null || (!(drawableC instanceof u0.a) && !"android.graphics.drawable.VectorDrawable".equals(drawableC.getClass().getName()))) {
                    this.f2075d = false;
                    throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
                }
            }
            drawableA = a(context, i3);
            if (drawableA == null) {
                drawableA = androidx.core.content.b.b(context, i3);
            }
            if (drawableA != null) {
                drawableA = g(context, i3, z2, drawableA);
            }
            if (drawableA != null) {
                k1.a(drawableA);
            }
        } catch (Throwable th) {
            throw th;
        }
        return drawableA;
    }

    public final synchronized ColorStateList f(Context context, int i3) {
        ColorStateList colorStateList;
        l.l lVar;
        WeakHashMap weakHashMap = this.f2073a;
        ColorStateList colorStateListE = null;
        colorStateList = (weakHashMap == null || (lVar = (l.l) weakHashMap.get(context)) == null) ? null : (ColorStateList) lVar.b(i3, null);
        if (colorStateList == null) {
            s sVar = this.f2076e;
            if (sVar != null) {
                colorStateListE = sVar.e(context, i3);
            }
            if (colorStateListE != null) {
                if (this.f2073a == null) {
                    this.f2073a = new WeakHashMap();
                }
                l.l lVar2 = (l.l) this.f2073a.get(context);
                if (lVar2 == null) {
                    lVar2 = new l.l();
                    this.f2073a.put(context, lVar2);
                }
                lVar2.a(i3, colorStateListE);
            }
            colorStateList = colorStateListE;
        }
        return colorStateList;
    }

    public final Drawable g(Context context, int i3, boolean z2, Drawable drawable) {
        boolean z3;
        int iRound;
        ColorStateList colorStateListF = f(context, i3);
        PorterDuff.Mode mode = null;
        if (colorStateListF != null) {
            int[] iArr = k1.f2070a;
            Drawable drawableMutate = drawable.mutate();
            w.b.h(drawableMutate, colorStateListF);
            if (this.f2076e != null && i3 == R.drawable.abc_switch_thumb_material) {
                mode = PorterDuff.Mode.MULTIPLY;
            }
            if (mode != null) {
                w.b.i(drawableMutate, mode);
            }
            return drawableMutate;
        }
        s sVar = this.f2076e;
        int i4 = R.attr.colorControlNormal;
        if (sVar != null) {
            if (i3 == R.drawable.abc_seekbar_track_material) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                Drawable drawableFindDrawableByLayerId = layerDrawable.findDrawableByLayerId(android.R.id.background);
                int iC = z2.c(context, R.attr.colorControlNormal);
                PorterDuff.Mode mode2 = t.b;
                s.f(drawableFindDrawableByLayerId, iC, mode2);
                s.f(layerDrawable.findDrawableByLayerId(android.R.id.secondaryProgress), z2.c(context, R.attr.colorControlNormal), mode2);
                s.f(layerDrawable.findDrawableByLayerId(android.R.id.progress), z2.c(context, R.attr.colorControlActivated), mode2);
                return drawable;
            }
            if (i3 == R.drawable.abc_ratingbar_material || i3 == R.drawable.abc_ratingbar_indicator_material || i3 == R.drawable.abc_ratingbar_small_material) {
                LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
                Drawable drawableFindDrawableByLayerId2 = layerDrawable2.findDrawableByLayerId(android.R.id.background);
                int iB = z2.b(context, R.attr.colorControlNormal);
                PorterDuff.Mode mode3 = t.b;
                s.f(drawableFindDrawableByLayerId2, iB, mode3);
                s.f(layerDrawable2.findDrawableByLayerId(android.R.id.secondaryProgress), z2.c(context, R.attr.colorControlActivated), mode3);
                s.f(layerDrawable2.findDrawableByLayerId(android.R.id.progress), z2.c(context, R.attr.colorControlActivated), mode3);
                return drawable;
            }
        }
        s sVar2 = this.f2076e;
        boolean z4 = false;
        if (sVar2 != null) {
            PorterDuff.Mode mode4 = t.b;
            if (s.b((int[]) sVar2.f2144a, i3)) {
                z3 = true;
                iRound = -1;
            } else {
                if (s.b((int[]) sVar2.f2145c, i3)) {
                    i4 = R.attr.colorControlActivated;
                } else {
                    boolean zB = s.b((int[]) sVar2.f2146d, i3);
                    i4 = android.R.attr.colorBackground;
                    if (zB) {
                        mode4 = PorterDuff.Mode.MULTIPLY;
                    } else if (i3 == R.drawable.abc_list_divider_mtrl_alpha) {
                        iRound = Math.round(40.8f);
                        i4 = android.R.attr.colorForeground;
                        z3 = true;
                    } else {
                        if (i3 != R.drawable.abc_dialog_material_background) {
                            z3 = false;
                            i4 = 0;
                        }
                        iRound = -1;
                    }
                }
                z3 = true;
                iRound = -1;
            }
            if (z3) {
                int[] iArr2 = k1.f2070a;
                Drawable drawableMutate2 = drawable.mutate();
                drawableMutate2.setColorFilter(t.c(z2.c(context, i4), mode4));
                if (iRound != -1) {
                    drawableMutate2.setAlpha(iRound);
                }
                z4 = true;
            }
        }
        if (z4 || !z2) {
            return drawable;
        }
        return null;
    }
}
