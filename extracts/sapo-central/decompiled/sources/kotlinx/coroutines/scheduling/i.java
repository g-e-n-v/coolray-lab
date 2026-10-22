package kotlinx.coroutines.scheduling;

/* JADX INFO: loaded from: classes.dex */
public final class i implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f2372a;
    public h b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Runnable f2373c;

    public i(Runnable runnable, long j3, h hVar) {
        this.f2372a = j3;
        this.b = hVar;
        this.f2373c = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f2373c.run();
        } finally {
            this.b.getClass();
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Task[");
        Runnable runnable = this.f2373c;
        sb.append(runnable.getClass().getSimpleName());
        sb.append('@');
        sb.append(Integer.toHexString(System.identityHashCode(runnable)));
        sb.append(", ");
        sb.append(this.f2372a);
        sb.append(", ");
        sb.append(this.b);
        sb.append(']');
        return sb.toString();
    }
}
