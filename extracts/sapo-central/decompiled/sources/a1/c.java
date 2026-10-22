package a1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21a;
    public final /* synthetic */ long b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Runnable f22c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f23d;

    public /* synthetic */ c(Object obj, long j3, Runnable runnable, int i3) {
        this.f21a = i3;
        this.f23d = obj;
        this.b = j3;
        this.f22c = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f21a) {
            case 0:
                d dVar = (d) this.f23d;
                long j3 = this.b;
                Runnable runnable = this.f22c;
                if (dVar.a(j3)) {
                    runnable.run();
                }
                break;
            default:
                d dVar2 = (d) this.f23d;
                long j4 = this.b;
                Runnable runnable2 = this.f22c;
                if (!dVar2.b && dVar2.f24a.get() == j4) {
                    runnable2.run();
                    break;
                }
                break;
        }
    }
}
