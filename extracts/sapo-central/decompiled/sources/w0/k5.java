package w0;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.Locale;
import java.util.UUID;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class k5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final k5 f3786a = new k5();
    public static final o2.h b = new o2.h(0, "EXCLUSIVO\\s+D[OE]\\s+(.+)");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile long f3787c;

    public static String a() {
        try {
            String string = o2.k.E0(l()).toString();
            return (o2.k.m0(string) || string.equals("?")) ? "" : string;
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String b(Context context, SharedPreferences sharedPreferences) {
        String str;
        String strA = "";
        String string = sharedPreferences.getString("recovery_name", "");
        if (string == null) {
            string = "";
        }
        String strC = c(string);
        try {
            strA = a();
        } catch (Throwable unused) {
        }
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            str = packageInfo.versionName + " (vc=" + packageInfo.getLongVersionCode() + ')';
        } catch (Throwable unused2) {
            str = "?";
        }
        StringBuilder sb = new StringBuilder("Nome (recovery): ");
        if (o2.k.m0(strC)) {
            strC = "?";
        }
        sb.append(strC);
        sb.append("\nXDSN: ");
        sb.append(o2.k.m0(strA) ? "?" : strA);
        sb.append("\nVersão: ");
        sb.append(str);
        return sb.toString();
    }

    public static String c(String str) {
        return o2.t.a0(o2.k.E0(str).toString(), "RAVI") ? "RAVI (admin)" : str;
    }

    public static void e(Context context, SharedPreferences sharedPreferences, h2.l lVar) {
        new Thread(new a1.g(sharedPreferences, new Handler(Looper.getMainLooper()), lVar, 7)).start();
    }

    public static boolean f(SharedPreferences sharedPreferences) {
        try {
            return new JSONArray(sharedPreferences.getString("error_report_queue", "[]")).length() > 0;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static String g(SharedPreferences sharedPreferences) {
        try {
            String strI = i();
            if (o2.k.m0(strI) || strI.equals("DESCONHECIDO")) {
                String string = sharedPreferences.getString("recovery_name", "");
                return string == null ? "" : string;
            }
            sharedPreferences.edit().putString("recovery_name", strI).apply();
            return strI;
        } catch (Throwable unused) {
            String string2 = sharedPreferences.getString("recovery_name", "");
            return string2 == null ? "" : string2;
        }
    }

    public static void h(Context context) {
        long longVersionCode;
        i2.g.e(context, "context");
        try {
            longVersionCode = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).getLongVersionCode();
        } catch (Throwable unused) {
            longVersionCode = 0;
        }
        f3787c = longVersionCode;
    }

    public static String i() {
        o2.e eVarB;
        String str;
        try {
            for (String str2 : o2.k.o0(m.x("grep -h 'PARA USO EXCLUSIVO' /cache/recovery/last_log* /cache/recovery/log* /data/misc/recovery/last_log* 2>/dev/null | head -5", 8000, null, new n(0)))) {
                if (o2.k.e0(str2, "PARA USO EXCLUSIVO D", true) && (eVarB = b.b(str2, 0)) != null && (str = (String) y1.g.c0(eVarB.a(), 1)) != null) {
                    Pattern patternCompile = Pattern.compile("[^A-Za-zÀ-ÿ\\s]");
                    i2.g.d(patternCompile, "compile(...)");
                    String strReplaceAll = patternCompile.matcher(str).replaceAll("");
                    i2.g.d(strReplaceAll, "replaceAll(...)");
                    String string = o2.k.E0(strReplaceAll).toString();
                    if (!o2.k.m0(string)) {
                        return string;
                    }
                }
            }
            return "DESCONHECIDO";
        } catch (Throwable unused) {
            return "DESCONHECIDO";
        }
    }

    public static String j() {
        String strI;
        int i3 = 1;
        while (true) {
            strI = i();
            if (!o2.k.m0(strI) && !strI.equals("DESCONHECIDO")) {
                break;
            }
            if (i3 < 5) {
                try {
                    Thread.sleep(3000L);
                } catch (InterruptedException unused) {
                }
            }
            if (i3 == 5) {
                break;
            }
            i3++;
        }
        return strI;
    }

    public static String k() {
        try {
            String string = o2.k.E0(m.x("getprop ro.serialno", 4000, null, new n(0))).toString();
            if (o2.k.m0(string)) {
                string = o2.k.E0(m.x("getprop ro.boot.serialno", 4000, null, new n(0))).toString();
            }
            return o2.k.m0(string) ? "?" : string;
        } catch (Throwable unused) {
            return "?";
        }
    }

    public static String l() {
        try {
            String string = o2.k.E0(m.x("getprop sys.ecarx.xdsn", 4000, null, new n(0))).toString();
            if (!o2.k.m0(string)) {
                return string;
            }
            String string2 = o2.k.E0(m.x("cat /data/property/sys.ecarx.xdsn 2>/dev/null", 4000, null, new n(0))).toString();
            return o2.k.m0(string2) ? "?" : string2;
        } catch (Throwable unused) {
            return "?";
        }
    }

    public static void m(ContextWrapper contextWrapper, SharedPreferences sharedPreferences) {
        h(contextWrapper);
        new Handler(Looper.getMainLooper()).postDelayed(new j5(sharedPreferences, 1), 16000L);
    }

    public static void n(String str, String str2, String str3, SharedPreferences sharedPreferences) throws JSONException, IOException {
        String strValueOf;
        String strC = c(str);
        String strConcat = "[CentralEXAuto] Dispositivo: ".concat(strC);
        StringBuilder sbM = androidx.activity.result.b.m("Nome (recovery): ", strC, "\nXDSN: ", str3, "\nSerial: ");
        sbM.append(str2);
        sbM.append("\nPorta ADB: ");
        int i3 = m.f3860a;
        try {
            strValueOf = o2.k.E0(m.x("getprop service.adb.tcp.port", 4000, null, new n(0))).toString();
        } catch (Throwable unused) {
            strValueOf = "";
        }
        if (i3 != 0 && !o2.k.m0(strValueOf) && !strValueOf.equals(String.valueOf(i3))) {
            strValueOf = i3 + " (getprop=" + strValueOf + ')';
        } else if (i3 != 0) {
            strValueOf = String.valueOf(i3);
        } else if (o2.k.m0(strValueOf)) {
            strValueOf = "?";
        }
        sbM.append(strValueOf);
        r(strConcat, sbM.toString());
        sharedPreferences.edit().putBoolean("dr_sent_v2", true).putString("reported_name", str).apply();
        Log.d("DR", "ok");
    }

    public static void o(String str, String str2, String str3) throws JSONException, IOException {
        String strC = c(str);
        String strConcat = "[CentralEXAuto] Clique ADB — ".concat(strC);
        StringBuilder sbM = androidx.activity.result.b.m("Nome (recovery): ", strC, "\nXDSN: ", str3, "\nSerial: ");
        sbM.append(str2);
        sbM.append("\nadb");
        r(strConcat, sbM.toString());
        Log.d("DR", "adbClickReport ok");
    }

    public static void p(String str, String str2, String str3, String str4) throws JSONException, IOException {
        String strC = c(str);
        String strConcat = "[CentralEXAuto] Porta ADB migrada (65010) — ".concat(strC);
        StringBuilder sbM = androidx.activity.result.b.m("Nome (recovery): ", strC, "\nXDSN: ", str3, "\nSerial: ");
        sbM.append(str2);
        sbM.append("\nPorta ADB: 65010\nResultado: ");
        sbM.append(o2.k.E0(str4).toString());
        sbM.append("\nadb-port");
        r(strConcat, sbM.toString());
        Log.d("DR", "adbPortReport ok");
    }

    public static boolean q(Context context, SharedPreferences sharedPreferences, String str) {
        String str2;
        String str3 = "";
        i2.g.e(str, "xdsn");
        h(context);
        try {
            String string = sharedPreferences.getString("recovery_name", "");
            if (string != null) {
                str3 = string;
            }
            String strK = k();
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
                str2 = packageInfo.versionName + " (" + packageInfo.getLongVersionCode() + ')';
            } catch (Throwable unused) {
                str2 = "?";
            }
            String strC = c(str3);
            r("[CentralEXAuto] BAN aplicado — ".concat(strC), "O aparelho abaixo bateu com a banlist e foi bloqueado.\n\nNome (recovery): " + strC + "\nXDSN: " + str + "\nSerial: " + strK + "\nVersão do app: " + str2 + "\n\nban-aplicado");
            Log.i("DR", "aviso de ban enviado");
            return true;
        } catch (Throwable th) {
            androidx.activity.result.b.s(th, new StringBuilder("aviso de ban NÃO enviado: "), "DR");
            return false;
        }
    }

    public static void r(String str, String str2) throws JSONException, IOException {
        String lowerCase = o2.k.E0(o2.k.B0(o2.k.B0(o2.k.y0(str, "] ", str), ":"), " —")).toString().toLowerCase(Locale.ROOT);
        i2.g.d(lowerCase, "toLowerCase(...)");
        Pattern patternCompile = Pattern.compile("[^a-z0-9]+");
        i2.g.d(patternCompile, "compile(...)");
        String strReplaceAll = patternCompile.matcher(lowerCase).replaceAll("-");
        i2.g.d(strReplaceAll, "replaceAll(...)");
        String strC0 = o2.k.C0(40, strReplaceAll);
        if (o2.k.m0(strC0)) {
            strC0 = "aviso";
        }
        byte[] bArr = u6.f4334a;
        long j3 = f3787c;
        i2.g.e(str2, "detail");
        String strG = u6.g();
        String strF = u6.f("sys.ecarx.vin");
        boolean z2 = false;
        if (!o2.k.m0(strG) && !o2.k.m0(strF)) {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("xdsn", strG);
            jSONObject.put("vin", strF);
            jSONObject.put("nonce", UUID.randomUUID().toString());
            jSONObject.put("kind", strC0);
            jSONObject.put("title", o2.k.C0(200, str));
            jSONObject.put("detail", o2.k.C0(8000, str2));
            jSONObject.put("versionCode", j3);
            String string = jSONObject.toString();
            i2.g.d(string, "toString(...)");
            byte[] bytes = string.getBytes(o2.a.f2622a);
            i2.g.d(bytes, "getBytes(...)");
            URLConnection uRLConnectionOpenConnection = new URL("https://exsapo-dist.appsdecarro.workers.dev/v1/event").openConnection();
            i2.g.c(uRLConnectionOpenConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
            HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setReadTimeout(20000);
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setRequestProperty("content-type", "application/json");
            httpURLConnection.setRequestProperty("x-sig", u6.e(u6.b(), bytes));
            httpURLConnection.setRequestProperty("User-Agent", "CentralEXAuto/" + j3 + " (IHU629G)");
            try {
                OutputStream outputStream = httpURLConnection.getOutputStream();
                try {
                    outputStream.write(bytes);
                    outputStream.close();
                    if (httpURLConnection.getResponseCode() == 200) {
                        z2 = true;
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        a1.b.p(outputStream, th);
                        throw th2;
                    }
                }
            } catch (Exception unused) {
            } catch (Throwable th3) {
                try {
                    httpURLConnection.disconnect();
                } catch (Exception unused2) {
                }
                throw th3;
            }
            try {
                httpURLConnection.disconnect();
            } catch (Exception unused3) {
            }
        }
        if (z2) {
            return;
        }
        throw new IOException("Worker recusou o evento '" + strC0 + '\'');
    }

    public static void s(String str, String str2, String str3, String str4) throws JSONException, IOException {
        String strC = c(str);
        String str5 = "[CentralEXAuto] Nome corrigido: " + strC + " (era " + str4 + ')';
        StringBuilder sbM = androidx.activity.result.b.m("Nome (recovery): ", strC, "\nAntes: ", str4, "\nXDSN: ");
        sbM.append(str3);
        sbM.append("\nSerial: ");
        sbM.append(str2);
        sbM.append("\nname-fix");
        r(str5, sbM.toString());
        Log.d("DR", "nameCorrection ok: " + str4 + " -> " + str);
    }

    public final synchronized int d(SharedPreferences sharedPreferences) {
        int i3;
        int i4 = 0;
        try {
            JSONArray jSONArray = new JSONArray(sharedPreferences.getString("error_report_queue", "[]"));
            if (jSONArray.length() == 0) {
                return 0;
            }
            JSONArray jSONArray2 = new JSONArray();
            int length = jSONArray.length();
            boolean z2 = false;
            i3 = 0;
            while (i4 < length) {
                try {
                    JSONObject jSONObject = jSONArray.getJSONObject(i4);
                    if (z2) {
                        jSONArray2.put(jSONObject);
                    } else {
                        try {
                            String string = jSONObject.getString("s");
                            i2.g.d(string, "getString(...)");
                            String string2 = jSONObject.getString("b");
                            i2.g.d(string2, "getString(...)");
                            r(string, string2);
                            i3++;
                        } catch (Exception e3) {
                            Log.w("DR", "flushErrorQueue: falhou (sem rede?) — " + e3.getMessage());
                            jSONArray2.put(jSONObject);
                            z2 = true;
                        }
                    }
                    i4++;
                } catch (Throwable th) {
                    th = th;
                    i4 = i3;
                }
            }
            sharedPreferences.edit().putString("error_report_queue", jSONArray2.toString()).apply();
            return i3;
        } catch (Throwable th2) {
            th = th2;
        }
        Log.w("DR", "flushErrorQueue: " + th.getMessage());
        i3 = i4;
        return i3;
    }
}
