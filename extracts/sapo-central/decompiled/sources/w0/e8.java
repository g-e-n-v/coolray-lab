package w0;

import android.app.ActivityManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.graphics.Point;
import android.util.Log;
import android.view.WindowManager;
import android.widget.RemoteViews;
import com.ex.auto.HomeWidgetsPollService;
import com.ex.auto.HvacDirectionFanWidgetProvider;
import com.ex.auto.HvacDirectionWidgetProvider;
import com.ex.auto.ModoOficinaTriggerService;
import com.ex.auto.Politica;
import com.ex.auto.R;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Base64;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class e8 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile boolean f3532a;
    public static volatile boolean b;

    public static void A(boolean z2) {
        a(6000, androidx.activity.result.b.h(z2 ? "touch " : "rm -f ", androidx.activity.result.b.i("/data/local/tmp/fixes/pip_overlay_desejado", "'", "'\\''", new StringBuilder("'"), '\''), " 2>/dev/null || true"));
    }

    public static boolean B() {
        n2.c cVarN0 = o2.k.n0(a(8000, "cmd overlay list com.android.systemui 2>/dev/null"));
        Iterator it = cVarN0.b.iterator();
        while (it.hasNext()) {
            String str = (String) ((h2.l) cVarN0.f2529c).c(it.next());
            if (o2.k.e0(str, "com.geely.ex2.mica.pipoverlayprobe", false) && o2.k.e0(str, "[x]", false)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:92:0x0155 A[RETURN] */
    public static String C(ContextWrapper contextWrapper, String str) {
        i2.g.e(contextWrapper, "context");
        i2.g.e(str, "id");
        switch (str) {
            case "close_apps":
                String string = contextWrapper.getString(R.string.k_qa_close_apps);
                i2.g.d(string, "getString(...)");
                return string;
            case "aa_activate":
                String string2 = contextWrapper.getString(R.string.k_qa_activate_aa);
                i2.g.d(string2, "getString(...)");
                return string2;
            case "karaoke":
                return "Karaokê";
            case "app_pip":
                String string3 = contextWrapper.getString(R.string.k_qa_pip_app);
                i2.g.d(string3, "getString(...)");
                return string3;
            case "recirc_guard":
                String string4 = contextWrapper.getString(R.string.k_recirc_guard_title_card);
                i2.g.d(string4, "getString(...)");
                return string4;
            case "screen_off":
                String string5 = contextWrapper.getString(R.string.k_qa_screen_off);
                i2.g.d(string5, "getString(...)");
                return string5;
            case "split_screen":
                String string6 = contextWrapper.getString(R.string.k_qa_split_screen);
                i2.g.d(string6, "getString(...)");
                return string6;
            case "screen_rest":
                String string7 = contextWrapper.getString(R.string.k_qa_screen_rest);
                i2.g.d(string7, "getString(...)");
                return string7;
            case "aeb":
                return "AEB";
            case "avas":
                return "AVAS";
            case "wifi":
                return "Wi-Fi";
            case "fullscreen":
                String string8 = contextWrapper.getString(R.string.k_qa_fullscreen);
                i2.g.d(string8, "getString(...)");
                return string8;
            case "cronometro":
                String string9 = contextWrapper.getString(R.string.k_qa_cronometro);
                i2.g.d(string9, "getString(...)");
                return string9;
            case "aa_reset":
                String string10 = contextWrapper.getString(R.string.k_qa_restart_aa);
                i2.g.d(string10, "getString(...)");
                return string10;
            case "drive_regen":
                return "Drive/Regen";
            case "telemetry":
                String string11 = contextWrapper.getString(R.string.k_qa_telemetry);
                i2.g.d(string11, "getString(...)");
                return string11;
            case "power_off":
                String string12 = contextWrapper.getString(R.string.k_qa_power_off);
                i2.g.d(string12, "getString(...)");
                return string12;
            case "regressiva":
                String string13 = contextWrapper.getString(R.string.k_qa_regressiva);
                i2.g.d(string13, "getString(...)");
                return string13;
            default:
                if (str.equals("close_apps")) {
                    String string14 = contextWrapper.getString(R.string.k_qa_close_apps);
                    i2.g.d(string14, "getString(...)");
                    return string14;
                }
                return str;
        }
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0029  */
    public static fg D(h2.p pVar, h2.l lVar) {
        Object next;
        Object next2;
        Object next3;
        Long lY;
        Long lY2;
        fg fgVar;
        List listU0;
        String str;
        Long lY3;
        String str2;
        String str3;
        Object obj;
        String str4 = (String) pVar.b("P=$(pm path com.flyme.auto.systemuiplugin 2>/dev/null | sed 's/^package://')\n[ \"$(echo \"$P\" | wc -l)\" = \"1\" ] || { echo ENTREGA=desconhecida; exit 0; }\ncase \"$P\" in\n  /data/app/*) VIA=install ;;\n  /system/*)\n    if grep -F \" $P \" /proc/mounts >/dev/null 2>&1 &&\n       [ -f '/data/local/hvac-digital/sysui.apk' ] &&\n       [ \"$(stat -c '%d:%i' \"$P\")\" = \"$(stat -c '%d:%i' '/data/local/hvac-digital/sysui.apk')\" ]; then\n      VIA=bind\n    else echo ENTREGA=ausente; exit 0; fi ;;\n  *) echo ENTREGA=desconhecida; exit 0 ;;\nesac\necho \"ENTREGA=$VIA\"\necho \"PATH=$P\"\necho \"ID=$(stat -c '%d %i' \"$P\" 2>/dev/null)\"\nPID=$(pidof com.android.systemui | awk '{print $1}')\necho \"PID=$PID\"\nif [ -n \"$PID\" ] && [ -r /proc/$PID/maps ]; then\n  awk -v alvo=\"$P\" '$6 == alvo { print }' /proc/$PID/maps && echo MAPS_OK\nelif [ -z \"$PID\" ]; then\n  echo MAPS_OK\nfi", 12000);
        i2.g.e(str4, "out");
        boolean zD0 = o2.t.d0(str4, "ADB_FAIL");
        fg fgVar2 = fg.b;
        fg fgVar3 = fg.f3601c;
        fg fgVar4 = fg.f3600a;
        fg fgVar5 = fg.f3602d;
        if (zD0) {
            fgVar = fgVar5;
        } else {
            List listW = n2.g.W(o2.k.n0(str4));
            Iterator it = listW.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!o2.t.d0((String) next, "ENTREGA="));
            String str5 = (String) next;
            String strX0 = str5 != null ? o2.k.x0(str5, '=', str5) : null;
            if (i2.g.a(strX0, "ausente")) {
                fgVar = fgVar4;
            } else if (y1.f.U(new String[]{"install", "bind"}).contains(strX0)) {
                Iterator it2 = listW.iterator();
                do {
                    if (!it2.hasNext()) {
                        next2 = null;
                        break;
                    }
                    next2 = it2.next();
                } while (!o2.t.d0((String) next2, "PATH="));
                String str6 = (String) next2;
                if (str6 != null) {
                    String strX1 = o2.k.x0(str6, '=', str6);
                    if (!o2.t.d0(strX1, "/")) {
                        strX1 = null;
                    }
                    if (strX1 != null) {
                        Iterator it3 = listW.iterator();
                        do {
                            if (!it3.hasNext()) {
                                next3 = null;
                                break;
                            }
                            next3 = it3.next();
                        } while (!o2.t.d0((String) next3, "ID="));
                        String str7 = (String) next3;
                        if (str7 != null) {
                            int i3 = 0;
                            List listU1 = o2.k.u0(o2.k.x0(str7, '=', str7), new char[]{' '});
                            String str8 = (String) y1.g.c0(listU1, 0);
                            if (str8 == null || (lY = o2.s.Y(str8)) == null) {
                                fgVar = fgVar5;
                            } else {
                                long jLongValue = lY.longValue();
                                String str9 = (String) y1.g.c0(listU1, 1);
                                if (str9 == null || (lY2 = o2.s.Y(str9)) == null) {
                                    fgVar = fgVar5;
                                } else {
                                    if (lY2.longValue() <= 0) {
                                        lY2 = null;
                                    }
                                    if (lY2 != null) {
                                        long jLongValue2 = lY2.longValue();
                                        if (listW.contains("MAPS_OK")) {
                                            long j3 = ((jLongValue >>> 8) & 4095) | ((jLongValue >>> 32) & 4294963200L);
                                            long j4 = (jLongValue & 255) | ((jLongValue >>> 12) & 4294967040L);
                                            if (!listW.isEmpty()) {
                                                Iterator it4 = listW.iterator();
                                                while (true) {
                                                    if (!it4.hasNext()) {
                                                        fgVar = fgVar2;
                                                        break;
                                                    }
                                                    List listD = new o2.h("\\s+").d(6, o2.k.E0((String) it4.next()).toString());
                                                    String str10 = (String) y1.g.c0(listD, 3);
                                                    if (str10 != null) {
                                                        char[] cArr = new char[1];
                                                        cArr[i3] = ':';
                                                        listU0 = o2.k.u0(str10, cArr);
                                                    } else {
                                                        listU0 = null;
                                                    }
                                                    Long lX = (listU0 == null || (str3 = (String) y1.g.c0(listU0, i3)) == null) ? null : o2.s.X(16, str3);
                                                    Long lX2 = (listU0 == null || (str2 = (String) y1.g.c0(listU0, 1)) == null) ? null : o2.s.X(16, str2);
                                                    if (lX != null && lX.longValue() == j3 && lX2 != null && lX2.longValue() == j4 && (str = (String) y1.g.c0(listD, 4)) != null && (lY3 = o2.s.Y(str)) != null && lY3.longValue() == jLongValue2 && i2.g.a(y1.g.c0(listD, 5), strX1)) {
                                                        fgVar = fgVar3;
                                                        break;
                                                    }
                                                    i3 = 0;
                                                }
                                            } else {
                                                fgVar = fgVar2;
                                                break;
                                            }
                                        } else {
                                            fgVar = fgVar5;
                                        }
                                    } else {
                                        fgVar = fgVar5;
                                    }
                                }
                            }
                        } else {
                            fgVar = fgVar5;
                        }
                    } else {
                        fgVar = fgVar5;
                    }
                } else {
                    fgVar = fgVar5;
                }
            } else {
                fgVar = fgVar5;
            }
        }
        if (fgVar == fgVar3 || fgVar == fgVar2) {
            n2.c cVarN0 = o2.k.n0(str4);
            Iterator it5 = cVarN0.b.iterator();
            while (true) {
                if (!it5.hasNext()) {
                    obj = null;
                    break;
                }
                Object objC = ((h2.l) cVarN0.f2529c).c(it5.next());
                if (o2.t.d0((String) objC, "PATH=")) {
                    obj = objC;
                    break;
                }
            }
            String str11 = (String) obj;
            if (str11 == null) {
                return fgVar5;
            }
            Boolean bool = (Boolean) lVar.c(o2.k.x0(str11, '=', str11));
            if (!i2.g.a(bool, Boolean.TRUE)) {
                if (i2.g.a(bool, Boolean.FALSE)) {
                    return fgVar4;
                }
                if (bool == null) {
                    return fgVar5;
                }
                throw new androidx.fragment.app.q();
            }
        }
        return fgVar;
    }

    public static String E(String str) {
        i2.g.e(str, "texto");
        Charset charset = o2.a.f2622a;
        byte[] bytes = str.getBytes(charset);
        i2.g.d(bytes, "getBytes(...)");
        if (bytes.length <= 49152) {
            return str;
        }
        int length = 49152 - (String.format("\n… [%d KB do meio omitidos para caber no e-mail] …\n", Arrays.copyOf(new Object[]{0}, 1)).length() + 16);
        if (length < 0) {
            length = 0;
        }
        int i3 = length / 3;
        int i4 = length - i3;
        return new String(bytes, 0, i3, charset) + String.format("\n… [%d KB do meio omitidos para caber no e-mail] …\n", Arrays.copyOf(new Object[]{Integer.valueOf((((bytes.length - i3) - i4) + 1023) / 1024)}, 1)) + new String(bytes, bytes.length - i4, i4, charset);
    }

    public static String F() {
        String str = u.f4308w;
        return o2.m.V("\n            " + S(str) + "\n            rm -f " + O("/data/local/tmp/fixes/connadaptor_em_bind") + "\n            if grep -F " + O(" " + str + ' ') + " /proc/mounts >/dev/null 2>&1; then\n              echo \"BIND_LEGADO_AINDA_MONTADO\"\n            else\n              echo \"BIND_LEGADO_LIMPO\"\n            fi\n        ");
    }

    public static yd G(Context context, String str, int i3, int i4, int i5) {
        int i6;
        int i7;
        Context applicationContext = context.getApplicationContext();
        Context contextCreateDeviceProtectedStorageContext = applicationContext.createDeviceProtectedStorageContext();
        if (contextCreateDeviceProtectedStorageContext != null) {
            applicationContext = contextCreateDeviceProtectedStorageContext;
        }
        SharedPreferences sharedPreferences = applicationContext.getSharedPreferences("overlay_positions_config", 0);
        String strConcat = str.concat(".");
        if (sharedPreferences.getInt(strConcat + "schema", -1) != 1) {
            n(sharedPreferences, strConcat);
            return new yd(i3, i4, i5);
        }
        int i8 = sharedPreferences.getInt(strConcat + "gravity", i3);
        int i9 = sharedPreferences.getInt(strConcat + "x", i4);
        int i10 = sharedPreferences.getInt(strConcat + "y", i5);
        int i11 = sharedPreferences.getInt(strConcat + "screen_width", -1);
        int i12 = sharedPreferences.getInt(strConcat + "screen_height", -1);
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        Point point = new Point(1980, 1080);
        if (windowManager != null) {
            try {
                windowManager.getDefaultDisplay().getRealSize(point);
            } catch (Exception unused) {
            }
        }
        if (i8 == i3 && (i6 = point.x) > 0 && i9 > (-i6) && i9 < i6 * 2 && (i7 = point.y) > 0 && i10 > (-i7) && i10 < i7 * 2 && i11 > 0 && i12 > 0) {
            return new yd(i8, i9, i10);
        }
        n(sharedPreferences, strConcat);
        return new yd(i3, i4, i5);
    }

    public static String H(h2.p pVar) {
        String str = (String) pVar.b("pidof com.android.systemui 2>/dev/null || true", 6000);
        Object obj = null;
        if (o2.t.d0(str, "ADB_FAIL")) {
            return null;
        }
        for (Object obj2 : new o2.h("\\s+").d(0, o2.k.E0(str).toString())) {
            if (o2.s.W((String) obj2) != null) {
                obj = obj2;
                break;
            }
        }
        String str2 = (String) obj;
        return str2 == null ? "" : str2;
    }

    public static final e5 I(h2.p pVar) {
        e5 e5Var;
        e5 e5Var2 = e5.f3528d;
        e5 e5Var3 = e5Var2;
        int i3 = 1;
        while (true) {
            e5Var = e5.f3526a;
            if (i3 >= 3) {
                break;
            }
            String strH = H(pVar);
            pVar.b("kill $(pidof com.android.systemui) 2>/dev/null || true", 8000);
            StringBuilder sb = new StringBuilder("for _i in 1 2 3 4 5 6 7 8 9 10; do _p=$(pidof com.android.systemui | awk '{print $1}'); [ -n \"$_p\" ] && [ \"$_p\" != '");
            sb.append(strH == null ? "" : strH);
            sb.append("' ] && break; sleep 1; done");
            pVar.b(sb.toString(), 15000);
            String strH2 = H(pVar);
            e5 e5Var4 = e5.b;
            if (strH == null || strH2 == null) {
                e5Var3 = e5Var2;
            } else if (o2.k.m0(strH2)) {
                e5Var3 = e5.f3527c;
            } else {
                e5Var3 = (!o2.k.m0(strH) && strH.equals(strH2)) ? e5Var4 : e5Var;
            }
            if (e5Var3 != e5Var4) {
                break;
            }
            Log.w("ReinicioDaBarra", "mesmo pid na tentativa " + i3 + " — tentando de novo");
            i3++;
        }
        if (e5Var3 != e5Var) {
            ae aeVar = ae.f3361a;
            ae.b("ReinicioDaBarra", "barra NAO reiniciou (" + e5Var3 + ") — o que foi aplicado só vale no proximo boot", true);
        }
        return e5Var3;
    }

    public static final boolean J(ActivityManager activityManager, int i3) {
        Class cls = Integer.TYPE;
        try {
            ActivityManager.class.getMethod("removeTask", cls).invoke(activityManager, Integer.valueOf(i3));
            return true;
        } catch (Throwable unused) {
            try {
                Object objInvoke = ActivityManager.class.getMethod("getService", null).invoke(null, null);
                if (objInvoke == null) {
                    return false;
                }
                Object objInvoke2 = objInvoke.getClass().getMethod("removeTask", cls).invoke(objInvoke, Integer.valueOf(i3));
                return !(objInvoke2 instanceof Boolean) || ((Boolean) objInvoke2).booleanValue();
            } catch (Throwable th) {
                StringBuilder sbK = androidx.activity.result.b.k("removerTask(", i3, "): ");
                sbK.append(th.getClass().getSimpleName());
                sbK.append(": ");
                sbK.append(th.getMessage());
                Log.w("Recentes", sbK.toString());
                return false;
            }
        }
    }

    public static b4 K(fg fgVar, b8 b8Var, y2 y2Var, f2 f2Var) {
        fg fgVar2 = fg.f3602d;
        b4 b4Var = b4.f3378a;
        if (fgVar == fgVar2 || !((Boolean) b8Var.a()).booleanValue()) {
            return b4Var;
        }
        int iOrdinal = fgVar.ordinal();
        if (iOrdinal == 0) {
            return (b4) y2Var.a();
        }
        b4 b4Var2 = b4.f3380d;
        if (iOrdinal == 1) {
            return ((Boolean) f2Var.a()).booleanValue() ? b4Var2 : b4.b;
        }
        if (iOrdinal == 2) {
            return b4Var2;
        }
        if (iOrdinal == 3) {
            return b4Var;
        }
        throw new androidx.fragment.app.q();
    }

    public static ie L(Context context, String str, byte[] bArr) {
        i2.g.e(context, "context");
        i2.g.e(bArr, "publicKey");
        try {
            ie ieVarU = U(str, bArr);
            int i3 = ieVarU.f3725a;
            int i4 = context.getSharedPreferences("tela_preta_prefs", 0).getInt("playbook_maior_versao_vista", 0);
            if (i3 < i4) {
                Log.w("PlaybookStore", "anti-rollback: v" + i3 + " < v" + i4 + " — recusado");
                return null;
            }
            try {
                File fileT = t(context);
                File file = new File(fileT, "current.bin");
                if (file.isFile()) {
                    f2.d.e0(file, new File(fileT, "previous.bin"));
                }
                File file2 = new File(fileT, "current.bin");
                byte[] bArrM = m(str);
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                try {
                    fileOutputStream.write(bArrM);
                    fileOutputStream.close();
                    context.getSharedPreferences("tela_preta_prefs", 0).edit().putInt("playbook_maior_versao_vista", i3).apply();
                    Log.i("PlaybookStore", "playbook v" + i3 + " gravado (" + ieVarU.f.size() + " livros)");
                    return ieVarU;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        a1.b.p(fileOutputStream, th);
                        throw th2;
                    }
                }
            } catch (Exception e3) {
                androidx.activity.result.b.o(e3, new StringBuilder("falha ao gravar: "), "PlaybookStore");
                return null;
            }
        } catch (Exception e4) {
            androidx.activity.result.b.o(e4, new StringBuilder("envelope recusado: "), "PlaybookStore");
            return null;
        }
    }

    public static void M(Context context, String str, int i3, int i4, int i5) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        Point point = new Point(1980, 1080);
        if (windowManager != null) {
            try {
                windowManager.getDefaultDisplay().getRealSize(point);
            } catch (Exception unused) {
            }
        }
        String strConcat = str.concat(".");
        Context applicationContext = context.getApplicationContext();
        Context contextCreateDeviceProtectedStorageContext = applicationContext.createDeviceProtectedStorageContext();
        if (contextCreateDeviceProtectedStorageContext != null) {
            applicationContext = contextCreateDeviceProtectedStorageContext;
        }
        applicationContext.getSharedPreferences("overlay_positions_config", 0).edit().putInt(strConcat + "schema", 1).putInt(strConcat + "gravity", i3).putInt(strConcat + "x", i4).putInt(strConcat + "y", i5).putInt(n.g.a(strConcat, "screen_width"), point.x).putInt(n.g.a(strConcat, "screen_height"), point.y).apply();
    }

    public static String N(String str) {
        i2.g.e(str, "s");
        return androidx.activity.result.b.i(str, "'", "'\\''", new StringBuilder("'"), '\'');
    }

    public static String O(String str) {
        i2.g.e(str, "s");
        return androidx.activity.result.b.i(str, "'", "'\\''", new StringBuilder("'"), '\'');
    }

    public static final Float P(Float f) {
        if (f != null) {
            float fFloatValue = f.floatValue();
            if (fFloatValue == 0.0f) {
                return null;
            }
            if (fFloatValue > 100.0f) {
                fFloatValue /= 10.0f;
            }
            if (0.0f <= fFloatValue && fFloatValue <= 100.0f) {
                return Float.valueOf(fFloatValue);
            }
        }
        return null;
    }

    public static String Q(String str) {
        try {
            Object objInvoke = Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, str);
            String str2 = objInvoke instanceof String ? (String) objInvoke : null;
            String string = str2 != null ? o2.k.E0(str2).toString() : null;
            return string == null ? "" : string;
        } catch (Throwable unused) {
            return "";
        }
    }

    public static final Float R(Integer num) {
        int iIntValue;
        if (num == null || (iIntValue = num.intValue()) == 0) {
            return null;
        }
        float f = (iIntValue - 80) / 2.0f;
        if (f > -50.0f && f < 70.0f) {
            return Float.valueOf(f);
        }
        return null;
    }

    public static String S(String str) {
        i2.g.e(str, "dst");
        String strO = O(str);
        StringBuilder sbM = androidx.activity.result.b.m("\n            for _i in 1 2 3 4 5 6; do\n              grep -F ", O(" " + str + ' '), " /proc/mounts >/dev/null 2>&1 || break\n              umount ", strO, " 2>/dev/null || umount -l ");
        sbM.append(strO);
        sbM.append(" 2>/dev/null || true\n            done\n        ");
        return o2.m.V(sbM.toString());
    }

    public static String T(String str, int i3, String str2) {
        StringBuilder sb = new StringBuilder("\n            _p1=$(pidof ");
        sb.append(str);
        sb.append(" 2>/dev/null | awk '{print $1}')\n            sleep ");
        sb.append(i3);
        sb.append("\n            _p2=$(pidof ");
        androidx.activity.result.b.q(sb, str, " 2>/dev/null | awk '{print $1}')\n            if [ -z \"$_p2\" ]; then\n              echo \"", str2, "_MORTO (init.svc=$(getprop init.svc.");
        androidx.activity.result.b.q(sb, str, "))\"\n            elif [ \"$_p1\" = \"$_p2\" ]; then\n              echo \"", str2, "_ESTAVEL pid=$_p2\"\n            else\n              echo \"");
        sb.append(str2);
        sb.append("_CRASH_LOOP (pid $_p1 -> $_p2 em ");
        sb.append(i3);
        sb.append("s — o init está respawnando)\"\n            fi\n        ");
        return o2.m.V(sb.toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0, types: [y1.p] */
    /* JADX WARN: Type inference failed for: r9v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r9v2, types: [java.util.ArrayList] */
    public static ie U(String str, byte[] bArr) throws JSONException {
        ?? arrayList;
        JSONObject jSONObject;
        Iterator<String> it;
        i2.g.e(bArr, "publicKey");
        JSONObject jSONObject2 = new JSONObject(str);
        if (!i2.g.a(jSONObject2.optString("alg"), "ed25519")) {
            throw new p6("alg desconhecido");
        }
        String strOptString = jSONObject2.optString("payload");
        i2.g.b(strOptString);
        if (o2.k.m0(strOptString)) {
            strOptString = null;
        }
        if (strOptString == null) {
            throw new p6("envelope sem payload");
        }
        try {
            byte[] bArrDecode = Base64.getDecoder().decode(jSONObject2.optString("sig"));
            BigInteger bigInteger = y5.f4566a;
            byte[] bytes = strOptString.getBytes(o2.a.f2622a);
            i2.g.d(bytes, "getBytes(...)");
            i2.g.b(bArrDecode);
            if (!y5.g(bArr, bytes, bArrDecode)) {
                throw new p6("assinatura inválida — playbook descartado");
            }
            JSONObject jSONObject3 = new JSONObject(strOptString);
            int iOptInt = jSONObject3.optInt("configVersion", -1);
            if (iOptInt < 0) {
                throw new p6("configVersion ausente");
            }
            int iOptInt2 = jSONObject3.optInt("engineMin", 1);
            int iOptInt3 = jSONObject3.optInt("engineMax", Integer.MAX_VALUE);
            if (2 < iOptInt2 || 2 > iOptInt3) {
                throw new p6(androidx.activity.result.b.f(iOptInt2, iOptInt3, "motor v2 fora da faixa ", ".."));
            }
            JSONArray jSONArrayOptJSONArray = jSONObject3.optJSONArray("models");
            int i3 = 0;
            if (jSONArrayOptJSONArray != null) {
                l2.c cVarT = k1.a.T(0, jSONArrayOptJSONArray.length());
                arrayList = new ArrayList(y1.i.X(cVarT));
                Iterator it2 = cVarT.iterator();
                while (true) {
                    l2.b bVar = (l2.b) it2;
                    if (!bVar.f2428c) {
                        break;
                    }
                    arrayList.add(jSONArrayOptJSONArray.getString(bVar.nextInt()));
                }
            } else {
                arrayList = y1.p.f4663a;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            JSONObject jSONObjectOptJSONObject = jSONObject3.optJSONObject("playbooks");
            if (jSONObjectOptJSONObject == null) {
                jSONObjectOptJSONObject = new JSONObject();
            }
            Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
            i2.g.d(itKeys, "keys(...)");
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                JSONObject jSONObject4 = jSONObjectOptJSONObject.getJSONObject(next);
                JSONObject jSONObjectOptJSONObject2 = jSONObject4.optJSONObject("budget");
                if (jSONObjectOptJSONObject2 == null) {
                    jSONObjectOptJSONObject2 = new JSONObject();
                }
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                JSONArray jSONArrayOptJSONArray2 = jSONObject4.optJSONArray("steps");
                if (jSONArrayOptJSONArray2 == null) {
                    throw new p6(n.g.a(next, " sem steps"));
                }
                int length = jSONArrayOptJSONArray2.length();
                int i4 = i3;
                while (true) {
                    jSONObject = jSONObjectOptJSONObject;
                    it = itKeys;
                    if (i4 < length) {
                        int i5 = length;
                        JSONObject jSONObject5 = jSONArrayOptJSONArray2.getJSONObject(i4);
                        int i6 = i4;
                        String strOptString2 = jSONObject5.optString("id");
                        i2.g.b(strOptString2);
                        if (o2.k.m0(strOptString2)) {
                            strOptString2 = null;
                        }
                        if (strOptString2 == null) {
                            throw new p6(n.g.a(next, ": passo sem id"));
                        }
                        if (linkedHashMap2.containsKey(strOptString2)) {
                            throw new p6(next + ": id duplicado '" + strOptString2 + '\'');
                        }
                        String str2 = strOptString2;
                        JSONObject jSONObjectOptJSONObject3 = jSONObject5.optJSONObject("retry");
                        if (jSONObjectOptJSONObject3 == null) {
                            jSONObjectOptJSONObject3 = new JSONObject();
                        }
                        int i7 = iOptInt;
                        String strOptString3 = jSONObject5.optString("op");
                        i2.g.b(strOptString3);
                        String str3 = !o2.k.m0(strOptString3) ? strOptString3 : null;
                        if (str3 == null) {
                            throw new p6(next + '/' + str2 + ": sem op");
                        }
                        JSONObject jSONObjectOptJSONObject4 = jSONObject5.optJSONObject("args");
                        if (jSONObjectOptJSONObject4 == null) {
                            jSONObjectOptJSONObject4 = new JSONObject();
                        }
                        JSONObject jSONObject6 = jSONObjectOptJSONObject4;
                        int i8 = iOptInt2;
                        int i9 = iOptInt3;
                        long jOptLong = jSONObject5.optLong("timeoutMs", 15000L);
                        int iOptInt4 = jSONObjectOptJSONObject3.optInt("max", 0);
                        long jOptLong2 = jSONObjectOptJSONObject3.optLong("backoffMs", 1000L);
                        String strOptString4 = jSONObject5.optString("onOk", "done");
                        i2.g.d(strOptString4, "optString(...)");
                        String strOptString5 = jSONObject5.optString("onFail", "abort");
                        i2.g.d(strOptString5, "optString(...)");
                        String strOptString6 = jSONObject5.optString("log");
                        i2.g.b(strOptString6);
                        linkedHashMap2.put(str2, new oe(str2, str3, jSONObject6, jOptLong, iOptInt4, jOptLong2, strOptString4, strOptString5, !o2.k.m0(strOptString6) ? strOptString6 : null));
                        i4 = i6 + 1;
                        length = i5;
                        jSONObjectOptJSONObject = jSONObject;
                        itKeys = it;
                        iOptInt = i7;
                        iOptInt2 = i8;
                        iOptInt3 = i9;
                    }
                }
                int i10 = iOptInt;
                int i11 = iOptInt2;
                int i12 = iOptInt3;
                String strOptString7 = jSONObject4.optString("start");
                i2.g.b(strOptString7);
                if (o2.k.m0(strOptString7)) {
                    strOptString7 = null;
                }
                if (strOptString7 == null) {
                    throw new p6(n.g.a(next, " sem start"));
                }
                if (!linkedHashMap2.containsKey(strOptString7)) {
                    throw new p6(next + ": start '" + strOptString7 + "' não existe");
                }
                for (oe oeVar : linkedHashMap2.values()) {
                    for (String str4 : y1.f.U(new String[]{oeVar.f4020g, oeVar.f4021h})) {
                        if (!i2.g.a(str4, "done") && !i2.g.a(str4, "abort") && !linkedHashMap2.containsKey(str4)) {
                            throw new p6(next + '/' + oeVar.f4016a + ": destino '" + str4 + "' não existe");
                        }
                    }
                }
                i2.g.b(next);
                JSONObject jSONObjectOptJSONObject5 = jSONObject4.optJSONObject("trigger");
                if (jSONObjectOptJSONObject5 == null) {
                    jSONObjectOptJSONObject5 = new JSONObject();
                }
                String strOptString8 = jSONObjectOptJSONObject5.optString("on", "manual");
                i2.g.d(strOptString8, "optString(...)");
                linkedHashMap.put(next, new he(next, strOptString8, jSONObject4.optBoolean("enabled", true), strOptString7, jSONObjectOptJSONObject2.optInt("maxSteps", 100), jSONObjectOptJSONObject2.optLong("maxTotalMs", 300000L), linkedHashMap2));
                jSONObjectOptJSONObject = jSONObject;
                itKeys = it;
                iOptInt = i10;
                iOptInt2 = i11;
                iOptInt3 = i12;
                i3 = 0;
            }
            int i13 = iOptInt;
            int i14 = iOptInt2;
            int i15 = iOptInt3;
            JSONObject jSONObjectOptJSONObject6 = jSONObject3.optJSONObject("constants");
            if (jSONObjectOptJSONObject6 == null) {
                jSONObjectOptJSONObject6 = new JSONObject();
            }
            return new ie(i13, i14, i15, arrayList, jSONObjectOptJSONObject6, linkedHashMap);
        } catch (Exception unused) {
            throw new p6("sig ilegível");
        }
    }

    public static String a(int i3, String str) {
        try {
            return m.y(i3, str);
        } catch (Exception e3) {
            return "ADB_FAIL: " + e3.getMessage();
        }
    }

    public static final int b(String str, String str2) {
        String str3;
        Integer numW;
        String strConcat = str2.concat("=(\\d+)");
        i2.g.e(strConcat, "pattern");
        Pattern patternCompile = Pattern.compile(strConcat);
        i2.g.d(patternCompile, "compile(...)");
        Matcher matcher = patternCompile.matcher(str);
        i2.g.d(matcher, "matcher(...)");
        o2.e eVarB = k1.a.b(matcher, 0, str);
        if (eVarB == null || (str3 = (String) ((o2.d) eVarB.a()).get(1)) == null || (numW = o2.s.W(str3)) == null) {
            return 0;
        }
        return numW.intValue();
    }

    /* JADX WARN: Code duplicated, block: B:64:0x0244  */
    public static boolean c(Context context) {
        boolean z2;
        boolean z3;
        boolean zE0;
        boolean z4;
        Boolean boolO = o();
        if (boolO == null) {
            Log.w("PipOverlay", "aplicar: nao consegui ler o sha256 da SystemUI — nao arrisco");
            return false;
        }
        if (boolO.equals(Boolean.FALSE)) {
            ae aeVar = ae.f3361a;
            ae.b("PipOverlay", "PiP nativo: esta SystemUI nao e a validada — recusado", true);
            return false;
        }
        if (o2.k.e0(a(8000, "pm path com.geely.ex2.mica.pipoverlayprobe 2>/dev/null"), "/data/app", false)) {
            z2 = true;
        } else {
            a(8000, "mkdir -p " + O("/data/local/pip-overlay"));
            try {
                File file = new File(context.getCacheDir(), "pip-overlay-asset.apk");
                InputStream inputStreamOpen = context.getAssets().open("pip-overlay.apk");
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    try {
                        i2.g.b(inputStreamOpen);
                        a1.b.r(inputStreamOpen, fileOutputStream);
                        fileOutputStream.close();
                        inputStreamOpen.close();
                        StringBuilder sb = new StringBuilder("cp ");
                        String absolutePath = file.getAbsolutePath();
                        i2.g.d(absolutePath, "getAbsolutePath(...)");
                        sb.append(O(absolutePath));
                        sb.append(' ');
                        sb.append(O("/data/local/pip-overlay/pip-overlay.apk"));
                        a(30000, sb.toString());
                        String strA = a(60000, "pm install -r --user 0 " + O("/data/local/pip-overlay/pip-overlay.apk") + " 2>&1");
                        zE0 = o2.k.e0(a(8000, "pm path com.geely.ex2.mica.pipoverlayprobe 2>/dev/null"), "/data/app", false);
                        if (!zE0) {
                            Log.w("PipOverlay", "porAsset: nao instalou — " + o2.k.E0(o2.k.D0(160, strA)).toString());
                        }
                        if (zE0) {
                            z2 = true;
                            z4 = true;
                        } else {
                            Log.w("PipOverlay", "instalarOverlay: o asset nao serviu — tentando a prateleira");
                            try {
                                SharedPreferences sharedPreferences = context.getSharedPreferences("tela_preta_prefs", 0);
                                byte[] bArr = u6.f4334a;
                                i2.g.b(sharedPreferences);
                                t6 t6VarD = u6.d(context, sharedPreferences, "com.geely.ex2.mica.pipoverlayprobe", 0L);
                                File file2 = new File(context.getCacheDir(), "pip-overlay.apk");
                                d(file2, t6VarD.f4263c);
                                StringBuilder sb2 = new StringBuilder("cp ");
                                String absolutePath2 = file2.getAbsolutePath();
                                i2.g.d(absolutePath2, "getAbsolutePath(...)");
                                sb2.append(O(absolutePath2));
                                sb2.append(' ');
                                sb2.append(O("/data/local/pip-overlay/pip-overlay.apk"));
                                a(30000, sb2.toString());
                                String strA2 = a(60000, "pm install -r --user 0 " + O("/data/local/pip-overlay/pip-overlay.apk") + " 2>&1");
                                boolean zE1 = o2.k.e0(a(8000, "pm path com.geely.ex2.mica.pipoverlayprobe 2>/dev/null"), "/data/app", false);
                                if (!zE1) {
                                    Log.w("PipOverlay", "porDownload: nao instalou — " + o2.k.E0(o2.k.D0(160, strA2)).toString());
                                }
                                z4 = zE1;
                                z2 = true;
                            } catch (Exception e3) {
                                androidx.activity.result.b.o(e3, new StringBuilder("porDownload: "), "PipOverlay");
                                ae aeVar2 = ae.f3361a;
                                z2 = true;
                                ae.b("PipOverlay", "PiP nativo: nao consegui baixar o overlay (" + e3.getClass().getSimpleName() + ')', true);
                                z4 = false;
                            }
                        }
                        if (!z4) {
                            return false;
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
                        a1.b.p(inputStreamOpen, th3);
                        throw th4;
                    }
                }
            } catch (Exception e4) {
                androidx.activity.result.b.o(e4, new StringBuilder("porAsset: "), "PipOverlay");
                zE0 = false;
            }
        }
        A(z2);
        a(10000, "cmd overlay enable --user 0 com.geely.ex2.mica.pipoverlayprobe");
        if (!B()) {
            ae aeVar3 = ae.f3361a;
            ae.b("PipOverlay", "PiP nativo: o overlay nao ficou habilitado", z2);
            return false;
        }
        boolean z5 = false;
        I(new n(6));
        String strA3 = a(15000, "dumpsys activity service com.android.systemui/.SystemUIService 2>/dev/null");
        boolean zE2 = o2.k.e0(strA3, "com.android.systemui.pip.PipUI", false);
        if (o2.k.e0(strA3, "InputConsumerController", false)) {
            CharSequence charSequenceSubSequence = "";
            String strY0 = o2.k.y0(strA3, "InputConsumerController", "");
            int length = strY0.length();
            for (int i3 = 0; i3 < length; i3++) {
                if (!k1.a.G(strY0.charAt(i3))) {
                    charSequenceSubSequence = strY0.subSequence(i3, strY0.length());
                    break;
                }
            }
            if (o2.t.d0(charSequenceSubSequence.toString(), "registered=true")) {
                z3 = true;
            } else {
                z3 = false;
            }
        } else {
            z3 = false;
        }
        if (!zE2 || !z3) {
            Log.w("PipOverlay", "pipUiCarregou: PipUI=" + zE2 + " consumidorDeEntrada=" + z3);
        }
        if (zE2 && z3) {
            z5 = true;
        }
        if (z5) {
            ae aeVar4 = ae.f3361a;
            ae.b("PipOverlay", "PiP nativo: ATIVO (overlay do Magno Lima)", true);
        } else {
            Log.w("PipOverlay", "aplicar: PipUI nao subiu — revertendo");
            a(10000, "cmd overlay disable --user 0 com.geely.ex2.mica.pipoverlayprobe");
            I(new n(7));
            ae aeVar5 = ae.f3361a;
            ae.b("PipOverlay", "PiP nativo: PipUI nao subiu — revertido", true);
        }
        return z5;
    }

    public static void d(File file, String str) throws IOException {
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
            InputStream inputStream = httpURLConnection.getInputStream();
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                try {
                    i2.g.b(inputStream);
                    a1.b.r(inputStream, fileOutputStream);
                    fileOutputStream.close();
                    inputStream.close();
                    httpURLConnection.disconnect();
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

    /* JADX WARN: Code duplicated, block: B:11:0x0038  */
    public static RemoteViews e(Context context, Float f, int i3) {
        String string;
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), i3);
        remoteViews.setInt(R.id.widget_bg_layer, "setBackgroundResource", v7.a(context));
        if (f != null) {
            float fFloatValue = f.floatValue();
            if (Float.isNaN(fFloatValue)) {
                throw new IllegalArgumentException("Cannot round NaN value.");
            }
            string = Integer.valueOf(Math.round(fFloatValue)).toString();
            if (string == null) {
                string = "—";
            }
        } else {
            string = "—";
        }
        remoteViews.setTextViewText(R.id.tv_temp_value, string);
        remoteViews.setTextViewText(R.id.tv_temp_label, v7.o(context).getString(R.string.k_widget_lbl_temp));
        remoteViews.setOnClickPendingIntent(R.id.btn_temp_minus, z(context, "com.ex.auto.widget.TEMP_MINUS"));
        remoteViews.setOnClickPendingIntent(R.id.btn_temp_plus, z(context, "com.ex.auto.widget.TEMP_PLUS"));
        return remoteViews;
    }

    public static RemoteViews f(Context context, Integer num) {
        x1.a aVar;
        Integer numValueOf = Integer.valueOf(R.drawable.ic_widget_regen_mid);
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), R.layout.widget_regen_vertical);
        remoteViews.setInt(R.id.widget_bg_layer, "setBackgroundResource", v7.a(context));
        Context contextO = v7.o(context);
        if (num != null && num.intValue() == 537003265) {
            aVar = new x1.a(Integer.valueOf(R.drawable.ic_widget_regen_weak), contextO.getString(R.string.k_widget_lbl_regen_low));
        } else if (num != null && num.intValue() == 537003266) {
            aVar = new x1.a(numValueOf, contextO.getString(R.string.k_widget_lbl_regen_mid));
        } else {
            aVar = (num != null && num.intValue() == 537003267) ? new x1.a(Integer.valueOf(R.drawable.ic_widget_regen_strong), contextO.getString(R.string.k_widget_lbl_regen_high)) : new x1.a(numValueOf, "—");
        }
        int iIntValue = ((Number) aVar.f4641a).intValue();
        String str = (String) aVar.b;
        remoteViews.setImageViewResource(R.id.img_regen_level, iIntValue);
        remoteViews.setTextViewText(R.id.tv_regen_level_label, str);
        remoteViews.setTextViewText(R.id.tv_regen_level_footer, contextO.getString(R.string.k_qa_regen_label));
        remoteViews.setOnClickPendingIntent(R.id.btn_regen_next, z(context, "com.ex.auto.widget.REGEN_NEXT"));
        remoteViews.setOnClickPendingIntent(R.id.btn_regen_prev, z(context, "com.ex.auto.widget.REGEN_PREV"));
        return remoteViews;
    }

    public static RemoteViews g(Context context, Integer num, Boolean bool) {
        String string;
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), R.layout.widget_hvac_direction_vertical);
        remoteViews.setInt(R.id.widget_bg_layer, "setBackgroundResource", v7.a(context));
        Context contextO = v7.o(context);
        int i3 = HvacDirectionWidgetProvider.f978a;
        int i4 = R.drawable.ic_widget_vent_face;
        if (num == null || num.intValue() != 1) {
            if (num != null && num.intValue() == 2) {
                i4 = R.drawable.ic_widget_vent_floor;
            } else if (num != null && num.intValue() == 3) {
                i4 = R.drawable.ic_widget_vent_face_floor;
            } else if (num != null && num.intValue() == 4) {
                i4 = R.drawable.ic_widget_vent_windshield;
            } else if (num != null && num.intValue() == 6) {
                i4 = R.drawable.ic_widget_vent_floor_windshield;
            }
        }
        remoteViews.setImageViewResource(R.id.img_vent_mode, i4);
        if (num != null && num.intValue() == 1) {
            string = contextO.getString(R.string.k_widget_lbl_vent_face);
            i2.g.d(string, "getString(...)");
        } else if (num != null && num.intValue() == 2) {
            string = contextO.getString(R.string.k_widget_lbl_vent_floor);
            i2.g.d(string, "getString(...)");
        } else if (num != null && num.intValue() == 3) {
            string = contextO.getString(R.string.k_widget_lbl_vent_face_floor);
            i2.g.d(string, "getString(...)");
        } else if (num != null && num.intValue() == 4) {
            string = contextO.getString(R.string.k_widget_lbl_vent_windshield);
            i2.g.d(string, "getString(...)");
        } else if (num != null && num.intValue() == 6) {
            string = contextO.getString(R.string.k_widget_lbl_vent_floor_windshield);
            i2.g.d(string, "getString(...)");
        } else {
            string = "—";
        }
        remoteViews.setTextViewText(R.id.tv_vent_mode_label, string);
        remoteViews.setTextViewText(R.id.tv_vent_mode_footer, contextO.getString(R.string.k_widget_lbl_vent_short));
        remoteViews.setTextViewText(R.id.txt_recirc_v, contextO.getString(R.string.k_widget_lbl_recirc));
        boolean zA = i2.g.a(bool, Boolean.TRUE);
        remoteViews.setInt(R.id.chip_recirc_v, "setBackgroundResource", zA ? R.drawable.widget_chip_active : R.drawable.widget_chip_idle);
        remoteViews.setTextColor(R.id.txt_recirc_v, context.getColor(zA ? R.color.cx_on_accent : R.color.cx_text_primary));
        remoteViews.setOnClickPendingIntent(R.id.btn_vent_next, z(context, "com.ex.auto.widget.VENT_NEXT"));
        remoteViews.setOnClickPendingIntent(R.id.btn_vent_prev, z(context, "com.ex.auto.widget.VENT_PREV"));
        remoteViews.setOnClickPendingIntent(R.id.chip_recirc_v, z(context, "com.ex.auto.widget.RECIRC_TOGGLE"));
        return remoteViews;
    }

    public static RemoteViews h(Context context, Integer num, Boolean bool, Integer num2, Boolean bool2) {
        String string;
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), R.layout.widget_hvac_direction_fan);
        remoteViews.setInt(R.id.widget_bg_layer, "setBackgroundResource", v7.a(context));
        int i3 = 0;
        j(remoteViews, context, R.id.chip_vent_face, R.id.txt_vent_face, num != null && num.intValue() == 1);
        j(remoteViews, context, R.id.chip_vent_floor, R.id.txt_vent_floor, num != null && num.intValue() == 2);
        j(remoteViews, context, R.id.chip_vent_face_floor, R.id.txt_vent_face_floor, num != null && num.intValue() == 3);
        j(remoteViews, context, R.id.chip_vent_windshield, R.id.txt_vent_windshield, num != null && num.intValue() == 4);
        j(remoteViews, context, R.id.chip_vent_floor_windshield, R.id.txt_vent_floor_windshield, num != null && num.intValue() == 6);
        Boolean bool3 = Boolean.TRUE;
        j(remoteViews, context, R.id.chip_recirc, R.id.txt_recirc, i2.g.a(bool, bool3));
        if (num2 == null || (string = num2.toString()) == null) {
            string = "—";
        }
        remoteViews.setTextViewText(R.id.tv_fan_value, string);
        remoteViews.setInt(R.id.chip_fan_ac, "setBackgroundResource", i2.g.a(bool2, bool3) ? R.drawable.widget_chip_active : R.drawable.widget_chip_ac_off);
        remoteViews.setTextColor(R.id.tv_fan_value, context.getColor(i2.g.a(bool2, bool3) ? R.color.cx_on_accent : R.color.cx_text_primary));
        int[] iArr = HvacDirectionFanWidgetProvider.f976a;
        int i4 = 0;
        while (i3 < 7) {
            int i5 = i4 + 1;
            remoteViews.setInt(iArr[i3], "setBackgroundResource", (num2 == null || i4 >= num2.intValue()) ? R.drawable.widget_dot_off : R.drawable.widget_dot_on);
            i3++;
            i4 = i5;
        }
        remoteViews.setOnClickPendingIntent(R.id.chip_vent_face, z(context, "com.ex.auto.widget.VENT_FACE"));
        remoteViews.setOnClickPendingIntent(R.id.chip_vent_floor, z(context, "com.ex.auto.widget.VENT_FLOOR"));
        remoteViews.setOnClickPendingIntent(R.id.chip_vent_face_floor, z(context, "com.ex.auto.widget.VENT_FACE_FLOOR"));
        remoteViews.setOnClickPendingIntent(R.id.chip_vent_windshield, z(context, "com.ex.auto.widget.VENT_WINDSHIELD"));
        remoteViews.setOnClickPendingIntent(R.id.chip_vent_floor_windshield, z(context, "com.ex.auto.widget.VENT_FLOOR_WINDSHIELD"));
        remoteViews.setOnClickPendingIntent(R.id.chip_recirc, z(context, "com.ex.auto.widget.RECIRC_TOGGLE"));
        remoteViews.setOnClickPendingIntent(R.id.btn_fan_minus, z(context, "com.ex.auto.widget.FAN_MINUS"));
        remoteViews.setOnClickPendingIntent(R.id.btn_fan_plus, z(context, "com.ex.auto.widget.FAN_PLUS"));
        remoteViews.setOnClickPendingIntent(R.id.chip_fan_ac, z(context, "com.ex.auto.widget.AC_TOGGLE"));
        return remoteViews;
    }

    public static RemoteViews i(Context context, Integer num, Boolean bool) {
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), R.layout.widget_hvac_direction);
        remoteViews.setInt(R.id.widget_bg_layer, "setBackgroundResource", v7.a(context));
        Context contextO = v7.o(context);
        remoteViews.setTextViewText(R.id.txt_vent_header, contextO.getString(R.string.k_widget_lbl_vent_header));
        remoteViews.setTextViewText(R.id.txt_vent_face, contextO.getString(R.string.k_widget_lbl_vent_face));
        remoteViews.setTextViewText(R.id.txt_vent_floor, contextO.getString(R.string.k_widget_lbl_vent_floor));
        remoteViews.setTextViewText(R.id.txt_vent_face_floor, contextO.getString(R.string.k_widget_lbl_vent_face_floor));
        remoteViews.setTextViewText(R.id.txt_vent_windshield, contextO.getString(R.string.k_widget_lbl_vent_windshield));
        remoteViews.setTextViewText(R.id.txt_vent_floor_windshield, contextO.getString(R.string.k_widget_lbl_vent_floor_windshield));
        remoteViews.setTextViewText(R.id.txt_recirc, contextO.getString(R.string.k_widget_lbl_recirc));
        boolean z2 = false;
        k(remoteViews, context, R.id.chip_vent_face, R.id.txt_vent_face, num != null && num.intValue() == 1);
        k(remoteViews, context, R.id.chip_vent_floor, R.id.txt_vent_floor, num != null && num.intValue() == 2);
        k(remoteViews, context, R.id.chip_vent_face_floor, R.id.txt_vent_face_floor, num != null && num.intValue() == 3);
        k(remoteViews, context, R.id.chip_vent_windshield, R.id.txt_vent_windshield, num != null && num.intValue() == 4);
        if (num != null && num.intValue() == 6) {
            z2 = true;
        }
        k(remoteViews, context, R.id.chip_vent_floor_windshield, R.id.txt_vent_floor_windshield, z2);
        k(remoteViews, context, R.id.chip_recirc, R.id.txt_recirc, i2.g.a(bool, Boolean.TRUE));
        remoteViews.setOnClickPendingIntent(R.id.chip_vent_face, z(context, "com.ex.auto.widget.VENT_FACE"));
        remoteViews.setOnClickPendingIntent(R.id.chip_vent_floor, z(context, "com.ex.auto.widget.VENT_FLOOR"));
        remoteViews.setOnClickPendingIntent(R.id.chip_vent_face_floor, z(context, "com.ex.auto.widget.VENT_FACE_FLOOR"));
        remoteViews.setOnClickPendingIntent(R.id.chip_vent_windshield, z(context, "com.ex.auto.widget.VENT_WINDSHIELD"));
        remoteViews.setOnClickPendingIntent(R.id.chip_vent_floor_windshield, z(context, "com.ex.auto.widget.VENT_FLOOR_WINDSHIELD"));
        remoteViews.setOnClickPendingIntent(R.id.chip_recirc, z(context, "com.ex.auto.widget.RECIRC_TOGGLE"));
        return remoteViews;
    }

    public static final void j(RemoteViews remoteViews, Context context, int i3, int i4, boolean z2) {
        remoteViews.setInt(i3, "setBackgroundResource", z2 ? R.drawable.widget_chip_active : R.drawable.widget_chip_idle);
        remoteViews.setTextColor(i4, context.getColor(z2 ? R.color.cx_on_accent : R.color.cx_text_primary));
    }

    public static final void k(RemoteViews remoteViews, Context context, int i3, int i4, boolean z2) {
        remoteViews.setInt(i3, "setBackgroundResource", z2 ? R.drawable.widget_chip_active : R.drawable.widget_chip_idle);
        remoteViews.setTextColor(i4, context.getColor(z2 ? R.color.cx_on_accent : R.color.cx_text_primary));
    }

    public static ie l(Context context, byte[] bArr) {
        i2.g.e(context, "context");
        i2.g.e(bArr, "publicKey");
        long j3 = context.getSharedPreferences("tela_preta_prefs", 0).getLong("playbook_valido_ate", 0L);
        if (j3 > 0 && System.currentTimeMillis() > j3) {
            ae aeVar = ae.f3361a;
            ae.b("PlaybookStore", "blob vencido (sem contato com o servidor há mais de 30 dias) — comportamento suspenso até sincronizar", false);
            return null;
        }
        for (String str : y1.f.U(new String[]{"current.bin", "previous.bin"})) {
            File file = new File(t(context), str);
            if (file.isFile()) {
                try {
                    return U(q(f2.d.f0(file)), bArr);
                } catch (Exception e3) {
                    StringBuilder sbL = androidx.activity.result.b.l("blob '", str, "' rejeitado: ");
                    sbL.append(e3.getClass().getSimpleName());
                    sbL.append(' ');
                    String message = e3.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    sbL.append(message);
                    Log.w("PlaybookStore", sbL.toString());
                    b = true;
                }
            }
        }
        if (b) {
            b = false;
            try {
                File[] fileArrListFiles = t(context).listFiles();
                if (fileArrListFiles != null) {
                    for (File file2 : fileArrListFiles) {
                        file2.delete();
                    }
                }
                context.getSharedPreferences("tela_preta_prefs", 0).edit().putInt("playbook_maior_versao_vista", 0).apply();
                Log.w("PlaybookStore", "blob ilegível descartado — será rebaixado na próxima sincronização");
            } catch (Exception e4) {
                androidx.activity.result.b.o(e4, new StringBuilder("não consegui descartar o blob ilegível: "), "PlaybookStore");
            }
        }
        return null;
    }

    public static byte[] m(String str) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException {
        SecretKeySpec secretKeySpecS = s();
        if (secretKeySpecS == null) {
            Log.w("PlaybookStore", "sem semente nativa — gravando o blob em claro");
            byte[] bArr = {1};
            byte[] bytes = str.getBytes(o2.a.f2622a);
            i2.g.d(bytes, "getBytes(...)");
            return y1.f.d0(bArr, bytes);
        }
        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
        cipher.init(1, secretKeySpecS);
        byte[] bytes2 = str.getBytes(o2.a.f2622a);
        i2.g.d(bytes2, "getBytes(...)");
        byte[] bArrDoFinal = cipher.doFinal(bytes2);
        byte[] iv = cipher.getIV();
        i2.g.d(iv, "getIV(...)");
        byte[] bArrD0 = y1.f.d0(new byte[]{2}, iv);
        i2.g.b(bArrDoFinal);
        return y1.f.d0(bArrD0, bArrDoFinal);
    }

    public static void n(SharedPreferences sharedPreferences, String str) {
        sharedPreferences.edit().remove(str + "schema").remove(str + "gravity").remove(str + "x").remove(str + "y").remove(str + "screen_width").remove(str + "screen_height").apply();
    }

    public static Boolean o() {
        String strA = a(10000, "sha256sum /system/priv-app/SystemUI/SystemUI.apk 2>/dev/null");
        if (o2.t.d0(strA, "ADB_FAIL")) {
            return null;
        }
        String str = (String) y1.g.b0(new o2.h("\\s+").d(0, o2.k.E0(strA).toString()));
        if (str == null) {
            return null;
        }
        String lowerCase = str.toLowerCase(Locale.ROOT);
        i2.g.d(lowerCase, "toLowerCase(...)");
        if (lowerCase.length() != 64) {
            return null;
        }
        return Boolean.valueOf(lowerCase.equals("0c9ab49b1ccf83133b3cbcab1cc1d980e97c6472fe9d06f65e2bef07d0737332"));
    }

    public static final Context p(Context context) {
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences("tela_preta_prefs", 0);
            String string = sharedPreferences.getString("theme_mode", null);
            boolean zContains = sharedPreferences.contains("light_mode");
            boolean z2 = sharedPreferences.getBoolean("light_mode", false);
            if (string == null) {
                if (zContains) {
                    string = z2 ? "light" : "dark";
                } else {
                    string = "auto";
                }
            }
            Configuration configuration = context.getResources().getConfiguration();
            int i3 = 32;
            boolean z3 = (configuration.uiMode & 48) == 32;
            if (string.equals("light")) {
                z3 = false;
            } else if (string.equals("dark")) {
                z3 = true;
            }
            if (z3 == ((configuration.uiMode & 48) == 32)) {
                return context;
            }
            Configuration configuration2 = new Configuration(configuration);
            int i4 = configuration2.uiMode & (-49);
            if (!z3) {
                i3 = 16;
            }
            configuration2.uiMode = i4 | i3;
            return context.createConfigurationContext(configuration2);
        } catch (Throwable unused) {
            return context;
        }
    }

    public static String q(byte[] bArr) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        if (bArr.length == 0) {
            throw new IllegalStateException("blob vazio");
        }
        int i3 = bArr[0] & 255;
        if (i3 == 1) {
            return new String(bArr, 1, bArr.length - 1, o2.a.f2622a);
        }
        if (i3 != 2) {
            throw new IllegalStateException("esquema desconhecido: " + (bArr[0] & 255));
        }
        SecretKeySpec secretKeySpecS = s();
        if (secretKeySpecS == null) {
            throw new IllegalStateException("blob cifrado sem semente nativa");
        }
        byte[] bArrW = y1.f.W(bArr, 1, 13);
        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
        cipher.init(2, secretKeySpecS, new GCMParameterSpec(128, bArrW));
        byte[] bArrDoFinal = cipher.doFinal(bArr, 13, bArr.length - 13);
        i2.g.d(bArrDoFinal, "doFinal(...)");
        return new String(bArrDoFinal, o2.a.f2622a);
    }

    public static String r(String str) {
        try {
            byte[] bArrDecode = android.util.Base64.decode(o2.k.E0(str).toString(), 0);
            i2.g.d(bArrDecode, "decode(...)");
            byte[] bytes = "cx-aviso-7k29".getBytes(o2.a.f2622a);
            i2.g.d(bytes, "getBytes(...)");
            int length = bArrDecode.length;
            byte[] bArr = new byte[length];
            for (int i3 = 0; i3 < length; i3++) {
                bArr[i3] = (byte) (bArrDecode[i3] ^ bytes[i3 % bytes.length]);
            }
            return new String(bArr, o2.a.f2622a);
        } catch (Exception unused) {
            return "";
        }
    }

    public static SecretKeySpec s() throws NoSuchAlgorithmException {
        Politica politica = Politica.f1126a;
        byte[] bArrI = Politica.i();
        if (bArrI == null) {
            return null;
        }
        String strQ = Q("ro.serialno");
        if (o2.k.m0(strQ)) {
            strQ = Q("sys.ecarx.xdsn");
        }
        if (o2.k.m0(strQ)) {
            strQ = "exsapo-sem-serial";
        }
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        messageDigest.update(bArrI);
        byte[] bytes = strQ.getBytes(o2.a.f2622a);
        i2.g.d(bytes, "getBytes(...)");
        messageDigest.update(bytes);
        byte[] bArrDigest = messageDigest.digest();
        if (!f3532a) {
            f3532a = true;
            byte[] bArrDigest2 = MessageDigest.getInstance("SHA-256").digest(bArrDigest);
            i2.g.d(bArrDigest2, "digest(...)");
            StringBuilder sbL = androidx.activity.result.b.l("chave derivada do .so — fp=", y1.g.e0(y1.f.f0(4, bArrDigest2), "", new ya(23), 30), " serial=");
            sbL.append(o2.k.D0(6, strQ));
            Log.i("PlaybookStore", sbL.toString());
        }
        return new SecretKeySpec(bArrDigest, "AES");
    }

    public static File t(Context context) {
        File file = new File(context.getFilesDir(), "playbook");
        if (!file.isDirectory()) {
            file.mkdirs();
        }
        return file;
    }

    public static int u(Context context, int i3) {
        return (int) ((i3 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static String v() {
        String strO = O("/data/local/tmp");
        String strO2 = O("/data/local/tmp/apks");
        String strO3 = O("/data/local/tmp/sons");
        String strO4 = O("/data/local/tmp/fixes");
        String strO5 = O("/sdcard/Download");
        String strO6 = O("/storage/emulated/0/Download");
        String strO7 = O("/data/local/tmp/soms");
        StringBuilder sbM = androidx.activity.result.b.m("\n            [ -d ", strO7, " ] && [ ! -d ", strO3, " ] && mv ");
        sbM.append(strO7);
        sbM.append(' ');
        sbM.append(strO3);
        sbM.append(" 2>/dev/null || true\n            for _centdir in ");
        sbM.append(strO);
        sbM.append(' ');
        sbM.append(strO2);
        sbM.append(' ');
        sbM.append(strO3);
        sbM.append(' ');
        sbM.append(strO4);
        sbM.append(' ');
        sbM.append(strO5);
        sbM.append(' ');
        sbM.append(strO6);
        sbM.append("; do\n              mkdir -p \"$_centdir\" 2>/dev/null || true\n              if [ -d \"$_centdir\" ]; then chmod 755 \"$_centdir\" 2>/dev/null || true; fi\n            done\n            for _appdir in ");
        sbM.append(strO2);
        sbM.append(' ');
        sbM.append(strO3);
        sbM.append(' ');
        androidx.activity.result.b.q(sbM, strO4, "; do\n              if [ -d \"$_appdir\" ]; then\n                chown system:system \"$_appdir\" 2>/dev/null || true\n                chmod 775 \"$_appdir\" 2>/dev/null || true\n              fi\n            done\n            for _centf in ", strO4, "/ca_fix*.apk ");
        sbM.append(strO4);
        sbM.append("/central_boot.sh ");
        sbM.append(strO4);
        sbM.append("/central_boot.log; do\n              if [ -f \"$_centf\" ]; then\n                chown system:system \"$_centf\" 2>/dev/null || true\n                chmod 664 \"$_centf\" 2>/dev/null || true\n              fi\n            done\n        ");
        return o2.m.V(sbM.toString());
    }

    public static void w(Context context) {
        i2.g.e(context, "ctx");
        SharedPreferences sharedPreferences = context.getSharedPreferences("tela_preta_prefs", 0);
        Intent intent = new Intent(context, (Class<?>) ModoOficinaTriggerService.class);
        try {
            wd wdVar = wd.f4450a;
            i2.g.b(sharedPreferences);
            if (!sharedPreferences.getBoolean("modo_oficina", false)) {
                context.stopService(intent);
            } else if (ModoOficinaTriggerService.f == null) {
                context.startService(intent);
            }
        } catch (Throwable unused) {
        }
    }

    public static z4 x() {
        Boolean boolO = o();
        boolean zE0 = o2.k.e0(a(6000, "[ -f " + androidx.activity.result.b.i("/data/local/tmp/fixes/pip_overlay_desejado", "'", "'\\''", new StringBuilder("'"), '\'') + " ] && echo SIM"), "SIM", false);
        boolean zB = B();
        if (!(boolO != null ? boolO.booleanValue() : true)) {
            return z4.f4613e;
        }
        if (zE0 && zB) {
            return z4.f4610a;
        }
        if (!zE0 || zB) {
            return zB ? z4.f4612d : z4.f4611c;
        }
        return z4.b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v3, types: [y1.p] */
    public static final void y(ActivityManager activityManager, Set set, h2.l lVar) {
        ?? arrayList;
        ComponentName component;
        String packageName;
        Field field;
        int i3 = 0;
        if (set.isEmpty()) {
            arrayList = y1.p.f4663a;
        } else {
            arrayList = new ArrayList();
            try {
                Class cls = Integer.TYPE;
                Object objInvoke = ActivityManager.class.getMethod("getRecentTasks", cls, cls).invoke(activityManager, 25, 0);
                i2.g.c(objInvoke, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>");
                for (Object obj : (List) objInvoke) {
                    Object obj2 = obj.getClass().getField("baseIntent").get(obj);
                    Intent intent = obj2 instanceof Intent ? (Intent) obj2 : null;
                    if (intent != null && (component = intent.getComponent()) != null && (packageName = component.getPackageName()) != null && set.contains(packageName)) {
                        try {
                            field = obj.getClass().getField("id");
                        } catch (NoSuchFieldException unused) {
                            field = obj.getClass().getField("taskId");
                        }
                        int i4 = field.getInt(obj);
                        if (i4 >= 0) {
                            arrayList.add(Integer.valueOf(i4));
                        }
                    }
                }
            } catch (Throwable th) {
                Log.w("Recentes", "tasksDosPacotes: " + th.getClass().getSimpleName() + ": " + th.getMessage());
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (J(activityManager, ((Number) it.next()).intValue())) {
                i3++;
            }
        }
        Iterator it2 = set.iterator();
        while (it2.hasNext()) {
            lVar.c("am force-stop '" + ((String) it2.next()) + '\'');
        }
        Log.i("Recentes", "fechar(" + y1.g.e0(set, null, null, 63) + "): tasks=" + arrayList.size() + " removidas=" + i3);
    }

    public static PendingIntent z(Context context, String str) {
        Intent action = new Intent(context, (Class<?>) HomeWidgetsPollService.class).setAction(str);
        i2.g.d(action, "setAction(...)");
        PendingIntent service = PendingIntent.getService(context, str.hashCode(), action, 201326592);
        i2.g.d(service, "getService(...)");
        return service;
    }
}
