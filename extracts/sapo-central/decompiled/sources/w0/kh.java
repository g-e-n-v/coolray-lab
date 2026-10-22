package w0;

import android.content.Intent;
import com.ex.auto.WifiFloaterService;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class kh implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3814a;
    public final /* synthetic */ WifiFloaterService b;

    public /* synthetic */ kh(WifiFloaterService wifiFloaterService, int i3) {
        this.f3814a = i3;
        this.b = wifiFloaterService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i3 = this.f3814a;
        WifiFloaterService wifiFloaterService = this.b;
        switch (i3) {
            case 0:
                int i4 = WifiFloaterService.f1249n;
                try {
                    Intent intent = new Intent("android.settings.WIFI_SETTINGS");
                    intent.setFlags(268435456);
                    wifiFloaterService.startActivity(intent);
                } catch (Exception unused) {
                    return;
                }
                break;
            default:
                int i5 = WifiFloaterService.f1249n;
                wifiFloaterService.a();
                break;
        }
    }
}
