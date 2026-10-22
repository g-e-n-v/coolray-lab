package c0;

import android.graphics.Rect;
import android.util.Log;
import android.view.WindowInsets;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
public final class z0 extends c1 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Field f745c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static boolean f746d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static Constructor f747e = null;
    public static boolean f = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WindowInsets f748a;
    public v.c b;

    public z0() {
        this.f748a = e();
    }

    private static WindowInsets e() {
        if (!f746d) {
            try {
                f745c = WindowInsets.class.getDeclaredField("CONSUMED");
            } catch (ReflectiveOperationException e3) {
                Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets.CONSUMED field", e3);
            }
            f746d = true;
        }
        Field field = f745c;
        if (field != null) {
            try {
                WindowInsets windowInsets = (WindowInsets) field.get(null);
                if (windowInsets != null) {
                    return new WindowInsets(windowInsets);
                }
            } catch (ReflectiveOperationException e4) {
                Log.i("WindowInsetsCompat", "Could not get value from WindowInsets.CONSUMED field", e4);
            }
        }
        if (!f) {
            try {
                f747e = WindowInsets.class.getConstructor(Rect.class);
            } catch (ReflectiveOperationException e5) {
                Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets(Rect) constructor", e5);
            }
            f = true;
        }
        Constructor constructor = f747e;
        if (constructor != null) {
            try {
                return (WindowInsets) constructor.newInstance(new Rect());
            } catch (ReflectiveOperationException e6) {
                Log.i("WindowInsetsCompat", "Could not invoke WindowInsets(Rect) constructor", e6);
            }
        }
        return null;
    }

    @Override // c0.c1
    public k1 b() {
        a();
        k1 k1VarG = k1.g(this.f748a, null);
        j1 j1Var = k1VarG.f721a;
        j1Var.l(null);
        j1Var.n(this.b);
        return k1VarG;
    }

    @Override // c0.c1
    public void c(v.c cVar) {
        this.b = cVar;
    }

    @Override // c0.c1
    public void d(v.c cVar) {
        WindowInsets windowInsets = this.f748a;
        if (windowInsets != null) {
            this.f748a = windowInsets.replaceSystemWindowInsets(cVar.f3309a, cVar.b, cVar.f3310c, cVar.f3311d);
        }
    }

    public z0(k1 k1Var) {
        super(k1Var);
        this.f748a = k1Var.f();
    }
}
