package w0;

import com.ex.auto.CentralWatchdogService;
import com.ex.auto.MainActivity;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class n1 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3927a;
    public final /* synthetic */ h2.a b;

    public /* synthetic */ n1(h2.a aVar, int i3) {
        this.f3927a = i3;
        this.b = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3927a) {
            case 0:
                this.b.a();
                break;
            case 1:
                h2.a aVar = this.b;
                if (CentralWatchdogService.U2) {
                    aVar.a();
                }
                break;
            case 2:
                this.b.a();
                break;
            default:
                h2.a aVar2 = this.b;
                int i3 = MainActivity.f1002z1;
                aVar2.a();
                break;
        }
    }
}
