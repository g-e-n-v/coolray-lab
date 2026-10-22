package w0;

import android.app.AlertDialog;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.Parcel;
import android.util.Log;
import android.widget.RemoteViews;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.FanSpeedWidgetProvider;
import com.ex.auto.HomeFloatingWidgetsService;
import com.ex.auto.HomeWidgetsPollService;
import com.ex.auto.LyricsFloaterService;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.R;
import com.geely.driveregenfloater.DriveRegenFloaterService;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class t1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile long f4248a = 0;
    public static volatile s1 b = s1.f4193c;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f4249c = {-14829228, -1, -5317, -16718337, -44462, -22746};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[] f4250d = {-15592425, -16777216, -15064194, -13558894, -12703965, -16757440};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Object f4251e = new Object();
    public static AlertDialog f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static volatile boolean f4252g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static volatile String f4253h = "/data/local/tmp/fixes/central_boot.log";

    public static final m4 A(int i3, n4 n4Var) {
        i2.g.e(n4Var, "exib");
        Integer num = n4Var.f3930a;
        if (num != null && num.intValue() == i3) {
            return n4Var.b ? m4.f3879a : m4.b;
        }
        return m4.f3880c;
    }

    public static final n4 B(Integer num, Integer num2, Set set) {
        i2.g.e(set, "validos");
        if (num2 == null || !set.contains(Integer.valueOf(num2.intValue()))) {
            num2 = null;
        }
        boolean z2 = false;
        if (num2 == null) {
            return new n4(num, false, false);
        }
        if (num != null && !num.equals(num2)) {
            z2 = true;
        }
        return new n4(num2, true, z2);
    }

    public static ThreadPoolExecutor C(String str, ThreadFactory threadFactory, int i3) {
        if ((i3 & 4) != 0) {
            threadFactory = null;
        }
        ThreadFactory threadFactory2 = threadFactory;
        ThreadPoolExecutor threadPoolExecutor = threadFactory2 != null ? new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), threadFactory2) : new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue());
        threadPoolExecutor.setRejectedExecutionHandler(new o6(str));
        return threadPoolExecutor;
    }

    public static final Notification D(Service service, String str, String str2, String str3, int i3, String str4, int i4) {
        Object systemService = service.getSystemService("notification");
        i2.g.c(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        NotificationManager notificationManager = (NotificationManager) systemService;
        if (notificationManager.getNotificationChannel(str) == null) {
            NotificationChannel notificationChannel = new NotificationChannel(str, str2, i4);
            notificationChannel.setShowBadge(false);
            notificationManager.createNotificationChannel(notificationChannel);
        }
        Notification.Builder smallIcon = new Notification.Builder(service, str).setContentTitle(str3).setSmallIcon(i3);
        i2.g.d(smallIcon, "setSmallIcon(...)");
        if (str4 != null) {
            smallIcon.setContentText(str4);
        }
        Notification notificationBuild = smallIcon.build();
        i2.g.d(notificationBuild, "build(...)");
        return notificationBuild;
    }

    public static /* synthetic */ Notification E(Service service, String str, String str2, String str3, int i3, String str4, int i4) {
        if ((i4 & 16) != 0) {
            str4 = null;
        }
        return D(service, str, str2, str3, i3, str4, 1);
    }

    public static List F(IBinder iBinder) {
        Parcel parcelObtain = Parcel.obtain();
        i2.g.d(parcelObtain, "obtain(...)");
        Parcel parcelObtain2 = Parcel.obtain();
        i2.g.d(parcelObtain2, "obtain(...)");
        try {
            parcelObtain.writeInterfaceToken("com.njda.carplay.connection.devicelist.ICarplayDeviceManager");
            if (!iBinder.transact(8, parcelObtain, parcelObtain2, 0)) {
                Log.w("CarplayDeviceBinder", "transact(getDeviceList) devolveu false");
                return null;
            }
            parcelObtain2.readException();
            int i3 = parcelObtain2.readInt();
            if (i3 < 0) {
                y1.p pVar = y1.p.f4663a;
                parcelObtain.recycle();
                parcelObtain2.recycle();
                return pVar;
            }
            ArrayList arrayList = new ArrayList(i3);
            for (int i4 = 0; i4 < i3; i4++) {
                if (parcelObtain2.readInt() != 0) {
                    arrayList.add(new r1(parcelObtain2.readString(), parcelObtain2.readString(), parcelObtain2.readString(), parcelObtain2.readByte(), parcelObtain2.readByte(), parcelObtain2.readByte()));
                }
            }
            parcelObtain.recycle();
            parcelObtain2.recycle();
            return arrayList;
        } catch (Throwable th) {
            try {
                Log.w("CarplayDeviceBinder", "getDeviceList(txn 8): " + th.getClass().getSimpleName() + ": " + th.getMessage());
            } finally {
                parcelObtain.recycle();
                parcelObtain2.recycle();
            }
        }
    }

    public static List G(IBinder iBinder) {
        Parcel parcelObtain = Parcel.obtain();
        i2.g.d(parcelObtain, "obtain(...)");
        Parcel parcelObtain2 = Parcel.obtain();
        i2.g.d(parcelObtain2, "obtain(...)");
        try {
            parcelObtain.writeInterfaceToken("com.njda.adapter.androidauto.connection.devicelist.IDeviceManager");
            iBinder.transact(6, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            int i3 = parcelObtain2.readInt();
            if (i3 < 0) {
                y1.p pVar = y1.p.f4663a;
                parcelObtain.recycle();
                parcelObtain2.recycle();
                return pVar;
            }
            ArrayList arrayList = new ArrayList(i3);
            for (int i4 = 0; i4 < i3; i4++) {
                if (parcelObtain2.readInt() != 0) {
                    arrayList.add(new a(parcelObtain2.readInt(), parcelObtain2.readString(), parcelObtain2.readString(), parcelObtain2.readString(), parcelObtain2.readInt(), parcelObtain2.readByte()));
                }
            }
            parcelObtain.recycle();
            parcelObtain2.recycle();
            return arrayList;
        } catch (Throwable th) {
            try {
                Log.w("AaDeviceBinder", "getDeviceList(txn 6): " + th.getClass().getSimpleName() + ": " + th.getMessage());
                return null;
            } finally {
                parcelObtain.recycle();
                parcelObtain2.recycle();
            }
        }
    }

    public static int H(LyricsFloaterService lyricsFloaterService) {
        return lyricsFloaterService.getSharedPreferences("lyrics_style_config", 0).getInt("font", -14829228);
    }

    public static float I(LyricsFloaterService lyricsFloaterService) {
        return k1.a.j(lyricsFloaterService.getSharedPreferences("lyrics_style_config", 0).getFloat("scale", 1.0f), 0.6f, 2.0f);
    }

    public static void J(File file, boolean z2) {
        try {
            f2.d.i0(file, u(z2));
        } catch (IOException e3) {
            Log.w("BootScript", "gravação direta falhou (" + e3.getMessage() + ") — apagando o arquivo alheio e recriando");
            if (file.exists() && !file.delete()) {
                try {
                    kotlinx.coroutines.scheduling.h hVar = new kotlinx.coroutines.scheduling.h(5555);
                    StringBuilder sb = new StringBuilder("chown system:system ");
                    sb.append(e8.N("/data/local/tmp/fixes"));
                    sb.append(' ');
                    String absolutePath = file.getAbsolutePath();
                    i2.g.d(absolutePath, "getAbsolutePath(...)");
                    sb.append(e8.N(absolutePath));
                    sb.append(" 2>/dev/null; chmod 775 ");
                    sb.append(e8.N("/data/local/tmp/fixes"));
                    sb.append(" 2>/dev/null; chmod 664 ");
                    String absolutePath2 = file.getAbsolutePath();
                    i2.g.d(absolutePath2, "getAbsolutePath(...)");
                    sb.append(e8.N(absolutePath2));
                    sb.append(" 2>/dev/null; echo perms_ok");
                    hVar.b(8000, sb.toString());
                } catch (Throwable th) {
                    androidx.activity.result.b.s(th, new StringBuilder("canal root indisponível pra corrigir permissões: "), "BootScript");
                }
            }
            f2.d.i0(file, u(z2));
        }
    }

    public static boolean K(String str) {
        i2.g.e(str, "ip");
        Pattern patternCompile = Pattern.compile("^[0-9]{1,3}(\\.[0-9]{1,3}){3}$");
        i2.g.d(patternCompile, "compile(...)");
        if (patternCompile.matcher(str).matches()) {
            List listU0 = o2.k.u0(str, new char[]{'.'});
            if (!listU0.isEmpty()) {
                Iterator it = listU0.iterator();
                while (it.hasNext()) {
                    Integer numW = o2.s.W((String) it.next());
                    int iIntValue = numW != null ? numW.intValue() : 256;
                    if (iIntValue < 0 || iIntValue >= 256) {
                    }
                }
            }
            return true;
        }
        return false;
    }

    public static final i5 L(Long l3, Integer num) {
        if (l3.longValue() == 0) {
            return i5.b;
        }
        return num.intValue() != 0 ? i5.f3707c : i5.f3706a;
    }

    public static final String M(u3 u3Var, String str) {
        i2.g.e(str, "executadoDeVerdade");
        return "[SOMBRA] " + t3.f4258a + '/' + r3.f4144a + " → teria " + u3Var.f4330a + " (" + u3Var.b + ") · de fato: " + str;
    }

    public static List N(Context context) {
        int i3 = 0;
        String string = context.getSharedPreferences("background_keep_alive_prefs", 0).getString("packages", null);
        if (string == null) {
            return y1.p.f4663a;
        }
        List listV0 = o2.k.v0(string, new String[]{","}, 0, 6);
        ArrayList arrayList = new ArrayList(y1.i.X(listV0));
        Iterator it = listV0.iterator();
        while (it.hasNext()) {
            arrayList.add(o2.k.E0((String) it.next()).toString());
        }
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            if (((String) obj).length() > 0) {
                arrayList2.add(obj);
            }
        }
        return arrayList2;
    }

    public static k O(Context context, int i3) {
        i2.g.e(context, "ctx");
        String string = context.getSharedPreferences("ac_programs_prefs", 0).getString("program_" + i3, null);
        if (string != null) {
            try {
                JSONObject jSONObject = new JSONObject(string);
                ArrayList arrayList = new ArrayList();
                JSONArray jSONArray = jSONObject.getJSONArray("steps");
                int length = jSONArray.length();
                for (int i4 = 0; i4 < length; i4++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i4);
                    String string2 = jSONObject2.getString("type");
                    i2.g.d(string2, "getString(...)");
                    arrayList.add(new l(string2, jSONObject2.getDouble("value")));
                }
                if (!arrayList.isEmpty()) {
                    return new k(arrayList, jSONObject.optBoolean("repeat", false), jSONObject.optBoolean("restaurarAnterior", false));
                }
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public static List P(Context context) {
        i2.g.e(context, "ctx");
        int i3 = 0;
        String string = context.getSharedPreferences("close_apps_whitelist_prefs", 0).getString("packages", null);
        if (string == null) {
            return y1.p.f4663a;
        }
        List listV0 = o2.k.v0(string, new String[]{","}, 0, 6);
        ArrayList arrayList = new ArrayList(y1.i.X(listV0));
        Iterator it = listV0.iterator();
        while (it.hasNext()) {
            arrayList.add(o2.k.E0((String) it.next()).toString());
        }
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            if (((String) obj).length() > 0) {
                arrayList2.add(obj);
            }
        }
        return arrayList2;
    }

    public static List Q(Context context) {
        int i3 = 0;
        String string = context.getSharedPreferences("favorite_apps_prefs", 0).getString("packages", null);
        if (string == null) {
            return y1.p.f4663a;
        }
        List listV0 = o2.k.v0(string, new String[]{","}, 0, 6);
        ArrayList arrayList = new ArrayList(y1.i.X(listV0));
        Iterator it = listV0.iterator();
        while (it.hasNext()) {
            arrayList.add(o2.k.E0((String) it.next()).toString());
        }
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            if (((String) obj).length() > 0) {
                arrayList2.add(obj);
            }
        }
        return arrayList2;
    }

    public static final Integer R(int i3) {
        Integer numValueOf = Integer.valueOf(i3);
        int iIntValue = numValueOf.intValue();
        if (1 > iIntValue || iIntValue >= 4) {
            return null;
        }
        return numValueOf;
    }

    public static String S(String str) {
        Set<BluetoothDevice> bondedDevices;
        boolean zBooleanValue;
        try {
            BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            if (defaultAdapter == null || (bondedDevices = defaultAdapter.getBondedDevices()) == null) {
                bondedDevices = y1.r.f4665a;
            }
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = bondedDevices.iterator();
            while (true) {
                zBooleanValue = false;
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                try {
                    Object objInvoke = BluetoothDevice.class.getMethod("isConnected", null).invoke((BluetoothDevice) next, null);
                    Boolean bool = objInvoke instanceof Boolean ? (Boolean) objInvoke : null;
                    if (bool != null) {
                        zBooleanValue = bool.booleanValue();
                    }
                } catch (Throwable unused) {
                }
                if (zBooleanValue) {
                    arrayList.add(next);
                }
            }
            if (!arrayList.isEmpty()) {
                int size = arrayList.size();
                int i3 = 0;
                while (i3 < size) {
                    Object obj = arrayList.get(i3);
                    i3++;
                    if (o2.t.a0(((BluetoothDevice) obj).getAddress(), str)) {
                        zBooleanValue = true;
                        break;
                    }
                }
            }
            if (zBooleanValue) {
                return "o alvo já tem link Bluetooth";
            }
            if (arrayList.isEmpty()) {
                return null;
            }
            return "outro aparelho no Bluetooth (" + y1.g.e0(arrayList, null, new o(19), 31) + ") — a vaga do HFP é uma só";
        } catch (Throwable unused2) {
            return null;
        }
    }

    public static Integer T(x0... x0VarArr) {
        Object next;
        i2.g.e(x0VarArr, "readings");
        ArrayList arrayListY = y1.f.Y(x0VarArr);
        ArrayList arrayList = new ArrayList();
        int size = arrayListY.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayListY.get(i3);
            i3++;
            x0 x0Var = (x0) obj;
            if (x0Var.f4486c && x0Var.b > 0 && y0.b.contains(Integer.valueOf(x0Var.f4485a))) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            next = it.next();
            if (it.hasNext()) {
                long j3 = ((x0) next).b;
                do {
                    Object next2 = it.next();
                    long j4 = ((x0) next2).b;
                    if (j3 < j4) {
                        next = next2;
                        j3 = j4;
                    }
                } while (it.hasNext());
            }
        } else {
            next = null;
        }
        x0 x0Var2 = (x0) next;
        if (x0Var2 != null) {
            return Integer.valueOf(x0Var2.f4485a);
        }
        return null;
    }

    public static void U(String str) {
        HomeFloatingWidgetsService homeFloatingWidgetsService = HomeFloatingWidgetsService.f927b0;
        if (homeFloatingWidgetsService != null) {
            homeFloatingWidgetsService.f929c.post(new m7(homeFloatingWidgetsService, str, 1));
        }
    }

    public static void V(String str, h2.l lVar) {
        CentralWatchdogService centralWatchdogService = CentralWatchdogService.V2;
        if (centralWatchdogService == null) {
            lVar.c(Boolean.FALSE);
            return;
        }
        try {
            centralWatchdogService.b.execute(new a1.g(centralWatchdogService, str, lVar, 5));
        } catch (Throwable unused) {
            centralWatchdogService.f811a.post(new a1.r(5, lVar));
        }
    }

    public static void W() {
        CentralWatchdogService centralWatchdogService = CentralWatchdogService.V2;
        if (centralWatchdogService != null) {
            centralWatchdogService.f811a.post(new v2(centralWatchdogService, 4));
        }
    }

    public static u3 X(s3 s3Var, String str) {
        if (s3Var.f4198d.equals(Boolean.FALSE)) {
            return new u3(q3.f4090h, str);
        }
        return new u3(q3.b, "não sei se há sessão ativa — não reinicio por ignorância (" + str + ')');
    }

    public static boolean Y(String str) {
        CentralWatchdogService centralWatchdogService = CentralWatchdogService.V2;
        if (centralWatchdogService == null || !CentralWatchdogService.U2) {
            return false;
        }
        if (DriveRegenFloaterService.M || centralWatchdogService.f840i != null) {
            centralWatchdogService.f811a.post(new a2(str, centralWatchdogService, 9));
            return true;
        }
        ae aeVar = ae.f3361a;
        androidx.activity.result.b.p("condução/regeneração (", str, "): recusado — sem floater e sem CarPropertyManager; quem chamou escreve direto", "CentralWatchdog", false);
        centralWatchdogService.f811a.post(new v2(centralWatchdogService, 12));
        return false;
    }

    public static String Z(QuickAccessFloaterService quickAccessFloaterService, String str) {
        i2.g.e(quickAccessFloaterService, "ctx");
        if (o2.k.m0(str)) {
            return "";
        }
        try {
            PackageManager packageManager = quickAccessFloaterService.getPackageManager();
            return packageManager.getApplicationLabel(packageManager.getApplicationInfo(str, 0)).toString();
        } catch (Throwable unused) {
            return str;
        }
    }

    public static final ScheduledThreadPoolExecutor a(String str, ThreadFactory threadFactory) {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, threadFactory);
        scheduledThreadPoolExecutor.setRejectedExecutionHandler(new o6(str));
        return scheduledThreadPoolExecutor;
    }

    public static String a0() {
        String str;
        String str2 = u.f4310y;
        o oVar = new o(16);
        StringBuilder sb = new StringBuilder("\n            echo \"-- CarplayMonitor (bind efêmero, refazer sempre) --\"\n            if [ ! -f ");
        sb.append((String) oVar.c(str2));
        sb.append(" ]; then echo \"SEM_MONITOR\"; exit 0; fi\n            echo \"SELINUX_ANTES=$(getenforce 2>/dev/null)\"\n            setenforce 0 2>/dev/null || true\n            if grep -F ");
        sb.append((String) oVar.c(" " + str2 + ' '));
        sb.append(" /proc/mounts >/dev/null 2>&1; then\n              _MM=$(md5sum ");
        sb.append((String) oVar.c(str2));
        sb.append(" | awk '{print $1}')\n              case \"$_MM\" in\n");
        List list = u.f4309x;
        String str3 = "_EXP";
        String strE0 = y1.g.e0(list, "\n", new r(0, str3), 30);
        List list2 = w1.f4416a;
        String str4 = "              ";
        sb.append(o2.m.U(strE0.concat("\n  77d40d3b4cb19b29796e3ebcb82c4560) _EXP=77d40d3b4cb19b29796e3ebcb82c4560; echo \"MONITOR_BUILD=1111_USB_GUARD\" ;;\n  1aaec42940be4f8d5a09384c04f5f109) _EXP=1aaec42940be4f8d5a09384c04f5f109; echo \"MONITOR_BUILD=1114_USB_GUARD\" ;;\n  *) _EXP= ;;"), "              "));
        sb.append("\n              esac\n");
        sb.append(o2.m.U("_EXP_WIFI=$_EXP\ncase \"$_EXP\" in\n  2c019dfb1d38ee6e5c3b20a876ae73fb) _EXP=77d40d3b4cb19b29796e3ebcb82c4560 ;;\n  3c1c4d714d1810373b0b0728b68ec648) _EXP=1aaec42940be4f8d5a09384c04f5f109 ;;\nesac", "              "));
        sb.append("\n              if [ -n \"$_EXP\" ] && [ \"$_MM\" = \"$_EXP\" ]; then\n                echo \"MONITOR_JA_MONTADO\"\n              else\n                echo \"MONITOR_MONTADO_DESCONHECIDO=$_MM (desmontando p/ refazer)\"\n                _N=0\n                while grep -F ");
        sb.append((String) oVar.c(" " + str2 + ' '));
        sb.append(" /proc/mounts >/dev/null 2>&1 && [ $_N -lt 8 ]; do\n                  umount ");
        sb.append((String) oVar.c(str2));
        sb.append(" 2>/dev/null || umount -l ");
        sb.append((String) oVar.c(str2));
        sb.append(" 2>/dev/null\n                  _N=$((_N+1))\n                done\n                if grep -F ");
        sb.append((String) oVar.c(" " + str2 + ' '));
        sb.append(" /proc/mounts >/dev/null 2>&1; then\n                  echo \"MONITOR_DESMONTE_FALHOU\"; exit 1\n                fi\n              fi\n            fi\n            if ! grep -F ");
        sb.append((String) oVar.c(" " + str2 + ' '));
        sb.append(" /proc/mounts >/dev/null 2>&1; then\n              LBL=$(ls -Z ");
        sb.append((String) oVar.c(str2));
        sb.append(" | awk '{print $1}')\n              MD=$(md5sum ");
        sb.append((String) oVar.c(str2));
        sb.append(" | awk '{print $1}')\n              echo \"MONITOR_ORIG_MD5=$MD LABEL=$LBL\"\n              case \"$MD\" in\n");
        sb.append(o2.m.U(y1.g.e0(list, "\n", new q("_SEEK", "_TAIL", str3), 30).concat("\n  *) echo \"MONITOR_MD5_INESPERADO=$MD\"; exit 1 ;;"), "              "));
        sb.append("\n                *) echo \"MONITOR_MD5_INESPERADO:$MD\"; exit 1 ;;\n              esac\n");
        sb.append(o2.m.U("_EXP_WIFI=$_EXP\ncase \"$_EXP\" in\n  2c019dfb1d38ee6e5c3b20a876ae73fb) _EXP=77d40d3b4cb19b29796e3ebcb82c4560 ;;\n  3c1c4d714d1810373b0b0728b68ec648) _EXP=1aaec42940be4f8d5a09384c04f5f109 ;;\nesac", "              "));
        sb.append("\n              MDS=$([ -f ");
        sb.append((String) oVar.c("/data/local/tmp/fixes/CarplayMonitor"));
        sb.append(" ] && md5sum ");
        sb.append((String) oVar.c("/data/local/tmp/fixes/CarplayMonitor"));
        sb.append(" 2>/dev/null | awk '{print $1}')\n              if [ \"$MDS\" = \"$_EXP\" ]; then\n                echo \"MONITOR_REUSA_PATCH_PRONTO\"\n              else\n                echo \"MONITOR_GERANDO_PATCH (tinha: $MDS)\"\n                rm -f ");
        sb.append((String) oVar.c("/data/local/tmp/fixes/CarplayMonitor"));
        sb.append("\n                head -c $_SEEK ");
        sb.append((String) oVar.c(str2));
        sb.append(" > ");
        sb.append((String) oVar.c("/data/local/tmp/fixes/CarplayMonitor"));
        sb.append("\n                printf 'ap0\\000\\000\\000' >> ");
        sb.append((String) oVar.c("/data/local/tmp/fixes/CarplayMonitor"));
        sb.append("\n                tail -c +$_TAIL ");
        sb.append((String) oVar.c(str2));
        sb.append(" >> ");
        sb.append((String) oVar.c("/data/local/tmp/fixes/CarplayMonitor"));
        sb.append("\n                MD2=$(md5sum ");
        sb.append((String) oVar.c("/data/local/tmp/fixes/CarplayMonitor"));
        sb.append(" | awk '{print $1}')\n                echo \"MONITOR_PATCH_MD5=$MD2\"\n                if [ \"$MD2\" != \"$_EXP_WIFI\" ]; then\n                  echo \"PATCH_MD5_ERRADO\"; exit 1\n                fi\n");
        String strO = e8.O("/data/local/tmp/fixes/CarplayMonitor");
        String str5 = e8.O("/data/local/tmp/fixes/CarplayMonitor".concat(".usb-guard")) + ".$$.tmp";
        String strA = n.g.a(str5, ".result");
        StringBuilder sbM = androidx.activity.result.b.m("\n            if [ \"$_EXP_WIFI\" = \"2c019dfb1d38ee6e5c3b20a876ae73fb\" ] || [ \"$_EXP_WIFI\" = \"3c1c4d714d1810373b0b0728b68ec648\" ]; then\n              head -c 3332400 ", strO, " > ", str5, " || exit 1\n              dd if=/dev/zero bs=4096 count=1 >> ");
        androidx.activity.result.b.q(sbM, str5, " 2>/dev/null || exit 1\n              tail -c +3332401 ", strO, " >> ");
        sbM.append(str5);
        sbM.append(" || exit 1\n        ");
        String strV = o2.m.V(sbM.toString());
        ArrayList arrayList = new ArrayList();
        Iterator it = w1.f4416a.iterator();
        int length = 0;
        while (true) {
            if (!it.hasNext()) {
                arrayList.add("tail -c +" + (length + 1) + ' ' + str5);
                String str6 = "{\n" + y1.g.e0(arrayList, "\n", null, 62) + "\n} > " + strA + " || exit 1";
                StringBuilder sb2 = new StringBuilder();
                sb2.append(strV);
                sb2.append('\n');
                sb2.append(str6);
                sb2.append('\n');
                sb2.append(o2.m.V("\n              _GUARD_MD=$(md5sum " + strA + " | awk '{print $1}')\n              if [ \"$_GUARD_MD\" != \"$_EXP\" ]; then\n                rm -f " + str5 + ' ' + strA + "; echo \"MONITOR_USB_GUARD_HASH_INVALIDO\"; exit 1\n              fi\n              mv " + strA + ' ' + strO + " || exit 1\n              rm -f " + str5 + "\n              echo \"MONITOR_USB_GUARD_OK\"\n            fi\n        "));
                sb.append(o2.m.U(sb2.toString(), "                "));
                sb.append("\n              fi\n              chown root:root ");
                sb.append((String) oVar.c("/data/local/tmp/fixes/CarplayMonitor"));
                sb.append("; chmod 755 ");
                sb.append((String) oVar.c("/data/local/tmp/fixes/CarplayMonitor"));
                sb.append("\n              chcon \"$LBL\" ");
                sb.append((String) oVar.c("/data/local/tmp/fixes/CarplayMonitor"));
                sb.append(" || { echo \"CHCON_FALHOU\"; exit 1; }\n              mount --bind ");
                sb.append((String) oVar.c("/data/local/tmp/fixes/CarplayMonitor"));
                sb.append(' ');
                sb.append((String) oVar.c(str2));
                sb.append("\n              grep -F ");
                sb.append((String) oVar.c(" " + str2 + ' '));
                sb.append(" /proc/mounts >/dev/null 2>&1 || { echo \"MONITOR_BIND_FALHOU\"; exit 1; }\n              echo \"MONITOR_BIND_OK\"\n            fi\n\n            _pid=$(pidof CarplayMonitor 2>/dev/null | awk '{print $1}')\n            _run=$([ -n \"$_pid\" ] && md5sum /proc/$_pid/exe 2>/dev/null | awk '{print $1}')\n            echo \"MONITOR_RUNNING_MD5=$_run\"\n            if [ -n \"$_EXP\" ] && [ \"$_run\" = \"$_EXP\" ]; then\n              echo \"MONITOR_JA_PATCHADO_EM_EXECUCAO\"\n            else\n              echo \"MONITOR_REINICIO_UNICO\"\n              setprop ctl.stop CarplayMonitor; sleep 2\n              setprop ctl.start CarplayMonitor\n");
                sb.append(o2.m.U(e8.T("CarplayMonitor", 12, "MONITOR"), str4));
                sb.append("\n              if [ \"${_STA_ANTES:-}\" = \"1\" ] || grep -qE \"[[:space:]]ap0$\" /proc/net/arp 2>/dev/null; then\n                echo \"CARPLAY_APP_MANTIDO (celular associado no ap0)\"\n              else\n                am force-stop com.njda.carplay 2>/dev/null || true\n                echo \"CARPLAY_APP_REINICIADO\"\n              fi\n\n            fi\n        ");
                return o2.m.V(sb.toString());
            }
            x1.a aVar = (x1.a) it.next();
            int iIntValue = ((Number) aVar.f4641a).intValue();
            String str7 = (String) aVar.b;
            Iterator it2 = it;
            if (iIntValue > length) {
                if (length == 0) {
                    str = "head -c " + iIntValue + ' ' + str5;
                } else {
                    str = "head -c " + iIntValue + ' ' + str5 + " | tail -c " + (iIntValue - length);
                }
                arrayList.add(str);
            }
            i2.g.e(str7, "<this>");
            k1.a.h(2, 2);
            int length2 = str7.length();
            ArrayList arrayList2 = new ArrayList((length2 / 2) + (length2 % 2 == 0 ? 0 : 1));
            int i3 = 0;
            while (i3 >= 0 && i3 < length2) {
                String str8 = str4;
                int i4 = i3 + 2;
                if (i4 < 0 || i4 > length2) {
                    i4 = length2;
                }
                CharSequence charSequenceSubSequence = str7.subSequence(i3, i4);
                i2.g.e(charSequenceSubSequence, "it");
                arrayList2.add(charSequenceSubSequence.toString());
                i3 = i4;
                str4 = str8;
            }
            arrayList.add("printf '" + y1.g.e0(arrayList2, "", new o(20), 30) + '\'');
            it = it2;
            str4 = str4;
            length = (str7.length() / 2) + iIntValue;
        }
    }

    public static boolean b(Context context) {
        i2.g.e(context, "context");
        SharedPreferences sharedPreferences = context.getSharedPreferences("tela_preta_prefs", 0);
        List list = HomeFloatingWidgetsService.f926a0;
        if (list == null || !list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (sharedPreferences.getBoolean((String) it.next(), false)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:35:0x00d2  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static String b0(k kVar) {
        String string;
        ArrayList arrayList = kVar.f3774a;
        ArrayList arrayList2 = new ArrayList(y1.i.X(arrayList));
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            l lVar = (l) obj;
            String str = lVar.f3815a;
            double d3 = lVar.b;
            switch (str.hashCode()) {
                case -934914614:
                    if (!str.equals("recirc")) {
                        string = "?";
                    } else if (d3 != 1.0d) {
                        string = "ar externo";
                    } else {
                        string = "ar interno";
                    }
                    break;
                case 101139:
                    if (!str.equals("fan")) {
                        string = "?";
                    } else {
                        StringBuilder sb = new StringBuilder("vento ");
                        long j3 = (long) d3;
                        sb.append(d3 == ((double) j3) ? String.valueOf(j3) : String.valueOf(d3));
                        string = sb.toString();
                    }
                    break;
                case 3556308:
                    if (!str.equals("temp")) {
                        string = "?";
                    } else {
                        StringBuilder sb2 = new StringBuilder();
                        long j4 = (long) d3;
                        sb2.append(d3 == ((double) j4) ? String.valueOf(j4) : String.valueOf(d3));
                        sb2.append("°C");
                        string = sb2.toString();
                    }
                    break;
                case 3641717:
                    if (!str.equals("wait")) {
                        string = "?";
                    } else {
                        int i4 = (int) d3;
                        int i5 = i4 / 60;
                        int i6 = i4 % 60;
                        if (i5 > 0 && i6 > 0) {
                            string = i5 + "min" + i6 + 's';
                        } else if (i5 <= 0) {
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append(i6);
                            sb3.append('s');
                            string = sb3.toString();
                        } else {
                            string = i5 + "min";
                        }
                    }
                    break;
                default:
                    string = "?";
                    break;
            }
            arrayList2.add(string);
        }
        String strE0 = y1.g.e0(arrayList2, " · ", null, 62);
        if (kVar.b) {
            strE0 = strE0.concat(" · repete");
        }
        return kVar.f3775c ? n.g.a(strE0, " · volta ao anterior") : strE0;
    }

    public static final d5 c(String str, Set set) {
        i2.g.e(set, "semReserva");
        return set.contains(str) ? d5.b : d5.f3490a;
    }

    public static boolean c0(long j3, long j4) {
        if (j3 <= 0 || j4 <= 0) {
            return false;
        }
        long j5 = j4 - j3;
        return 0 <= j5 && j5 <= 20000;
    }

    public static String d(String str, boolean z2) {
        String str2;
        if (str != null && !K(str)) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (str != null) {
            str2 = "PHONE=\"" + str + '\"';
        } else {
            str2 = "PHONE=$(ip neigh show dev ap0 2>/dev/null | awk 'BEGIN{b=9} /lladdr/ {p=9; if (/REACHABLE/) p=1; else if (/DELAY/) p=2; else if (/PROBE/) p=3; else if (/STALE/) p=4; if(p<b){b=p;a=$1}} END{print a}')";
        }
        StringBuilder sbM = androidx.activity.result.b.m("\n            ", str2, "\n            echo \"PHONE=$PHONE\"\n            if [ -z \"$PHONE\" ] || ! ip link show dev ap0 | grep -qE '<([^>]*,)?UP(,|>)'; then\n              echo ROTA_PADRAO=nao; exit 1\n            fi\n            # O awk de fábrica cai (SIGSEGV) no filtro composto de vizinhos.\n            # read/case mantém a comparação exata do IP sem depender desse awk.\n            NEIGH_OK=$(ip neigh show dev ap0 2>/dev/null | while read -r ADDR REST; do\n              [ \"$ADDR\" = \"$PHONE\" ] || continue\n              case \"$REST\" in *FAILED*|*INCOMPLETE*) continue ;; esac\n              case \"$REST\" in *\"lladdr \"*) echo sim; break ;; esac\n            done)\n            if [ \"$NEIGH_OK\" != sim ]; then\n              echo ROTA_ETAPA=vizinho; echo ROTA_PADRAO=nao; exit 1\n            fi\n            R=$(ip rule show 2>/dev/null)\nTBOX_TABLE=$(printf '%s\\n' \"$R\" | awk '/(^|[[:space:]])oif tbox0([[:space:]]|$)/ {for(i=1;i<=NF;i++)if($i==\"lookup\"){print $(i+1);exit}}')\n[ -n \"$TBOX_TABLE\" ] || TBOX_TABLE=tbox0\nTBOX_IMPLICIT=$(printf '%s\\n' \"$R\" | awk -v tab=\"$TBOX_TABLE\" '/^19[0-9][0-9][0-9]:/ {m=\"\";t=\"\";for(i=1;i<=NF;i++){if($i==\"fwmark\")m=$(i+1);if($i==\"lookup\")t=$(i+1)}if(t==tab && m!=\"\"){print m;exit}}')\nTBOX_REF=$(printf '%s\\n' \"$R\" | awk -v tab=\"$TBOX_TABLE\" '/^13[0-9][0-9][0-9]:/ {m=\"\";t=\"\";for(i=1;i<=NF;i++){if($i==\"fwmark\")m=$(i+1);if($i==\"lookup\")t=$(i+1)}if(t==tab && m!=\"\"){print m;exit}}')\n# Sem tbox0, a marca fixa 100 pode divergir da rede que o netd usa para DNS/socket.\n# A rede padrão pode continuar registrada após a STA cair; seguir seu netId real.\nif [ -z \"$TBOX_IMPLICIT\" ]; then\n  ROUTE_DEFAULT=$(dumpsys netd 2>/dev/null | sed -n 's/^[[:space:]]*Default network: \\([0-9][0-9]*\\).*/\\1/p')\n  case \"$ROUTE_DEFAULT\" in\n    ''|*[!0-9]*) ;;\n    *) if [ \"$ROUTE_DEFAULT\" -gt 0 ] && [ \"$ROUTE_DEFAULT\" -le 65535 ]; then\n         TBOX_IMPLICIT=$(printf '0x%x/0x1ffff' \"$ROUTE_DEFAULT\")\n       fi ;;\n  esac\nfi\n            FWMARK=\"$TBOX_IMPLICIT\"\n            [ -n \"$FWMARK\" ] || FWMARK=0x64/0x1ffff\n            NETID=$(printf '%d' \"${FWMARK%/*}\")\n            EXPLICIT_FWMARK=\"$TBOX_REF\"\n            [ -n \"$EXPLICIT_FWMARK\" ] || EXPLICIT_FWMARK=$(printf '0x%x/0x1ffff' $((NETID | 65536)))\n            # Instala a rota antes de desviar pacotes. onlink evita depender da tabela main.\n            ip route replace default via \"$PHONE\" dev ap0 onlink table 200 || exit 1\n            for P in 12500 18500 21000; do\n              while ip rule del prio $P lookup 200 2>/dev/null; do :; done\n            done\n            if ! ip rule add prio 12500 from all fwmark \"$EXPLICIT_FWMARK\" iif lo lookup 200 ||\n               ! ip rule add prio 18500 from all fwmark \"$FWMARK\" iif lo lookup 200 ||\n               ! ip rule add prio 21000 from all fwmark 0x0/0xffff iif lo lookup 200; then\n              for P in 12500 18500 21000; do\n  while ip rule del prio $P lookup 200 2>/dev/null; do :; done\ndone\nip route flush table 200 2>/dev/null\nif [ \"$(settings get global exsapo_route_dns_zero_owned)\" = 1 ]; then\n  ndc resolver clearnetdns 0\n  settings delete global exsapo_route_dns_zero_owned\nfi\n              echo ROTA_PADRAO=nao; exit 1\n            fi\n            settings put global captive_portal_mode 0\n            ", z2 ? "" : "settings delete global http_proxy 2>/dev/null\nsettings delete global global_http_proxy_host 2>/dev/null\nsettings delete global global_http_proxy_port 2>/dev/null", "\n            DNS_DEFAULT=$(dumpsys netd 2>/dev/null | sed -n 's/^[[:space:]]*Default network: \\([0-9][0-9]*\\).*/\\1/p')\nDNS_RC=sim\nsetprop net.dns1 8.8.8.8; setprop net.dns2 8.8.4.4\nDNS_OUT=$(ndc resolver setnetdns \"$NETID\" '' 8.8.8.8 8.8.4.4 2>&1)\necho \"$DNS_OUT\"\ncase \"$DNS_OUT\" in \"200 \"*) ;; *) DNS_RC=nao ;; esac\nif [ \"$DNS_DEFAULT\" = 0 ]; then\n  DNS_OUT=$(ndc resolver setnetdns 0 '' 8.8.8.8 8.8.4.4 2>&1)\n  echo \"$DNS_OUT\"\n  case \"$DNS_OUT\" in\n    \"200 \"*) settings put global exsapo_route_dns_zero_owned 1 ;;\n    *) DNS_RC=nao ;;\n  esac\nfi\necho \"ROTA_DNS_OK=$DNS_RC\"\necho \"DNS_DEFAULT_NETID=$DNS_DEFAULT\"\n            ");
        sbM.append(o2.m.V("\n        R=$(ip rule show 2>/dev/null)\nTBOX_TABLE=$(printf '%s\\n' \"$R\" | awk '/(^|[[:space:]])oif tbox0([[:space:]]|$)/ {for(i=1;i<=NF;i++)if($i==\"lookup\"){print $(i+1);exit}}')\n[ -n \"$TBOX_TABLE\" ] || TBOX_TABLE=tbox0\nTBOX_IMPLICIT=$(printf '%s\\n' \"$R\" | awk -v tab=\"$TBOX_TABLE\" '/^19[0-9][0-9][0-9]:/ {m=\"\";t=\"\";for(i=1;i<=NF;i++){if($i==\"fwmark\")m=$(i+1);if($i==\"lookup\")t=$(i+1)}if(t==tab && m!=\"\"){print m;exit}}')\nTBOX_REF=$(printf '%s\\n' \"$R\" | awk -v tab=\"$TBOX_TABLE\" '/^13[0-9][0-9][0-9]:/ {m=\"\";t=\"\";for(i=1;i<=NF;i++){if($i==\"fwmark\")m=$(i+1);if($i==\"lookup\")t=$(i+1)}if(t==tab && m!=\"\"){print m;exit}}')\n# Sem tbox0, a marca fixa 100 pode divergir da rede que o netd usa para DNS/socket.\n# A rede padrão pode continuar registrada após a STA cair; seguir seu netId real.\nif [ -z \"$TBOX_IMPLICIT\" ]; then\n  ROUTE_DEFAULT=$(dumpsys netd 2>/dev/null | sed -n 's/^[[:space:]]*Default network: \\([0-9][0-9]*\\).*/\\1/p')\n  case \"$ROUTE_DEFAULT\" in\n    ''|*[!0-9]*) ;;\n    *) if [ \"$ROUTE_DEFAULT\" -gt 0 ] && [ \"$ROUTE_DEFAULT\" -le 65535 ]; then\n         TBOX_IMPLICIT=$(printf '0x%x/0x1ffff' \"$ROUTE_DEFAULT\")\n       fi ;;\n  esac\nfi\n        D=$(ip route show table 200 2>/dev/null | grep '^default ')\n        echo \"GATEWAY=$(printf '%s\\n' \"$D\" | awk '{for(i=1;i<=NF;i++)if($i==\"via\"){print $(i+1);exit}}')\"\n        echo \"INTERFACE=$(printf '%s\\n' \"$D\" | awk '{for(i=1;i<=NF;i++)if($i==\"dev\"){print $(i+1);exit}}')\"\n        ip link show dev ap0 2>/dev/null | grep -qE '<([^>]*,)?UP(,|>)' && echo AP_UP=sim || echo AP_UP=nao\n        echo \"REGRAS_VALIDAS=$(printf '%s\\n' \"$R\" | awk '/^(12500|18500|21000):/ && /fwmark/ && /iif lo([[:space:]]|$)/ && /lookup 200([[:space:]]|$)/ {seen[$1]=1} END{for(p in seen)n++; print n+0}')\"\n        echo \"DNS_DEFAULT_NETID=$(dumpsys netd 2>/dev/null | sed -n 's/^[[:space:]]*Default network: \\([0-9][0-9]*\\).*/\\1/p')\"\n        echo \"NETD_PID=$(pidof netd)\"\n        echo \"TBOX_TABLE=$TBOX_TABLE\"\n        echo \"TBOX_IMPLICIT=$TBOX_IMPLICIT\"\n        echo \"OUR_18500=$(printf '%s\\n' \"$R\" | awk '/^18500:.*fwmark/{print $5; exit}')\"\n        echo \"OUR_21000=$(printf '%s\\n' \"$R\" | awk '/^21000:.*fwmark/{print $5; exit}')\"\n        echo \"TBOX_REF=$TBOX_REF\"\n        echo \"OUR_12500=$(printf '%s\\n' \"$R\" | awk '/^12500:.*fwmark/{print $5; exit}')\"\n        echo \"REGRAS=$(printf '%s\\n' \"$R\" | grep -cE '^(12500|18500|21000):')\"\n        [ -n \"$D\" ] && echo \"ROTA_PADRAO=sim\" || echo \"ROTA_PADRAO=nao\"\n    "));
        sbM.append("\n        ");
        return o2.m.V(sbM.toString());
    }

    public static JSONObject d0(final String str, final int i3, String str2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        final CentralWatchdogService centralWatchdogService = CentralWatchdogService.V2;
        if (centralWatchdogService == null) {
            JSONObject jSONObjectPut = jSONObject.put("ok", false).put("error", "watchdog não ativo");
            i2.g.d(jSONObjectPut, "put(...)");
            return jSONObjectPut;
        }
        final boolean z2 = centralWatchdogService.W().getBoolean("auto_proxy_enabled", false);
        final boolean z3 = centralWatchdogService.W().getBoolean("auto_route_on_aa_connect", false);
        if (!z2 && !z3) {
            JSONObject jSONObjectPut2 = jSONObject.put("ok", false).put("error", "automação de internet desligada");
            i2.g.d(jSONObjectPut2, "put(...)");
            return jSONObjectPut2;
        }
        if (str2.equals("down")) {
            centralWatchdogService.f811a.post(new h2(1, centralWatchdogService, str, z2));
            JSONObject jSONObjectPut3 = jSONObject.put("ok", true).put("message", "proxy limpo");
            i2.g.d(jSONObjectPut3, "put(...)");
            return jSONObjectPut3;
        }
        Pattern patternCompile = Pattern.compile("^\\d{1,3}(\\.\\d{1,3}){3}$");
        i2.g.d(patternCompile, "compile(...)");
        if (!patternCompile.matcher(str).matches()) {
            JSONObject jSONObjectPut4 = jSONObject.put("ok", false).put("error", "ip inválido: ".concat(str));
            i2.g.d(jSONObjectPut4, "put(...)");
            return jSONObjectPut4;
        }
        try {
            String strB = new kotlinx.coroutines.scheduling.h(5555).b(3000, "ip neigh show dev ap0 2>/dev/null");
            i2.g.b(strB);
            List<String> listO0 = o2.k.o0(strB);
            if (!listO0.isEmpty()) {
                for (String str3 : listO0) {
                    if (o2.t.d0(o2.k.E0(str3).toString(), str + ' ') || i2.g.a(o2.k.E0(str3).toString(), str)) {
                        centralWatchdogService.f811a.post(new Runnable() { // from class: w0.w2
                            @Override // java.lang.Runnable
                            public final void run() {
                                CentralWatchdogService centralWatchdogService2 = centralWatchdogService;
                                String str4 = str;
                                boolean z4 = z2;
                                int i4 = i3;
                                boolean z5 = z3;
                                centralWatchdogService2.f823d0 = str4;
                                if (!i2.g.a(centralWatchdogService2.f815b0, str4)) {
                                    centralWatchdogService2.f827e0.incrementAndGet();
                                }
                                centralWatchdogService2.f815b0 = str4;
                                centralWatchdogService2.f834g0 = 0L;
                                if (z4 && centralWatchdogService2.W().getBoolean("auto_proxy_enabled", false)) {
                                    centralWatchdogService2.f841i0 = str4;
                                    centralWatchdogService2.f845j0 = 5000L;
                                    centralWatchdogService2.E(i4, str4);
                                }
                                if (z5) {
                                    CentralWatchdogService.h(centralWatchdogService2, str4);
                                }
                            }
                        });
                        JSONObject jSONObjectPut5 = jSONObject.put("ok", true).put("message", z2 ? "proxy solicitado " + str + ':' + i3 : "celular indicado para rotas: ".concat(str));
                        i2.g.d(jSONObjectPut5, "put(...)");
                        return jSONObjectPut5;
                    }
                }
            }
        } catch (Exception unused) {
        }
        JSONObject jSONObjectPut6 = jSONObject.put("ok", false).put("error", "ip fora do ap0: ".concat(str));
        i2.g.d(jSONObjectPut6, "put(...)");
        return jSONObjectPut6;
    }

    public static final c4 e(String str, String str2) {
        Integer numW;
        i2.g.e(str, "saida");
        c4 c4Var = c4.f3426c;
        if (str2 != null && (!i2.g.a(n(str, "GATEWAY"), str2) || !i2.g.a(n(str, "INTERFACE"), "ap0") || !i2.g.a(n(str, "AP_UP"), "sim") || !i2.g.a(n(str, "REGRAS_VALIDAS"), "3"))) {
            return c4Var;
        }
        if (str2 != null) {
            x1.a aVarF = f(str, "TBOX_IMPLICIT");
            if (aVarF == null) {
                aVarF = new x1.a(100L, 131071L);
            }
            x1.a aVarF2 = f(str, "TBOX_REF");
            if (aVarF2 == null) {
                aVarF2 = new x1.a(Long.valueOf(((Number) aVarF.f4641a).longValue() | 65536), 131071L);
            }
            if (!i2.g.a(f(str, "OUR_18500"), aVarF) || !i2.g.a(f(str, "OUR_12500"), aVarF2) || !i2.g.a(f(str, "OUR_21000"), new x1.a(0L, 65535L))) {
                return c4Var;
            }
        }
        String strN = n(str, "REGRAS");
        boolean z2 = false;
        int iIntValue = (strN == null || (numW = o2.s.W(strN)) == null) ? 0 : numW.intValue();
        String strN2 = n(str, "ROTA_PADRAO");
        if (strN2 != null && strN2.equalsIgnoreCase("sim")) {
            z2 = true;
        }
        if (iIntValue < 3 || !z2) {
            return c4Var;
        }
        String strN3 = n(str, "TBOX_REF");
        if (strN3 != null) {
            if (o2.k.m0(strN3)) {
                strN3 = null;
            }
            if (strN3 != null) {
                String strN4 = n(str, "OUR_12500");
                if (strN4 != null) {
                    String str3 = o2.k.m0(strN4) ? null : strN4;
                    if (str3 != null && str3.equals(strN3)) {
                        return c4.f3425a;
                    }
                }
                return c4Var;
            }
        }
        return c4.b;
    }

    public static String e0(Context context, boolean z2) {
        String string;
        File externalFilesDir;
        if (f4252g) {
            try {
                externalFilesDir = context.getExternalFilesDir(null);
            } catch (Throwable unused) {
                externalFilesDir = null;
            }
            if (externalFilesDir != null) {
                f4253h = new File(externalFilesDir, "central_boot.log").getAbsolutePath();
                f4252g = false;
                ae aeVar = ae.f3361a;
                androidx.activity.result.b.r(new StringBuilder("log de boot promovido pro armazenamento externo: "), f4253h, "BootScript", false);
            }
        }
        try {
            File file = new File("/data/local/tmp/fixes");
            if (!file.isDirectory()) {
                file.mkdirs();
            }
            File file2 = new File("/data/local/tmp/fixes/central_boot.sh");
            J(file2, z2);
            file2.setExecutable(true, false);
            file2.setReadable(true, false);
            Log.i("BootScript", "script gravado em /data/local/tmp/fixes/central_boot.sh (" + file2.length() + " bytes)");
            if ("/data/local/tmp/fixes/central_boot.log".equals(f4253h)) {
                string = "";
            } else {
                StringBuilder sb = new StringBuilder("echo 'OBSOLETO - o log de boot agora fica em ");
                sb.append(f4253h);
                sb.append("' > ");
                sb.append("'" + o2.t.c0("/data/local/tmp/fixes/central_boot.log", "'", "'\\''") + '\'');
                sb.append(" 2>/dev/null; ");
                string = sb.toString();
            }
            return string + " sh " + e8.N("/data/local/tmp/fixes/central_boot.sh") + " > " + e8.N(f4253h) + " 2>&1; cat " + e8.N(f4253h);
        } catch (Throwable th) {
            String str = th.getClass().getSimpleName() + ": " + th.getMessage();
            Log.w("BootScript", "não consegui gravar /data/local/tmp/fixes/central_boot.sh: " + str);
            ae aeVar2 = ae.f3361a;
            androidx.activity.result.b.p("não consegui gravar /data/local/tmp/fixes/central_boot.sh — ", str, " (dono/modo do arquivo?)", "BootScript", false);
            return null;
        }
    }

    public static final x1.a f(String str, String str2) {
        String strN = n(str, str2);
        if (strN == null) {
            return null;
        }
        List listU0 = o2.k.u0(strN, new char[]{'/'});
        if (listU0.size() != 2) {
            return null;
        }
        String str3 = (String) listU0.get(0);
        Long lX = o2.t.d0(str3, "0x") ? o2.s.X(16, o2.k.g0(2, str3)) : o2.s.Y(str3);
        if (lX == null) {
            return null;
        }
        String str4 = (String) listU0.get(1);
        Long lX2 = o2.t.d0(str4, "0x") ? o2.s.X(16, o2.k.g0(2, str4)) : o2.s.Y(str4);
        if (lX2 != null) {
            return new x1.a(lX, lX2);
        }
        return null;
    }

    public static String f0(CentralWatchdogService centralWatchdogService) {
        try {
            File file = new File(centralWatchdogService.getFilesDir(), "carplay-monitor-bind.sh");
            File fileCreateTempFile = File.createTempFile("carplay-monitor-", ".tmp", centralWatchdogService.getFilesDir());
            try {
                i2.g.b(fileCreateTempFile);
                f2.d.i0(fileCreateTempFile, p() + '\n');
                if (!fileCreateTempFile.renameTo(file)) {
                    throw new IllegalStateException("não consegui substituir o script do monitor");
                }
                fileCreateTempFile.delete();
                StringBuilder sb = new StringBuilder("sh ");
                String absolutePath = file.getAbsolutePath();
                i2.g.d(absolutePath, "getAbsolutePath(...)");
                sb.append("'" + o2.t.c0(absolutePath, "'", "'\\''") + '\'');
                return sb.toString();
            } catch (Throwable th) {
                fileCreateTempFile.delete();
                throw th;
            }
        } catch (Exception e3) {
            Log.e("BootScript", "não consegui gravar o script do monitor", e3);
            return null;
        }
    }

    public static RemoteViews g(Context context, Integer num) {
        x1.a aVar;
        x1.a aVar2;
        Integer numValueOf = Integer.valueOf(R.drawable.ic_widget_comfort);
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), R.layout.widget_drive_mode_vertical);
        remoteViews.setInt(R.id.widget_bg_layer, "setBackgroundResource", v7.a(context));
        if (num != null && num.intValue() == 570491137) {
            aVar2 = new x1.a(Integer.valueOf(R.drawable.ic_widget_eco), "Eco");
        } else {
            if (num != null && num.intValue() == 570491138) {
                aVar = new x1.a(numValueOf, "Conf.");
            } else if (num != null && num.intValue() == 570491139) {
                aVar2 = new x1.a(Integer.valueOf(R.drawable.ic_widget_sport), "Sport");
            } else {
                aVar = new x1.a(numValueOf, "—");
            }
            aVar2 = aVar;
        }
        int iIntValue = ((Number) aVar2.f4641a).intValue();
        String str = (String) aVar2.b;
        remoteViews.setImageViewResource(R.id.img_drive_mode, iIntValue);
        remoteViews.setTextViewText(R.id.tv_drive_mode_label, str);
        remoteViews.setTextViewText(R.id.tv_drive_mode_footer, v7.o(context).getString(R.string.k_qa_driving_label));
        remoteViews.setOnClickPendingIntent(R.id.btn_drive_next, e8.z(context, "com.ex.auto.widget.DRIVE_NEXT"));
        remoteViews.setOnClickPendingIntent(R.id.btn_drive_prev, e8.z(context, "com.ex.auto.widget.DRIVE_PREV"));
        return remoteViews;
    }

    public static RemoteViews h(Context context, Integer num, int i3) {
        String string;
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), i3);
        remoteViews.setInt(R.id.widget_bg_layer, "setBackgroundResource", v7.a(context));
        Context contextO = v7.o(context);
        if (num == null || (string = num.toString()) == null) {
            string = "—";
        }
        remoteViews.setTextViewText(R.id.tv_fan_value, string);
        remoteViews.setTextViewText(R.id.tv_fan_label, contextO.getString(R.string.k_widget_lbl_fan));
        int[] iArr = FanSpeedWidgetProvider.f923a;
        int i4 = 0;
        int i5 = 0;
        while (i4 < 7) {
            int i6 = i5 + 1;
            remoteViews.setInt(iArr[i4], "setBackgroundResource", (num == null || i5 >= num.intValue()) ? R.drawable.widget_dot_off : R.drawable.widget_dot_on);
            i4++;
            i5 = i6;
        }
        remoteViews.setOnClickPendingIntent(R.id.btn_fan_minus, e8.z(context, "com.ex.auto.widget.FAN_MINUS"));
        remoteViews.setOnClickPendingIntent(R.id.btn_fan_plus, e8.z(context, "com.ex.auto.widget.FAN_PLUS"));
        return remoteViews;
    }

    public static RemoteViews i(Context context, Integer num, Integer num2) {
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), R.layout.widget_drive_regen);
        remoteViews.setInt(R.id.widget_bg_layer, "setBackgroundResource", v7.a(context));
        Context contextO = v7.o(context);
        remoteViews.setTextViewText(R.id.txt_drive_header, contextO.getString(R.string.k_widget_lbl_drive_header));
        remoteViews.setTextViewText(R.id.txt_regen_header, contextO.getString(R.string.k_widget_lbl_regen_header));
        remoteViews.setTextViewText(R.id.txt_drive_eco, "Eco");
        remoteViews.setTextViewText(R.id.txt_drive_comfort, "Conf.");
        remoteViews.setTextViewText(R.id.txt_drive_sport, "Sport");
        remoteViews.setTextViewText(R.id.txt_regen_low, contextO.getString(R.string.k_widget_lbl_regen_low));
        remoteViews.setTextViewText(R.id.txt_regen_mid, contextO.getString(R.string.k_widget_lbl_regen_mid));
        remoteViews.setTextViewText(R.id.txt_regen_high, contextO.getString(R.string.k_widget_lbl_regen_high));
        boolean z2 = false;
        k(remoteViews, context, R.id.chip_drive_eco, R.id.txt_drive_eco, num != null && num.intValue() == 570491137);
        k(remoteViews, context, R.id.chip_drive_comfort, R.id.txt_drive_comfort, num != null && num.intValue() == 570491138);
        k(remoteViews, context, R.id.chip_drive_sport, R.id.txt_drive_sport, num != null && num.intValue() == 570491139);
        k(remoteViews, context, R.id.chip_regen_low, R.id.txt_regen_low, num2 != null && num2.intValue() == 537003265);
        k(remoteViews, context, R.id.chip_regen_mid, R.id.txt_regen_mid, num2 != null && num2.intValue() == 537003266);
        if (num2 != null && num2.intValue() == 537003267) {
            z2 = true;
        }
        k(remoteViews, context, R.id.chip_regen_high, R.id.txt_regen_high, z2);
        remoteViews.setOnClickPendingIntent(R.id.chip_drive_eco, e8.z(context, "com.ex.auto.widget.DRIVE_ECO"));
        remoteViews.setOnClickPendingIntent(R.id.chip_drive_comfort, e8.z(context, "com.ex.auto.widget.DRIVE_COMFORT"));
        remoteViews.setOnClickPendingIntent(R.id.chip_drive_sport, e8.z(context, "com.ex.auto.widget.DRIVE_SPORT"));
        remoteViews.setOnClickPendingIntent(R.id.chip_regen_low, e8.z(context, "com.ex.auto.widget.REGEN_LOW"));
        remoteViews.setOnClickPendingIntent(R.id.chip_regen_mid, e8.z(context, "com.ex.auto.widget.REGEN_MID"));
        remoteViews.setOnClickPendingIntent(R.id.chip_regen_high, e8.z(context, "com.ex.auto.widget.REGEN_HIGH"));
        return remoteViews;
    }

    public static RemoteViews j(Context context, v6 v6Var) {
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), R.layout.widget_heating_test);
        remoteViews.setInt(R.id.widget_bg_layer, "setBackgroundResource", v7.a(context));
        Context contextO = v7.o(context);
        remoteViews.setTextViewText(R.id.txt_heat_header, contextO.getString(R.string.k_widget_lbl_heat_header));
        Boolean bool = v6Var.f4372a;
        Boolean bool2 = Boolean.TRUE;
        boolean zA = i2.g.a(bool, bool2);
        String string = contextO.getString(R.string.k_widget_lbl_heat_wheel);
        i2.g.d(string, "getString(...)");
        m(remoteViews, context, R.id.chip_wheel_heat, R.id.txt_wheel_heat, zA, string, "com.ex.auto.widget.WHEEL_HEAT_TOGGLE");
        boolean zA2 = i2.g.a(v6Var.b, bool2);
        String string2 = contextO.getString(R.string.k_widget_lbl_rear_defrost);
        i2.g.d(string2, "getString(...)");
        m(remoteViews, context, R.id.chip_front_rear_defrost, R.id.txt_front_rear_defrost, zA2, string2, "com.ex.auto.widget.REAR_DEFROST_TOGGLE");
        boolean zA3 = i2.g.a(v6Var.f4373c, bool2);
        String string3 = contextO.getString(R.string.k_widget_lbl_heat_front_max);
        i2.g.d(string3, "getString(...)");
        m(remoteViews, context, R.id.chip_front_max_defrost, R.id.txt_front_max_defrost, zA3, string3, "com.ex.auto.widget.FRONT_MAX_DEFROST_TOGGLE");
        boolean zA4 = i2.g.a(v6Var.f4374d, bool2);
        String string4 = contextO.getString(R.string.k_widget_lbl_heat_windshield);
        i2.g.d(string4, "getString(...)");
        m(remoteViews, context, R.id.chip_windshield_heat, R.id.txt_windshield_heat, zA4, string4, "com.ex.auto.widget.WINDSHIELD_HEAT_TOGGLE");
        Integer num = v6Var.f4375e;
        String string5 = contextO.getString(R.string.k_widget_lbl_heat_seat_driver);
        i2.g.d(string5, "getString(...)");
        l(remoteViews, context, contextO, R.id.chip_seat_heat_driver, R.id.txt_seat_heat_driver, num, string5, "com.ex.auto.widget.SEAT_HEAT_DRIVER_CYCLE");
        Integer num2 = v6Var.f;
        String string6 = contextO.getString(R.string.k_widget_lbl_heat_seat_passenger);
        i2.g.d(string6, "getString(...)");
        l(remoteViews, context, contextO, R.id.chip_seat_heat_passenger, R.id.txt_seat_heat_passenger, num2, string6, "com.ex.auto.widget.SEAT_HEAT_PASSENGER_CYCLE");
        return remoteViews;
    }

    public static final void k(RemoteViews remoteViews, Context context, int i3, int i4, boolean z2) {
        remoteViews.setInt(i3, "setBackgroundResource", z2 ? R.drawable.widget_chip_active : R.drawable.widget_chip_idle);
        remoteViews.setTextColor(i4, context.getColor(z2 ? R.color.cx_on_accent : R.color.cx_text_primary));
    }

    public static final void l(RemoteViews remoteViews, Context context, Context context2, int i3, int i4, Integer num, String str, String str2) {
        String string;
        boolean z2 = (num != null ? num.intValue() : 0) > 0;
        remoteViews.setInt(i3, "setBackgroundResource", z2 ? R.drawable.widget_chip_active : R.drawable.widget_chip_idle);
        remoteViews.setTextColor(i4, context.getColor(z2 ? R.color.cx_on_accent : R.color.cx_text_primary));
        if (num == null) {
            string = "—";
        } else if (num.intValue() >= 4) {
            string = context2.getString(R.string.k_widget_lbl_heat_auto);
            i2.g.d(string, "getString(...)");
        } else {
            string = num.toString();
        }
        remoteViews.setTextViewText(i4, str + ' ' + string);
        Intent action = new Intent(context, (Class<?>) HomeWidgetsPollService.class).setAction(str2);
        i2.g.d(action, "setAction(...)");
        PendingIntent service = PendingIntent.getService(context, str2.hashCode(), action, 201326592);
        i2.g.d(service, "getService(...)");
        remoteViews.setOnClickPendingIntent(i3, service);
    }

    public static final void m(RemoteViews remoteViews, Context context, int i3, int i4, boolean z2, String str, String str2) {
        remoteViews.setInt(i3, "setBackgroundResource", z2 ? R.drawable.widget_chip_active : R.drawable.widget_chip_idle);
        remoteViews.setTextColor(i4, context.getColor(z2 ? R.color.cx_on_accent : R.color.cx_text_primary));
        remoteViews.setTextViewText(i4, str);
        Intent action = new Intent(context, (Class<?>) HomeWidgetsPollService.class).setAction(str2);
        i2.g.d(action, "setAction(...)");
        PendingIntent service = PendingIntent.getService(context, str2.hashCode(), action, 201326592);
        i2.g.d(service, "getService(...)");
        remoteViews.setOnClickPendingIntent(i3, service);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0037  */
    /* JADX WARN: Code duplicated, block: B:12:0x0046 A[RETURN] */
    public static final String n(String str, String str2) {
        String string;
        i2.g.e(str, "saida");
        for (String str3 : o2.k.n0(str)) {
            i2.g.e(str3, "it");
            string = o2.k.E0(str3).toString();
            if (o2.t.d0(string, str2.concat("="))) {
                if (string != null) {
                    return o2.k.E0(o2.k.x0(string, '=', string)).toString();
                }
                return null;
            }
        }
        string = null;
        if (string != null) {
            return o2.k.E0(o2.k.x0(string, '=', string)).toString();
        }
        return null;
    }

    public static final j o(ArrayList arrayList) {
        int size = arrayList.size();
        Float fValueOf = null;
        Integer numValueOf = null;
        Boolean boolValueOf = null;
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            l lVar = (l) obj;
            String str = lVar.f3815a;
            double d3 = lVar.b;
            int iHashCode = str.hashCode();
            if (iHashCode != -934914614) {
                if (iHashCode != 101139) {
                    if (iHashCode == 3556308 && str.equals("temp")) {
                        fValueOf = Float.valueOf((float) d3);
                    }
                } else if (str.equals("fan")) {
                    numValueOf = Integer.valueOf((int) d3);
                }
            } else if (str.equals("recirc")) {
                boolValueOf = Boolean.valueOf(d3 == 1.0d);
            }
        }
        return new j(fValueOf, numValueOf, boolValueOf);
    }

    public static String p() {
        return n2.g.V(new n2.d(new n2.c(o2.k.n0(a0()), new o(14), 2), true, new o(15)), "\n").concat("\necho \"== fim ==\"");
    }

    public static a5 q(String str) {
        a5 a5Var = a5.b;
        a5 a5Var2 = a5.f3348a;
        long jCurrentTimeMillis = System.currentTimeMillis();
        CentralWatchdogService centralWatchdogService = CentralWatchdogService.V2;
        Boolean boolValueOf = null;
        if (centralWatchdogService != null && CentralWatchdogService.U2) {
            try {
                boolValueOf = Boolean.valueOf(centralWatchdogService.u());
            } catch (Throwable unused) {
            }
        }
        boolean zBooleanValue = boolValueOf != null ? boolValueOf.booleanValue() : false;
        long j3 = CentralWatchdogService.Y2;
        if (zBooleanValue && (j3 <= 0 || jCurrentTimeMillis - j3 >= 12000)) {
            a5Var2 = a5Var;
        }
        if (a5Var2 == a5Var) {
            CentralWatchdogService.Y2 = jCurrentTimeMillis;
            ae aeVar = ae.f3361a;
            ae.b("CentralWatchdog", str.concat(": NÃO reiniciei — há projeção no ap0 (sessão em curso). Toque de novo pra reiniciar assim mesmo"), false);
        } else if (zBooleanValue) {
            ae aeVar2 = ae.f3361a;
            ae.b("CentralWatchdog", str.concat(": reiniciando mesmo com sessão no ap0 (confirmado pelo 2º toque)"), false);
        }
        Log.i("CentralWatchdog", "guarda ap0 (" + str + "): sessão=" + zBooleanValue + " → " + a5Var2);
        return a5Var2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static s1 r(Context context, String str) {
        boolean zBindService;
        s1 s1Var = s1.f4193c;
        long jCurrentTimeMillis = System.currentTimeMillis() - f4248a;
        if (f4248a > 0 && jCurrentTimeMillis < 10000) {
            Log.i("CarplayDeviceBinder", "connect ignorado — outra tentativa há " + jCurrentTimeMillis + "ms (devolvendo " + b + ')');
            return b;
        }
        f4248a = System.currentTimeMillis();
        c cVar = null;
        Object obj = null;
        ArrayBlockingQueue arrayBlockingQueue = new ArrayBlockingQueue(1);
        c cVar2 = new c(arrayBlockingQueue, 1);
        try {
            Intent intent = new Intent("carplay.devices.service").setPackage("com.njda.carplay");
            i2.g.d(intent, "setPackage(...)");
            try {
                zBindService = context.bindService(intent, cVar2, 1);
            } catch (Throwable th) {
                Log.w("CarplayDeviceBinder", "bindService lançou: " + th.getMessage());
                zBindService = false;
            }
            if (!zBindService) {
                Log.w("CarplayDeviceBinder", "bindService recusou (carplay.devices.service em com.njda.carplay)");
                b = s1Var;
                return s1Var;
            }
            IBinder iBinder = (IBinder) arrayBlockingQueue.poll(6000L, TimeUnit.MILLISECONDS);
            if (iBinder == null) {
                Log.w("CarplayDeviceBinder", "serviço não conectou em 6000ms");
                b = s1Var;
                try {
                    context.unbindService(cVar2);
                } catch (Throwable unused) {
                }
                return s1Var;
            }
            List listF = F(iBinder);
            if (listF == null) {
                b = s1Var;
                try {
                    context.unbindService(cVar2);
                } catch (Throwable unused2) {
                }
                return s1Var;
            }
            if (listF.isEmpty()) {
                Log.i("CarplayDeviceBinder", "getDeviceList vazio — nenhum iPhone pareado/conhecido; nada a conectar");
                s1 s1Var2 = s1.b;
                b = s1Var2;
                try {
                    context.unbindService(cVar2);
                } catch (Throwable unused3) {
                }
                return s1Var2;
            }
            for (Object obj2 : listF) {
                if ((str != null && o2.t.a0(((r1) obj2).b, str)) != false) {
                    obj = obj2;
                    break;
                }
            }
            r1 r1Var = (r1) obj;
            if (r1Var == null) {
                r1Var = (r1) y1.g.a0(listF);
            }
            StringBuilder sb = new StringBuilder();
            sb.append("conectando '");
            sb.append(r1Var.f4136a);
            sb.append("' (");
            sb.append(r1Var.b);
            sb.append(") — ");
            sb.append(listF.size());
            sb.append(" na lista, preferido=");
            if (str == null) {
                str = "(qualquer)";
            }
            sb.append(str);
            Log.i("CarplayDeviceBinder", sb.toString());
            String str2 = r1Var.b;
            String strS = str2 == null || o2.k.m0(str2) ? "alvo sem MAC" : S(str2);
            if (strS != null || str2 == null) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("pulando o connect direto de BT de ");
                if (str2 == null) {
                    str2 = "?";
                }
                sb2.append(str2);
                sb2.append(": ");
                sb2.append(strS);
                Log.i("CarplayDeviceBinder", sb2.toString());
            } else {
                ArrayBlockingQueue arrayBlockingQueue2 = new ArrayBlockingQueue(1);
                m.i(context, str2, new q1(0, arrayBlockingQueue2));
                Object obj3 = (Boolean) arrayBlockingQueue2.poll(2500L, TimeUnit.MILLISECONDS);
                StringBuilder sb3 = new StringBuilder();
                sb3.append("HFP-Client de ");
                sb3.append(str2);
                sb3.append(": ");
                if (obj3 == null) {
                    obj3 = "sem resposta a tempo";
                }
                sb3.append(obj3);
                Log.i("CarplayDeviceBinder", sb3.toString());
            }
            s1 s1Var3 = t(iBinder, r1Var) ? s1.f4192a : s1Var;
            b = s1Var3;
            try {
                context.unbindService(cVar2);
            } catch (Throwable unused4) {
            }
            return s1Var3;
        } catch (Throwable th2) {
            th = th2;
            cVar = cVar2;
        }
        try {
            Log.w("CarplayDeviceBinder", "connect falhou: " + th.getClass().getSimpleName() + ": " + th.getMessage());
            b = s1Var;
            return s1Var;
        } finally {
            if (cVar != null) {
                try {
                    context.unbindService(cVar);
                } catch (Throwable unused5) {
                }
            }
        }
    }

    public static boolean s(IBinder iBinder, a aVar) {
        Parcel parcelObtain = Parcel.obtain();
        i2.g.d(parcelObtain, "obtain(...)");
        Parcel parcelObtain2 = Parcel.obtain();
        i2.g.d(parcelObtain2, "obtain(...)");
        try {
            parcelObtain.writeInterfaceToken("com.njda.adapter.androidauto.connection.devicelist.IDeviceManager");
            parcelObtain.writeInt(1);
            parcelObtain.writeInt(aVar.f3335a);
            parcelObtain.writeString(aVar.b);
            parcelObtain.writeString(aVar.f3336c);
            parcelObtain.writeString(aVar.f3337d);
            parcelObtain.writeInt(aVar.f3338e);
            parcelObtain.writeByte((byte) 1);
            iBinder.transact(3, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            parcelObtain.recycle();
            parcelObtain2.recycle();
            return true;
        } catch (Throwable th) {
            try {
                Log.w("AaDeviceBinder", "connectDevice(txn 3): " + th.getClass().getSimpleName() + ": " + th.getMessage());
                return false;
            } finally {
                parcelObtain.recycle();
                parcelObtain2.recycle();
            }
        }
    }

    public static boolean t(IBinder iBinder, r1 r1Var) {
        Parcel parcelObtain = Parcel.obtain();
        i2.g.d(parcelObtain, "obtain(...)");
        Parcel parcelObtain2 = Parcel.obtain();
        i2.g.d(parcelObtain2, "obtain(...)");
        try {
            parcelObtain.writeInterfaceToken("com.njda.carplay.connection.devicelist.ICarplayDeviceManager");
            parcelObtain.writeInt(1);
            parcelObtain.writeString(r1Var.f4136a);
            parcelObtain.writeString(r1Var.b);
            parcelObtain.writeString(r1Var.f4137c);
            parcelObtain.writeByte(r1Var.f4138d);
            parcelObtain.writeByte(r1Var.f4139e);
            parcelObtain.writeByte(r1Var.f);
            iBinder.transact(5, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            parcelObtain.recycle();
            parcelObtain2.recycle();
            return true;
        } catch (Throwable th) {
            try {
                Log.w("CarplayDeviceBinder", "connectDevice(txn 5): " + th.getClass().getSimpleName() + ": " + th.getMessage());
                return false;
            } finally {
                parcelObtain.recycle();
                parcelObtain2.recycle();
            }
        }
    }

    public static String u(boolean z2) {
        int i3 = u.f4288a;
        o oVar = new o(17);
        StringBuilder sb = new StringBuilder("\n            #!/system/bin/sh\n            # Gerado pelo EX Sapo Central — regravado a cada boot. Editar aqui não adianta.\n            echo \"== central_boot $(date) ==\"\n            echo \"-- por que o boot anterior terminou --\"\n            echo \"BOOTREASON=$(getprop ro.boot.bootreason) / $(getprop sys.boot.reason)\"\n            echo \"UPTIME=$(cut -d. -f1 /proc/uptime)s\"\n            if [ -s /proc/last_kmsg ]; then\n              echo \"LAST_KMSG (fim do boot anterior):\"\n              tail -n 25 /proc/last_kmsg 2>/dev/null | sed 's/^/  | /'\n            else\n              echo \"LAST_KMSG=vazio (sem panic de kernel registrado)\"\n            fi\n            echo \"DMESG_RESET=$(dmesg 2>/dev/null | grep -icE 'kernel panic|watchdog reset|hardware reset')\"\n            # /proc/last_kmsg é sempre vazio neste kernel (4.4, pstore). O que este aparelho GRAVA e\n            # persiste é o AEE da MediaTek (db.NN.KE = exceção de kernel, NE = nativa, ANR) e o dropbox\n            # do framework (SYSTEM_RESTART, system_server_watchdog/wtf) — sem eles o reboot do carro em\n            # 08/09/2026 (bootreason=reboot / kernel_panic) ficou sem causa. Só leitura.\n            echo \"BOOTREASON_PERSIST=$(getprop persist.sys.boot.reason)\"\n            echo \"-- AEE (últimas exceções; KE=kernel, NE=nativa) --\"\n            tail -n 6 /data/aee_exp/db_history 2>/dev/null | sed 's/^/  | /'\n            echo \"-- dropbox (mais recentes) --\"\n            ls -t /data/system/dropbox 2>/dev/null | head -n 8 | sed 's/^/  | /'\n            # Listar o NOME do crash nao diz o que caiu. Em 25/09/2026 o dono relatou o AA caindo\n            # no meio da sessao; o pacote trazia \"6 excecoes nativas\" e nenhuma causa — o tombstone\n            # fica no dropbox e nao era lido. Na bancada, este trecho nomeia o culpado na hora:\n            #   pid: 23465, name: AAutoMonitor  >>> /system/bin/AAutoMonitor <<<\n            #   signal 11 (SIGSEGV)\n            # Compacto de proposito: cabecalho do mais recente de cada tipo, nao o backtrace todo.\n            echo \"-- o que caiu (conteudo do dropbox mais recente) --\"\n            for _k in TOMBSTONE RESTART wtf watchdog ANR; do\n              _f=$(ls -t /data/system/dropbox 2>/dev/null | grep \"$_k\" | head -n 1)\n              [ -z \"$_f\" ] && continue\n              echo \"  | [$_k] $_f\"\n              case \"$_f\" in\n                *.gz) zcat \"/data/system/dropbox/$_f\" 2>/dev/null ;;\n                *)    cat  \"/data/system/dropbox/$_f\" 2>/dev/null ;;\n              esac | grep -aE '^(Process|Cmdline|Subject|pid|signal)|>>> ' | head -n 4 | sed 's/^/  |   /'\n            done\n            echo \"-- buffer de crash do logcat (sobrevive ao restart do framework) --\"\n            logcat -b crash -d -t 120 2>/dev/null | tail -n 40 | sed 's/^/  | /'\n            echo \"-- pstore (só o que parece queda) --\"\n            for f in /sys/fs/pstore/console-ramoops*; do\n              [ -r \"$f\" ] && grep -a -iE 'kernel panic|Oops|BUG:|watchdog|Unable to handle' \"$f\" 2>/dev/null | tail -n 5 | sed \"s#^#  | $f: #\"\n            done\n\n            echo \"-- ConnAdaptor --\"\n            _p=$(pm path com.njda.adapter 2>/dev/null)\n            echo \"PM_PATH=$_p\"\n            case \"$_p\" in\n              *\"/data/app/\"*) echo \"CONNADAPTOR=ATIVO\" ;;\n              *)\n                # O ConnAdaptor NÃO volta por bind. O bind sobre /system é o mecanismo do Ar\n                # Digital e dos outros patches de sistema; para o ConnAdaptor ele produzia um estado\n                # meio-funcionando — APK montado, tela dizendo \"ativado\", CarplayMonitor sem\n                # trabalhar. Ativar é `pm install`.\n                #\n                # Se sobrou bind de uma instalação antiga, DESFAZ e apaga o marcador: melhor a\n                # central voltar limpa ao estado de fábrica (e a pessoa reativar) do que carregar\n                # para sempre uma montagem que aparenta funcionar e não funciona.\n                if [ -f ");
        sb.append((String) oVar.c("/data/local/tmp/fixes/connadaptor_em_bind"));
        sb.append(" ]; then\n                  echo \"CONNADAPTOR=LIMPANDO_BIND_LEGADO\"\n                  # Bind EMPILHA: montar duas vezes sobre o mesmo alvo deixa duas entradas em\n                  # /proc/mounts, e um `umount` sozinho descobre a de baixo em vez de limpar. Por\n                  # isso o laço, igual ao `unmountAllLoop` do ShellSnippets.\n                  _i=0\n                  while grep -F \" ");
        String str = u.f4308w;
        sb.append(str);
        sb.append(" \" /proc/mounts >/dev/null 2>&1 && [ $_i -lt 8 ]; do\n                    umount ");
        androidx.activity.result.b.q(sb, (String) oVar.c(str), " 2>/dev/null || break\n                    _i=$((_i+1))\n                  done\n                  # Só apaga o marcador se a montagem REALMENTE saiu. Apagar antes de conferir perde\n                  # a única pista de que ainda há bind vivo, e o boot seguinte nem tentaria de novo.\n                  if grep -F \" ", str, " \" /proc/mounts >/dev/null 2>&1; then\n                    echo \"CONNADAPTOR=LIMPEZA_FALHOU (bind ainda montado apos $_i tentativas)\"\n                  else\n                    rm -f ");
        sb.append((String) oVar.c("/data/local/tmp/fixes/connadaptor_em_bind"));
        sb.append(" 2>/dev/null || true\n                    echo \"CONNADAPTOR=STOCK (bind legado desfeito)\"\n                  fi\n                else\n                  echo \"CONNADAPTOR=STOCK\"\n                fi\n                ;;\n            esac\n\n            # Ar Digital é restaurado por HvacDigital.restaurarNoBoot: montar aqui antes\n            # da recarga fazia o watchdog confundir bind presente com plugin carregado.\n            echo \"-- Ar Digital (restauração pelo watchdog) --\"\n            if [ -f ");
        sb.append((String) oVar.c("/data/local/tmp/fixes/hvac_em_bind"));
        sb.append(" ]; then echo HVAC_MARCADOR_LEGADO; fi\n            if [ -f ");
        sb.append((String) oVar.c("/data/local/hvac-digital/sysui.apk"));
        sb.append(" ]; then echo HVAC_FONTE_PRESENTE; else echo HVAC_SEM_FONTE; fi\n\n            # -- Volante (patch do KeyServer) --\n            # Este bloco é o irmão que faltava. O Ar Digital acima e o CarplayMonitor abaixo já\n            # refaziam o bind a cada boot; o KeyServer não, e por isso o duplo-toque=Ar e o\n            # segurar=Condução morriam em todo desligamento sem aviso nenhum — o dono achava o\n            # volante mudo e reativava na mão (relato + central_events.log de 24/09/2026).\n            #\n            # O marcador é a vontade registrada, não o estado: a pref do app é reescrita com o\n            # /proc/mounts e por isso não serve de memória. Ver DecisaoPatchVolante.\n            if [ -f ");
        sb.append((String) oVar.c("/data/local/tmp/fixes/keyserver_em_bind"));
        sb.append(" ] && [ -f ");
        sb.append((String) oVar.c("/data/local/tmp/fixes/GeelyAutoKeyServer-patched.apk"));
        sb.append(" ]; then\n              echo \"-- Volante (KeyServer em bind: refazer) --\"\n              _ks=");
        sb.append((String) oVar.c(u.f4311z));
        sb.append("\n              if grep -F \" $_ks \" /proc/mounts >/dev/null 2>&1; then\n                echo \"VOLANTE=JA_MONTADO\"\n              elif [ ! -f \"$_ks\" ]; then\n                echo \"VOLANTE_SEM_ALVO ($_ks)\"\n              else\n                setenforce 0 2>/dev/null || true\n                chown root:root ");
        sb.append((String) oVar.c("/data/local/tmp/fixes/GeelyAutoKeyServer-patched.apk"));
        sb.append("; chmod 644 ");
        sb.append((String) oVar.c("/data/local/tmp/fixes/GeelyAutoKeyServer-patched.apk"));
        sb.append("\n                # O alvo do bind herda o label do inode de ORIGEM: sem o chcon aqui o KeyServer\n                # sobe com rótulo errado e o init recusa o apk depois de montado.\n                chcon u:object_r:system_app_file:s0 ");
        sb.append((String) oVar.c("/data/local/tmp/fixes/GeelyAutoKeyServer-patched.apk"));
        sb.append(" 2>/dev/null || echo \"VOLANTE_CHCON_FALHOU\"\n                mount --bind ");
        sb.append((String) oVar.c("/data/local/tmp/fixes/GeelyAutoKeyServer-patched.apk"));
        sb.append(" \"$_ks\"\n                restorecon -v \"$_ks\" 2>/dev/null || true\n                if grep -F \" $_ks \" /proc/mounts >/dev/null 2>&1; then\n                  # O dalvik-cache guarda o odex do apk ANTIGO; sem limpar, o boot carrega o\n                  # código de fábrica por cima do apk novo e o bind não muda nada.\n                  rm -rf /data/dalvik-cache/*/system@app@GeelyAutoKeyServer* 2>/dev/null || true\n                  am force-stop com.flyme.auto.keyserver 2>/dev/null || true\n                  am startservice com.flyme.auto.keyserver/com.flyme.auto.keyserver.service.AutoKeyService >/dev/null 2>&1 || true\n                  echo \"VOLANTE=ATIVO_POR_BIND\"\n                else\n                  echo \"VOLANTE_BIND_FALHOU\"\n                fi\n              fi\n            fi\n\n");
        sb.append(z2 ? o2.m.U(a0(), "            ") : "            echo \"-- CarplayMonitor: fora deste script de proposito, roda por comando proprio --\"");
        sb.append("\n            echo \"== fim ==\"\n        ");
        return o2.m.V(sb.toString());
    }

    public static final u3 v(s3 s3Var, int i3, long j3) {
        if (s3Var.f4198d.equals(Boolean.TRUE)) {
            return new u3(q3.f4085a, "sessão ativa — protegida");
        }
        if (i3 >= 3) {
            return new u3(q3.f4091i, "orçamento gasto (" + i3 + "/3)");
        }
        Boolean bool = s3Var.f4196a;
        q3 q3Var = q3.b;
        if (bool == null) {
            return new u3(q3Var, "não sei se o alvo está presente");
        }
        Boolean bool2 = Boolean.FALSE;
        if (bool.equals(bool2)) {
            return new u3(q3.f4086c, "alvo ausente");
        }
        if (s3Var.f4199e) {
            return new u3(q3.f4088e, "Wi-Fi cliente ocupa o rádio");
        }
        Boolean bool3 = s3Var.b;
        if (bool3 == null) {
            return new u3(q3Var, "não sei o estado do AP");
        }
        if (bool3.equals(bool2)) {
            return new u3(q3.f4087d, "AP não está pronto");
        }
        Boolean bool4 = s3Var.f4197c;
        if (bool4 == null) {
            return new u3(q3Var, "não sei o estado do transporte");
        }
        boolean zEquals = bool4.equals(bool2);
        q3 q3Var2 = q3.f4089g;
        if (zEquals) {
            if (j3 < 42000) {
                return new u3(q3Var2, "esperando o transporte subir");
            }
            return X(s3Var, "transporte ausente há " + j3 + "ms, sem avanço");
        }
        if (v3.f4367a[1] != 1) {
            return new u3(q3.f, "pré-requisitos prontos");
        }
        if (j3 < 42000) {
            return new u3(q3Var2, "negociação em andamento");
        }
        return X(s3Var, "convite sem progresso há " + j3 + "ms");
    }

    public static final String w(String str) {
        i2.g.e(str, "caminho");
        try {
            File file = new File(str);
            if (!file.isFile()) {
                return "";
            }
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                byte[] bArr = new byte[65536];
                while (true) {
                    int i3 = fileInputStream.read(bArr);
                    if (i3 <= 0) {
                        byte[] bArrDigest = messageDigest.digest();
                        i2.g.d(bArrDigest, "digest(...)");
                        String strB0 = y1.f.b0(bArrDigest, new o(18));
                        fileInputStream.close();
                        return strB0;
                    }
                    messageDigest.update(bArr, 0, i3);
                    return "";
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    a1.b.p(fileInputStream, th);
                    throw th2;
                }
            }
        } catch (Throwable unused) {
            return "";
        }
    }

    public static final g4 x(String str, String str2, boolean z2) {
        String string;
        if (!z2) {
            return g4.f3616c;
        }
        String string2 = o2.k.E0(str2).toString();
        g4 g4Var = g4.f3617d;
        if (string2 != null) {
            Locale locale = Locale.ROOT;
            String lowerCase = string2.toLowerCase(locale);
            i2.g.d(lowerCase, "toLowerCase(...)");
            if (lowerCase.length() <= 0) {
                lowerCase = null;
            }
            if (lowerCase != null && str != null && (string = o2.k.E0(str).toString()) != null) {
                String lowerCase2 = string.toLowerCase(locale);
                i2.g.d(lowerCase2, "toLowerCase(...)");
                String str3 = lowerCase2.length() > 0 ? lowerCase2 : null;
                if (str3 != null) {
                    return str3.equals(lowerCase) ? g4.f3615a : g4.b;
                }
            }
        }
        return g4Var;
    }

    public static void y(Context context) {
        try {
            context.startService(new Intent(context, (Class<?>) HomeWidgetsPollService.class));
        } catch (Exception unused) {
        }
    }

    public static void z(Context context) {
        i2.g.e(context, "context");
        wd wdVar = wd.f4450a;
        boolean zA = wd.a(context);
        if (!b(context) || zA) {
            context.stopService(new Intent(context, (Class<?>) HomeFloatingWidgetsService.class));
            return;
        }
        context.startService(new Intent(context, (Class<?>) HomeFloatingWidgetsService.class));
        HomeFloatingWidgetsService homeFloatingWidgetsService = HomeFloatingWidgetsService.f927b0;
        if (homeFloatingWidgetsService != null) {
            homeFloatingWidgetsService.f929c.post(new j7(homeFloatingWidgetsService, 1));
        }
    }
}
