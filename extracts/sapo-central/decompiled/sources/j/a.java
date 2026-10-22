package j;

import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
public final class a extends a1.b {
    public static volatile a b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f2294a;

    public static a e0() {
        if (b != null) {
            return b;
        }
        synchronized (a.class) {
            try {
                if (b == null) {
                    a aVar = new a();
                    a aVar2 = new a();
                    aVar2.f2294a = new Object();
                    Executors.newFixedThreadPool(4, new b());
                    aVar.f2294a = aVar2;
                    b = aVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return b;
    }
}
