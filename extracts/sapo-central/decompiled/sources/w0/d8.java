package w0;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class d8 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d8 f3494a = new d8();
    public static volatile b4 b = b4.f3378a;

    public static String a(int i3, String str) {
        try {
            i2.g.e(str, "cmd");
            return m.x(str, i3, null, new n(0));
        } catch (Exception e3) {
            return "ADB_FAIL: " + e3.getMessage();
        }
    }

    public static boolean b(Context context, h2.l lVar, String str, int i3) {
        b4 b4Var;
        d8 d8Var = f3494a;
        Boolean bool = null;
        if ((i3 & 2) != 0) {
            lVar = null;
        }
        if ((i3 & 4) != 0) {
            str = "tela";
        }
        synchronized (d8Var) {
            i2.g.e(context, "context");
            i2.g.e(str, "origem");
            if (!d(context, lVar, !o2.t.d0(str, "boot"), 4)) {
                ae aeVar = ae.f3361a;
                ae.b("HvacDigital", "Ar Digital [" + str + "]: sem a cópia local — NÃO tentei aplicar", true);
                b = b4.f3378a;
                return false;
            }
            String lowerCase = o2.k.E0(a(20000, "md5sum '/data/local/hvac-digital/sysui.apk' 2>/dev/null | awk '{print $1}'")).toString().toLowerCase(Locale.ROOT);
            i2.g.d(lowerCase, "toLowerCase(...)");
            if (lowerCase.length() != 32) {
                lowerCase = null;
                break;
            }
            for (int i4 = 0; i4 < lowerCase.length(); i4++) {
                char cCharAt = lowerCase.charAt(i4);
                if (!Character.isDigit(cCharAt) && ('a' > cCharAt || cCharAt >= 'g')) {
                    lowerCase = null;
                    break;
                }
            }
            if (lowerCase == null) {
                Log.w("HvacDigital", "apply: sem md5 da fonte — não instala às cegas");
                ae aeVar2 = ae.f3361a;
                ae.b("HvacDigital", "Ar Digital [" + str + "]: sem md5 da cópia — NÃO tentei aplicar", true);
                b = b4.f3378a;
                return false;
            }
            Map mapX = y1.s.X(new x1.a("src", "/data/local/hvac-digital/sysui.apk"), new x1.a("md5", lowerCase));
            String str2 = (context.getSharedPreferences("tela_preta_prefs", 0).getBoolean("hvac_digital_so_por_bind", false) && o2.t.d0(str, "boot")) ? "bind" : "auto";
            qe qeVar = qe.f4124a;
            Map mapW = y1.s.W(new x1.a("via", str2));
            LinkedHashMap linkedHashMap = new LinkedHashMap(mapX);
            linkedHashMap.putAll(mapW);
            ArrayList arrayList = new ArrayList();
            pe peVar = qeVar.d(context, "visual.aplicarArDigital", linkedHashMap, arrayList) ? ne.f(arrayList) ? pe.b : pe.f4070c : pe.f4069a;
            boolean z2 = peVar == pe.b;
            String str3 = "";
            try {
                Object objInvoke = Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, "persist.sys.hvacdigital.via");
                String str4 = objInvoke instanceof String ? (String) objInvoke : null;
                String string = str4 != null ? o2.k.E0(str4).toString() : null;
                if (string != null) {
                    str3 = string;
                }
            } catch (Throwable unused) {
            }
            if (z2) {
                String string2 = o2.k.E0(str3).toString();
                if (i2.g.a(string2, "bind")) {
                    bool = Boolean.TRUE;
                } else if (i2.g.a(string2, "install")) {
                    bool = Boolean.FALSE;
                }
                if (bool != null) {
                    context.getSharedPreferences("tela_preta_prefs", 0).edit().putBoolean("hvac_digital_so_por_bind", bool.booleanValue()).apply();
                }
            }
            int iOrdinal = peVar.ordinal();
            if (iOrdinal == 0) {
                b4Var = b4.f3378a;
            } else if (iOrdinal == 1) {
                b4Var = b4.b;
            } else {
                if (iOrdinal != 2) {
                    throw new androidx.fragment.app.q();
                }
                b4Var = b4.f3379c;
            }
            b = b4Var;
            ae aeVar3 = ae.f3361a;
            StringBuilder sb = new StringBuilder();
            sb.append("Ar Digital [");
            sb.append(str);
            sb.append("]: ");
            sb.append(z2 ? "APK entregue por " + str3 + "; recarga pendente" : "NAO VINGOU (via=" + str2 + ')');
            ae.b("HvacDigital", sb.toString(), true);
            Log.i("HvacDigital", "apply: entrega=" + peVar + " (via=" + str3 + ')');
            return z2 && d8Var.g(str);
        }
    }

    public static void c(String str, File file, h2.l lVar) throws IOException {
        URLConnection uRLConnectionOpenConnection = new URL(str).openConnection();
        i2.g.c(uRLConnectionOpenConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
        HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
        httpURLConnection.setConnectTimeout(30000);
        httpURLConnection.setReadTimeout(30000);
        httpURLConnection.setInstanceFollowRedirects(true);
        try {
            if (httpURLConnection.getResponseCode() != 200) {
                throw new IOException("HTTP " + httpURLConnection.getResponseCode());
            }
            long contentLength = httpURLConnection.getContentLength();
            InputStream inputStream = httpURLConnection.getInputStream();
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                try {
                    byte[] bArr = new byte[65536];
                    long j3 = 0;
                    int i3 = -1;
                    while (true) {
                        int i4 = inputStream.read(bArr);
                        if (i4 < 0) {
                            break;
                        }
                        fileOutputStream.write(bArr, 0, i4);
                        j3 += (long) i4;
                        if (lVar != null) {
                            if (contentLength <= 0) {
                                lVar.c(-1);
                            } else {
                                int iK = k1.a.k((int) ((((long) 100) * j3) / contentLength), 0, 100);
                                if (iK != i3) {
                                    lVar.c(Integer.valueOf(iK));
                                    i3 = iK;
                                }
                            }
                        }
                    }
                    fileOutputStream.close();
                    inputStream.close();
                    httpURLConnection.disconnect();
                    if (file.length() == 0) {
                        throw new IOException("download vazio");
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        a1.b.p(fileOutputStream, th);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    a1.b.p(inputStream, th3);
                    throw th4;
                }
            }
        } catch (Throwable th5) {
            httpURLConnection.disconnect();
            throw th5;
        }
    }

    /* JADX WARN: Failed to calculate best type for var: r3v14 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r3v14 ??, new type: boolean
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r18v4 ??, new type: boolean
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryPossibleTypes(FixTypesVisitor.java:186)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:245)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
        Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 5 more
        */
    public static boolean d(android.content.Context r17, h2.l r18, boolean r19, int r20) {
        /*
            Method dump skipped, instruction units count: 501
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: w0.d8.d(android.content.Context, h2.l, boolean, int):boolean");
    }

    public static String f() {
        if (t1.c("https://raw.githubusercontent.com/swimapps/Outros/main/hvacdigital.json", u.f4293h) == d5.b) {
            Log.i("HvacDigital", "fetchExpectedSha: o manifesto saiu do GitHub — sem referencia de sha");
            return null;
        }
        try {
            URL url = new URL("https://raw.githubusercontent.com/swimapps/Outros/main/hvacdigital.json");
            String str = new String(a1.b.X(url), o2.a.f2622a);
            Pattern patternCompile = Pattern.compile("\"sha256\"\\s*:\\s*\"([0-9a-fA-F]+)\"");
            i2.g.d(patternCompile, "compile(...)");
            Matcher matcher = patternCompile.matcher(str);
            i2.g.d(matcher, "matcher(...)");
            o2.e eVarB = k1.a.b(matcher, 0, str);
            if (eVarB != null) {
                return (String) ((o2.d) eVarB.a()).get(1);
            }
            return null;
        } catch (Throwable th) {
            androidx.activity.result.b.s(th, new StringBuilder("fetchExpectedSha: "), "HvacDigital");
            return null;
        }
    }

    public static boolean i(boolean z2, boolean z3, boolean z4) {
        StringBuilder sb = new StringBuilder("setprop persist.sys.hvacdigital.temp ");
        sb.append(z2 ? "1" : "0");
        sb.append(" && setprop persist.sys.hvacdigital.batt ");
        sb.append(z3 ? "1" : "0");
        sb.append(" && setprop persist.sys.hvacdigital.exttemp ");
        sb.append(z4 ? "1" : "0");
        sb.append(" && echo FLAGS_OK");
        n2.c cVarN0 = o2.k.n0(a(8000, sb.toString()));
        Iterator it = cVarN0.b.iterator();
        while (it.hasNext()) {
            if (i2.g.a(o2.k.E0((String) ((h2.l) cVarN0.f2529c).c(it.next())).toString(), "FLAGS_OK")) {
                return true;
            }
        }
        return false;
    }

    public static void k(File file) throws NoSuchAlgorithmException, IOException {
        String strF = f();
        if (strF == null) {
            return;
        }
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            byte[] bArr = new byte[8192];
            while (true) {
                int i3 = fileInputStream.read(bArr);
                if (i3 < 0) {
                    break;
                } else {
                    messageDigest.update(bArr, 0, i3);
                }
            }
            fileInputStream.close();
            byte[] bArrDigest = messageDigest.digest();
            i2.g.d(bArrDigest, "digest(...)");
            if (!y1.f.b0(bArrDigest, new n2(21)).equalsIgnoreCase(strF)) {
                throw new IOException("sha256 diverge");
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                a1.b.p(fileInputStream, th);
                throw th2;
            }
        }
    }

    public final fg e() {
        return e8.D(new c8(2, this, d8.class, "adb", "adb(Ljava/lang/String;I)Ljava/lang/String;", 0), new zf(1));
    }

    public final boolean g(String str) throws InterruptedException {
        fg fgVarE;
        fg fgVar = fg.f3601c;
        e5 e5VarI = e8.I(new n(3));
        e5 e5Var = e5.f3526a;
        boolean z2 = false;
        if (e5VarI == e5Var) {
            c8 c8Var = new c8(2, this, d8.class, "adb", "adb(Ljava/lang/String;I)Ljava/lang/String;", 1);
            zf zfVar = new zf(2);
            long jNanoTime = System.nanoTime() + 20000000000L;
            fgVarE = fg.f3602d;
            for (int i3 = 0; i3 < 20 && (fgVarE = e8.D(c8Var, zfVar)) != fgVar && fgVarE != fg.f3600a && System.nanoTime() < jNanoTime; i3++) {
                Thread.sleep(500L);
            }
        } else {
            fgVarE = e();
        }
        if (e5VarI == e5Var && fgVarE == fgVar) {
            z2 = true;
        }
        b = z2 ? b4.f3380d : b4.b;
        ae aeVar = ae.f3361a;
        ae.b("HvacDigital", "Ar Digital [" + str + "]: recarga=" + e5VarI + " plugin=" + fgVarE, true);
        return z2;
    }

    public final synchronized b4 h(Context context, int i3) {
        wd wdVar = wd.f4450a;
        if (wd.a(context)) {
            return b4.f3380d;
        }
        ee eeVar = ee.f3548a;
        SharedPreferences sharedPreferencesC = ee.c(context);
        boolean z2 = sharedPreferencesC.getBoolean("hvac_digital_temp", false);
        boolean z3 = sharedPreferencesC.getBoolean("hvac_digital_batt", false);
        boolean z4 = sharedPreferencesC.getBoolean("hvac_digital_ext_temp", false);
        String str = "boot " + i3 + "/3";
        if (!z2 && !z3) {
            return b4.f3380d;
        }
        fg fgVarE = e();
        b = e8.K(fgVarE, new b8(z2, z3, z4), new y2(context, 4, str), new f2(5, str));
        ae aeVar = ae.f3361a;
        ae.b("HvacDigital", "Ar Digital [" + str + "]: observado=" + fgVarE + " resultado=" + b, true);
        return b;
    }

    public final synchronized boolean j(Context context, boolean z2, boolean z3, boolean z4, e9 e9Var) {
        boolean zB;
        fg fgVarE = e();
        zB = true;
        boolean z5 = z2 || z3;
        f2 f2Var = new f2(4, context);
        fg fgVar = fg.f3600a;
        if (fgVarE != fg.f3602d) {
            if (i(z2, z3, z4 && z3)) {
                if (z5) {
                    zB = fgVarE == fgVar ? b(context, e9Var, null, 4) : f3494a.g("tela");
                } else if (fgVarE != fgVar) {
                    zB = ((Boolean) f2Var.a()).booleanValue();
                }
            }
        }
        zB = false;
        return zB;
    }
}
