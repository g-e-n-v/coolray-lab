package kotlinx.coroutines.scheduling;

import androidx.emoji2.text.m;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.LockSupport;

/* JADX INFO: loaded from: classes.dex */
public final class b implements Executor, Closeable {
    private volatile /* synthetic */ int _isTerminated;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f2364a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f2365c;
    volatile /* synthetic */ long controlState;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final e f2366d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final e f2367e;
    public final r2.g f;
    private volatile /* synthetic */ long parkedWorkersStack;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final m f2363j = new m(24, "NOT_IN_STACK");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ AtomicLongFieldUpdater f2360g = AtomicLongFieldUpdater.newUpdater(b.class, "parkedWorkersStack");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ AtomicLongFieldUpdater f2361h = AtomicLongFieldUpdater.newUpdater(b.class, "controlState");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f2362i = AtomicIntegerFieldUpdater.newUpdater(b.class, "_isTerminated");

    public b(int i3, int i4, long j3) {
        this.f2364a = i3;
        this.b = i4;
        this.f2365c = j3;
        if (i3 < 1) {
            throw new IllegalArgumentException(("Core pool size " + i3 + " should be at least 1").toString());
        }
        if (i4 < i3) {
            throw new IllegalArgumentException(androidx.activity.result.b.f(i4, i3, "Max pool size ", " should be greater than or equals to core pool size ").toString());
        }
        if (i4 > 2097150) {
            throw new IllegalArgumentException(("Max pool size " + i4 + " should not exceed maximal supported number of threads 2097150").toString());
        }
        if (j3 <= 0) {
            throw new IllegalArgumentException(("Idle worker keep alive time " + j3 + " must be positive").toString());
        }
        this.f2366d = new e();
        this.f2367e = new e();
        this.parkedWorkersStack = 0L;
        this.f = new r2.g(i3 + 1);
        this.controlState = ((long) i3) << 42;
        this._isTerminated = 0;
    }

    public final int a() {
        synchronized (this.f) {
            if (this._isTerminated != 0) {
                return -1;
            }
            long j3 = this.controlState;
            int i3 = (int) (j3 & 2097151);
            int i4 = i3 - ((int) ((j3 & 4398044413952L) >> 21));
            if (i4 < 0) {
                i4 = 0;
            }
            if (i4 >= this.f2364a) {
                return 0;
            }
            if (i3 >= this.b) {
                return 0;
            }
            int i5 = ((int) (this.controlState & 2097151)) + 1;
            if (i5 <= 0 || this.f.b(i5) != null) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            a aVar = new a(this, i5);
            this.f.c(i5, aVar);
            if (i5 != ((int) (2097151 & f2361h.incrementAndGet(this)))) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            aVar.start();
            return i4 + 1;
        }
    }

    public final void b(Runnable runnable, h hVar) {
        i iVar;
        int i3;
        j.f2377e.getClass();
        long jNanoTime = System.nanoTime();
        if (runnable instanceof i) {
            iVar = (i) runnable;
            iVar.f2372a = jNanoTime;
            iVar.b = hVar;
        } else {
            iVar = new i(runnable, jNanoTime, hVar);
        }
        Thread threadCurrentThread = Thread.currentThread();
        i iVarA = null;
        a aVar = threadCurrentThread instanceof a ? (a) threadCurrentThread : null;
        if (aVar == null || !i2.g.a(aVar.f2359g, this)) {
            aVar = null;
        }
        if (aVar == null || (i3 = aVar.b) == 5 || (iVar.b.f2371a == 0 && i3 == 2)) {
            iVarA = iVar;
        } else {
            aVar.f = true;
            l lVar = aVar.f2355a;
            lVar.getClass();
            i iVar2 = (i) l.b.getAndSet(lVar, iVar);
            if (iVar2 != null) {
                iVarA = lVar.a(iVar2);
            }
        }
        if (iVarA != null) {
            if (!(iVarA.b.f2371a == 1 ? this.f2367e.a(iVarA) : this.f2366d.a(iVarA))) {
                throw new RejectedExecutionException(i2.g.g(" was terminated", "DefaultDispatcher"));
            }
        }
        if (iVar.b.f2371a == 0) {
            if (f() || e(this.controlState)) {
                return;
            }
            f();
            return;
        }
        long jAddAndGet = f2361h.addAndGet(this, 2097152L);
        if (f() || e(jAddAndGet)) {
            return;
        }
        f();
    }

    public final void c(a aVar) {
        long j3;
        int iB;
        if (aVar.c() != f2363j) {
            return;
        }
        do {
            j3 = this.parkedWorkersStack;
            iB = aVar.b();
            aVar.g(this.f.b((int) (2097151 & j3)));
        } while (!f2360g.compareAndSet(this, j3, ((long) iB) | ((2097152 + j3) & (-2097152))));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws InterruptedException {
        int i3;
        if (f2362i.compareAndSet(this, 0, 1)) {
            Thread threadCurrentThread = Thread.currentThread();
            a aVar = threadCurrentThread instanceof a ? (a) threadCurrentThread : null;
            if (aVar == null || !i2.g.a(aVar.f2359g, this)) {
                aVar = null;
            }
            synchronized (this.f) {
                i3 = (int) (this.controlState & 2097151);
            }
            if (1 <= i3) {
                int i4 = 1;
                while (true) {
                    int i5 = i4 + 1;
                    Object objB = this.f.b(i4);
                    i2.g.b(objB);
                    a aVar2 = (a) objB;
                    if (aVar2 != aVar) {
                        while (aVar2.isAlive()) {
                            LockSupport.unpark(aVar2);
                            aVar2.join(10000L);
                        }
                        l lVar = aVar2.f2355a;
                        e eVar = this.f2367e;
                        lVar.getClass();
                        i iVar = (i) l.b.getAndSet(lVar, null);
                        if (iVar != null) {
                            eVar.a(iVar);
                        }
                        while (true) {
                            i iVarC = lVar.c();
                            if (iVarC == null) {
                                break;
                            } else {
                                eVar.a(iVarC);
                            }
                        }
                    }
                    if (i4 == i3) {
                        break;
                    } else {
                        i4 = i5;
                    }
                }
            }
            this.f2367e.b();
            this.f2366d.b();
            while (true) {
                i iVarA = aVar == null ? null : aVar.a(true);
                if (iVarA == null && (iVarA = (i) this.f2366d.d()) == null && (iVarA = (i) this.f2367e.d()) == null) {
                    break;
                }
                try {
                    iVarA.run();
                } catch (Throwable th) {
                    Thread threadCurrentThread2 = Thread.currentThread();
                    threadCurrentThread2.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread2, th);
                }
            }
            if (aVar != null) {
                aVar.h(5);
            }
            this.parkedWorkersStack = 0L;
            this.controlState = 0L;
        }
    }

    public final void d(a aVar, int i3, int i4) {
        while (true) {
            long j3 = this.parkedWorkersStack;
            int i5 = (int) (2097151 & j3);
            long j4 = (2097152 + j3) & (-2097152);
            if (i5 == i3) {
                if (i4 == 0) {
                    Object objC = aVar.c();
                    while (true) {
                        if (objC == f2363j) {
                            i5 = -1;
                            break;
                        }
                        if (objC == null) {
                            i5 = 0;
                            break;
                        }
                        a aVar2 = (a) objC;
                        int iB = aVar2.b();
                        if (iB != 0) {
                            i5 = iB;
                            break;
                        }
                        objC = aVar2.c();
                    }
                } else {
                    i5 = i4;
                }
            }
            if (i5 >= 0) {
                if (f2360g.compareAndSet(this, j3, j4 | ((long) i5))) {
                    return;
                }
            }
        }
    }

    public final boolean e(long j3) {
        int i3 = ((int) (2097151 & j3)) - ((int) ((j3 & 4398044413952L) >> 21));
        if (i3 < 0) {
            i3 = 0;
        }
        int i4 = this.f2364a;
        if (i3 < i4) {
            int iA = a();
            if (iA == 1 && i4 > 1) {
                a();
            }
            if (iA > 0) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        b(runnable, j.f);
    }

    public final boolean f() {
        m mVar;
        int iB;
        while (true) {
            long j3 = this.parkedWorkersStack;
            a aVar = (a) this.f.b((int) (2097151 & j3));
            if (aVar == null) {
                aVar = null;
            } else {
                long j4 = (2097152 + j3) & (-2097152);
                Object objC = aVar.c();
                while (true) {
                    mVar = f2363j;
                    if (objC == mVar) {
                        iB = -1;
                        break;
                    }
                    if (objC == null) {
                        iB = 0;
                        break;
                    }
                    a aVar2 = (a) objC;
                    iB = aVar2.b();
                    if (iB != 0) {
                        break;
                    }
                    objC = aVar2.c();
                }
                if (iB >= 0 && f2360g.compareAndSet(this, j3, ((long) iB) | j4)) {
                    aVar.g(mVar);
                }
            }
            if (aVar == null) {
                return false;
            }
            if (a.f2354h.compareAndSet(aVar, -1, 0)) {
                LockSupport.unpark(aVar);
                return true;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [boolean, int] */
    public final boolean isTerminated() {
        return this._isTerminated;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        int iA = this.f.a();
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 1;
        while (i8 < iA) {
            int i9 = i8 + 1;
            a aVar = (a) this.f.b(i8);
            if (aVar != null) {
                int iB = aVar.f2355a.b();
                int iB2 = n.g.b(aVar.b);
                if (iB2 == 0) {
                    i3++;
                    StringBuilder sb = new StringBuilder();
                    sb.append(iB);
                    sb.append('c');
                    arrayList.add(sb.toString());
                } else if (iB2 == 1) {
                    i4++;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(iB);
                    sb2.append('b');
                    arrayList.add(sb2.toString());
                } else if (iB2 == 2) {
                    i5++;
                } else if (iB2 == 3) {
                    i6++;
                    if (iB > 0) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(iB);
                        sb3.append('d');
                        arrayList.add(sb3.toString());
                    }
                } else if (iB2 == 4) {
                    i7++;
                }
            }
            i8 = i9;
        }
        long j3 = this.controlState;
        return "DefaultDispatcher@" + Integer.toHexString(System.identityHashCode(this)) + "[Pool Size {core = " + this.f2364a + ", max = " + this.b + "}, Worker States {CPU = " + i3 + ", blocking = " + i4 + ", parked = " + i5 + ", dormant = " + i6 + ", terminated = " + i7 + "}, running workers queues = " + arrayList + ", global CPU queue size = " + this.f2366d.c() + ", global blocking queue size = " + this.f2367e.c() + ", Control State {created workers= " + ((int) (2097151 & j3)) + ", blocking tasks = " + ((int) ((4398044413952L & j3) >> 21)) + ", CPUs acquired = " + (this.f2364a - ((int) ((9223367638808264704L & j3) >> 42))) + "}]";
    }
}
