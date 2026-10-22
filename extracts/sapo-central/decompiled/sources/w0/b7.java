package w0;

import android.car.hardware.property.CarPropertyManager;
import com.ex.auto.HomeFloatingWidgetsService;
import com.ex.auto.QuickAccessFloaterService;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b7 implements h2.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3384a;
    public final /* synthetic */ int b;

    public /* synthetic */ b7(int i3, int i4) {
        this.f3384a = i4;
        this.b = i3;
    }

    @Override // h2.l
    public final Object c(Object obj) {
        int i3 = this.f3384a;
        int i4 = this.b;
        CarPropertyManager carPropertyManager = (CarPropertyManager) obj;
        switch (i3) {
            case 0:
                List list = HomeFloatingWidgetsService.f926a0;
                i2.g.e(carPropertyManager, "it");
                v7.s(carPropertyManager, i4);
                break;
            case 1:
                List list2 = HomeFloatingWidgetsService.f926a0;
                i2.g.e(carPropertyManager, "it");
                v7.y(carPropertyManager, i4);
                break;
            case 2:
                List list3 = HomeFloatingWidgetsService.f926a0;
                i2.g.e(carPropertyManager, "it");
                v7.s(carPropertyManager, i4);
                break;
            case 3:
                List list4 = HomeFloatingWidgetsService.f926a0;
                i2.g.e(carPropertyManager, "it");
                v7.y(carPropertyManager, i4);
                break;
            default:
                int i5 = QuickAccessFloaterService.t0;
                i2.g.e(carPropertyManager, "manager");
                int[] iArr = {0, 1, 16777216};
                for (int i6 = 0; i6 < 3 && !p1.l(carPropertyManager, 570491136, iArr[i6], i4); i6++) {
                }
                return x1.e.f4647c;
        }
        return x1.e.f4647c;
    }
}
