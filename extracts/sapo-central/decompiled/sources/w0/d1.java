package w0;

import android.car.hardware.property.CarPropertyManager;
import android.content.ComponentName;
import android.content.Intent;
import android.os.SystemClock;
import android.util.Log;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.MainActivity;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d1 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3481a;
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f3482c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f3483d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f3484e;

    public /* synthetic */ d1(CarPropertyManager carPropertyManager, int i3, MainActivity mainActivity, i9 i9Var) {
        this.f3481a = 2;
        this.f3483d = carPropertyManager;
        this.b = i3;
        this.f3482c = mainActivity;
        this.f3484e = i9Var;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x004d  */
    @Override // java.lang.Runnable
    public final void run() {
        boolean z2;
        switch (this.f3481a) {
            case 0:
                f1 f1Var = (f1) this.f3482c;
                int i3 = this.b;
                CarPropertyManager carPropertyManager = (CarPropertyManager) this.f3483d;
                Integer num = (Integer) this.f3484e;
                if (!f1Var.f3573j && i3 == f1Var.f3572i && carPropertyManager == f1Var.f3571h && f1Var.c()) {
                    y0 y0Var = f1Var.f;
                    y0Var.getClass();
                    if (num == null || !y0.b.contains(num)) {
                        z2 = false;
                    } else {
                        boolean z3 = num.intValue() >= 8;
                        z2 = z3 && !y0Var.f4555a;
                        y0Var.f4555a = z3;
                    }
                    if (z2) {
                        ae.b("CameraOnDrive", "Entrada em D: abrindo aplicativo de câmera", false);
                        CentralWatchdogService centralWatchdogService = f1Var.f3566a;
                        try {
                            Intent intent = new Intent();
                            intent.setComponent(new ComponentName("com.ecarx.parking", "com.ecarx.parking.MainAvmActivity"));
                            intent.addFlags(268435456);
                            centralWatchdogService.startActivity(intent);
                        } catch (Exception e3) {
                            androidx.activity.result.b.o(e3, new StringBuilder("Não foi possível abrir a câmera: "), "CarCamera");
                            return;
                        }
                    }
                    break;
                }
                break;
            case 1:
                CentralWatchdogService centralWatchdogService2 = (CentralWatchdogService) this.f3482c;
                int i4 = this.b;
                String str = (String) this.f3483d;
                a3 a3Var = (a3) this.f3484e;
                int[] iArr = CentralWatchdogService.S2;
                if (CentralWatchdogService.U2) {
                    if (centralWatchdogService2.f827e0.get() != i4) {
                        centralWatchdogService2.f811a.removeCallbacks(centralWatchdogService2.M2);
                        if (centralWatchdogService2.t()) {
                            centralWatchdogService2.f811a.postDelayed(centralWatchdogService2.M2, 6000L);
                        }
                    } else {
                        boolean z4 = centralWatchdogService2.f815b0 != null;
                        if (str != null) {
                            centralWatchdogService2.f857m0 = 0;
                            boolean zEquals = str.equals(centralWatchdogService2.f815b0);
                            centralWatchdogService2.f815b0 = str;
                            if (!zEquals) {
                                ae aeVar = ae.f3361a;
                                StringBuilder sbL = androidx.activity.result.b.l("AutoRota: celular detectado em ap0 ip=", str, " rotas=");
                                sbL.append(centralWatchdogService2.W().getBoolean("auto_route_on_aa_connect", false));
                                sbL.append(" proxy=");
                                sbL.append(centralWatchdogService2.W().getBoolean("auto_proxy_enabled", false));
                                ae.b("CentralWatchdog", sbL.toString(), false);
                                centralWatchdogService2.f827e0.incrementAndGet();
                                centralWatchdogService2.f834g0 = SystemClock.elapsedRealtime() + 5000;
                                centralWatchdogService2.f845j0 = 5000L;
                                centralWatchdogService2.f849k0 = SystemClock.elapsedRealtime() + 5000;
                            }
                            if (centralWatchdogService2.W().getBoolean("auto_route_on_aa_connect", false) && SystemClock.elapsedRealtime() >= centralWatchdogService2.f834g0) {
                                CentralWatchdogService.h(centralWatchdogService2, str);
                            }
                            boolean z5 = centralWatchdogService2.W().getBoolean("auto_proxy_enabled", false);
                            if (z5 && !i2.g.a(centralWatchdogService2.f841i0, str) && !centralWatchdogService2.f853l0 && SystemClock.elapsedRealtime() >= centralWatchdogService2.f849k0) {
                                centralWatchdogService2.f853l0 = true;
                                centralWatchdogService2.f849k0 = SystemClock.elapsedRealtime() + centralWatchdogService2.f845j0;
                                n3.a(new z1(centralWatchdogService2, str, 2));
                            } else if (z5 && i2.g.a(centralWatchdogService2.f841i0, str) && !centralWatchdogService2.f861n0) {
                                centralWatchdogService2.f861n0 = true;
                                n3.a(new z1(centralWatchdogService2, str, 3));
                            }
                        } else {
                            centralWatchdogService2.f857m0++;
                            boolean z6 = centralWatchdogService2.W().getBoolean("auto_proxy_enabled", false);
                            if (centralWatchdogService2.f857m0 >= 3) {
                                if (!z6 || centralWatchdogService2.f841i0 == null || centralWatchdogService2.f853l0) {
                                    CentralWatchdogService.f(centralWatchdogService2, z4);
                                } else {
                                    centralWatchdogService2.f853l0 = true;
                                    String str2 = centralWatchdogService2.f841i0;
                                    i2.g.b(str2);
                                    n3.a(new z1(centralWatchdogService2, str2, 4));
                                }
                            }
                        }
                        if (centralWatchdogService2.t()) {
                            centralWatchdogService2.f811a.postDelayed(a3Var, 6000L);
                        }
                    }
                    break;
                }
                break;
            default:
                CarPropertyManager carPropertyManager2 = (CarPropertyManager) this.f3483d;
                int i5 = this.b;
                MainActivity mainActivity = (MainActivity) this.f3482c;
                i9 i9Var = (i9) this.f3484e;
                int i6 = MainActivity.f1002z1;
                i2.j jVar = new i2.j();
                for (int i7 : u.f4289c) {
                    if (p1.l(carPropertyManager2, u.b, i7, i5)) {
                        jVar.f2289a = true;
                        if (jVar.f2289a) {
                            mainActivity.o0().edit().putInt("avas_sound_type_saved", i5).apply();
                        }
                        mainActivity.f1045v.post(new a1.g(mainActivity, i9Var, jVar, 19));
                    } else {
                        Log.w("MainActivity", "AVAS sound type write area=" + i7 + " falhou");
                    }
                    break;
                }
                if (jVar.f2289a) {
                    mainActivity.o0().edit().putInt("avas_sound_type_saved", i5).apply();
                }
                mainActivity.f1045v.post(new a1.g(mainActivity, i9Var, jVar, 19));
                break;
        }
    }

    public /* synthetic */ d1(Object obj, int i3, Object obj2, Object obj3, int i4) {
        this.f3481a = i4;
        this.f3482c = obj;
        this.b = i3;
        this.f3483d = obj2;
        this.f3484e = obj3;
    }
}
