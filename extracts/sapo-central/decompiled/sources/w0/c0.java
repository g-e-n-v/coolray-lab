package w0;

import android.car.Car;
import android.car.hardware.property.CarPropertyManager;
import android.content.ContextWrapper;
import android.os.Handler;
import android.util.Log;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.AppPipFloaterService;
import com.ex.auto.InstallerActivity;
import com.ex.auto.MainActivity;
import com.ex.auto.MediaBarFloaterService;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.R;
import com.geely.driveregenfloater.DriveRegenFloaterService;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Date;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3413a;
    public final /* synthetic */ boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f3414c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f3415d;

    public /* synthetic */ c0(Object obj, Object obj2, boolean z2, int i3) {
        this.f3413a = i3;
        this.f3414c = obj;
        this.f3415d = obj2;
        this.b = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z2 = true;
        switch (this.f3413a) {
            case 0:
                AppPipFloaterService appPipFloaterService = (AppPipFloaterService) this.f3414c;
                boolean z3 = this.b;
                lg lgVar = (lg) this.f3415d;
                AppPipFloaterService appPipFloaterService2 = AppPipFloaterService.f769x;
                appPipFloaterService.l();
                if (z3 || lgVar != null) {
                    return;
                }
                o2.h hVar = og.f4025a;
                String string = appPipFloaterService.getString(R.string.k_adjust_failed, og.f);
                i2.g.d(string, "getString(...)");
                appPipFloaterService.k(string);
                return;
            case 1:
                InstallerActivity installerActivity = (InstallerActivity) this.f3414c;
                boolean z4 = this.b;
                String str = (String) this.f3415d;
                int i3 = InstallerActivity.f979v;
                installerActivity.w(str, z4);
                return;
            case 2:
                CarPropertyManager carPropertyManager = (CarPropertyManager) this.f3414c;
                boolean z5 = this.b;
                MainActivity mainActivity = (MainActivity) this.f3415d;
                int i4 = MainActivity.f1002z1;
                boolean zL = p1.l(carPropertyManager, u.f4288a, 0, z5 ? 1 : 0);
                if (!zL) {
                    Log.w("AEB", "setIntProperty AEB falhou");
                }
                try {
                    mainActivity.f1054z.schedule(new sa(zL, carPropertyManager, mainActivity, z5), 350L, TimeUnit.MILLISECONDS);
                    return;
                } catch (RejectedExecutionException unused) {
                    return;
                }
            case 3:
                boolean z6 = this.b;
                MainActivity mainActivity2 = (MainActivity) this.f3414c;
                String str2 = (String) this.f3415d;
                int i5 = MainActivity.f1002z1;
                if (!z6) {
                    mainActivity2.t2(str2, 0);
                    return;
                }
                e.h hVar2 = new e.h(mainActivity2);
                e.d dVar = (e.d) hVar2.b;
                dVar.f1554d = mainActivity2.getString(R.string.k_feature_enabled_title);
                dVar.f = mainActivity2.getString(R.string.k_freeform_setup_message);
                hVar2.f(mainActivity2.getString(R.string.common_ok), null);
                dVar.f1562m = false;
                hVar2.h();
                return;
            case 4:
                boolean z7 = this.b;
                MediaBarFloaterService mediaBarFloaterService = (MediaBarFloaterService) this.f3414c;
                androidx.activity.d dVar2 = (androidx.activity.d) this.f3415d;
                if (z7 != mediaBarFloaterService.f1078t) {
                    mediaBarFloaterService.f1078t = z7;
                    StringBuilder sb = new StringBuilder("smartbar escondida: ");
                    sb.append(z7);
                    sb.append(" — ");
                    sb.append(z7 ? "escondendo" : "liberando");
                    sb.append(" o floater");
                    Log.i("MediaBarFloater", sb.toString());
                    if (z7) {
                        mediaBarFloaterService.b();
                    } else {
                        mediaBarFloaterService.e();
                    }
                }
                mediaBarFloaterService.f1062c.postDelayed(dVar2, 3000L);
                return;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                String str3 = (String) this.f3414c;
                String str4 = (String) this.f3415d;
                boolean z8 = this.b;
                synchronized (ae.f3361a) {
                    try {
                        File fileA = ae.a();
                        if (fileA.exists() && fileA.length() > 262144) {
                            try {
                                try {
                                    String strH0 = f2.d.h0(fileA);
                                    int length = strH0.length() / 2;
                                    int iJ0 = o2.k.j0(strH0, '\n', length, 4);
                                    if (iJ0 >= 0) {
                                        length = iJ0 + 1;
                                    }
                                    String strSubstring = strH0.substring(length);
                                    i2.g.d(strSubstring, "substring(...)");
                                    f2.d.i0(fileA, "== log podado (mantida a metade mais recente) ==\n".concat(strSubstring));
                                    break;
                                } catch (Throwable unused2) {
                                }
                            } catch (Throwable unused3) {
                                fileA.delete();
                                break;
                            }
                        }
                        File parentFile = fileA.getParentFile();
                        if (parentFile != null && !parentFile.isDirectory()) {
                            parentFile.mkdirs();
                        }
                        byte[] bytes = (ae.f3362c.format(new Date()) + " [" + str3 + "] " + str4 + '\n').getBytes(o2.a.f2622a);
                        i2.g.d(bytes, "getBytes(...)");
                        FileOutputStream fileOutputStream = new FileOutputStream(fileA, true);
                        try {
                            fileOutputStream.write(bytes);
                            fileOutputStream.flush();
                            if (z8) {
                                fileOutputStream.getFD().sync();
                            }
                            fileOutputStream.close();
                            break;
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                a1.b.p(fileOutputStream, th);
                                throw th2;
                            }
                        }
                    } catch (Throwable th3) {
                        Log.w("PersistLog", "não consegui gravar em " + ae.a().getAbsolutePath() + ": " + th3.getMessage());
                        break;
                    }
                }
                return;
            case MusicClient.TYPE_GESTURE /* 6 */:
                QuickAccessFloaterService quickAccessFloaterService = (QuickAccessFloaterService) this.f3414c;
                CarPropertyManager carPropertyManager2 = (CarPropertyManager) this.f3415d;
                boolean z9 = this.b;
                if (quickAccessFloaterService.M) {
                    return;
                }
                AtomicInteger atomicInteger = p1.f4042a;
                Integer numC = p1.c(carPropertyManager2, QuickAccessFloaterService.f1130u0, 0);
                quickAccessFloaterService.f1171u = numC != null ? Boolean.valueOf(numC.intValue() != 0) : Boolean.valueOf(z9);
                Boolean bool = quickAccessFloaterService.f1171u;
                if (bool != null) {
                    quickAccessFloaterService.r().edit().putBoolean("aeb_state_saved", bool.booleanValue()).apply();
                }
                quickAccessFloaterService.f1134a.post(new ve(16, quickAccessFloaterService));
                return;
            default:
                DriveRegenFloaterService driveRegenFloaterService = (DriveRegenFloaterService) this.f3414c;
                Car car = (Car) this.f3415d;
                boolean z10 = this.b;
                long jIncrementAndGet = driveRegenFloaterService.f1280v.f24a.incrementAndGet();
                Handler handler = driveRegenFloaterService.f1279u;
                if (handler != null) {
                    handler.removeCallbacks(driveRegenFloaterService.I);
                }
                CarPropertyManager carPropertyManager3 = driveRegenFloaterService.f1275q;
                if (carPropertyManager3 != null) {
                    try {
                        carPropertyManager3.unregisterCallback(driveRegenFloaterService.L);
                        break;
                    } catch (Exception unused4) {
                    }
                }
                if (!z10 || driveRegenFloaterService.f1280v.b) {
                    driveRegenFloaterService.f1275q = null;
                    driveRegenFloaterService.q("Car desconectado");
                    return;
                }
                try {
                    driveRegenFloaterService.f1274p = car;
                    driveRegenFloaterService.f1275q = (CarPropertyManager) car.getCarManager("property");
                    driveRegenFloaterService.q("Car OK");
                    if (driveRegenFloaterService.f1275q != null) {
                        try {
                            driveRegenFloaterService.f1275q.registerCallback(driveRegenFloaterService.L, 289408000, 0.0f);
                        } catch (Exception e3) {
                            Log.w("DriveRegenFloater", "registerGearCallback failed: " + e3.getMessage());
                        }
                        break;
                    }
                    driveRegenFloaterService.m();
                    driveRegenFloaterService.c("car_ready");
                    if (handler != null) {
                        a1.d dVar3 = driveRegenFloaterService.f1280v;
                        if (dVar3.b || dVar3.f24a.get() != jIncrementAndGet) {
                            z2 = false;
                        }
                        if (z2) {
                            handler.postDelayed(driveRegenFloaterService.I, 3000L);
                            return;
                        }
                        return;
                    }
                    return;
                } catch (Exception e4) {
                    driveRegenFloaterService.f1275q = null;
                    Log.e("DriveRegenFloater", "car ready", e4);
                    driveRegenFloaterService.q("Erro Car: " + e4.getMessage());
                    return;
                }
        }
    }

    public /* synthetic */ c0(Object obj, boolean z2, Object obj2, int i3) {
        this.f3413a = i3;
        this.f3414c = obj;
        this.b = z2;
        this.f3415d = obj2;
    }

    public /* synthetic */ c0(boolean z2, ContextWrapper contextWrapper, Object obj, int i3) {
        this.f3413a = i3;
        this.b = z2;
        this.f3414c = contextWrapper;
        this.f3415d = obj;
    }
}
