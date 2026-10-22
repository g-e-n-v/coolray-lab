package com.ex.auto;

import a1.b;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattServer;
import android.bluetooth.BluetoothGattService;
import android.bluetooth.BluetoothManager;
import android.bluetooth.BluetoothServerSocket;
import android.bluetooth.BluetoothSocket;
import android.bluetooth.le.BluetoothLeAdvertiser;
import android.car.Car;
import android.car.hardware.property.CarPropertyManager;
import android.car.media.CarAudioManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.nsd.NsdManager;
import android.net.nsd.NsdServiceInfo;
import android.os.IBinder;
import android.util.Log;
import androidx.fragment.app.q;
import com.ex.auto.PhoneSyncService;
import com.geely.hvacstepperv2.TempStepperService;
import e.l;
import i2.g;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.URLDecoder;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import o2.k;
import o2.t;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import w0.a5;
import w0.ab;
import w0.ae;
import w0.b6;
import w0.be;
import w0.ce;
import w0.d0;
import w0.e8;
import w0.ee;
import w0.ge;
import w0.l1;
import w0.m;
import w0.m3;
import w0.m6;
import w0.n;
import w0.o;
import w0.p1;
import w0.pg;
import w0.qe;
import w0.r0;
import w0.s0;
import w0.t0;
import w0.t1;
import w0.u;
import w0.u0;
import w0.vd;
import w0.wd;
import w0.wg;
import w0.xd;
import w0.xg;
import x1.a;
import y1.f;
import y1.i;
import y1.p;
import y1.r;
import y1.s;

/* JADX INFO: loaded from: classes.dex */
public final class PhoneSyncService extends Service {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static volatile boolean f1102z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile boolean f1103a;
    public ServerSocket b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public BluetoothServerSocket f1104c;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Car f1109i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public volatile CarPropertyManager f1110j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public volatile CarAudioManager f1111k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public volatile xg f1112l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public volatile Integer f1113m;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Integer f1116p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public long f1117q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Integer f1118r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public long f1119s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Boolean f1120t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public long f1121u;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ThreadPoolExecutor f1105d = e(4, "phone-sync-http-client");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ThreadPoolExecutor f1106e = e(3, "phone-sync-bt-client");
    public final ThreadPoolExecutor f = e(1, "phone-sync-shell");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ConcurrentHashMap.KeySetView f1107g = ConcurrentHashMap.newKeySet();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ScheduledExecutorService f1108h = Executors.newSingleThreadScheduledExecutor(new l1(14));

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int[] f1114n = {1, 49, 5, 0};

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final Object f1115o = new Object();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final Object f1122v = s.X(new a("away_lock", new ge(u.f4298m, 0, "Travar ao se afastar", 1, 2)), new a("approach_unlock", new ge(u.f4299n, 0, "Destravar ao aproximar", 1, 2)), new a("tail_approach", new ge(u.f4300o, u.f4301p, "Porta-malas ao aproximar", 1, 2)), new a("speed_auto_lock", new ge(u.f4302q, 0, "Travamento por velocidade", 2, 1)));

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final List f1123w = f.U(new a[]{new a("fl", 1), new a("fr", 4), new a("rl", 16), new a("rr", 64)});

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final List f1124x = f.U(new a[]{new a("fl", 16), new a("fr", 64), new a("rl", 256), new a("rr", 1024)});

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final List f1125y = f.U(new String[]{"connadaptor-log", "connadaptor-logs", "mfi-kernel", "mfi-state", "i2c-mfi", "carplay-diag"});

    public static void D(OutputStream outputStream, int i3, String str) throws IOException {
        String str2;
        Charset charset = StandardCharsets.UTF_8;
        g.d(charset, "UTF_8");
        byte[] bytes = str.getBytes(charset);
        g.d(bytes, "getBytes(...)");
        if (i3 == 200) {
            str2 = "OK";
        } else if (i3 == 413) {
            str2 = "Payload Too Large";
        } else if (i3 != 500) {
            str2 = i3 != 503 ? "Bad Request" : "Service Unavailable";
        } else {
            str2 = "Internal Server Error";
        }
        byte[] bytes2 = ("HTTP/1.1 " + i3 + ' ' + str2 + "\r\nConnection: close\r\nContent-Type: application/json; charset=utf-8\r\nContent-Length: " + bytes.length + "\r\n\r\n").getBytes(charset);
        g.d(bytes2, "getBytes(...)");
        outputStream.write(bytes2);
        outputStream.write(bytes);
        outputStream.flush();
    }

    public static ThreadPoolExecutor e(int i3, String str) {
        return new ThreadPoolExecutor(0, i3, 30L, TimeUnit.SECONDS, new SynchronousQueue(), new androidx.emoji2.text.a(1, str));
    }

    public static JSONObject f(File file) {
        return new JSONObject().put("name", file.getName()).put("sizeKb", (int) ((file.length() + ((long) 1023)) / ((long) 1024)));
    }

    public static JSONObject i(BufferedInputStream bufferedInputStream, String str, long j3) throws JSONException, IOException {
        Object obj;
        String str2;
        List listU0 = k.u0(k.x0(str, '?', ""), new char[]{'&'});
        ArrayList arrayList = new ArrayList();
        Iterator it = listU0.iterator();
        while (true) {
            a aVar = null;
            if (!it.hasNext()) {
                break;
            }
            String str3 = (String) it.next();
            int iJ0 = k.j0(str3, '=', 0, 6);
            if (iJ0 > 0) {
                String strSubstring = str3.substring(0, iJ0);
                g.d(strSubstring, "substring(...)");
                String strSubstring2 = str3.substring(iJ0 + 1);
                g.d(strSubstring2, "substring(...)");
                aVar = new a(strSubstring, strSubstring2);
            }
            if (aVar != null) {
                arrayList.add(aVar);
            }
        }
        int size = arrayList.size();
        int i3 = 0;
        do {
            if (i3 >= size) {
                obj = null;
                break;
            }
            obj = arrayList.get(i3);
            i3++;
        } while (!g.a(((a) obj).f4641a, "filename"));
        a aVar2 = (a) obj;
        String strDecode = (aVar2 == null || (str2 = (String) aVar2.b) == null) ? null : URLDecoder.decode(str2, StandardCharsets.UTF_8.name());
        if (strDecode == null) {
            JSONObject jSONObjectPut = new JSONObject().put("ok", false).put("error", "filename obrigatório");
            g.d(jSONObjectPut, "put(...)");
            return jSONObjectPut;
        }
        String strV = v(strDecode);
        if (strV == null) {
            JSONObject jSONObjectPut2 = new JSONObject().put("ok", false).put("error", "nome inválido (use .wav)");
            g.d(jSONObjectPut2, "put(...)");
            return jSONObjectPut2;
        }
        if (1 > j3 || j3 >= 26214401) {
            if (j3 > 0) {
                p(bufferedInputStream, (int) Math.min(j3, 26214400L));
            }
            JSONObject jSONObjectPut3 = new JSONObject().put("ok", false).put("error", "arquivo vazio ou acima de 25 MB");
            g.d(jSONObjectPut3, "put(...)");
            return jSONObjectPut3;
        }
        byte[] bArrP = p(bufferedInputStream, (int) j3);
        if (bArrP.length != j3) {
            JSONObject jSONObjectPut4 = new JSONObject().put("ok", false).put("error", "upload interrompido");
            g.d(jSONObjectPut4, "put(...)");
            return jSONObjectPut4;
        }
        try {
            m.x(e8.v(), 10000, null, new n(0));
        } catch (Exception unused) {
        }
        try {
            File file = new File("/data/local/tmp/sons");
            if (!file.exists()) {
                file.mkdirs();
            }
            File file2 = new File(file, strV);
            FileOutputStream fileOutputStream = new FileOutputStream(file2, false);
            try {
                fileOutputStream.write(bArrP);
                fileOutputStream.close();
                file2.setReadable(true, false);
                Log.i("PhoneSyncService", "avas_sound salvo: " + strV + " (" + bArrP.length + " bytes)");
                return new JSONObject().put("ok", true).put("message", "Som enviado: " + strV + " — abra o AvasSomAtivador no carro para aplicar");
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    b.p(fileOutputStream, th);
                    throw th2;
                }
            }
        } catch (Exception e3) {
            JSONObject jSONObjectPut5 = new JSONObject().put("ok", false);
            String message = e3.getMessage();
            if (message == null) {
                message = e3.getClass().getSimpleName();
            }
            return jSONObjectPut5.put("error", message);
        }
    }

    public static final JSONArray j(long j3, ArrayList arrayList, String str) {
        JSONArray jSONArray = new JSONArray();
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            try {
                JSONObject jSONObjectOptJSONObject = new JSONObject((String) obj).optJSONObject(str);
                if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.optLong("endMs", 0L) >= j3) {
                    jSONArray.put(jSONObjectOptJSONObject);
                }
            } catch (Exception unused) {
            }
        }
        return jSONArray;
    }

    public static final String l(String str, String str2) {
        Object obj;
        String str3;
        int i3 = 0;
        List listU0 = k.u0(str, new char[]{'&'});
        ArrayList arrayList = new ArrayList();
        Iterator it = listU0.iterator();
        while (true) {
            a aVar = null;
            if (!it.hasNext()) {
                break;
            }
            String str4 = (String) it.next();
            int iJ0 = k.j0(str4, '=', 0, 6);
            if (iJ0 > 0) {
                String strSubstring = str4.substring(0, iJ0);
                g.d(strSubstring, "substring(...)");
                String strSubstring2 = str4.substring(iJ0 + 1);
                g.d(strSubstring2, "substring(...)");
                aVar = new a(strSubstring, strSubstring2);
            }
            if (aVar != null) {
                arrayList.add(aVar);
            }
        }
        int size = arrayList.size();
        do {
            if (i3 >= size) {
                obj = null;
                break;
            }
            obj = arrayList.get(i3);
            i3++;
        } while (!g.a(((a) obj).f4641a, str2));
        a aVar2 = (a) obj;
        if (aVar2 == null || (str3 = (String) aVar2.b) == null) {
            return null;
        }
        return URLDecoder.decode(str3, StandardCharsets.UTF_8.name());
    }

    public static Set n(JSONArray jSONArray) {
        if (jSONArray == null) {
            return r.f4665a;
        }
        HashSet hashSet = new HashSet();
        int length = jSONArray.length();
        for (int i3 = 0; i3 < length; i3++) {
            String strOptString = jSONArray.optString(i3, "");
            g.b(strOptString);
            if (k.m0(strOptString)) {
                strOptString = null;
            }
            if (strOptString != null) {
                hashSet.add(strOptString);
            }
        }
        return hashSet;
    }

    public static byte[] p(BufferedInputStream bufferedInputStream, int i3) throws IOException {
        byte[] bArr = new byte[i3];
        int i4 = 0;
        while (i4 < i3) {
            int i5 = bufferedInputStream.read(bArr, i4, i3 - i4);
            if (i5 < 0) {
                throw new EOFException("Incomplete request body");
            }
            i4 += i5;
        }
        if (i4 == i3) {
            return bArr;
        }
        byte[] bArrCopyOf = Arrays.copyOf(bArr, i4);
        g.d(bArrCopyOf, "copyOf(...)");
        return bArrCopyOf;
    }

    public static String q(BufferedReader bufferedReader) throws IOException {
        StringBuilder sb = new StringBuilder();
        while (true) {
            int i3 = bufferedReader.read();
            if (i3 == -1) {
                if (sb.length() == 0) {
                    return null;
                }
                throw new EOFException("Incomplete Bluetooth message");
            }
            if (i3 == 10) {
                return sb.toString();
            }
            if (sb.length() >= 1048576) {
                throw new IOException("Bluetooth message too large");
            }
            if (i3 != 13) {
                sb.append((char) i3);
            }
        }
    }

    public static String s(BufferedInputStream bufferedInputStream) throws IOException {
        ArrayList arrayList = new ArrayList(128);
        do {
            int i3 = bufferedInputStream.read();
            if (i3 == -1 || i3 == 10) {
                byte[] bArr = new byte[arrayList.size()];
                int size = arrayList.size();
                int i4 = 0;
                int i5 = 0;
                while (i5 < size) {
                    Object obj = arrayList.get(i5);
                    i5++;
                    bArr[i4] = ((Number) obj).byteValue();
                    i4++;
                }
                Charset charset = StandardCharsets.UTF_8;
                g.d(charset, "UTF_8");
                return new String(bArr, charset);
            }
            if (i3 != 13) {
                arrayList.add(Byte.valueOf((byte) i3));
            }
        } while (arrayList.size() <= 8192);
        throw new IOException("HTTP line too large");
    }

    public static JSONObject t(String str, boolean z2) throws JSONException {
        JSONObject jSONObjectPut = new JSONObject().put("ok", z2).put("message", str);
        g.d(jSONObjectPut, "put(...)");
        return jSONObjectPut;
    }

    public static String v(String str) {
        int length;
        String strZ0 = k.z0(k.z0(k.E0(str).toString(), '/'), '\\');
        Pattern patternCompile = Pattern.compile("[^A-Za-z0-9._-]");
        g.d(patternCompile, "compile(...)");
        String strReplaceAll = patternCompile.matcher(strZ0).replaceAll("_");
        g.d(strReplaceAll, "replaceAll(...)");
        String lowerCase = strReplaceAll.toLowerCase(Locale.ROOT);
        g.d(lowerCase, "toLowerCase(...)");
        if (!t.Z(lowerCase, ".wav", false) || 5 > (length = strReplaceAll.length()) || length >= 121 || t.d0(strReplaceAll, ".")) {
            return null;
        }
        return strReplaceAll;
    }

    public final JSONObject A(String str, String str2, Map map) throws JSONException {
        try {
            this.f.execute(new a1.g(this, str, map, 22));
            JSONObject jSONObjectPut = new JSONObject().put("ok", true).put("accepted", true).put("confirmed", false).put("message", str2);
            g.d(jSONObjectPut, "put(...)");
            return jSONObjectPut;
        } catch (RejectedExecutionException unused) {
            JSONObject jSONObjectPut2 = new JSONObject().put("ok", false).put("error", "operation already running");
            g.d(jSONObjectPut2, "put(...)");
            return jSONObjectPut2;
        }
    }

    public final void B(String str, Object obj, long j3) {
        if (j3 <= 0) {
            j3 = System.currentTimeMillis();
        }
        synchronized (this.f1115o) {
            try {
                int iHashCode = str.hashCode();
                if (iHashCode != 3106) {
                    if (iHashCode != 101139) {
                        if (iHashCode == 3556308 && str.equals("temp")) {
                            this.f1118r = (Integer) obj;
                            this.f1119s = j3;
                        }
                    } else if (str.equals("fan")) {
                        this.f1116p = (Integer) obj;
                        this.f1117q = j3;
                    }
                } else if (str.equals("ac")) {
                    this.f1120t = (Boolean) obj;
                    this.f1121u = j3;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final JSONObject C() throws JSONException {
        wg wgVarB = VhalProviderService.b(1500L);
        if (wgVarB == null) {
            try {
                xg xgVar = this.f1112l;
                wgVarB = xgVar != null ? xgVar.b() : null;
            } catch (Exception unused) {
            }
            if (wgVarB == null) {
                return null;
            }
        }
        JSONObject jSONObject = new JSONObject();
        Float f = wgVarB.f4457a;
        if (f != null) {
            jSONObject.put("speedKmh", Float.valueOf(f.floatValue()));
        }
        Integer num = wgVarB.b;
        if (num != null) {
            jSONObject.put("gear", num.intValue());
        }
        String str = wgVarB.f4458c;
        if (str != null) {
            jSONObject.put("gearLabel", str);
        }
        Float f3 = wgVarB.f4459d;
        if (f3 != null) {
            jSONObject.put("socPct", Float.valueOf(f3.floatValue()));
        }
        Float f4 = wgVarB.f4460e;
        if (f4 != null) {
            jSONObject.put("rangeKm", Float.valueOf(f4.floatValue()));
        }
        Float f5 = wgVarB.f;
        if (f5 != null) {
            jSONObject.put("odometerKm", Float.valueOf(f5.floatValue()));
        }
        Float f6 = wgVarB.f4461g;
        if (f6 != null) {
            jSONObject.put("instPowerKw", Float.valueOf(f6.floatValue()));
        }
        Float f7 = wgVarB.f4470p;
        if (f7 != null) {
            jSONObject.put("outsideTempC", Float.valueOf(f7.floatValue()));
        }
        Float f8 = wgVarB.f4471q;
        if (f8 != null) {
            jSONObject.put("aux12vVolt", Float.valueOf(f8.floatValue()));
        }
        Boolean bool = wgVarB.f4467m;
        if (bool != null) {
            jSONObject.put("acOn", bool.booleanValue());
        }
        Integer num2 = wgVarB.f4468n;
        if (num2 != null) {
            jSONObject.put("acFanLevel", num2.intValue());
        }
        Float f9 = wgVarB.f4469o;
        if (f9 != null) {
            jSONObject.put("hvacTempSetC", Float.valueOf(f9.floatValue()));
        }
        Float f10 = wgVarB.G;
        if (f10 != null) {
            jSONObject.put("chargeKw", Float.valueOf(f10.floatValue()));
        }
        Boolean bool2 = wgVarB.E;
        if (bool2 != null) {
            jSONObject.put("charging", bool2.booleanValue());
        }
        Boolean bool3 = wgVarB.F;
        if (bool3 != null) {
            jSONObject.put("dcfc", bool3.booleanValue());
        }
        Integer num3 = wgVarB.f4472r;
        if (num3 != null) {
            jSONObject.put("ignicao", num3.intValue());
        }
        Integer num4 = wgVarB.f4462h;
        if (num4 != null) {
            jSONObject.put("consumoMedio100Raw", num4.intValue());
        }
        Integer num5 = wgVarB.f4463i;
        if (num5 != null) {
            jSONObject.put("potMediaIpkRaw", num5.intValue());
        }
        Integer num6 = wgVarB.f4464j;
        if (num6 != null) {
            jSONObject.put("odoEvdtRaw", num6.intValue());
        }
        Float f11 = wgVarB.f4473s;
        if (f11 != null) {
            jSONObject.put("tripAKm", Float.valueOf(f11.floatValue()));
        }
        Float f12 = wgVarB.f4474t;
        if (f12 != null) {
            jSONObject.put("tripBKm", Float.valueOf(f12.floatValue()));
        }
        Integer num7 = wgVarB.f4475u;
        if (num7 != null) {
            jSONObject.put("tripATempoRaw", num7.intValue());
        }
        Integer num8 = wgVarB.f4476v;
        if (num8 != null) {
            jSONObject.put("tripBTempoRaw", num8.intValue());
        }
        Float f13 = wgVarB.f4477w;
        if (f13 != null) {
            jSONObject.put("tripAVelMediaKmh", Float.valueOf(f13.floatValue()));
        }
        Float f14 = wgVarB.f4478x;
        if (f14 != null) {
            jSONObject.put("tripBVelMediaKmh", Float.valueOf(f14.floatValue()));
        }
        Boolean bool4 = wgVarB.H;
        if (bool4 != null) {
            jSONObject.put("vhalLive", bool4.booleanValue());
        }
        String str2 = wgVarB.I;
        if (str2 != null && !g.a(str2, "unknown")) {
            jSONObject.put("carId", wgVarB.I);
        }
        if (jSONObject.length() > 0) {
            return jSONObject;
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:59:0x0142 A[Catch: Exception -> 0x00a3, TryCatch #0 {Exception -> 0x00a3, blocks: (B:18:0x007a, B:22:0x0085, B:25:0x008f, B:28:0x00a6, B:31:0x00b0, B:32:0x00c4, B:35:0x00ce, B:36:0x00e2, B:39:0x00ec, B:41:0x00f2, B:43:0x0100, B:42:0x00fb, B:44:0x0107, B:46:0x010f, B:49:0x0120, B:52:0x0129, B:53:0x012e, B:59:0x0142, B:56:0x0138, B:60:0x014b, B:63:0x0155, B:64:0x016b, B:67:0x0175, B:68:0x018c, B:99:0x021a, B:71:0x0196, B:74:0x01a0, B:76:0x01a6, B:78:0x01b4, B:77:0x01af, B:79:0x01bb, B:82:0x01c5, B:83:0x01e0, B:86:0x01e9, B:89:0x01fc, B:92:0x0204, B:93:0x0208, B:96:0x0211), top: B:104:0x007a }] */
    /* JADX WARN: Code duplicated, block: B:99:0x021a A[Catch: Exception -> 0x00a3, TRY_LEAVE, TryCatch #0 {Exception -> 0x00a3, blocks: (B:18:0x007a, B:22:0x0085, B:25:0x008f, B:28:0x00a6, B:31:0x00b0, B:32:0x00c4, B:35:0x00ce, B:36:0x00e2, B:39:0x00ec, B:41:0x00f2, B:43:0x0100, B:42:0x00fb, B:44:0x0107, B:46:0x010f, B:49:0x0120, B:52:0x0129, B:53:0x012e, B:59:0x0142, B:56:0x0138, B:60:0x014b, B:63:0x0155, B:64:0x016b, B:67:0x0175, B:68:0x018c, B:99:0x021a, B:71:0x0196, B:74:0x01a0, B:76:0x01a6, B:78:0x01b4, B:77:0x01af, B:79:0x01bb, B:82:0x01c5, B:83:0x01e0, B:86:0x01e9, B:89:0x01fc, B:92:0x0204, B:93:0x0208, B:96:0x0211), top: B:104:0x007a }] */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final JSONObject a(JSONObject jSONObject) throws JSONException {
        String strOptString = jSONObject.optString("key");
        ee eeVar = ee.f3548a;
        g.b(strOptString);
        be beVar = (be) ee.f3549c.get(strOptString);
        if (beVar == null) {
            JSONObject jSONObjectPut = new JSONObject().put("ok", false).put("error", "chave desconhecida: ".concat(strOptString));
            g.d(jSONObjectPut, "put(...)");
            return jSONObjectPut;
        }
        SharedPreferences sharedPreferencesA = beVar.f3403c == ce.b ? ee.a(this) : ee.c(this);
        int iOrdinal = beVar.b.ordinal();
        if (iOrdinal == 0) {
            sharedPreferencesA.edit().putBoolean(strOptString, jSONObject.optBoolean("value")).apply();
        } else {
            if (iOrdinal != 1) {
                throw new q();
            }
            sharedPreferencesA.edit().putInt(strOptString, jSONObject.optInt("value")).apply();
        }
        SharedPreferences sharedPreferencesC = ee.c(this);
        try {
            switch (strOptString.hashCode()) {
                case -1383138571:
                    if (strOptString.equals("hvac_digital_batt")) {
                        Thread thread = new Thread(new ab(this, 6, sharedPreferencesC));
                        thread.setDaemon(true);
                        thread.start();
                    }
                    break;
                case -1382598710:
                    if (strOptString.equals("hvac_digital_temp")) {
                        Thread thread2 = new Thread(new ab(this, 6, sharedPreferencesC));
                        thread2.setDaemon(true);
                        thread2.start();
                    }
                    break;
                case -1120513032:
                    if (strOptString.equals("quick_access_enabled")) {
                        boolean z2 = sharedPreferencesC.getBoolean(strOptString, false);
                        int i3 = QuickAccessFloaterService.t0;
                        boolean z3 = QuickAccessFloaterService.y0;
                        Intent intent = new Intent(this, (Class<?>) QuickAccessFloaterService.class);
                        if (z2 && !z3) {
                            startForegroundService(intent);
                        } else if (!z2 && z3) {
                            stopService(intent);
                        }
                    }
                    break;
                case -953601624:
                    if (strOptString.equals("floater_alpha")) {
                        sendBroadcast(new Intent("UPDATE_FLOATER_ALPHA").putExtra("alpha", ee.a(this).getInt(strOptString, 100)));
                    }
                    break;
                case -449068059:
                    if (strOptString.equals("status_temp_ext_enabled")) {
                        if (sharedPreferencesC.getBoolean(strOptString, false)) {
                            startForegroundService(new Intent(this, (Class<?>) CentralWatchdogService.class));
                        } else {
                            int i4 = pg.f4073a;
                            pg.e(this);
                        }
                        int[] iArr = CentralWatchdogService.S2;
                        t1.W();
                    }
                    break;
                case -27285464:
                    if (strOptString.equals("hvac_digital_ext_temp")) {
                        Thread thread3 = new Thread(new ab(this, 6, sharedPreferencesC));
                        thread3.setDaemon(true);
                        thread3.start();
                    }
                    break;
                case 9535899:
                    if (strOptString.equals("avas_muted_saved")) {
                        Thread thread4 = new Thread(new d0(this, sharedPreferencesC.getBoolean(strOptString, false), 3));
                        thread4.setDaemon(true);
                        thread4.start();
                    }
                    break;
                case 265856781:
                    if (strOptString.equals("telemetry_autostart")) {
                        boolean z4 = sharedPreferencesC.getBoolean(strOptString, false);
                        sharedPreferencesC.edit().putBoolean("telemetry_on", z4).apply();
                        VhalProviderService.c(this, z4);
                    }
                    break;
                case 397683154:
                    if (strOptString.equals("saved_drive")) {
                        int[] iArr2 = CentralWatchdogService.S2;
                        t1.Y("quick_access");
                    }
                    break;
                case 410222725:
                    if (strOptString.equals("saved_regen")) {
                        int[] iArr3 = CentralWatchdogService.S2;
                        t1.Y("quick_access");
                    }
                    break;
                case 771455812:
                    if (strOptString.equals("hvac_stepper_enabled")) {
                        boolean z5 = sharedPreferencesC.getBoolean(strOptString, false);
                        boolean z6 = TempStepperService.f1287e0;
                        Intent intent2 = new Intent(this, (Class<?>) TempStepperService.class);
                        if (z5 && !z6) {
                            startForegroundService(intent2);
                        } else if (!z5 && z6) {
                            stopService(intent2);
                        }
                    }
                    break;
                case 869369026:
                    if (strOptString.equals("status_battery_enabled")) {
                        if (sharedPreferencesC.getBoolean(strOptString, false)) {
                            startForegroundService(new Intent(this, (Class<?>) CentralWatchdogService.class));
                        } else {
                            int i5 = pg.f4073a;
                            pg.d(this);
                        }
                        int[] iArr4 = CentralWatchdogService.S2;
                        t1.W();
                    }
                    break;
                case 1288791589:
                    if (strOptString.equals("rvc_black_bg")) {
                        Thread thread5 = new Thread(new a1.g(sharedPreferencesC, strOptString, this, 23));
                        thread5.setDaemon(true);
                        thread5.start();
                    }
                    break;
                case 1811894309:
                    if (strOptString.equals("auto_route_on_aa_connect")) {
                        startService(new Intent(this, (Class<?>) CentralWatchdogService.class).putExtra("auto_route_changed", sharedPreferencesC.getBoolean(strOptString, false)));
                    }
                    break;
                case 1869561824:
                    if (strOptString.equals("auto_proxy_enabled")) {
                        startService(new Intent(this, (Class<?>) CentralWatchdogService.class).putExtra("auto_proxy_changed", sharedPreferencesC.getBoolean(strOptString, false)));
                    }
                    break;
            }
        } catch (Exception e3) {
            StringBuilder sbL = androidx.activity.result.b.l("applySideEffect(", strOptString, "): ");
            sbL.append(e3.getMessage());
            Log.e("PhoneSyncService", sbL.toString());
        }
        StringBuilder sbL2 = androidx.activity.result.b.l("set_setting ativo: ", strOptString, " = ");
        sbL2.append(jSONObject.opt("value"));
        Log.i("PhoneSyncService", sbL2.toString());
        return t("Config " + strOptString + " aplicada", true);
    }

    public final ArrayList b() {
        List<String> listU = f.U(new String[]{"central_events.log", "central_boot.log", "central_logtail.log"});
        ArrayList arrayList = new ArrayList(i.X(listU));
        for (String str : listU) {
            File externalFilesDir = getExternalFilesDir(null);
            if (externalFilesDir == null) {
                externalFilesDir = getFilesDir();
                g.d(externalFilesDir, "getFilesDir(...)");
            }
            arrayList.add(new File(externalFilesDir, str));
        }
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            if (((File) obj).isFile()) {
                arrayList2.add(obj);
            }
        }
        return arrayList2;
    }

    public final List c() {
        List<String> list;
        try {
            File[] fileArrListFiles = new File("/storage/emulated/0/Download").listFiles();
            if (fileArrListFiles != null) {
                ArrayList arrayList = new ArrayList();
                for (File file : fileArrListFiles) {
                    if (file.isFile() && ((list = this.f1125y) == null || !list.isEmpty())) {
                        for (String str : list) {
                            String name = file.getName();
                            g.d(name, "getName(...)");
                            g.e(str, "prefix");
                            if (t.b0(0, 0, str.length(), name, str, true)) {
                                arrayList.add(file);
                                break;
                            }
                        }
                    }
                }
                return y1.g.i0(arrayList, new b6(10));
            }
        } catch (Throwable unused) {
        }
        return p.f4663a;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:50:0x0150  */
    /* JADX WARN: Code duplicated, block: B:76:0x01c3  */
    /* JADX WARN: Type inference failed for: r5v21, types: [java.lang.Object, java.util.Map] */
    public final JSONObject d() throws JSONException {
        JSONObject jSONObject;
        JSONObject jSONObject2;
        JSONObject jSONObject3;
        ee eeVar = ee.f3548a;
        String str = "?";
        try {
            String str2 = getPackageManager().getPackageInfo(getPackageName(), 0).versionName;
            if (str2 != null) {
                str = str2;
            }
        } catch (Exception unused) {
        }
        JSONObject jSONObject4 = new JSONObject();
        for (be beVar : ee.b) {
            ce ceVar = beVar.f3403c;
            String str3 = beVar.f3402a;
            SharedPreferences sharedPreferencesA = ceVar == ce.b ? ee.a(this) : ee.c(this);
            JSONObject jSONObject5 = new JSONObject();
            int iOrdinal = beVar.b.ordinal();
            if (iOrdinal == 0) {
                jSONObject5.put("v", sharedPreferencesA.getBoolean(str3, false));
            } else {
                if (iOrdinal != 1) {
                    throw new q();
                }
                jSONObject5.put("v", sharedPreferencesA.getInt(str3, beVar.f3404d));
            }
            SharedPreferences sharedPreferences = getSharedPreferences("phone_sync_meta", 0);
            g.d(sharedPreferences, "getSharedPreferences(...)");
            jSONObject5.put("t", sharedPreferences.getLong(str3, 0L));
            jSONObject4.put(str3, jSONObject5);
        }
        JSONObject jSONObjectPut = new JSONObject().put("protocol", 1).put("device", "central").put("time", System.currentTimeMillis()).put("version", str).put("settings", jSONObject4);
        g.d(jSONObjectPut, "put(...)");
        u0 u0Var = u0.f4312a;
        jSONObjectPut.put("bleSegredoHex", f.b0(u0.f(this), new o(13)));
        JSONObject jSONObjectC = C();
        if (jSONObjectC != null) {
            jSONObjectPut.put("telemetry", jSONObjectC);
        }
        CarPropertyManager carPropertyManager = this.f1110j;
        JSONObject jSONObject6 = null;
        if (carPropertyManager == null) {
            jSONObject = null;
        } else {
            jSONObject = new JSONObject();
            AtomicInteger atomicInteger = p1.f4042a;
            int i3 = u.f4290d;
            Float fB = p1.b(carPropertyManager, i3, 1);
            if (fB != null) {
                jSONObject.put("driverTemp", Float.valueOf(fB.floatValue()));
            }
            Float fB2 = p1.b(carPropertyManager, i3, 4);
            if (fB2 != null) {
                jSONObject.put("passengerTemp", Float.valueOf(fB2.floatValue()));
            }
            Integer numR = r();
            if (numR != null) {
                jSONObject.put("fanLevel", numR.intValue());
            }
            Boolean boolO = o();
            if (boolO != null) {
                jSONObject.put("acOn", boolO.booleanValue());
            }
            synchronized (this.f1115o) {
                jSONObject.put("fanTs", this.f1117q);
                jSONObject.put("tempTs", this.f1119s);
                jSONObject.put("acTs", this.f1121u);
            }
            if (jSONObject.length() <= 0) {
                jSONObject = null;
            }
        }
        if (jSONObject != null) {
            jSONObjectPut.put("hvac", jSONObject);
        }
        CarPropertyManager carPropertyManager2 = this.f1110j;
        if (carPropertyManager2 == null) {
            jSONObject2 = null;
        } else {
            jSONObject2 = new JSONObject();
            AtomicInteger atomicInteger2 = p1.f4042a;
            Integer numC = p1.c(carPropertyManager2, u.f4303r, 0);
            if (numC != null) {
                jSONObject2.put("locked", numC.intValue() == 1);
            }
            JSONObject jSONObject7 = new JSONObject();
            boolean z2 = false;
            for (a aVar : this.f1123w) {
                String str4 = (String) aVar.f4641a;
                Integer numC2 = p1.c(carPropertyManager2, 373295872, ((Number) aVar.b).intValue());
                if (numC2 != null) {
                    jSONObject7.put(str4, numC2.intValue() == 1);
                    z2 = true;
                }
            }
            if (z2) {
                jSONObject2.put("open", jSONObject7);
            }
            if (jSONObject2.length() <= 0) {
                jSONObject2 = null;
            }
        }
        if (jSONObject2 != null) {
            jSONObjectPut.put("doors", jSONObject2);
        }
        CarPropertyManager carPropertyManager3 = this.f1110j;
        if (carPropertyManager3 == null) {
            jSONObject3 = null;
        } else {
            jSONObject3 = new JSONObject();
            boolean z3 = false;
            for (a aVar2 : this.f1124x) {
                String str5 = (String) aVar2.f4641a;
                Integer numC3 = p1.c(carPropertyManager3, 322964416, ((Number) aVar2.b).intValue());
                if (numC3 != null) {
                    jSONObject3.put(str5, numC3.intValue());
                    z3 = true;
                }
            }
            if (!z3) {
                jSONObject3 = null;
            }
        }
        if (jSONObject3 != null) {
            jSONObjectPut.put("windows", jSONObject3);
        }
        CarPropertyManager carPropertyManager4 = this.f1110j;
        if (carPropertyManager4 != null) {
            JSONObject jSONObject8 = new JSONObject();
            boolean z4 = false;
            for (Map.Entry entry : this.f1122v.entrySet()) {
                String str6 = (String) entry.getKey();
                ge geVar = (ge) entry.getValue();
                AtomicInteger atomicInteger3 = p1.f4042a;
                Integer numC4 = p1.c(carPropertyManager4, geVar.f3640a, geVar.b);
                if (numC4 != null) {
                    jSONObject8.put(str6, numC4.intValue() != geVar.f3643e);
                    z4 = true;
                }
            }
            if (z4) {
                jSONObject6 = jSONObject8;
            }
        }
        if (jSONObject6 != null) {
            jSONObjectPut.put("presence", jSONObject6);
        }
        return jSONObjectPut;
    }

    public final void g(Closeable closeable, ThreadPoolExecutor threadPoolExecutor, h2.a aVar) {
        ConcurrentHashMap.KeySetView keySetView = this.f1107g;
        keySetView.add(closeable);
        try {
            threadPoolExecutor.execute(new a1.g(this, aVar, closeable, 24));
        } catch (RejectedExecutionException unused) {
            keySetView.remove(closeable);
            try {
                if (closeable instanceof Socket) {
                    OutputStream outputStream = ((Socket) closeable).getOutputStream();
                    g.d(outputStream, "getOutputStream(...)");
                    D(outputStream, 503, "{\"ok\":false,\"error\":\"busy\"}");
                } else if (closeable instanceof BluetoothSocket) {
                    OutputStream outputStream2 = ((BluetoothSocket) closeable).getOutputStream();
                    Charset charset = StandardCharsets.UTF_8;
                    g.d(charset, "UTF_8");
                    byte[] bytes = "{\"ok\":false,\"error\":\"busy\"}\n".getBytes(charset);
                    g.d(bytes, "getBytes(...)");
                    outputStream2.write(bytes);
                    outputStream2.flush();
                }
            } catch (Exception unused2) {
            }
            try {
                closeable.close();
            } catch (Exception unused3) {
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:140:0x02a0 A[Catch: Exception -> 0x0194, TryCatch #1 {Exception -> 0x0194, blocks: (B:51:0x0139, B:55:0x0146, B:58:0x0150, B:75:0x018a, B:81:0x019e, B:61:0x0161, B:64:0x016a, B:67:0x0173, B:68:0x0176, B:70:0x017c, B:73:0x0185, B:82:0x01a4, B:85:0x01ae, B:86:0x01b7, B:89:0x01c1, B:91:0x01c9, B:94:0x01d5, B:95:0x01db, B:96:0x01e9, B:99:0x01f3, B:101:0x01f9, B:102:0x01fc, B:103:0x0204, B:106:0x020e, B:121:0x0241, B:112:0x0224, B:114:0x022b, B:117:0x0237, B:122:0x0247, B:125:0x0251, B:126:0x0260, B:129:0x026a, B:145:0x02b4, B:146:0x02bd, B:132:0x0285, B:134:0x028c, B:137:0x0297, B:138:0x029a, B:140:0x02a0, B:142:0x02a8, B:143:0x02af, B:147:0x02d4, B:150:0x02de, B:152:0x02e6, B:153:0x02ee, B:154:0x02fe, B:157:0x0308, B:158:0x0312, B:161:0x031a, B:162:0x0329, B:167:0x0338, B:172:0x0345, B:176:0x034e, B:177:0x035a, B:180:0x0364, B:181:0x036a, B:184:0x0374, B:186:0x0383, B:191:0x0393, B:187:0x0388, B:192:0x039c, B:195:0x03a6, B:197:0x03d6, B:203:0x03f3, B:204:0x03fe, B:198:0x03e0, B:200:0x03e8, B:201:0x03ed, B:205:0x041d, B:208:0x0426, B:209:0x045a, B:212:0x0463, B:213:0x0487, B:216:0x04a2, B:218:0x04ae, B:219:0x04cc, B:215:0x048f), top: B:228:0x0139 }] */
    /* JADX WARN: Code duplicated, block: B:143:0x02af A[Catch: Exception -> 0x0194, LOOP:3: B:139:0x029e->B:143:0x02af, LOOP_END, TryCatch #1 {Exception -> 0x0194, blocks: (B:51:0x0139, B:55:0x0146, B:58:0x0150, B:75:0x018a, B:81:0x019e, B:61:0x0161, B:64:0x016a, B:67:0x0173, B:68:0x0176, B:70:0x017c, B:73:0x0185, B:82:0x01a4, B:85:0x01ae, B:86:0x01b7, B:89:0x01c1, B:91:0x01c9, B:94:0x01d5, B:95:0x01db, B:96:0x01e9, B:99:0x01f3, B:101:0x01f9, B:102:0x01fc, B:103:0x0204, B:106:0x020e, B:121:0x0241, B:112:0x0224, B:114:0x022b, B:117:0x0237, B:122:0x0247, B:125:0x0251, B:126:0x0260, B:129:0x026a, B:145:0x02b4, B:146:0x02bd, B:132:0x0285, B:134:0x028c, B:137:0x0297, B:138:0x029a, B:140:0x02a0, B:142:0x02a8, B:143:0x02af, B:147:0x02d4, B:150:0x02de, B:152:0x02e6, B:153:0x02ee, B:154:0x02fe, B:157:0x0308, B:158:0x0312, B:161:0x031a, B:162:0x0329, B:167:0x0338, B:172:0x0345, B:176:0x034e, B:177:0x035a, B:180:0x0364, B:181:0x036a, B:184:0x0374, B:186:0x0383, B:191:0x0393, B:187:0x0388, B:192:0x039c, B:195:0x03a6, B:197:0x03d6, B:203:0x03f3, B:204:0x03fe, B:198:0x03e0, B:200:0x03e8, B:201:0x03ed, B:205:0x041d, B:208:0x0426, B:209:0x045a, B:212:0x0463, B:213:0x0487, B:216:0x04a2, B:218:0x04ae, B:219:0x04cc, B:215:0x048f), top: B:228:0x0139 }] */
    /* JADX WARN: Code duplicated, block: B:236:0x0283 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:237:0x02a8 A[SYNTHETIC] */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final JSONObject h(String str, JSONObject jSONObject) throws JSONException {
        int[] iArr;
        int length;
        int i3;
        int i4;
        boolean z2;
        y1.q qVar = y1.q.f4664a;
        boolean zOptBoolean = true;
        switch (str.hashCode()) {
            case -1422950858:
                if (str.equals("action")) {
                    String strOptString = jSONObject != null ? jSONObject.optString("name") : null;
                    String str2 = "";
                    if (strOptString == null) {
                        strOptString = "";
                    }
                    try {
                        switch (strOptString.hashCode()) {
                            case -1950600976:
                                if (strOptString.equals("aa_restart")) {
                                    int[] iArr2 = CentralWatchdogService.S2;
                                    return t1.q("aa_restart (celular)") == a5.b ? new JSONObject().put("ok", false).put("error", "projecao_em_curso").put("message", getString(R.string.k_reiniciar_ap0_em_uso)) : A("rede.reiniciarAa", "Reinício AA/CarPlay enviado", qVar);
                                }
                                break;
                            case -1855980398:
                                if (strOptString.equals("proxy_ready")) {
                                    g.b(jSONObject);
                                    String strOptString2 = jSONObject.optString("ip");
                                    int iOptInt = jSONObject.optInt("port", 8080);
                                    String strOptString3 = jSONObject.optString("state", "up");
                                    int[] iArr3 = CentralWatchdogService.S2;
                                    g.b(strOptString2);
                                    g.b(strOptString3);
                                    return t1.d0(strOptString2, iOptInt, strOptString3);
                                }
                                break;
                                break;
                            case -1658020302:
                                if (strOptString.equals("aa_activate")) {
                                    SharedPreferences sharedPreferences = getSharedPreferences("tela_preta_prefs", 0);
                                    g.d(sharedPreferences, "getSharedPreferences(...)");
                                    String strD = u.d(sharedPreferences);
                                    return A("rede.ativarConnAdaptor", "Ativação AA/CarPlay enviada", s.X(new a("caApk", strD), new a("caMd5", t1.w(strD))));
                                }
                                break;
                                break;
                            case -1376766144:
                                if (strOptString.equals("hvac_set_temp")) {
                                    g.b(jSONObject);
                                    long jOptLong = jSONObject.optLong("t", 0L);
                                    float fRound = Math.round(k1.a.j((float) jSONObject.optDouble("temp", 22.0d), 17.0f, 32.0f) * 2.0f) / 2.0f;
                                    String strOptString4 = jSONObject.optString("zone", "driver");
                                    boolean z3 = g.a(strOptString4, "both") ? z(1, fRound) | z(4, fRound) : g.a(strOptString4, "passenger") ? z(4, fRound) : z(1, fRound);
                                    if (z3) {
                                        B("temp", Integer.valueOf(Math.round(fRound)), jOptLong);
                                    }
                                    return t("Temperatura " + strOptString4 + " → " + fRound + " °C", z3);
                                }
                                break;
                                break;
                            case -1276666629:
                                if (strOptString.equals("presence")) {
                                    g.b(jSONObject);
                                    String strOptString5 = jSONObject.optString("key");
                                    if (jSONObject.has("on")) {
                                        zOptBoolean = jSONObject.optBoolean("on");
                                    } else if (jSONObject.optInt("value", 2) != 1) {
                                        zOptBoolean = false;
                                    }
                                    g.b(strOptString5);
                                    return y(strOptString5, zOptBoolean);
                                }
                                break;
                                break;
                            case -1224310608:
                                if (strOptString.equals("list_logs")) {
                                    return m();
                                }
                                break;
                                break;
                            case -1092342563:
                                if (strOptString.equals("stream_offer")) {
                                    String str3 = "pip";
                                    String strOptString6 = jSONObject != null ? jSONObject.optString("display", "pip") : null;
                                    if (strOptString6 != null) {
                                        str2 = strOptString6;
                                    }
                                    if (str2.length() != 0) {
                                        str3 = str2;
                                    }
                                    return t(m.b.r(this, str3), true);
                                }
                                break;
                            case -934938715:
                                if (strOptString.equals("reboot")) {
                                    ae aeVar = ae.f3361a;
                                    ae.b("Reiniciar", "reboot pedido pelo celular (sync)", true);
                                    return u();
                                }
                                break;
                                break;
                            case 332350963:
                                if (strOptString.equals("aa_deactivate")) {
                                    return A("rede.desativarAa", "Desativação enviada", qVar);
                                }
                                break;
                                break;
                            case 708792277:
                                if (strOptString.equals("modo_oficina_restaurar")) {
                                    wd wdVar = wd.f4450a;
                                    if (!wd.a(this)) {
                                        return t("não estava em modo oficina", true);
                                    }
                                    vd vdVarF = wdVar.f(this, "celular");
                                    return t(vdVarF.b, vdVarF.f4403a);
                                }
                                break;
                                break;
                            case 1086287876:
                                if (strOptString.equals("hvac_fan")) {
                                    g.b(jSONObject);
                                    long jOptLong2 = jSONObject.optLong("t", 0L);
                                    int iK = k1.a.k(jSONObject.optInt("level", 3), 0, 8);
                                    CarPropertyManager carPropertyManager = this.f1110j;
                                    if (carPropertyManager != null) {
                                        Integer num = this.f1113m;
                                        if (num == null) {
                                            iArr = this.f1114n;
                                            length = iArr.length;
                                            i3 = 0;
                                            while (true) {
                                                if (i3 < length) {
                                                    i4 = iArr[i3];
                                                    if (p1.l(carPropertyManager, 356517120, i4, iK)) {
                                                        this.f1113m = Integer.valueOf(i4);
                                                    } else {
                                                        i3++;
                                                    }
                                                } else {
                                                    zOptBoolean = false;
                                                }
                                            }
                                        } else if (!p1.l(carPropertyManager, 356517120, num.intValue(), iK)) {
                                            this.f1113m = null;
                                            iArr = this.f1114n;
                                            length = iArr.length;
                                            i3 = 0;
                                            while (true) {
                                                if (i3 < length) {
                                                    i4 = iArr[i3];
                                                    if (p1.l(carPropertyManager, 356517120, i4, iK)) {
                                                        this.f1113m = Integer.valueOf(i4);
                                                    } else {
                                                        i3++;
                                                    }
                                                } else {
                                                    zOptBoolean = false;
                                                }
                                            }
                                        }
                                    } else {
                                        zOptBoolean = false;
                                    }
                                    if (zOptBoolean) {
                                        B("fan", Integer.valueOf(iK), jOptLong2);
                                    }
                                    return t("Ventilação → " + iK, zOptBoolean);
                                }
                                break;
                                break;
                            case 1221111409:
                                if (strOptString.equals("lock_doors")) {
                                    g.b(jSONObject);
                                    return x(jSONObject.optBoolean("lock", true));
                                }
                                break;
                                break;
                            case 1349493379:
                                if (strOptString.equals("windows")) {
                                    g.b(jSONObject);
                                    boolean zOptBoolean2 = jSONObject.optBoolean("open", false);
                                    CarPropertyManager carPropertyManager2 = this.f1110j;
                                    if (carPropertyManager2 == null) {
                                        z2 = false;
                                    } else {
                                        int i5 = zOptBoolean2 ? 100 : 0;
                                        z2 = false;
                                        for (int i6 : u.f4304s) {
                                            if (p1.l(carPropertyManager2, 322964416, i6, i5)) {
                                                z2 = true;
                                            }
                                        }
                                    }
                                    return t(zOptBoolean2 ? "Janelas abrindo" : "Janelas fechando", z2);
                                }
                                break;
                                break;
                            case 1627464033:
                                if (strOptString.equals("stream_stop")) {
                                    m6 m6Var = m.f3866i;
                                    if (m6Var != null) {
                                        m6Var.g("phone-request");
                                    }
                                    return t("ExSapoCast encerrado", true);
                                }
                                break;
                                break;
                            case 1774209684:
                                if (strOptString.equals("modo_oficina_ocultar")) {
                                    wd wdVar2 = wd.f4450a;
                                    if (wd.a(this)) {
                                        return t("já estava em modo oficina", true);
                                    }
                                    vd vdVarC = wdVar2.c(this, jSONObject != null ? jSONObject.optInt("horas", 24) : 24);
                                    return t(vdVarC.b, vdVarC.f4403a);
                                }
                                break;
                                break;
                            case 1973874547:
                                if (strOptString.equals("set_setting")) {
                                    g.b(jSONObject);
                                    return a(jSONObject);
                                }
                                break;
                                break;
                            case 2044057256:
                                if (strOptString.equals("ac_power")) {
                                    g.b(jSONObject);
                                    long jOptLong3 = jSONObject.optLong("t", 0L);
                                    boolean zOptBoolean3 = jSONObject.optBoolean("on", true);
                                    CarPropertyManager carPropertyManager3 = this.f1110j;
                                    if (carPropertyManager3 == null) {
                                        zOptBoolean = false;
                                    } else {
                                        int[] iArr4 = u.B;
                                        int length2 = iArr4.length;
                                        int i7 = 0;
                                        while (true) {
                                            if (i7 >= length2) {
                                                int[] iArr5 = u.B;
                                                int length3 = iArr5.length;
                                                int i8 = 0;
                                                while (true) {
                                                    if (i8 >= length3) {
                                                        zOptBoolean = false;
                                                    } else if (!p1.l(carPropertyManager3, 358613145, iArr5[i8], zOptBoolean3 ? 1 : 0)) {
                                                        i8++;
                                                    }
                                                }
                                            } else if (!p1.i(carPropertyManager3, 358613145, iArr4[i7], zOptBoolean3)) {
                                                i7++;
                                            }
                                        }
                                    }
                                    if (zOptBoolean) {
                                        B("ac", Boolean.valueOf(zOptBoolean3), jOptLong3);
                                    }
                                    return t(zOptBoolean3 ? "A/C ligado" : "A/C desligado", zOptBoolean);
                                }
                                break;
                                break;
                        }
                        return new JSONObject().put("ok", false).put("error", "ação desconhecida: ".concat(strOptString));
                    } catch (Exception e3) {
                        JSONObject jSONObjectPut = new JSONObject().put("ok", false);
                        String message = e3.getMessage();
                        if (message == null) {
                            message = e3.getClass().getSimpleName();
                        }
                        return jSONObjectPut.put("error", message);
                    }
                }
                break;
            case 3441010:
                if (str.equals("ping")) {
                    JSONObject jSONObjectPut2 = new JSONObject().put("ok", true).put("service", "TelaPretaSync").put("protocol", 1).put("device", "central");
                    g.d(jSONObjectPut2, "put(...)");
                    return jSONObjectPut2;
                }
                break;
            case 103785528:
                if (str.equals("merge")) {
                    JSONObject jSONObjectPut3 = d().put("ok", true).put("applied", 0);
                    g.d(jSONObjectPut3, "put(...)");
                    return jSONObjectPut3;
                }
                break;
            case 109757585:
                if (str.equals("state")) {
                    JSONObject jSONObjectPut4 = d().put("ok", true);
                    g.d(jSONObjectPut4, "put(...)");
                    return jSONObjectPut4;
                }
                break;
            case 110629102:
                if (str.equals("trips")) {
                    long jOptLong4 = jSONObject != null ? jSONObject.optLong("since", 0L) : 0L;
                    try {
                        return new JSONObject().put("ok", true).put("trips", j(jOptLong4, new m3(this, 1).a(), "trip")).put("charges", j(jOptLong4, new m3(this, 0).a(), "charge")).put("done", true);
                    } catch (Exception e4) {
                        JSONObject jSONObjectPut5 = new JSONObject().put("ok", false);
                        String message2 = e4.getMessage();
                        if (message2 == null) {
                            message2 = e4.getClass().getSimpleName();
                        }
                        return jSONObjectPut5.put("error", message2);
                    }
                }
                break;
            case 780346297:
                if (str.equals("telemetry")) {
                    JSONObject jSONObjectPut6 = new JSONObject().put("ok", true);
                    JSONObject jSONObjectC = C();
                    if (jSONObjectC != null) {
                        jSONObjectPut6.put("telemetry", jSONObjectC);
                    }
                    g.d(jSONObjectPut6, "apply(...)");
                    return jSONObjectPut6;
                }
                break;
        }
        JSONObject jSONObjectPut7 = new JSONObject().put("ok", false).put("error", "op desconhecida: ".concat(str));
        g.d(jSONObjectPut7, "put(...)");
        return jSONObjectPut7;
    }

    public final JSONObject k(BufferedInputStream bufferedInputStream, String str, long j3) throws JSONException, IOException {
        String strX0 = k.x0(str, '?', "");
        if (g.a(l(strX0, "remove"), "1")) {
            if (j3 > 0) {
                p(bufferedInputStream, (int) j3);
            }
            qe qeVar = qe.f4124a;
            Context applicationContext = getApplicationContext();
            g.d(applicationContext, "getApplicationContext(...)");
            boolean zE = qe.e(applicationContext, "audio.restaurarSomTrava", null, 12);
            JSONObject jSONObjectPut = new JSONObject().put("ok", zE).put("message", zE ? "Som original restaurado" : "Falha ao restaurar (sincronize a central uma vez)");
            g.d(jSONObjectPut, "put(...)");
            return jSONObjectPut;
        }
        String strL = l(strX0, "filename");
        if (strL == null) {
            JSONObject jSONObjectPut2 = new JSONObject().put("ok", false).put("error", "filename obrigatório");
            g.d(jSONObjectPut2, "put(...)");
            return jSONObjectPut2;
        }
        String strV = v(strL);
        if (strV == null) {
            JSONObject jSONObjectPut3 = new JSONObject().put("ok", false).put("error", "nome inválido (use .wav)");
            g.d(jSONObjectPut3, "put(...)");
            return jSONObjectPut3;
        }
        if (1 > j3 || j3 >= 26214401) {
            if (j3 > 0) {
                p(bufferedInputStream, (int) Math.min(j3, 26214400L));
            }
            JSONObject jSONObjectPut4 = new JSONObject().put("ok", false).put("error", "arquivo vazio ou acima de 25 MB");
            g.d(jSONObjectPut4, "put(...)");
            return jSONObjectPut4;
        }
        byte[] bArrP = p(bufferedInputStream, (int) j3);
        if (bArrP.length != j3) {
            JSONObject jSONObjectPut5 = new JSONObject().put("ok", false).put("error", "upload interrompido");
            g.d(jSONObjectPut5, "put(...)");
            return jSONObjectPut5;
        }
        try {
            m.x(e8.v(), 10000, null, new n(0));
        } catch (Exception unused) {
        }
        try {
            File file = new File("/data/local/tmp/sons");
            if (!file.exists()) {
                file.mkdirs();
            }
            File file2 = new File(file, strV);
            FileOutputStream fileOutputStream = new FileOutputStream(file2, false);
            try {
                fileOutputStream.write(bArrP);
                fileOutputStream.close();
                file2.setReadable(true, false);
                qe qeVar2 = qe.f4124a;
                Context applicationContext2 = getApplicationContext();
                g.d(applicationContext2, "getApplicationContext(...)");
                boolean zE2 = qe.e(applicationContext2, "audio.aplicarSomTrava", s.W(new a("wav", file2.getAbsolutePath())), 8);
                StringBuilder sb = new StringBuilder("carlock bind (");
                sb.append(strV);
                sb.append("): ");
                sb.append(zE2 ? "ok" : "falhou");
                Log.i("PhoneSyncService", sb.toString());
                return new JSONObject().put("ok", zE2).put("message", zE2 ? "Som de bloqueio aplicado: ".concat(strV) : "Falha ao aplicar o som");
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    b.p(fileOutputStream, th);
                    throw th2;
                }
            }
        } catch (Exception e3) {
            JSONObject jSONObjectPut6 = new JSONObject().put("ok", false);
            String message = e3.getMessage();
            if (message == null) {
                message = e3.getClass().getSimpleName();
            }
            return jSONObjectPut6.put("error", message);
        }
    }

    public final JSONObject m() throws JSONException {
        JSONArray jSONArray = new JSONArray();
        ArrayList arrayListB = b();
        int size = arrayListB.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayListB.get(i3);
            i3++;
            jSONArray.put(f((File) obj));
        }
        JSONArray jSONArray2 = new JSONArray();
        Iterator it = c().iterator();
        while (it.hasNext()) {
            jSONArray2.put(f((File) it.next()));
        }
        JSONObject jSONObjectPut = new JSONObject().put("ok", true).put("logger", jSONArray2).put("telapretacentral", jSONArray);
        g.d(jSONObjectPut, "put(...)");
        return jSONObjectPut;
    }

    public final Boolean o() {
        CarPropertyManager carPropertyManager = this.f1110j;
        if (carPropertyManager == null) {
            return null;
        }
        for (int i3 : u.B) {
            Boolean boolA = p1.a(carPropertyManager, 358613145, i3);
            if (boolA != null) {
                return boolA;
            }
        }
        for (int i4 : u.B) {
            Integer numC = p1.c(carPropertyManager, 358613145, i4);
            if (numC != null) {
                return Boolean.valueOf(numC.intValue() != 0);
            }
        }
        return null;
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        NotificationChannel notificationChannel = new NotificationChannel("phone_sync", getString(R.string.k_phonesync_channel), 2);
        Object systemService = getSystemService("notification");
        g.c(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        ((NotificationManager) systemService).createNotificationChannel(notificationChannel);
        ee.f3548a.b(this);
    }

    @Override // android.app.Service
    public final void onDestroy() {
        this.f1103a = false;
        f1102z = false;
        synchronized (m.f3867j) {
            try {
                NsdManager nsdManager = m.f3868k;
                xd xdVar = m.f3869l;
                m.f3869l = null;
                m.f3868k = null;
                if (nsdManager != null && xdVar != null) {
                    try {
                        nsdManager.unregisterService(xdVar);
                    } catch (Throwable th) {
                        Log.w("NsdAnuncio", "unregister: " + th.getMessage());
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        synchronized (u0.f4312a) {
            try {
                u0.f4321l = null;
                u0.f4322m = false;
                l lVar = u0.f4320k;
                if (lVar != null) {
                    u0.f4315e.removeCallbacks(lVar);
                }
                u0.f4320k = null;
                r0 r0Var = u0.f4324o;
                if (r0Var != null) {
                    u0.f4315e.removeCallbacks(r0Var);
                }
                u0.f4324o = null;
                BluetoothLeAdvertiser bluetoothLeAdvertiser = u0.f;
                s0 s0Var = u0.f4316g;
                u0.f = null;
                u0.f4316g = null;
                if (bluetoothLeAdvertiser != null && s0Var != null) {
                    try {
                        bluetoothLeAdvertiser.stopAdvertising(s0Var);
                    } catch (Throwable unused) {
                    }
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
        synchronized (u0.f4312a) {
            u0.f4319j.clear();
            try {
                BluetoothGattServer bluetoothGattServer = u0.f4317h;
                if (bluetoothGattServer != null) {
                    bluetoothGattServer.close();
                }
            } catch (Throwable unused2) {
            }
            u0.f4317h = null;
            u0.f4318i = null;
        }
        try {
            ServerSocket serverSocket = this.b;
            if (serverSocket != null) {
                serverSocket.close();
            }
        } catch (Exception unused3) {
        }
        try {
            BluetoothServerSocket bluetoothServerSocket = this.f1104c;
            if (bluetoothServerSocket != null) {
                bluetoothServerSocket.close();
            }
        } catch (Exception unused4) {
        }
        this.f1105d.shutdownNow();
        this.f1106e.shutdownNow();
        this.f.shutdownNow();
        this.f1108h.shutdownNow();
        ConcurrentHashMap.KeySetView keySetView = this.f1107g;
        g.d(keySetView, "activeClients");
        Iterator it = keySetView.iterator();
        while (it.hasNext()) {
            try {
                ((Closeable) it.next()).close();
            } catch (Exception unused5) {
            }
        }
        this.f1107g.clear();
        try {
            Car car = this.f1109i;
            if (car != null) {
                car.disconnect();
            }
        } catch (Exception unused6) {
        }
        this.f1109i = null;
        this.f1110j = null;
        this.f1111k = null;
        this.f1112l = null;
        Log.i("PhoneSyncService", "PhoneSyncService destruído");
        super.onDestroy();
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i3, int i4) {
        String strValueOf;
        BluetoothAdapter adapter;
        String string = getString(R.string.k_phonesync_notif_text, 47801);
        g.d(string, "getString(...)");
        Notification notificationBuild = new Notification.Builder(this, "phone_sync").setSmallIcon(android.R.drawable.stat_sys_data_bluetooth).setContentTitle(getString(R.string.k_phonesync_notif_title)).setContentText(string).build();
        g.d(notificationBuild, "build(...)");
        startForeground(52, notificationBuild);
        final int i5 = 1;
        if (f1102z) {
            return 1;
        }
        f1102z = true;
        this.f1103a = true;
        final int i6 = 3;
        try {
            this.f1109i = Car.createCar(this, null, 0L, new a1.p(this, i6));
        } catch (Exception e3) {
            Log.e("PhoneSyncService", "connectCar: " + e3.getMessage());
        }
        final int i7 = 0;
        Thread thread = new Thread(new Runnable(this) { // from class: w0.fe
            public final /* synthetic */ PhoneSyncService b;

            {
                this.b = this;
            }

            /* JADX WARN: Code duplicated, block: B:17:0x0027  */
            @Override // java.lang.Runnable
            public final void run() {
                Socket socketAccept;
                BluetoothAdapter defaultAdapter;
                Integer numValueOf;
                switch (i7) {
                    case 0:
                        PhoneSyncService phoneSyncService = this.b;
                        boolean z2 = PhoneSyncService.f1102z;
                        try {
                            try {
                                ServerSocket serverSocket = new ServerSocket();
                                try {
                                    serverSocket.setReuseAddress(true);
                                    serverSocket.bind(new InetSocketAddress(47801));
                                    phoneSyncService.b = serverSocket;
                                    Log.i("PhoneSyncService", "HTTP sync em 0.0.0.0:47801");
                                    while (phoneSyncService.f1103a) {
                                        try {
                                            socketAccept = serverSocket.accept();
                                        } catch (Exception unused) {
                                            socketAccept = null;
                                        }
                                        if (socketAccept != null) {
                                            phoneSyncService.g(socketAccept, phoneSyncService.f1105d, new y2(phoneSyncService, 14, socketAccept));
                                        }
                                        break;
                                    }
                                    serverSocket.close();
                                    phoneSyncService.b = null;
                                    return;
                                } catch (Throwable th) {
                                    try {
                                        throw th;
                                    } catch (Throwable th2) {
                                        a1.b.p(serverSocket, th);
                                        throw th2;
                                    }
                                }
                            } catch (Exception e4) {
                                if (phoneSyncService.f1103a) {
                                    Log.e("PhoneSyncService", "serveTcp: " + e4.getMessage());
                                }
                            }
                        } catch (Throwable th3) {
                            phoneSyncService.b = null;
                            throw th3;
                        }
                        break;
                    case 1:
                        PhoneSyncService phoneSyncService2 = this.b;
                        boolean z3 = PhoneSyncService.f1102z;
                        try {
                            defaultAdapter = BluetoothAdapter.getDefaultAdapter();
                            break;
                        } catch (Exception unused2) {
                            defaultAdapter = null;
                        }
                        if (defaultAdapter == null) {
                            Log.w("PhoneSyncService", "sem adaptador BT — sync só por WiFi");
                            return;
                        }
                        UUID uuidFromString = UUID.fromString("b5b9a1e0-3c2f-4d6a-8f4e-7a2b9c1d0e5f");
                        while (phoneSyncService2.f1103a) {
                            try {
                                try {
                                    if (defaultAdapter.isEnabled()) {
                                        BluetoothServerSocket bluetoothServerSocketListenUsingInsecureRfcommWithServiceRecord = defaultAdapter.listenUsingInsecureRfcommWithServiceRecord("TelaPretaSync", uuidFromString);
                                        phoneSyncService2.f1104c = bluetoothServerSocketListenUsingInsecureRfcommWithServiceRecord;
                                        Log.i("PhoneSyncService", "RFCOMM sync ouvindo (TelaPretaSync)");
                                        while (phoneSyncService2.f1103a) {
                                            try {
                                                BluetoothSocket bluetoothSocketAccept = bluetoothServerSocketListenUsingInsecureRfcommWithServiceRecord.accept();
                                                if (bluetoothSocketAccept != null) {
                                                    phoneSyncService2.g(bluetoothSocketAccept, phoneSyncService2.f1106e, new y2(bluetoothSocketAccept, 13, phoneSyncService2));
                                                }
                                            } catch (Exception unused3) {
                                            }
                                        }
                                        try {
                                            bluetoothServerSocketListenUsingInsecureRfcommWithServiceRecord.close();
                                        } catch (Exception unused4) {
                                        }
                                    } else {
                                        Thread.sleep(15000L);
                                    }
                                } catch (Exception e5) {
                                    if (phoneSyncService2.f1103a) {
                                        Log.w("PhoneSyncService", "serveBt: " + e5.getMessage() + " — retry em 15 s");
                                        try {
                                            Thread.sleep(15000L);
                                        } catch (InterruptedException unused5) {
                                            phoneSyncService2.f1104c = null;
                                            return;
                                        }
                                    } else {
                                        continue;
                                    }
                                }
                                phoneSyncService2.f1104c = null;
                            } catch (Throwable th4) {
                                phoneSyncService2.f1104c = null;
                                throw th4;
                            }
                        }
                        return;
                    case 2:
                        PhoneSyncService phoneSyncService3 = this.b;
                        while (phoneSyncService3.f1103a) {
                            try {
                                Integer numR = phoneSyncService3.r();
                                CarPropertyManager carPropertyManager = phoneSyncService3.f1110j;
                                if (carPropertyManager == null) {
                                    numValueOf = null;
                                } else {
                                    AtomicInteger atomicInteger = p1.f4042a;
                                    Float fB = p1.b(carPropertyManager, u.f4290d, 1);
                                    if (fB != null) {
                                        numValueOf = Integer.valueOf(Math.round(fB.floatValue()));
                                    } else {
                                        numValueOf = null;
                                    }
                                }
                                Boolean boolO = phoneSyncService3.o();
                                long jCurrentTimeMillis = System.currentTimeMillis();
                                synchronized (phoneSyncService3.f1115o) {
                                    if (numR != null) {
                                        try {
                                            if (!numR.equals(phoneSyncService3.f1116p)) {
                                                phoneSyncService3.f1116p = numR;
                                                phoneSyncService3.f1117q = jCurrentTimeMillis;
                                            }
                                        } catch (Throwable th5) {
                                            throw th5;
                                        }
                                    }
                                    if (numValueOf != null && !numValueOf.equals(phoneSyncService3.f1118r)) {
                                        phoneSyncService3.f1118r = numValueOf;
                                        phoneSyncService3.f1119s = jCurrentTimeMillis;
                                    }
                                    if (boolO != null && !boolO.equals(phoneSyncService3.f1120t)) {
                                        phoneSyncService3.f1120t = boolO;
                                        phoneSyncService3.f1121u = jCurrentTimeMillis;
                                    }
                                }
                            } catch (Exception unused6) {
                            }
                            try {
                                Thread.sleep(3000L);
                            } catch (InterruptedException unused7) {
                                return;
                            }
                        }
                        return;
                    default:
                        PhoneSyncService phoneSyncService4 = this.b;
                        while (phoneSyncService4.f1103a) {
                            try {
                                u0 u0Var = u0.f4312a;
                                u0.e();
                                break;
                            } catch (Throwable unused8) {
                            }
                            try {
                                Thread.sleep(1000L);
                            } catch (InterruptedException unused9) {
                                return;
                            }
                        }
                        return;
                }
            }
        }, "phone-sync-tcp");
        thread.setDaemon(true);
        thread.start();
        Thread thread2 = new Thread(new Runnable(this) { // from class: w0.fe
            public final /* synthetic */ PhoneSyncService b;

            {
                this.b = this;
            }

            /* JADX WARN: Code duplicated, block: B:17:0x0027  */
            @Override // java.lang.Runnable
            public final void run() {
                Socket socketAccept;
                BluetoothAdapter defaultAdapter;
                Integer numValueOf;
                switch (i5) {
                    case 0:
                        PhoneSyncService phoneSyncService = this.b;
                        boolean z2 = PhoneSyncService.f1102z;
                        try {
                            try {
                                ServerSocket serverSocket = new ServerSocket();
                                try {
                                    serverSocket.setReuseAddress(true);
                                    serverSocket.bind(new InetSocketAddress(47801));
                                    phoneSyncService.b = serverSocket;
                                    Log.i("PhoneSyncService", "HTTP sync em 0.0.0.0:47801");
                                    while (phoneSyncService.f1103a) {
                                        try {
                                            socketAccept = serverSocket.accept();
                                        } catch (Exception unused) {
                                            socketAccept = null;
                                        }
                                        if (socketAccept != null) {
                                            phoneSyncService.g(socketAccept, phoneSyncService.f1105d, new y2(phoneSyncService, 14, socketAccept));
                                        }
                                        break;
                                    }
                                    serverSocket.close();
                                    phoneSyncService.b = null;
                                    return;
                                } catch (Throwable th) {
                                    try {
                                        throw th;
                                    } catch (Throwable th2) {
                                        a1.b.p(serverSocket, th);
                                        throw th2;
                                    }
                                }
                            } catch (Exception e4) {
                                if (phoneSyncService.f1103a) {
                                    Log.e("PhoneSyncService", "serveTcp: " + e4.getMessage());
                                }
                            }
                        } catch (Throwable th3) {
                            phoneSyncService.b = null;
                            throw th3;
                        }
                        break;
                    case 1:
                        PhoneSyncService phoneSyncService2 = this.b;
                        boolean z3 = PhoneSyncService.f1102z;
                        try {
                            defaultAdapter = BluetoothAdapter.getDefaultAdapter();
                            break;
                        } catch (Exception unused2) {
                            defaultAdapter = null;
                        }
                        if (defaultAdapter == null) {
                            Log.w("PhoneSyncService", "sem adaptador BT — sync só por WiFi");
                            return;
                        }
                        UUID uuidFromString = UUID.fromString("b5b9a1e0-3c2f-4d6a-8f4e-7a2b9c1d0e5f");
                        while (phoneSyncService2.f1103a) {
                            try {
                                try {
                                    if (defaultAdapter.isEnabled()) {
                                        BluetoothServerSocket bluetoothServerSocketListenUsingInsecureRfcommWithServiceRecord = defaultAdapter.listenUsingInsecureRfcommWithServiceRecord("TelaPretaSync", uuidFromString);
                                        phoneSyncService2.f1104c = bluetoothServerSocketListenUsingInsecureRfcommWithServiceRecord;
                                        Log.i("PhoneSyncService", "RFCOMM sync ouvindo (TelaPretaSync)");
                                        while (phoneSyncService2.f1103a) {
                                            try {
                                                BluetoothSocket bluetoothSocketAccept = bluetoothServerSocketListenUsingInsecureRfcommWithServiceRecord.accept();
                                                if (bluetoothSocketAccept != null) {
                                                    phoneSyncService2.g(bluetoothSocketAccept, phoneSyncService2.f1106e, new y2(bluetoothSocketAccept, 13, phoneSyncService2));
                                                }
                                            } catch (Exception unused3) {
                                            }
                                        }
                                        try {
                                            bluetoothServerSocketListenUsingInsecureRfcommWithServiceRecord.close();
                                        } catch (Exception unused4) {
                                        }
                                    } else {
                                        Thread.sleep(15000L);
                                    }
                                } catch (Exception e5) {
                                    if (phoneSyncService2.f1103a) {
                                        Log.w("PhoneSyncService", "serveBt: " + e5.getMessage() + " — retry em 15 s");
                                        try {
                                            Thread.sleep(15000L);
                                        } catch (InterruptedException unused5) {
                                            phoneSyncService2.f1104c = null;
                                            return;
                                        }
                                    } else {
                                        continue;
                                    }
                                }
                                phoneSyncService2.f1104c = null;
                            } catch (Throwable th4) {
                                phoneSyncService2.f1104c = null;
                                throw th4;
                            }
                        }
                        return;
                    case 2:
                        PhoneSyncService phoneSyncService3 = this.b;
                        while (phoneSyncService3.f1103a) {
                            try {
                                Integer numR = phoneSyncService3.r();
                                CarPropertyManager carPropertyManager = phoneSyncService3.f1110j;
                                if (carPropertyManager == null) {
                                    numValueOf = null;
                                } else {
                                    AtomicInteger atomicInteger = p1.f4042a;
                                    Float fB = p1.b(carPropertyManager, u.f4290d, 1);
                                    if (fB != null) {
                                        numValueOf = Integer.valueOf(Math.round(fB.floatValue()));
                                    } else {
                                        numValueOf = null;
                                    }
                                }
                                Boolean boolO = phoneSyncService3.o();
                                long jCurrentTimeMillis = System.currentTimeMillis();
                                synchronized (phoneSyncService3.f1115o) {
                                    if (numR != null) {
                                        try {
                                            if (!numR.equals(phoneSyncService3.f1116p)) {
                                                phoneSyncService3.f1116p = numR;
                                                phoneSyncService3.f1117q = jCurrentTimeMillis;
                                            }
                                        } catch (Throwable th5) {
                                            throw th5;
                                        }
                                    }
                                    if (numValueOf != null && !numValueOf.equals(phoneSyncService3.f1118r)) {
                                        phoneSyncService3.f1118r = numValueOf;
                                        phoneSyncService3.f1119s = jCurrentTimeMillis;
                                    }
                                    if (boolO != null && !boolO.equals(phoneSyncService3.f1120t)) {
                                        phoneSyncService3.f1120t = boolO;
                                        phoneSyncService3.f1121u = jCurrentTimeMillis;
                                    }
                                }
                            } catch (Exception unused6) {
                            }
                            try {
                                Thread.sleep(3000L);
                            } catch (InterruptedException unused7) {
                                return;
                            }
                        }
                        return;
                    default:
                        PhoneSyncService phoneSyncService4 = this.b;
                        while (phoneSyncService4.f1103a) {
                            try {
                                u0 u0Var = u0.f4312a;
                                u0.e();
                                break;
                            } catch (Throwable unused8) {
                            }
                            try {
                                Thread.sleep(1000L);
                            } catch (InterruptedException unused9) {
                                return;
                            }
                        }
                        return;
                }
            }
        }, "phone-sync-bt");
        thread2.setDaemon(true);
        thread2.start();
        final int i8 = 2;
        Thread thread3 = new Thread(new Runnable(this) { // from class: w0.fe
            public final /* synthetic */ PhoneSyncService b;

            {
                this.b = this;
            }

            /* JADX WARN: Code duplicated, block: B:17:0x0027  */
            @Override // java.lang.Runnable
            public final void run() {
                Socket socketAccept;
                BluetoothAdapter defaultAdapter;
                Integer numValueOf;
                switch (i8) {
                    case 0:
                        PhoneSyncService phoneSyncService = this.b;
                        boolean z2 = PhoneSyncService.f1102z;
                        try {
                            try {
                                ServerSocket serverSocket = new ServerSocket();
                                try {
                                    serverSocket.setReuseAddress(true);
                                    serverSocket.bind(new InetSocketAddress(47801));
                                    phoneSyncService.b = serverSocket;
                                    Log.i("PhoneSyncService", "HTTP sync em 0.0.0.0:47801");
                                    while (phoneSyncService.f1103a) {
                                        try {
                                            socketAccept = serverSocket.accept();
                                        } catch (Exception unused) {
                                            socketAccept = null;
                                        }
                                        if (socketAccept != null) {
                                            phoneSyncService.g(socketAccept, phoneSyncService.f1105d, new y2(phoneSyncService, 14, socketAccept));
                                        }
                                        break;
                                    }
                                    serverSocket.close();
                                    phoneSyncService.b = null;
                                    return;
                                } catch (Throwable th) {
                                    try {
                                        throw th;
                                    } catch (Throwable th2) {
                                        a1.b.p(serverSocket, th);
                                        throw th2;
                                    }
                                }
                            } catch (Exception e4) {
                                if (phoneSyncService.f1103a) {
                                    Log.e("PhoneSyncService", "serveTcp: " + e4.getMessage());
                                }
                            }
                        } catch (Throwable th3) {
                            phoneSyncService.b = null;
                            throw th3;
                        }
                        break;
                    case 1:
                        PhoneSyncService phoneSyncService2 = this.b;
                        boolean z3 = PhoneSyncService.f1102z;
                        try {
                            defaultAdapter = BluetoothAdapter.getDefaultAdapter();
                            break;
                        } catch (Exception unused2) {
                            defaultAdapter = null;
                        }
                        if (defaultAdapter == null) {
                            Log.w("PhoneSyncService", "sem adaptador BT — sync só por WiFi");
                            return;
                        }
                        UUID uuidFromString = UUID.fromString("b5b9a1e0-3c2f-4d6a-8f4e-7a2b9c1d0e5f");
                        while (phoneSyncService2.f1103a) {
                            try {
                                try {
                                    if (defaultAdapter.isEnabled()) {
                                        BluetoothServerSocket bluetoothServerSocketListenUsingInsecureRfcommWithServiceRecord = defaultAdapter.listenUsingInsecureRfcommWithServiceRecord("TelaPretaSync", uuidFromString);
                                        phoneSyncService2.f1104c = bluetoothServerSocketListenUsingInsecureRfcommWithServiceRecord;
                                        Log.i("PhoneSyncService", "RFCOMM sync ouvindo (TelaPretaSync)");
                                        while (phoneSyncService2.f1103a) {
                                            try {
                                                BluetoothSocket bluetoothSocketAccept = bluetoothServerSocketListenUsingInsecureRfcommWithServiceRecord.accept();
                                                if (bluetoothSocketAccept != null) {
                                                    phoneSyncService2.g(bluetoothSocketAccept, phoneSyncService2.f1106e, new y2(bluetoothSocketAccept, 13, phoneSyncService2));
                                                }
                                            } catch (Exception unused3) {
                                            }
                                        }
                                        try {
                                            bluetoothServerSocketListenUsingInsecureRfcommWithServiceRecord.close();
                                        } catch (Exception unused4) {
                                        }
                                    } else {
                                        Thread.sleep(15000L);
                                    }
                                } catch (Exception e5) {
                                    if (phoneSyncService2.f1103a) {
                                        Log.w("PhoneSyncService", "serveBt: " + e5.getMessage() + " — retry em 15 s");
                                        try {
                                            Thread.sleep(15000L);
                                        } catch (InterruptedException unused5) {
                                            phoneSyncService2.f1104c = null;
                                            return;
                                        }
                                    } else {
                                        continue;
                                    }
                                }
                                phoneSyncService2.f1104c = null;
                            } catch (Throwable th4) {
                                phoneSyncService2.f1104c = null;
                                throw th4;
                            }
                        }
                        return;
                    case 2:
                        PhoneSyncService phoneSyncService3 = this.b;
                        while (phoneSyncService3.f1103a) {
                            try {
                                Integer numR = phoneSyncService3.r();
                                CarPropertyManager carPropertyManager = phoneSyncService3.f1110j;
                                if (carPropertyManager == null) {
                                    numValueOf = null;
                                } else {
                                    AtomicInteger atomicInteger = p1.f4042a;
                                    Float fB = p1.b(carPropertyManager, u.f4290d, 1);
                                    if (fB != null) {
                                        numValueOf = Integer.valueOf(Math.round(fB.floatValue()));
                                    } else {
                                        numValueOf = null;
                                    }
                                }
                                Boolean boolO = phoneSyncService3.o();
                                long jCurrentTimeMillis = System.currentTimeMillis();
                                synchronized (phoneSyncService3.f1115o) {
                                    if (numR != null) {
                                        try {
                                            if (!numR.equals(phoneSyncService3.f1116p)) {
                                                phoneSyncService3.f1116p = numR;
                                                phoneSyncService3.f1117q = jCurrentTimeMillis;
                                            }
                                        } catch (Throwable th5) {
                                            throw th5;
                                        }
                                    }
                                    if (numValueOf != null && !numValueOf.equals(phoneSyncService3.f1118r)) {
                                        phoneSyncService3.f1118r = numValueOf;
                                        phoneSyncService3.f1119s = jCurrentTimeMillis;
                                    }
                                    if (boolO != null && !boolO.equals(phoneSyncService3.f1120t)) {
                                        phoneSyncService3.f1120t = boolO;
                                        phoneSyncService3.f1121u = jCurrentTimeMillis;
                                    }
                                }
                            } catch (Exception unused6) {
                            }
                            try {
                                Thread.sleep(3000L);
                            } catch (InterruptedException unused7) {
                                return;
                            }
                        }
                        return;
                    default:
                        PhoneSyncService phoneSyncService4 = this.b;
                        while (phoneSyncService4.f1103a) {
                            try {
                                u0 u0Var = u0.f4312a;
                                u0.e();
                                break;
                            } catch (Throwable unused8) {
                            }
                            try {
                                Thread.sleep(1000L);
                            } catch (InterruptedException unused9) {
                                return;
                            }
                        }
                        return;
                }
            }
        }, "phone-sync-hvac");
        thread3.setDaemon(true);
        thread3.start();
        synchronized (m.f3867j) {
            if (m.f3869l == null) {
                Object systemService = getSystemService("servicediscovery");
                NsdManager nsdManager = systemService instanceof NsdManager ? (NsdManager) systemService : null;
                if (nsdManager != null) {
                    String strN = m.n(this);
                    try {
                        strValueOf = String.valueOf(getPackageManager().getPackageInfo(getPackageName(), 0).versionCode);
                    } catch (Throwable unused) {
                        strValueOf = "0";
                    }
                    NsdServiceInfo nsdServiceInfo = new NsdServiceInfo();
                    nsdServiceInfo.setServiceName("EX Sapo ".concat(strN));
                    nsdServiceInfo.setServiceType("_exsapo._tcp.");
                    nsdServiceInfo.setPort(47800);
                    nsdServiceInfo.setAttribute("v", "1");
                    nsdServiceInfo.setAttribute("id", strN);
                    nsdServiceInfo.setAttribute("vc", strValueOf);
                    nsdServiceInfo.setAttribute("sync", "47801");
                    xd xdVar = new xd(strN, strValueOf);
                    m.f3868k = nsdManager;
                    m.f3869l = xdVar;
                    try {
                        nsdManager.registerService(nsdServiceInfo, 1, xdVar);
                    } catch (Throwable th) {
                        m.f3869l = null;
                        Log.w("NsdAnuncio", "registerService falhou: " + th.getMessage());
                    }
                }
            }
        }
        u0 u0Var = u0.f4312a;
        try {
            Object systemService2 = getSystemService("bluetooth");
            BluetoothManager bluetoothManager = systemService2 instanceof BluetoothManager ? (BluetoothManager) systemService2 : null;
            BluetoothAdapter adapter2 = bluetoothManager != null ? bluetoothManager.getAdapter() : null;
            if (adapter2 == null || !adapter2.isEnabled() || adapter2.getBluetoothLeAdvertiser() == null) {
                ae aeVar = ae.f3361a;
                ae.b("PhoneSyncService", "BLE: este rádio não anuncia — só mDNS e os canais de sempre", false);
            } else {
                synchronized (u0Var) {
                    if (u0.f4316g == null) {
                        Object systemService3 = getSystemService("bluetooth");
                        BluetoothManager bluetoothManager2 = systemService3 instanceof BluetoothManager ? (BluetoothManager) systemService3 : null;
                        if (bluetoothManager2 != null && (adapter = bluetoothManager2.getAdapter()) != null) {
                            BluetoothLeAdvertiser bluetoothLeAdvertiser = adapter.getBluetoothLeAdvertiser();
                            if (bluetoothLeAdvertiser == null) {
                                ae aeVar2 = ae.f3361a;
                                ae.b("BleCarro", "farol: este rádio não tem advertiser (getBluetoothLeAdvertiser = null) — recurso indisponível neste aparelho", false);
                            } else {
                                u0.f = bluetoothLeAdvertiser;
                                u0.f4321l = getApplicationContext();
                                s0 s0Var = new s0(this);
                                u0.f4316g = s0Var;
                                u0.b(this, bluetoothLeAdvertiser, s0Var);
                                u0.a(this);
                            }
                        }
                    }
                }
                synchronized (u0Var) {
                    if (u0.f4317h == null) {
                        Object systemService4 = getSystemService("bluetooth");
                        BluetoothManager bluetoothManager3 = systemService4 instanceof BluetoothManager ? (BluetoothManager) systemService4 : null;
                        if (bluetoothManager3 != null) {
                            BluetoothGattCharacteristic bluetoothGattCharacteristic = new BluetoothGattCharacteristic(u0.f4313c, 18, 1);
                            bluetoothGattCharacteristic.addDescriptor(new BluetoothGattDescriptor(u0.f4314d, 17));
                            BluetoothGattService bluetoothGattService = new BluetoothGattService(u0.b, 0);
                            bluetoothGattService.addCharacteristic(bluetoothGattCharacteristic);
                            u0.f4317h = bluetoothManager3.openGattServer(this, new t0());
                            if (u0.f4317h == null) {
                                ae aeVar3 = ae.f3361a;
                                ae.b("BleCarro", "gatt: openGattServer devolveu null", false);
                            } else {
                                u0.f4318i = bluetoothGattCharacteristic;
                                BluetoothGattServer bluetoothGattServer = u0.f4317h;
                                if (bluetoothGattServer != null) {
                                    bluetoothGattServer.addService(bluetoothGattService);
                                }
                                ae aeVar4 = ae.f3361a;
                                ae.b("BleCarro", "gatt no ar", false);
                            }
                        }
                    }
                }
                Thread thread4 = new Thread(new Runnable(this) { // from class: w0.fe
                    public final /* synthetic */ PhoneSyncService b;

                    {
                        this.b = this;
                    }

                    /* JADX WARN: Code duplicated, block: B:17:0x0027  */
                    @Override // java.lang.Runnable
                    public final void run() {
                        Socket socketAccept;
                        BluetoothAdapter defaultAdapter;
                        Integer numValueOf;
                        switch (i6) {
                            case 0:
                                PhoneSyncService phoneSyncService = this.b;
                                boolean z2 = PhoneSyncService.f1102z;
                                try {
                                    try {
                                        ServerSocket serverSocket = new ServerSocket();
                                        try {
                                            serverSocket.setReuseAddress(true);
                                            serverSocket.bind(new InetSocketAddress(47801));
                                            phoneSyncService.b = serverSocket;
                                            Log.i("PhoneSyncService", "HTTP sync em 0.0.0.0:47801");
                                            while (phoneSyncService.f1103a) {
                                                try {
                                                    socketAccept = serverSocket.accept();
                                                } catch (Exception unused2) {
                                                    socketAccept = null;
                                                }
                                                if (socketAccept != null) {
                                                    phoneSyncService.g(socketAccept, phoneSyncService.f1105d, new y2(phoneSyncService, 14, socketAccept));
                                                }
                                                break;
                                            }
                                            serverSocket.close();
                                            phoneSyncService.b = null;
                                            return;
                                        } catch (Throwable th2) {
                                            try {
                                                throw th2;
                                            } catch (Throwable th3) {
                                                a1.b.p(serverSocket, th2);
                                                throw th3;
                                            }
                                        }
                                    } catch (Exception e4) {
                                        if (phoneSyncService.f1103a) {
                                            Log.e("PhoneSyncService", "serveTcp: " + e4.getMessage());
                                        }
                                    }
                                } catch (Throwable th4) {
                                    phoneSyncService.b = null;
                                    throw th4;
                                }
                                break;
                            case 1:
                                PhoneSyncService phoneSyncService2 = this.b;
                                boolean z3 = PhoneSyncService.f1102z;
                                try {
                                    defaultAdapter = BluetoothAdapter.getDefaultAdapter();
                                    break;
                                } catch (Exception unused3) {
                                    defaultAdapter = null;
                                }
                                if (defaultAdapter == null) {
                                    Log.w("PhoneSyncService", "sem adaptador BT — sync só por WiFi");
                                    return;
                                }
                                UUID uuidFromString = UUID.fromString("b5b9a1e0-3c2f-4d6a-8f4e-7a2b9c1d0e5f");
                                while (phoneSyncService2.f1103a) {
                                    try {
                                        try {
                                            if (defaultAdapter.isEnabled()) {
                                                BluetoothServerSocket bluetoothServerSocketListenUsingInsecureRfcommWithServiceRecord = defaultAdapter.listenUsingInsecureRfcommWithServiceRecord("TelaPretaSync", uuidFromString);
                                                phoneSyncService2.f1104c = bluetoothServerSocketListenUsingInsecureRfcommWithServiceRecord;
                                                Log.i("PhoneSyncService", "RFCOMM sync ouvindo (TelaPretaSync)");
                                                while (phoneSyncService2.f1103a) {
                                                    try {
                                                        BluetoothSocket bluetoothSocketAccept = bluetoothServerSocketListenUsingInsecureRfcommWithServiceRecord.accept();
                                                        if (bluetoothSocketAccept != null) {
                                                            phoneSyncService2.g(bluetoothSocketAccept, phoneSyncService2.f1106e, new y2(bluetoothSocketAccept, 13, phoneSyncService2));
                                                        }
                                                    } catch (Exception unused4) {
                                                    }
                                                }
                                                try {
                                                    bluetoothServerSocketListenUsingInsecureRfcommWithServiceRecord.close();
                                                } catch (Exception unused5) {
                                                }
                                            } else {
                                                Thread.sleep(15000L);
                                            }
                                        } catch (Exception e5) {
                                            if (phoneSyncService2.f1103a) {
                                                Log.w("PhoneSyncService", "serveBt: " + e5.getMessage() + " — retry em 15 s");
                                                try {
                                                    Thread.sleep(15000L);
                                                } catch (InterruptedException unused6) {
                                                    phoneSyncService2.f1104c = null;
                                                    return;
                                                }
                                            } else {
                                                continue;
                                            }
                                        }
                                        phoneSyncService2.f1104c = null;
                                    } catch (Throwable th5) {
                                        phoneSyncService2.f1104c = null;
                                        throw th5;
                                    }
                                }
                                return;
                            case 2:
                                PhoneSyncService phoneSyncService3 = this.b;
                                while (phoneSyncService3.f1103a) {
                                    try {
                                        Integer numR = phoneSyncService3.r();
                                        CarPropertyManager carPropertyManager = phoneSyncService3.f1110j;
                                        if (carPropertyManager == null) {
                                            numValueOf = null;
                                        } else {
                                            AtomicInteger atomicInteger = p1.f4042a;
                                            Float fB = p1.b(carPropertyManager, u.f4290d, 1);
                                            if (fB != null) {
                                                numValueOf = Integer.valueOf(Math.round(fB.floatValue()));
                                            } else {
                                                numValueOf = null;
                                            }
                                        }
                                        Boolean boolO = phoneSyncService3.o();
                                        long jCurrentTimeMillis = System.currentTimeMillis();
                                        synchronized (phoneSyncService3.f1115o) {
                                            if (numR != null) {
                                                try {
                                                    if (!numR.equals(phoneSyncService3.f1116p)) {
                                                        phoneSyncService3.f1116p = numR;
                                                        phoneSyncService3.f1117q = jCurrentTimeMillis;
                                                    }
                                                } catch (Throwable th6) {
                                                    throw th6;
                                                }
                                            }
                                            if (numValueOf != null && !numValueOf.equals(phoneSyncService3.f1118r)) {
                                                phoneSyncService3.f1118r = numValueOf;
                                                phoneSyncService3.f1119s = jCurrentTimeMillis;
                                            }
                                            if (boolO != null && !boolO.equals(phoneSyncService3.f1120t)) {
                                                phoneSyncService3.f1120t = boolO;
                                                phoneSyncService3.f1121u = jCurrentTimeMillis;
                                            }
                                        }
                                    } catch (Exception unused7) {
                                    }
                                    try {
                                        Thread.sleep(3000L);
                                    } catch (InterruptedException unused8) {
                                        return;
                                    }
                                }
                                return;
                            default:
                                PhoneSyncService phoneSyncService4 = this.b;
                                while (phoneSyncService4.f1103a) {
                                    try {
                                        u0 u0Var2 = u0.f4312a;
                                        u0.e();
                                        break;
                                    } catch (Throwable unused9) {
                                    }
                                    try {
                                        Thread.sleep(1000L);
                                    } catch (InterruptedException unused10) {
                                        return;
                                    }
                                }
                                return;
                        }
                    }
                }, "phone-sync-ble");
                thread4.setDaemon(true);
                thread4.start();
            }
        } catch (Throwable th2) {
            androidx.activity.result.b.s(th2, new StringBuilder("podeAnunciar: "), "BleCarro");
        }
        Log.i("PhoneSyncService", "PhoneSyncService iniciado");
        return 1;
    }

    public final Integer r() {
        CarPropertyManager carPropertyManager = this.f1110j;
        if (carPropertyManager == null) {
            return null;
        }
        Integer num = this.f1113m;
        for (int i3 : num != null ? new int[]{num.intValue()} : this.f1114n) {
            Integer numC = p1.c(carPropertyManager, 356517120, i3);
            if (numC != null) {
                return Integer.valueOf(numC.intValue());
            }
        }
        return null;
    }

    public final JSONObject u() throws JSONException {
        try {
            this.f.execute(new r0(16));
            JSONObject jSONObjectPut = new JSONObject().put("ok", true).put("accepted", true).put("confirmed", false).put("message", "Reboot enviado");
            g.d(jSONObjectPut, "put(...)");
            return jSONObjectPut;
        } catch (RejectedExecutionException unused) {
            JSONObject jSONObjectPut2 = new JSONObject().put("ok", false).put("error", "operation already running");
            g.d(jSONObjectPut2, "put(...)");
            return jSONObjectPut2;
        }
    }

    public final void w(JSONObject jSONObject, OutputStream outputStream) {
        JSONArray jSONArrayOptJSONArray;
        if (jSONObject != null) {
            try {
                jSONArrayOptJSONArray = jSONObject.optJSONArray("logger");
            } catch (Throwable th) {
                androidx.activity.result.b.s(th, new StringBuilder("servirZipDeLogs: "), "PhoneSyncService");
                try {
                    JSONObject jSONObjectPut = new JSONObject().put("ok", false);
                    String message = th.getMessage();
                    if (message == null) {
                        message = "falha ao montar o zip";
                    }
                    String string = jSONObjectPut.put("error", message).toString();
                    g.d(string, "toString(...)");
                    D(outputStream, 500, string);
                    return;
                } catch (Throwable unused) {
                    return;
                }
            }
        } else {
            jSONArrayOptJSONArray = null;
        }
        Set setN = n(jSONArrayOptJSONArray);
        Set setN2 = n(jSONObject != null ? jSONObject.optJSONArray("telapretacentral") : null);
        List listC = c();
        ArrayList arrayList = new ArrayList();
        for (Object obj : listC) {
            if (setN.contains(((File) obj).getName())) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayListB = b();
        ArrayList arrayList2 = new ArrayList();
        int size = arrayListB.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj2 = arrayListB.get(i3);
            i3++;
            if (setN2.contains(((File) obj2).getName())) {
                arrayList2.add(obj2);
            }
        }
        ArrayList arrayListG0 = y1.g.g0(arrayList, arrayList2);
        if (arrayListG0.isEmpty()) {
            String string2 = new JSONObject().put("ok", false).put("error", "nenhum log válido escolhido").toString();
            g.d(string2, "toString(...)");
            D(outputStream, 400, string2);
            return;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ZipOutputStream zipOutputStream = new ZipOutputStream(byteArrayOutputStream);
        try {
            int size2 = arrayListG0.size();
            int i4 = 0;
            while (i4 < size2) {
                int i5 = i4 + 1;
                File file = (File) arrayListG0.get(i4);
                try {
                    zipOutputStream.putNextEntry(new ZipEntry(file.getName()));
                    FileInputStream fileInputStream = new FileInputStream(file);
                    try {
                        b.r(fileInputStream, zipOutputStream);
                        fileInputStream.close();
                        zipOutputStream.closeEntry();
                        i4 = i5;
                    } catch (Throwable th2) {
                        try {
                            throw th2;
                        } catch (Throwable th3) {
                            b.p(fileInputStream, th2);
                            throw th3;
                        }
                    }
                } catch (Throwable th4) {
                    Log.w("PhoneSyncService", "logs_zip: " + file.getName() + " falhou: " + th4.getMessage());
                }
            }
            zipOutputStream.close();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            ae aeVar = ae.f3361a;
            ae.b("PhoneSyncService", "logs_zip: " + arrayListG0.size() + " arquivo(s), " + (byteArray.length / 1024) + " KB", false);
            StringBuilder sb = new StringBuilder();
            sb.append("HTTP/1.1 200 OK\r\nContent-Type: application/zip\r\nContent-Length: ");
            sb.append(byteArray.length);
            sb.append("\r\nConnection: close\r\n\r\n");
            String string3 = sb.toString();
            Charset charset = StandardCharsets.UTF_8;
            g.d(charset, "UTF_8");
            byte[] bytes = string3.getBytes(charset);
            g.d(bytes, "getBytes(...)");
            outputStream.write(bytes);
            outputStream.write(byteArray);
            outputStream.flush();
        } catch (Throwable th5) {
            try {
                throw th5;
            } catch (Throwable th6) {
                b.p(zipOutputStream, th5);
                throw th6;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00b1  */
    /* JADX WARN: Multi-variable type inference failed */
    public final JSONObject x(boolean z2) throws JSONException {
        String str;
        Integer numC;
        String strJ;
        Object next;
        CarPropertyManager carPropertyManager = this.f1110j;
        if (carPropertyManager == null) {
            JSONObject jSONObjectPut = new JSONObject().put("ok", false).put("error", "sem CarPropertyManager");
            g.d(jSONObjectPut, "put(...)");
            return jSONObjectPut;
        }
        String str2 = z2 ? "trancar" : "destrancar";
        List listU = f.U(new a[]{new a(Integer.valueOf(u.f4296k), "principal"), new a(Integer.valueOf(u.f4297l), "fallback")});
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = listU.iterator();
        while (true) {
            if (!it.hasNext()) {
                str = "";
                numC = null;
                break;
            }
            a aVar = (a) it.next();
            int iIntValue = ((Number) aVar.f4641a).intValue();
            str = (String) aVar.b;
            if (p1.l(carPropertyManager, iIntValue, 0, z2 ? 1 : 0)) {
                try {
                    Thread.sleep(200L);
                } catch (Exception unused) {
                }
                numC = p1.c(carPropertyManager, iIntValue, 0);
                break;
            }
            linkedHashSet.add(str + ": escrita falhou ou estourou o prazo");
        }
        boolean z3 = str.length() > 0;
        if (!z3) {
            StringBuilder sbL = androidx.activity.result.b.l("Trava (", str2, "): nenhuma prop aceitou a escrita (");
            if (linkedHashSet instanceof List) {
                List list = (List) linkedHashSet;
                if (list.isEmpty()) {
                    next = null;
                } else {
                    next = list.get(0);
                }
            } else {
                Iterator it2 = linkedHashSet.iterator();
                if (it2.hasNext()) {
                    next = it2.next();
                } else {
                    next = null;
                }
            }
            String str3 = (String) next;
            if (str3 == null) {
                str3 = "?";
            }
            strJ = androidx.activity.result.b.j(sbL, str3, ')');
        } else if (numC != null) {
            strJ = "Trava (" + str2 + "): escrito " + str + '=' + (z2 ? 1 : 0) + ", relê=" + numC + " — confira se o carro respondeu";
        } else {
            strJ = "Trava (" + str2 + "): escrito " + str + '=' + (z2 ? 1 : 0) + " (prop não legível) — confira no carro";
        }
        Log.i("PhoneSyncService", "lock_doors lock=" + z2 + " prop=" + str + " wrote=" + z3 + " readBack=" + numC + " errs=" + linkedHashSet);
        JSONObject jSONObjectPut2 = new JSONObject().put("ok", z3).put("message", strJ).put("wrote", z3).put("prop", str).put("value", z2 ? 1 : 0);
        if (numC != null) {
            jSONObjectPut2.put("after", numC.intValue());
        }
        if (!linkedHashSet.isEmpty()) {
            jSONObjectPut2.put("error", y1.g.e0(linkedHashSet, "; ", null, 62));
        }
        if (!z3) {
            jSONObjectPut2.put("error", strJ);
        }
        g.b(jSONObjectPut2);
        return jSONObjectPut2;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, java.util.Map] */
    public final JSONObject y(String str, boolean z2) throws JSONException {
        Integer numC;
        String strConcat;
        ge geVar = (ge) this.f1122v.get(str);
        boolean z3 = false;
        if (geVar == null) {
            JSONObject jSONObjectPut = new JSONObject().put("ok", false).put("error", "chave desconhecida: ".concat(str));
            g.d(jSONObjectPut, "put(...)");
            return jSONObjectPut;
        }
        CarPropertyManager carPropertyManager = this.f1110j;
        if (carPropertyManager == null) {
            JSONObject jSONObjectPut2 = new JSONObject().put("ok", false).put("error", "sem CarPropertyManager");
            g.d(jSONObjectPut2, "put(...)");
            return jSONObjectPut2;
        }
        int i3 = z2 ? geVar.f3642d : geVar.f3643e;
        CarPropertyManager carPropertyManager2 = this.f1110j;
        Integer numC2 = null;
        if (carPropertyManager2 != null) {
            AtomicInteger atomicInteger = p1.f4042a;
            numC = p1.c(carPropertyManager2, geVar.f3640a, geVar.b);
        } else {
            numC = null;
        }
        boolean zL = p1.l(carPropertyManager, geVar.f3640a, geVar.b, i3);
        String str2 = zL ? null : "escrita falhou ou estourou o prazo";
        try {
            Thread.sleep(200L);
        } catch (Exception unused) {
        }
        CarPropertyManager carPropertyManager3 = this.f1110j;
        if (carPropertyManager3 != null) {
            AtomicInteger atomicInteger2 = p1.f4042a;
            numC2 = p1.c(carPropertyManager3, geVar.f3640a, geVar.b);
        }
        boolean z4 = numC2 != null;
        boolean z5 = z4 && numC2 != null && numC2.intValue() == i3;
        if (zL && (z5 || !z4)) {
            z3 = true;
        }
        if (!zL) {
            StringBuilder sb = new StringBuilder();
            sb.append(geVar.f3641c);
            sb.append(": erro ao escrever (");
            strConcat = androidx.activity.result.b.j(sb, str2 == null ? "?" : str2, ')');
        } else if (z5) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(geVar.f3641c);
            sb2.append(": ");
            sb2.append(z2 ? "ligado" : "desligado");
            sb2.append(" ✓ confirmado");
            strConcat = sb2.toString();
        } else if (z4) {
            strConcat = geVar.f3641c + ": NÃO persistiu (pedido=" + i3 + ", carro=" + numC2 + ") — VHAL ignorou";
        } else {
            strConcat = geVar.f3641c.concat(": escrito, mas o carro não expõe leitura p/ confirmar");
        }
        StringBuilder sbL = androidx.activity.result.b.l("presence ", str, " prop=");
        sbL.append(geVar.f3640a);
        sbL.append(" area=");
        sbL.append(geVar.b);
        sbL.append(" target=");
        sbL.append(i3);
        sbL.append(" before=");
        sbL.append(numC);
        sbL.append(" after=");
        sbL.append(numC2);
        sbL.append(" wrote=");
        sbL.append(zL);
        sbL.append(" confirmed=");
        sbL.append(z5);
        sbL.append(" err=");
        sbL.append(str2);
        Log.i("PhoneSyncService", sbL.toString());
        JSONObject jSONObjectPut3 = new JSONObject().put("ok", z3).put("message", strConcat).put("wrote", zL).put("target", i3).put("readable", z4).put("confirmed", z5);
        if (numC != null) {
            jSONObjectPut3.put("before", numC.intValue());
        }
        if (numC2 != null) {
            jSONObjectPut3.put("after", numC2.intValue());
        }
        if (str2 != null) {
            jSONObjectPut3.put("error", str2);
        }
        if (!z3 && str2 == null) {
            jSONObjectPut3.put("error", strConcat);
        }
        g.b(jSONObjectPut3);
        return jSONObjectPut3;
    }

    public final boolean z(int i3, float f) {
        CarPropertyManager carPropertyManager = this.f1110j;
        if (carPropertyManager == null) {
            return false;
        }
        boolean zJ = p1.j(carPropertyManager, u.f4290d, i3, f);
        if (!zJ) {
            Log.w("PhoneSyncService", "setZoneTemp area=0x" + Integer.toHexString(i3) + ": escrita falhou");
        }
        return zJ;
    }
}
