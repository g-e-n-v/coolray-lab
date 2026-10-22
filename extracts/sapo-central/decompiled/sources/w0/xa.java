package w0;

import android.content.ContextWrapper;
import com.ex.auto.MainActivity;
import com.geely.driveregenfloater.DriveRegenFloaterService;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class xa implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4505a = 0;
    public final /* synthetic */ ContextWrapper b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f4506c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ boolean f4507d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f4508e;

    public /* synthetic */ xa(int i3, MainActivity mainActivity, boolean z2, int i4) {
        this.f4506c = i3;
        this.b = mainActivity;
        this.f4507d = z2;
        this.f4508e = i4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z2 = false;
        boolean z3 = true;
        switch (this.f4505a) {
            case 0:
                int i3 = this.f4506c;
                MainActivity mainActivity = (MainActivity) this.b;
                boolean z4 = this.f4507d;
                int i4 = this.f4508e;
                if (i3 == mainActivity.f1038s0.get()) {
                    if (z4) {
                        i4 = 0;
                    }
                    mainActivity.w0("setAVASMode", Integer.valueOf(i4));
                    mainActivity.f1045v.post(new na(i3, mainActivity, mainActivity.G(new Object[0]), 3, (byte) 0));
                    break;
                }
                break;
            case 1:
                MainActivity mainActivity2 = (MainActivity) this.b;
                int i5 = this.f4506c;
                boolean z5 = this.f4507d;
                int i6 = this.f4508e;
                int i7 = MainActivity.f1002z1;
                mainActivity2.N(i5, i6 + 1, z5);
                break;
            default:
                DriveRegenFloaterService driveRegenFloaterService = (DriveRegenFloaterService) this.b;
                int i8 = this.f4506c;
                int i9 = this.f4508e;
                boolean z6 = this.f4507d;
                if (!driveRegenFloaterService.f1280v.b && DriveRegenFloaterService.M && driveRegenFloaterService.b != null) {
                    if (DriveRegenFloaterService.g(i8) && driveRegenFloaterService.f1282x != i8) {
                        driveRegenFloaterService.f1282x = i8;
                        z2 = true;
                    }
                    if (!DriveRegenFloaterService.f(i9) || driveRegenFloaterService.f1283y == i9) {
                        z3 = z2;
                    } else {
                        driveRegenFloaterService.f1283y = i9;
                    }
                    if (z6 || z3) {
                        driveRegenFloaterService.n();
                    }
                    break;
                }
                break;
        }
    }

    public /* synthetic */ xa(MainActivity mainActivity, int i3, boolean z2, int i4) {
        this.b = mainActivity;
        this.f4506c = i3;
        this.f4507d = z2;
        this.f4508e = i4;
    }

    public /* synthetic */ xa(DriveRegenFloaterService driveRegenFloaterService, int i3, int i4, boolean z2) {
        this.b = driveRegenFloaterService;
        this.f4506c = i3;
        this.f4508e = i4;
        this.f4507d = z2;
    }
}
