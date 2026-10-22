package a1;

import android.content.IntentFilter;
import android.provider.Settings;
import android.util.Log;
import android.widget.ScrollView;
import com.ex.auto.BlackoutFloaterService;
import com.ex.auto.MainActivity;
import com.geely.driveregenfloater.DriveRegenFloaterService;
import com.geely.hvacstepperv2.TempStepperService;
import w0.e1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f25a;
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f26c;

    public /* synthetic */ e(Object obj, int i3, int i4) {
        this.f25a = i4;
        this.f26c = obj;
        this.b = i3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i3 = 0;
        switch (this.f25a) {
            case 0:
                TempStepperService tempStepperService = (TempStepperService) this.f26c;
                int i4 = this.b;
                int[] iArr = TempStepperService.f1285c0;
                a aVarG = b.G(tempStepperService, i4);
                if (aVarG != null) {
                    tempStepperService.e(new i(tempStepperService, i3, aVarG));
                    break;
                }
                break;
            case 1:
                ((u.b) this.f26c).d(this.b);
                break;
            case 2:
                BlackoutFloaterService blackoutFloaterService = (BlackoutFloaterService) this.f26c;
                int i5 = this.b;
                blackoutFloaterService.f799d = false;
                if (BlackoutFloaterService.f795p) {
                    blackoutFloaterService.f800e = i5;
                    blackoutFloaterService.f798c = true;
                    BlackoutFloaterService.f796q = true;
                    blackoutFloaterService.c();
                    g0.a aVar = new g0.a(blackoutFloaterService, blackoutFloaterService.f802h, 1);
                    blackoutFloaterService.f803i = aVar;
                    blackoutFloaterService.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, aVar);
                    s sVar = new s(2, blackoutFloaterService);
                    blackoutFloaterService.f804j = sVar;
                    blackoutFloaterService.registerReceiver(sVar, new IntentFilter("android.media.VOLUME_CHANGED_ACTION"));
                    break;
                }
                break;
            case 3:
                ScrollView scrollView = (ScrollView) this.f26c;
                int i6 = this.b;
                int i7 = MainActivity.f1002z1;
                scrollView.scrollTo(0, i6);
                break;
            default:
                e1 e1Var = (e1) this.f26c;
                int i8 = this.b;
                DriveRegenFloaterService driveRegenFloaterService = (DriveRegenFloaterService) e1Var.b;
                if (i8 != driveRegenFloaterService.A) {
                    driveRegenFloaterService.A = i8;
                    Log.i("DriveRegenFloater", "troca de marcha GEAR_SELECTION=" + i8 + " — reaplicar");
                    if (driveRegenFloaterService.f1275q != null) {
                        driveRegenFloaterService.c("gear_change");
                    }
                }
                break;
        }
    }
}
