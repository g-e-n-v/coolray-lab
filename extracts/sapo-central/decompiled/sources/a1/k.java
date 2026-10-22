package a1;

import android.app.Service;
import android.car.hardware.property.CarPropertyManager;
import android.content.IntentFilter;
import android.provider.Settings;
import android.util.Log;
import com.ex.auto.CentralWatchdogService;
import com.geely.hvacstepperv2.TempStepperService;
import java.util.concurrent.atomic.AtomicInteger;
import w0.c3;
import w0.f3;
import w0.p1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class k implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f39a;
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f40c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Service f41d;

    public /* synthetic */ k(Service service, int i3, int i4, int i5) {
        this.f39a = i5;
        this.f41d = service;
        this.b = i3;
        this.f40c = i4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f39a) {
            case 0:
                TempStepperService tempStepperService = (TempStepperService) this.f41d;
                int i3 = this.b;
                int i4 = this.f40c;
                tempStepperService.X = null;
                if (tempStepperService.c() && tempStepperService.U) {
                    CarPropertyManager carPropertyManager = tempStepperService.f1298k;
                    if (carPropertyManager != null) {
                        AtomicInteger atomicInteger = p1.f4042a;
                        if (!p1.l(carPropertyManager, 356517120, i3, i4)) {
                            Log.w("HvacStepperV2", "Ventoinha final: escrita falhou");
                        }
                    }
                    tempStepperService.U = false;
                    tempStepperService.V = -1;
                    tempStepperService.q("fan_end");
                    break;
                }
                break;
            default:
                CentralWatchdogService centralWatchdogService = (CentralWatchdogService) this.f41d;
                int i5 = this.b;
                int i6 = this.f40c;
                if (CentralWatchdogService.U2) {
                    centralWatchdogService.E0 = true;
                    centralWatchdogService.F0 = i5;
                    StringBuilder sb = new StringBuilder("applyStatusBrightnessFromSlider: pct=");
                    sb.append(i6);
                    sb.append(" nextState=");
                    sb.append(i5);
                    sb.append(" registrarVolume=");
                    sb.append(i6 <= 1);
                    Log.i("CentralWatchdog", sb.toString());
                    if (i6 > 1) {
                        centralWatchdogService.U0();
                        break;
                    } else if (centralWatchdogService.H0 == null) {
                        f3 f3Var = new f3(centralWatchdogService, y1.f.U(new String[]{"global_http_proxy_host", "global_http_proxy_port", "global_http_proxy_exclusion_list", "http_proxy", "captive_portal_mode", "policy_control", "development_settings_enabled", "enable_freeform_support", "force_resizable_activities", "heads_up_notifications_enabled", "wifi_on", "bluetooth_on", "wifi_scan_always_enabled", "airplane_mode_on"}), centralWatchdogService.f811a);
                        centralWatchdogService.H0 = f3Var;
                        centralWatchdogService.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, f3Var);
                        try {
                            centralWatchdogService.getContentResolver().registerContentObserver(Settings.Global.CONTENT_URI, true, f3Var);
                            break;
                        } catch (Exception unused) {
                        }
                        c3 c3Var = new c3(centralWatchdogService, 5);
                        centralWatchdogService.I0 = c3Var;
                        centralWatchdogService.registerReceiver(c3Var, new IntentFilter("android.media.VOLUME_CHANGED_ACTION"));
                        break;
                    }
                }
                break;
        }
    }
}
