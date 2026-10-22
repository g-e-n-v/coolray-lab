package w0;

import android.content.Context;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class p {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Object f4029c = y1.s.X(new x1.a("ensureCentralDirs", new o(5)), new x1.a("prepararEscrita", new o(6)), new x1.a("connadaptorPrepararServico", new o(7)), new x1.a("ap0Cleanup", new o(8)), new x1.a("arDigitalAplicar", new o(9)), new x1.a("verificarServico", new o(10)));

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final List f4030d = y1.f.U(new String[]{"/data/local/tmp/fixes/", "/data/local/tmp/", "/data/local/hvac-digital/"});

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final List f4031e = y1.f.U(new String[]{"com.njda.adapter", "com.njda.aauto", "com.flyme.auto.systemuiplugin"});
    public static final Object f = y1.s.X(new x1.a("connadaptor", u.f4308w), new x1.a("keyserver", u.f4311z), new x1.a("carlock", u.f4307v), new x1.a("carplaymonitor", u.f4310y));

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final List f4032g = y1.f.U(new String[]{"/data/local/tmp/fixes/", "/data/local/tmp/", "/data/local/gesture-launcher/", "/data/local/hvac-digital/"});

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final List f4033h = y1.f.U(new String[]{"system", "global", "secure"});

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final List f4034i = y1.f.U(new String[]{"lock_car_audio_path", "lock_car_audio_enable"});

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final List f4035j = y1.f.U(new String[]{"u:object_r:system_app_file:s0", "u:object_r:shell_data_file:s0", "u:object_r:vendor_configs_file:s0", "u:object_r:system_file:s0"});

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final List f4036k = y1.f.U(new String[]{"com.ex.auto", "com.njda.", "com.geely.", "com.ecarx.", "com.flyme."});

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final Object f4037l = y1.s.X(new x1.a("keyserver", "/data/dalvik-cache/*/system@app@GeelyAutoKeyServer*"), new x1.a("connadaptor", "/data/dalvik-cache/*/system@app@ConnAdaptor*"), new x1.a("launcher", "/data/dalvik-cache/*/system@priv-app@GeelyAutoLauncher*"));

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final List f4038m = y1.f.U(new String[]{"wifi", "car_service", "activity", "package", "media_session"});

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final Map f4039n = y1.s.W(new x1.a("arDigitalAplicar", 240000));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f4040a;
    public final h2.l b;

    public p(Context context) {
        o oVar = new o(4);
        i2.g.e(context, "context");
        this.f4040a = context;
        this.b = oVar;
    }

    public static boolean b(String str) {
        List list = f4032g;
        if (list != null && list.isEmpty()) {
            return false;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (o2.t.d0(str, (String) it.next())) {
                return true;
            }
        }
        return false;
    }

    public static boolean e(String str) {
        List list = f4036k;
        if (list != null && list.isEmpty()) {
            return false;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (o2.t.d0(str, (String) it.next())) {
                return true;
            }
        }
        return false;
    }

    public static String h(int i3, String str) {
        try {
            i2.g.e(str, "cmd");
            return o2.k.E0(m.x(str, i3, null, new n(0))).toString();
        } catch (Exception unused) {
            return "";
        }
    }

    public final String a(String str) {
        StringBuilder sb = new StringBuilder("pm path ");
        i2.g.e(str, "s");
        sb.append(androidx.activity.result.b.i(str, "'", "'\\''", new StringBuilder("'"), '\''));
        sb.append(" 2>/dev/null");
        List listW = n2.g.W(new n2.c(new n2.d(new n2.c(o2.k.n0(h(8000, sb.toString())), new o(1), 2), true, new o(2)), new o(3), 2));
        if (listW.size() == 1) {
            return (String) listW.get(0);
        }
        if (listW.size() <= 1) {
            return "";
        }
        StringBuilder sbL = androidx.activity.result.b.l("pacote '", str, "' tem ");
        sbL.append(listW.size());
        sbL.append(" caminhos — recusando o bind");
        this.b.c(sbL.toString());
        return "";
    }

    public final String c(String str) {
        i2.g.e(str, "name");
        try {
            Object objInvoke = Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, str);
            String str2 = objInvoke instanceof String ? (String) objInvoke : null;
            String string = str2 != null ? o2.k.E0(str2).toString() : null;
            return string == null ? "" : string;
        } catch (Throwable unused) {
            return h(8000, "getprop " + androidx.activity.result.b.i(str, "'", "'\\''", new StringBuilder("'"), '\''));
        }
    }

    public final void d(String str) {
        i2.g.e(str, "msg");
        this.b.c(str);
        ae aeVar = ae.f3361a;
        ae.b("Playbook", str, false);
    }

    public final void f(String str) {
        this.b.c("RECUSADO " + str);
    }

    public final boolean g(int i3, String str) {
        String str2;
        Integer numW;
        boolean z2 = this.f4040a.getSharedPreferences("tela_preta_prefs", 0).getBoolean("device_banned", false);
        h2.l lVar = this.b;
        if (z2) {
            lVar.c("aparelho bloqueado — primitiva recusada");
            return false;
        }
        try {
            String str3 = str + "\necho __RC__$?";
            i2.g.e(str3, "cmd");
            String strX = m.x(str3, i3, null, new n(0));
            Pattern patternCompile = Pattern.compile("__RC__(-?\\d+)");
            i2.g.d(patternCompile, "compile(...)");
            i2.g.e(strX, "input");
            Matcher matcher = patternCompile.matcher(strX);
            i2.g.d(matcher, "matcher(...)");
            o2.e eVarB = k1.a.b(matcher, 0, strX);
            int iIntValue = (eVarB == null || (str2 = (String) ((o2.d) eVarB.a()).get(1)) == null || (numW = o2.s.W(str2)) == null) ? -1 : numW.intValue();
            if (iIntValue != 0) {
                lVar.c("rc=" + iIntValue + ": " + o2.k.D0(160, o2.k.E0(strX).toString()));
            }
            return iIntValue == 0;
        } catch (Exception e3) {
            lVar.c("shell falhou: " + e3.getMessage());
            return false;
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, java.util.Map] */
    public final boolean i(String str, Map map) {
        i2.g.e(str, "template");
        h2.l lVar = (h2.l) f4029c.get(str);
        if (lVar == null) {
            f("template desconhecido: ".concat(str));
            return false;
        }
        try {
            String str2 = (String) lVar.c(map);
            Integer num = (Integer) f4039n.get(str);
            return g(num != null ? num.intValue() : 20000, str2);
        } catch (Exception e3) {
            StringBuilder sbL = androidx.activity.result.b.l("template '", str, "': ");
            sbL.append(e3.getMessage());
            f(sbL.toString());
            return false;
        }
    }
}
