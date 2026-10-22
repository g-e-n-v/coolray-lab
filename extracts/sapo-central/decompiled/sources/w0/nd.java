package w0;

import android.os.Handler;
import com.ecarx.eas.sdk.mediacenter.MediaCenterAPI;

/* JADX INFO: loaded from: classes.dex */
public final class nd implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3952a;

    public /* synthetic */ nd(int i3) {
        this.f3952a = i3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        switch (this.f3952a) {
            case 0:
                if (!od.f3996g) {
                    od.f3992a.b("poll");
                    Handler handler = od.f4000k;
                    if (handler != null) {
                        handler.postDelayed(this, 5000L);
                    }
                    break;
                }
                break;
            default:
                if (!od.f3996g) {
                    od odVar = od.f3992a;
                    MediaCenterAPI mediaCenterAPI = od.f3994d;
                    if (mediaCenterAPI != null && (obj = od.f3995e) != null && od.f) {
                        if (!mediaCenterAPI.isServiceAlive()) {
                            od.l();
                        } else if (od.f4005p == 1 && !od.f4014y) {
                            try {
                                String strQueryCurrentFocusClient = mediaCenterAPI.queryCurrentFocusClient(obj);
                                if (strQueryCurrentFocusClient == null || strQueryCurrentFocusClient.length() == 0) {
                                    mediaCenterAPI.requestPlay(obj);
                                }
                            } catch (Throwable th) {
                                androidx.activity.result.b.s(th, new StringBuilder("checkFocus IPC: "), "MediaCenterBridge");
                            }
                        }
                    }
                    Handler handler2 = od.f4000k;
                    if (handler2 != null) {
                        handler2.postDelayed(this, 10000L);
                    }
                    break;
                }
                break;
        }
    }
}
