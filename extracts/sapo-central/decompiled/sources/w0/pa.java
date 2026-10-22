package w0;

import android.car.hardware.property.CarPropertyManager;
import android.widget.TextView;
import com.ex.auto.MainActivity;
import com.ex.auto.Politica;
import com.ex.auto.R;
import com.ex.auto.VhalProviderService;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class pa implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4061a = 0;
    public final /* synthetic */ MainActivity b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CarPropertyManager f4062c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ boolean f4063d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f4064e;

    public /* synthetic */ pa(CarPropertyManager carPropertyManager, int i3, MainActivity mainActivity, boolean z2) {
        this.f4062c = carPropertyManager;
        this.f4064e = i3;
        this.b = mainActivity;
        this.f4063d = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Float fValueOf;
        Float fL;
        switch (this.f4061a) {
            case 0:
                CarPropertyManager carPropertyManager = this.f4062c;
                int i3 = this.f4064e;
                MainActivity mainActivity = this.b;
                boolean z2 = this.f4063d;
                int i4 = MainActivity.f1002z1;
                mainActivity.f1045v.post(new ta(mainActivity, p1.l(carPropertyManager, u.f4302q, 0, i3), z2, 3));
                return;
            default:
                final MainActivity mainActivity2 = this.b;
                CarPropertyManager carPropertyManager2 = this.f4062c;
                final boolean z3 = this.f4063d;
                final int i5 = this.f4064e;
                int i6 = MainActivity.f1002z1;
                try {
                    wg wgVarB = VhalProviderService.b(2000L);
                    if (wgVarB == null || (fValueOf = wgVarB.f4471q) == null) {
                        try {
                            int[] iArr = {0, 1};
                            int i7 = 0;
                            while (true) {
                                if (i7 < 2) {
                                    int i8 = iArr[i7];
                                    try {
                                        AtomicInteger atomicInteger = p1.f4042a;
                                        Integer numC = p1.c(carPropertyManager2, Politica.h(20), i8);
                                        if (numC != null) {
                                            float fIntValue = numC.intValue() / 10.0f;
                                            if (5.0f <= fIntValue && fIntValue <= 20.0f) {
                                                fValueOf = Float.valueOf(fIntValue);
                                            }
                                        } else {
                                            continue;
                                        }
                                    } catch (Exception unused) {
                                    }
                                    i7++;
                                } else {
                                    fValueOf = null;
                                }
                            }
                        } catch (Exception unused2) {
                        }
                    }
                    if (wgVarB == null || (fL = wgVarB.f4459d) == null) {
                        try {
                            int i9 = pg.f4073a;
                            fL = pg.l(carPropertyManager2);
                        } catch (Exception unused3) {
                            fL = null;
                        }
                        break;
                    }
                    final Integer numB1 = z3 ? MainActivity.b1(carPropertyManager2, 537003264, mainActivity2.q1, mainActivity2.f1039s1) : null;
                    final Integer numB2 = z3 ? MainActivity.b1(carPropertyManager2, 570491136, mainActivity2.f1037r1, mainActivity2.f1041t1) : null;
                    final Float f = fValueOf;
                    final Float f3 = fL;
                    mainActivity2.f1045v.post(new Runnable() { // from class: w0.r9
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i10 = MainActivity.f1002z1;
                            MainActivity mainActivity3 = mainActivity2;
                            if (mainActivity3.isFinishing() || mainActivity3.isDestroyed()) {
                                return;
                            }
                            Float f4 = f;
                            String str = f4 != null ? String.format("%.1fV", Arrays.copyOf(new Object[]{Float.valueOf(f4.floatValue())}, 1)) : "n/d";
                            if (!str.equals(mainActivity3.C0)) {
                                mainActivity3.C0 = str;
                                ((TextView) mainActivity3.findViewById(R.id.masterTop12v)).setText(str);
                            }
                            mainActivity3.w2(f3);
                            mainActivity3.x2(true);
                            if (z3) {
                                if (i5 == mainActivity3.f1044u1.get() && mainActivity3.R == mainActivity3.L1(R.id.masterNavInicio)) {
                                    mainActivity3.i1(numB1, numB2);
                                }
                            }
                        }
                    });
                    return;
                } finally {
                    mainActivity2.f1052y = false;
                }
        }
    }

    public /* synthetic */ pa(MainActivity mainActivity, CarPropertyManager carPropertyManager, boolean z2, int i3) {
        this.b = mainActivity;
        this.f4062c = carPropertyManager;
        this.f4063d = z2;
        this.f4064e = i3;
    }
}
