package w0;

import android.os.SystemClock;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.R;
import com.ex.auto.TimerFloaterService;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ah implements h2.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3370a;
    public final /* synthetic */ TimerFloaterService b;

    public /* synthetic */ ah(TimerFloaterService timerFloaterService, int i3) {
        this.f3370a = i3;
        this.b = timerFloaterService;
    }

    @Override // h2.a
    public final Object a() {
        LinearLayout linearLayout;
        LinearLayout linearLayout2;
        switch (this.f3370a) {
            case 0:
                TimerFloaterService timerFloaterService = this.b;
                return Boolean.valueOf(timerFloaterService.b != null && timerFloaterService.f1229k);
            case 1:
                TimerFloaterService timerFloaterService2 = this.b;
                boolean z2 = TimerFloaterService.f1220o;
                long jA = timerFloaterService2.a();
                long j3 = 1000;
                long j4 = jA / j3;
                long j5 = 3600;
                long j6 = j4 / j5;
                long j7 = 60;
                long j8 = (j4 % j5) / j7;
                long j9 = j4 % j7;
                long j10 = (jA % j3) / ((long) 10);
                TextView textView = timerFloaterService2.f;
                if (textView != null) {
                    textView.setText(j6 > 0 ? String.format("%d:%02d:%02d.%02d", Arrays.copyOf(new Object[]{Long.valueOf(j6), Long.valueOf(j8), Long.valueOf(j9), Long.valueOf(j10)}, 4)) : String.format("%02d:%02d.%02d", Arrays.copyOf(new Object[]{Long.valueOf(j8), Long.valueOf(j9), Long.valueOf(j10)}, 3)));
                }
                if (i2.g.a(timerFloaterService2.f1224e, "regressiva") && timerFloaterService2.f1229k && jA == 0) {
                    timerFloaterService2.f1229k = false;
                    timerFloaterService2.f1227i = 0L;
                    Button button = timerFloaterService2.f1225g;
                    if (button != null) {
                        button.setText(timerFloaterService2.getString(R.string.k_timer_iniciar));
                    }
                    LinearLayout linearLayout3 = timerFloaterService2.f1226h;
                    if (linearLayout3 != null) {
                        linearLayout3.setVisibility(0);
                    }
                    TextView textView2 = timerFloaterService2.f;
                    if (textView2 != null) {
                        textView2.setTextColor(-44462);
                    }
                    Toast.makeText(timerFloaterService2, timerFloaterService2.getString(R.string.k_timer_terminou), 1).show();
                }
                return x1.e.f4647c;
            case 2:
                TimerFloaterService timerFloaterService3 = this.b;
                if (!i2.g.a(timerFloaterService3.f1224e, "regressiva") || timerFloaterService3.f1229k || timerFloaterService3.f1227i > 0) {
                    if (timerFloaterService3.f1229k) {
                        timerFloaterService3.f1227i = timerFloaterService3.a();
                        timerFloaterService3.f1229k = false;
                        Button button2 = timerFloaterService3.f1225g;
                        if (button2 != null) {
                            button2.setText(timerFloaterService3.getString(R.string.k_timer_iniciar));
                        }
                        if (i2.g.a(timerFloaterService3.f1224e, "regressiva") && (linearLayout2 = timerFloaterService3.f1226h) != null) {
                            linearLayout2.setVisibility(0);
                        }
                    } else {
                        timerFloaterService3.f1228j = SystemClock.elapsedRealtime();
                        timerFloaterService3.f1229k = true;
                        Button button3 = timerFloaterService3.f1225g;
                        if (button3 != null) {
                            button3.setText(timerFloaterService3.getString(R.string.k_timer_pausar));
                        }
                        TextView textView3 = timerFloaterService3.f;
                        if (textView3 != null) {
                            textView3.setTextColor(-1);
                        }
                        if (i2.g.a(timerFloaterService3.f1224e, "regressiva") && (linearLayout = timerFloaterService3.f1226h) != null) {
                            linearLayout.setVisibility(8);
                        }
                    }
                    timerFloaterService3.f1232n.j();
                }
                return x1.e.f4647c;
            case 3:
                TimerFloaterService timerFloaterService4 = this.b;
                timerFloaterService4.f1229k = false;
                timerFloaterService4.f1227i = i2.g.a(timerFloaterService4.f1224e, "regressiva") ? timerFloaterService4.f1230l : 0L;
                Button button4 = timerFloaterService4.f1225g;
                if (button4 != null) {
                    button4.setText(timerFloaterService4.getString(R.string.k_timer_iniciar));
                }
                TextView textView4 = timerFloaterService4.f;
                if (textView4 != null) {
                    textView4.setTextColor(-1);
                }
                LinearLayout linearLayout4 = timerFloaterService4.f1226h;
                if (linearLayout4 != null) {
                    linearLayout4.setVisibility(0);
                }
                timerFloaterService4.f1232n.j();
                break;
            case 4:
                TimerFloaterService timerFloaterService5 = this.b;
                boolean z3 = TimerFloaterService.f1220o;
                timerFloaterService5.g(-0.15f);
                break;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                TimerFloaterService timerFloaterService6 = this.b;
                boolean z4 = TimerFloaterService.f1220o;
                timerFloaterService6.g(0.15f);
                break;
            default:
                TimerFloaterService timerFloaterService7 = this.b;
                boolean z5 = TimerFloaterService.f1220o;
                timerFloaterService7.stopSelf();
                break;
        }
        return x1.e.f4647c;
    }
}
