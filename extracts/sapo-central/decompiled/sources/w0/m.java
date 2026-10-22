package w0;

import android.app.Dialog;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.net.nsd.NsdManager;
import android.os.Build;
import android.os.IBinder;
import android.os.Parcel;
import android.os.SystemClock;
import android.provider.Settings;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.TextView;
import com.ex.auto.ExSapoCastActivity;
import com.ex.auto.ExSapoCastFloaterService;
import com.ex.auto.PhoneSyncService;
import com.ex.auto.R;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.InterfaceAddress;
import java.net.NetworkInterface;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.URL;
import java.net.URLConnection;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Base64;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile int f3860a = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile ContextWrapper f3861c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static Context f3862d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static volatile boolean f3863e = false;
    public static volatile String f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static volatile long f3864g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static volatile String f3865h = "pip";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static volatile m6 f3866i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static NsdManager f3868k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static xd f3869l;
    public static final m b = new m();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final m f3867j = new m();

    public static String A(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder();
        sb.append(o2.k.E0(str).toString());
        sb.append(' ');
        String string = o2.k.E0(str2).toString();
        if (string.length() == 0) {
            string = o2.k.E0(str3).toString();
        }
        sb.append(string);
        return o2.k.E0(sb.toString()).toString();
    }

    public static byte[] B(byte[] bArr) throws NoSuchAlgorithmException, InvalidKeyException {
        long jFloorDiv = Math.floorDiv(System.currentTimeMillis(), 900000L);
        Mac mac = Mac.getInstance("HmacSHA256");
        mac.init(new SecretKeySpec(bArr, "HmacSHA256"));
        byte[] bArr2 = new byte[8];
        for (int i3 = 0; i3 < 8; i3++) {
            bArr2[i3] = (byte) ((jFloorDiv >> (56 - (i3 * 8))) & 255);
        }
        byte[] bArrDoFinal = mac.doFinal(bArr2);
        i2.g.d(bArrDoFinal, "doFinal(...)");
        byte[] bArrCopyOf = Arrays.copyOf(bArrDoFinal, 6);
        i2.g.d(bArrCopyOf, "copyOf(...)");
        return bArrCopyOf;
    }

    public static String C(String str) {
        Pattern patternCompile = Pattern.compile("\"artworkUrl100\"\\s*:\\s*\"([^\"]+)\"");
        i2.g.d(patternCompile, "compile(...)");
        Matcher matcher = patternCompile.matcher(str);
        i2.g.d(matcher, "matcher(...)");
        o2.e eVarB = k1.a.b(matcher, 0, str);
        if (eVarB == null) {
            return null;
        }
        String strC0 = o2.t.c0((String) ((o2.d) eVarB.a()).get(1), "\\/", "/");
        if (o2.k.m0(strC0)) {
            return null;
        }
        return o2.t.c0(strC0, "100x100bb", "600x600bb");
    }

    public static void D(File file) throws NoSuchAlgorithmException, IOException {
        String strM = m();
        if (strM == null) {
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
            if (!y1.f.b0(bArrDigest, new n2(19)).equalsIgnoreCase(strM)) {
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

    public static void E(BufferedOutputStream bufferedOutputStream, int i3, byte[] bArr) {
        int length = bArr.length;
        i2.g.e(bufferedOutputStream, "out");
        byte[] bArr2 = {(byte) i3, (byte) (length >>> 24), (byte) (length >>> 16), (byte) (length >>> 8), (byte) length};
        synchronized (bufferedOutputStream) {
            try {
                bufferedOutputStream.write(bArr2);
                if (length > 0) {
                    bufferedOutputStream.write(bArr, 0, length);
                }
                bufferedOutputStream.flush();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static final void a(Dialog dialog) {
        Window window = dialog.getWindow();
        if (window == null) {
            return;
        }
        window.setBackgroundDrawableResource(R.drawable.bg_master_shell);
        window.setDimAmount(0.58f);
        window.addFlags(2);
        View decorView = window.getDecorView();
        i2.g.d(decorView, "getDecorView(...)");
        decorView.addOnAttachStateChangeListener(new androidx.fragment.app.m0(3, dialog));
    }

    public static final boolean b(IBinder iBinder, BluetoothDevice bluetoothDevice) {
        if (iBinder == null) {
            return false;
        }
        Parcel parcelObtain = Parcel.obtain();
        i2.g.d(parcelObtain, "obtain(...)");
        Parcel parcelObtain2 = Parcel.obtain();
        i2.g.d(parcelObtain2, "obtain(...)");
        try {
            parcelObtain.writeInterfaceToken("android.bluetooth.IBluetoothHeadsetClient");
            parcelObtain.writeInt(1);
            bluetoothDevice.writeToParcel(parcelObtain, 0);
            iBinder.transact(1, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            return parcelObtain2.readInt() != 0;
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    public static String c(int i3, String str) {
        try {
            return x(str, i3, null, new n(0));
        } catch (Exception e3) {
            Log.w("GesturePatch", "adb falhou: " + e3.getClass().getSimpleName() + ": " + e3.getMessage(), e3);
            return "ADB_FAIL: " + e3.getClass().getSimpleName() + ": " + e3.getMessage();
        }
    }

    public static boolean d(Context context, h2.l lVar) {
        boolean zE0;
        boolean zE1 = o2.k.e0(c(8000, "[ -f '/data/local/gesture-launcher/launcher.apk' ] && echo SRC_OK || echo SRC_FAIL"), "SRC_OK", false);
        s5 s5VarA = t5.a(context, "https://raw.githubusercontent.com/swimapps/Outros/main/launchergesture.json");
        if (zE1 && p(context, s5VarA)) {
            zE0 = true;
        } else {
            try {
                File file = new File(context.getCacheDir(), "gesture-launcher.apk");
                if (s5VarA != null) {
                    k(s5VarA.f4201a, file, lVar);
                    lVar.c("verify");
                    t5.b(context, file, s5VarA.f4203d, s5VarA.b);
                } else {
                    if (t1.c("https://raw.githubusercontent.com/swimapps/Outros/main/GeelyAutoLauncher-gesture-signed.apk", u.f4293h) == d5.b) {
                        throw new IllegalStateException("o patch de gestos nao esta mais no GitHub; a distribuicao propria e o unico caminho");
                    }
                    k("https://raw.githubusercontent.com/swimapps/Outros/main/GeelyAutoLauncher-gesture-signed.apk", file, lVar);
                    lVar.c("verify");
                    D(file);
                }
                lVar.c("copy");
                StringBuilder sb = new StringBuilder("'");
                String absolutePath = file.getAbsolutePath();
                i2.g.d(absolutePath, "getAbsolutePath(...)");
                sb.append(o2.t.c0(absolutePath, "'", "'\\''"));
                sb.append('\'');
                zE0 = o2.k.e0(c(60000, o2.m.V("\n                mkdir -p /data/local/gesture-launcher 2>/dev/null\n                cp -f " + sb.toString() + " '/data/local/gesture-launcher/launcher.apk' 2>&1 || exit 20\n                chown root:root '/data/local/gesture-launcher/launcher.apk' 2>&1 || true\n                chmod 644 '/data/local/gesture-launcher/launcher.apk' 2>&1 || true\n                chcon u:object_r:system_app_file:s0 '/data/local/gesture-launcher/launcher.apk' 2>&1 || true\n                [ -f '/data/local/gesture-launcher/launcher.apk' ] && echo SRC_OK || echo SRC_FAIL\n                ")), "SRC_OK", false);
                if (zE0 && s5VarA != null) {
                    context.getSharedPreferences("tela_preta_prefs", 0).edit().putLong("gestures_vc_baixado", s5VarA.b).apply();
                }
            } catch (Throwable th) {
                androidx.activity.result.b.s(th, new StringBuilder("ensureSource: "), "GesturePatch");
                zE0 = false;
            }
        }
        if (!zE0) {
            return false;
        }
        lVar.c("mount");
        boolean zA = qe.f4124a.a(context, "visual.aplicarGestos", y1.s.W(new x1.a("src", "/data/local/gesture-launcher/launcher.apk")));
        if (!zA) {
            Log.w("GesturePatch", "apply: sem playbook ou bind não confirmado");
        }
        return zA;
    }

    public static final void e(Typeface typeface, Context context, int i3, int i4, int i5, View view) {
        if (view instanceof TextView) {
            TextView textView = (TextView) view;
            Typeface typeface2 = textView.getTypeface();
            int style = typeface2 != null ? typeface2.getStyle() : 0;
            if (!i2.g.a(textView.getTypeface(), Typeface.MONOSPACE)) {
                textView.setTypeface(Typeface.create(typeface, style));
            }
            if (!(view instanceof Button) && k1.a.P(-1, -16777216, Integer.valueOf(context.getColor(R.color.cx_text_primary)), Integer.valueOf(context.getColor(R.color.cx_text_secondary))).contains(Integer.valueOf(textView.getCurrentTextColor()))) {
                textView.setTextColor(textView.getCurrentTextColor() == context.getColor(R.color.cx_text_secondary) ? i3 : i4);
            }
        }
        if (view instanceof CompoundButton) {
            ((CompoundButton) view).setButtonTintList(new ColorStateList(new int[][]{new int[]{android.R.attr.state_checked}, new int[0]}, new int[]{i5, i3}));
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i6 = 0; i6 < childCount; i6++) {
                View childAt = viewGroup.getChildAt(i6);
                i2.g.d(childAt, "getChildAt(...)");
                e(typeface, context, i3, i4, i5, childAt);
            }
        }
    }

    public static void f(Context context, int i3, boolean z2) {
        boolean z3 = false;
        int iK = z2 ? k1.a.k(i3, 0, 255) : k1.a.k(i3, 12, 255);
        if (context != null && (!z2 || iK > 0)) {
            try {
                Integer numT = t();
                if (numT != null && numT.intValue() == 0) {
                    z3 = true;
                }
                Settings.System.putInt(context.getContentResolver(), "screen_brightness", iK);
                if (z3) {
                    f2.d.i0(new File("/sys/class/leds/lcd-backlight/brightness"), String.valueOf(iK));
                    return;
                }
                return;
            } catch (Throwable th) {
                Log.w("BrightMem", "SCREEN_BRIGHTNESS recusado (" + th.getClass().getSimpleName() + ") — indo pelo /sys");
            }
        }
        try {
            try {
                new kotlinx.coroutines.scheduling.h(5555).b(3000, "setenforce 0 2>/dev/null");
            } catch (Exception unused) {
            }
            f2.d.i0(new File("/sys/class/leds/lcd-backlight/brightness"), String.valueOf(iK));
        } catch (Throwable th2) {
            androidx.activity.result.b.s(th2, new StringBuilder("applyBrightness: "), "BrightMem");
        }
    }

    public static void g(Context context, String str, String str2, String str3, String str4) {
        boolean zBindService;
        try {
            Field declaredField = Class.forName(str2.concat("$Stub")).getDeclaredField("TRANSACTION_disconnect");
            declaredField.setAccessible(true);
            int i3 = declaredField.getInt(null);
            try {
                BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
                if (defaultAdapter != null && defaultAdapter.isEnabled()) {
                    BluetoothDevice remoteDevice = defaultAdapter.getRemoteDevice(str3);
                    Context applicationContext = context.getApplicationContext();
                    v0 v0Var = new v0(str2, remoteDevice, i3, str4, str3, applicationContext);
                    try {
                        Intent intent = new Intent();
                        intent.setComponent(new ComponentName("com.android.bluetooth", str));
                        zBindService = applicationContext.bindService(intent, v0Var, 1);
                    } catch (Throwable unused) {
                        zBindService = false;
                    }
                    if (zBindService) {
                        return;
                    }
                    ae aeVar = ae.f3361a;
                    ae.b("BtHfpClient", "disconnect " + str4 + ": bind recusado (" + str + ')', false);
                    applicationContext.unbindService(v0Var);
                }
            } catch (Throwable unused2) {
            }
        } catch (Throwable th) {
            ae aeVar2 = ae.f3361a;
            StringBuilder sbL = androidx.activity.result.b.l("disconnect ", str4, ": não achei TRANSACTION_disconnect (");
            sbL.append(th.getClass().getSimpleName());
            sbL.append(") — não mexo");
            ae.b("BtHfpClient", sbL.toString(), false);
        }
    }

    public static String h(String str, String str2, String str3) {
        i2.g.e(str, "artista");
        String string = o2.k.E0(str).toString();
        Locale locale = Locale.ROOT;
        String lowerCase = string.toLowerCase(locale);
        i2.g.d(lowerCase, "toLowerCase(...)");
        String lowerCase2 = o2.k.E0(str2).toString().toLowerCase(locale);
        i2.g.d(lowerCase2, "toLowerCase(...)");
        if (lowerCase2.length() == 0) {
            lowerCase2 = o2.k.E0(str3).toString().toLowerCase(locale);
            i2.g.d(lowerCase2, "toLowerCase(...)");
        }
        return lowerCase + '|' + lowerCase2;
    }

    public static void i(Context context, String str, h2.l lVar) {
        boolean zBindService;
        i2.g.e(context, "context");
        i2.g.e(str, "mac");
        try {
            BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            if (defaultAdapter != null && defaultAdapter.isEnabled()) {
                BluetoothDevice remoteDevice = defaultAdapter.getRemoteDevice(str);
                Context applicationContext = context.getApplicationContext();
                w0 w0Var = new w0(remoteDevice, str, applicationContext, lVar);
                Intent intent = new Intent();
                intent.setComponent(new ComponentName("com.android.bluetooth", "com.android.bluetooth.hfpclient.HeadsetClientService"));
                try {
                    zBindService = applicationContext.bindService(intent, w0Var, 1);
                } catch (Throwable th) {
                    Log.w("BtHfpClient", "bindService lançou: " + th.getClass().getSimpleName() + ": " + th.getMessage());
                    zBindService = false;
                }
                if (zBindService) {
                    return;
                }
                ae aeVar = ae.f3361a;
                ae.b("BtHfpClient", "bindService(com.android.bluetooth.hfpclient.HeadsetClientService) recusado — HFP-Client indisponível neste firmware", false);
                try {
                    applicationContext.unbindService(w0Var);
                } catch (Throwable unused) {
                }
                if (lVar != null) {
                    lVar.c(Boolean.FALSE);
                    return;
                }
                return;
            }
            Log.w("BtHfpClient", "adapter ausente ou desligado");
            if (lVar != null) {
                lVar.c(Boolean.FALSE);
            }
        } catch (Throwable th2) {
            androidx.activity.result.b.s(th2, androidx.activity.result.b.l("MAC inválido (", str, "): "), "BtHfpClient");
            if (lVar != null) {
                lVar.c(Boolean.FALSE);
            }
        }
    }

    public static void j(Context context, String str) {
        i2.g.e(str, "mac");
        g(context, "com.android.bluetooth.hfpclient.HeadsetClientService", "android.bluetooth.IBluetoothHeadsetClient", str, "HFP-Client");
        g(context, "com.android.bluetooth.a2dpsink.A2dpSinkService", "android.bluetooth.IBluetoothA2dpSink", str, "A2DP-Sink");
    }

    public static void k(String str, File file, h2.l lVar) throws IOException {
        int i3;
        URLConnection uRLConnectionOpenConnection = new URL(str).openConnection();
        i2.g.c(uRLConnectionOpenConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
        HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
        httpURLConnection.setConnectTimeout(30000);
        httpURLConnection.setReadTimeout(60000);
        httpURLConnection.setInstanceFollowRedirects(true);
        try {
            if (httpURLConnection.getResponseCode() != 200) {
                throw new IOException("HTTP " + httpURLConnection.getResponseCode());
            }
            int contentLength = httpURLConnection.getContentLength();
            InputStream inputStream = httpURLConnection.getInputStream();
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                try {
                    byte[] bArr = new byte[65536];
                    int i4 = -1;
                    long j3 = 0;
                    while (true) {
                        int i5 = inputStream.read(bArr);
                        if (i5 < 0) {
                            break;
                        }
                        fileOutputStream.write(bArr, 0, i5);
                        j3 += (long) i5;
                        if (contentLength > 0 && (i3 = (int) ((((long) 100) * j3) / ((long) contentLength))) != i4) {
                            lVar.c("download:" + i3);
                            i4 = i3;
                        }
                        try {
                            throw th;
                        } catch (Throwable th) {
                            a1.b.p(inputStream, th);
                            throw th;
                        }
                    }
                    fileOutputStream.close();
                    inputStream.close();
                    httpURLConnection.disconnect();
                    if (file.length() == 0) {
                        throw new IOException("download vazio");
                    }
                } catch (Throwable th2) {
                    try {
                        throw th2;
                    } catch (Throwable th3) {
                        a1.b.p(fileOutputStream, th2);
                        throw th3;
                    }
                }
            } catch (Throwable th4) {
                throw th4;
            }
        } catch (Throwable th5) {
            httpURLConnection.disconnect();
            throw th5;
        }
    }

    public static String l() {
        int i3 = u.f4288a;
        try {
            String strY = y(8000, o2.m.V("\n            cur=\"$(getprop service.adb.tcp.port)\"\n            per=\"$(getprop persist.adb.tcp.port)\"\n            if [ \"$cur\" = \"65010\" ] && [ \"$per\" = \"65010\" ]; then\n              echo \"ADB_PORT_OK=65010\"\n            else\n              setprop persist.adb.tcp.port 65010\n              setprop service.adb.tcp.port 65010\n              ( sleep 1; setprop ctl.restart adbd ) >/dev/null 2>&1 &\n              echo \"ADB_PORT_MIGRATED cur=$cur per=$per -> 65010\"\n            fi\n        "));
            Log.i("AdbLocal", "ensurePortMigrated: " + o2.k.E0(strY).toString());
            return strY;
        } catch (Exception e3) {
            Log.w("AdbLocal", "ensurePortMigrated falhou: " + e3.getMessage());
            return "ADB_PORT_MIGRATE_FAIL=" + e3.getMessage();
        }
    }

    public static String m() {
        if (t1.c("https://raw.githubusercontent.com/swimapps/Outros/main/launchergesture.json", u.f4293h) == d5.b) {
            Log.i("GesturePatch", "fetchExpectedSha: o manifesto saiu do GitHub — sem referencia de sha");
            return null;
        }
        try {
            URL url = new URL("https://raw.githubusercontent.com/swimapps/Outros/main/launchergesture.json");
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
            androidx.activity.result.b.s(th, new StringBuilder("fetchExpectedSha: "), "GesturePatch");
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0032 A[Catch: all -> 0x0035, TRY_LEAVE, TryCatch #0 {all -> 0x0035, blocks: (B:3:0x0004, B:5:0x0023, B:8:0x0029, B:12:0x0032), top: B:17:0x0004 }] */
    public static String n(PhoneSyncService phoneSyncService) throws NoSuchAlgorithmException {
        String str;
        try {
            Object objInvoke = Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, "persist.device.real.serialno", "");
            String str2 = objInvoke instanceof String ? (String) objInvoke : null;
            if (str2 == null) {
                str = Build.SERIAL;
            } else {
                str = str2.length() > 0 ? str2 : null;
                if (str == null) {
                    str = Build.SERIAL;
                }
            }
        } catch (Throwable unused) {
            str = Build.SERIAL;
        }
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        byte[] bytes = ("exsapo:" + str).getBytes(o2.a.f2622a);
        i2.g.d(bytes, "getBytes(...)");
        byte[] bArrDigest = messageDigest.digest(bytes);
        i2.g.b(bArrDigest);
        return y1.g.e0(y1.f.f0(4, bArrDigest), "", new ya(22), 30);
    }

    public static boolean o(Socket socket) {
        InetAddress address;
        byte[] address2;
        SocketAddress remoteSocketAddress = socket.getRemoteSocketAddress();
        InetSocketAddress inetSocketAddress = remoteSocketAddress instanceof InetSocketAddress ? (InetSocketAddress) remoteSocketAddress : null;
        if (inetSocketAddress == null || (address = inetSocketAddress.getAddress()) == null) {
            return false;
        }
        if (!address.isLoopbackAddress()) {
            byte[] address3 = address.getAddress();
            if (address3.length == 4) {
                try {
                    Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
                    i2.g.d(networkInterfaces, "getNetworkInterfaces(...)");
                    while (networkInterfaces.hasMoreElements()) {
                        NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                        if (networkInterfaceNextElement.isUp() && !networkInterfaceNextElement.isLoopback()) {
                            Iterator<InterfaceAddress> it = networkInterfaceNextElement.getInterfaceAddresses().iterator();
                            while (it.hasNext()) {
                                InetAddress address4 = it.next().getAddress();
                                if (address4 != null && (address2 = address4.getAddress()) != null && address2.length == 4 && address2[0] == address3[0] && address2[1] == address3[1] && address2[2] == address3[2]) {
                                }
                            }
                        }
                    }
                } catch (Exception unused) {
                }
            }
            return address.isSiteLocalAddress();
        }
        return true;
    }

    public static boolean p(Context context, s5 s5Var) {
        if (s5Var == null) {
            context.getSharedPreferences("tela_preta_prefs", 0).getLong("gestures_vc_baixado", 0L);
            Log.i("GesturePatch", "isLocalSourceUpToDate: " + b5.f3382a + " — o servidor nao respondeu e o manifesto do GitHub nao existe mais; fico com a copia local sem conferir");
            return true;
        }
        long j3 = s5Var.b;
        long j4 = context.getSharedPreferences("tela_preta_prefs", 0).getLong("gestures_vc_baixado", 0L);
        boolean z2 = j4 > 0 && j4 == j3;
        if (!z2) {
            Log.i("GesturePatch", "isLocalSourceUpToDate: desatualizado (baixado=" + j4 + " servidor=" + j3 + ')');
        }
        return z2;
    }

    public static boolean q(Context context) {
        i2.g.e(context, "context");
        return (context.getResources().getConfiguration().uiMode & 48) == 32;
    }

    public static void s() {
        Context context = f3862d;
        if (context == null) {
            return;
        }
        try {
            if (f3865h.equals("fullscreen")) {
                context.startActivity(new Intent(context, (Class<?>) ExSapoCastActivity.class).addFlags(805306368));
            } else {
                context.startService(new Intent(context, (Class<?>) ExSapoCastFloaterService.class));
            }
        } catch (Exception e3) {
            Log.e("ExSapoCast", "launchUi: " + e3.getMessage());
        }
    }

    public static Integer t() {
        try {
            return o2.s.W(o2.k.E0(f2.d.h0(new File("/sys/class/leds/lcd-backlight/brightness"))).toString());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static e.h u(DataInputStream dataInputStream) throws IOException {
        try {
            int i3 = dataInputStream.read();
            if (i3 < 0) {
                return null;
            }
            int i4 = dataInputStream.readInt();
            if (i4 < 0 || i4 > 4194304) {
                throw new EOFException("length invalido: " + i4);
            }
            byte[] bArr = new byte[i4];
            if (i4 > 0) {
                dataInputStream.readFully(bArr);
            }
            return new e.h(i3, bArr);
        } catch (EOFException unused) {
            return null;
        }
    }

    public static x1.a v(Context context) {
        s5 s5VarA = t5.a(context, "https://raw.githubusercontent.com/swimapps/Outros/main/launchergesture.json");
        if (s5VarA != null) {
            return new x1.a(String.valueOf(s5VarA.b), Boolean.valueOf(p(context, s5VarA)));
        }
        String strM = m();
        if (strM == null) {
            return null;
        }
        return new x1.a(strM, Boolean.valueOf(o2.t.a0(o2.k.E0(c(15000, "sha256sum '/data/local/gesture-launcher/launcher.apk' 2>/dev/null | cut -d' ' -f1")).toString(), strM)));
    }

    public static void w(Context context, SharedPreferences sharedPreferences) {
        i2.g.e(context, "context");
        if (sharedPreferences.getBoolean("remember_brightness", false)) {
            int i3 = sharedPreferences.getInt(q(context) ? "bright_night" : "bright_day", -1);
            if (1 > i3 || i3 >= 256) {
                return;
            }
            f(context, i3, false);
            StringBuilder sb = new StringBuilder("restore: ");
            sb.append(q(context) ? "noite(farol on)" : "dia(farol off)");
            sb.append(" -> ");
            sb.append(i3);
            Log.i("BrightMem", sb.toString());
        }
    }

    public static String x(String str, int i3, h2.l lVar, h2.p pVar) {
        i2.g.e(str, "script");
        byte[] bytes = str.getBytes(o2.a.f2622a);
        i2.g.d(bytes, "getBytes(...)");
        if (bytes.length < 3500) {
            return (String) pVar.b(str, Integer.valueOf(i3));
        }
        String strEncodeToString = Base64.getEncoder().encodeToString(bytes);
        long jCurrentTimeMillis = System.currentTimeMillis();
        String str2 = "'/data/local/tmp/_big_script_" + jCurrentTimeMillis + ".b64'";
        String str3 = "'/data/local/tmp/_big_script_" + jCurrentTimeMillis + ".sh'";
        pVar.b("rm -f " + str2 + ' ' + str3 + " 2>/dev/null; true", 10000);
        int length = (strEncodeToString.length() + 2999) / 3000;
        int i4 = 0;
        int i5 = 0;
        while (i4 < strEncodeToString.length()) {
            i5++;
            if (lVar != null) {
                lVar.c("Enviando dados… (" + i5 + '/' + length + ')');
            }
            int i6 = i4 + 3000;
            String strSubstring = strEncodeToString.substring(i4, Math.min(i6, strEncodeToString.length()));
            i2.g.d(strSubstring, "substring(...)");
            pVar.b("echo '" + strSubstring + "' >> " + str2, 15000);
            i4 = i6;
        }
        long length2 = ((long) strEncodeToString.length()) + ((long) length);
        Long lY = o2.s.Y(o2.k.E0((String) pVar.b("wc -c < " + str2 + " 2>/dev/null", 15000)).toString());
        if (lY != null && lY.longValue() >= length2) {
            if (lVar != null) {
                lVar.c("Aplicando… (pode levar um tempo)");
            }
            StringBuilder sbM = androidx.activity.result.b.m("base64 -d ", str2, " > ", str3, " 2>&1 && sh ");
            sbM.append(str3);
            String str4 = (String) pVar.b(sbM.toString(), Integer.valueOf(i3));
            pVar.b("rm -f " + str2 + ' ' + str3 + " 2>/dev/null; true", 10000);
            return str4;
        }
        pVar.b("rm -f " + str2 + ' ' + str3 + " 2>/dev/null; true", 10000);
        StringBuilder sb = new StringBuilder("ADBBIG_INCOMPLETO esperado=");
        sb.append(length2);
        sb.append(" veio=");
        Object obj = lY;
        if (lY == null) {
            obj = "?";
        }
        sb.append(obj);
        sb.append(" — nada foi executado");
        return sb.toString();
    }

    public static String y(int i3, String str) {
        i2.g.e(str, "cmd");
        return x(str, i3, null, new n(0));
    }

    public static void z(Context context, SharedPreferences sharedPreferences) {
        Integer numT;
        int iIntValue;
        i2.g.e(context, "context");
        if (sharedPreferences.getBoolean("remember_brightness", false) && (numT = t()) != null && (iIntValue = numT.intValue()) > 0) {
            String str = q(context) ? "bright_night" : "bright_day";
            if (sharedPreferences.getInt(str, -1) == iIntValue) {
                return;
            }
            sharedPreferences.edit().putInt(str, iIntValue).apply();
        }
    }

    public synchronized String r(PhoneSyncService phoneSyncService, String str) {
        String string;
        try {
            f3862d = phoneSyncService.getApplicationContext();
            f3865h = str.equals("fullscreen") ? "fullscreen" : "pip";
            StringBuilder sb = new StringBuilder(24);
            long jNanoTime = System.nanoTime() ^ (((long) hashCode()) << 21);
            for (int i3 = 0; i3 < 24; i3++) {
                jNanoTime = (jNanoTime * 6364136223846793005L) + 1442695040888963407L;
                sb.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789".charAt((((int) (jNanoTime >>> 33)) & Integer.MAX_VALUE) % 62));
            }
            string = sb.toString();
            i2.g.d(string, "toString(...)");
            f = string;
            f3864g = SystemClock.elapsedRealtime() + 300000;
            if (!f3863e) {
                f3863e = true;
                Thread thread = new Thread(new r0(6, this), "exsapocast-accept");
                thread.setDaemon(true);
                thread.start();
            }
        } catch (Throwable th) {
            throw th;
        }
        return string;
    }
}
