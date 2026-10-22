package w0;

import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.provider.Settings;
import com.ex.auto.AppPipFloaterService;
import com.ex.auto.BlackoutFloaterService;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.DpadFloaterService;
import com.ex.auto.ExSapoCastFloaterService;
import com.ex.auto.HomeFloatingWidgetsService;
import com.ex.auto.HomeWidgetsPollService;
import com.ex.auto.LyricsFloaterService;
import com.ex.auto.MediaBarFloaterService;
import com.ex.auto.ModoOficinaTriggerService;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.R;
import com.ex.auto.SplitFloaterService;
import com.ex.auto.TempBattPillFloaterService;
import com.ex.auto.TimerFloaterService;
import com.ex.auto.VhalProviderService;
import com.ex.auto.WifiFloaterService;
import com.geely.driveregenfloater.DriveRegenFloaterService;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class wd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final wd f4450a = new wd();
    public static final List b = y1.h.V(QuickAccessFloaterService.class, TempBattPillFloaterService.class, HomeFloatingWidgetsService.class, MediaBarFloaterService.class, LyricsFloaterService.class, WifiFloaterService.class, DpadFloaterService.class, SplitFloaterService.class, AppPipFloaterService.class, ExSapoCastFloaterService.class, BlackoutFloaterService.class, DriveRegenFloaterService.class, TimerFloaterService.class, HomeWidgetsPollService.class, VhalProviderService.class);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ComponentName f4451c = new ComponentName("com.ex.auto", "com.ex.auto.MainActivity");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static volatile boolean f4452d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static volatile boolean f4453e;

    public static boolean a(Context context) {
        i2.g.e(context, "ctx");
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences("tela_preta_prefs", 0);
            i2.g.d(sharedPreferences, "getSharedPreferences(...)");
            return sharedPreferences.getBoolean("modo_oficina", false);
        } catch (Throwable unused) {
            return false;
        }
    }

    public static void b(Context context, boolean z2) {
        try {
            Iterator it = k1.a.I(f4451c).iterator();
            while (it.hasNext()) {
                context.getPackageManager().setComponentEnabledSetting((ComponentName) it.next(), z2 ? 1 : 2, 1);
            }
        } catch (Throwable th) {
            ae aeVar = ae.f3361a;
            ae.b("ModoOficina", "não consegui mexer no ícone: " + th.getMessage(), false);
        }
    }

    public static void d(Context context) {
        i2.g.e(context, "ctx");
        SharedPreferences sharedPreferences = context.getSharedPreferences("tela_preta_prefs", 0);
        i2.g.b(sharedPreferences);
        if (sharedPreferences.getBoolean("modo_oficina", false)) {
            return;
        }
        boolean z2 = sharedPreferences.getBoolean("quick_access_enabled", false);
        boolean z3 = sharedPreferences.getBoolean("gestures_enabled", false);
        if (z2 || z3) {
            try {
                context.startService(new Intent(context, (Class<?>) QuickAccessFloaterService.class));
            } catch (Throwable unused) {
            }
        }
        if (sharedPreferences.getBoolean("temp_batt_pill_enabled", false)) {
            try {
                context.startService(new Intent(context, (Class<?>) TempBattPillFloaterService.class));
            } catch (Throwable unused2) {
            }
        }
        try {
            List list = HomeFloatingWidgetsService.f926a0;
            t1.z(context);
        } catch (Throwable unused3) {
        }
        if (sharedPreferences.getBoolean("media_bar_floater_enabled", false)) {
            try {
                context.startForegroundService(new Intent(context, (Class<?>) MediaBarFloaterService.class));
            } catch (Throwable unused4) {
            }
        }
        if (sharedPreferences.getBoolean("lyrics_floater_enabled", false)) {
            try {
                context.startForegroundService(new Intent(context, (Class<?>) LyricsFloaterService.class));
            } catch (Throwable unused5) {
            }
        }
    }

    public static void e(CentralWatchdogService centralWatchdogService) {
        if (f4453e) {
            return;
        }
        boolean z2 = true;
        f4453e = true;
        boolean z3 = !a(centralWatchdogService);
        try {
            if (centralWatchdogService.getPackageManager().getComponentEnabledSetting(f4451c) == 2) {
                z2 = false;
            }
            if (z2 == z3) {
                return;
            }
            ae aeVar = ae.f3361a;
            ae.b("ModoOficina", "ícone fora de sincronia (deveria=" + z3 + ") — corrigindo", false);
            b(centralWatchdogService, z3);
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0245  */
    /* JADX WARN: Code duplicated, block: B:183:0x025b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:184:? A[LOOP:3: B:99:0x023f->B:184:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:98:0x023b  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r19v0, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r5v11, types: [java.lang.Iterable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v19 */
    /* JADX WARN: Type inference failed for: r5v20 */
    public static vd g(Context context, String str) {
        ArrayList arrayListG0;
        y1.p pVar;
        SharedPreferences sharedPreferences;
        boolean z2;
        x4 x4Var;
        Iterator it;
        Iterator it2;
        Object obj;
        w4 w4Var;
        boolean z3;
        boolean z4;
        Integer numValueOf;
        File file;
        w4 w4Var2 = w4.f4427a;
        w4 w4Var3 = w4.f4430e;
        y1.p pVar2 = y1.p.f4663a;
        SharedPreferences sharedPreferences2 = context.getSharedPreferences("tela_preta_prefs", 0);
        sharedPreferences2.edit().putBoolean("modo_oficina_restaurando", true).apply();
        File externalFilesDir = context.getExternalFilesDir(null);
        if (externalFilesDir == null) {
            externalFilesDir = context.getFilesDir();
        }
        File file2 = new File(externalFilesDir, "modo_oficina_estado.txt");
        try {
            arrayListG0 = file2.exists() ? f2.d.g0(file2) : null;
            while (true) {
                if (!it2.hasNext()) {
                    obj = null;
                    break;
                }
                Object next = it2.next();
                if (o2.t.d0((String) next, "#CARLOCK_PATH=")) {
                    obj = next;
                    break;
                }
            }
        } catch (Throwable th) {
            ae aeVar = ae.f3361a;
            ae.b("ModoOficina", "snapshot ilegível em " + file2.getAbsolutePath() + ": " + th.getMessage(), false);
            arrayListG0 = null;
        }
        if (arrayListG0 == null) {
            x4Var = new x4(pVar2, false, false);
            pVar = pVar2;
            sharedPreferences = sharedPreferences2;
        } else {
            ArrayList arrayList = new ArrayList(y1.i.X(arrayListG0));
            int size = arrayListG0.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj2 = arrayListG0.get(i3);
                i3++;
                arrayList.add(o2.k.E0((String) obj2).toString());
            }
            ArrayList arrayList2 = new ArrayList();
            int size2 = arrayList.size();
            int i4 = 0;
            while (i4 < size2) {
                Object obj3 = arrayList.get(i4);
                i4++;
                if (((String) obj3).length() > 0) {
                    arrayList2.add(obj3);
                }
            }
            ArrayList arrayList3 = new ArrayList();
            int size3 = arrayList2.size();
            int i5 = 0;
            while (i5 < size3) {
                Object obj4 = arrayList2.get(i5);
                i5++;
                y1.p pVar3 = pVar2;
                SharedPreferences sharedPreferences3 = sharedPreferences2;
                if (!o2.t.d0((String) obj4, "#")) {
                    arrayList3.add(obj4);
                }
                pVar2 = pVar3;
                sharedPreferences2 = sharedPreferences3;
            }
            pVar = pVar2;
            sharedPreferences = sharedPreferences2;
            if (arrayList2.isEmpty()) {
                z2 = false;
                break;
            }
            int size4 = arrayList2.size();
            int i6 = 0;
            while (true) {
                if (i6 >= size4) {
                    z2 = false;
                    break;
                }
                Object obj5 = arrayList2.get(i6);
                i6++;
                if (i2.g.a((String) obj5, "#CONNADAPTOR=custom")) {
                    z2 = true;
                    break;
                }
            }
            x4Var = new x4(arrayList3, z2, true);
        }
        ?? r5 = x4Var.f4492a;
        boolean z5 = x4Var.f4493c;
        if (!z5) {
            ae aeVar2 = ae.f3361a;
            StringBuilder sbL = androidx.activity.result.b.l("restaurar (", str, "): SEM SNAPSHOT em ");
            sbL.append(file2.getAbsolutePath());
            sbL.append(" — não sei quais pacotes devolver");
            ae.b("ModoOficina", sbL.toString(), true);
        }
        boolean z6 = x4Var.b;
        int i7 = 0;
        ?? r6 = r5;
        for (String str2 : r5) {
            ?? r19 = r6;
            try {
                z4 = z5;
                try {
                    numValueOf = Integer.valueOf(context.getPackageManager().getApplicationInfo(str2, 0).uid);
                } catch (Throwable unused) {
                    numValueOf = null;
                }
            } catch (Throwable unused2) {
                z4 = z5;
            }
            try {
                file = file2;
                try {
                    context.getPackageManager().setApplicationEnabledSetting(str2, 0, ((numValueOf == null || numValueOf.intValue() == Process.myUid()) ? 0 : 1) ^ 1);
                    i7++;
                } catch (Throwable th2) {
                    th = th2;
                    ae aeVar3 = ae.f3361a;
                    StringBuilder sbL2 = androidx.activity.result.b.l("não consegui ligar ", str2, ": ");
                    sbL2.append(th.getMessage());
                    ae.b("ModoOficina", sbL2.toString(), false);
                }
            } catch (Throwable th3) {
                th = th3;
                file = file2;
            }
            try {
                Thread.sleep(120L);
            } catch (InterruptedException unused3) {
            }
            r6 = r19;
            z5 = z4;
            file2 = file;
        }
        ?? r110 = r6;
        boolean z7 = z5;
        File file3 = file2;
        b(context, true);
        String str3 = z6 ? qe.e(context, "rede.ativarConnAdaptor", y1.s.X(new x1.a("caApk", u.d(sharedPreferences)), new x1.a("caMd5", t1.w(u.d(sharedPreferences)))), 8) ? "ativado" : "sem playbook" : "";
        Collection collection = arrayListG0;
        if (arrayListG0 == null) {
            collection = pVar;
        }
        StringBuilder sb = new StringBuilder();
        if (collection.isEmpty()) {
            if (!collection.isEmpty()) {
                it = collection.iterator();
                while (it.hasNext()) {
                    if (i2.g.a(o2.k.E0((String) it.next()).toString(), "#HVAC=bind")) {
                        k(20000, "touch '/data/local/tmp/fixes/hvac_em_bind'");
                        sb.append(", hvac=marcado_p_remontar");
                        break;
                    }
                }
            }
        } else {
            Iterator it3 = collection.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    if (!collection.isEmpty()) {
                        it = collection.iterator();
                        while (it.hasNext()) {
                            if (i2.g.a(o2.k.E0((String) it.next()).toString(), "#HVAC=bind")) {
                                k(20000, "touch '/data/local/tmp/fixes/hvac_em_bind'");
                                sb.append(", hvac=marcado_p_remontar");
                                break;
                            }
                        }
                    }
                } else if (i2.g.a(o2.k.E0((String) it3.next()).toString(), "#HVAC=install")) {
                    sb.append(o2.k.e0(k(120000, "pm install -r -g '/data/local/hvac-digital/sysui.apk' 2>&1"), "Success", false) ? ", hvac=reinstalado" : ", hvac=FALHOU");
                }
            }
        }
        it2 = collection.iterator();
        String str4 = (String) obj;
        if (str4 != null) {
            String string = o2.k.E0(o2.k.x0(str4, '=', str4)).toString();
            if (!o2.k.m0(string)) {
                try {
                    ContentResolver contentResolver = context.getContentResolver();
                    Settings.System.putString(contentResolver, "lock_car_audio_path", string);
                    Settings.System.putString(contentResolver, "lock_car_audio_enable", "1");
                    sb.append(", carlock=religado");
                } catch (Throwable th4) {
                    sb.append(", carlock=FALHOU(" + th4.getMessage() + ')');
                }
            }
        }
        String string2 = sb.toString();
        i2.g.d(string2, "toString(...)");
        try {
            file3.delete();
        } catch (Throwable unused4) {
        }
        sharedPreferences.edit().putBoolean("modo_oficina", false).putLong("modo_oficina_ate", 0L).putBoolean("modo_oficina_restaurando", false).apply();
        ModoOficinaTriggerService modoOficinaTriggerService = ModoOficinaTriggerService.f;
        e8.w(context);
        d(context);
        if (!z7) {
            w4Var = w4.f4429d;
        } else if (r110.isEmpty()) {
            w4Var = w4Var3;
        } else if (i7 <= 0) {
            w4Var = w4.f4428c;
        } else {
            w4Var = i7 < r110.size() ? w4.b : w4Var2;
        }
        ae aeVar4 = ae.f3361a;
        ae.b("ModoOficina", "restaurar (" + str + "): " + w4Var + " — " + i7 + '/' + r110.size() + " pacotes, connAdaptor=" + z6 + string2, true);
        int iOrdinal = w4Var.ordinal();
        int i8 = 2;
        String string3 = (iOrdinal == 1 || iOrdinal == 2) ? context.getString(R.string.k_modo_oficina_restaurou_parcial, Integer.valueOf(i7), Integer.valueOf(r110.size())) : iOrdinal != 3 ? context.getString(R.string.k_modo_oficina_restaurou, Integer.valueOf(i7)) : context.getString(R.string.k_modo_oficina_sem_snapshot);
        i2.g.b(string3);
        if (w4Var == w4Var2 || w4Var == w4Var3) {
            z3 = true;
            sharedPreferences.edit().putBoolean("modo_oficina_aviso_saida_pendente", true).commit();
            new Handler(Looper.getMainLooper()).post(new e.l(context.getApplicationContext(), i8));
        } else {
            z3 = true;
        }
        return new vd(string3, str3, (w4Var == w4Var2 || w4Var == w4Var3) ? z3 : false);
    }

    public static vd h(Context context, String str) {
        ee eeVar = ee.f3548a;
        SharedPreferences sharedPreferencesC = ee.c(context);
        try {
            if (!sharedPreferencesC.edit().putBoolean("modo_oficina_restaurando", true).commit()) {
                throw new IllegalStateException("Check failed.");
            }
            List list = c6.f3430a;
            c6.h(context);
            context.startForegroundService(new Intent(context, (Class<?>) CentralWatchdogService.class));
            c6.l(context);
            if (!sharedPreferencesC.edit().putBoolean("modo_oficina", false).putLong("modo_oficina_ate", 0L).putBoolean("modo_oficina_restaurando", false).putBoolean("modo_oficina_entrada_pendente", false).putBoolean("modo_oficina_aviso_saida_pendente", true).commit()) {
                throw new IllegalStateException("Check failed.");
            }
            new Handler(Looper.getMainLooper()).post(new a1.i(new JSONObject(f2.d.h0(c6.a(context))).getJSONArray("services"), 13, context));
            if (!c6.a(context).delete()) {
                throw new IllegalStateException("Check failed.");
            }
            ModoOficinaTriggerService modoOficinaTriggerService = ModoOficinaTriggerService.f;
            e8.w(context);
            d(context);
            c6.h(context);
            context.startForegroundService(new Intent(context, (Class<?>) CentralWatchdogService.class));
            ae aeVar = ae.f3361a;
            ae.b("ModoOficina", "restaurar (" + str + "): estado completo confirmado", true);
            new Handler(Looper.getMainLooper()).post(new e.l(context.getApplicationContext(), 2));
            return new vd("Configurações e modificações restauradas e conferidas.", "", true);
        } catch (Exception e3) {
            context.startForegroundService(new Intent(context, (Class<?>) CentralWatchdogService.class));
            ae aeVar2 = ae.f3361a;
            StringBuilder sbL = androidx.activity.result.b.l("restaurar (", str, ") incompleto: ");
            sbL.append(e3.getMessage());
            sbL.append("; registro preservado");
            ae.b("ModoOficina", sbL.toString(), true);
            return new vd("Restauração incompleta: " + e3.getMessage() + ". Tente novamente; o registro foi preservado.", "", false);
        }
    }

    public static void i(Context context) {
        Iterator it = b.iterator();
        while (it.hasNext()) {
            try {
                context.stopService(new Intent(context, (Class<?>) it.next()));
            } catch (Throwable unused) {
            }
        }
        try {
            Object systemService = context.getSystemService("notification");
            i2.g.c(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
            ((NotificationManager) systemService).cancelAll();
        } catch (Throwable unused2) {
        }
    }

    public static boolean j(Context context) {
        List list = c6.f3430a;
        if (c6.a(context).exists()) {
            return true;
        }
        File externalFilesDir = context.getExternalFilesDir(null);
        if (externalFilesDir == null) {
            externalFilesDir = context.getFilesDir();
        }
        return new File(externalFilesDir, "modo_oficina_estado.txt").exists();
    }

    public static String k(int i3, String str) {
        try {
            return m.x(str, i3, null, new n(0));
        } catch (Exception e3) {
            ae aeVar = ae.f3361a;
            ae.b("ModoOficina", "shell indisponível (ConnAdaptor não mexido): " + e3.getMessage(), false);
            return "ADB_INDISPONIVEL: " + e3.getMessage();
        }
    }

    public static void l(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("tela_preta_prefs", 0);
        if (sharedPreferences.getBoolean("modo_oficina_restaurando", false)) {
            ae aeVar = ae.f3361a;
            ae.b("ModoOficina", "restaurar tinha ficado pela metade — retomando no boot", false);
            new Thread(new e.l(context, 4)).start();
        } else if (sharedPreferences.getBoolean("modo_oficina", false)) {
            if (sharedPreferences.getBoolean("modo_oficina_entrada_pendente", false)) {
                new Thread(new e.l(context, 5)).start();
            }
            long j3 = sharedPreferences.getLong("modo_oficina_ate", 0L);
            if (1 <= j3 && j3 <= System.currentTimeMillis()) {
                new Thread(new e.l(context, 6)).start();
                return;
            }
            i(context);
            ModoOficinaTriggerService modoOficinaTriggerService = ModoOficinaTriggerService.f;
            e8.w(context);
        }
    }

    public final synchronized vd c(Context context, int i3) {
        vd vdVar;
        long jCurrentTimeMillis;
        ee eeVar = ee.f3548a;
        SharedPreferences sharedPreferencesC = ee.c(context);
        if (sharedPreferencesC.getBoolean("modo_oficina", false)) {
            return new vd("Modo oficina já está ativo", "", false);
        }
        try {
            List list = c6.f3430a;
            JSONObject jSONObjectK = c6.k(context);
            SharedPreferences.Editor editorPutBoolean = sharedPreferencesC.edit().putBoolean("modo_oficina", true);
            if (i3 > 0) {
                jCurrentTimeMillis = (((long) i3) * 3600000) + System.currentTimeMillis();
            } else {
                jCurrentTimeMillis = 0;
            }
            if (!editorPutBoolean.putLong("modo_oficina_ate", jCurrentTimeMillis).putInt("modo_oficina_horas", i3).putBoolean("modo_oficina_entrada_pendente", true).commit()) {
                throw new IllegalStateException("Check failed.");
            }
            new Handler(Looper.getMainLooper()).post(new e.l(context, 7));
            c6.h(context);
            i(context);
            ModoOficinaTriggerService modoOficinaTriggerService = ModoOficinaTriggerService.f;
            e8.w(context);
            context.startForegroundService(new Intent(context, (Class<?>) CentralWatchdogService.class));
            c6.f(context, jSONObjectK);
            if (!sharedPreferencesC.edit().putBoolean("modo_oficina_entrada_pendente", false).commit()) {
                throw new IllegalStateException("Check failed.");
            }
            context.startForegroundService(new Intent(context, (Class<?>) CentralWatchdogService.class));
            ae aeVar = ae.f3361a;
            ae.b("ModoOficina", "ocultar: estado completo confirmado", true);
            String string = context.getString(R.string.k_modo_oficina_ocultou, Integer.valueOf(jSONObjectK.getJSONArray("packages").length()));
            i2.g.d(string, "getString(...)");
            vdVar = new vd(string, "", true);
            return vdVar;
        } catch (Exception e3) {
            ae aeVar2 = ae.f3361a;
            ae.b("ModoOficina", "ocultar incompleto: " + e3.getMessage() + "; registro preservado", true);
            if (sharedPreferencesC.getBoolean("modo_oficina", false)) {
                context.startForegroundService(new Intent(context, (Class<?>) CentralWatchdogService.class));
            }
            vdVar = new vd("Modo oficina não foi concluído: " + e3.getMessage() + ". O registro foi preservado para restaurar.", "", false);
        }
    }

    public final synchronized vd f(Context context, String str) {
        i2.g.e(context, "ctx");
        if (str.equals("retomada-boot")) {
            ee eeVar = ee.f3548a;
            if (!ee.c(context).getBoolean("modo_oficina_restaurando", false)) {
                return new vd("Restauração já concluída", "", true);
            }
        }
        List list = c6.f3430a;
        if (c6.a(context).exists()) {
            return h(context, str);
        }
        if (!f4452d) {
            f4452d = true;
            try {
                vd vdVarG = g(context, str);
                f4452d = false;
                return vdVarG;
            } catch (Throwable th) {
                f4452d = false;
                throw th;
            }
        }
        ae aeVar = ae.f3361a;
        ae.b("ModoOficina", "restaurar (" + str + ") ignorado — já há um em andamento", false);
        String string = context.getString(R.string.k_modo_oficina_restaurando);
        i2.g.d(string, "getString(...)");
        return new vd(string, "", true);
    }
}
