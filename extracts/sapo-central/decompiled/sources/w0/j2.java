package w0;

import android.content.Intent;
import android.content.SharedPreferences;
import android.net.wifi.WifiManager;
import android.util.Log;
import android.widget.Toast;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.PhoneSyncService;
import com.ex.auto.R;
import com.ex.auto.VhalProviderService;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.io.File;
import java.io.FileInputStream;
import java.security.MessageDigest;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class j2 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3737a;
    public final /* synthetic */ CentralWatchdogService b;

    public /* synthetic */ j2(CentralWatchdogService centralWatchdogService, int i3) {
        this.f3737a = i3;
        this.b = centralWatchdogService;
    }

    /* JADX WARN: Code duplicated, block: B:144:0x031a  */
    /* JADX WARN: Code duplicated, block: B:150:0x0341  */
    /* JADX WARN: Code duplicated, block: B:151:0x036d  */
    /* JADX WARN: Code duplicated, block: B:154:0x0387  */
    /* JADX WARN: Code duplicated, block: B:155:0x038f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:156:0x0391  */
    /* JADX WARN: Code duplicated, block: B:162:0x03ad  */
    /* JADX WARN: Code duplicated, block: B:164:0x03b2  */
    /* JADX WARN: Instruction removed from duplicated block: B:150:0x0341, please report this as an issue */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // java.lang.Runnable
    public final void run() {
        String str;
        SharedPreferences sharedPreferences;
        String str2;
        String strB0;
        String string;
        Pattern patternCompile;
        boolean z2;
        boolean zContains;
        SharedPreferences sharedPreferences2;
        boolean zB;
        String str3;
        Long lValueOf;
        int i3 = 6;
        String str4 = "boot";
        int i4 = 1;
        switch (this.f3737a) {
            case 0:
                CentralWatchdogService centralWatchdogService = this.b;
                if (CentralWatchdogService.U2 && centralWatchdogService.W().getBoolean("swc_media_control_enabled", false)) {
                    od.f3992a.p(centralWatchdogService);
                    od.o(centralWatchdogService.Z1);
                    return;
                }
                return;
            case 1:
                CentralWatchdogService centralWatchdogService2 = this.b;
                int[] iArr = CentralWatchdogService.S2;
                try {
                    Object systemService = centralWatchdogService2.getApplicationContext().getSystemService("wifi");
                    i2.g.c(systemService, "null cannot be cast to non-null type android.net.wifi.WifiManager");
                    ((WifiManager) systemService).setWifiEnabled(true);
                    ae aeVar = ae.f3361a;
                    ae.b("CentralWatchdog", "STA apos AP: Wi-Fi religado (era do usuário antes do hotspot)", false);
                    return;
                } catch (Throwable th) {
                    ae aeVar2 = ae.f3361a;
                    ae.b("CentralWatchdog", "STA apos AP: falhou religar — " + th.getMessage(), false);
                    return;
                }
            case 2:
                CentralWatchdogService centralWatchdogService3 = this.b;
                int[] iArr2 = CentralWatchdogService.S2;
                centralWatchdogService3.R0("CarPlay em sessão");
                return;
            case 3:
                CentralWatchdogService centralWatchdogService4 = this.b;
                int[] iArr3 = CentralWatchdogService.S2;
                centralWatchdogService4.R0("sem telefone Android conectado — acessórios não iniciam projeção");
                return;
            case 4:
                CentralWatchdogService centralWatchdogService5 = this.b;
                if (CentralWatchdogService.U2) {
                    centralWatchdogService5.b0();
                    return;
                }
                return;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                CentralWatchdogService centralWatchdogService6 = this.b;
                int[] iArr4 = CentralWatchdogService.S2;
                centralWatchdogService6.R0("já projetando");
                return;
            case MusicClient.TYPE_GESTURE /* 6 */:
                CentralWatchdogService centralWatchdogService7 = this.b;
                if (centralWatchdogService7.W0) {
                    centralWatchdogService7.f811a.postDelayed(centralWatchdogService7.f816b1, centralWatchdogService7.T0);
                    return;
                }
                return;
            case PlaybackState.STATE_ERROR /* 7 */:
                CentralWatchdogService centralWatchdogService8 = this.b;
                if (CentralWatchdogService.U2) {
                    centralWatchdogService8.a0();
                    return;
                }
                return;
            case 8:
                CentralWatchdogService centralWatchdogService9 = this.b;
                int[] iArr5 = CentralWatchdogService.S2;
                centralWatchdogService9.f0();
                return;
            case 9:
                CentralWatchdogService centralWatchdogService10 = this.b;
                int[] iArr6 = CentralWatchdogService.S2;
                try {
                    Toast.makeText(centralWatchdogService10, centralWatchdogService10.getString(R.string.k_pronto_pode_conectar), 1).show();
                    return;
                } catch (Throwable unused) {
                    return;
                }
            case 10:
                CentralWatchdogService centralWatchdogService11 = this.b;
                if (CentralWatchdogService.U2 && centralWatchdogService11.f815b0 == null) {
                    new Thread(new p2(centralWatchdogService11, 19)).start();
                    return;
                }
                return;
            case 11:
                CentralWatchdogService centralWatchdogService12 = this.b;
                if (CentralWatchdogService.U2) {
                    centralWatchdogService12.Z();
                    return;
                }
                return;
            case 12:
                CentralWatchdogService centralWatchdogService13 = this.b;
                if (CentralWatchdogService.U2) {
                    centralWatchdogService13.X();
                    return;
                }
                return;
            case 13:
                CentralWatchdogService centralWatchdogService14 = this.b;
                if (CentralWatchdogService.U2) {
                    new Thread(new p2(centralWatchdogService14, i4)).start();
                    return;
                }
                return;
            case 14:
                CentralWatchdogService centralWatchdogService15 = this.b;
                if (CentralWatchdogService.U2 && centralWatchdogService15.W().getBoolean("wifi_auto_enable_on_wake", false)) {
                    centralWatchdogService15.f811a.removeCallbacks(centralWatchdogService15.X);
                    centralWatchdogService15.U = 0;
                    if (centralWatchdogService15.W().getBoolean("wifi_auto_enable_on_wake", false)) {
                        new Thread(new a2(centralWatchdogService15, str4, 8)).start();
                        return;
                    }
                    return;
                }
                return;
            case 15:
                CentralWatchdogService centralWatchdogService16 = this.b;
                if (CentralWatchdogService.U2) {
                    new Thread(new p2(centralWatchdogService16, 27)).start();
                    return;
                }
                return;
            case 16:
                CentralWatchdogService centralWatchdogService17 = this.b;
                if (CentralWatchdogService.U2) {
                    new Thread(new p2(centralWatchdogService17, 3)).start();
                    return;
                }
                return;
            case 17:
                fg fgVar = fg.f3601c;
                fg fgVar2 = fg.b;
                j4 j4Var = j4.f3748a;
                CentralWatchdogService centralWatchdogService18 = this.b;
                int[] iArr7 = CentralWatchdogService.S2;
                d8 d8Var = d8.f3494a;
                SharedPreferences sharedPreferencesW = centralWatchdogService18.W();
                try {
                    long longVersionCode = centralWatchdogService18.getPackageManager().getPackageInfo(centralWatchdogService18.getPackageName(), 0).getLongVersionCode();
                    long j3 = sharedPreferencesW.getLong("hvac_digital_last_app_vc", -1L);
                    if (j3 == longVersionCode) {
                        return;
                    }
                    sharedPreferencesW.edit().putLong("hvac_digital_last_app_vc", longVersionCode).apply();
                    s5 s5VarA = t5.a(centralWatchdogService18, "https://raw.githubusercontent.com/swimapps/Outros/main/hvacdigital.json");
                    String str5 = "companion mudou, mas não consegui trazer o novo — a cópia que funciona FICA";
                    if (s5VarA != null) {
                        long j4 = s5VarA.b;
                        long j5 = centralWatchdogService18.getSharedPreferences("tela_preta_prefs", 0).getLong("hvac_digital_vc_baixado", 0L);
                        Long lValueOf2 = j5 > 0 ? Long.valueOf(j5) : null;
                        String str6 = s5VarA.f4203d;
                        i2.g.e(str6, "pacote");
                        try {
                            lValueOf = Long.valueOf(centralWatchdogService18.getPackageManager().getPackageInfo(str6, 0).getLongVersionCode());
                        } catch (Throwable unused2) {
                            lValueOf = null;
                        }
                        d8 d8Var2 = d8.f3494a;
                        Long l3 = lValueOf;
                        if (!o2.k.e0(d8.a(8000, "pm path com.flyme.auto.systemuiplugin"), "/data/app", false)) {
                            l3 = null;
                        }
                        if (l3 == null) {
                            l3 = lValueOf2;
                        }
                        if (((l3 == null || l3.longValue() == j4) ? j4Var : j4.b) == j4Var) {
                            Log.i("HvacDigital", "invalidateCacheIfAppUpdated: nada a confirmar (baixado=" + lValueOf2 + " servidor=" + j4 + ") — não mexe");
                            return;
                        }
                        ae aeVar3 = ae.f3361a;
                        ae.b("HvacDigital", "companion do Ar Digital mudou (baixado vc=" + lValueOf2 + " != servidor vc=" + j4 + ')', false);
                        boolean zContains2 = y1.f.U(new fg[]{fgVar2, fgVar}).contains(d8Var2.e());
                        if (!d8.d(centralWatchdogService18, null, false, 10)) {
                            ae.b("HvacDigital", "companion mudou, mas não consegui trazer o novo — a cópia que funciona FICA", false);
                            return;
                        } else {
                            if (zContains2) {
                                if (sharedPreferencesW.getBoolean("hvac_digital_temp", false) || sharedPreferencesW.getBoolean("hvac_digital_batt", false)) {
                                    ae.b("HvacDigital", "companion do Ar Digital mudou — reinstalado por cima: ".concat(d8.b(centralWatchdogService18, null, null, 6) ? "OK" : "FALHOU (tenta no próximo boot)"), false);
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                    }
                    String strF = d8.f();
                    if (strF == null) {
                        Log.i("HvacDigital", "invalidateCacheIfAppUpdated: " + j3 + " -> " + longVersionCode + ", " + b5.f3382a + " — o servidor nao respondeu e o manifesto do GitHub nao existe mais; nao mexo em nada");
                        return;
                    }
                    try {
                        str = "hvac_digital_batt";
                        sharedPreferences = sharedPreferencesW;
                        try {
                            String str7 = centralWatchdogService18.getPackageManager().getApplicationInfo("com.flyme.auto.systemuiplugin", 0).sourceDir;
                            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
                            str2 = "hvac_digital_temp";
                            try {
                                FileInputStream fileInputStream = new FileInputStream(new File(str7));
                                try {
                                    try {
                                        byte[] bArr = new byte[65536];
                                        while (true) {
                                            int i5 = fileInputStream.read(bArr);
                                            if (i5 < 0) {
                                                str5 = str5;
                                                fileInputStream.close();
                                                byte[] bArrDigest = messageDigest.digest();
                                                i2.g.d(bArrDigest, "digest(...)");
                                                strB0 = y1.f.b0(bArrDigest, new n2(22));
                                                if (strB0 == null && strF.equalsIgnoreCase(strB0)) {
                                                    Log.i("HvacDigital", "invalidateCacheIfAppUpdated: " + j3 + " -> " + longVersionCode + ", plugin instalado já é o do manifesto — nada a fazer");
                                                    return;
                                                }
                                                string = o2.k.E0(d8.a(8000, "sha256sum '/data/local/hvac-digital/sysui.apk' 2>/dev/null | awk '{print $1}'")).toString();
                                                patternCompile = Pattern.compile("[0-9a-fA-F]{64}");
                                                i2.g.d(patternCompile, "compile(...)");
                                                i2.g.e(string, "input");
                                                if (!patternCompile.matcher(string).matches()) {
                                                    string = null;
                                                }
                                                if (string == null && strF.equalsIgnoreCase(string)) {
                                                    Log.i("HvacDigital", "invalidateCacheIfAppUpdated: " + j3 + " -> " + longVersionCode + ", companion sem mudança — nada a fazer");
                                                    return;
                                                }
                                                if (strB0 != null) {
                                                    ae aeVar4 = ae.f3361a;
                                                    z2 = false;
                                                    ae.b("HvacDigital", "companion do Ar Digital mudou (instalado " + o2.k.C0(8, strB0) + " != manifesto " + o2.k.C0(8, strF) + ')', false);
                                                } else {
                                                    z2 = false;
                                                }
                                                zContains = y1.f.U(new fg[]{fgVar2, fgVar}).contains(d8Var.e());
                                                if (!d8.d(centralWatchdogService18, null, z2, 10)) {
                                                    ae aeVar5 = ae.f3361a;
                                                    ae.b("HvacDigital", str5, z2);
                                                    return;
                                                }
                                                if (zContains) {
                                                    sharedPreferences2 = sharedPreferences;
                                                    if (!sharedPreferences2.getBoolean(str2, z2) || sharedPreferences2.getBoolean(str, z2)) {
                                                        zB = d8.b(centralWatchdogService18, null, null, 6);
                                                        ae aeVar6 = ae.f3361a;
                                                        if (zB) {
                                                            str3 = "OK";
                                                        } else {
                                                            str3 = "FALHOU (tenta no próximo boot)";
                                                        }
                                                        ae.b("HvacDigital", "companion do Ar Digital mudou — reinstalado por cima: ".concat(str3), z2);
                                                        return;
                                                    }
                                                }
                                                Log.i("HvacDigital", "invalidateCacheIfAppUpdated: companion mudou, mas não estava instalado — só limpou a cópia");
                                                return;
                                            }
                                            str5 = str5;
                                            try {
                                                messageDigest.update(bArr, 0, i5);
                                                str5 = str5;
                                            } catch (Throwable th2) {
                                                th = th2;
                                                Throwable th3 = th;
                                                try {
                                                    throw th3;
                                                } catch (Throwable th4) {
                                                    a1.b.p(fileInputStream, th3);
                                                    throw th4;
                                                }
                                            }
                                        }
                                    } catch (Throwable th5) {
                                        th = th5;
                                        Log.d("HvacDigital", "installedSha: " + th.getMessage());
                                        strB0 = null;
                                    }
                                } catch (Throwable th6) {
                                    th = th6;
                                    str5 = str5;
                                }
                            } catch (Throwable th7) {
                                th = th7;
                                str5 = "companion mudou, mas não consegui trazer o novo — a cópia que funciona FICA";
                            }
                        } catch (Throwable th8) {
                            th = th8;
                            str2 = "hvac_digital_temp";
                            Log.d("HvacDigital", "installedSha: " + th.getMessage());
                            strB0 = null;
                            if (strB0 == null) {
                            }
                            string = o2.k.E0(d8.a(8000, "sha256sum '/data/local/hvac-digital/sysui.apk' 2>/dev/null | awk '{print $1}'")).toString();
                            patternCompile = Pattern.compile("[0-9a-fA-F]{64}");
                            i2.g.d(patternCompile, "compile(...)");
                            i2.g.e(string, "input");
                            if (!patternCompile.matcher(string).matches()) {
                                string = null;
                            }
                            if (string == null) {
                            }
                            if (strB0 != null) {
                                ae aeVar7 = ae.f3361a;
                                z2 = false;
                                ae.b("HvacDigital", "companion do Ar Digital mudou (instalado " + o2.k.C0(8, strB0) + " != manifesto " + o2.k.C0(8, strF) + ')', false);
                            } else {
                                z2 = false;
                            }
                            zContains = y1.f.U(new fg[]{fgVar2, fgVar}).contains(d8Var.e());
                            if (!d8.d(centralWatchdogService18, null, z2, 10)) {
                                ae aeVar8 = ae.f3361a;
                                ae.b("HvacDigital", str5, z2);
                                return;
                            }
                            if (zContains) {
                                sharedPreferences2 = sharedPreferences;
                                if (!sharedPreferences2.getBoolean(str2, z2)) {
                                }
                                zB = d8.b(centralWatchdogService18, null, null, 6);
                                ae aeVar9 = ae.f3361a;
                                if (zB) {
                                    str3 = "OK";
                                } else {
                                    str3 = "FALHOU (tenta no próximo boot)";
                                }
                                ae.b("HvacDigital", "companion do Ar Digital mudou — reinstalado por cima: ".concat(str3), z2);
                                return;
                            }
                            Log.i("HvacDigital", "invalidateCacheIfAppUpdated: companion mudou, mas não estava instalado — só limpou a cópia");
                            return;
                        }
                    } catch (Throwable th9) {
                        th = th9;
                        str = "hvac_digital_batt";
                        sharedPreferences = sharedPreferencesW;
                    }
                } catch (Exception unused3) {
                    return;
                }
                break;
            case 18:
                CentralWatchdogService centralWatchdogService19 = this.b;
                if (CentralWatchdogService.U2) {
                    centralWatchdogService19.Q0();
                    centralWatchdogService19.s0();
                    centralWatchdogService19.t0();
                    return;
                }
                return;
            case 19:
                CentralWatchdogService centralWatchdogService20 = this.b;
                if (CentralWatchdogService.U2) {
                    boolean z3 = sd.f4234a;
                    sd.b(centralWatchdogService20, centralWatchdogService20.W());
                    boolean z4 = n0.f3926a;
                    n0.a(centralWatchdogService20, centralWatchdogService20.W());
                    return;
                }
                return;
            case 20:
                CentralWatchdogService centralWatchdogService21 = this.b;
                if (CentralWatchdogService.U2) {
                    VhalProviderService.c(centralWatchdogService21, true);
                    return;
                }
                return;
            case 21:
                CentralWatchdogService centralWatchdogService22 = this.b;
                if (CentralWatchdogService.U2) {
                    i2.g.e(centralWatchdogService22, "ctx");
                    try {
                        centralWatchdogService22.startForegroundService(new Intent(centralWatchdogService22, (Class<?>) PhoneSyncService.class));
                        return;
                    } catch (Exception unused4) {
                        return;
                    }
                }
                return;
            case 22:
                CentralWatchdogService centralWatchdogService23 = this.b;
                if (CentralWatchdogService.U2) {
                    centralWatchdogService23.V(1, "dívida pendente");
                    return;
                }
                return;
            case 23:
                CentralWatchdogService centralWatchdogService24 = this.b;
                if (CentralWatchdogService.U2) {
                    centralWatchdogService24.W().edit().putBoolean("boot_stable", true).apply();
                    Log.i("CentralWatchdog", "boot estável confirmado");
                    return;
                }
                return;
            case 24:
                CentralWatchdogService centralWatchdogService25 = this.b;
                if (CentralWatchdogService.U2) {
                    centralWatchdogService25.g0(0, "boot");
                    return;
                }
                return;
            case 25:
                CentralWatchdogService centralWatchdogService26 = this.b;
                if (CentralWatchdogService.U2) {
                    centralWatchdogService26.J();
                    return;
                }
                return;
            case 26:
                CentralWatchdogService centralWatchdogService27 = this.b;
                if (CentralWatchdogService.U2) {
                    centralWatchdogService27.h0("boot");
                    return;
                }
                return;
            case 27:
                CentralWatchdogService centralWatchdogService28 = this.b;
                if (CentralWatchdogService.U2) {
                    new Thread(new r0(4, centralWatchdogService28)).start();
                    return;
                }
                return;
            case 28:
                CentralWatchdogService centralWatchdogService29 = this.b;
                if (CentralWatchdogService.U2) {
                    new Thread(new a2(centralWatchdogService29, str4, i3)).start();
                    return;
                }
                return;
            default:
                CentralWatchdogService centralWatchdogService30 = this.b;
                if (CentralWatchdogService.U2) {
                    centralWatchdogService30.G("boot");
                    return;
                }
                return;
        }
    }
}
