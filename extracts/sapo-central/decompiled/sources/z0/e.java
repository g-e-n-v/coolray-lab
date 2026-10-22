package z0;

import a1.r;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.geely.driveregenfloater.DriveRegenFloaterService;

/* JADX INFO: loaded from: classes.dex */
public final class e extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4690a;
    public final /* synthetic */ DriveRegenFloaterService b;

    public /* synthetic */ e(DriveRegenFloaterService driveRegenFloaterService, int i3) {
        this.f4690a = i3;
        this.b = driveRegenFloaterService;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        int i3 = this.f4690a;
        DriveRegenFloaterService driveRegenFloaterService = this.b;
        switch (i3) {
            case 0:
                String action = intent.getAction();
                if ("UPDATE_FLOATER_ALPHA".equals(action)) {
                    int intExtra = intent.getIntExtra("alpha", 100);
                    View view = driveRegenFloaterService.b;
                    if (view != null) {
                        view.setAlpha(intExtra / 100.0f);
                    }
                } else if ("UPDATE_DRIVE_REGEN_MODES".equals(action)) {
                    r rVar = new r(16, this);
                    boolean z2 = DriveRegenFloaterService.M;
                    driveRegenFloaterService.j(rVar);
                }
                break;
            default:
                String action2 = intent.getAction();
                if ("android.intent.action.SCREEN_ON".equals(action2) || "android.intent.action.USER_PRESENT".equals(action2)) {
                    r rVar2 = new r(17, this);
                    boolean z3 = DriveRegenFloaterService.M;
                    driveRegenFloaterService.j(rVar2);
                }
                break;
        }
    }
}
