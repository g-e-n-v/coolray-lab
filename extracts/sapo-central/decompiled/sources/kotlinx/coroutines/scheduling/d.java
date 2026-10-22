package kotlinx.coroutines.scheduling;

/* JADX INFO: loaded from: classes.dex */
public final class d extends g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final d f2369c;

    static {
        int i3 = j.b;
        int i4 = j.f2375c;
        long j3 = j.f2376d;
        d dVar = new d();
        dVar.b = new b(i3, i4, j3);
        f2369c = dVar;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new UnsupportedOperationException("Dispatchers.Default cannot be closed");
    }

    @Override // p2.c
    public final String toString() {
        return "Dispatchers.Default";
    }
}
