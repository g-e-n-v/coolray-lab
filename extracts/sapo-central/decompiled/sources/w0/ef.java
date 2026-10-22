package w0;

import android.util.Log;
import android.widget.TextView;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.R;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ef implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3552a;
    public final /* synthetic */ QuickAccessFloaterService b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f3553c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f3554d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f3555e;

    public /* synthetic */ ef(QuickAccessFloaterService quickAccessFloaterService, int i3, int i4, int i5, int i6) {
        this.f3552a = i6;
        this.b = quickAccessFloaterService;
        this.f3553c = i3;
        this.f3554d = i4;
        this.f3555e = i5;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3552a) {
            case 0:
                QuickAccessFloaterService quickAccessFloaterService = this.b;
                int i3 = this.f3553c;
                int i4 = this.f3554d;
                int i5 = this.f3555e;
                TextView textView = quickAccessFloaterService.f1162p;
                if (textView != null) {
                    textView.setBackground(quickAccessFloaterService.N(i3, i4, true, true, false, false));
                }
                TextView textView2 = quickAccessFloaterService.f1162p;
                if (textView2 != null) {
                    textView2.setText("");
                }
                TextView textView3 = quickAccessFloaterService.f1164q;
                if (textView3 != null) {
                    textView3.setBackground(quickAccessFloaterService.N(i5, i4, false, false, true, true));
                }
                TextView textView4 = quickAccessFloaterService.f1164q;
                if (textView4 != null) {
                    textView4.setText("");
                }
                break;
            default:
                QuickAccessFloaterService quickAccessFloaterService2 = this.b;
                int i6 = this.f3553c;
                int i7 = this.f3554d;
                int i8 = this.f3555e;
                if (!quickAccessFloaterService2.M) {
                    StringBuilder sb = new StringBuilder("Gesto 2 dedos: ventoinha ");
                    sb.append(i6);
                    sb.append(" -> ");
                    sb.append(i7);
                    sb.append(" (area=0x");
                    k1.a.f(16);
                    String string = Integer.toString(i8, 16);
                    i2.g.d(string, "toString(...)");
                    sb.append(string);
                    sb.append(')');
                    Log.i("QuickAccessFloater", sb.toString());
                    String string2 = quickAccessFloaterService2.getString(R.string.k_fan_speed_toast, Integer.valueOf(i7));
                    i2.g.d(string2, "getString(...)");
                    quickAccessFloaterService2.G(string2);
                }
                break;
        }
    }
}
