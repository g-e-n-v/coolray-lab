package w0;

import android.car.hardware.property.CarPropertyManager;
import android.content.DialogInterface;
import android.widget.RadioButton;
import android.widget.TextView;
import com.ex.auto.AcProgramEditActivity;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.InstallerActivity;
import com.ex.auto.MainActivity;
import com.ex.auto.R;
import com.ex.auto.TempBattPillFloaterService;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3605a;
    public final /* synthetic */ Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f3606c;

    public /* synthetic */ g(Object obj, int i3, Object obj2) {
        this.f3605a = i3;
        this.b = obj;
        this.f3606c = obj2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i3) {
        String str;
        Float fValueOf;
        int i4 = 0;
        switch (this.f3605a) {
            case 0:
                AcProgramEditActivity acProgramEditActivity = (AcProgramEditActivity) this.b;
                acProgramEditActivity.f762u.add(new l("recirc", ((RadioButton) this.f3606c).isChecked() ? 1.0d : 0.0d));
                acProgramEditActivity.t();
                break;
            case 1:
                AtomicBoolean atomicBoolean = (AtomicBoolean) this.b;
                CountDownLatch countDownLatch = (CountDownLatch) this.f3606c;
                int i5 = InstallerActivity.f979v;
                atomicBoolean.set(true);
                countDownLatch.countDown();
                break;
            case 2:
                hc hcVar = (hc) this.b;
                MainActivity mainActivity = (MainActivity) this.f3606c;
                int i6 = MainActivity.f1002z1;
                androidx.emoji2.text.m mVar = i0.f3693a;
                String strConcat = "download:".concat(hcVar.b);
                i2.g.e(strConcat, "phase");
                androidx.emoji2.text.m mVar2 = i0.f3693a;
                if (!mVar2.u("manual", strConcat)) {
                    n6 n6Var = (n6) ((AtomicReference) mVar2.b).get();
                    if (n6Var == null || (str = n6Var.b) == null) {
                        str = (String) CentralWatchdogService.W2.get();
                    }
                    String string = mainActivity.getString(R.string.k_auto_update_in_progress, str);
                    i2.g.d(string, "getString(...)");
                    mainActivity.Z1(string);
                    mainActivity.t2(string, 1);
                } else {
                    String string2 = mainActivity.getString(R.string.update_downloading);
                    i2.g.d(string2, "getString(...)");
                    mainActivity.Z1(string2);
                    try {
                        mainActivity.C.execute(new lb(mainActivity, hcVar, i4));
                    } catch (Throwable th) {
                        i0.f3693a.r("manual");
                        mainActivity.Z1(mainActivity.Z(th));
                        return;
                    }
                }
                break;
            case 3:
                MainActivity mainActivity2 = (MainActivity) this.b;
                xb xbVar = (xb) this.f3606c;
                int i7 = MainActivity.f1002z1;
                mainActivity2.s0(xbVar);
                break;
            default:
                TempBattPillFloaterService tempBattPillFloaterService = (TempBattPillFloaterService) this.b;
                ArrayList arrayList = (ArrayList) this.f3606c;
                TempBattPillFloaterService tempBattPillFloaterService2 = TempBattPillFloaterService.f1198v;
                int iIntValue = ((Number) arrayList.get(i3)).intValue();
                k kVarO = t1.O(tempBattPillFloaterService, iIntValue);
                if (kVarO != null) {
                    tempBattPillFloaterService.f1202e.removeCallbacks(tempBattPillFloaterService.f1211o);
                    j jVar = null;
                    Boolean boolValueOf = null;
                    if (kVarO.f3775c) {
                        CarPropertyManager carPropertyManager = tempBattPillFloaterService.f1203g;
                        if (carPropertyManager == null) {
                            jVar = new j(null, null, null);
                        } else {
                            try {
                                fValueOf = Float.valueOf(carPropertyManager.getFloatProperty(u.f4290d, 1));
                            } catch (Throwable unused) {
                                fValueOf = null;
                            }
                            Integer numValueOf = null;
                            for (int i8 : tempBattPillFloaterService.f1206j) {
                                try {
                                    numValueOf = Integer.valueOf(carPropertyManager.getIntProperty(356517120, i8));
                                } catch (Throwable unused2) {
                                    numValueOf = null;
                                }
                                int i9 = numValueOf == null ? i9 + 1 : 0;
                                break;
                            }
                            try {
                                boolValueOf = Boolean.valueOf(carPropertyManager.getBooleanProperty(u.f4291e, u.f));
                                break;
                            } catch (Throwable unused3) {
                            }
                            jVar = new j(fValueOf, numValueOf, boolValueOf);
                        }
                    }
                    tempBattPillFloaterService.f1210n = jVar;
                    tempBattPillFloaterService.f1208l = kVarO;
                    tempBattPillFloaterService.f1209m = 0;
                    tempBattPillFloaterService.f1207k = Integer.valueOf(iIntValue);
                    TextView textView = tempBattPillFloaterService.f1200c;
                    if (textView != null) {
                        textView.setTextColor(-16711936);
                    }
                    tempBattPillFloaterService.f1202e.post(tempBattPillFloaterService.f1211o);
                    break;
                }
                break;
        }
    }
}
