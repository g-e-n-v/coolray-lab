package q2;

import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {
    private static volatile Choreographer choreographer;

    static {
        Object bVar;
        try {
            bVar = new a(a(Looper.getMainLooper()), false);
        } catch (Throwable th) {
            bVar = new x1.b(th);
        }
        if (bVar instanceof x1.b) {
            bVar = null;
        }
    }

    public static final Handler a(Looper looper) throws IllegalAccessException, InvocationTargetException {
        Object objInvoke = Handler.class.getDeclaredMethod("createAsync", Looper.class).invoke(null, looper);
        if (objInvoke != null) {
            return (Handler) objInvoke;
        }
        throw new NullPointerException("null cannot be cast to non-null type android.os.Handler");
    }
}
