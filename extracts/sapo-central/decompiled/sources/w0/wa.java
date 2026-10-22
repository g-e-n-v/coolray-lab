package w0;

import android.car.hardware.property.CarPropertyManager;
import android.content.ContextWrapper;
import android.util.Log;
import android.widget.Toast;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.MainActivity;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.R;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class wa implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4439a;
    public final /* synthetic */ boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ContextWrapper f4440c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f4441d;

    public /* synthetic */ wa(MainActivity mainActivity, boolean z2, int i3) {
        this.f4439a = 0;
        this.f4440c = mainActivity;
        this.b = z2;
        this.f4441d = i3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        CarPropertyManager carPropertyManager;
        int i3 = 1;
        switch (this.f4439a) {
            case 0:
                MainActivity mainActivity = (MainActivity) this.f4440c;
                boolean z2 = this.b;
                int i4 = this.f4441d;
                int i5 = MainActivity.f1002z1;
                String string = mainActivity.getString(z2 ? R.string.master_adb_contagem_ligar : R.string.master_adb_contagem_desligar, Integer.valueOf(i4));
                i2.g.d(string, "getString(...)");
                Toast toast = mainActivity.Q0;
                if (toast != null) {
                    toast.cancel();
                }
                mainActivity.Q0 = mainActivity.t2(string, 0);
                break;
            case 1:
                boolean z3 = this.b;
                MainActivity mainActivity2 = (MainActivity) this.f4440c;
                int i6 = this.f4441d;
                if (z3) {
                    CarPropertyManager carPropertyManager2 = mainActivity2.M;
                    if (carPropertyManager2 != null) {
                        for (int i7 : u.f4289c) {
                            AtomicInteger atomicInteger = p1.f4042a;
                            Integer numC = p1.c(carPropertyManager2, u.b, i7);
                            if (numC != null) {
                                mainActivity2.o0().edit().putInt("avas_sound_type_saved", numC.intValue()).apply();
                            }
                        }
                    }
                    Integer numR = t1.R(mainActivity2.G(new Object[0]));
                    if (numR != null) {
                        mainActivity2.o0().edit().putInt("avas_mode_ativo", numR.intValue()).apply();
                    }
                    mainActivity2.w0("setAVASMode", 0);
                } else {
                    int i8 = MainActivity.f1002z1;
                    int i9 = mainActivity2.o0().getInt("avas_mode_ativo", -1);
                    int i10 = mainActivity2.o0().getInt("avas_sound_type_saved", -1);
                    if (1 <= i9 && i9 < 4) {
                        i3 = i9;
                    } else if (1 <= i10 && i10 < 4) {
                        i3 = i10;
                    }
                    mainActivity2.w0("setAVASMode", Integer.valueOf(i3));
                    int i11 = mainActivity2.o0().getInt("avas_sound_type_saved", -1);
                    if (i11 > 0 && (carPropertyManager = mainActivity2.M) != null) {
                        for (int i12 : u.f4289c) {
                            if (!p1.l(carPropertyManager, u.b, i12, i11)) {
                                Log.w("MainActivity", "restoreSavedAvasSoundType area=" + i12 + " falhou");
                            }
                        }
                    }
                }
                mainActivity2.N(i6, 0, z3);
                break;
            default:
                boolean z4 = this.b;
                CentralWatchdogService centralWatchdogService = (CentralWatchdogService) this.f4440c;
                int i13 = this.f4441d;
                int[] iArr = CentralWatchdogService.S2;
                if (CentralWatchdogService.U2) {
                    if (z4) {
                        centralWatchdogService.B0 = true;
                        Log.i("CentralWatchdog", "Descanso de Tela: " + i13 + "s sem toque físico na tela principal — acionando overlay");
                        int i14 = QuickAccessFloaterService.t0;
                        QuickAccessFloaterService quickAccessFloaterService = QuickAccessFloaterService.x0;
                        if (quickAccessFloaterService != null) {
                            quickAccessFloaterService.V(true);
                        }
                    } else {
                        Log.i("CentralWatchdog", "Descanso de Tela: " + i13 + "s sem toque, mas fora da tela principal — não aciona");
                    }
                    break;
                }
                break;
        }
    }

    public /* synthetic */ wa(boolean z2, ContextWrapper contextWrapper, int i3, int i4) {
        this.f4439a = i4;
        this.b = z2;
        this.f4440c = contextWrapper;
        this.f4441d = i3;
    }
}
