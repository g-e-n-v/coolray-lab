package w0;

import android.app.ActivityManager;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.R;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class of implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4023a;
    public final /* synthetic */ QuickAccessFloaterService b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ArrayList f4024c;

    public /* synthetic */ of(QuickAccessFloaterService quickAccessFloaterService, ArrayList arrayList, int i3) {
        this.f4023a = i3;
        this.b = quickAccessFloaterService;
        this.f4024c = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i3 = this.f4023a;
        ArrayList arrayList = this.f4024c;
        QuickAccessFloaterService quickAccessFloaterService = this.b;
        switch (i3) {
            case 0:
                int i4 = QuickAccessFloaterService.t0;
                Object systemService = quickAccessFloaterService.getSystemService("activity");
                i2.g.c(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
                e8.y((ActivityManager) systemService, y1.g.p0(arrayList), new kf(2, quickAccessFloaterService));
                quickAccessFloaterService.f1134a.post(new of(quickAccessFloaterService, arrayList, 1));
                break;
            default:
                int i5 = QuickAccessFloaterService.t0;
                String string = quickAccessFloaterService.getString(R.string.k_close_apps_done, Integer.valueOf(arrayList.size()));
                i2.g.d(string, "getString(...)");
                quickAccessFloaterService.G(string);
                break;
        }
    }
}
