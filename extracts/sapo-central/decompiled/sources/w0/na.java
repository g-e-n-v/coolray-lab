package w0;

import android.car.hardware.property.CarPropertyManager;
import android.widget.Spinner;
import com.ex.auto.MainActivity;
import com.ex.auto.R;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class na implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3945a;
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MainActivity f3946c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f3947d;

    public /* synthetic */ na(int i3, MainActivity mainActivity, int i4, int i5) {
        this.f3945a = 1;
        this.b = i3;
        this.f3946c = mainActivity;
        this.f3947d = i5;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3945a) {
            case 0:
                int i3 = this.b;
                MainActivity mainActivity = this.f3946c;
                int i4 = this.f3947d;
                if (i3 == mainActivity.f1044u1.get()) {
                    CarPropertyManager carPropertyManager = mainActivity.M;
                    boolean z2 = false;
                    if (carPropertyManager != null) {
                        int[] iArr = {0, 1, 16777216};
                        for (int i5 = 0; i5 < 3; i5++) {
                            if (p1.l(carPropertyManager, 570491136, iArr[i5], i4)) {
                                z2 = true;
                            }
                        }
                    }
                    StringBuilder sbK = androidx.activity.result.b.k("toque na tela: drive=", i4, " escrita=");
                    sbK.append(z2 ? "aceita" : "recusada");
                    mainActivity.x("Condução", sbK.toString());
                    if (!z2) {
                        mainActivity.f1045v.post(new ma(mainActivity, 22));
                    }
                    break;
                }
                break;
            case 1:
                int i6 = this.b;
                MainActivity mainActivity2 = this.f3946c;
                int i7 = this.f3947d;
                if (i6 == mainActivity2.f1038s0.get() && !mainActivity2.isFinishing() && !mainActivity2.isDestroyed()) {
                    Integer numR = t1.R(i7);
                    if (numR != null) {
                        mainActivity2.o0().edit().putInt("avas_mode_ativo", numR.intValue()).apply();
                    }
                    if (i7 >= 0) {
                        mainActivity2.f1036r0 = i7 == 0;
                    }
                    mainActivity2.g1();
                    break;
                }
                break;
            case 2:
                int i8 = this.b;
                MainActivity mainActivity3 = this.f3946c;
                int i9 = this.f3947d;
                if (i8 == mainActivity3.f1043u0.get() && !mainActivity3.isFinishing() && !mainActivity3.isDestroyed()) {
                    int iK = k1.a.k(i9 - 1, 0, 2);
                    mainActivity3.f1011e0 = iK;
                    if (mainActivity3.S0[3]) {
                        ((Spinner) mainActivity3.findViewById(R.id.masterAudioAvasSpinner)).setSelection(iK, false);
                    }
                    break;
                }
                break;
            default:
                int i10 = this.b;
                MainActivity mainActivity4 = this.f3946c;
                int i11 = this.f3947d;
                if (i10 == mainActivity4.f1038s0.get() && !mainActivity4.isFinishing() && !mainActivity4.isDestroyed()) {
                    if (i11 >= 0) {
                        mainActivity4.f1036r0 = i11 == 0;
                    }
                    mainActivity4.g1();
                    break;
                }
                break;
        }
    }

    public /* synthetic */ na(int i3, MainActivity mainActivity, int i4, int i5, byte b) {
        this.f3945a = i5;
        this.b = i3;
        this.f3946c = mainActivity;
        this.f3947d = i4;
    }
}
