package w0;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Base64;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;
import java.util.UUID;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class u6 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f4334a;
    public static final byte[] b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final byte[] f4335c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final byte[] f4336d;

    static {
        byte[] bArrDecode = Base64.decode("cofy8uSEyVprvhJEyoph8yGzA1aVWbeZ6JPeb2vr82g=", 0);
        i2.g.d(bArrDecode, "decode(...)");
        f4334a = bArrDecode;
        byte[] bArrDecode2 = Base64.decode("paVmNcV6WpW+wBhwDnXrMiXVhL7RxhHvjPq93iN5tws=", 0);
        i2.g.d(bArrDecode2, "decode(...)");
        b = bArrDecode2;
        f4335c = new byte[]{-49, -51, 75, 86, -32, 21, -33, -43, -110, -124, -50, -31, 113, -47, 105, 111, 103, 98, 25, 96, -78, 79, 79, -7, 57, -89, -53, 19, -90, -64, -84, -19, -120, -86, 11, 122, -117, 106, 41, -124, 20, -36, 72, 114, 40, -44, -57, -32, -100, 122, -127, -10, -23, -51, 58, -2, -24, -112, 86, -82, 36, -2, 39, 124};
        f4336d = new byte[]{-83, -7, 42, 101, -41, 32, -67, -19, -90, -68, -84, -39, 71, -28, 81, 11, 84, 4, 47, 2, -123, 45, 126, -56, 0, -59, -88, 32, -109, -7, -103, -114, -80, -99, 50, 79, -18, 83, 74, -79, 114, -71, 124, 75, 24, -28, -16, -46, -91, 72, -79, -49, -40, -12, 12, -104, -116, -11, 53, -54, 17, -58, 68, 78};
    }

    public static String a(Context context) {
        try {
            String str = context.getPackageManager().getPackageInfo("com.njda.aauto", 0).versionName;
            String string = str != null ? o2.k.E0(str).toString() : null;
            return string == null ? "" : string;
        } catch (Throwable unused) {
            return "";
        }
    }

    public static byte[] b() {
        byte[] bArr = f4335c;
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        for (int i3 = 0; i3 < length; i3++) {
            bArr2[i3] = (byte) (bArr[i3] ^ f4336d[i3]);
        }
        return bArr2;
    }

    public static String c(Context context, SharedPreferences sharedPreferences, long j3) throws JSONException, IOException {
        String strOptString = "?";
        i2.g.e(context, "context");
        String strG = g();
        String strF = f("sys.ecarx.vin");
        if (o2.k.m0(strG) || o2.k.m0(strF)) {
            throw new s6();
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("xdsn", strG);
        jSONObject.put("vin", strF);
        jSONObject.put("serial", f("ro.serialno"));
        jSONObject.put("pkg", context.getPackageName());
        jSONObject.put("versionCode", j3);
        jSONObject.put("kind", "config");
        jSONObject.put("nonce", UUID.randomUUID().toString());
        jSONObject.put("lang", Locale.getDefault().toLanguageTag());
        jSONObject.put("huBuild", f("ro.build.version.incremental"));
        jSONObject.put("huDisplay", f("ro.build.display.id"));
        jSONObject.put("caFactory", a(context));
        String string = jSONObject.toString();
        i2.g.d(string, "toString(...)");
        Charset charset = o2.a.f2622a;
        byte[] bytes = string.getBytes(charset);
        i2.g.d(bytes, "getBytes(...)");
        URLConnection uRLConnectionOpenConnection = new URL("https://exsapo-dist.appsdecarro.workers.dev/v1/config").openConnection();
        i2.g.c(uRLConnectionOpenConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
        HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setConnectTimeout(10000);
        httpURLConnection.setReadTimeout(30000);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setRequestProperty("content-type", "application/json");
        httpURLConnection.setRequestProperty("x-sig", e(b(), bytes));
        httpURLConnection.setRequestProperty("User-Agent", "CentralEXAuto/" + j3 + " (IHU629G)");
        try {
            OutputStream outputStream = httpURLConnection.getOutputStream();
            try {
                outputStream.write(bytes);
                outputStream.close();
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode == 200) {
                    InputStream inputStream = httpURLConnection.getInputStream();
                    i2.g.d(inputStream, "getInputStream(...)");
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, charset), 8192);
                    try {
                        String strZ = a1.b.Z(bufferedReader);
                        bufferedReader.close();
                        try {
                            httpURLConnection.disconnect();
                        } catch (Exception unused) {
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
                }
                try {
                    InputStream errorStream = httpURLConnection.getErrorStream();
                    i2.g.d(errorStream, "getErrorStream(...)");
                    BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(errorStream, charset), 8192);
                    try {
                        String strZ2 = a1.b.Z(bufferedReader2);
                        bufferedReader2.close();
                        strOptString = new JSONObject(strZ2).optString("error", "?");
                    } catch (Throwable th3) {
                        try {
                            throw th3;
                        } catch (Throwable th4) {
                            a1.b.p(bufferedReader2, th3);
                            throw th4;
                        }
                    }
                } catch (Exception unused2) {
                }
                i2.g.b(strOptString);
                throw new r6(responseCode, strOptString);
            } catch (Throwable th5) {
                try {
                    throw th5;
                } catch (Throwable th6) {
                    a1.b.p(outputStream, th5);
                    throw th6;
                }
            }
        } catch (Throwable th7) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception unused3) {
            }
            throw th7;
        }
    }

    public static t6 d(Context context, SharedPreferences sharedPreferences, String str, long j3) {
        String str2;
        JSONArray jSONArray;
        String str3;
        int i3;
        String strOptString = "?";
        i2.g.e(context, "context");
        i2.g.e(str, "pkg");
        String strG = g();
        String strF = f("sys.ecarx.vin");
        if (o2.k.m0(strG) || o2.k.m0(strF)) {
            throw new s6();
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("xdsn", strG);
        jSONObject.put("vin", strF);
        jSONObject.put("serial", f("ro.serialno"));
        jSONObject.put("pkg", str);
        jSONObject.put("versionCode", j3);
        jSONObject.put("nonce", UUID.randomUUID().toString());
        jSONObject.put("lang", Locale.getDefault().toLanguageTag());
        jSONObject.put("huBuild", f("ro.build.version.incremental"));
        jSONObject.put("huDisplay", f("ro.build.display.id"));
        jSONObject.put("caFactory", a(context));
        String string = jSONObject.toString();
        i2.g.d(string, "toString(...)");
        Charset charset = o2.a.f2622a;
        byte[] bytes = string.getBytes(charset);
        i2.g.d(bytes, "getBytes(...)");
        URLConnection uRLConnectionOpenConnection = new URL("https://exsapo-dist.appsdecarro.workers.dev/v1/manifest").openConnection();
        i2.g.c(uRLConnectionOpenConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
        HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setConnectTimeout(10000);
        httpURLConnection.setReadTimeout(30000);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setRequestProperty("content-type", "application/json");
        httpURLConnection.setRequestProperty("x-sig", e(b(), bytes));
        httpURLConnection.setRequestProperty("User-Agent", "CentralEXAuto/" + j3 + " (IHU629G)");
        try {
            OutputStream outputStream = httpURLConnection.getOutputStream();
            try {
                outputStream.write(bytes);
                outputStream.close();
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode != 200) {
                    try {
                        InputStream errorStream = httpURLConnection.getErrorStream();
                        i2.g.d(errorStream, "getErrorStream(...)");
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(errorStream, charset), 8192);
                        try {
                            String strZ = a1.b.Z(bufferedReader);
                            bufferedReader.close();
                            strOptString = new JSONObject(strZ).optString("error", "?");
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                a1.b.p(bufferedReader, th);
                                throw th2;
                            }
                        }
                    } catch (Exception unused) {
                    }
                    i2.g.b(strOptString);
                    throw new r6(responseCode, strOptString);
                }
                InputStream inputStream = httpURLConnection.getInputStream();
                i2.g.d(inputStream, "getInputStream(...)");
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(inputStream, charset), 8192);
                try {
                    String strZ2 = a1.b.Z(bufferedReader2);
                    bufferedReader2.close();
                    JSONObject jSONObject2 = new JSONObject(strZ2);
                    String string2 = jSONObject2.getString("payload");
                    int i4 = 0;
                    byte[] bArrDecode = Base64.decode(jSONObject2.getString("sig"), 0);
                    BigInteger bigInteger = y5.f4566a;
                    byte[] bArr = b;
                    i2.g.b(string2);
                    byte[] bytes2 = string2.getBytes(charset);
                    i2.g.d(bytes2, "getBytes(...)");
                    i2.g.b(bArrDecode);
                    if (!y5.g(bArr, bytes2, bArrDecode)) {
                        throw new p6("assinatura do manifesto invalida — descartado");
                    }
                    JSONObject jSONObject3 = new JSONObject(string2);
                    String strOptString2 = jSONObject3.optString("channel", "stable");
                    boolean zOptBoolean = jSONObject3.optBoolean("channelPinned", false);
                    sharedPreferences.edit().putString("canal_efetivo", strOptString2).putBoolean("canal_fixado_servidor", zOptBoolean).apply();
                    long j4 = jSONObject3.getLong("versionCode");
                    String strOptString3 = jSONObject3.optString("versionName", "");
                    i2.g.d(strOptString3, "optString(...)");
                    String string3 = jSONObject3.getString("url");
                    i2.g.d(string3, "getString(...)");
                    String strOptString4 = jSONObject3.optString("notes", "");
                    i2.g.d(strOptString4, "optString(...)");
                    long jOptLong = jSONObject3.optLong("publishedAt", 0L);
                    i2.g.b(strOptString2);
                    int iOptInt = jSONObject3.optInt("configVersion", 0);
                    long jOptLong2 = jSONObject3.optLong("blobValidoAte", 0L);
                    z1.c cVar = new z1.c(10);
                    JSONArray jSONArrayOptJSONArray = jSONObject3.optJSONArray("avisos");
                    if (jSONArrayOptJSONArray != null) {
                        int length = jSONArrayOptJSONArray.length();
                        while (i4 < length) {
                            JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i4);
                            if (jSONObjectOptJSONObject == null) {
                                str2 = strOptString4;
                                jSONArray = jSONArrayOptJSONArray;
                                str3 = strOptString2;
                                i3 = i4;
                            } else {
                                str2 = strOptString4;
                                jSONArray = jSONArrayOptJSONArray;
                                str3 = strOptString2;
                                i3 = i4;
                                long jOptLong3 = jSONObjectOptJSONObject.optLong("id", 0L);
                                String strOptString5 = jSONObjectOptJSONObject.optString("corpo", "");
                                if (jOptLong3 > 0) {
                                    i2.g.b(strOptString5);
                                    if (!o2.k.m0(strOptString5)) {
                                        String strOptString6 = jSONObjectOptJSONObject.optString("titulo", "");
                                        i2.g.d(strOptString6, "optString(...)");
                                        cVar.add(new q6(jOptLong3, strOptString6, strOptString5));
                                    }
                                }
                            }
                            i4 = i3 + 1;
                            jSONArrayOptJSONArray = jSONArray;
                            strOptString4 = str2;
                            strOptString2 = str3;
                        }
                    }
                    String str4 = strOptString4;
                    String str5 = strOptString2;
                    cVar.f();
                    cVar.f4701c = true;
                    if (cVar.b <= 0) {
                        cVar = z1.c.f4699d;
                    }
                    t6 t6Var = new t6(j4, strOptString3, string3, str4, jOptLong, str5, zOptBoolean, iOptInt, jOptLong2, cVar);
                    try {
                        httpURLConnection.disconnect();
                    } catch (Exception unused2) {
                    }
                    return t6Var;
                } catch (Throwable th3) {
                    try {
                        throw th3;
                    } catch (Throwable th4) {
                        a1.b.p(bufferedReader2, th3);
                        throw th4;
                    }
                }
            } catch (Throwable th5) {
                try {
                    throw th5;
                } catch (Throwable th6) {
                    a1.b.p(outputStream, th5);
                    throw th6;
                }
            }
        } catch (Throwable th7) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception unused3) {
            }
            throw th7;
        }
    }

    public static String e(byte[] bArr, byte[] bArr2) throws NoSuchAlgorithmException, InvalidKeyException {
        Mac mac = Mac.getInstance("HmacSHA256");
        mac.init(new SecretKeySpec(bArr, "HmacSHA256"));
        byte[] bArrDoFinal = mac.doFinal(bArr2);
        i2.g.d(bArrDoFinal, "doFinal(...)");
        return y1.f.b0(bArrDoFinal, new n2(17));
    }

    public static String f(String str) {
        try {
            Object objInvoke = Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, str);
            String str2 = objInvoke instanceof String ? (String) objInvoke : null;
            String string = str2 != null ? o2.k.E0(str2).toString() : null;
            return string == null ? "" : string;
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String g() {
        String strF = f("sys.ecarx.xdsn");
        if (!o2.k.m0(strF)) {
            return strF;
        }
        k5 k5Var = k5.f3786a;
        return k5.a();
    }
}
