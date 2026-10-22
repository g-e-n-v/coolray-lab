package n2;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class a implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicReference f2523a;

    public a(f fVar) {
        this.f2523a = new AtomicReference(fVar);
    }

    @Override // n2.f
    public final Iterator iterator() {
        f fVar = (f) this.f2523a.getAndSet(null);
        if (fVar != null) {
            return fVar.iterator();
        }
        throw new IllegalStateException("This sequence can be consumed only once.");
    }
}
