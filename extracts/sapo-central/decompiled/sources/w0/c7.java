package w0;

import android.car.hardware.property.CarPropertyManager;
import com.ex.auto.HomeFloatingWidgetsService;
import com.ex.auto.QuickAccessFloaterService;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c7 implements h2.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3432a;
    public final /* synthetic */ Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f3433c;

    public /* synthetic */ c7(Object obj, int i3, int i4) {
        this.f3432a = i4;
        this.b = obj;
        this.f3433c = i3;
    }

    @Override // h2.l
    public final Object c(Object obj) {
        int iIntValue;
        int i3 = 7;
        switch (this.f3432a) {
            case 0:
                HomeFloatingWidgetsService homeFloatingWidgetsService = (HomeFloatingWidgetsService) this.b;
                int i4 = this.f3433c;
                CarPropertyManager carPropertyManager = (CarPropertyManager) obj;
                List list = HomeFloatingWidgetsService.f926a0;
                i2.g.e(carPropertyManager, "manager");
                Integer numE = homeFloatingWidgetsService.f942q;
                iIntValue = (numE == null && (numE = v7.e(carPropertyManager)) == null) ? 3 : numE.intValue();
                int iK = k1.a.k(i4 + iIntValue, 0, 7);
                if (iK != iIntValue) {
                    v7.s(carPropertyManager, iK);
                }
                homeFloatingWidgetsService.f942q = Integer.valueOf(iK);
                homeFloatingWidgetsService.r(new x6(homeFloatingWidgetsService, i3));
                break;
            case 1:
                HomeFloatingWidgetsService homeFloatingWidgetsService2 = (HomeFloatingWidgetsService) this.b;
                int i5 = this.f3433c;
                CarPropertyManager carPropertyManager2 = (CarPropertyManager) obj;
                List list2 = HomeFloatingWidgetsService.f926a0;
                i2.g.e(carPropertyManager2, "it");
                v7.w(homeFloatingWidgetsService2, carPropertyManager2, i5);
                break;
            case 2:
                HomeFloatingWidgetsService homeFloatingWidgetsService3 = (HomeFloatingWidgetsService) this.b;
                int i6 = this.f3433c;
                CarPropertyManager carPropertyManager3 = (CarPropertyManager) obj;
                List list3 = HomeFloatingWidgetsService.f926a0;
                i2.g.e(carPropertyManager3, "manager");
                Integer numE2 = homeFloatingWidgetsService3.f942q;
                iIntValue = (numE2 == null && (numE2 = v7.e(carPropertyManager3)) == null) ? 3 : numE2.intValue();
                int iK2 = k1.a.k(i6 + iIntValue, 0, 7);
                if (iK2 != iIntValue) {
                    v7.s(carPropertyManager3, iK2);
                }
                homeFloatingWidgetsService3.f942q = Integer.valueOf(iK2);
                homeFloatingWidgetsService3.r(new x6(homeFloatingWidgetsService3, 11));
                break;
            case 3:
                HomeFloatingWidgetsService homeFloatingWidgetsService4 = (HomeFloatingWidgetsService) this.b;
                int i7 = this.f3433c;
                CarPropertyManager carPropertyManager4 = (CarPropertyManager) obj;
                List list4 = HomeFloatingWidgetsService.f926a0;
                i2.g.e(carPropertyManager4, "it");
                v7.r(homeFloatingWidgetsService4, carPropertyManager4, i7);
                break;
            default:
                boolean[] zArr = (boolean[]) this.b;
                int i8 = this.f3433c;
                boolean zBooleanValue = ((Boolean) obj).booleanValue();
                int i9 = QuickAccessFloaterService.t0;
                zArr[i8] = zBooleanValue;
                break;
        }
        return x1.e.f4647c;
    }
}
