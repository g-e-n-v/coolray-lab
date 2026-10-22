package kotlinx.coroutines.scheduling;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.locks.LockSupport;

/* JADX INFO: loaded from: classes.dex */
public final class a extends Thread {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f2354h = AtomicIntegerFieldUpdater.newUpdater(a.class, "workerCtl");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final l f2355a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f2356c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f2357d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2358e;
    public boolean f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ b f2359g;
    private volatile int indexInArray;
    private volatile Object nextParkedWorker;
    volatile /* synthetic */ int workerCtl;

    public a(b bVar, int i3) {
        this.f2359g = bVar;
        setDaemon(true);
        this.f2355a = new l();
        this.b = 4;
        this.workerCtl = 0;
        this.nextParkedWorker = b.f2363j;
        j2.a aVar = j2.e.f2328a;
        this.f2358e = j2.e.f2328a.a().nextInt();
        f(i3);
    }

    public final i a(boolean z2) {
        i iVarE;
        i iVarE2;
        long j3;
        i iVarC;
        if (this.b != 1) {
            b bVar = this.f2359g;
            do {
                j3 = bVar.controlState;
                if (((int) ((9223367638808264704L & j3) >> 42)) == 0) {
                    if (z2) {
                        l lVar = this.f2355a;
                        lVar.getClass();
                        iVarC = (i) l.b.getAndSet(lVar, null);
                        if (iVarC == null) {
                            iVarC = lVar.c();
                        }
                        if (iVarC == null) {
                            iVarC = (i) this.f2359g.f2367e.d();
                        }
                    } else {
                        iVarC = (i) this.f2359g.f2367e.d();
                    }
                    return iVarC == null ? i(true) : iVarC;
                }
            } while (!b.f2361h.compareAndSet(bVar, j3, j3 - 4398046511104L));
            this.b = 1;
        }
        if (z2) {
            boolean z3 = d(this.f2359g.f2364a * 2) == 0;
            if (z3 && (iVarE2 = e()) != null) {
                return iVarE2;
            }
            l lVar2 = this.f2355a;
            lVar2.getClass();
            i iVarC2 = (i) l.b.getAndSet(lVar2, null);
            if (iVarC2 == null) {
                iVarC2 = lVar2.c();
            }
            if (iVarC2 != null) {
                return iVarC2;
            }
            if (!z3 && (iVarE = e()) != null) {
                return iVarE;
            }
        } else {
            i iVarE3 = e();
            if (iVarE3 != null) {
                return iVarE3;
            }
        }
        return i(false);
    }

    public final int b() {
        return this.indexInArray;
    }

    public final Object c() {
        return this.nextParkedWorker;
    }

    public final int d(int i3) {
        int i4 = this.f2358e;
        int i5 = i4 ^ (i4 << 13);
        int i6 = i5 ^ (i5 >> 17);
        int i7 = i6 ^ (i6 << 5);
        this.f2358e = i7;
        int i8 = i3 - 1;
        return (i8 & i3) == 0 ? i7 & i8 : (i7 & Integer.MAX_VALUE) % i3;
    }

    public final i e() {
        int iD = d(2);
        b bVar = this.f2359g;
        if (iD == 0) {
            i iVar = (i) bVar.f2366d.d();
            return iVar == null ? (i) bVar.f2367e.d() : iVar;
        }
        i iVar2 = (i) bVar.f2367e.d();
        return iVar2 == null ? (i) bVar.f2366d.d() : iVar2;
    }

    public final void f(int i3) {
        StringBuilder sb = new StringBuilder("DefaultDispatcher-worker-");
        sb.append(i3 == 0 ? "TERMINATED" : String.valueOf(i3));
        setName(sb.toString());
        this.indexInArray = i3;
    }

    public final void g(Object obj) {
        this.nextParkedWorker = obj;
    }

    public final boolean h(int i3) {
        int i4 = this.b;
        boolean z2 = i4 == 1;
        if (z2) {
            b.f2361h.addAndGet(this.f2359g, 4398046511104L);
        }
        if (i4 != i3) {
            this.b = i3;
        }
        return z2;
    }

    public final i i(boolean z2) {
        long jE;
        int i3 = (int) (this.f2359g.controlState & 2097151);
        if (i3 < 2) {
            return null;
        }
        int iD = d(i3);
        b bVar = this.f2359g;
        int i4 = 0;
        long jMin = Long.MAX_VALUE;
        while (i4 < i3) {
            i4++;
            iD++;
            if (iD > i3) {
                iD = 1;
            }
            a aVar = (a) bVar.f.b(iD);
            if (aVar != null && aVar != this) {
                if (z2) {
                    jE = this.f2355a.d(aVar.f2355a);
                } else {
                    l lVar = this.f2355a;
                    l lVar2 = aVar.f2355a;
                    lVar.getClass();
                    i iVarC = lVar2.c();
                    if (iVarC != null) {
                        i iVar = (i) l.b.getAndSet(lVar, iVarC);
                        if (iVar != null) {
                            lVar.a(iVar);
                        }
                        jE = -1;
                    } else {
                        jE = lVar.e(lVar2, false);
                    }
                }
                if (jE == -1) {
                    l lVar3 = this.f2355a;
                    lVar3.getClass();
                    i iVar2 = (i) l.b.getAndSet(lVar3, null);
                    return iVar2 == null ? lVar3.c() : iVar2;
                }
                if (jE > 0) {
                    jMin = Math.min(jMin, jE);
                }
            }
        }
        if (jMin == Long.MAX_VALUE) {
            jMin = 0;
        }
        this.f2357d = jMin;
        return null;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        loop0: while (true) {
            boolean z2 = false;
            while (true) {
                if (this.f2359g.isTerminated() || this.b == 5) {
                    break loop0;
                }
                i iVarA = a(this.f);
                if (iVarA != null) {
                    this.f2357d = 0L;
                    b bVar = this.f2359g;
                    int i3 = iVarA.b.f2371a;
                    this.f2356c = 0L;
                    if (this.b == 3) {
                        this.b = 2;
                    }
                    if (i3 != 0 && h(2) && !bVar.f() && !bVar.e(bVar.controlState)) {
                        bVar.f();
                    }
                    try {
                        iVarA.run();
                    } catch (Throwable th) {
                        Thread threadCurrentThread = Thread.currentThread();
                        threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, th);
                    }
                    if (i3 != 0) {
                        b.f2361h.addAndGet(bVar, -2097152L);
                        if (this.b == 5) {
                            break;
                        }
                        this.b = 4;
                        break;
                    }
                    break;
                }
                this.f = false;
                if (this.f2357d != 0) {
                    if (z2) {
                        h(3);
                        Thread.interrupted();
                        LockSupport.parkNanos(this.f2357d);
                        this.f2357d = 0L;
                        break;
                    }
                    z2 = true;
                } else if (this.nextParkedWorker != b.f2363j) {
                    this.workerCtl = -1;
                    while (this.nextParkedWorker != b.f2363j && this.workerCtl == -1 && !this.f2359g.isTerminated() && this.b != 5) {
                        h(3);
                        Thread.interrupted();
                        if (this.f2356c == 0) {
                            this.f2356c = System.nanoTime() + this.f2359g.f2365c;
                        }
                        LockSupport.parkNanos(this.f2359g.f2365c);
                        if (System.nanoTime() - this.f2356c >= 0) {
                            this.f2356c = 0L;
                            b bVar2 = this.f2359g;
                            synchronized (bVar2.f) {
                                try {
                                    if (!bVar2.isTerminated()) {
                                        if (((int) (bVar2.controlState & 2097151)) > bVar2.f2364a) {
                                            if (f2354h.compareAndSet(this, -1, 1)) {
                                                int i4 = this.indexInArray;
                                                f(0);
                                                bVar2.d(this, i4, 0);
                                                int andDecrement = (int) (b.f2361h.getAndDecrement(bVar2) & 2097151);
                                                if (andDecrement != i4) {
                                                    Object objB = bVar2.f.b(andDecrement);
                                                    i2.g.b(objB);
                                                    a aVar = (a) objB;
                                                    bVar2.f.c(i4, aVar);
                                                    aVar.f(i4);
                                                    bVar2.d(aVar, andDecrement, i4);
                                                }
                                                bVar2.f.c(andDecrement, null);
                                                this.b = 5;
                                            }
                                        }
                                    }
                                } catch (Throwable th2) {
                                    throw th2;
                                }
                            }
                        }
                    }
                } else {
                    this.f2359g.c(this);
                }
            }
        }
        h(5);
    }
}
