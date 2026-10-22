package a1;

import android.car.hardware.CarPropertyValue;
import android.car.hardware.property.CarPropertyManager;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import com.geely.hvacstepperv2.TempStepperService;

/* JADX INFO: loaded from: classes.dex */
public final class u implements CarPropertyManager.CarPropertyEventCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f56a;
    public final /* synthetic */ long b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TempStepperService f57c;

    public /* synthetic */ u(TempStepperService tempStepperService, long j3, int i3) {
        this.f56a = i3;
        this.f57c = tempStepperService;
        this.b = j3;
    }

    private final void a(int i3, int i4) {
    }

    @Override // android.car.hardware.property.CarPropertyManager.CarPropertyEventCallback
    public final void onChangeEvent(CarPropertyValue carPropertyValue) {
        switch (this.f56a) {
            case 0:
                if (carPropertyValue.getPropertyId() == 358614275 && (carPropertyValue.getValue() instanceof Float)) {
                    final float fFloatValue = ((Float) carPropertyValue.getValue()).floatValue();
                    final int areaId = carPropertyValue.getAreaId();
                    TempStepperService tempStepperService = this.f57c;
                    Handler handler = tempStepperService.f1303p;
                    d dVar = tempStepperService.f1304q;
                    Runnable runnable = new Runnable() { // from class: a1.t
                        @Override // java.lang.Runnable
                        public final void run() {
                            TempStepperService tempStepperService2 = this.f54a.f57c;
                            if (areaId == tempStepperService2.f1299l) {
                                float f = tempStepperService2.f1288a;
                                float f3 = fFloatValue;
                                if (f3 < f || f3 > tempStepperService2.b) {
                                    return;
                                }
                                tempStepperService2.f1300m = f3;
                                tempStepperService2.q("cb");
                            }
                        }
                    };
                    dVar.getClass();
                    handler.post(new c(dVar, this.b, runnable, 0));
                    break;
                }
                break;
            default:
                if (carPropertyValue.getPropertyId() == 356517120 && (carPropertyValue.getValue() instanceof Integer)) {
                    final int iIntValue = ((Integer) carPropertyValue.getValue()).intValue();
                    final int areaId2 = carPropertyValue.getAreaId();
                    final long jUptimeMillis = SystemClock.uptimeMillis();
                    TempStepperService tempStepperService2 = this.f57c;
                    Handler handler2 = tempStepperService2.f1303p;
                    d dVar2 = tempStepperService2.f1304q;
                    Runnable runnable2 = new Runnable() { // from class: a1.v
                        @Override // java.lang.Runnable
                        public final void run() {
                            TempStepperService tempStepperService3 = this.f58a.f57c;
                            boolean z2 = tempStepperService3.U;
                            if (z2) {
                                if (jUptimeMillis < tempStepperService3.W) {
                                    return;
                                }
                                int i3 = tempStepperService3.f1310w;
                                if (i3 < 0 || areaId2 == i3) {
                                    if (iIntValue != tempStepperService3.V) {
                                        k kVar = tempStepperService3.X;
                                        boolean z3 = kVar != null || z2;
                                        if (kVar != null) {
                                            tempStepperService3.f1303p.removeCallbacks(kVar);
                                            tempStepperService3.X = null;
                                        }
                                        tempStepperService3.U = false;
                                        tempStepperService3.V = -1;
                                        tempStepperService3.W = 0L;
                                        if (z3) {
                                            Log.i("HvacStepperV2", "Programa ventoinha: ".concat("Alteração manual — temporizador desligado"));
                                            tempStepperService3.m(0, "Alteração manual — temporizador desligado");
                                        }
                                    }
                                }
                            }
                        }
                    };
                    dVar2.getClass();
                    handler2.post(new c(dVar2, this.b, runnable2, 0));
                }
                break;
        }
    }

    @Override // android.car.hardware.property.CarPropertyManager.CarPropertyEventCallback
    public final void onErrorEvent(int i3, int i4) {
        switch (this.f56a) {
            case 0:
                Log.w("HvacStepperV2", String.format("Erro CarProperty propId=0x%x area=0x%x", Integer.valueOf(i3), Integer.valueOf(i4)));
                break;
        }
    }
}
