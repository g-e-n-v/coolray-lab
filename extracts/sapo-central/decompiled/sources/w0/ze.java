package w0;

import android.net.wifi.WifiManager;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.QuickAccessFloaterService;
import com.geely.driveregenfloater.DriveRegenFloaterService;
import ecarx.xsf.mediacenter.session.PlaybackState;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ze implements h2.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4637a;
    public final /* synthetic */ QuickAccessFloaterService b;

    public /* synthetic */ ze(int i3, QuickAccessFloaterService quickAccessFloaterService) {
        this.f4637a = i3;
        this.b = quickAccessFloaterService;
    }

    @Override // h2.a
    public final Object a() {
        int i3 = this.f4637a;
        QuickAccessFloaterService quickAccessFloaterService = this.b;
        switch (i3) {
            case 0:
                int i4 = QuickAccessFloaterService.t0;
                quickAccessFloaterService.Q(570491137);
                return x1.e.f4647c;
            case 1:
                int i5 = QuickAccessFloaterService.t0;
                quickAccessFloaterService.Q(570491138);
                return x1.e.f4647c;
            case 2:
                int i6 = QuickAccessFloaterService.t0;
                quickAccessFloaterService.Q(570491139);
                return x1.e.f4647c;
            case 3:
                int i7 = QuickAccessFloaterService.t0;
                quickAccessFloaterService.R(537003265);
                return x1.e.f4647c;
            case 4:
                int i8 = QuickAccessFloaterService.t0;
                quickAccessFloaterService.R(537003266);
                return x1.e.f4647c;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                int i9 = QuickAccessFloaterService.t0;
                quickAccessFloaterService.R(537003267);
                return x1.e.f4647c;
            case MusicClient.TYPE_GESTURE /* 6 */:
                int i10 = QuickAccessFloaterService.t0;
                return quickAccessFloaterService.getSharedPreferences("quick_access_prefs", 0);
            case PlaybackState.STATE_ERROR /* 7 */:
                int i11 = QuickAccessFloaterService.t0;
                return DriveRegenFloaterService.h(quickAccessFloaterService);
            case 8:
                int i12 = QuickAccessFloaterService.t0;
                return quickAccessFloaterService.getSharedPreferences("tela_preta_prefs", 0);
            case 9:
                int i13 = QuickAccessFloaterService.t0;
                Object systemService = quickAccessFloaterService.getApplicationContext().getSystemService("wifi");
                i2.g.c(systemService, "null cannot be cast to non-null type android.net.wifi.WifiManager");
                return (WifiManager) systemService;
            default:
                sf sfVar = quickAccessFloaterService.f1166r;
                if (sfVar != null) {
                    quickAccessFloaterService.f1134a.post(new ye(quickAccessFloaterService, sfVar, 0));
                }
                return x1.e.f4647c;
        }
    }
}
