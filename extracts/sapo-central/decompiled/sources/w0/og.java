package w0;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.Log;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public abstract class og {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final o2.h f4025a = new o2.h("Stack id=(\\d+)");
    public static final o2.h b = new o2.h("taskId=(\\d+):\\s*(\\S+)");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final o2.h f4026c = new o2.h("mFocusedStack=ActivityStack\\{[^}]*stackId=(\\d+)");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final o2.h f4027d = new o2.h("(\\d+)x(\\d+)");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final o2.h f4028e = new o2.h("^[A-Za-z0-9._]+/[A-Za-z0-9._$]+$");
    public static volatile String f = "";

    public static String a(int i3, String str) {
        String strX = m.x(str, i3, null, new n(13));
        StringBuilder sbL = androidx.activity.result.b.l("adb[", str, "] => ");
        sbL.append(o2.k.C0(200, o2.t.c0(strX, "\n", " ")));
        Log.i("SplitScreen", sbL.toString());
        return strX;
    }

    public static lg b(int i3) {
        String strA = a(8000, "dumpsys activity activities | grep -A3 'Stack #" + i3 + "' | grep -oE 'mBounds=Rect\\([^)]*\\)' | head -1");
        Pattern patternCompile = Pattern.compile("Rect\\((\\d+), (\\d+) - (\\d+), (\\d+)\\)");
        i2.g.d(patternCompile, "compile(...)");
        Matcher matcher = patternCompile.matcher(strA);
        i2.g.d(matcher, "matcher(...)");
        o2.e eVarB = k1.a.b(matcher, 0, strA);
        if (eVarB == null) {
            return null;
        }
        o2.d dVar = (o2.d) eVarB.a();
        return new lg(Integer.parseInt((String) dVar.get(1)), Integer.parseInt((String) dVar.get(2)), Integer.parseInt((String) dVar.get(3)), Integer.parseInt((String) dVar.get(4)));
    }

    public static void c(mg mgVar) {
        i2.g.e(mgVar, "win");
        a(6000, "am force-stop " + mgVar.f3923c);
    }

    public static boolean d() {
        String string = o2.k.E0(a(5000, "settings get global development_settings_enabled")).toString();
        String string2 = o2.k.E0(a(5000, "settings get global enable_freeform_support")).toString();
        String string3 = o2.k.E0(a(5000, "settings get global force_resizable_activities")).toString();
        if (i2.g.a(string, "1") && i2.g.a(string2, "1") && i2.g.a(string3, "1")) {
            return false;
        }
        a(5000, "settings put global development_settings_enabled 1");
        a(5000, "settings put global enable_freeform_support 1");
        a(5000, "settings put global force_resizable_activities 1");
        return true;
    }

    public static boolean e(int i3) {
        String str;
        x1.a aVar = (x1.a) i().get(Integer.valueOf(i3));
        String str2 = null;
        if (aVar != null && (str = (String) aVar.b) != null) {
            String strA0 = o2.k.A0(str, '/');
            if (!o2.k.m0(strA0)) {
                str2 = strA0;
            }
        }
        a(8000, "am stack remove " + i3);
        boolean zContainsKey = i().containsKey(Integer.valueOf(i3));
        boolean z2 = zContainsKey ^ true;
        StringBuilder sbK = androidx.activity.result.b.k("fecharPilha(", i3, ", ");
        if (str2 == null) {
            str2 = "pacote?";
        }
        sbK.append(str2);
        sbK.append(") -> ");
        sbK.append(!zContainsKey ? "fechou" : "AINDA la");
        Log.i("SplitScreen", sbK.toString());
        return z2;
    }

    public static ng f() {
        Object objPrevious;
        o2.e eVarB;
        Object next;
        String strA = a(6000, "wm size");
        if (o2.t.d0(strA, "ADB_FAIL")) {
            f = strA;
            return null;
        }
        List listW = n2.g.W(o2.k.n0(strA));
        ListIterator listIterator = listW.listIterator(listW.size());
        do {
            if (!listIterator.hasPrevious()) {
                objPrevious = null;
                break;
            }
            objPrevious = listIterator.previous();
        } while (!o2.k.e0((String) objPrevious, "Override size", true));
        String str = (String) objPrevious;
        if (str == null) {
            Iterator it = listW.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!f4027d.a((String) next));
            str = (String) next;
        }
        if (str == null || (eVarB = f4027d.b(str, 0)) == null) {
            f = "wm size sem resolução: ".concat(strA);
            return null;
        }
        Integer numW = o2.s.W((String) ((o2.d) eVarB.a()).get(1));
        if (numW == null) {
            return null;
        }
        int iIntValue = numW.intValue();
        Integer numW2 = o2.s.W((String) ((o2.d) eVarB.a()).get(2));
        if (numW2 == null) {
            return null;
        }
        int iIntValue2 = numW2.intValue();
        if (iIntValue <= 0 || iIntValue2 <= 0) {
            return null;
        }
        return new ng(iIntValue, iIntValue2);
    }

    public static boolean g(mg mgVar) {
        i2.g.e(mgVar, "win");
        String strA = a(6000, "am stack list");
        if (o2.t.d0(strA, "ADB_FAIL")) {
            f = strA;
            return false;
        }
        String str = "taskId=" + mgVar.b + ":.*visible=true";
        i2.g.e(str, "pattern");
        Pattern patternCompile = Pattern.compile(str);
        i2.g.d(patternCompile, "compile(...)");
        return patternCompile.matcher(strA).find();
    }

    public static List h(Context context) {
        i2.g.e(context, "context");
        PackageManager packageManager = context.getPackageManager();
        Intent intentAddCategory = new Intent("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER");
        i2.g.d(intentAddCategory, "addCategory(...)");
        List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intentAddCategory, 0);
        i2.g.d(listQueryIntentActivities, "queryIntentActivities(...)");
        return n2.g.W(new n2.c(new n2.c(new n2.c(new n2.d(new n2.c(new f2.f(3, listQueryIntentActivities), new zf(3), 2), true, new q1(5, context)), new zf(4), 0), new h8(packageManager, 1), 2), new b6(15), 1));
    }

    public static Map i() {
        o2.e eVarB;
        String strA = a(8000, "am stack list");
        if (o2.t.d0(strA, "ADB_FAIL")) {
            f = strA;
            return y1.q.f4664a;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        n2.c cVarN0 = o2.k.n0(strA);
        Iterator it = cVarN0.b.iterator();
        Integer numW = null;
        while (it.hasNext()) {
            String str = (String) ((h2.l) cVarN0.f2529c).c(it.next());
            o2.e eVarB2 = f4025a.b(str, 0);
            if (eVarB2 != null) {
                numW = o2.s.W((String) ((o2.d) eVarB2.a()).get(1));
            }
            if (numW != null && !linkedHashMap.containsKey(numW) && (eVarB = b.b(str, 0)) != null) {
                linkedHashMap.put(numW, new x1.a(Integer.valueOf(Integer.parseInt((String) ((o2.d) eVarB.a()).get(1))), ((o2.d) eVarB.a()).get(2)));
            }
        }
        return linkedHashMap;
    }

    public static Integer j() {
        String str;
        String strA = a(8000, "dumpsys activity activities | grep -oE 'Stack #[0-9]+: type=standard mode=pinned'");
        Pattern patternCompile = Pattern.compile("Stack #(\\d+)");
        i2.g.d(patternCompile, "compile(...)");
        Matcher matcher = patternCompile.matcher(strA);
        i2.g.d(matcher, "matcher(...)");
        o2.e eVarB = k1.a.b(matcher, 0, strA);
        if (eVarB == null || (str = (String) ((o2.d) eVarB.a()).get(1)) == null) {
            return null;
        }
        return o2.s.W(str);
    }

    public static mg k(String str, String str2, lg lgVar) {
        Object next;
        i2.g.e(str, "component");
        i2.g.e(str2, "packageName");
        mg mgVar = null;
        if (!f4028e.c(str)) {
            f = "componente inválido: ".concat(str);
            return null;
        }
        a(6000, "am force-stop ".concat(str2));
        Thread.sleep(300L);
        String strA = a(10000, "am start -n " + str + " --windowingMode 5");
        if (o2.t.d0(strA, "ADB_FAIL") || o2.k.e0(strA, "Exception", true) || o2.k.e0(strA, "Error:", true)) {
            f = "falha ao abrir " + str + ": " + strA;
            return null;
        }
        Integer num = null;
        for (int i3 = 0; num == null && i3 < 8; i3++) {
            Thread.sleep(300L);
            Iterator it = i().entrySet().iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!o2.t.d0((String) ((x1.a) ((Map.Entry) next).getValue()).b, str2.concat("/")));
            Map.Entry entry = (Map.Entry) next;
            num = entry != null ? (Integer) entry.getKey() : null;
        }
        if (num == null) {
            f = androidx.activity.result.b.h("não encontrei a stack de ", str2, " depois de abrir");
            return null;
        }
        x1.a aVar = (x1.a) i().get(num);
        if (aVar != null) {
            mgVar = new mg(num.intValue(), ((Number) aVar.f4641a).intValue(), str2, str);
            if (!l(mgVar, lgVar)) {
                f = "abriu mas resize falhou: " + f;
            }
        }
        return mgVar;
    }

    public static boolean l(mg mgVar, lg lgVar) {
        i2.g.e(mgVar, "win");
        String strA = a(8000, "am task resize " + mgVar.b + ' ' + lgVar.f3855a + ' ' + lgVar.b + ' ' + lgVar.f3856c + ' ' + lgVar.f3857d);
        if (o2.t.d0(strA, "ADB_FAIL") || o2.k.e0(strA, "Exception", false)) {
            f = strA;
            Log.w("SplitScreen", "resize: ".concat(strA));
            return false;
        }
        Thread.sleep(200L);
        if (g(mgVar)) {
            return true;
        }
        f = "resize mandado mas a janela (taskId=" + mgVar.b + ") sumiu/ficou invisível depois";
        Log.w("SplitScreen", f);
        return false;
    }

    public static boolean m(int i3, lg lgVar) throws InterruptedException {
        String strA = a(8000, "am stack resize " + i3 + ' ' + lgVar.f3855a + ' ' + lgVar.b + ' ' + lgVar.f3856c + ' ' + lgVar.f3857d);
        if (o2.t.d0(strA, "ADB_FAIL") || o2.k.e0(strA, "Exception", false)) {
            f = strA;
            return false;
        }
        Thread.sleep(300L);
        Integer numJ = j();
        return numJ != null && numJ.intValue() == i3;
    }

    public static String n(Context context, String str) {
        ComponentName component;
        i2.g.e(context, "context");
        i2.g.e(str, "packageName");
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str);
        if (launchIntentForPackage == null || (component = launchIntentForPackage.getComponent()) == null) {
            return null;
        }
        return component.flattenToShortString();
    }
}
