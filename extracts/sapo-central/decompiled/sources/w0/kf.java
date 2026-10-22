package w0;

import android.car.hardware.CarPropertyValue;
import android.car.hardware.property.CarPropertyManager;
import android.util.Log;
import com.ex.auto.QuickAccessFloaterService;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class kf implements h2.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3812a;
    public final /* synthetic */ QuickAccessFloaterService b;

    public /* synthetic */ kf(int i3, QuickAccessFloaterService quickAccessFloaterService) {
        this.f3812a = i3;
        this.b = quickAccessFloaterService;
    }

    @Override // h2.l
    public final Object c(Object obj) {
        Integer num;
        int i3 = this.f3812a;
        QuickAccessFloaterService quickAccessFloaterService = this.b;
        switch (i3) {
            case 0:
                CarPropertyManager carPropertyManager = (CarPropertyManager) obj;
                int i4 = QuickAccessFloaterService.t0;
                i2.g.e(carPropertyManager, "manager");
                quickAccessFloaterService.getClass();
                int[] iArr = {289408000, 289408001};
                int i5 = 0;
                while (true) {
                    num = null;
                    if (i5 < 2) {
                        try {
                            CarPropertyValue carPropertyValueD = p1.d(carPropertyManager, iArr[i5], 0, 800L);
                            if (carPropertyValueD != null && carPropertyValueD.getStatus() == 0) {
                                Object value = carPropertyValueD.getValue();
                                num = value instanceof Integer ? (Integer) value : null;
                                if (num == null || num.intValue() == 0) {
                                }
                            }
                        } catch (Throwable unused) {
                        }
                        i5++;
                    }
                }
                quickAccessFloaterService.f1134a.post(new ab(quickAccessFloaterService, 9, num));
                break;
            case 1:
                CarPropertyManager carPropertyManager2 = (CarPropertyManager) obj;
                int i6 = QuickAccessFloaterService.t0;
                i2.g.e(carPropertyManager2, "manager");
                try {
                    int i7 = QuickAccessFloaterService.t0;
                    AtomicInteger atomicInteger = p1.f4042a;
                    if (!p1.n(p1.m("Integer", i7, 0), new k1(carPropertyManager2, i7, 0))) {
                        throw new IllegalStateException("escrita falhou ou estourou o prazo");
                    }
                    Log.i("QuickAccessFloater", "sendPowerOff: MMI_POWER_ON_OFF_REQ=2 escrito com sucesso");
                    return x1.e.f4647c;
                } catch (Exception e3) {
                    Log.w("QuickAccessFloater", "sendPowerOff: falhou escrever a property (" + e3.getMessage() + "), tentando broadcast como fallback");
                    try {
                        quickAccessFloaterService.b(8000, "am broadcast -a com.flyme.auto.settings.action.CAR_POWER_OFF");
                        break;
                    } catch (Exception unused2) {
                    }
                }
                break;
            default:
                String str = (String) obj;
                int i8 = QuickAccessFloaterService.t0;
                i2.g.e(str, "cmd");
                quickAccessFloaterService.b(15000, str);
                break;
        }
        return x1.e.f4647c;
    }
}
