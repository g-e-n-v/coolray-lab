package a1;

import android.car.hardware.CarPropertyValue;
import android.car.hardware.property.CarPropertyManager;
import android.util.Log;
import android.view.View;
import android.view.WindowManager;
import com.geely.hvacstepperv2.TempStepperService;
import w0.p1;

/* JADX INFO: loaded from: classes.dex */
public final class q implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f51a;
    public final /* synthetic */ TempStepperService b;

    public /* synthetic */ q(TempStepperService tempStepperService, int i3) {
        this.f51a = i3;
        this.b = tempStepperService;
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00d1  */
    @Override // java.lang.Runnable
    public final void run() {
        CarPropertyManager carPropertyManager;
        int i3;
        boolean z2;
        int i4;
        Float fI;
        int i5;
        int i6 = this.f51a;
        int iMin = 1;
        TempStepperService tempStepperService = this.b;
        switch (i6) {
            case 0:
                int[] iArr = TempStepperService.f1285c0;
                if (tempStepperService.c() && tempStepperService.f1307t) {
                    if (tempStepperService.c() && (carPropertyManager = tempStepperService.f1298k) != null && tempStepperService.f1307t && !tempStepperService.D && !tempStepperService.U && tempStepperService.f1308u && (i3 = tempStepperService.f1309v) >= 0) {
                        try {
                            float floatProperty = carPropertyManager.getFloatProperty(358614274, i3);
                            tempStepperService.f1313z = floatProperty;
                            float f = tempStepperService.f1300m;
                            float fAbs = Math.abs(f - floatProperty);
                            int iMax = Math.max(1, tempStepperService.f1311x);
                            if (fAbs > 0.35f) {
                                if (fAbs <= 0.7f) {
                                    iMin = Math.min(2, iMax);
                                } else if (fAbs <= 1.2f) {
                                    iMin = Math.min(3, iMax);
                                } else if (fAbs <= 2.0f) {
                                    iMin = Math.min(4, iMax);
                                } else if (fAbs <= 3.5f) {
                                    iMin = Math.min(5, iMax);
                                } else {
                                    iMin = fAbs <= 5.0f ? Math.min(6, iMax) : iMax;
                                }
                            }
                            int iK = tempStepperService.k();
                            if (tempStepperService.c()) {
                                if (iMin == tempStepperService.f1312y) {
                                    tempStepperService.q("auto");
                                } else if (p1.k(tempStepperService.f1298k, 356517120, iK, iMin)) {
                                    tempStepperService.f1312y = iMin;
                                    Log.i("HvacStepperV2", String.format("AUTO: cabina=%.1f°C alvo=%.1f°C err=%.1f → ventoinha=%d (area=0x%x)", Float.valueOf(floatProperty), Float.valueOf(f), Float.valueOf(fAbs), Integer.valueOf(iMin), Integer.valueOf(iK)));
                                    tempStepperService.q("auto");
                                } else {
                                    Log.w("HvacStepperV2", "AUTO tick: escrita da ventoinha falhou");
                                }
                            }
                        } catch (Exception e3) {
                            androidx.activity.result.b.o(e3, new StringBuilder("AUTO tick: "), "HvacStepperV2");
                        }
                    }
                    if (tempStepperService.c() && tempStepperService.f1307t) {
                        tempStepperService.f1303p.postDelayed(this, 2500L);
                        break;
                    }
                }
                break;
            case 1:
                int[] iArr2 = TempStepperService.f1285c0;
                if (tempStepperService.c() && tempStepperService.F) {
                    if (tempStepperService.f1298k != null && tempStepperService.c()) {
                        float f3 = tempStepperService.f1313z;
                        if (tempStepperService.f1308u && (i5 = tempStepperService.f1309v) >= 0) {
                            try {
                                tempStepperService.f1313z = tempStepperService.f1298k.getFloatProperty(358614274, i5);
                                break;
                            } catch (Exception unused) {
                            }
                        }
                        if (tempStepperService.c()) {
                            try {
                                CarPropertyValue property = tempStepperService.f1298k.getProperty(358614275, tempStepperService.f1299l);
                                if (property == null || !(property.getValue() instanceof Float)) {
                                    z2 = false;
                                } else {
                                    Float f4 = (Float) property.getValue();
                                    float fFloatValue = f4.floatValue();
                                    if (fFloatValue < tempStepperService.f1288a || fFloatValue > tempStepperService.b || Math.abs(fFloatValue - tempStepperService.f1300m) < 0.01f) {
                                        z2 = false;
                                    } else {
                                        Log.i("HvacStepperV2", String.format("Poll UI: %.1f°C → %.1f°C (HAL=%.1f area=0x%x)", Float.valueOf(tempStepperService.f1300m), f4, f4, Integer.valueOf(tempStepperService.f1299l)));
                                        tempStepperService.f1300m = fFloatValue;
                                        z2 = true;
                                    }
                                }
                            } catch (Exception e4) {
                                Log.d("HvacStepperV2", "pollCurrentTemp falhou: " + e4.getMessage());
                            }
                            boolean z3 = tempStepperService.f1308u && !(Float.isNaN(f3) == Float.isNaN(tempStepperService.f1313z) && (Float.isNaN(f3) || Float.isNaN(tempStepperService.f1313z) || Math.abs(f3 - tempStepperService.f1313z) < 0.05f));
                            float f5 = tempStepperService.C;
                            if (tempStepperService.A && (i4 = tempStepperService.B) >= 0 && (fI = tempStepperService.i(i4)) != null) {
                                tempStepperService.C = fI.floatValue();
                            }
                            if (!tempStepperService.A || (Float.isNaN(f5) == Float.isNaN(tempStepperService.C) && (Float.isNaN(f5) || Float.isNaN(tempStepperService.C) || Math.abs(f5 - tempStepperService.C) < 0.05f))) {
                                iMin = 0;
                            }
                            if (z2 || z3 || iMin != 0) {
                                tempStepperService.q("poll");
                            }
                        }
                    }
                    if (tempStepperService.c() && tempStepperService.F) {
                        tempStepperService.f1303p.postDelayed(this, 3000L);
                        break;
                    }
                }
                break;
            default:
                View view = tempStepperService.f1292d;
                if (view != null && tempStepperService.f1291c != null) {
                    tempStepperService.N = true;
                    WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) view.getLayoutParams();
                    tempStepperService.H = layoutParams.x;
                    tempStepperService.I = layoutParams.y;
                    tempStepperService.J = tempStepperService.L;
                    tempStepperService.K = tempStepperService.M;
                    break;
                }
                break;
        }
    }
}
