package a1;

import android.util.Log;
import com.geely.hvacstepperv2.TempStepperService;
import w0.p1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f27a;
    public final /* synthetic */ TempStepperService b;

    public /* synthetic */ f(TempStepperService tempStepperService, int i3) {
        this.f27a = i3;
        this.b = tempStepperService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i3 = this.f27a;
        TempStepperService tempStepperService = this.b;
        switch (i3) {
            case 0:
                int[] iArr = TempStepperService.f1285c0;
                tempStepperService.l(0.5f);
                break;
            case 1:
                q qVar = tempStepperService.E;
                if (tempStepperService.f1298k == null) {
                    tempStepperService.m(0, "CarService não disponível");
                } else if (!tempStepperService.f1307t) {
                    tempStepperService.a();
                    if (tempStepperService.f1308u && tempStepperService.f1309v >= 0) {
                        tempStepperService.D = false;
                        tempStepperService.f1307t = true;
                        tempStepperService.f1312y = -1;
                        tempStepperService.f1303p.removeCallbacks(qVar);
                        tempStepperService.f1303p.post(qVar);
                        tempStepperService.m(0, "AUTO: ventoinha conforme sensor cabina");
                    } else if (tempStepperService.c()) {
                        boolean zH = p1.h(tempStepperService.f1298k, tempStepperService.f1299l, true);
                        if (zH) {
                            Log.i("HvacStepperV2", "AUTO OEM: HVAC_AUTO_ON=true");
                        } else if (tempStepperService.c() && (zH = p1.h(tempStepperService.f1298k, 0, true))) {
                            Log.i("HvacStepperV2", "AUTO OEM: HVAC_AUTO_ON=true (area global)");
                        }
                        if (!zH) {
                            Log.e("HvacStepperV2", "AUTO indisponível: HAL não aceitou HVAC_AUTO_ON em nenhuma área");
                            tempStepperService.m(1, "AUTO indisponível (sensor e OEM não responderam)");
                        } else {
                            tempStepperService.D = true;
                            tempStepperService.f1307t = true;
                            tempStepperService.m(0, "AUTO: modo climatização do sistema");
                        }
                        break;
                    }
                    tempStepperService.p();
                    tempStepperService.q("init");
                } else {
                    tempStepperService.n();
                    tempStepperService.p();
                    tempStepperService.q("init");
                }
                break;
            case 2:
                int[] iArr2 = TempStepperService.f1285c0;
                tempStepperService.l(-0.5f);
                break;
            default:
                int[] iArr3 = TempStepperService.f1285c0;
                tempStepperService.b();
                break;
        }
    }
}
