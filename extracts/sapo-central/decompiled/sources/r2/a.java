package r2;

import p2.i;

/* JADX INFO: loaded from: classes.dex */
public final class a extends p2.c implements Runnable, i {
    public final p2.c b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f3091c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final b f3092d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f3093e;
    private volatile int runningWorkers;

    /* JADX WARN: Multi-variable type inference failed */
    public a(p2.c cVar, int i3) {
        this.b = cVar;
        this.f3091c = i3;
        if ((cVar instanceof i ? (i) cVar : null) == null) {
            int i4 = p2.h.f2709a;
        }
        this.f3092d = new b();
        this.f3093e = new Object();
    }

    @Override // p2.c
    public final void a(b2.h hVar, Runnable runnable) {
        this.f3092d.a(runnable);
        if (this.runningWorkers >= this.f3091c) {
            return;
        }
        synchronized (this.f3093e) {
            if (this.runningWorkers >= this.f3091c) {
                return;
            }
            this.runningWorkers++;
            this.b.a(this, this);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        while (true) {
            int i3 = 0;
            while (true) {
                Runnable runnable = (Runnable) this.f3092d.d();
                if (runnable != null) {
                    try {
                        runnable.run();
                    } catch (Throwable th) {
                        p2.f.a(th);
                    }
                    i3++;
                    if (i3 >= 16 && this.b.b()) {
                        this.b.a(this, this);
                        return;
                    }
                }
            }
            synchronized (this.f3093e) {
                this.runningWorkers--;
                if (this.f3092d.c() == 0) {
                    return;
                } else {
                    this.runningWorkers++;
                }
            }
        }
    }
}
