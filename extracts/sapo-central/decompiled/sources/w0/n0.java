package w0;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.security.MessageDigest;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public abstract class n0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile boolean f3926a;
    public static final Handler b = new Handler(Looper.getMainLooper());

    public static void a(Context context, SharedPreferences sharedPreferences) {
        if (f3926a) {
            return;
        }
        if (sharedPreferences.getBoolean("device_banned", false) && sharedPreferences.getBoolean("device_ban_avisado", false)) {
            return;
        }
        f3926a = true;
        new Thread(new m0(sharedPreferences, context)).start();
    }

    public static String b(String str) {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        String upperCase = o2.k.E0(str).toString().toUpperCase(Locale.ROOT);
        i2.g.d(upperCase, "toUpperCase(...)");
        byte[] bytes = "aaexinstall.ban.2026".concat(upperCase).getBytes(o2.a.f2622a);
        i2.g.d(bytes, "getBytes(...)");
        byte[] bArrDigest = messageDigest.digest(bytes);
        i2.g.d(bArrDigest, "digest(...)");
        return y1.f.b0(bArrDigest, new o(12));
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00ac A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r2v5 */
    public static String c() {
        HttpURLConnection httpURLConnection;
        StringBuilder sb = o2.k.f0("https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/banlist.json", '?') ? new StringBuilder("https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/banlist.json&t=") : new StringBuilder("https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/banlist.json?t=");
        sb.append(System.currentTimeMillis());
        String string = sb.toString();
        ?? r3 = 0;
        try {
            try {
                URLConnection uRLConnectionOpenConnection = new URL(string).openConnection();
                i2.g.c(uRLConnectionOpenConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
                httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
                httpURLConnection.setConnectTimeout(15000);
                httpURLConnection.setReadTimeout(15000);
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setUseCaches(false);
                httpURLConnection.setRequestProperty("Cache-Control", "no-cache, no-store");
                try {
                    if (httpURLConnection.getResponseCode() != 200) {
                        try {
                            httpURLConnection.disconnect();
                        } catch (Exception unused) {
                        }
                        return null;
                    }
                    InputStream inputStream = httpURLConnection.getInputStream();
                    i2.g.d(inputStream, "getInputStream(...)");
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, o2.a.f2622a), 8192);
                    try {
                        String strZ = a1.b.Z(bufferedReader);
                        bufferedReader.close();
                        try {
                            httpURLConnection.disconnect();
                        } catch (Exception unused2) {
                        }
                        return strZ;
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            a1.b.p(bufferedReader, th);
                            throw th2;
                        }
                    }
                } catch (Exception e3) {
                    e = e3;
                    Log.d("BanChecker", "httpGet: " + e.getMessage());
                    if (httpURLConnection == null) {
                        return null;
                    }
                    try {
                        httpURLConnection.disconnect();
                        return null;
                    } catch (Exception unused3) {
                        return null;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                r3 = string;
                if (r3 != 0) {
                    try {
                        r3.disconnect();
                    } catch (Exception unused4) {
                    }
                }
                throw th;
            }
        } catch (Exception e4) {
            e = e4;
            httpURLConnection = null;
        } catch (Throwable th4) {
            th = th4;
            if (r3 != 0) {
                r3.disconnect();
            }
            throw th;
        }
    }
}
