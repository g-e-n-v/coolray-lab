package w0;

import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.MainActivity;
import com.ex.auto.R;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class x8 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4502a;
    public final /* synthetic */ MainActivity b;

    public /* synthetic */ x8(MainActivity mainActivity, int i3) {
        this.f4502a = i3;
        this.b = mainActivity;
    }

    /* JADX WARN: Code duplicated, block: B:180:0x04b9  */
    @Override // java.lang.Runnable
    public final void run() {
        List listI0;
        String str;
        String string;
        Integer numW;
        String strH1;
        String strH2 = "";
        int i3 = 4;
        String str2 = null;
        str2 = null;
        boolean z2 = true;
        z2 = true;
        int i4 = 0;
        switch (this.f4502a) {
            case 0:
                MainActivity mainActivity = this.b;
                int i5 = MainActivity.f1002z1;
                try {
                    mainActivity.I0();
                } catch (Throwable unused) {
                    return;
                }
                break;
            case 1:
                MainActivity mainActivity2 = this.b;
                int i6 = MainActivity.f1002z1;
                Log.i("ArranqueUI", "primeiro desenho em " + (SystemClock.elapsedRealtime() - mainActivity2.Q) + "ms");
                l2.c cVar = new l2.c(1, 7, 1);
                ArrayList arrayList = new ArrayList();
                Iterator it = cVar.iterator();
                while (true) {
                    l2.b bVar = (l2.b) it;
                    if (!bVar.f2428c) {
                        ArrayList arrayListN0 = y1.g.n0(arrayList);
                        if (!arrayListN0.isEmpty()) {
                            Looper.myQueue().addIdleHandler(new lc(mainActivity2, arrayListN0));
                            break;
                        }
                    } else {
                        Object next = bVar.next();
                        if (!mainActivity2.S0[((Number) next).intValue()]) {
                            arrayList.add(next);
                        }
                    }
                }
                break;
            case 2:
                MainActivity mainActivity3 = this.b;
                int i7 = MainActivity.f1002z1;
                k5 k5Var = k5.f3786a;
                SharedPreferences sharedPreferencesO0 = mainActivity3.o0();
                i2.g.d(sharedPreferencesO0, "<get-prefs>(...)");
                k5Var.d(sharedPreferencesO0);
                break;
            case 3:
                MainActivity mainActivity4 = this.b;
                int i8 = MainActivity.f1002z1;
                if (!mainActivity4.isFinishing()) {
                    mainActivity4.C.execute(new nb(mainActivity4, i3));
                }
                break;
            case 4:
                MainActivity mainActivity5 = this.b;
                int i9 = MainActivity.f1002z1;
                try {
                    new File(mainActivity5.getCacheDir(), "CentralEXAuto-update-staging.apk").delete();
                    break;
                } catch (Exception unused2) {
                }
                try {
                    new File(mainActivity5.getCacheDir(), "ca_fix-update-staging.apk").delete();
                    break;
                } catch (Exception unused3) {
                }
                try {
                    new File("/data/local/tmp/CentralEXAuto-update.apk").delete();
                    break;
                } catch (Exception unused4) {
                }
                try {
                    new File("/data/local/tmp/ca_fix-update.apk").delete();
                    break;
                } catch (Exception unused5) {
                }
                mainActivity5.H1(5000, "rm -f " + MainActivity.j2("/data/local/tmp/CentralEXAuto-update.apk") + ' ' + MainActivity.j2("/data/local/tmp/ca_fix-update.apk") + " 2>/dev/null || true");
                break;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                MainActivity mainActivity6 = this.b;
                int i10 = MainActivity.f1002z1;
                mainActivity6.f1045v.post(new f9(mainActivity6, eg.c(), 5));
                break;
            case MusicClient.TYPE_GESTURE /* 6 */:
                MainActivity mainActivity7 = this.b;
                int i11 = MainActivity.f1002z1;
                mainActivity7.f1045v.post(new c9(mainActivity7, mainActivity7.H1(8000, e8.v()), 0));
                break;
            case PlaybackState.STATE_ERROR /* 7 */:
                o4 o4Var = o4.f3974e;
                o4 o4Var2 = o4.f3973d;
                MainActivity mainActivity8 = this.b;
                int i12 = MainActivity.f1002z1;
                String strH3 = mainActivity8.H1(8000, "echo WPP=$(netstat -tn 2>/dev/null | grep -cE '3051[56].*ESTABLISHED'); echo AP0=$(awk '$6==\"ap0\" && $3!=\"0x0\"{n++} END{print n+0}' /proc/net/arp 2>/dev/null); echo BT=$(dumpsys bluetooth_manager 2>/dev/null | grep -cE '(A2dpSinkStateMachine|HeadsetClientStateMachine) state=Connected')");
                Boolean boolK1 = MainActivity.k1(strH3, "WPP");
                Boolean boolK2 = MainActivity.k1(strH3, "AP0");
                Boolean boolK3 = MainActivity.k1(strH3, "BT");
                Boolean bool = Boolean.TRUE;
                if (i2.g.a(boolK1, bool)) {
                    o4Var = o4.f3971a;
                } else {
                    Boolean bool2 = Boolean.FALSE;
                    if (i2.g.a(boolK1, bool2)) {
                        if (i2.g.a(boolK2, bool)) {
                            o4Var = o4.b;
                        } else if (i2.g.a(boolK3, bool)) {
                            o4Var = o4.f3972c;
                        } else if (i2.g.a(boolK2, bool2) && i2.g.a(boolK3, bool2)) {
                            o4Var = o4Var2;
                        }
                    } else if (i2.g.a(boolK2, bool2) && i2.g.a(boolK3, bool2)) {
                        o4Var = o4Var2;
                    }
                }
                mainActivity8.f1045v.post(new a1.i(mainActivity8, 26, o4Var));
                break;
            case 8:
                MainActivity mainActivity9 = this.b;
                int i13 = MainActivity.f1002z1;
                mainActivity9.o1();
                break;
            case 9:
                MainActivity mainActivity10 = this.b;
                int i14 = MainActivity.f1002z1;
                SharedPreferences sharedPreferencesO1 = mainActivity10.o0();
                i2.g.d(sharedPreferencesO1, "<get-prefs>(...)");
                m.z(mainActivity10, sharedPreferencesO1);
                break;
            case 10:
                MainActivity mainActivity11 = this.b;
                int i15 = MainActivity.f1002z1;
                mainActivity11.r1();
                break;
            case 11:
                MainActivity mainActivity12 = this.b;
                int i16 = MainActivity.f1002z1;
                mainActivity12.f1045v.post(new f9(mainActivity12, eg.e(mainActivity12), 10));
                break;
            case 12:
                MainActivity mainActivity13 = this.b;
                int i17 = MainActivity.f1002z1;
                PackageManager packageManager = mainActivity13.getPackageManager();
                try {
                    List<ApplicationInfo> installedApplications = packageManager.getInstalledApplications(0);
                    i2.g.d(installedApplications, "getInstalledApplications(...)");
                    ArrayList arrayList2 = new ArrayList();
                    for (Object obj : installedApplications) {
                        if (packageManager.getLaunchIntentForPackage(((ApplicationInfo) obj).packageName) != null) {
                            arrayList2.add(obj);
                        }
                    }
                    ArrayList arrayList3 = new ArrayList(y1.i.X(arrayList2));
                    int size = arrayList2.size();
                    int i18 = 0;
                    while (i18 < size) {
                        Object obj2 = arrayList2.get(i18);
                        i18++;
                        ApplicationInfo applicationInfo = (ApplicationInfo) obj2;
                        arrayList3.add(new x1.a(applicationInfo.packageName, packageManager.getApplicationLabel(applicationInfo).toString()));
                    }
                    listI0 = y1.g.i0(arrayList3, new b6(7));
                } catch (Exception unused6) {
                    listI0 = y1.p.f4663a;
                }
                mainActivity13.f1045v.post(new ua(mainActivity13, listI0, i4));
                break;
            case 13:
                MainActivity mainActivity14 = this.b;
                int i19 = MainActivity.f1002z1;
                boolean zA = qe.f4124a.a(mainActivity14, "visual.removerGestos", y1.q.f4664a);
                if (!zA) {
                    Log.w("GesturePatch", "remove: sem playbook ou bind resistiu");
                }
                mainActivity14.f1045v.post(new f9(mainActivity14, zA, 7));
                break;
            case 14:
                MainActivity mainActivity15 = this.b;
                int i20 = MainActivity.f1002z1;
                String strH4 = mainActivity15.H1(8000, "[ -f '/data/local/gesture-launcher/launcher.apk' ] && echo G_YES || echo G_NO");
                boolean zE0 = o2.k.e0(strH4, "G_YES", false);
                if (!o2.k.m0(strH4) && !o2.k.e0(strH4, "Falha no ADB local", false)) {
                    z2 = false;
                }
                mainActivity15.f1045v.post(new ta(i4, mainActivity15, zE0, z2));
                break;
            case 15:
                MainActivity mainActivity16 = this.b;
                int i21 = MainActivity.f1002z1;
                mainActivity16.q1();
                break;
            case 16:
                MainActivity mainActivity17 = this.b;
                int i22 = MainActivity.f1002z1;
                mainActivity17.s1();
                break;
            case 17:
                MainActivity mainActivity18 = this.b;
                int i23 = MainActivity.f1002z1;
                try {
                    strH2 = mainActivity18.H1(8000, "RULES=$(ip rule show 2>/dev/null | grep -c \"12500:\" || echo 0)\necho \"rules=${RULES}\"");
                    break;
                } catch (Exception unused7) {
                }
                Pattern patternCompile = Pattern.compile("rules=(\\d+)");
                i2.g.d(patternCompile, "compile(...)");
                i2.g.e(strH2, "input");
                Matcher matcher = patternCompile.matcher(strH2);
                i2.g.d(matcher, "matcher(...)");
                o2.e eVarB = k1.a.b(matcher, 0, strH2);
                mainActivity18.f1045v.post(new f9(mainActivity18, ((eVarB == null || (str = (String) ((o2.d) eVarB.a()).get(1)) == null || (string = o2.k.E0(str).toString()) == null || (numW = o2.s.W(string)) == null) ? 0 : numW.intValue()) > 0, 8));
                break;
            case 18:
                MainActivity mainActivity19 = this.b;
                int i24 = MainActivity.f1002z1;
                Set setKeySet = ((Map) mainActivity19.f1003a0.a()).keySet();
                int iV = y1.s.V(y1.i.X(setKeySet));
                LinkedHashMap linkedHashMap = new LinkedHashMap(iV >= 16 ? iV : 16);
                for (Object obj3 : setKeySet) {
                    linkedHashMap.put(obj3, mainActivity19.m0((String) obj3));
                }
                mainActivity19.f1045v.post(new a1.i(mainActivity19, 28, linkedHashMap));
                break;
            case 19:
                MainActivity mainActivity20 = this.b;
                int i25 = MainActivity.f1002z1;
                try {
                    e.i iVar = mainActivity20.f1006b1;
                    if (iVar != null) {
                        iVar.dismiss();
                    }
                    break;
                } catch (Throwable unused8) {
                }
                mainActivity20.f1006b1 = null;
                mainActivity20.f1004a1 = null;
                break;
            case 20:
                MainActivity mainActivity21 = this.b;
                int i26 = MainActivity.f1002z1;
                List listA0 = mainActivity21.A0();
                ArrayList arrayList4 = new ArrayList(y1.i.X(listA0));
                Iterator it2 = listA0.iterator();
                while (it2.hasNext()) {
                    arrayList4.add((String) ((x1.a) it2.next()).f4641a);
                }
                String packageName = mainActivity21.getPackageName();
                ArrayList arrayList5 = new ArrayList(arrayList4.size() + 1);
                arrayList5.addAll(arrayList4);
                arrayList5.add(packageName);
                List listI1 = y1.g.i0(y1.g.Z(arrayList5), new mc(mainActivity21));
                String strI = r5.i(listI1);
                List listF = r5.f(o2.k.m0(strI) ? "" : mainActivity21.H1(90000, strI));
                int iV2 = y1.s.V(y1.i.X(listF));
                LinkedHashMap linkedHashMap2 = new LinkedHashMap(iV2 >= 16 ? iV2 : 16);
                for (Object obj4 : listF) {
                    linkedHashMap2.put(((o5) obj4).f3975a, obj4);
                }
                mainActivity21.f1045v.post(new a1.g(mainActivity21, listI1, linkedHashMap2, 14));
                break;
            case 21:
                MainActivity mainActivity22 = this.b;
                int i27 = MainActivity.f1002z1;
                String string2 = mainActivity22.o0().getString("auto_connect_preferred_bt", null);
                if (string2 != null && !o2.k.m0(string2)) {
                    str2 = string2;
                }
                new Thread(new c9(mainActivity22, str2, 3)).start();
                break;
            case 22:
                MainActivity mainActivity23 = this.b;
                if (mainActivity23.f1033p0) {
                    mainActivity23.f1033p0 = false;
                    mainActivity23.f1035q0 = null;
                    mainActivity23.v1();
                }
                break;
            case 23:
                MainActivity mainActivity24 = this.b;
                int i28 = MainActivity.f1002z1;
                mainActivity24.v1();
                break;
            case 24:
                MainActivity mainActivity25 = this.b;
                int i29 = MainActivity.f1002z1;
                String strE0 = t1.e0(mainActivity25, true);
                if (strE0 == null) {
                    mainActivity25.x("CarplayMonitor", "não consegui gravar o script");
                } else {
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    ae aeVar = ae.f3361a;
                    ae.b("Ativar", "patch do monitor: início (segundo plano)", false);
                    try {
                        strH1 = mainActivity25.H1(120000, strE0);
                    } catch (Exception e3) {
                        strH1 = "erro: " + e3.getMessage();
                    }
                    ae aeVar2 = ae.f3361a;
                    ae.b("Ativar", "patch do monitor terminou em " + ((SystemClock.elapsedRealtime() - jElapsedRealtime) / ((long) 1000)) + 's', false);
                    mainActivity25.x("CarplayMonitor", o2.k.D0(400, strH1));
                    mainActivity25.f1045v.post(new c9(mainActivity25, strH1, 4));
                }
                break;
            case 25:
                MainActivity mainActivity26 = this.b;
                int i30 = MainActivity.f1002z1;
                String strH5 = mainActivity26.H1(12000, "echo TTL_V4=$(iptables  -t mangle -S POSTROUTING | grep -c 'ttl-set 65'); echo TTL_V6=$(ip6tables -t mangle -S POSTROUTING | grep -c 'hl-set 65')");
                i2.g.e(strH5, "saida");
                mainActivity26.f1045v.post(new f9(mainActivity26, e8.b(strH5, "TTL_V4") > 0 && e8.b(strH5, "TTL_V6") > 0, 11));
                break;
            case 26:
                MainActivity mainActivity27 = this.b;
                int i31 = MainActivity.f1002z1;
                try {
                    n6 n6Var = (n6) ((AtomicReference) i0.f3693a.b).get();
                    if (n6Var != null) {
                        Object obj5 = CentralWatchdogService.W2.get();
                        String str3 = (String) (i2.g.a(n6Var.f3935a, "auto") ? obj5 : null);
                        if (str3 == null) {
                            str3 = n6Var.b;
                        }
                        mainActivity27.f1045v.post(new c9(mainActivity27, str3, 5));
                    } else {
                        hc hcVarG0 = mainActivity27.g0();
                        Handler handler = mainActivity27.f1045v;
                        long jT = mainActivity27.T();
                        String strValueOf = mainActivity27.getPackageManager().getPackageInfo(mainActivity27.getPackageName(), 0).versionName;
                        if (strValueOf == null) {
                            strValueOf = String.valueOf(mainActivity27.T());
                        }
                        if (hcVarG0.f3676a <= jT) {
                            handler.post(new ma(mainActivity27, i3));
                        } else {
                            handler.post(new a1.g(mainActivity27, strValueOf, hcVarG0, 15));
                        }
                    }
                } catch (Exception e4) {
                    mainActivity27.f1045v.post(new oa(mainActivity27, e4, i4));
                    return;
                }
                break;
            case 27:
                MainActivity mainActivity28 = this.b;
                boolean zF = MainActivity.F();
                Handler handler2 = mainActivity28.f1045v;
                if (zF) {
                    int[] iArr = CentralWatchdogService.S2;
                    if (t1.q("Reiniciar") == a5.b) {
                        handler2.post(new ma(mainActivity28, i4));
                    } else {
                        handler2.post(new ma(mainActivity28, z2 ? 1 : 0));
                    }
                } else {
                    ae aeVar3 = ae.f3361a;
                    ae.b("Reiniciar", "canal ADB local fora — nada foi feito", false);
                    handler2.post(new x8(mainActivity28, 29));
                }
                break;
            case 28:
                MainActivity mainActivity29 = this.b;
                int i32 = MainActivity.f1002z1;
                mainActivity29.H1(5000, "rm -f " + androidx.activity.result.b.i("/data/local/tmp/fixes/keyserver_em_bind", "'", "'\\''", new StringBuilder("'"), '\'') + " 2>/dev/null || true");
                break;
            default:
                MainActivity mainActivity30 = this.b;
                int i33 = MainActivity.f1002z1;
                if (!mainActivity30.isFinishing() && !mainActivity30.isDestroyed()) {
                    String string3 = mainActivity30.getString(R.string.k_reiniciar_sem_canal);
                    i2.g.d(string3, "getString(...)");
                    mainActivity30.t2(string3, 1);
                    e.h hVar = new e.h(mainActivity30);
                    hVar.g(R.string.k_reiniciar_sem_canal_titulo);
                    e.d dVar = (e.d) hVar.b;
                    dVar.f = dVar.f1552a.getText(R.string.k_reiniciar_sem_canal);
                    hVar.e(android.R.string.ok, null);
                    hVar.h();
                    break;
                }
                break;
        }
    }
}
