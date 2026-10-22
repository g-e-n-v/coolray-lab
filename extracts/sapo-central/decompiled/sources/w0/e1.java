package w0;

import android.car.hardware.CarPropertyValue;
import android.car.hardware.property.CarPropertyManager;
import com.geely.driveregenfloater.DriveRegenFloaterService;

/* JADX INFO: loaded from: classes.dex */
public final class e1 implements CarPropertyManager.CarPropertyEventCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3519a;
    public final /* synthetic */ Object b;

    public /* synthetic */ e1(int i3, Object obj) {
        this.f3519a = i3;
        this.b = obj;
    }

    private final void a(int i3, int i4) {
    }

    private final void b(int i3, int i4) {
    }

    @Override // android.car.hardware.property.CarPropertyManager.CarPropertyEventCallback
    public final void onChangeEvent(CarPropertyValue carPropertyValue) {
        int i3 = this.f3519a;
        Object obj = this.b;
        switch (i3) {
            case 0:
                i2.g.e(carPropertyValue, "value");
                if (carPropertyValue.getStatus() == 0) {
                    f1 f1Var = (f1) obj;
                    f1Var.f3567c.post(new b1(f1Var, 1));
                }
                break;
            default:
                if (carPropertyValue != null && carPropertyValue.getStatus() == 0 && carPropertyValue.getPropertyId() == 289408000) {
                    try {
                        Object value = carPropertyValue.getValue();
                        if (value instanceof Integer) {
                            a1.e eVar = new a1.e(this, ((Integer) value).intValue(), 4);
                            boolean z2 = DriveRegenFloaterService.M;
                            ((DriveRegenFloaterService) obj).j(eVar);
                        }
                    } catch (Exception unused) {
                        return;
                    }
                }
                break;
        }
    }

    @Override // android.car.hardware.property.CarPropertyManager.CarPropertyEventCallback
    public final void onErrorEvent(int i3, int i4) {
        int i5 = this.f3519a;
    }
}
