package w0;

import android.car.hardware.property.CarPropertyManager;
import android.content.SharedPreferences;
import com.ex.auto.MainActivity;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class j9 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3757a;
    public final /* synthetic */ CarPropertyManager b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MainActivity f3758c;

    public /* synthetic */ j9(CarPropertyManager carPropertyManager, MainActivity mainActivity, int i3) {
        this.f3757a = i3;
        this.b = carPropertyManager;
        this.f3758c = mainActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i3 = this.f3757a;
        boolean z2 = true;
        MainActivity mainActivity = this.f3758c;
        CarPropertyManager carPropertyManager = this.b;
        switch (i3) {
            case 0:
                int i4 = MainActivity.f1002z1;
                AtomicInteger atomicInteger = p1.f4042a;
                Integer numC = p1.c(carPropertyManager, u.f4302q, 0);
                if (numC != null && numC.intValue() == 1) {
                    z2 = false;
                } else if ((numC == null || numC.intValue() != 2) && (numC == null || numC.intValue() != 3)) {
                }
                mainActivity.f1045v.post(new f9(mainActivity, z2, 6));
                break;
            default:
                int i5 = MainActivity.f1002z1;
                try {
                    AtomicInteger atomicInteger2 = p1.f4042a;
                    Integer numC2 = p1.c(carPropertyManager, u.f4288a, 0);
                    if (numC2 != null) {
                        int iIntValue = numC2.intValue();
                        SharedPreferences.Editor editorEdit = mainActivity.o0().edit();
                        if (iIntValue == 0) {
                            z2 = false;
                        }
                        editorEdit.putBoolean("aeb_desired", z2).apply();
                    }
                } catch (Throwable unused) {
                    return;
                }
                break;
        }
    }
}
