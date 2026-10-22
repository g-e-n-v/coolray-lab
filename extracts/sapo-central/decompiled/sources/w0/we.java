package w0;

import android.car.hardware.property.CarPropertyManager;
import android.util.Log;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.R;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class we implements h2.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4454a;
    public final /* synthetic */ QuickAccessFloaterService b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f4455c;

    public /* synthetic */ we(QuickAccessFloaterService quickAccessFloaterService, int i3, int i4) {
        this.f4454a = i4;
        this.b = quickAccessFloaterService;
        this.f4455c = i3;
    }

    @Override // h2.l
    public final Object c(Object obj) {
        Float f;
        Integer num;
        switch (this.f4454a) {
            case 0:
                QuickAccessFloaterService quickAccessFloaterService = this.b;
                int i3 = this.f4455c;
                CarPropertyManager carPropertyManager = (CarPropertyManager) obj;
                int i4 = QuickAccessFloaterService.t0;
                i2.g.e(carPropertyManager, "manager");
                if (quickAccessFloaterService.f1163p0.get() == i3 && (f = quickAccessFloaterService.f1165q0) != null) {
                    float fFloatValue = f.floatValue();
                    int i5 = u.f4290d;
                    p1.j(carPropertyManager, i5, 1, fFloatValue);
                    p1.j(carPropertyManager, i5, 4, fFloatValue);
                }
                break;
            case 1:
                final QuickAccessFloaterService quickAccessFloaterService2 = this.b;
                int i6 = this.f4455c;
                CarPropertyManager carPropertyManager2 = (CarPropertyManager) obj;
                int i7 = QuickAccessFloaterService.t0;
                i2.g.e(carPropertyManager2, "manager");
                Float fK = quickAccessFloaterService2.f1165q0;
                final float fFloatValue2 = (fK == null && (fK = v7.k(carPropertyManager2)) == null) ? 22.0f : fK.floatValue();
                final float fJ = k1.a.j(Math.round(i6 + fFloatValue2), 17.0f, 32.0f);
                if (fJ != fFloatValue2) {
                    int i8 = u.f4290d;
                    p1.j(carPropertyManager2, i8, 1, fJ);
                    p1.j(carPropertyManager2, i8, 4, fJ);
                }
                quickAccessFloaterService2.f1165q0 = Float.valueOf(fJ);
                quickAccessFloaterService2.f1134a.post(new Runnable() { // from class: w0.ff
                    @Override // java.lang.Runnable
                    public final void run() {
                        QuickAccessFloaterService quickAccessFloaterService3 = quickAccessFloaterService2;
                        float f3 = fFloatValue2;
                        float f4 = fJ;
                        if (quickAccessFloaterService3.M) {
                            return;
                        }
                        Log.i("QuickAccessFloater", "Gesto 2 dedos: temperatura " + f3 + " -> " + f4);
                        String string = quickAccessFloaterService3.getString(R.string.k_hvac_temp_toast, Float.valueOf(f4));
                        i2.g.d(string, "getString(...)");
                        quickAccessFloaterService3.G(string);
                    }
                });
                break;
            case 2:
                QuickAccessFloaterService quickAccessFloaterService3 = this.b;
                int i9 = this.f4455c;
                CarPropertyManager carPropertyManager3 = (CarPropertyManager) obj;
                int i10 = QuickAccessFloaterService.t0;
                i2.g.e(carPropertyManager3, "manager");
                if (quickAccessFloaterService3.f1161o0.get() == i9 && (num = quickAccessFloaterService3.f1159n0) != null) {
                    int iIntValue = num.intValue();
                    Integer numL = quickAccessFloaterService3.L(carPropertyManager3);
                    if (numL != null && !p1.l(carPropertyManager3, 356517120, numL.intValue(), iIntValue)) {
                        Log.w("QuickAccessFloater", "adjustFanSpeed: escrita falhou");
                    }
                }
                break;
            default:
                QuickAccessFloaterService quickAccessFloaterService4 = this.b;
                int i11 = this.f4455c;
                CarPropertyManager carPropertyManager4 = (CarPropertyManager) obj;
                int i12 = QuickAccessFloaterService.t0;
                i2.g.e(carPropertyManager4, "manager");
                Integer numL2 = quickAccessFloaterService4.L(carPropertyManager4);
                if (numL2 != null) {
                    int iIntValue2 = numL2.intValue();
                    Integer numC = quickAccessFloaterService4.f1159n0;
                    int iIntValue3 = (numC == null && (numC = p1.c(carPropertyManager4, 356517120, iIntValue2)) == null) ? 3 : numC.intValue();
                    int iK = k1.a.k(i11 + iIntValue3, 0, 7);
                    if (iK != iIntValue3 && !p1.l(carPropertyManager4, 356517120, iIntValue2, iK)) {
                        Log.w("QuickAccessFloater", "adjustFanSpeed: escrita falhou");
                    }
                    quickAccessFloaterService4.f1159n0 = Integer.valueOf(iK);
                    quickAccessFloaterService4.f1134a.post(new ef(quickAccessFloaterService4, iIntValue3, iK, iIntValue2, 1));
                } else {
                    Log.w("QuickAccessFloater", "adjustFanSpeed: nenhuma área respondeu HVAC_FAN_SPEED");
                }
                break;
        }
        return x1.e.f4647c;
    }
}
