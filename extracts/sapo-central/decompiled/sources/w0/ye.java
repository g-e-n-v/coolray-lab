package w0;

import android.widget.TextView;
import com.ex.auto.QuickAccessFloaterService;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ye implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4592a;
    public final /* synthetic */ QuickAccessFloaterService b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TextView f4593c;

    public /* synthetic */ ye(QuickAccessFloaterService quickAccessFloaterService, TextView textView, int i3) {
        this.f4592a = i3;
        this.b = quickAccessFloaterService;
        this.f4593c = textView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4592a) {
            case 0:
                QuickAccessFloaterService quickAccessFloaterService = this.b;
                TextView textView = this.f4593c;
                int i3 = QuickAccessFloaterService.t0;
                quickAccessFloaterService.a0(textView);
                break;
            default:
                QuickAccessFloaterService quickAccessFloaterService2 = this.b;
                TextView textView2 = this.f4593c;
                if (!quickAccessFloaterService2.M) {
                    quickAccessFloaterService2.W(textView2);
                }
                break;
        }
    }
}
