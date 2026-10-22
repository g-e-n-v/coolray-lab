package androidx.fragment.app;

import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes.dex */
public final class b0 {
    public static final l.k b = new l.k();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ h0 f399a;

    public b0(h0 h0Var) {
        this.f399a = h0Var;
    }

    public static Class b(ClassLoader classLoader, String str) throws ClassNotFoundException {
        l.k kVar = b;
        l.k kVar2 = (l.k) kVar.getOrDefault(classLoader, null);
        if (kVar2 == null) {
            kVar2 = new l.k();
            kVar.put(classLoader, kVar2);
        }
        Class cls = (Class) kVar2.getOrDefault(str, null);
        if (cls != null) {
            return cls;
        }
        Class<?> cls2 = Class.forName(str, false, classLoader);
        kVar2.put(str, cls2);
        return cls2;
    }

    public static Class c(ClassLoader classLoader, String str) {
        try {
            return b(classLoader, str);
        } catch (ClassCastException e3) {
            throw new q(androidx.activity.result.b.h("Unable to instantiate fragment ", str, ": make sure class is a valid subclass of Fragment"), e3);
        } catch (ClassNotFoundException e4) {
            throw new q(androidx.activity.result.b.h("Unable to instantiate fragment ", str, ": make sure class name exists"), e4);
        }
    }

    public final r a(String str) {
        try {
            return (r) c(this.f399a.f431n.b.getClassLoader(), str).getConstructor(null).newInstance(null);
        } catch (IllegalAccessException e3) {
            throw new q(androidx.activity.result.b.h("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e3);
        } catch (InstantiationException e4) {
            throw new q(androidx.activity.result.b.h("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e4);
        } catch (NoSuchMethodException e5) {
            throw new q(androidx.activity.result.b.h("Unable to instantiate fragment ", str, ": could not find Fragment constructor"), e5);
        } catch (InvocationTargetException e6) {
            throw new q(androidx.activity.result.b.h("Unable to instantiate fragment ", str, ": calling Fragment constructor caused an exception"), e6);
        }
    }
}
