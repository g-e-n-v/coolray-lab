package w0;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
public abstract class n3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ExecutorService f3929a;
    public static final ConcurrentHashMap.KeySetView b;

    static {
        ExecutorService executorServiceNewCachedThreadPool = Executors.newCachedThreadPool(new l1(5));
        i2.g.d(executorServiceNewCachedThreadPool, "newCachedThreadPool(...)");
        f3929a = executorServiceNewCachedThreadPool;
        b = ConcurrentHashMap.newKeySet();
    }

    public static void a(h2.a aVar) {
        try {
            f3929a.execute(new n1(aVar, 2));
        } catch (Throwable unused) {
        }
    }

    public static void b(String str, h2.a aVar) {
        ConcurrentHashMap.KeySetView keySetView = b;
        if (keySetView.add(str)) {
            try {
                f3929a.execute(new a1.i(aVar, 10, str));
            } catch (Throwable unused) {
                keySetView.remove(str);
            }
        }
    }
}
