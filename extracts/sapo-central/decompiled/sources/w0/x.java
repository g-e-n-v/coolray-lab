package w0;

import com.ex.auto.AppPipFloaterService;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class x implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4481a;
    public final /* synthetic */ y3 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ mg f4482c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Integer f4483d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AppPipFloaterService f4484e;

    public /* synthetic */ x(y3 y3Var, mg mgVar, Integer num, AppPipFloaterService appPipFloaterService, int i3) {
        this.f4481a = i3;
        this.b = y3Var;
        this.f4482c = mgVar;
        this.f4483d = num;
        this.f4484e = appPipFloaterService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean zE = true;
        switch (this.f4481a) {
            case 0:
                y3 y3Var = this.b;
                mg mgVar = this.f4482c;
                Integer num = this.f4483d;
                AppPipFloaterService appPipFloaterService = this.f4484e;
                AppPipFloaterService appPipFloaterService2 = AppPipFloaterService.f769x;
                int iOrdinal = y3Var.ordinal();
                if (iOrdinal == 0) {
                    o2.h hVar = og.f4025a;
                    i2.g.b(mgVar);
                    og.c(mgVar);
                } else if (iOrdinal == 1) {
                    o2.h hVar2 = og.f4025a;
                    i2.g.b(num);
                    og.e(num.intValue());
                } else if (iOrdinal != 2) {
                    throw new androidx.fragment.app.q();
                }
                appPipFloaterService.f776i = null;
                appPipFloaterService.f788u = null;
                appPipFloaterService.f778k = null;
                appPipFloaterService.f775h.post(new b0(appPipFloaterService, 0));
                return;
            default:
                y3 y3Var2 = this.b;
                mg mgVar2 = this.f4482c;
                Integer num2 = this.f4483d;
                AppPipFloaterService appPipFloaterService3 = this.f4484e;
                AppPipFloaterService appPipFloaterService4 = AppPipFloaterService.f769x;
                int iOrdinal2 = y3Var2.ordinal();
                if (iOrdinal2 == 0) {
                    o2.h hVar3 = og.f4025a;
                    i2.g.b(mgVar2);
                    og.c(mgVar2);
                } else if (iOrdinal2 == 1) {
                    o2.h hVar4 = og.f4025a;
                    i2.g.b(num2);
                    zE = og.e(num2.intValue());
                } else {
                    if (iOrdinal2 != 2) {
                        throw new androidx.fragment.app.q();
                    }
                    zE = false;
                }
                if (zE) {
                    appPipFloaterService3.f776i = null;
                    appPipFloaterService3.f788u = null;
                    appPipFloaterService3.f778k = null;
                }
                appPipFloaterService3.f781n = false;
                appPipFloaterService3.f775h.post(new d0(appPipFloaterService3, zE, 0));
                return;
        }
    }
}
