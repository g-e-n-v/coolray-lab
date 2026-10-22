package p2;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;

/* JADX INFO: loaded from: classes.dex */
public abstract class l extends m implements i {
    public static final /* synthetic */ AtomicReferenceFieldUpdater b = AtomicReferenceFieldUpdater.newUpdater(l.class, Object.class, "_queue");
    private volatile /* synthetic */ Object _queue = null;
    private volatile /* synthetic */ Object _delayed = null;
    private volatile /* synthetic */ int _isCompleted = 0;

    static {
        AtomicReferenceFieldUpdater.newUpdater(l.class, Object.class, "_delayed");
    }

    @Override // p2.c
    public final void a(b2.h hVar, Runnable runnable) {
        d((r2.a) runnable);
    }

    public void d(r2.a aVar) {
        loop0: while (true) {
            Object obj = this._queue;
            if (this._isCompleted == 0) {
                if (obj == null) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = b;
                    do {
                        if (atomicReferenceFieldUpdater.compareAndSet(this, null, aVar)) {
                            break loop0;
                        }
                    } while (atomicReferenceFieldUpdater.get(this) == null);
                } else if (obj instanceof r2.d) {
                    r2.d dVar = (r2.d) obj;
                    int iA = dVar.a(aVar);
                    if (iA == 0) {
                        break;
                    }
                    if (iA == 1) {
                        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = b;
                        r2.d dVarE = dVar.e();
                        while (!atomicReferenceFieldUpdater2.compareAndSet(this, obj, dVarE) && atomicReferenceFieldUpdater2.get(this) == obj) {
                        }
                    } else if (iA != 2) {
                    }
                } else if (obj != n.f2712a) {
                    r2.d dVar2 = new r2.d(8, true);
                    dVar2.a((Runnable) obj);
                    dVar2.a(aVar);
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3 = b;
                    do {
                        if (atomicReferenceFieldUpdater3.compareAndSet(this, obj, dVar2)) {
                            break loop0;
                        }
                    } while (atomicReferenceFieldUpdater3.get(this) == obj);
                }
            }
            g.f2707c.d(aVar);
            return;
        }
        Thread threadC = c();
        if (Thread.currentThread() != threadC) {
            LockSupport.unpark(threadC);
        }
    }

    public final boolean e() {
        if (this._delayed != null) {
            throw new ClassCastException();
        }
        Object obj = this._queue;
        if (obj == null) {
            return true;
        }
        if (obj instanceof r2.d) {
            return ((r2.d) obj).d();
        }
        return obj == n.f2712a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0058, code lost:
    
        if (((r2.d) r1).d() == false) goto L45;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long f() {
        /*
            r5 = this;
            androidx.emoji2.text.m r0 = p2.n.f2712a
            java.lang.Object r1 = r5._delayed
            if (r1 != 0) goto L76
        L6:
            java.lang.Object r1 = r5._queue
            r2 = 0
            if (r1 != 0) goto Lc
            goto L41
        Lc:
            boolean r3 = r1 instanceof r2.d
            if (r3 == 0) goto L33
            r2 = r1
            r2.d r2 = (r2.d) r2
            java.lang.Object r3 = r2.f()
            androidx.emoji2.text.m r4 = r2.d.f3097g
            if (r3 == r4) goto L1f
            r2 = r3
            java.lang.Runnable r2 = (java.lang.Runnable) r2
            goto L41
        L1f:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r3 = p2.l.b
            r2.d r4 = r2.e()
        L25:
            boolean r2 = r3.compareAndSet(r5, r1, r4)
            if (r2 == 0) goto L2c
            goto L6
        L2c:
            java.lang.Object r2 = r3.get(r5)
            if (r2 == r1) goto L25
            goto L6
        L33:
            if (r1 != r0) goto L36
            goto L41
        L36:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r3 = p2.l.b
        L38:
            boolean r4 = r3.compareAndSet(r5, r1, r2)
            if (r4 == 0) goto L6f
            r2 = r1
            java.lang.Runnable r2 = (java.lang.Runnable) r2
        L41:
            r3 = 0
            if (r2 == 0) goto L49
            r2.run()
            return r3
        L49:
            java.lang.Object r1 = r5._queue
            if (r1 != 0) goto L4e
            goto L5b
        L4e:
            boolean r2 = r1 instanceof r2.d
            if (r2 == 0) goto L66
            r2.d r1 = (r2.d) r1
            boolean r0 = r1.d()
            if (r0 != 0) goto L5b
            goto L6e
        L5b:
            java.lang.Object r0 = r5._delayed
            if (r0 != 0) goto L60
            goto L68
        L60:
            java.lang.ClassCastException r0 = new java.lang.ClassCastException
            r0.<init>()
            throw r0
        L66:
            if (r1 != r0) goto L6e
        L68:
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            return r0
        L6e:
            return r3
        L6f:
            java.lang.Object r4 = r3.get(r5)
            if (r4 == r1) goto L38
            goto L6
        L76:
            java.lang.ClassCastException r0 = new java.lang.ClassCastException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p2.l.f():long");
    }

    public final void g() {
        this._queue = null;
        this._delayed = null;
    }
}
