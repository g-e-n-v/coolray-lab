package w0;

import android.media.session.MediaController;
import android.media.session.PlaybackState;
import android.os.Handler;
import android.os.SystemClock;
import com.ex.auto.BlackoutFloaterService;
import com.ex.auto.DpadFloaterService;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class o0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3961a;
    public final /* synthetic */ int b;

    public /* synthetic */ o0(int i3, int i4) {
        this.f3961a = i4;
        this.b = i3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        MediaController mediaController;
        switch (this.f3961a) {
            case 0:
                int i3 = this.b;
                if (!BlackoutFloaterService.e(i3)) {
                    BlackoutFloaterService.a();
                    BlackoutFloaterService.e(i3);
                }
                break;
            case 1:
                int i4 = this.b;
                int i5 = DpadFloaterService.f901i;
                try {
                    String str = "input keyevent " + i4;
                    i2.g.e(str, "cmd");
                    m.x(str, 3000, null, new n(0));
                } catch (Exception e3) {
                    androidx.activity.result.b.o(e3, androidx.activity.result.b.k("keyevent ", i4, " falhou: "), "DpadFloater");
                    return;
                }
                break;
            default:
                int i6 = this.b;
                Handler handler = rg.f4186d;
                if (handler != null) {
                    if (i6 == 0) {
                        boolean z2 = rg.f4187e != 0 && SystemClock.uptimeMillis() - rg.f4187e >= 2000;
                        handler.removeCallbacks(rg.f);
                        rg.f4187e = 0L;
                        if (!z2) {
                            od odVar = od.f3992a;
                            if (!od.f4015z && (mediaController = od.f4001l) != null) {
                                PlaybackState playbackState = mediaController.getPlaybackState();
                                boolean z3 = playbackState != null && playbackState.getState() == 3;
                                try {
                                    if (z3) {
                                        mediaController.getTransportControls().pause();
                                    } else {
                                        mediaController.getTransportControls().play();
                                    }
                                    ae aeVar = ae.f3361a;
                                    StringBuilder sb = new StringBuilder("mic do volante: ");
                                    sb.append(z3 ? "pause" : "play");
                                    sb.append(" em ");
                                    sb.append(mediaController.getPackageName());
                                    ae.b("MediaCenterBridge", sb.toString(), false);
                                } catch (Throwable th) {
                                    androidx.activity.result.b.s(th, new StringBuilder("mic do volante: play/pause falhou: "), "MediaCenterBridge");
                                }
                            }
                        }
                        break;
                    } else if (i6 == 1) {
                        rg.f4187e = SystemClock.uptimeMillis();
                        r0 r0Var = rg.f;
                        handler.removeCallbacks(r0Var);
                        handler.postDelayed(r0Var, 2000L);
                        break;
                    }
                }
                break;
        }
    }

    public /* synthetic */ o0(BlackoutFloaterService blackoutFloaterService, int i3) {
        this.f3961a = 0;
        this.b = i3;
    }
}
