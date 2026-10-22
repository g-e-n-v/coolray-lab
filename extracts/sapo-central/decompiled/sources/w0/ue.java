package w0;

import android.car.hardware.property.CarPropertyManager;
import android.util.Log;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.ex.auto.QuickAccessFloaterService;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ue implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4352a;
    public final /* synthetic */ QuickAccessFloaterService b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f4353c;

    public /* synthetic */ ue(int i3, QuickAccessFloaterService quickAccessFloaterService) {
        this.f4352a = 3;
        this.f4353c = i3;
        this.b = quickAccessFloaterService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        CarPropertyManager carPropertyManager;
        switch (this.f4352a) {
            case 0:
                QuickAccessFloaterService quickAccessFloaterService = this.b;
                int i3 = this.f4353c;
                if (quickAccessFloaterService.N && i3 == quickAccessFloaterService.P.get()) {
                    quickAccessFloaterService.N = false;
                    Log.w("QuickAccessFloater", "initDriveRegenCar: CarService não respondeu em 10 s — liberando nova tentativa");
                    break;
                }
                break;
            case 1:
                QuickAccessFloaterService quickAccessFloaterService2 = this.b;
                int i4 = this.f4353c;
                int i5 = QuickAccessFloaterService.t0;
                quickAccessFloaterService2.v(i4 - 1);
                break;
            case 2:
                QuickAccessFloaterService quickAccessFloaterService3 = this.b;
                int i6 = this.f4353c;
                if (!quickAccessFloaterService3.M && (carPropertyManager = quickAccessFloaterService3.K) != null) {
                    int[] iArr = {0, 1};
                    for (int i7 = 0; i7 < 2 && !p1.l(carPropertyManager, 537003264, iArr[i7], i6); i7++) {
                    }
                }
                break;
            default:
                int i8 = this.f4353c;
                QuickAccessFloaterService quickAccessFloaterService4 = this.b;
                float f = i8 / 100.0f;
                TextView textView = quickAccessFloaterService4.f;
                if (textView != null) {
                    textView.setAlpha(f);
                }
                LinearLayout linearLayout = quickAccessFloaterService4.f1144g;
                if (linearLayout != null) {
                    linearLayout.setAlpha(1.0f);
                }
                break;
        }
    }

    public /* synthetic */ ue(QuickAccessFloaterService quickAccessFloaterService, int i3, int i4) {
        this.f4352a = i4;
        this.b = quickAccessFloaterService;
        this.f4353c = i3;
    }
}
