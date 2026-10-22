package kotlinx.coroutines.scheduling;

import java.util.concurrent.Executor;
import p2.o;

/* JADX INFO: loaded from: classes.dex */
public final class c extends o implements Executor {
    public static final c b = new c();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final r2.a f2368c;

    static {
        k kVar = k.b;
        int i3 = r2.h.f3102a;
        if (64 >= i3) {
            i3 = 64;
        }
        int iS = k1.a.S("kotlinx.coroutines.io.parallelism", i3, 12);
        kVar.getClass();
        if (iS < 1) {
            throw new IllegalArgumentException(i2.g.g(Integer.valueOf(iS), "Expected positive parallelism level, but got ").toString());
        }
        f2368c = new r2.a(kVar, iS);
    }

    @Override // p2.c
    public final void a(b2.h hVar, Runnable runnable) {
        f2368c.a(hVar, runnable);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new IllegalStateException("Cannot be invoked on Dispatchers.IO");
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        a(b2.i.f697a, runnable);
    }

    @Override // p2.c
    public final String toString() {
        return "Dispatchers.IO";
    }
}
