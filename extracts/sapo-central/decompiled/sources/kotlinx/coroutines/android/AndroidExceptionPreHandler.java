package kotlinx.coroutines.android;

import b2.h;
import c.a;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import p2.d;
import p2.e;

/* JADX INFO: loaded from: classes.dex */
@a
public final class AndroidExceptionPreHandler extends b2.a implements e {
    private volatile Object _preHandler;

    public AndroidExceptionPreHandler() {
        super(d.f2705a);
        this._preHandler = this;
    }

    private final Method preHandler() {
        Object obj = this._preHandler;
        if (obj != this) {
            return (Method) obj;
        }
        Method method = null;
        try {
            Method declaredMethod = Thread.class.getDeclaredMethod("getUncaughtExceptionPreHandler", null);
            if (Modifier.isPublic(declaredMethod.getModifiers()) && Modifier.isStatic(declaredMethod.getModifiers())) {
                method = declaredMethod;
            }
        } catch (Throwable unused) {
        }
        this._preHandler = method;
        return method;
    }

    @Override // p2.e
    public void handleException(h hVar, Throwable th) {
    }
}
