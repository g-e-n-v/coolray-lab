package g0;

import android.app.Service;
import android.database.ContentObserver;
import android.database.Cursor;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import com.ex.auto.BlackoutFloaterService;
import com.ex.auto.QuickAccessFloaterService;
import i.y2;

/* JADX INFO: loaded from: classes.dex */
public final class a extends ContentObserver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1791a;
    public final /* synthetic */ Object b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ a(Service service, Handler handler, int i3) {
        super(handler);
        this.f1791a = i3;
        this.b = service;
    }

    @Override // android.database.ContentObserver
    public boolean deliverSelfNotifications() {
        switch (this.f1791a) {
            case 0:
                return true;
            default:
                return super.deliverSelfNotifications();
        }
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z2) {
        Cursor cursor;
        switch (this.f1791a) {
            case 0:
                y2 y2Var = (y2) this.b;
                if (y2Var.b && (cursor = y2Var.f1794c) != null && !cursor.isClosed()) {
                    y2Var.f1793a = y2Var.f1794c.requery();
                    break;
                }
                break;
            case 1:
                BlackoutFloaterService blackoutFloaterService = (BlackoutFloaterService) this.b;
                if (blackoutFloaterService.f798c) {
                    Log.i("BlackoutFloater", "Volume (Settings) alterado — restaurando backlight");
                    blackoutFloaterService.d();
                }
                break;
            default:
                QuickAccessFloaterService quickAccessFloaterService = (QuickAccessFloaterService) this.b;
                if (quickAccessFloaterService.Q && SystemClock.elapsedRealtime() - quickAccessFloaterService.U >= 1500) {
                    quickAccessFloaterService.b0();
                    break;
                }
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(y2 y2Var) {
        super(new Handler());
        this.f1791a = 0;
        this.b = y2Var;
    }
}
