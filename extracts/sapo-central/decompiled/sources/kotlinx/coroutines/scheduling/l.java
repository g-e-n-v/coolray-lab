package kotlinx.coroutines.scheduling;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: loaded from: classes.dex */
public final class l {
    public static final /* synthetic */ AtomicReferenceFieldUpdater b = AtomicReferenceFieldUpdater.newUpdater(l.class, Object.class, "lastScheduledTask");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f2379c = AtomicIntegerFieldUpdater.newUpdater(l.class, "producerIndex");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f2380d = AtomicIntegerFieldUpdater.newUpdater(l.class, "consumerIndex");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f2381e = AtomicIntegerFieldUpdater.newUpdater(l.class, "blockingTasksInBuffer");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicReferenceArray f2382a = new AtomicReferenceArray(128);
    private volatile /* synthetic */ Object lastScheduledTask = null;
    private volatile /* synthetic */ int producerIndex = 0;
    private volatile /* synthetic */ int consumerIndex = 0;
    private volatile /* synthetic */ int blockingTasksInBuffer = 0;

    public final i a(i iVar) {
        if (iVar.b.f2371a == 1) {
            f2381e.incrementAndGet(this);
        }
        if (this.producerIndex - this.consumerIndex == 127) {
            return iVar;
        }
        int i3 = this.producerIndex & 127;
        while (this.f2382a.get(i3) != null) {
            Thread.yield();
        }
        this.f2382a.lazySet(i3, iVar);
        f2379c.incrementAndGet(this);
        return null;
    }

    public final int b() {
        return this.lastScheduledTask != null ? (this.producerIndex - this.consumerIndex) + 1 : this.producerIndex - this.consumerIndex;
    }

    public final i c() {
        i iVar;
        while (true) {
            int i3 = this.consumerIndex;
            if (i3 - this.producerIndex == 0) {
                return null;
            }
            int i4 = i3 & 127;
            if (f2380d.compareAndSet(this, i3, i3 + 1) && (iVar = (i) this.f2382a.getAndSet(i4, null)) != null) {
                if (iVar.b.f2371a == 1) {
                    f2381e.decrementAndGet(this);
                }
                return iVar;
            }
        }
    }

    public final long d(l lVar) {
        int i3 = lVar.producerIndex;
        AtomicReferenceArray atomicReferenceArray = lVar.f2382a;
        for (int i4 = lVar.consumerIndex; i4 != i3; i4++) {
            int i5 = i4 & 127;
            if (lVar.blockingTasksInBuffer == 0) {
                break;
            }
            i iVar = (i) atomicReferenceArray.get(i5);
            if (iVar != null && iVar.b.f2371a == 1) {
                do {
                    if (atomicReferenceArray.compareAndSet(i5, iVar, null)) {
                        f2381e.decrementAndGet(lVar);
                        i iVar2 = (i) b.getAndSet(this, iVar);
                        if (iVar2 == null) {
                            return -1L;
                        }
                        a(iVar2);
                        return -1L;
                    }
                } while (atomicReferenceArray.get(i5) == iVar);
            }
        }
        return e(lVar, true);
    }

    public final long e(l lVar, boolean z2) {
        while (true) {
            i iVar = (i) lVar.lastScheduledTask;
            if (iVar == null) {
                return -2L;
            }
            if (z2 && iVar.b.f2371a != 1) {
                return -2L;
            }
            j.f2377e.getClass();
            long jNanoTime = System.nanoTime() - iVar.f2372a;
            long j3 = j.f2374a;
            if (jNanoTime < j3) {
                return j3 - jNanoTime;
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = b;
            do {
                if (atomicReferenceFieldUpdater.compareAndSet(lVar, iVar, null)) {
                    i iVar2 = (i) b.getAndSet(this, iVar);
                    if (iVar2 == null) {
                        return -1L;
                    }
                    a(iVar2);
                    return -1L;
                }
            } while (atomicReferenceFieldUpdater.get(lVar) == iVar);
        }
    }
}
