package w0;

import android.car.hardware.property.CarPropertyManager;
import android.graphics.Bitmap;
import android.widget.TextView;
import com.ex.auto.MainActivity;
import com.ex.auto.MediaBarFloaterService;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.R;
import java.util.ArrayList;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class i9 implements h2.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3713a;
    public final /* synthetic */ Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f3714c;

    public /* synthetic */ i9(MainActivity mainActivity, xb xbVar) {
        this.f3713a = 2;
        this.b = mainActivity;
        this.f3714c = xbVar;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, java.util.Map] */
    @Override // h2.l
    public final Object c(Object obj) {
        switch (this.f3713a) {
            case 0:
                ?? r3 = this.f3714c;
                MainActivity mainActivity = (MainActivity) this.b;
                String str = (String) obj;
                int i3 = MainActivity.f1002z1;
                i2.g.e(str, "result");
                String str2 = (String) r3.get("caMd5");
                StringBuilder sbL = androidx.activity.result.b.l("src=", str2, " resultado=");
                sbL.append(o2.k.C0(200, str));
                mainActivity.w("Instalar ConnAdaptor", sbL.toString());
                if (mainActivity.f1027m0) {
                    String string = mainActivity.getString(R.string.k_activated_md5, str2 != null ? o2.k.C0(8, str2) : "");
                    i2.g.d(string, "getString(...)");
                    return string;
                }
                String string2 = mainActivity.getString(R.string.k_error_activating);
                i2.g.d(string2, "getString(...)");
                return string2;
            case 1:
                h0 h0Var = (h0) this.f3714c;
                MainActivity mainActivity2 = (MainActivity) this.b;
                boolean zBooleanValue = ((Boolean) obj).booleanValue();
                int i4 = MainActivity.f1002z1;
                h0Var.a();
                String string3 = mainActivity2.getString(zBooleanValue ? R.string.k_avas_sound_applied : R.string.k_avas_sound_rejected);
                i2.g.b(string3);
                mainActivity2.t2(string3, 0);
                break;
            case 2:
                MainActivity mainActivity3 = (MainActivity) this.b;
                xb xbVar = (xb) this.f3714c;
                String str3 = (String) obj;
                int i5 = MainActivity.f1002z1;
                i2.g.e(str3, "txt");
                mainActivity3.f1045v.post(new ab(xbVar, 2, str3));
                break;
            case 3:
                dd ddVar = (dd) this.f3714c;
                ed edVar = (ed) this.b;
                Bitmap bitmap = (Bitmap) obj;
                Set set = MediaBarFloaterService.f1060v;
                if (bitmap != null) {
                    ddVar.c(bitmap);
                } else {
                    edVar.a();
                }
                return x1.e.f4647c;
            case 4:
                QuickAccessFloaterService quickAccessFloaterService = (QuickAccessFloaterService) this.f3714c;
                TextView textView = (TextView) this.b;
                CarPropertyManager carPropertyManager = (CarPropertyManager) obj;
                int i6 = QuickAccessFloaterService.t0;
                i2.g.e(carPropertyManager, "manager");
                int i7 = 1;
                try {
                    AtomicInteger atomicInteger = p1.f4042a;
                    Integer numC = p1.c(carPropertyManager, QuickAccessFloaterService.f1130u0, 0);
                    quickAccessFloaterService.f1171u = numC != null ? Boolean.valueOf(numC.intValue() != 0) : null;
                    Boolean bool = quickAccessFloaterService.f1171u;
                    if (bool != null) {
                        quickAccessFloaterService.r().edit().putBoolean("aeb_state_saved", bool.booleanValue()).apply();
                    }
                } catch (Exception e3) {
                    androidx.activity.result.b.o(e3, new StringBuilder("AEB read: "), "QuickAccessFloater");
                }
                quickAccessFloaterService.f1134a.post(new ye(quickAccessFloaterService, textView, i7));
                break;
            default:
                QuickAccessFloaterService quickAccessFloaterService2 = (QuickAccessFloaterService) this.f3714c;
                String str4 = (String) this.b;
                boolean zBooleanValue2 = ((Boolean) obj).booleanValue();
                int i8 = QuickAccessFloaterService.t0;
                i2.g.e(quickAccessFloaterService2, "ctx");
                i2.g.e(str4, "pkg");
                ArrayList arrayListN0 = y1.g.n0(t1.P(quickAccessFloaterService2));
                if (!zBooleanValue2) {
                    arrayListN0.remove(str4);
                } else if (!arrayListN0.contains(str4)) {
                    arrayListN0.add(str4);
                }
                quickAccessFloaterService2.getSharedPreferences("close_apps_whitelist_prefs", 0).edit().putString("packages", y1.g.e0(y1.g.Z(arrayListN0), ",", null, 62)).apply();
                break;
        }
        return x1.e.f4647c;
    }

    public /* synthetic */ i9(Object obj, int i3, Object obj2) {
        this.f3713a = i3;
        this.f3714c = obj;
        this.b = obj2;
    }
}
