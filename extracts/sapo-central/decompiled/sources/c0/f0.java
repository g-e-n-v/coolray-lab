package c0;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.WindowInsets;
import com.ex.auto.R;

/* JADX INFO: loaded from: classes.dex */
public abstract class f0 {
    public static void a(WindowInsets windowInsets, View view) {
        View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = (View.OnApplyWindowInsetsListener) view.getTag(R.id.tag_window_insets_animation_callback);
        if (onApplyWindowInsetsListener != null) {
            onApplyWindowInsetsListener.onApplyWindowInsets(view, windowInsets);
        }
    }

    public static k1 b(View view, k1 k1Var, Rect rect) {
        WindowInsets windowInsetsF = k1Var.f();
        if (windowInsetsF != null) {
            return k1.g(view.computeSystemWindowInsets(windowInsetsF, rect), view);
        }
        rect.setEmpty();
        return k1Var;
    }

    public static boolean c(View view, float f, float f3, boolean z2) {
        return view.dispatchNestedFling(f, f3, z2);
    }

    public static boolean d(View view, float f, float f3) {
        return view.dispatchNestedPreFling(f, f3);
    }

    public static boolean e(View view, int i3, int i4, int[] iArr, int[] iArr2) {
        return view.dispatchNestedPreScroll(i3, i4, iArr, iArr2);
    }

    public static boolean f(View view, int i3, int i4, int i5, int i6, int[] iArr) {
        return view.dispatchNestedScroll(i3, i4, i5, i6, iArr);
    }

    public static ColorStateList g(View view) {
        return view.getBackgroundTintList();
    }

    public static PorterDuff.Mode h(View view) {
        return view.getBackgroundTintMode();
    }

    public static float i(View view) {
        return view.getElevation();
    }

    public static k1 j(View view) {
        c1 a1Var;
        if (y0.f744d && view.isAttachedToWindow()) {
            try {
                Object obj = y0.f742a.get(view.getRootView());
                if (obj != null) {
                    Rect rect = (Rect) y0.b.get(obj);
                    Rect rect2 = (Rect) y0.f743c.get(obj);
                    if (rect != null && rect2 != null) {
                        int i3 = Build.VERSION.SDK_INT;
                        if (i3 >= 30) {
                            a1Var = new b1();
                        } else {
                            a1Var = i3 >= 29 ? new a1() : new z0();
                        }
                        a1Var.c(v.c.a(rect.left, rect.top, rect.right, rect.bottom));
                        a1Var.d(v.c.a(rect2.left, rect2.top, rect2.right, rect2.bottom));
                        k1 k1VarB = a1Var.b();
                        k1VarB.f721a.m(k1VarB);
                        k1VarB.f721a.d(view.getRootView());
                        return k1VarB;
                    }
                }
            } catch (IllegalAccessException e3) {
                Log.w("WindowInsetsCompat", "Failed to get insets from AttachInfo. " + e3.getMessage(), e3);
            }
        }
        return null;
    }

    public static String k(View view) {
        return view.getTransitionName();
    }

    public static float l(View view) {
        return view.getTranslationZ();
    }

    public static float m(View view) {
        return view.getZ();
    }

    public static boolean n(View view) {
        return view.hasNestedScrollingParent();
    }

    public static boolean o(View view) {
        return view.isImportantForAccessibility();
    }

    public static boolean p(View view) {
        return view.isNestedScrollingEnabled();
    }

    public static void q(View view, ColorStateList colorStateList) {
        view.setBackgroundTintList(colorStateList);
    }

    public static void r(View view, PorterDuff.Mode mode) {
        view.setBackgroundTintMode(mode);
    }

    public static void s(View view, float f) {
        view.setElevation(f);
    }

    public static void t(View view, boolean z2) {
        view.setNestedScrollingEnabled(z2);
    }

    public static void u(View view, r rVar) {
        if (Build.VERSION.SDK_INT < 30) {
            view.setTag(R.id.tag_on_apply_window_listener, rVar);
        }
        if (rVar == null) {
            view.setOnApplyWindowInsetsListener((View.OnApplyWindowInsetsListener) view.getTag(R.id.tag_window_insets_animation_callback));
        } else {
            view.setOnApplyWindowInsetsListener(new e0(view, rVar));
        }
    }

    public static void v(View view, String str) {
        view.setTransitionName(str);
    }

    public static void w(View view, float f) {
        view.setTranslationZ(f);
    }

    public static void x(View view, float f) {
        view.setZ(f);
    }

    public static boolean y(View view, int i3) {
        return view.startNestedScroll(i3);
    }

    public static void z(View view) {
        view.stopNestedScroll();
    }
}
