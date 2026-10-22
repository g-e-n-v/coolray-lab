package w0;

import android.os.SystemClock;
import android.widget.TextView;
import com.ex.auto.MainActivity;

/* JADX INFO: loaded from: classes.dex */
public final class nc implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MainActivity f3949a;
    public final /* synthetic */ long b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TextView f3950c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ CharSequence f3951d;

    public nc(MainActivity mainActivity, long j3, TextView textView, CharSequence charSequence) {
        this.f3949a = mainActivity;
        this.b = j3;
        this.f3950c = textView;
        this.f3951d = charSequence;
    }

    @Override // java.lang.Runnable
    public final void run() {
        MainActivity mainActivity = this.f3949a;
        if (mainActivity.isFinishing() || mainActivity.isDestroyed()) {
            return;
        }
        boolean z2 = SystemClock.elapsedRealtime() - this.b > 90000;
        if (mainActivity.f1025l0 && !z2) {
            mainActivity.f1045v.postDelayed(this, 500L);
            return;
        }
        CharSequence charSequence = this.f3951d;
        TextView textView = this.f3950c;
        textView.setText(charSequence);
        textView.setAlpha(1.0f);
        textView.setEnabled(true);
        if (z2) {
            ae aeVar = ae.f3361a;
            ae.b("Reiniciar", "rótulo do card devolvido por tempo (90s)", false);
        }
    }
}
