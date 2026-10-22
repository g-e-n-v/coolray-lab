package w0;

import android.car.media.CarAudioManager;
import android.content.SharedPreferences;
import android.util.Log;
import com.ex.auto.AppPipFloaterService;
import com.ex.auto.PhoneSyncService;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.R;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3479a;
    public final /* synthetic */ boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f3480c;

    public /* synthetic */ d0(Object obj, boolean z2, int i3) {
        this.f3479a = i3;
        this.f3480c = obj;
        this.b = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int iIntValue;
        int iK;
        int iIntValue2;
        int iIntValue3;
        int i3 = 1;
        boolean z2 = true;
        i3 = 1;
        int i4 = 0;
        switch (this.f3479a) {
            case 0:
                AppPipFloaterService appPipFloaterService = (AppPipFloaterService) this.f3480c;
                boolean z3 = this.b;
                AppPipFloaterService appPipFloaterService2 = AppPipFloaterService.f769x;
                appPipFloaterService.l();
                String string = appPipFloaterService.getString(z3 ? R.string.k_pip_closed : R.string.k_pip_close_failed);
                i2.g.d(string, "getString(...)");
                appPipFloaterService.k(string);
                break;
            case 1:
                ((q1) this.f3480c).c(Boolean.valueOf(this.b));
                break;
            case 2:
                ((h2.l) this.f3480c).c(Boolean.valueOf(this.b));
                break;
            case 3:
                PhoneSyncService phoneSyncService = (PhoneSyncService) this.f3480c;
                boolean z4 = this.b;
                boolean z5 = PhoneSyncService.f1102z;
                try {
                    CarAudioManager carAudioManager = phoneSyncService.f1111k;
                    if (carAudioManager != null) {
                        SharedPreferences sharedPreferences = phoneSyncService.getSharedPreferences("tela_preta_prefs", 0);
                        if (z4) {
                            try {
                                Object objInvoke = carAudioManager.getClass().getMethod("getAVASMode", null).invoke(carAudioManager, null);
                                Integer num = objInvoke instanceof Integer ? (Integer) objInvoke : null;
                                iIntValue = num != null ? num.intValue() : -1;
                                break;
                            } catch (Throwable unused) {
                            }
                            Integer numR = t1.R(iIntValue);
                            if (numR != null) {
                                sharedPreferences.edit().putInt("avas_mode_ativo", numR.intValue()).apply();
                            }
                        }
                        if (!z4) {
                            int i5 = sharedPreferences.getInt("avas_mode_ativo", -1);
                            int i6 = sharedPreferences.getInt("avas_sound_type_saved", -1);
                            if (1 <= i5 && i5 < 4) {
                                i3 = i5;
                            } else if (1 <= i6 && i6 < 4) {
                                i3 = i6;
                            }
                            i4 = i3;
                        }
                        carAudioManager.getClass().getMethod("setAVASMode", Integer.TYPE).invoke(carAudioManager, Integer.valueOf(i4));
                        Log.i("PhoneSyncService", "AVAS via sync: mute=" + z4 + " alvo=" + i4);
                    }
                } catch (Exception e3) {
                    Log.e("PhoneSyncService", "applyAvasMute: " + e3.getMessage());
                    return;
                }
                break;
            default:
                QuickAccessFloaterService quickAccessFloaterService = (QuickAccessFloaterService) this.f3480c;
                boolean z6 = this.b;
                int i7 = QuickAccessFloaterService.t0;
                try {
                    new kotlinx.coroutines.scheduling.h(5555).b(3000, "setenforce 0 2>/dev/null");
                    break;
                } catch (Exception unused2) {
                }
                try {
                    iK = k1.a.k(Integer.parseInt(o2.k.E0(f2.d.h0(new File("/sys/class/leds/lcd-backlight/brightness"))).toString()), 1, 255);
                } catch (Exception unused3) {
                    iK = 166;
                }
                quickAccessFloaterService.R = iK;
                try {
                    Integer numW = o2.s.W(o2.k.E0(quickAccessFloaterService.b(3000, "settings get global heads_up_notifications_enabled")).toString());
                    iIntValue2 = numW != null ? numW.intValue() : 1;
                    break;
                } catch (Exception unused4) {
                }
                quickAccessFloaterService.S = iIntValue2;
                try {
                    quickAccessFloaterService.b(3000, "settings put global heads_up_notifications_enabled 0");
                    break;
                } catch (Exception unused5) {
                }
                try {
                    Integer numW2 = o2.s.W(o2.k.E0(quickAccessFloaterService.b(3000, "settings get global audio_speed_volume_enable")).toString());
                    iIntValue3 = numW2 != null ? numW2.intValue() : 1;
                    break;
                } catch (Exception unused6) {
                }
                quickAccessFloaterService.T = iIntValue3;
                try {
                    quickAccessFloaterService.b(3000, "settings put global audio_speed_volume_enable 0");
                    break;
                } catch (Exception unused7) {
                }
                try {
                    f2.d.i0(new File("/sys/class/leds/lcd-backlight/brightness"), String.valueOf(z6 ? 12 : 0));
                } catch (Exception e4) {
                    androidx.activity.result.b.o(e4, new StringBuilder("backlight write: "), "QuickAccessFloater");
                    z2 = false;
                }
                quickAccessFloaterService.f1134a.post(new ta(quickAccessFloaterService, z2, z6, 5));
                break;
        }
    }
}
