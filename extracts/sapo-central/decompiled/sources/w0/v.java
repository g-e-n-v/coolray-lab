package w0;

import android.car.hardware.CarPropertyValue;
import android.car.hardware.property.CarPropertyManager;
import android.content.ComponentName;
import android.content.SharedPreferences;
import android.util.Log;
import com.ex.auto.AppPipFloaterService;
import com.ex.auto.CentralWatchdogService;
import com.geely.driveregenfloater.DriveRegenFloaterService;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class v implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4356a;
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f4357c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f4358d;

    public /* synthetic */ v(int i3, Object obj, Object obj2, int i4) {
        this.f4356a = i4;
        this.b = i3;
        this.f4357c = obj;
        this.f4358d = obj2;
    }

    /* JADX WARN: Code duplicated, block: B:68:0x018c  */
    @Override // java.lang.Runnable
    public final void run() {
        x0 x0Var;
        CarPropertyManager carPropertyManager;
        switch (this.f4356a) {
            case 0:
                int i3 = this.b;
                lg lgVar = (lg) this.f4357c;
                AppPipFloaterService appPipFloaterService = (AppPipFloaterService) this.f4358d;
                AppPipFloaterService appPipFloaterService2 = AppPipFloaterService.f769x;
                if (og.m(i3, lgVar)) {
                    appPipFloaterService.f778k = lgVar;
                }
                appPipFloaterService.f781n = false;
                appPipFloaterService.f775h.post(new b0(appPipFloaterService, 2));
                return;
            case 1:
                f1 f1Var = (f1) this.f4357c;
                AtomicBoolean atomicBoolean = f1Var.f3569e;
                CarPropertyManager carPropertyManager2 = (CarPropertyManager) this.f4358d;
                int i4 = this.b;
                try {
                    int[] iArr = f1Var.f3574k;
                    ArrayList arrayList = new ArrayList(iArr.length);
                    for (int i5 : iArr) {
                        AtomicInteger atomicInteger = p1.f4042a;
                        CarPropertyValue carPropertyValueD = p1.d(carPropertyManager2, i5, 0, 500L);
                        if (carPropertyValueD != null) {
                            Object value = carPropertyValueD.getValue();
                            Integer num = value instanceof Integer ? (Integer) value : null;
                            if (num != null) {
                                x0Var = new x0(num.intValue(), carPropertyValueD.getTimestamp(), carPropertyValueD.getStatus() == 0);
                            } else {
                                x0Var = null;
                            }
                        } else {
                            x0Var = null;
                        }
                        arrayList.add(x0Var);
                    }
                    Set set = y0.b;
                    x0[] x0VarArr = (x0[]) arrayList.toArray(new x0[0]);
                    f1Var.f3567c.post(new d1(f1Var, i4, carPropertyManager2, t1.T((x0[]) Arrays.copyOf(x0VarArr, x0VarArr.length)), 0));
                    return;
                } finally {
                    atomicBoolean.set(false);
                }
            case 2:
                int i6 = this.b;
                CentralWatchdogService centralWatchdogService = (CentralWatchdogService) this.f4357c;
                ComponentName componentName = (ComponentName) this.f4358d;
                if (CentralWatchdogService.U2 && i6 == centralWatchdogService.f825d2.get()) {
                    if (i2.g.a(componentName != null ? componentName.getPackageName() : null, "com.njda.aauto")) {
                        String className = componentName.getClassName();
                        i2.g.d(className, "getClassName(...)");
                        if (o2.t.Z(className, "AutoMainActivity", false)) {
                            centralWatchdogService.f814a2 = true;
                            centralWatchdogService.f817b2 = true;
                        }
                    }
                    if (i2.g.a(componentName != null ? componentName.getPackageName() : null, "com.njda.carplay")) {
                        String className2 = componentName.getClassName();
                        i2.g.d(className2, "getClassName(...)");
                        if (o2.t.Z(className2, "CarplayMainActivity", false)) {
                            centralWatchdogService.Z1 = true;
                            centralWatchdogService.f821c2 = true;
                            try {
                                od odVar = od.f3992a;
                                od.o(true);
                                break;
                            } catch (Throwable unused) {
                            }
                            if (centralWatchdogService.W0) {
                                centralWatchdogService.R0("CarPlay em primeiro plano");
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            case 3:
                CentralWatchdogService centralWatchdogService2 = (CentralWatchdogService) this.f4357c;
                h2.l lVar = (h2.l) this.f4358d;
                int i7 = this.b;
                if (!CentralWatchdogService.U2 || i7 != centralWatchdogService2.f818c.get() || DriveRegenFloaterService.M || (carPropertyManager = centralWatchdogService2.f840i) == null) {
                    return;
                }
                lVar.c(carPropertyManager);
                return;
            default:
                SharedPreferences sharedPreferences = (SharedPreferences) this.f4357c;
                String str = (String) this.f4358d;
                int i8 = this.b;
                String str2 = "";
                try {
                    String string = sharedPreferences.getString("recovery_name", "");
                    if (string != null) {
                        str2 = string;
                    }
                    k5 k5Var = k5.f3786a;
                    String strK = k5.k();
                    String strL = k5.l();
                    String strC = k5.c(str2);
                    k5.r("[CentralEXAuto] Aviso visto: " + str + '.' + i8 + " — " + strC, "Nome (recovery): " + strC + "\nMensagem: " + str + '.' + i8 + "\nXDSN: " + strL + "\nSerial: " + strK + "\nmsg-ack");
                    StringBuilder sb = new StringBuilder("msgAck ok: ");
                    sb.append(str);
                    sb.append('.');
                    sb.append(i8);
                    Log.d("DR", sb.toString());
                    return;
                } catch (Throwable th) {
                    Log.d("DR", "msgAck: " + th.getMessage());
                    return;
                }
        }
    }

    public /* synthetic */ v(Object obj, Object obj2, int i3, int i4) {
        this.f4356a = i4;
        this.f4357c = obj;
        this.f4358d = obj2;
        this.b = i3;
    }
}
