package w0;

import android.os.Handler;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.ex.auto.HomeFloatingWidgetsService;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class u7 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4337a = 1;
    public Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f4338c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f4339d;

    public /* synthetic */ u7() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object objCall;
        switch (this.f4337a) {
            case 0:
                ExecutorService executorService = n3.f3929a;
                HomeFloatingWidgetsService homeFloatingWidgetsService = (HomeFloatingWidgetsService) this.b;
                n3.b("widgets-cpu-panel", new h0(homeFloatingWidgetsService, (FrameLayout) this.f4338c, (LinearLayout) this.f4339d, 1));
                homeFloatingWidgetsService.f929c.postDelayed(this, 2000L);
                break;
            default:
                try {
                    objCall = ((z.d) this.b).call();
                } catch (Exception unused) {
                    objCall = null;
                }
                ((Handler) this.f4339d).post(new androidx.fragment.app.c((z.e) this.f4338c, 4, objCall));
                break;
        }
    }

    public u7(HomeFloatingWidgetsService homeFloatingWidgetsService, FrameLayout frameLayout, LinearLayout linearLayout) {
        this.b = homeFloatingWidgetsService;
        this.f4338c = frameLayout;
        this.f4339d = linearLayout;
    }
}
