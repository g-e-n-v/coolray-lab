package w0;

import android.os.Handler;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.AppPipFloaterService;
import com.ex.auto.R;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3374a;
    public final /* synthetic */ AppPipFloaterService b;

    public /* synthetic */ b0(AppPipFloaterService appPipFloaterService, int i3) {
        this.f3374a = i3;
        this.b = appPipFloaterService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3374a) {
            case 0:
                AppPipFloaterService appPipFloaterService = this.b;
                AppPipFloaterService appPipFloaterService2 = AppPipFloaterService.f769x;
                appPipFloaterService.stopSelf();
                break;
            case 1:
                z3 z3Var = z3.f4608a;
                AppPipFloaterService appPipFloaterService3 = this.b;
                AppPipFloaterService appPipFloaterService4 = AppPipFloaterService.f769x;
                Integer numJ = og.j();
                if ((numJ != null ? z3Var : z3.b) == z3Var) {
                    i2.g.b(numJ);
                    lg lgVarB = og.b(numJ.intValue());
                    ng ngVarF = appPipFloaterService3.f777j;
                    if (ngVarF == null) {
                        ngVarF = og.f();
                    }
                    appPipFloaterService3.f775h.post(new z(appPipFloaterService3, numJ, lgVarB, ngVarF, 0));
                    break;
                }
                break;
            case 2:
                AppPipFloaterService appPipFloaterService5 = this.b;
                AppPipFloaterService appPipFloaterService6 = AppPipFloaterService.f769x;
                appPipFloaterService5.l();
                break;
            case 3:
                AppPipFloaterService appPipFloaterService7 = this.b;
                AppPipFloaterService appPipFloaterService8 = AppPipFloaterService.f769x;
                appPipFloaterService7.l();
                Handler handler = appPipFloaterService7.f775h;
                g0 g0Var = appPipFloaterService7.f789v;
                handler.removeCallbacks(g0Var);
                handler.postDelayed(g0Var, 2000L);
                String string = appPipFloaterService7.getString(R.string.k_pip_fixado_aberto);
                i2.g.d(string, "getString(...)");
                appPipFloaterService7.k(string);
                break;
            case 4:
                AppPipFloaterService appPipFloaterService9 = this.b;
                AppPipFloaterService appPipFloaterService10 = AppPipFloaterService.f769x;
                String string2 = appPipFloaterService9.getString(R.string.k_pip_sem_suporte_fixado);
                i2.g.d(string2, "getString(...)");
                appPipFloaterService9.k(string2);
                break;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                AppPipFloaterService appPipFloaterService11 = this.b;
                AppPipFloaterService appPipFloaterService12 = AppPipFloaterService.f769x;
                appPipFloaterService11.l();
                Handler handler2 = appPipFloaterService11.f775h;
                g0 g0Var2 = appPipFloaterService11.f789v;
                handler2.removeCallbacks(g0Var2);
                handler2.postDelayed(g0Var2, 2000L);
                String string3 = appPipFloaterService11.getString(R.string.k_pip_opened_hint);
                i2.g.d(string3, "getString(...)");
                appPipFloaterService11.k(string3);
                break;
            default:
                AppPipFloaterService appPipFloaterService13 = this.b;
                AppPipFloaterService appPipFloaterService14 = AppPipFloaterService.f769x;
                appPipFloaterService13.l();
                break;
        }
    }
}
