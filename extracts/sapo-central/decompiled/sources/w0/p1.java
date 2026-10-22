package w0;

import android.car.hardware.CarPropertyValue;
import android.car.hardware.property.CarPropertyManager;
import android.os.SystemClock;
import android.util.Log;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final class p1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AtomicInteger f4042a = new AtomicInteger();
    public static final ThreadPoolExecutor b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ThreadPoolExecutor f4043c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final ConcurrentHashMap f4044d;

    static {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(6, 6, 30L, timeUnit, new LinkedBlockingQueue(12), new l1(0));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        b = threadPoolExecutor;
        f4043c = new ThreadPoolExecutor(0, 4, 30L, timeUnit, new SynchronousQueue(), new l1(1));
        f4044d = new ConcurrentHashMap();
    }

    public static Boolean a(CarPropertyManager carPropertyManager, int i3, int i4) {
        i2.g.e(carPropertyManager, "cpm");
        return (Boolean) g(f(carPropertyManager, "bool", i3, i4), 800L, new i1(carPropertyManager, i3, i4, 4));
    }

    public static Float b(CarPropertyManager carPropertyManager, int i3, int i4) {
        i2.g.e(carPropertyManager, "cpm");
        return (Float) g(f(carPropertyManager, "float", i3, i4), 800L, new i1(carPropertyManager, i3, i4, 1));
    }

    public static Integer c(CarPropertyManager carPropertyManager, int i3, int i4) {
        i2.g.e(carPropertyManager, "cpm");
        return (Integer) g(f(carPropertyManager, "int", i3, i4), 800L, new i1(carPropertyManager, i3, i4, 2));
    }

    public static CarPropertyValue d(CarPropertyManager carPropertyManager, int i3, int i4, long j3) {
        i2.g.e(carPropertyManager, "cpm");
        return (CarPropertyValue) g(f(carPropertyManager, "raw:".concat(Integer.class.getName()), i3, i4), j3, new i1(carPropertyManager, i3, i4, 0));
    }

    public static Object e(CarPropertyManager carPropertyManager, int i3, int i4) {
        i2.g.e(carPropertyManager, "cpm");
        return g(f(carPropertyManager, Integer.class.getName(), i3, i4), 800L, new i1(carPropertyManager, i3, i4, 3));
    }

    public static String f(CarPropertyManager carPropertyManager, String str, int i3, int i4) {
        return System.identityHashCode(carPropertyManager) + ':' + str + ':' + i3 + ':' + i4;
    }

    public static Object g(String str, long j3, final h2.a aVar) {
        ConcurrentHashMap concurrentHashMap = f4044d;
        Future futureTask = (Future) concurrentHashMap.get(str);
        if (futureTask == null) {
            futureTask = new FutureTask(new Callable() { // from class: w0.j1
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return aVar.a();
                }
            });
            Future future = (Future) concurrentHashMap.putIfAbsent(str, futureTask);
            if (future == null) {
                try {
                    b.execute(new a1.i(futureTask, 6, str));
                } catch (Throwable unused) {
                    concurrentHashMap.remove(str, futureTask);
                    Log.w("CarProps", "leitura recusada: 6 threads presas e fila cheia");
                    return null;
                }
            } else {
                futureTask = future;
            }
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        try {
            Object obj = futureTask.get(j3, TimeUnit.MILLISECONDS);
            ud.f4348a.c(ud.f4350d, SystemClock.elapsedRealtime() - jElapsedRealtime, false);
            return obj;
        } catch (TimeoutException unused2) {
            Log.w("CarProps", "leitura estourou " + j3 + "ms — devolvendo null (binder possivelmente preso)");
            ud.f4348a.c(ud.f4350d, SystemClock.elapsedRealtime() - jElapsedRealtime, true);
            return null;
        } catch (Throwable unused3) {
            ud.f4348a.c(ud.f4350d, SystemClock.elapsedRealtime() - jElapsedRealtime, false);
            return null;
        }
    }

    public static final boolean h(CarPropertyManager carPropertyManager, int i3, boolean z2) {
        i2.g.e(carPropertyManager, "cpm");
        return i(carPropertyManager, 354419978, i3, z2);
    }

    public static boolean i(final CarPropertyManager carPropertyManager, final int i3, final int i4, final boolean z2) {
        i2.g.e(carPropertyManager, "cpm");
        return n(m("bool", i3, i4), new h2.a() { // from class: w0.h1
            @Override // h2.a
            public final Object a() {
                carPropertyManager.setBooleanProperty(i3, i4, z2);
                return x1.e.f4647c;
            }
        });
    }

    public static boolean j(final CarPropertyManager carPropertyManager, final int i3, final int i4, final float f) {
        i2.g.e(carPropertyManager, "cpm");
        return n(m("float", i3, i4), new h2.a() { // from class: w0.o1
            @Override // h2.a
            public final Object a() {
                carPropertyManager.setFloatProperty(i3, i4, f);
                return x1.e.f4647c;
            }
        });
    }

    public static final boolean k(CarPropertyManager carPropertyManager, int i3, int i4, int i5) {
        i2.g.e(carPropertyManager, "cpm");
        return l(carPropertyManager, i3, i4, i5);
    }

    public static boolean l(final CarPropertyManager carPropertyManager, final int i3, final int i4, final int i5) {
        i2.g.e(carPropertyManager, "cpm");
        return n(m("int", i3, i4), new h2.a() { // from class: w0.m1
            @Override // h2.a
            public final Object a() {
                carPropertyManager.setIntProperty(i3, i4, i5);
                return x1.e.f4647c;
            }
        });
    }

    public static String m(String str, int i3, int i4) {
        return str + " 0x" + Integer.toHexString(i3) + " area=0x" + Integer.toHexString(i4);
    }

    public static boolean n(String str, h2.a aVar) {
        String simpleName;
        try {
            Future<?> futureSubmit = f4043c.submit(new n1(aVar, 0));
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            try {
                futureSubmit.get(2000L, TimeUnit.MILLISECONDS);
                ud.f4348a.c(ud.f4350d, SystemClock.elapsedRealtime() - jElapsedRealtime, false);
                return true;
            } catch (ExecutionException e3) {
                StringBuilder sbL = androidx.activity.result.b.l("escrita falhou (", str, "): ");
                Throwable cause = e3.getCause();
                if (cause == null || (simpleName = cause.getMessage()) == null) {
                    Throwable cause2 = e3.getCause();
                    simpleName = cause2 != null ? cause2.getClass().getSimpleName() : null;
                }
                sbL.append(simpleName);
                Log.w("CarProps", sbL.toString());
                ud.f4348a.c(ud.f4350d, SystemClock.elapsedRealtime() - jElapsedRealtime, false);
                return false;
            } catch (TimeoutException unused) {
                Log.w("CarProps", "escrita estourou 2000ms (" + str + ") — fila liberada, binder possivelmente preso");
                ud.f4348a.c(ud.f4350d, SystemClock.elapsedRealtime() - jElapsedRealtime, true);
                return false;
            } catch (Throwable unused2) {
                return false;
            }
        } catch (Throwable unused3) {
            Log.w("CarProps", "escrita recusada (" + str + "): 4 escritores presos");
            return false;
        }
    }
}
