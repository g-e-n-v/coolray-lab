package w0;

import android.car.hardware.property.CarPropertyManager;
import com.ex.auto.TempBattPillFloaterService;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class yg implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4595a;
    public final /* synthetic */ TempBattPillFloaterService b;

    public /* synthetic */ yg(TempBattPillFloaterService tempBattPillFloaterService, int i3) {
        this.f4595a = i3;
        this.b = tempBattPillFloaterService;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4595a) {
            case 0:
                TempBattPillFloaterService tempBattPillFloaterService = this.b;
                k kVar = tempBattPillFloaterService.f1208l;
                if (kVar != null) {
                    ArrayList arrayList = kVar.f3774a;
                    if (tempBattPillFloaterService.f1209m >= arrayList.size()) {
                        if (!kVar.b) {
                            tempBattPillFloaterService.e();
                        } else {
                            tempBattPillFloaterService.f1209m = 0;
                        }
                    }
                    l lVar = (l) arrayList.get(tempBattPillFloaterService.f1209m);
                    tempBattPillFloaterService.f1209m++;
                    String str = lVar.f3815a;
                    double d3 = lVar.b;
                    switch (str.hashCode()) {
                        case -934914614:
                            if (str.equals("recirc")) {
                                boolean z2 = d3 == 1.0d;
                                CarPropertyManager carPropertyManager = tempBattPillFloaterService.f1203g;
                                if (carPropertyManager != null) {
                                    try {
                                        carPropertyManager.setBooleanProperty(u.f4291e, u.f, z2);
                                        break;
                                    } catch (Throwable unused) {
                                    }
                                }
                                tempBattPillFloaterService.f1202e.post(this);
                            }
                            break;
                        case 101139:
                            if (str.equals("fan")) {
                                int i3 = (int) d3;
                                CarPropertyManager carPropertyManager2 = tempBattPillFloaterService.f1203g;
                                if (carPropertyManager2 != null) {
                                    for (int i4 : tempBattPillFloaterService.f1206j) {
                                        try {
                                            carPropertyManager2.setIntProperty(356517120, i4, i3);
                                        } catch (Throwable unused2) {
                                        }
                                    }
                                }
                                tempBattPillFloaterService.f1202e.post(this);
                            }
                            break;
                        case 3556308:
                            if (str.equals("temp")) {
                                float f = (float) d3;
                                CarPropertyManager carPropertyManager3 = tempBattPillFloaterService.f1203g;
                                if (carPropertyManager3 != null) {
                                    try {
                                        carPropertyManager3.setFloatProperty(u.f4290d, 1, f);
                                        break;
                                    } catch (Throwable unused3) {
                                    }
                                    try {
                                        carPropertyManager3.setFloatProperty(u.f4290d, 4, f);
                                        break;
                                    } catch (Throwable unused4) {
                                    }
                                }
                                tempBattPillFloaterService.f1202e.post(this);
                            }
                            break;
                        case 3641717:
                            if (str.equals("wait")) {
                                tempBattPillFloaterService.f1202e.postDelayed(this, (long) (d3 * ((double) 1000)));
                            }
                            break;
                    }
                    tempBattPillFloaterService.f1202e.post(this);
                    break;
                }
                break;
            default:
                CarPropertyManager carPropertyManager4 = this.b.f1203g;
                ExecutorService executorService = n3.f3929a;
                n3.a(new h0(carPropertyManager4, this.b, this, 6));
                break;
        }
    }
}
