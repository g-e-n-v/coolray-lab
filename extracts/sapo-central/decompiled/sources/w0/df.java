package w0;

import android.view.View;
import android.view.WindowManager;
import android.widget.LinearLayout;
import com.ex.auto.QuickAccessFloaterService;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class df implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3512a;
    public final /* synthetic */ QuickAccessFloaterService b;

    public /* synthetic */ df(int i3, QuickAccessFloaterService quickAccessFloaterService) {
        this.f3512a = i3;
        this.b = quickAccessFloaterService;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i3 = this.f3512a;
        QuickAccessFloaterService quickAccessFloaterService = this.b;
        switch (i3) {
            case 0:
                int i4 = QuickAccessFloaterService.t0;
                quickAccessFloaterService.H(null, "drive_regen");
                break;
            case 1:
                int i5 = QuickAccessFloaterService.t0;
                quickAccessFloaterService.b0();
                break;
            default:
                int i6 = QuickAccessFloaterService.t0;
                quickAccessFloaterService.r().edit().putBoolean("screen_off_warning_seen", true).apply();
                LinearLayout linearLayout = quickAccessFloaterService.f1141e;
                if (linearLayout != null) {
                    try {
                        WindowManager windowManager = quickAccessFloaterService.b;
                        if (windowManager != null) {
                            windowManager.removeView(linearLayout);
                        }
                        break;
                    } catch (Exception unused) {
                    }
                }
                quickAccessFloaterService.f1141e = null;
                quickAccessFloaterService.V(false);
                break;
        }
    }
}
