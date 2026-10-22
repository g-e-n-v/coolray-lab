package w0;

import android.car.hardware.CarPropertyValue;
import android.car.hardware.property.CarPropertyManager;
import android.os.Handler;
import android.util.Log;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class k3 implements CarPropertyManager.CarPropertyEventCallback {
    @Override // android.car.hardware.property.CarPropertyManager.CarPropertyEventCallback
    public final void onChangeEvent(CarPropertyValue carPropertyValue) {
        Handler handler;
        i2.g.e(carPropertyValue, "value");
        Object value = carPropertyValue.getValue();
        Integer num = value instanceof Integer ? (Integer) value : null;
        if (num != null) {
            int iIntValue = num.intValue();
            int i3 = rg.f4184a;
            int propertyId = carPropertyValue.getPropertyId();
            if (rg.f4185c) {
                if ((propertyId == 1090651392 || propertyId == rg.f4184a) && (handler = rg.f4186d) != null) {
                    handler.post(new o0(iIntValue, 2));
                }
            }
        }
    }

    @Override // android.car.hardware.property.CarPropertyManager.CarPropertyEventCallback
    public final void onErrorEvent(int i3, int i4) {
        Log.w("CentralWatchdog", String.format("swcModes: onErrorEvent prop=" + i3 + " área=0x%x", Arrays.copyOf(new Object[]{Integer.valueOf(i4)}, 1)));
    }
}
