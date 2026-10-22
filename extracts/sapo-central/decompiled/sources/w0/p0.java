package w0;

import android.os.Handler;
import android.util.Log;
import com.ex.auto.BlackoutFloaterService;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class p0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4041a;
    public final /* synthetic */ BlackoutFloaterService b;

    public /* synthetic */ p0(BlackoutFloaterService blackoutFloaterService, int i3) {
        this.f4041a = i3;
        this.b = blackoutFloaterService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int iK;
        switch (this.f4041a) {
            case 0:
                BlackoutFloaterService blackoutFloaterService = this.b;
                boolean zA = BlackoutFloaterService.a();
                Handler handler = blackoutFloaterService.f802h;
                if (!zA) {
                    Log.w("BlackoutFloater", "SELinux enforcing — não foi possível garantir permissão; abortando blackout");
                    handler.post(new p0(blackoutFloaterService, 1));
                } else {
                    try {
                        iK = k1.a.k(Integer.parseInt(o2.k.E0(f2.d.h0(new File("/sys/class/leds/lcd-backlight/brightness"))).toString()), 1, 255);
                    } catch (Exception unused) {
                        iK = 166;
                    }
                    if (!BlackoutFloaterService.e(0)) {
                        Log.w("BlackoutFloater", "Escrita do backlight falhou — não fazendo toggle");
                        handler.post(new p0(blackoutFloaterService, 2));
                    } else {
                        handler.post(new a1.e(blackoutFloaterService, iK, 2));
                    }
                }
                break;
            case 1:
                BlackoutFloaterService blackoutFloaterService2 = this.b;
                blackoutFloaterService2.f799d = false;
                if (BlackoutFloaterService.f795p) {
                    blackoutFloaterService2.b();
                }
                break;
            default:
                BlackoutFloaterService blackoutFloaterService3 = this.b;
                blackoutFloaterService3.f799d = false;
                if (BlackoutFloaterService.f795p) {
                    blackoutFloaterService3.b();
                }
                break;
        }
    }
}
