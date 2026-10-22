package a1;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.widget.TextView;
import com.ex.auto.BlackoutFloaterService;
import com.ex.auto.CentralApplication;
import com.ex.auto.HomeFloatingWidgetsService;
import com.ex.auto.WifiFloaterService;
import com.geely.hvacstepperv2.TempStepperService;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class s extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f53a;
    public final /* synthetic */ Object b;

    public /* synthetic */ s(int i3, Object obj) {
        this.f53a = i3;
        this.b = obj;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        int i3 = this.f53a;
        Object obj = this.b;
        switch (i3) {
            case 0:
                if ("com.geely.hvacstepperv2.PRESETS_CHANGED".equals(intent.getAction())) {
                    ((TempStepperService) obj).f1301n.post(new r(0, this));
                }
                break;
            case 1:
                ((androidx.fragment.app.h) obj).h();
                break;
            case 2:
                BlackoutFloaterService blackoutFloaterService = (BlackoutFloaterService) obj;
                if (blackoutFloaterService.f798c) {
                    Log.i("BlackoutFloater", "Volume (broadcast) alterado — restaurando backlight");
                    blackoutFloaterService.d();
                }
                break;
            case 3:
                CentralApplication centralApplication = (CentralApplication) obj;
                try {
                    centralApplication.unregisterReceiver(this);
                    break;
                } catch (Throwable unused) {
                }
                int i4 = CentralApplication.f810a;
                centralApplication.a();
                break;
            case 4:
                List list = HomeFloatingWidgetsService.f926a0;
                ((HomeFloatingWidgetsService) obj).s();
                break;
            default:
                i2.g.e(context, "ctx");
                i2.g.e(intent, "intent");
                TextView textView = ((WifiFloaterService) obj).f1251c;
                if (textView != null) {
                    textView.setAlpha(intent.getIntExtra("alpha", 100) / 100.0f);
                }
                break;
        }
    }
}
