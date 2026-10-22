package w0;

import android.content.ContextWrapper;
import android.widget.TextView;
import com.ex.auto.MainActivity;
import com.ex.auto.MasterToggleView;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.R;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class lf implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3851a;
    public final /* synthetic */ TextView b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f3852c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ContextWrapper f3853d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f3854e;

    public /* synthetic */ lf(TextView textView, boolean z2, QuickAccessFloaterService quickAccessFloaterService, String str, int i3) {
        this.f3851a = i3;
        this.b = textView;
        this.f3852c = z2;
        this.f3853d = quickAccessFloaterService;
        this.f3854e = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i3 = this.f3851a;
        TextView textView = this.b;
        boolean z2 = this.f3852c;
        Object obj = this.f3854e;
        ContextWrapper contextWrapper = this.f3853d;
        switch (i3) {
            case 0:
                QuickAccessFloaterService quickAccessFloaterService = (QuickAccessFloaterService) contextWrapper;
                String str = (String) obj;
                int i4 = QuickAccessFloaterService.t0;
                textView.setText(z2 ? "▶ AA\n✓" : "▶ AA\n✗");
                quickAccessFloaterService.f1134a.postDelayed(new mf(textView, str, 2), 3000L);
                break;
            case 1:
                QuickAccessFloaterService quickAccessFloaterService2 = (QuickAccessFloaterService) contextWrapper;
                String str2 = (String) obj;
                int i5 = QuickAccessFloaterService.t0;
                textView.setText(z2 ? "↺ AA\n✓" : "↺ AA\n✗");
                quickAccessFloaterService2.f1134a.postDelayed(new mf(textView, str2, 1), 2000L);
                break;
            default:
                MainActivity mainActivity = (MainActivity) contextWrapper;
                MasterToggleView masterToggleView = (MasterToggleView) obj;
                int i6 = MainActivity.f1002z1;
                if (!mainActivity.isFinishing() && !mainActivity.isDestroyed()) {
                    masterToggleView.setActive(z2);
                    textView.setText(mainActivity.getString(z2 ? R.string.master_perf_video_on : R.string.master_perf_video_off));
                    break;
                }
                break;
        }
    }

    public /* synthetic */ lf(MainActivity mainActivity, MasterToggleView masterToggleView, boolean z2, TextView textView) {
        this.f3851a = 2;
        this.f3853d = mainActivity;
        this.f3854e = masterToggleView;
        this.f3852c = z2;
        this.b = textView;
    }
}
