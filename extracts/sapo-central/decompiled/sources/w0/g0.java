package w0;

import com.ex.auto.AppPipFloaterService;

/* JADX INFO: loaded from: classes.dex */
public final class g0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3607a;
    public final /* synthetic */ AppPipFloaterService b;

    public /* synthetic */ g0(AppPipFloaterService appPipFloaterService, int i3) {
        this.f3607a = i3;
        this.b = appPipFloaterService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3607a) {
            case 0:
                if (!this.b.f787t) {
                    AppPipFloaterService appPipFloaterService = this.b;
                    if (!appPipFloaterService.j() && !appPipFloaterService.f781n) {
                        new Thread(new b0(appPipFloaterService, 1)).start();
                    }
                    this.b.f775h.postDelayed(this, 4000L);
                    break;
                }
                break;
            default:
                AppPipFloaterService appPipFloaterService2 = this.b;
                mg mgVar = appPipFloaterService2.f776i;
                if (mgVar != null) {
                    n3.a(new h0(mgVar, appPipFloaterService2, this, 0));
                    break;
                }
                break;
        }
    }
}
