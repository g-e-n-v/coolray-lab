package w0;

import android.content.SharedPreferences;
import com.ex.auto.Politica;
import java.util.List;
import java.util.Locale;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class u {
    public static final Object A;
    public static final int[] B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f4288a;
    public static final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f4289c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f4290d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f4291e;
    public static final int f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final Object f4292g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Set f4293h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f4294i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f4295j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f4296k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f4297l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f4298m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int f4299n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int f4300o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int f4301p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int f4302q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int f4303r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int[] f4304s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final Object f4305t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final Object f4306u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final String f4307v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final String f4308w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final List f4309x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final String f4310y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final String f4311z;

    static {
        k1.a.I("com.wstxda.viper4android");
        f4288a = Politica.h(6);
        b = Politica.h(7);
        f4289c = new int[]{0, 1};
        f4290d = Politica.h(33);
        f4291e = Politica.h(8);
        f = Politica.h(9);
        f4292g = y1.s.X(new x1.a("https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/connadaptor-aa.json", new x1.a("com.njda.adapter.aa", "com.njda.adapter")), new x1.a("https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/connadaptor-aa-1114.json", new x1.a("com.njda.adapter.aa1114", "com.njda.adapter")), new x1.a("https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/connadaptor-1111.json", new x1.a("com.njda.adapter.cp", "com.njda.adapter")), new x1.a("https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/connadaptor.json", new x1.a("com.njda.adapter.cp", "com.njda.adapter")), new x1.a("https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/connadaptor-1114.json", new x1.a("com.njda.adapter.cp1114", "com.njda.adapter")), new x1.a("https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/connadaptorlogger.json", new x1.a("com.geely.connadaptorlogger", "com.geely.connadaptorlogger")), new x1.a("https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/geelyautokeyserver-patch.json", new x1.a("com.flyme.auto.keyserver", "com.flyme.auto.keyserver")), new x1.a("https://raw.githubusercontent.com/swimapps/Outros/main/hvacdigital.json", new x1.a("com.flyme.auto.systemuiplugin", "com.flyme.auto.systemuiplugin")), new x1.a("https://raw.githubusercontent.com/swimapps/Outros/main/launchergesture.json", new x1.a("com.flyme.auto.launcher", "com.flyme.auto.launcher")), new x1.a("https://raw.githubusercontent.com/swimapps/Outros/main/dualdashcam.json", new x1.a("br.com.central.dualdashcam", "br.com.central.dualdashcam")), new x1.a("https://raw.githubusercontent.com/swimapps/Outros/main/eisapo.json", new x1.a("com.geely.eisapo", "com.geely.eisapo")));
        f4293h = k1.a.P("https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/connadaptor-aa.json", "https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/connadaptor-aa-1114.json", "https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/connadaptor-1111.json", "https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/connadaptor.json", "https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/connadaptor-1114.json", "https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/connadaptorlogger.json", "https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/geelyautokeyserver-patch.json", "https://raw.githubusercontent.com/swimapps/Outros/main/hvacdigital.json", "https://raw.githubusercontent.com/swimapps/Outros/main/launchergesture.json", "https://raw.githubusercontent.com/swimapps/Outros/main/dualdashcam.json", "https://raw.githubusercontent.com/swimapps/Outros/main/eisapo.json", "https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/GeelyAutoSystemUIPlugin-digital.apk", "https://raw.githubusercontent.com/swimapps/Outros/main/GeelyAutoLauncher-gesture-signed.apk");
        f4294i = Politica.b(0);
        f4295j = Politica.h(10);
        f4296k = Politica.h(11);
        f4297l = Politica.h(12);
        f4298m = Politica.h(13);
        f4299n = Politica.h(14);
        f4300o = Politica.h(15);
        f4301p = Politica.h(16);
        f4302q = Politica.h(17);
        f4303r = Politica.h(18);
        f4304s = new int[]{16, 64, 256, 1024};
        f4305t = y1.s.X(new x1.a(1, 16), new x1.a(4, 64), new x1.a(16, 256), new x1.a(64, 1024));
        f4306u = y1.s.X(new x1.a(16, 64), new x1.a(64, 16), new x1.a(256, 1024), new x1.a(1024, 256));
        f4307v = Politica.b(2);
        f4308w = Politica.b(3);
        f4309x = y1.f.U(new t[]{new t("1111", "c474b4bb1a2244d5bd1d3119d6fb0bfc", 116650, "2c019dfb1d38ee6e5c3b20a876ae73fb"), new t("1114", "de34e468ad334b7062038c5de46f1c52", 116641, "3c1c4d714d1810373b0b0728b68ec648")});
        f4310y = Politica.b(5);
        f4311z = Politica.b(4);
        A = y1.s.X(new x1.a("silence_tbox_log", k1.a.I("TBox")), new x1.a("silence_avm_log", y1.f.U(new String[]{"ArcSoftAVM_Eng", "ArcSoftAVM_sdk"})));
        Politica.h(19);
        Politica.h(34);
        Politica.h(35);
        Politica.h(36);
        Politica.h(37);
        Politica.h(38);
        B = new int[]{1, 5, 49, 0};
    }

    public static boolean a(SharedPreferences sharedPreferences) {
        String string = sharedPreferences.getString("connadaptor_modo", "ambos");
        if (string == null) {
            string = "ambos";
        }
        return string.equals("aa") || string.equals("ambos");
    }

    public static boolean b(SharedPreferences sharedPreferences) {
        String string = sharedPreferences.getString("connadaptor_modo", "ambos");
        return j(string != null ? string : "ambos");
    }

    public static final String c(String str, String str2) {
        i2.g.e(str, "modo");
        i2.g.e(str2, "versao");
        return "/data/local/tmp/fixes/ca_fix_" + str2 + '_' + str + ".apk";
    }

    /* JADX WARN: Code duplicated, block: B:13:0x001f  */
    /* JADX WARN: Code duplicated, block: B:19:0x0030  */
    /* JADX WARN: Code duplicated, block: B:20:0x0033  */
    public static final String d(SharedPreferences sharedPreferences) {
        String string;
        String string2 = sharedPreferences.getString("connadaptor_modo", "ambos");
        String str = string2 != null ? string2 : "ambos";
        String str2 = null;
        String string3 = sharedPreferences.getString("connadaptor_versao_alvo", null);
        if (string3 == null) {
            string = sharedPreferences.getString("connadaptor_arquivo_versao", null);
            if (string != null && !o2.k.m0(string)) {
                str2 = string;
            }
            if (str2 == null) {
                string3 = "1111";
            } else {
                string3 = str2;
            }
        } else {
            if (o2.k.m0(string3)) {
                string3 = null;
            }
            if (string3 == null) {
                string = sharedPreferences.getString("connadaptor_arquivo_versao", null);
                if (string != null) {
                    str2 = string;
                }
                if (str2 == null) {
                    string3 = "1111";
                } else {
                    string3 = str2;
                }
            }
        }
        return c(str, string3);
    }

    public static final String e(String str) {
        String string;
        if (str != null && (string = o2.k.E0(str).toString()) != null) {
            String lowerCase = string.toLowerCase(Locale.ROOT);
            i2.g.d(lowerCase, "toLowerCase(...)");
            if (lowerCase.length() > 0) {
                return lowerCase;
            }
        }
        return null;
    }

    public static List f(String str, String str2) {
        i2.g.e(str2, "versao");
        if (str.equals("aa")) {
            return str2.equals("1114") ? k1.a.I("https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/connadaptor-aa-1114.json") : k1.a.I("https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/connadaptor-aa.json");
        }
        if (str.equals("carplay")) {
            return k1.a.I("https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/connadaptor-carplay.json");
        }
        return str2.equals("1114") ? k1.a.I("https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/connadaptor-1114.json") : y1.f.U(new String[]{"https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/connadaptor-1111.json", "https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/connadaptor.json"});
    }

    public static String g(String str, String str2) {
        i2.g.e(str, "modo");
        i2.g.e(str2, "versao");
        if (str.equals("aa")) {
            return str2.equals("1114") ? "0c280b07f92a3538bcda1aae2e8b0746" : "d49ab03b18a5c5e21928c59c465394d7";
        }
        if (str.equals("carplay")) {
            return "4b37f46239a938fa164d4a0bdc65a399";
        }
        return str2.equals("1114") ? "4b0e1de041032ee63ef0c223926d7889" : "260459e68360a4ff5c3720d84a2acddd";
    }

    public static final String h(String str, String str2) {
        i2.g.e(str2, "versao");
        String str3 = str2.equals("1114") ? "1114" : "1111";
        if (str.equals("aa")) {
            return androidx.activity.result.b.h("v", str3, "aa");
        }
        return str.equals("carplay") ? androidx.activity.result.b.h("v", str3, "cp-only") : androidx.activity.result.b.h("v", str3, "cp");
    }

    public static final String i(String str, String str2) {
        i2.g.e(str2, "versao");
        return "connadaptor_expected_md5_" + str2 + '_' + str;
    }

    public static boolean j(String str) {
        return str.equals("carplay") || str.equals("ambos");
    }
}
