package w0;

import android.appwidget.AppWidgetManager;
import android.car.hardware.property.CarPropertyManager;
import android.content.ContextWrapper;
import android.widget.TextView;
import com.ex.auto.HomeWidgetsPollService;
import com.ex.auto.MainActivity;
import com.ex.auto.MasterToggleView;
import com.ex.auto.R;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class x7 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4498a = 0;
    public final /* synthetic */ boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ContextWrapper f4499c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f4500d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f4501e;
    public final /* synthetic */ Object f;

    public /* synthetic */ x7(HomeWidgetsPollService homeWidgetsPollService, String str, CarPropertyManager carPropertyManager, AppWidgetManager appWidgetManager, boolean z2) {
        this.f4499c = homeWidgetsPollService;
        this.f4500d = str;
        this.f4501e = carPropertyManager;
        this.f = appWidgetManager;
        this.b = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z2;
        int i3 = this.f4498a;
        boolean z3 = false;
        Object obj = this.f;
        Object obj2 = this.f4501e;
        Object obj3 = this.f4500d;
        ContextWrapper contextWrapper = this.f4499c;
        switch (i3) {
            case 0:
                HomeWidgetsPollService homeWidgetsPollService = (HomeWidgetsPollService) contextWrapper;
                String str = (String) obj3;
                CarPropertyManager carPropertyManager = (CarPropertyManager) obj2;
                AppWidgetManager appWidgetManager = (AppWidgetManager) obj;
                int i4 = HomeWidgetsPollService.E;
                try {
                    homeWidgetsPollService.c(str, carPropertyManager);
                    z2 = true;
                } catch (Exception e3) {
                    androidx.activity.result.b.o(e3, androidx.activity.result.b.l("widget command ", str, ": "), "HomeWidgetsPoll");
                    z2 = false;
                }
                homeWidgetsPollService.f952a.post(new a1.l(homeWidgetsPollService, z2, str, appWidgetManager, this.b));
                break;
            default:
                MainActivity mainActivity = (MainActivity) contextWrapper;
                MasterToggleView masterToggleView = (MasterToggleView) obj3;
                TextView textView = (TextView) obj2;
                Boolean bool = (Boolean) obj;
                int i5 = MainActivity.f1002z1;
                if (!mainActivity.isFinishing() && !mainActivity.isDestroyed()) {
                    boolean z4 = this.b;
                    masterToggleView.setActive(z4);
                    textView.setText(mainActivity.getString(z4 ? R.string.master_perf_jit_on : R.string.master_perf_jit_off));
                    if (mainActivity.o0().contains("jit_pedido")) {
                        boolean z5 = mainActivity.o0().getBoolean("jit_pedido", false);
                        if (z5 == z4 && (!z5 || !i2.g.a(bool, Boolean.FALSE))) {
                            z3 = true;
                        }
                        mainActivity.w("Desempenho", "JIT pedido=" + z5 + " getprop=" + z4 + " code-cache-executavel=" + bool);
                        mainActivity.o0().edit().remove("jit_pedido").apply();
                        if (!z3 && z5) {
                            androidx.activity.result.b.n(R.string.master_perf_jit_not_applied, 1, mainActivity, "getString(...)");
                            break;
                        }
                    }
                }
                break;
        }
    }

    public /* synthetic */ x7(MainActivity mainActivity, MasterToggleView masterToggleView, boolean z2, TextView textView, Boolean bool) {
        this.f4499c = mainActivity;
        this.f4500d = masterToggleView;
        this.b = z2;
        this.f4501e = textView;
        this.f = bool;
    }
}
