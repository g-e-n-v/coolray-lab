package i;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class t {
    public static final PorterDuff.Mode b = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static t f2149c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public k2 f2150a;

    public static synchronized t a() {
        try {
            if (f2149c == null) {
                d();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f2149c;
    }

    public static synchronized PorterDuffColorFilter c(int i3, PorterDuff.Mode mode) {
        return k2.e(i3, mode);
    }

    public static synchronized void d() {
        if (f2149c == null) {
            t tVar = new t();
            f2149c = tVar;
            tVar.f2150a = k2.b();
            k2 k2Var = f2149c.f2150a;
            s sVar = new s();
            synchronized (k2Var) {
                k2Var.f2076e = sVar;
            }
        }
    }

    public static void e(Drawable drawable, b3 b3Var, int[] iArr) {
        PorterDuff.Mode mode = k2.f;
        int[] state = drawable.getState();
        int[] iArr2 = k1.f2070a;
        if (drawable.mutate() != drawable) {
            Log.d("ResourceManagerInternal", "Mutated drawable is not the same instance as the input.");
            return;
        }
        if ((drawable instanceof LayerDrawable) && drawable.isStateful()) {
            drawable.setState(new int[0]);
            drawable.setState(state);
        }
        boolean z2 = b3Var.f1984d;
        if (!z2 && !b3Var.f1983c) {
            drawable.clearColorFilter();
            return;
        }
        PorterDuffColorFilter porterDuffColorFilterE = null;
        ColorStateList colorStateList = z2 ? b3Var.f1982a : null;
        PorterDuff.Mode mode2 = b3Var.f1983c ? b3Var.b : k2.f;
        if (colorStateList != null && mode2 != null) {
            porterDuffColorFilterE = k2.e(colorStateList.getColorForState(iArr, 0), mode2);
        }
        drawable.setColorFilter(porterDuffColorFilterE);
    }

    public final synchronized Drawable b(Context context, int i3) {
        return this.f2150a.c(context, i3);
    }
}
