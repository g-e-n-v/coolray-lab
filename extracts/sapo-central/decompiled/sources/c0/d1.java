package c0;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.WindowInsets;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public abstract class d1 extends j1 {
    public static boolean f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static Method f702g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static Class f703h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static Field f704i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static Field f705j;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final WindowInsets f706c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public v.c f707d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public v.c f708e;

    public d1(k1 k1Var, WindowInsets windowInsets) {
        super(k1Var);
        this.f707d = null;
        this.f706c = windowInsets;
    }

    private v.c o(View view) {
        if (Build.VERSION.SDK_INT >= 30) {
            throw new UnsupportedOperationException("getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead.");
        }
        if (!f) {
            p();
        }
        Method method = f702g;
        if (method != null && f703h != null && f704i != null) {
            try {
                Object objInvoke = method.invoke(view, null);
                if (objInvoke == null) {
                    Log.w("WindowInsetsCompat", "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden", new NullPointerException());
                    return null;
                }
                Rect rect = (Rect) f704i.get(f705j.get(objInvoke));
                if (rect != null) {
                    return v.c.a(rect.left, rect.top, rect.right, rect.bottom);
                }
            } catch (ReflectiveOperationException e3) {
                Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). " + e3.getMessage(), e3);
            }
        }
        return null;
    }

    @SuppressLint({"PrivateApi"})
    private static void p() {
        try {
            f702g = View.class.getDeclaredMethod("getViewRootImpl", null);
            Class<?> cls = Class.forName("android.view.View$AttachInfo");
            f703h = cls;
            f704i = cls.getDeclaredField("mVisibleInsets");
            f705j = Class.forName("android.view.ViewRootImpl").getDeclaredField("mAttachInfo");
            f704i.setAccessible(true);
            f705j.setAccessible(true);
        } catch (ReflectiveOperationException e3) {
            Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). " + e3.getMessage(), e3);
        }
        f = true;
    }

    @Override // c0.j1
    public void d(View view) {
        v.c cVarO = o(view);
        if (cVarO == null) {
            cVarO = v.c.f3308e;
        }
        q(cVarO);
    }

    @Override // c0.j1
    public final v.c h() {
        if (this.f707d == null) {
            WindowInsets windowInsets = this.f706c;
            this.f707d = v.c.a(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
        }
        return this.f707d;
    }

    @Override // c0.j1
    public k1 i(int i3, int i4, int i5, int i6) {
        c1 a1Var;
        k1 k1VarG = k1.g(this.f706c, null);
        int i7 = Build.VERSION.SDK_INT;
        if (i7 >= 30) {
            a1Var = new b1(k1VarG);
        } else {
            a1Var = i7 >= 29 ? new a1(k1VarG) : new z0(k1VarG);
        }
        a1Var.d(k1.e(h(), i3, i4, i5, i6));
        a1Var.c(k1.e(g(), i3, i4, i5, i6));
        return a1Var.b();
    }

    @Override // c0.j1
    public boolean k() {
        return this.f706c.isRound();
    }

    @Override // c0.j1
    public void l(v.c[] cVarArr) {
    }

    @Override // c0.j1
    public void m(k1 k1Var) {
    }

    public void q(v.c cVar) {
        this.f708e = cVar;
    }
}
