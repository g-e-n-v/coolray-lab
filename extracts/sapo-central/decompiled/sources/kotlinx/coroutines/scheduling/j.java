package kotlinx.coroutines.scheduling;

import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final long f2374a = k1.a.R("kotlinx.coroutines.scheduler.resolution.ns", 100000, 1, Long.MAX_VALUE);
    public static final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f2375c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final long f2376d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final f f2377e;
    public static final h f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final h f2378g;

    static {
        int i3 = r2.h.f3102a;
        if (i3 < 2) {
            i3 = 2;
        }
        b = k1.a.S("kotlinx.coroutines.scheduler.core.pool.size", i3, 8);
        f2375c = k1.a.S("kotlinx.coroutines.scheduler.max.pool.size", 2097150, 4);
        f2376d = TimeUnit.SECONDS.toNanos(k1.a.R("kotlinx.coroutines.scheduler.keep.alive.sec", 60L, 1L, Long.MAX_VALUE));
        f2377e = f.f2370a;
        f = new h(0);
        f2378g = new h(1);
    }
}
