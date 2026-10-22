package p2;

/* JADX INFO: loaded from: classes.dex */
public final class j extends RuntimeException {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b2.i f2710a = b2.i.f697a;

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    @Override // java.lang.Throwable
    public final String getLocalizedMessage() {
        this.f2710a.getClass();
        return "EmptyCoroutineContext";
    }
}
