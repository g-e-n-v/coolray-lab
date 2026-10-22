package w0;

import android.app.Service;
import android.content.Context;
import android.content.SharedPreferences;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class ee {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ee f3548a = new ee();
    public static final List b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final LinkedHashMap f3549c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final ConcurrentHashMap.KeySetView f3550d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static a1 f3551e;

    static {
        de deVar = de.f3510a;
        ce ceVar = ce.f3445a;
        be beVar = new be("hvac_stepper_enabled", deVar, ceVar, 0, 24);
        be beVar2 = new be("status_temp_ext_enabled", deVar, ceVar, 0, 24);
        be beVar3 = new be("status_battery_enabled", deVar, ceVar, 0, 24);
        be beVar4 = new be("rvc_black_bg", deVar, ceVar, 0, 24);
        be beVar5 = new be("hvac_digital_temp", deVar, ceVar, 0, 24);
        be beVar6 = new be("hvac_digital_batt", deVar, ceVar, 0, 24);
        be beVar7 = new be("auto_route_on_aa_connect", deVar, ceVar, 0, 24);
        be beVar8 = new be("auto_proxy_enabled", deVar, ceVar, 0, 24);
        be beVar9 = new be("restart_aa_on_hu_boot", deVar, ceVar, 0, 24);
        be beVar10 = new be("telemetry_autostart", deVar, ceVar, 0, 24);
        be beVar11 = new be("avas_muted_saved", deVar, ceVar, 0, 24);
        be beVar12 = new be("quick_access_enabled", deVar, ceVar, 0, 24);
        be beVar13 = new be("aeb_restore_on_boot", deVar, ceVar, 0, 24);
        de deVar2 = de.b;
        be beVar14 = new be("fan_speed", deVar2, ceVar, 3, 8);
        ce ceVar2 = ce.b;
        List listU = y1.f.U(new be[]{beVar, beVar2, beVar3, beVar4, beVar5, beVar6, beVar7, beVar8, beVar9, beVar10, beVar11, beVar12, beVar13, beVar14, new be("saved_regen", deVar2, ceVar2, 537003266, 8), new be("saved_drive", deVar2, ceVar2, 570491138, 8), new be("floater_alpha", deVar2, ceVar2, 100, 8)});
        b = listU;
        int iV = y1.s.V(y1.i.X(listU));
        if (iV < 16) {
            iV = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(iV);
        for (Object obj : listU) {
            linkedHashMap.put(((be) obj).f3402a, obj);
        }
        f3549c = linkedHashMap;
        ConcurrentHashMap.KeySetView keySetViewNewKeySet = ConcurrentHashMap.newKeySet();
        i2.g.d(keySetViewNewKeySet, "newKeySet(...)");
        f3550d = keySetViewNewKeySet;
    }

    public static SharedPreferences a(Context context) {
        try {
            return context.createDeviceProtectedStorageContext().getSharedPreferences("drive_regen_prefs", 0);
        } catch (Exception unused) {
            return context.getSharedPreferences("drive_regen_prefs", 0);
        }
    }

    public static SharedPreferences c(Context context) {
        i2.g.e(context, "ctx");
        SharedPreferences sharedPreferences = context.getSharedPreferences("tela_preta_prefs", 0);
        i2.g.d(sharedPreferences, "getSharedPreferences(...)");
        return sharedPreferences;
    }

    public final synchronized void b(Service service) {
        if (f3551e != null) {
            return;
        }
        Context applicationContext = service.getApplicationContext();
        i2.g.b(applicationContext);
        SharedPreferences sharedPreferences = applicationContext.getSharedPreferences("phone_sync_meta", 0);
        i2.g.d(sharedPreferences, "getSharedPreferences(...)");
        a1 a1Var = new a1(1, sharedPreferences);
        c(applicationContext).registerOnSharedPreferenceChangeListener(a1Var);
        f3551e = a1Var;
        a(applicationContext).registerOnSharedPreferenceChangeListener(new a1(1, sharedPreferences));
    }
}
