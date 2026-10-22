package w0;

import android.content.ComponentName;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import android.widget.Toast;
import com.ex.auto.AppPipFloaterService;
import com.ex.auto.R;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class y implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4553a;
    public final /* synthetic */ AppPipFloaterService b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f4554c;

    public /* synthetic */ y(AppPipFloaterService appPipFloaterService, String str, int i3) {
        this.f4553a = i3;
        this.b = appPipFloaterService;
        this.f4554c = str;
    }

    /* JADX WARN: Code duplicated, block: B:55:0x013e  */
    /* JADX WARN: Code duplicated, block: B:56:0x015d  */
    @Override // java.lang.Runnable
    public final void run() throws InterruptedException {
        boolean z2;
        Integer numValueOf;
        int i3 = 1;
        switch (this.f4553a) {
            case 0:
                v4 v4Var = v4.f4369c;
                v4 v4Var2 = v4.f4368a;
                AppPipFloaterService appPipFloaterService = this.b;
                String str = this.f4554c;
                AppPipFloaterService appPipFloaterService2 = AppPipFloaterService.f769x;
                ng ngVarF = og.f();
                if (ngVarF != null) {
                    appPipFloaterService.f777j = ngVarF;
                    String strN = og.n(appPipFloaterService, str);
                    if (strN != null) {
                        int i4 = ngVarF.f3959a;
                        int i5 = (int) (((double) i4) * 0.32d);
                        if (i5 < 260) {
                            i5 = 260;
                        }
                        int i6 = (i5 * 9) / 16;
                        if (i6 < 150) {
                            i6 = 150;
                        }
                        int iE = i4 - appPipFloaterService.e(24);
                        int iE2 = appPipFloaterService.e(24) + 72;
                        lg lgVar = new lg(iE - i5, iE2, iE, i6 + iE2);
                        boolean z3 = appPipFloaterService.getSharedPreferences("tela_preta_prefs", 0).getBoolean("pip_app_fixado", true);
                        try {
                            ComponentName componentNameUnflattenFromString = ComponentName.unflattenFromString(strN);
                            PackageManager packageManager = appPipFloaterService.getPackageManager();
                            i2.g.b(componentNameUnflattenFromString);
                            ActivityInfo activityInfo = packageManager.getActivityInfo(componentNameUnflattenFromString, 0);
                            i2.g.d(activityInfo, "getActivityInfo(...)");
                            z2 = (activityInfo.flags & 4194304) != 0;
                        } catch (Throwable th) {
                            androidx.activity.result.b.s(th, androidx.activity.result.b.l("appSuportaPipNativo(", strN, "): "), "AppPipFloater");
                        }
                        v4 v4Var3 = z3 ? z2 ? v4Var2 : v4Var : v4.b;
                        if (v4Var3 == v4Var2) {
                            if (og.f4028e.c(strN)) {
                                og.a(6000, "am force-stop ".concat(str));
                                Thread.sleep(300L);
                                String strA = og.a(10000, "am start -n ".concat(strN));
                                if (o2.t.d0(strA, "ADB_FAIL") || o2.k.e0(strA, "Error:", true)) {
                                    og.f = strA;
                                } else {
                                    Thread.sleep(2000L);
                                    og.a(6000, "input keyevent 171");
                                    while (true) {
                                        if (i3 < 7) {
                                            Thread.sleep(700L);
                                            Integer numJ = og.j();
                                            if (numJ != null) {
                                                numValueOf = Integer.valueOf(numJ.intValue());
                                            } else {
                                                i3++;
                                            }
                                        } else {
                                            og.f = "o app nao entrou em PiP depois do pedido (nao suporta ou recusou)";
                                        }
                                    }
                                    if (numValueOf != null) {
                                        appPipFloaterService.f788u = numValueOf;
                                        appPipFloaterService.f776i = null;
                                        o2.h hVar = og.f4025a;
                                        og.m(numValueOf.intValue(), lgVar);
                                        appPipFloaterService.f778k = lgVar;
                                        appPipFloaterService.f779l = false;
                                        appPipFloaterService.f781n = false;
                                        appPipFloaterService.f775h.post(new b0(appPipFloaterService, 3));
                                    } else {
                                        StringBuilder sb = new StringBuilder("pinned falhou (");
                                        o2.h hVar2 = og.f4025a;
                                        sb.append(og.f);
                                        sb.append(") — caindo no flutuante");
                                        Log.i("AppPipFloater", sb.toString());
                                    }
                                }
                            } else {
                                og.f = "componente inválido: ".concat(strN);
                            }
                            numValueOf = null;
                            if (numValueOf != null) {
                                appPipFloaterService.f788u = numValueOf;
                                appPipFloaterService.f776i = null;
                                o2.h hVar3 = og.f4025a;
                                og.m(numValueOf.intValue(), lgVar);
                                appPipFloaterService.f778k = lgVar;
                                appPipFloaterService.f779l = false;
                                appPipFloaterService.f781n = false;
                                appPipFloaterService.f775h.post(new b0(appPipFloaterService, 3));
                            } else {
                                StringBuilder sb2 = new StringBuilder("pinned falhou (");
                                o2.h hVar4 = og.f4025a;
                                sb2.append(og.f);
                                sb2.append(") — caindo no flutuante");
                                Log.i("AppPipFloater", sb2.toString());
                            }
                        }
                        if (v4Var3 == v4Var) {
                            appPipFloaterService.f775h.post(new b0(appPipFloaterService, 4));
                        }
                        mg mgVarK = og.k(strN, str, lgVar);
                        if (mgVarK != null) {
                            appPipFloaterService.f776i = mgVarK;
                            appPipFloaterService.f788u = null;
                            appPipFloaterService.f778k = lgVar;
                            appPipFloaterService.f779l = false;
                            appPipFloaterService.f781n = false;
                            appPipFloaterService.f775h.post(new b0(appPipFloaterService, 5));
                        } else {
                            String string = appPipFloaterService.getString(R.string.k_error_open_pip, og.f);
                            i2.g.d(string, "getString(...)");
                            appPipFloaterService.f(string);
                        }
                    } else {
                        String string2 = appPipFloaterService.getString(R.string.k_error_open_app);
                        i2.g.d(string2, "getString(...)");
                        appPipFloaterService.f(string2);
                    }
                } else {
                    String string3 = appPipFloaterService.getString(R.string.k_error_read_resolution, og.f);
                    i2.g.d(string3, "getString(...)");
                    appPipFloaterService.f(string3);
                }
                break;
            case 1:
                AppPipFloaterService appPipFloaterService3 = this.b;
                String str2 = this.f4554c;
                AppPipFloaterService appPipFloaterService4 = AppPipFloaterService.f769x;
                try {
                    appPipFloaterService3.g(str2);
                } catch (Throwable unused) {
                    return;
                }
                break;
            default:
                AppPipFloaterService appPipFloaterService5 = this.b;
                String str3 = this.f4554c;
                AppPipFloaterService appPipFloaterService6 = AppPipFloaterService.f769x;
                Toast.makeText(appPipFloaterService5, str3, 1).show();
                break;
        }
    }
}
