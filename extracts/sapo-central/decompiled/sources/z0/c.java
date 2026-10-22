package z0;

import com.geely.driveregenfloater.DriveRegenFloaterService;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4685a;
    public final /* synthetic */ DriveRegenFloaterService b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f4686c;

    public /* synthetic */ c(DriveRegenFloaterService driveRegenFloaterService, int i3, int i4) {
        this.f4685a = i4;
        this.b = driveRegenFloaterService;
        this.f4686c = i3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i3 = this.f4685a;
        int i4 = this.f4686c;
        DriveRegenFloaterService driveRegenFloaterService = this.b;
        switch (i3) {
            case 0:
                boolean z2 = DriveRegenFloaterService.M;
                driveRegenFloaterService.b(i4, "regen");
                break;
            default:
                boolean z3 = DriveRegenFloaterService.M;
                driveRegenFloaterService.a(i4, "drive");
                break;
        }
    }
}
