package w0;

import android.content.SharedPreferences;
import android.util.Log;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.MainActivity;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class j5 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3750a;
    public final /* synthetic */ SharedPreferences b;

    public /* synthetic */ j5(SharedPreferences sharedPreferences, int i3) {
        this.f3750a = i3;
        this.b = sharedPreferences;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x008c  */
    /* JADX WARN: Code duplicated, block: B:92:0x018f  */
    /* JADX WARN: Code duplicated, block: B:93:0x0190 A[Catch: all -> 0x0145, TRY_LEAVE, TryCatch #0 {all -> 0x0145, blocks: (B:72:0x013a, B:74:0x0140, B:80:0x0150, B:82:0x015a, B:84:0x0160, B:85:0x0166, B:87:0x016c, B:89:0x0172, B:90:0x017f, B:93:0x0190, B:97:0x01af, B:94:0x01a2), top: B:118:0x013a, inners: #5 }] */
    @Override // java.lang.Runnable
    public final void run() {
        String string;
        boolean z2 = true;
        switch (this.f3750a) {
            case 0:
                new Thread(new j5(this.b, 4)).start();
                return;
            case 1:
                new Thread(new j5(this.b, 5)).start();
                return;
            case 2:
                new Thread(new j5(this.b, 7)).start();
                return;
            case 3:
                String str = "";
                try {
                    String string2 = this.b.getString("recovery_name", "");
                    if (string2 != null) {
                        str = string2;
                    }
                    k5 k5Var = k5.f3786a;
                    String strK = k5.k();
                    String strL = k5.l();
                    String strC = k5.c(str);
                    k5.r("[CentralEXAuto] Aviso de bloqueio visto — ".concat(strC), "Nome (recovery): " + strC + "\nXDSN: " + strL + "\nSerial: " + strK + "\nban-ack");
                    Log.d("DR", "banAck ok");
                    return;
                } catch (Throwable th) {
                    Log.d("DR", "banAck: " + th.getMessage());
                    return;
                }
            case 4:
                SharedPreferences sharedPreferences = this.b;
                k5 k5Var2 = k5.f3786a;
                try {
                    if (sharedPreferences.getBoolean("adb_port_migrated", false)) {
                        m.l();
                        return;
                    }
                    String strI = "";
                    for (int i3 = 1; i3 < 6; i3++) {
                        strI = k5.i();
                        if (!o2.k.m0(strI) && !strI.equals("DESCONHECIDO")) {
                            if (!o2.k.m0(strI) && !strI.equals("DESCONHECIDO")) {
                                sharedPreferences.edit().putString("recovery_name", strI).apply();
                            }
                            if (o2.t.a0(o2.k.E0(strI).toString(), "IBANES")) {
                                String strL2 = m.l();
                                sharedPreferences.edit().putBoolean("adb_port_migrated", true).apply();
                                Thread.sleep(3000L);
                                try {
                                    k5.p(strI, k5.k(), k5.l(), strL2);
                                    return;
                                } catch (Throwable th2) {
                                    Log.d("DR", "adbPortReport: " + th2.getMessage());
                                    return;
                                }
                            }
                            return;
                        }
                        Thread.sleep(3000L);
                    }
                    if (!o2.k.m0(strI)) {
                        sharedPreferences.edit().putString("recovery_name", strI).apply();
                    }
                    if (o2.t.a0(o2.k.E0(strI).toString(), "IBANES")) {
                        return;
                    }
                    String strL3 = m.l();
                    sharedPreferences.edit().putBoolean("adb_port_migrated", true).apply();
                    Thread.sleep(3000L);
                    k5.p(strI, k5.k(), k5.l(), strL3);
                    return;
                } catch (Throwable th3) {
                    Log.d("DR", "ensureIbanesAdbPort: " + th3.getMessage());
                    return;
                }
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                SharedPreferences sharedPreferences2 = this.b;
                String str2 = "";
                try {
                    String string3 = sharedPreferences2.getString("reported_name", "");
                    if (string3 != null && (string = o2.k.E0(string3).toString()) != null) {
                        str2 = string;
                    }
                    if (o2.k.m0(str2)) {
                        return;
                    }
                    k5 k5Var3 = k5.f3786a;
                    String strJ = k5.j();
                    if (!o2.k.m0(strJ) && !strJ.equals("DESCONHECIDO")) {
                        sharedPreferences2.edit().putString("recovery_name", strJ).apply();
                        if (str2.equalsIgnoreCase(strJ)) {
                            return;
                        }
                        k5.s(strJ, k5.k(), k5.l(), str2);
                        sharedPreferences2.edit().putString("reported_name", strJ).apply();
                        return;
                    }
                    return;
                } catch (Throwable th4) {
                    Log.d("DR", "reconcileName: " + th4.getMessage());
                    return;
                }
            case MusicClient.TYPE_GESTURE /* 6 */:
                SharedPreferences sharedPreferences3 = this.b;
                k5 k5Var4 = k5.f3786a;
                if (sharedPreferences3.getBoolean("dr_sent_v2", false)) {
                    return;
                }
                try {
                    String strJ2 = k5.j();
                    if (!o2.k.m0(strJ2) && !strJ2.equals("DESCONHECIDO")) {
                        sharedPreferences3.edit().putString("recovery_name", strJ2).apply();
                    }
                    String strK2 = k5.k();
                    String strL4 = k5.l();
                    synchronized (k5Var4) {
                        try {
                            if (!strJ2.equals("DESCONHECIDO") || (!o2.k.m0(strK2) && !strK2.equals("?"))) {
                                z2 = false;
                            } else if (!o2.k.m0(strL4) && !strL4.equals("?")) {
                                z2 = false;
                            }
                        } catch (Throwable th5) {
                            throw th5;
                        }
                    }
                    if (z2) {
                        Log.d("DR", "report adiado: adbd inacessível");
                        return;
                    } else {
                        k5.n(strJ2, strK2, strL4, sharedPreferences3);
                        return;
                    }
                } catch (Throwable th6) {
                    Log.d("DR", "report: " + th6.getMessage());
                    return;
                }
            default:
                SharedPreferences sharedPreferences4 = this.b;
                try {
                    k5 k5Var5 = k5.f3786a;
                    String strI2 = k5.i();
                    if (o2.k.m0(strI2) || strI2.equals("DESCONHECIDO")) {
                        return;
                    }
                    sharedPreferences4.edit().putString("recovery_name", strI2).apply();
                    return;
                } catch (Throwable unused) {
                    return;
                }
        }
    }

    public /* synthetic */ j5(MainActivity mainActivity, SharedPreferences sharedPreferences) {
        this.f3750a = 6;
        this.b = sharedPreferences;
    }
}
