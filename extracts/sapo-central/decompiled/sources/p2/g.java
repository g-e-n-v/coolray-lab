package p2;

import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.LockSupport;

/* JADX INFO: loaded from: classes.dex */
public final class g extends l implements Runnable {
    private static volatile Thread _thread;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final g f2707c = new g();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final long f2708d;
    private static volatile int debugStatus;

    static {
        Long l3;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        try {
            l3 = Long.getLong("kotlinx.coroutines.DefaultExecutor.keepAlive", 1000L);
        } catch (SecurityException unused) {
            l3 = 1000L;
        }
        f2708d = timeUnit.toNanos(l3.longValue());
    }

    @Override // p2.m
    public final Thread c() {
        Thread thread;
        Thread thread2 = _thread;
        if (thread2 != null) {
            return thread2;
        }
        synchronized (this) {
            thread = _thread;
            if (thread == null) {
                thread = new Thread(this, "kotlinx.coroutines.DefaultExecutor");
                _thread = thread;
                thread.setDaemon(true);
                thread.start();
            }
        }
        return thread;
    }

    @Override // p2.l
    public final void d(r2.a aVar) {
        if (debugStatus == 4) {
            throw new RejectedExecutionException("DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details");
        }
        super.d(aVar);
    }

    public final synchronized void h() {
        int i3 = debugStatus;
        if (i3 == 2 || i3 == 3) {
            debugStatus = 3;
            g();
            notifyAll();
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        q.f2713a.set(this);
        try {
            synchronized (this) {
                int i3 = debugStatus;
                if (i3 == 2 || i3 == 3) {
                    _thread = null;
                    h();
                    if (e()) {
                        return;
                    }
                    c();
                    return;
                }
                debugStatus = 1;
                notifyAll();
                long j3 = Long.MAX_VALUE;
                while (true) {
                    Thread.interrupted();
                    long jF = f();
                    if (jF == Long.MAX_VALUE) {
                        long jNanoTime = System.nanoTime();
                        if (j3 == Long.MAX_VALUE) {
                            j3 = f2708d + jNanoTime;
                        }
                        long j4 = j3 - jNanoTime;
                        if (j4 <= 0) {
                            _thread = null;
                            h();
                            if (e()) {
                                return;
                            }
                            c();
                            return;
                        }
                        if (jF > j4) {
                            jF = j4;
                        }
                    } else {
                        j3 = Long.MAX_VALUE;
                    }
                    if (jF > 0) {
                        int i4 = debugStatus;
                        if (i4 == 2 || i4 == 3) {
                            _thread = null;
                            h();
                            if (e()) {
                                return;
                            }
                            c();
                            return;
                        }
                        LockSupport.parkNanos(this, jF);
                    }
                }
            }
        } catch (Throwable th) {
            _thread = null;
            h();
            if (!e()) {
                c();
            }
            throw th;
        }
    }
}
