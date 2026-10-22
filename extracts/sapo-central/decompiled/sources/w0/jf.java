package w0;

import android.car.hardware.property.CarPropertyManager;
import android.car.media.CarAudioManager;
import android.content.ContextWrapper;
import android.util.Log;
import com.ex.auto.MainActivity;
import com.ex.auto.QuickAccessFloaterService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class jf implements h2.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3769a;
    public final /* synthetic */ boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ContextWrapper f3770c;

    public /* synthetic */ jf(ContextWrapper contextWrapper, boolean z2, int i3) {
        this.f3769a = i3;
        this.f3770c = contextWrapper;
        this.b = z2;
    }

    /* JADX WARN: Code duplicated, block: B:40:0x0103  */
    /* JADX WARN: Code duplicated, block: B:41:0x0105 A[Catch: Exception -> 0x00c4, TryCatch #2 {Exception -> 0x00c4, blocks: (B:20:0x009e, B:22:0x00a4, B:24:0x00b0, B:36:0x00e8, B:38:0x00ee, B:48:0x0121, B:50:0x013e, B:52:0x0148, B:54:0x014e, B:41:0x0105), top: B:66:0x009e }] */
    /* JADX WARN: Code duplicated, block: B:45:0x011c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:46:0x011e A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:54:0x014e A[Catch: Exception -> 0x00c4, TRY_LEAVE, TryCatch #2 {Exception -> 0x00c4, blocks: (B:20:0x009e, B:22:0x00a4, B:24:0x00b0, B:36:0x00e8, B:38:0x00ee, B:48:0x0121, B:50:0x013e, B:52:0x0148, B:54:0x014e, B:41:0x0105), top: B:66:0x009e }] */
    /* JADX WARN: Code duplicated, block: B:56:0x0158 A[LOOP:0: B:53:0x014c->B:56:0x0158, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:69:0x0165 A[SYNTHETIC] */
    @Override // h2.l
    public final Object c(Object obj) {
        int iIntValue;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7 = 1;
        switch (this.f3769a) {
            case 0:
                QuickAccessFloaterService quickAccessFloaterService = (QuickAccessFloaterService) this.f3770c;
                boolean z2 = this.b;
                CarPropertyManager carPropertyManager = (CarPropertyManager) obj;
                int i8 = QuickAccessFloaterService.t0;
                i2.g.e(carPropertyManager, "cpm");
                CarAudioManager carAudioManager = quickAccessFloaterService.L;
                if (carAudioManager == null) {
                    Log.w("QuickAccessFloater", "toggleAvas: CarAudioManager indisponível");
                } else if (z2) {
                    try {
                        for (int i9 : u.f4289c) {
                            AtomicInteger atomicInteger = p1.f4042a;
                            Integer numC = p1.c(carPropertyManager, u.b, i9);
                            if (numC != null) {
                                quickAccessFloaterService.r().edit().putInt("avas_sound_type_saved", numC.intValue()).apply();
                            }
                        }
                        try {
                            Object objInvoke = carAudioManager.getClass().getMethod("getAVASMode", null).invoke(carAudioManager, null);
                            Integer num = objInvoke instanceof Integer ? (Integer) objInvoke : null;
                            iIntValue = num != null ? num.intValue() : -1;
                            break;
                        } catch (Throwable unused) {
                        }
                        Integer numR = t1.R(iIntValue);
                        if (numR != null) {
                            quickAccessFloaterService.r().edit().putInt("avas_mode_ativo", numR.intValue()).apply();
                        }
                        if (z2) {
                            i7 = 0;
                        } else {
                            i3 = quickAccessFloaterService.r().getInt("avas_mode_ativo", -1);
                            i4 = quickAccessFloaterService.r().getInt("avas_sound_type_saved", -1);
                            if (1 > i3 && i3 < 4) {
                                i7 = i3;
                            } else if (1 <= i4 && i4 < 4) {
                                i7 = i4;
                            }
                        }
                        carAudioManager.getClass().getMethod("setAVASMode", Integer.TYPE).invoke(carAudioManager, Integer.valueOf(i7));
                        if (!z2 && (i5 = quickAccessFloaterService.r().getInt("avas_sound_type_saved", -1)) > 0) {
                            for (int i10 : u.f4289c) {
                                if (!p1.l(carPropertyManager, u.b, i10, i5)) {
                                }
                            }
                        }
                    } catch (Exception e3) {
                        androidx.activity.result.b.o(e3, new StringBuilder("toggleAvas: "), "QuickAccessFloater");
                    }
                } else {
                    if (z2) {
                        i7 = 0;
                    } else {
                        i3 = quickAccessFloaterService.r().getInt("avas_mode_ativo", -1);
                        i4 = quickAccessFloaterService.r().getInt("avas_sound_type_saved", -1);
                        if (1 > i3) {
                            if (1 <= i4) {
                                i7 = i4;
                            }
                        } else if (1 <= i4) {
                            i7 = i4;
                        }
                    }
                    carAudioManager.getClass().getMethod("setAVASMode", Integer.TYPE).invoke(carAudioManager, Integer.valueOf(i7));
                    if (!z2) {
                        while (i6 < r4) {
                            if (!p1.l(carPropertyManager, u.b, i10, i5)) {
                            }
                        }
                    }
                }
                break;
            case 1:
                boolean z3 = this.b;
                QuickAccessFloaterService quickAccessFloaterService2 = (QuickAccessFloaterService) this.f3770c;
                CarPropertyManager carPropertyManager2 = (CarPropertyManager) obj;
                int i11 = QuickAccessFloaterService.t0;
                i2.g.e(carPropertyManager2, "manager");
                if (p1.l(carPropertyManager2, QuickAccessFloaterService.f1130u0, 0, z3 ? 1 : 0)) {
                    try {
                        quickAccessFloaterService2.O.schedule(new c0(quickAccessFloaterService2, carPropertyManager2, z3, 6), 400L, TimeUnit.MILLISECONDS);
                        break;
                    } catch (RejectedExecutionException unused2) {
                    }
                } else {
                    Log.w("QuickAccessFloater", "AEB write: escrita falhou");
                    quickAccessFloaterService2.f1171u = null;
                    quickAccessFloaterService2.f1134a.post(new ve(14, quickAccessFloaterService2));
                }
                break;
            default:
                MainActivity mainActivity = (MainActivity) this.f3770c;
                boolean z4 = this.b;
                String str = (String) obj;
                int i12 = MainActivity.f1002z1;
                i2.g.e(str, "result");
                if (!o2.k.e0(str, "Falha no ADB local", true)) {
                    mainActivity.o0().edit().putBoolean("adb_gpio_enabled", z4).apply();
                }
                mainActivity.d1();
                break;
        }
        return x1.e.f4647c;
    }

    public /* synthetic */ jf(boolean z2, QuickAccessFloaterService quickAccessFloaterService) {
        this.f3769a = 1;
        this.b = z2;
        this.f3770c = quickAccessFloaterService;
    }
}
