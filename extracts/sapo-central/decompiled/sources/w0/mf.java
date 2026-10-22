package w0;

import android.widget.TextView;
import com.ex.auto.QuickAccessFloaterService;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class mf implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3920a;
    public final /* synthetic */ TextView b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f3921c;

    public /* synthetic */ mf(TextView textView, String str, int i3) {
        this.f3920a = i3;
        this.b = textView;
        this.f3921c = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i3 = this.f3920a;
        String str = this.f3921c;
        TextView textView = this.b;
        switch (i3) {
            case 0:
                int i4 = QuickAccessFloaterService.t0;
                textView.setText(str);
                break;
            case 1:
                int i5 = QuickAccessFloaterService.t0;
                textView.setText(str);
                break;
            default:
                int i6 = QuickAccessFloaterService.t0;
                textView.setText(str);
                break;
        }
    }
}
