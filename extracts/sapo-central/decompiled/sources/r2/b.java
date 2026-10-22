package r2;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f3094a = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "_cur");
    private volatile /* synthetic */ Object _cur = new d(8, false);

    public final boolean a(Runnable runnable) {
        while (true) {
            d dVar = (d) this._cur;
            int iA = dVar.a(runnable);
            if (iA == 0) {
                return true;
            }
            if (iA == 1) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f3094a;
                d dVarE = dVar.e();
                while (!atomicReferenceFieldUpdater.compareAndSet(this, dVar, dVarE) && atomicReferenceFieldUpdater.get(this) == dVar) {
                }
            } else if (iA == 2) {
                return false;
            }
        }
    }

    public final void b() {
        while (true) {
            d dVar = (d) this._cur;
            if (dVar.b()) {
                return;
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f3094a;
            d dVarE = dVar.e();
            while (!atomicReferenceFieldUpdater.compareAndSet(this, dVar, dVarE) && atomicReferenceFieldUpdater.get(this) == dVar) {
            }
        }
    }

    public final int c() {
        return ((d) this._cur).c();
    }

    public final Object d() {
        while (true) {
            d dVar = (d) this._cur;
            Object objF = dVar.f();
            if (objF != d.f3097g) {
                return objF;
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f3094a;
            d dVarE = dVar.e();
            while (!atomicReferenceFieldUpdater.compareAndSet(this, dVar, dVarE) && atomicReferenceFieldUpdater.get(this) == dVar) {
            }
        }
    }
}
