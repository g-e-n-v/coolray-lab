package w0;

import android.car.hardware.property.CarPropertyManager;
import android.content.ComponentName;
import android.content.Intent;
import android.widget.TextView;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.MainActivity;
import com.ex.auto.R;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c8 extends i2.e implements h2.p {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ int f3434i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ c8(int i3, Object obj, Class cls, String str, String str2, int i4) {
        super(i3, obj, cls, str, str2);
        this.f3434i = i4;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x013f  */
    /* JADX WARN: Code duplicated, block: B:35:0x0156  */
    @Override // h2.p
    public final Object b(Object obj, Object obj2) {
        CentralWatchdogService centralWatchdogService;
        int i3 = 0;
        switch (this.f3434i) {
            case 0:
                String str = (String) obj;
                int iIntValue = ((Number) obj2).intValue();
                i2.g.e(str, "p0");
                ((d8) this.b).getClass();
                return d8.a(iIntValue, str);
            case 1:
                String str2 = (String) obj;
                int iIntValue2 = ((Number) obj2).intValue();
                i2.g.e(str2, "p0");
                ((d8) this.b).getClass();
                return d8.a(iIntValue2, str2);
            case 2:
                boolean zBooleanValue = ((Boolean) obj).booleanValue();
                h2.a aVar = (h2.a) obj2;
                MainActivity mainActivity = (MainActivity) this.b;
                int i4 = MainActivity.f1002z1;
                if (zBooleanValue && mainActivity.m0("br.com.central.dualdashcam") == null) {
                    String string = mainActivity.getString(R.string.k_rear_cam_pip_no_dualdashcam);
                    i2.g.d(string, "getString(...)");
                    mainActivity.t2(string, 1);
                    aVar.a();
                } else if (zBooleanValue) {
                    mainActivity.getClass();
                    Intent component = new Intent().setComponent(new ComponentName("br.com.central.dualdashcam", "br.com.central.dualdashcam.camera.RearCamPipService"));
                    i2.g.d(component, "setComponent(...)");
                    try {
                        if (mainActivity.getPackageManager().resolveService(component, 0) != null) {
                            mainActivity.o0().edit().putBoolean("rear_cam_turn_signal_enabled", zBooleanValue).apply();
                            int[] iArr = CentralWatchdogService.S2;
                            centralWatchdogService = CentralWatchdogService.V2;
                            if (centralWatchdogService != null) {
                                centralWatchdogService.f811a.post(new v2(centralWatchdogService, 13));
                            }
                        } else {
                            String string2 = mainActivity.getString(R.string.k_rear_cam_pip_outdated_dualdashcam);
                            i2.g.d(string2, "getString(...)");
                            mainActivity.t2(string2, 1);
                            aVar.a();
                        }
                    } catch (Throwable unused) {
                    }
                } else {
                    mainActivity.o0().edit().putBoolean("rear_cam_turn_signal_enabled", zBooleanValue).apply();
                    int[] iArr2 = CentralWatchdogService.S2;
                    centralWatchdogService = CentralWatchdogService.V2;
                    if (centralWatchdogService != null) {
                        centralWatchdogService.f811a.post(new v2(centralWatchdogService, 13));
                    }
                }
                return x1.e.f4647c;
            case 3:
                boolean zBooleanValue2 = ((Boolean) obj).booleanValue();
                h2.a aVar2 = (h2.a) obj2;
                MainActivity mainActivity2 = (MainActivity) this.b;
                if (mainActivity2.M == null) {
                    String string3 = mainActivity2.getString(R.string.k_car_not_connected_short);
                    i2.g.d(string3, "getString(...)");
                    mainActivity2.t2(string3, 0);
                    aVar2.a();
                } else {
                    CarPropertyManager carPropertyManager = mainActivity2.M;
                    if (carPropertyManager != null) {
                        mainActivity2.o0().edit().putBoolean("aeb_desired", zBooleanValue2).apply();
                        mainActivity2.v1();
                        try {
                            mainActivity2.f1054z.execute(new c0(carPropertyManager, zBooleanValue2, mainActivity2, 2));
                            break;
                        } catch (RejectedExecutionException unused2) {
                        }
                    }
                }
                return x1.e.f4647c;
            default:
                boolean zBooleanValue3 = ((Boolean) obj).booleanValue();
                h2.a aVar3 = (h2.a) obj2;
                MainActivity mainActivity3 = (MainActivity) this.b;
                int i5 = MainActivity.f1002z1;
                if (zBooleanValue3) {
                    mainActivity3.o0().edit().putBoolean("speed_auto_lock_enabled", true).apply();
                    mainActivity3.f1055z0 = Boolean.TRUE;
                    mainActivity3.y(true);
                } else {
                    mainActivity3.getClass();
                    e.h hVar = new e.h(mainActivity3);
                    ((e.d) hVar.b).f1554d = mainActivity3.getString(R.string.k_speed_lock_title);
                    ((e.d) hVar.b).f = mainActivity3.getString(R.string.k_speed_lock_disable_confirm);
                    hVar.f(mainActivity3.getString(R.string.common_confirm), new z8(mainActivity3, 10));
                    hVar.c(mainActivity3.getString(R.string.common_cancel), new h(4, aVar3));
                    ((e.d) hVar.b).f1563n = new aa(i3, aVar3);
                    TextView textView = (TextView) hVar.h().findViewById(android.R.id.message);
                    if (textView != null) {
                        textView.setTextColor(-1);
                    }
                }
                return x1.e.f4647c;
        }
    }
}
