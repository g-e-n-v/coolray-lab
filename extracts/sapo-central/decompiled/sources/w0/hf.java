package w0;

import android.content.Context;
import android.content.SharedPreferences;
import android.widget.TextView;
import android.widget.Toast;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.R;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class hf implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3685a;
    public final /* synthetic */ QuickAccessFloaterService b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TextView f3686c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f3687d;

    public /* synthetic */ hf(TextView textView, QuickAccessFloaterService quickAccessFloaterService, String str) {
        this.f3685a = 2;
        this.f3686c = textView;
        this.b = quickAccessFloaterService;
        this.f3687d = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean zE = false;
        boolean zE2 = false;
        switch (this.f3685a) {
            case 0:
                int i3 = QuickAccessFloaterService.t0;
                QuickAccessFloaterService quickAccessFloaterService = this.b;
                SharedPreferences sharedPreferences = quickAccessFloaterService.getSharedPreferences("tela_preta_prefs", 0);
                i2.g.b(sharedPreferences);
                String strD = u.d(sharedPreferences);
                Map mapX = y1.s.X(new x1.a("caApk", strD), new x1.a("caMd5", t1.w(strD)));
                try {
                    qe qeVar = qe.f4124a;
                    Context applicationContext = quickAccessFloaterService.getApplicationContext();
                    i2.g.d(applicationContext, "getApplicationContext(...)");
                    zE2 = qe.e(applicationContext, "rede.ativarConnAdaptor", mapX, 8);
                } catch (Exception e3) {
                    androidx.activity.result.b.o(e3, new StringBuilder("ativar AA: "), "QuickAccessFloater");
                }
                boolean z2 = zE2;
                quickAccessFloaterService.f1134a.post(new lf(this.f3686c, z2, quickAccessFloaterService, this.f3687d, 0));
                break;
            case 1:
                int i4 = QuickAccessFloaterService.t0;
                int[] iArr = CentralWatchdogService.S2;
                a5 a5VarQ = t1.q("↺ AA");
                a5 a5Var = a5.b;
                QuickAccessFloaterService quickAccessFloaterService2 = this.b;
                TextView textView = this.f3686c;
                String str = this.f3687d;
                if (a5VarQ != a5Var) {
                    try {
                        qe qeVar2 = qe.f4124a;
                        Context applicationContext2 = quickAccessFloaterService2.getApplicationContext();
                        i2.g.d(applicationContext2, "getApplicationContext(...)");
                        zE = qe.e(applicationContext2, "rede.reiniciarAa", null, 12);
                    } catch (Exception e4) {
                        androidx.activity.result.b.o(e4, new StringBuilder("reiniciar AA: "), "QuickAccessFloater");
                    }
                    quickAccessFloaterService2.f1134a.post(new lf(textView, zE, quickAccessFloaterService2, str, 1));
                } else {
                    quickAccessFloaterService2.f1134a.post(new hf(textView, quickAccessFloaterService2, str));
                }
                break;
            default:
                QuickAccessFloaterService quickAccessFloaterService3 = this.b;
                int i5 = QuickAccessFloaterService.t0;
                TextView textView2 = this.f3686c;
                textView2.setText("↺ AA\n!");
                try {
                    Toast.makeText(quickAccessFloaterService3, quickAccessFloaterService3.getString(R.string.k_reiniciar_ap0_em_uso), 1).show();
                    break;
                } catch (Throwable unused) {
                }
                quickAccessFloaterService3.f1134a.postDelayed(new mf(textView2, this.f3687d, zE ? 1 : 0), 3000L);
                break;
        }
    }

    public /* synthetic */ hf(QuickAccessFloaterService quickAccessFloaterService, TextView textView, String str, int i3) {
        this.f3685a = i3;
        this.b = quickAccessFloaterService;
        this.f3686c = textView;
        this.f3687d = str;
    }
}
