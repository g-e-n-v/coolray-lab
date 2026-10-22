package w0;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.ModoOficinaTriggerService;
import com.ex.auto.PhoneSyncService;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class c6 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final List f3430a = k1.a.I("com.ex.auto.MainActivity");
    public static final Set b = k1.a.P("com.njda.adapter", "com.flyme.auto.systemuiplugin", "com.geely.controlcenter", "com.flyme.auto.launcher", "com.flyme.auto.keyserver");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final List f3431c = y1.h.V("persist.sys.hvacdigital.temp", "persist.sys.hvacdigital.batt", "persist.sys.hvacdigital.exttemp");

    public static File a(Context context) {
        return new File(context.getFilesDir(), "oficina/estado.json");
    }

    public static void b(int i3, String str) {
        String strN = n(i3, "(" + str + ") && echo OFICINA_OK");
        n2.c cVarN0 = o2.k.n0(strN);
        Iterator it = cVarN0.b.iterator();
        while (it.hasNext()) {
            if (i2.g.a(o2.k.E0((String) ((h2.l) cVarN0.f2529c).c(it.next())).toString(), "OFICINA_OK")) {
                return;
            }
        }
        throw new IllegalStateException(o2.k.D0(350, strN).toString());
    }

    public static void d(int i3, Context context, String str) {
        ComponentName componentName = new ComponentName(context.getPackageName(), str);
        context.getPackageManager().setComponentEnabledSetting(componentName, i3, 1);
        if (context.getPackageManager().getComponentEnabledSetting(componentName) != i3) {
            throw new IllegalStateException("Check failed.");
        }
    }

    public static String e(String str) {
        String strA0 = o2.k.A0(n(60000, "sha256sum " + i(str)), ' ');
        Pattern patternCompile = Pattern.compile("[a-f0-9]{64}");
        i2.g.d(patternCompile, "compile(...)");
        if (patternCompile.matcher(strA0).matches()) {
            return strA0;
        }
        throw new IllegalStateException("Arquivo não confirmado: ".concat(str).toString());
    }

    public static void f(Context context, JSONObject jSONObject) throws JSONException, InterruptedException {
        JSONArray jSONArray = jSONObject.getJSONArray("services");
        int length = jSONArray.length();
        for (int i3 = 0; i3 < length; i3++) {
            context.stopService(new Intent().setClassName(context.getPackageName(), jSONArray.getString(i3)));
        }
        JSONArray jSONArray2 = jSONObject.getJSONArray("overlays");
        i2.g.d(jSONArray2, "getJSONArray(...)");
        ArrayList arrayListM = m(jSONArray2);
        int size = arrayListM.size();
        int i4 = 0;
        while (i4 < size) {
            Object obj = arrayListM.get(i4);
            i4++;
            StringBuilder sb = new StringBuilder("cmd overlay disable --user 0 ");
            String string = ((JSONObject) obj).getString("pkg");
            i2.g.d(string, "getString(...)");
            sb.append(i(string));
            b(60000, sb.toString());
        }
        JSONArray jSONArray3 = jSONObject.getJSONArray("binds");
        i2.g.d(jSONArray3, "getJSONArray(...)");
        ArrayList arrayListM2 = m(jSONArray3);
        ArrayList arrayList = new ArrayList(y1.i.X(arrayListM2));
        int size2 = arrayListM2.size();
        int i5 = 0;
        while (i5 < size2) {
            Object obj2 = arrayListM2.get(i5);
            i5++;
            arrayList.add(((JSONObject) obj2).getString("target"));
        }
        for (String str : y1.g.Z(arrayList)) {
            b(60000, "n=0; while grep -F " + i(" " + str + ' ') + " /proc/mounts >/dev/null; do [ $n -lt 16 ] || exit 1; umount -l " + i(str) + " || exit 1; n=$((n+1)); done");
        }
        JSONArray jSONArray4 = jSONObject.getJSONArray("updates");
        i2.g.d(jSONArray4, "getJSONArray(...)");
        ArrayList arrayListM3 = m(jSONArray4);
        int size3 = arrayListM3.size();
        int i6 = 0;
        while (i6 < size3) {
            Object obj3 = arrayListM3.get(i6);
            i6++;
            String string2 = ((JSONObject) obj3).getString("pkg");
            ArrayList arrayList2 = arrayListM3;
            int i7 = size3;
            String str2 = context.getPackageManager().getApplicationInfo(string2, 0).sourceDir;
            i2.g.d(str2, "sourceDir");
            if (o2.t.d0(str2, "/data/")) {
                StringBuilder sb2 = new StringBuilder("pm uninstall -k ");
                i2.g.b(string2);
                sb2.append(i(string2));
                b(120000, sb2.toString());
            }
            String str3 = context.getPackageManager().getApplicationInfo(string2, 0).sourceDir;
            i2.g.d(str3, "sourceDir");
            if (o2.t.d0(str3, "/data/")) {
                throw new IllegalStateException(("Update não ocultado: " + string2).toString());
            }
            arrayListM3 = arrayList2;
            size3 = i7;
        }
        b(60000, "wm density reset");
        String string3 = jSONObject.getString("tiles");
        i2.g.d(string3, "getString(...)");
        List listU0 = o2.k.u0(string3, new char[]{','});
        ArrayList arrayList3 = new ArrayList();
        Iterator it = listU0.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            Iterator it2 = it;
            if (!o2.t.d0((String) next, "exsapo_")) {
                arrayList3.add(next);
            }
            it = it2;
        }
        String str4 = "/data/";
        b(60000, "settings put secure sysui_qs_tiles " + i(y1.g.e0(arrayList3, ",", null, 62)) + " && settings put system lock_car_audio_enable 0");
        Iterator it3 = f3431c.iterator();
        while (it3.hasNext()) {
            b(60000, "setprop " + ((String) it3.next()) + " 0");
        }
        JSONArray jSONArray5 = jSONObject.getJSONArray("packages");
        i2.g.d(jSONArray5, "getJSONArray(...)");
        ArrayList arrayListM4 = m(jSONArray5);
        int size4 = arrayListM4.size();
        int i8 = 0;
        while (i8 < size4) {
            Object obj4 = arrayListM4.get(i8);
            i8++;
            String string4 = ((JSONObject) obj4).getString("pkg");
            i2.g.d(string4, "getString(...)");
            g(3, context, string4);
            arrayListM4 = arrayListM4;
        }
        JSONArray jSONArray6 = jSONObject.getJSONArray("components");
        i2.g.d(jSONArray6, "getJSONArray(...)");
        ArrayList arrayListM5 = m(jSONArray6);
        int size5 = arrayListM5.size();
        int i9 = 0;
        while (i9 < size5) {
            Object obj5 = arrayListM5.get(i9);
            i9++;
            JSONObject jSONObject2 = (JSONObject) obj5;
            ArrayList arrayList4 = arrayListM5;
            String string5 = jSONObject2.getString("name");
            i2.g.d(string5, "getString(...)");
            d(2, context, string5);
            arrayListM5 = arrayList4;
        }
        j(jSONObject);
        if (o2.k.e0(n(60000, "wm density"), "Override density", false)) {
            throw new IllegalStateException("DPI customizado reapareceu");
        }
        if (o2.k.e0(n(60000, "settings get secure sysui_qs_tiles"), "exsapo_", false)) {
            throw new IllegalStateException("Atalhos extras reapareceram");
        }
        List listD = new o2.h("  Window #").d(0, n(60000, "dumpsys window windows"));
        ArrayList arrayList5 = new ArrayList();
        for (Object obj6 : listD) {
            String str5 = (String) obj6;
            if (o2.k.e0(o2.k.A0(str5, '\n'), "u0 com.ex.auto", false) && o2.k.e0(str5, "mHasSurface=true", false) && o2.k.e0(str5, "mViewVisibility=0x0", false)) {
                arrayList5.add(obj6);
            }
        }
        int size6 = arrayList5.size();
        int i10 = 0;
        while (i10 < size6) {
            Object obj7 = arrayList5.get(i10);
            i10++;
            String str6 = (String) obj7;
            Pattern patternCompile = Pattern.compile("mFrame=\\[(\\d+),(\\d+)]\\[(\\d+),(\\d+)]");
            i2.g.d(patternCompile, "compile(...)");
            i2.g.e(str6, "input");
            Matcher matcher = patternCompile.matcher(str6);
            i2.g.d(matcher, "matcher(...)");
            o2.e eVarB = k1.a.b(matcher, 0, str6);
            if (eVarB == null || Integer.parseInt((String) ((o2.d) eVarB.a()).get(3)) - Integer.parseInt((String) ((o2.d) eVarB.a()).get(1)) != 44 || Integer.parseInt((String) ((o2.d) eVarB.a()).get(4)) - Integer.parseInt((String) ((o2.d) eVarB.a()).get(2)) != 44) {
                throw new IllegalStateException("Uma janela do EX Sapo permaneceu visível");
            }
        }
        String strN = n(60000, "cat /proc/mounts");
        JSONArray jSONArray7 = jSONObject.getJSONArray("binds");
        i2.g.d(jSONArray7, "getJSONArray(...)");
        ArrayList arrayListM6 = m(jSONArray7);
        int size7 = arrayListM6.size();
        int i11 = 0;
        while (i11 < size7) {
            Object obj8 = arrayListM6.get(i11);
            i11++;
            if (o2.k.e0(strN, " " + ((JSONObject) obj8).getString("target") + ' ', false)) {
                throw new IllegalStateException("Bind reapareceu");
            }
        }
        Set setX = n2.g.X(new n2.c(new n2.d(o2.k.n0(n(60000, "cmd overlay list --user 0")), true, new n2(15)), new n2(16), 2));
        JSONArray jSONArray8 = jSONObject.getJSONArray("overlays");
        i2.g.d(jSONArray8, "getJSONArray(...)");
        ArrayList arrayListM7 = m(jSONArray8);
        int size8 = arrayListM7.size();
        int i12 = 0;
        while (i12 < size8) {
            Object obj9 = arrayListM7.get(i12);
            i12++;
            if (setX.contains(((JSONObject) obj9).getString("pkg"))) {
                throw new IllegalStateException("Overlay reapareceu");
            }
        }
        JSONArray jSONArray9 = jSONObject.getJSONArray("updates");
        i2.g.d(jSONArray9, "getJSONArray(...)");
        ArrayList arrayListM8 = m(jSONArray9);
        int size9 = arrayListM8.size();
        int i13 = 0;
        while (i13 < size9) {
            Object obj10 = arrayListM8.get(i13);
            i13++;
            String str7 = context.getPackageManager().getApplicationInfo(((JSONObject) obj10).getString("pkg"), 0).sourceDir;
            i2.g.d(str7, "sourceDir");
            String str8 = str4;
            if (o2.t.d0(str7, str8)) {
                throw new IllegalStateException("Check failed.");
            }
            str4 = str8;
        }
        JSONArray jSONArray10 = jSONObject.getJSONArray("packages");
        i2.g.d(jSONArray10, "getJSONArray(...)");
        ArrayList arrayListM9 = m(jSONArray10);
        int size10 = arrayListM9.size();
        int i14 = 0;
        while (i14 < size10) {
            Object obj11 = arrayListM9.get(i14);
            i14++;
            if (context.getPackageManager().getApplicationInfo(((JSONObject) obj11).getString("pkg"), 0).enabled) {
                throw new IllegalStateException("Check failed.");
            }
        }
    }

    public static void g(int i3, Context context, String str) throws InterruptedException {
        PackageManager packageManager = context.getPackageManager();
        packageManager.setApplicationEnabledSetting(str, i3, packageManager.getApplicationInfo(str, 0).uid == Process.myUid() ? 1 : 0);
        if (packageManager.getApplicationEnabledSetting(str) != i3) {
            throw new IllegalStateException(androidx.activity.result.b.h("Estado de ", str, " não confirmado").toString());
        }
        Thread.sleep(120L);
    }

    public static void h(Context context) {
        i2.g.e(context, "ctx");
        CountDownLatch countDownLatch = new CountDownLatch(1);
        new Handler(Looper.getMainLooper()).post(new a1.i(context, 14, countDownLatch));
        if (!countDownLatch.await(10L, TimeUnit.SECONDS)) {
            throw new IllegalStateException("Watchdog não parou");
        }
    }

    public static String i(String str) {
        return androidx.activity.result.b.i(str, "'", "'\\''", new StringBuilder("'"), '\'');
    }

    public static void j(JSONObject jSONObject) throws JSONException {
        JSONArray jSONArray = jSONObject.getJSONArray("binds");
        i2.g.d(jSONArray, "getJSONArray(...)");
        ArrayList arrayListM = m(jSONArray);
        ArrayList arrayList = new ArrayList(y1.i.X(arrayListM));
        int size = arrayListM.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayListM.get(i3);
            i3++;
            arrayList.add(((JSONObject) obj).getString("target"));
        }
        b(60000, "p=$(pidof com.android.systemui); [ -z \"$p\" ] || kill $p");
        for (String str : y1.f.U(new String[]{"com.geely.controlcenter", "com.flyme.auto.launcher", "com.flyme.auto.keyserver"})) {
            if (!arrayList.isEmpty()) {
                int size2 = arrayList.size();
                int i4 = 0;
                while (i4 < size2) {
                    Object obj2 = arrayList.get(i4);
                    i4++;
                    String str2 = (String) obj2;
                    i2.g.b(str2);
                    if (o2.t.Z(str2, ".apk", false)) {
                        n(60000, "p=$(pidof " + str + "); [ -z \"$p\" ] || kill $p");
                        break;
                    }
                }
            }
        }
        if (!arrayList.isEmpty()) {
            int size3 = arrayList.size();
            int i5 = 0;
            while (i5 < size3) {
                Object obj3 = arrayList.get(i5);
                i5++;
                String str3 = (String) obj3;
                i2.g.b(str3);
                if (o2.k.e0(str3, "libvcodec", false)) {
                    b(60000, "setprop ctl.restart mediacodec");
                    break;
                }
            }
        }
        if (!arrayList.isEmpty()) {
            int size4 = arrayList.size();
            int i6 = 0;
            while (i6 < size4) {
                Object obj4 = arrayList.get(i6);
                i6++;
                String str4 = (String) obj4;
                i2.g.b(str4);
                if (o2.t.Z(str4, "/AAutoMonitor", false)) {
                    b(60000, "setprop ctl.restart AAutoMonitor");
                    break;
                }
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        int size5 = arrayList.size();
        int i7 = 0;
        while (i7 < size5) {
            Object obj5 = arrayList.get(i7);
            i7++;
            String str5 = (String) obj5;
            i2.g.b(str5);
            if (o2.t.Z(str5, "/CarplayMonitor", false)) {
                b(60000, "setprop ctl.restart CarplayMonitor");
                return;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:125:0x059a A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:126:0x059b  */
    /* JADX WARN: Code duplicated, block: B:72:0x027e  */
    public static JSONObject k(Context context) throws JSONException, PackageManager.NameNotFoundException, IOException {
        String str;
        String str2;
        int i3;
        String str3;
        JSONObject jSONObjectPut;
        File file;
        FileOutputStream fileOutputStream;
        String str4;
        if (a(context).exists()) {
            throw new IllegalStateException("Há um registro de oficina pendente; restaure primeiro");
        }
        File parentFile = a(context).getParentFile();
        i2.g.b(parentFile);
        if (!parentFile.mkdirs() && !parentFile.isDirectory()) {
            throw new IllegalStateException("Check failed.");
        }
        PackageManager packageManager = context.getPackageManager();
        List<ApplicationInfo> installedApplications = packageManager.getInstalledApplications(0);
        i2.g.d(installedApplications, "getInstalledApplications(...)");
        ArrayList arrayList = new ArrayList();
        for (Object obj : installedApplications) {
            ApplicationInfo applicationInfo = (ApplicationInfo) obj;
            if (!i2.g.a(applicationInfo.packageName, context.getPackageName()) && applicationInfo.enabled && (applicationInfo.flags & 129) == 0) {
                arrayList.add(obj);
            }
        }
        JSONArray jSONArray = new JSONArray();
        Object systemService = context.getSystemService("activity");
        i2.g.c(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
        List<ActivityManager.RunningServiceInfo> runningServices = ((ActivityManager) systemService).getRunningServices(200);
        i2.g.d(runningServices, "getRunningServices(...)");
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : runningServices) {
            ActivityManager.RunningServiceInfo runningServiceInfo = (ActivityManager.RunningServiceInfo) obj2;
            if (i2.g.a(runningServiceInfo.service.getPackageName(), context.getPackageName()) && !k1.a.P(CentralWatchdogService.class.getName(), PhoneSyncService.class.getName(), ModoOficinaTriggerService.class.getName()).contains(runningServiceInfo.service.getClassName())) {
                arrayList2.add(obj2);
            }
        }
        int size = arrayList2.size();
        int i4 = 0;
        while (i4 < size) {
            Object obj3 = arrayList2.get(i4);
            i4++;
            jSONArray.put(((ActivityManager.RunningServiceInfo) obj3).service.getClassName());
        }
        JSONArray jSONArray2 = new JSONArray();
        for (ApplicationInfo applicationInfo2 : y1.g.i0(arrayList, new b6(0))) {
            jSONArray2.put(new JSONObject().put("pkg", applicationInfo2.packageName).put("state", packageManager.getApplicationEnabledSetting(applicationInfo2.packageName)));
        }
        JSONArray jSONArray3 = new JSONArray();
        for (String str5 : f3430a) {
            jSONArray3.put(new JSONObject().put("name", str5).put("state", packageManager.getComponentEnabledSetting(new ComponentName(context.getPackageName(), str5))));
        }
        JSONArray jSONArray4 = new JSONArray();
        n2.c cVarN0 = o2.k.n0(n(60000, "cmd overlay list --user 0"));
        Iterator it = cVarN0.b.iterator();
        while (true) {
            str = "matcher(...)";
            str2 = "input";
            if (!it.hasNext()) {
                break;
            }
            String str6 = (String) ((h2.l) cVarN0.f2529c).c(it.next());
            Pattern patternCompile = Pattern.compile("^\\s*\\[x]\\s+(\\S+)");
            i2.g.d(patternCompile, "compile(...)");
            i2.g.e(str6, "input");
            Matcher matcher = patternCompile.matcher(str6);
            i2.g.d(matcher, "matcher(...)");
            o2.e eVarB = k1.a.b(matcher, 0, str6);
            if (eVarB != null) {
                String str7 = (String) ((o2.d) eVarB.a()).get(1);
                ApplicationInfo applicationInfo3 = packageManager.getApplicationInfo(str7, 0);
                i2.g.d(applicationInfo3, "getApplicationInfo(...)");
                if ((1 & applicationInfo3.flags) == 0 || o2.t.d0(str7, "com.ex.auto.") || o2.t.d0(str7, "com.geely.ex2.")) {
                    jSONArray4.put(new JSONObject().put("pkg", str7));
                }
            }
        }
        JSONArray jSONArray5 = new JSONArray();
        n2.c cVarN1 = o2.k.n0(n(60000, "cat /proc/self/mountinfo"));
        Iterator it2 = cVarN1.b.iterator();
        while (true) {
            Iterator it3 = it2;
            JSONArray jSONArray6 = jSONArray4;
            JSONArray jSONArray7 = jSONArray;
            JSONArray jSONArray8 = jSONArray3;
            if (it2.hasNext()) {
                n2.c cVar = cVarN1;
                String str8 = (String) ((h2.l) cVarN1.f2529c).c(it3.next());
                JSONArray jSONArray9 = jSONArray2;
                List listU0 = o2.k.u0(str8, new char[]{' '});
                String str9 = str;
                if (listU0.size() >= 10) {
                    String str10 = (String) listU0.get(4);
                    if (o2.t.d0(str10, "/system/") || o2.t.d0(str10, "/vendor/") || o2.t.d0(str10, "/product/") || o2.t.d0(str10, "/system_ext/") || o2.t.d0(str10, "/odm/") || o2.t.d0(str10, "/data/app/")) {
                        str4 = str2;
                        if (o2.k.e0(str8, "/by-name/userdata ", false) && !i2.g.a(listU0.get(3), "/")) {
                            if (o2.k.f0(str10, '\\')) {
                                throw new IllegalStateException("Caminho de bind não suportado: ".concat(str10).toString());
                            }
                            String str11 = "/data" + ((String) listU0.get(3));
                            String absolutePath = new File(parentFile, "bind-" + jSONArray5.length()).getAbsolutePath();
                            String strA0 = o2.k.A0(n(60000, "ls -Zd " + i(str10)), ' ');
                            if (!o2.t.d0(strA0, "u:object_r:")) {
                                throw new IllegalStateException("Check failed.");
                            }
                            StringBuilder sb = new StringBuilder("cp -p ");
                            sb.append(i(str10));
                            sb.append(' ');
                            i2.g.b(absolutePath);
                            sb.append(i(absolutePath));
                            sb.append(" && chmod 644 ");
                            sb.append(i(absolutePath));
                            sb.append(" && chcon ");
                            sb.append(i(strA0));
                            sb.append(' ');
                            sb.append(i(absolutePath));
                            b(60000, sb.toString());
                            jSONArray5.put(new JSONObject().put("target", str10).put("source", str11).put("backup", absolutePath).put("sha", e(absolutePath)));
                        }
                    } else {
                        str4 = str2;
                    }
                } else {
                    str4 = str2;
                }
                it2 = it3;
                jSONArray4 = jSONArray6;
                jSONArray = jSONArray7;
                jSONArray3 = jSONArray8;
                cVarN1 = cVar;
                jSONArray2 = jSONArray9;
                str = str9;
                str2 = str4;
            } else {
                JSONArray jSONArray10 = jSONArray2;
                String str12 = str2;
                String str13 = str;
                JSONArray jSONArray11 = new JSONArray();
                List<ApplicationInfo> installedApplications2 = packageManager.getInstalledApplications(0);
                i2.g.d(installedApplications2, "getInstalledApplications(...)");
                ArrayList arrayList3 = new ArrayList();
                for (Object obj4 : installedApplications2) {
                    ApplicationInfo applicationInfo4 = (ApplicationInfo) obj4;
                    if (b.contains(applicationInfo4.packageName) && (applicationInfo4.flags & 128) != 0) {
                        arrayList3.add(obj4);
                    }
                }
                int i5 = 0;
                for (int size2 = arrayList3.size(); i5 < size2; size2 = size2) {
                    Object obj5 = arrayList3.get(i5);
                    i5++;
                    ApplicationInfo applicationInfo5 = (ApplicationInfo) obj5;
                    String[] strArr = applicationInfo5.splitSourceDirs;
                    if (strArr != null && strArr.length != 0) {
                        throw new IllegalStateException(("Update com splits precisa de tratamento: " + applicationInfo5.packageName).toString());
                    }
                    String absolutePath2 = new File(parentFile, "update-" + applicationInfo5.packageName + ".apk").getAbsolutePath();
                    StringBuilder sb2 = new StringBuilder("cp -p ");
                    String str14 = applicationInfo5.sourceDir;
                    i2.g.d(str14, "sourceDir");
                    sb2.append(i(str14));
                    sb2.append(' ');
                    i2.g.b(absolutePath2);
                    sb2.append(i(absolutePath2));
                    sb2.append(" && chmod 644 ");
                    sb2.append(i(absolutePath2));
                    b(60000, sb2.toString());
                    jSONArray11.put(new JSONObject().put("pkg", applicationInfo5.packageName).put("backup", absolutePath2).put("sha", e(absolutePath2)));
                }
                JSONObject jSONObject = new JSONObject();
                for (String str15 : y1.f.U(new String[]{"lock_car_audio_enable", "lock_car_audio_path"})) {
                    jSONObject.put(str15, n(60000, "settings get system " + str15));
                }
                JSONObject jSONObject2 = new JSONObject();
                for (String str16 : f3431c) {
                    jSONObject2.put(str16, n(60000, "getprop " + str16));
                }
                String strN = n(60000, "wm density");
                Pattern patternCompile2 = Pattern.compile("Override density: (\\d+)");
                i2.g.d(patternCompile2, "compile(...)");
                i2.g.e(strN, str12);
                Matcher matcher2 = patternCompile2.matcher(strN);
                i2.g.d(matcher2, str13);
                o2.e eVarB2 = k1.a.b(matcher2, 0, strN);
                try {
                    if (eVarB2 != null) {
                        i3 = 1;
                        str3 = (String) ((o2.d) eVarB2.a()).get(1);
                        if (str3 == null) {
                        }
                        jSONObjectPut = new JSONObject().put("schema", i3).put("packages", jSONArray10).put("components", jSONArray8).put("services", jSONArray7).put("overlays", jSONArray6).put("binds", jSONArray5).put("updates", jSONArray11).put("settings", jSONObject).put("props", jSONObject2).put("density", str3).put("tiles", n(60000, "settings get secure sysui_qs_tiles"));
                        file = new File(parentFile, "estado.tmp");
                        fileOutputStream = new FileOutputStream(file);
                        String string = jSONObjectPut.toString(2);
                        i2.g.d(string, "toString(...)");
                        byte[] bytes = string.getBytes(o2.a.f2622a);
                        i2.g.d(bytes, "getBytes(...)");
                        fileOutputStream.write(bytes);
                        fileOutputStream.getFD().sync();
                        fileOutputStream.close();
                        if (file.renameTo(a(context))) {
                            return jSONObjectPut;
                        }
                        throw new IllegalStateException("Não consegui salvar o registro");
                    }
                    i3 = 1;
                    String string2 = jSONObjectPut.toString(2);
                    i2.g.d(string2, "toString(...)");
                    byte[] bytes2 = string2.getBytes(o2.a.f2622a);
                    i2.g.d(bytes2, "getBytes(...)");
                    fileOutputStream.write(bytes2);
                    fileOutputStream.getFD().sync();
                    fileOutputStream.close();
                    if (file.renameTo(a(context))) {
                        return jSONObjectPut;
                    }
                    throw new IllegalStateException("Não consegui salvar o registro");
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        a1.b.p(fileOutputStream, th);
                        throw th2;
                    }
                }
                str3 = "reset";
                jSONObjectPut = new JSONObject().put("schema", i3).put("packages", jSONArray10).put("components", jSONArray8).put("services", jSONArray7).put("overlays", jSONArray6).put("binds", jSONArray5).put("updates", jSONArray11).put("settings", jSONObject).put("props", jSONObject2).put("density", str3).put("tiles", n(60000, "settings get secure sysui_qs_tiles"));
                file = new File(parentFile, "estado.tmp");
                fileOutputStream = new FileOutputStream(file);
            }
        }
    }

    public static void l(Context context) {
        String string;
        List<String> list;
        StringBuilder sb;
        i2.g.e(context, "ctx");
        JSONObject jSONObject = new JSONObject(f2.d.h0(a(context)));
        JSONArray jSONArray = jSONObject.getJSONArray("updates");
        i2.g.d(jSONArray, "getJSONArray(...)");
        ArrayList arrayListM = m(jSONArray);
        int size = arrayListM.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayListM.get(i3);
            i3++;
            JSONObject jSONObject2 = (JSONObject) obj;
            String str = context.getPackageManager().getApplicationInfo(jSONObject2.getString("pkg"), 0).sourceDir;
            i2.g.d(str, "sourceDir");
            if (!e(str).equals(jSONObject2.getString("sha"))) {
                String string2 = jSONObject2.getString("backup");
                i2.g.d(string2, "getString(...)");
                if (!e(string2).equals(jSONObject2.getString("sha"))) {
                    throw new IllegalStateException("Check failed.");
                }
                StringBuilder sb2 = new StringBuilder("pm install -r ");
                String string3 = jSONObject2.getString("backup");
                i2.g.d(string3, "getString(...)");
                sb2.append(i(string3));
                b(120000, sb2.toString());
            }
        }
        JSONArray jSONArray2 = jSONObject.getJSONArray("binds");
        i2.g.d(jSONArray2, "getJSONArray(...)");
        ArrayList arrayListM2 = m(jSONArray2);
        int size2 = arrayListM2.size();
        int i4 = 0;
        while (i4 < size2) {
            Object obj2 = arrayListM2.get(i4);
            i4++;
            JSONObject jSONObject3 = (JSONObject) obj2;
            String string4 = jSONObject3.getString("target");
            ArrayList arrayList = arrayListM2;
            String string5 = jSONObject3.getString("source");
            StringBuilder sb3 = new StringBuilder("sha256sum ");
            i2.g.b(string5);
            sb3.append(i(string5));
            String string6 = !o2.k.A0(n(60000, sb3.toString()), ' ').equals(jSONObject3.getString("sha")) ? jSONObject3.getString("backup") : string5;
            i2.g.b(string6);
            String str2 = string6;
            if (!e(string6).equals(jSONObject3.getString("sha"))) {
                throw new IllegalStateException("Origem do bind alterada");
            }
            i2.g.b(string4);
            if (!e(string4).equals(jSONObject3.getString("sha"))) {
                b(60000, "mount --bind " + i(str2) + ' ' + i(string4));
            }
            arrayListM2 = arrayList;
        }
        JSONArray jSONArray3 = jSONObject.getJSONArray("packages");
        i2.g.d(jSONArray3, "getJSONArray(...)");
        ArrayList arrayListM3 = m(jSONArray3);
        int size3 = arrayListM3.size();
        int i5 = 0;
        while (i5 < size3) {
            Object obj3 = arrayListM3.get(i5);
            i5++;
            ArrayList arrayList2 = arrayListM3;
            JSONObject jSONObject4 = (JSONObject) obj3;
            int i6 = size3;
            String string7 = jSONObject4.getString("pkg");
            i2.g.d(string7, "getString(...)");
            g(jSONObject4.getInt("state"), context, string7);
            size3 = i6;
            arrayListM3 = arrayList2;
        }
        JSONArray jSONArray4 = jSONObject.getJSONArray("components");
        i2.g.d(jSONArray4, "getJSONArray(...)");
        ArrayList arrayListM4 = m(jSONArray4);
        int size4 = arrayListM4.size();
        int i7 = 0;
        while (i7 < size4) {
            Object obj4 = arrayListM4.get(i7);
            int i8 = i7 + 1;
            JSONObject jSONObject5 = (JSONObject) obj4;
            String string8 = jSONObject5.getString("name");
            i2.g.d(string8, "getString(...)");
            d(jSONObject5.getInt("state"), context, string8);
            i7 = i8;
        }
        String str3 = "overlays";
        JSONArray jSONArray5 = jSONObject.getJSONArray("overlays");
        i2.g.d(jSONArray5, "getJSONArray(...)");
        ArrayList arrayListM5 = m(jSONArray5);
        int i9 = 0;
        for (int size5 = arrayListM5.size(); i9 < size5; size5 = size5) {
            Object obj5 = arrayListM5.get(i9);
            int i10 = i9 + 1;
            JSONObject jSONObject6 = (JSONObject) obj5;
            ArrayList arrayList3 = arrayListM5;
            StringBuilder sb4 = new StringBuilder("cmd overlay enable --user 0 ");
            String string9 = jSONObject6.getString("pkg");
            i2.g.d(string9, "getString(...)");
            sb4.append(i(string9));
            b(60000, sb4.toString());
            arrayListM5 = arrayList3;
            i9 = i10;
        }
        b(60000, "wm density " + jSONObject.getString("density"));
        JSONObject jSONObject7 = jSONObject.getJSONObject("settings");
        Iterator<String> itKeys = jSONObject7.keys();
        String str4 = "keys(...)";
        i2.g.d(itKeys, "keys(...)");
        while (true) {
            Iterator<String> it = itKeys;
            if (!itKeys.hasNext()) {
                break;
            }
            String str5 = str4;
            String next = it.next();
            String str6 = str3;
            String string10 = jSONObject7.getString(next);
            if (i2.g.a(string10, "null")) {
                sb = new StringBuilder("settings delete system ");
                sb.append(next);
            } else {
                sb = new StringBuilder("settings put system ");
                sb.append(next);
                sb.append(' ');
                i2.g.b(string10);
                sb.append(i(string10));
            }
            b(60000, sb.toString());
            str3 = str6;
            itKeys = it;
            str4 = str5;
        }
        String str7 = str3;
        String str8 = str4;
        String str9 = "tiles";
        if (i2.g.a(jSONObject.getString("tiles"), "null")) {
            string = "settings delete secure sysui_qs_tiles";
        } else {
            StringBuilder sb5 = new StringBuilder("settings put secure sysui_qs_tiles ");
            String string11 = jSONObject.getString("tiles");
            i2.g.d(string11, "getString(...)");
            sb5.append(i(string11));
            string = sb5.toString();
        }
        b(60000, string);
        List list2 = f3431c;
        Iterator it2 = list2.iterator();
        while (true) {
            list = list2;
            if (!it2.hasNext()) {
                break;
            }
            String str10 = (String) it2.next();
            Iterator it3 = it2;
            StringBuilder sb6 = new StringBuilder("setprop ");
            sb6.append(str10);
            sb6.append(' ');
            String string12 = jSONObject.getJSONObject("props").getString(str10);
            i2.g.d(string12, "getString(...)");
            sb6.append(i(string12));
            b(60000, sb6.toString());
            list2 = list;
            it2 = it3;
            str9 = str9;
        }
        String str11 = str9;
        j(jSONObject);
        JSONArray jSONArray6 = jSONObject.getJSONArray("updates");
        i2.g.d(jSONArray6, "getJSONArray(...)");
        ArrayList arrayListM6 = m(jSONArray6);
        int size6 = arrayListM6.size();
        int i11 = 0;
        while (i11 < size6) {
            Object obj6 = arrayListM6.get(i11);
            int i12 = i11 + 1;
            JSONObject jSONObject8 = (JSONObject) obj6;
            ArrayList arrayList4 = arrayListM6;
            int i13 = size6;
            String str12 = context.getPackageManager().getApplicationInfo(jSONObject8.getString("pkg"), 0).sourceDir;
            i2.g.d(str12, "sourceDir");
            if (!e(str12).equals(jSONObject8.getString("sha"))) {
                throw new IllegalStateException("Check failed.");
            }
            arrayListM6 = arrayList4;
            size6 = i13;
            i11 = i12;
        }
        JSONArray jSONArray7 = jSONObject.getJSONArray("binds");
        i2.g.d(jSONArray7, "getJSONArray(...)");
        ArrayList arrayListM7 = m(jSONArray7);
        int size7 = arrayListM7.size();
        int i14 = 0;
        while (i14 < size7) {
            Object obj7 = arrayListM7.get(i14);
            i14++;
            JSONObject jSONObject9 = (JSONObject) obj7;
            String string13 = jSONObject9.getString("target");
            i2.g.d(string13, "getString(...)");
            if (!e(string13).equals(jSONObject9.getString("sha"))) {
                throw new IllegalStateException("Check failed.");
            }
        }
        JSONArray jSONArray8 = jSONObject.getJSONArray("packages");
        i2.g.d(jSONArray8, "getJSONArray(...)");
        ArrayList arrayListM8 = m(jSONArray8);
        int size8 = arrayListM8.size();
        int i15 = 0;
        while (i15 < size8) {
            Object obj8 = arrayListM8.get(i15);
            i15++;
            JSONObject jSONObject10 = (JSONObject) obj8;
            if (context.getPackageManager().getApplicationEnabledSetting(jSONObject10.getString("pkg")) != jSONObject10.getInt("state")) {
                throw new IllegalStateException("Check failed.");
            }
        }
        JSONArray jSONArray9 = jSONObject.getJSONArray("components");
        i2.g.d(jSONArray9, "getJSONArray(...)");
        ArrayList arrayListM9 = m(jSONArray9);
        int size9 = arrayListM9.size();
        int i16 = 0;
        while (i16 < size9) {
            Object obj9 = arrayListM9.get(i16);
            i16++;
            JSONObject jSONObject11 = (JSONObject) obj9;
            if (context.getPackageManager().getComponentEnabledSetting(new ComponentName(context.getPackageName(), jSONObject11.getString("name"))) != jSONObject11.getInt("state")) {
                throw new IllegalStateException("Check failed.");
            }
        }
        boolean zE0 = true;
        Set setX = n2.g.X(new n2.c(new n2.d(o2.k.n0(n(60000, "cmd overlay list --user 0")), true, new n2(13)), new n2(14), 2));
        JSONArray jSONArray10 = jSONObject.getJSONArray(str7);
        i2.g.d(jSONArray10, "getJSONArray(...)");
        ArrayList arrayListM10 = m(jSONArray10);
        int size10 = arrayListM10.size();
        int i17 = 0;
        while (i17 < size10) {
            Object obj10 = arrayListM10.get(i17);
            i17++;
            if (!setX.contains(((JSONObject) obj10).getString("pkg"))) {
                throw new IllegalStateException("Check failed.");
            }
        }
        String strN = n(60000, "wm density");
        if (!i2.g.a(jSONObject.getString("density"), "reset")) {
            zE0 = o2.k.e0(strN, "Override density: " + jSONObject.getString("density"), false);
        } else if (o2.k.e0(strN, "Override density", false)) {
            zE0 = false;
        }
        if (!zE0) {
            throw new IllegalStateException("Check failed.");
        }
        if (!i2.g.a(n(60000, "settings get secure sysui_qs_tiles"), jSONObject.getString(str11))) {
            throw new IllegalStateException("Check failed.");
        }
        JSONObject jSONObject12 = jSONObject.getJSONObject("settings");
        Iterator<String> itKeys2 = jSONObject12.keys();
        i2.g.d(itKeys2, str8);
        while (itKeys2.hasNext()) {
            String next2 = itKeys2.next();
            if (!i2.g.a(n(60000, "settings get system " + next2), jSONObject12.getString(next2))) {
                throw new IllegalStateException("Check failed.");
            }
        }
        for (String str13 : list) {
            if (!i2.g.a(n(60000, "getprop " + str13), jSONObject.getJSONObject("props").getString(str13))) {
                throw new IllegalStateException("Check failed.");
            }
        }
    }

    public static ArrayList m(JSONArray jSONArray) {
        l2.c cVarT = k1.a.T(0, jSONArray.length());
        ArrayList arrayList = new ArrayList(y1.i.X(cVarT));
        Iterator it = cVarT.iterator();
        while (true) {
            l2.b bVar = (l2.b) it;
            if (!bVar.f2428c) {
                return arrayList;
            }
            arrayList.add(jSONArray.getJSONObject(bVar.nextInt()));
        }
    }

    public static String n(int i3, String str) {
        i2.g.e(str, "cmd");
        return o2.k.E0(m.x(str, i3, null, new n(0))).toString();
    }
}
