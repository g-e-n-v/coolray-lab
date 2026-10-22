package w0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b1 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3375a;
    public final /* synthetic */ f1 b;

    public /* synthetic */ b1(f1 f1Var, int i3) {
        this.f3375a = i3;
        this.b = f1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3375a) {
            case 0:
                this.b.d();
                break;
            default:
                this.b.e();
                break;
        }
    }
}
