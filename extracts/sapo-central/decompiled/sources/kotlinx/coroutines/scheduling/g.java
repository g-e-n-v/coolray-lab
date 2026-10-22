package kotlinx.coroutines.scheduling;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import p2.o;

/* JADX INFO: loaded from: classes.dex */
public abstract class g extends o {
    public b b;

    @Override // p2.c
    public final void a(b2.h hVar, Runnable runnable) {
        b bVar = this.b;
        AtomicLongFieldUpdater atomicLongFieldUpdater = b.f2360g;
        bVar.b(runnable, j.f);
    }
}
