package e;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class e0 implements Executor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f1576a = new Object();
    public final ArrayDeque b = new ArrayDeque();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final f0 f1577c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Runnable f1578d;

    public e0(f0 f0Var) {
        this.f1577c = f0Var;
    }

    public final void a() {
        synchronized (this.f1576a) {
            try {
                Runnable runnable = (Runnable) this.b.poll();
                this.f1578d = runnable;
                if (runnable != null) {
                    this.f1577c.execute(runnable);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        synchronized (this.f1576a) {
            try {
                this.b.add(new a1.i(this, 2, runnable));
                if (this.f1578d == null) {
                    a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
