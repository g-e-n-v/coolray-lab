package w0;

import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.MainActivity;
import com.ex.auto.MasterToggleView;
import com.ex.auto.R;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f9 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3588a;
    public final /* synthetic */ MainActivity b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f3589c;

    public /* synthetic */ f9(MainActivity mainActivity, String str, boolean z2, boolean z3) {
        this.f3588a = 0;
        this.b = mainActivity;
        this.f3589c = z2;
    }

    /* JADX WARN: Code duplicated, block: B:127:0x0362  */
    /* JADX WARN: Code duplicated, block: B:128:0x0364  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v25, types: [y1.p] */
    /* JADX WARN: Type inference failed for: r1v32, types: [java.util.ArrayList] */
    @Override // java.lang.Runnable
    public final void run() {
        boolean zC;
        boolean z2;
        Object arrayList;
        int i3 = 2;
        p4 p4Var = null;
        int i4 = 0;
        int i5 = 1;
        switch (this.f3588a) {
            case 0:
                MainActivity mainActivity = this.b;
                boolean z3 = this.f3589c;
                mainActivity.J0 = false;
                if (!mainActivity.isFinishing()) {
                    String string = mainActivity.getString(z3 ? R.string.k_applied : R.string.k_apply_failed_check_internet);
                    i2.g.b(string);
                    mainActivity.t2(string, 1 ^ (z3 ? 1 : 0)).show();
                    break;
                }
                break;
            case 1:
                MainActivity mainActivity2 = this.b;
                boolean z4 = this.f3589c;
                int i6 = MainActivity.f1002z1;
                if (!mainActivity2.isFinishing() && !mainActivity2.isDestroyed()) {
                    mainActivity2.f1014f1 = Boolean.valueOf(z4);
                    mainActivity2.O0();
                    break;
                }
                break;
            case 2:
                boolean z5 = this.f3589c;
                MainActivity mainActivity3 = this.b;
                int i7 = MainActivity.f1002z1;
                if (z5) {
                    zC = e8.c(mainActivity3);
                } else {
                    e8.A(false);
                    e8.a(10000, "cmd overlay disable --user 0 com.geely.ex2.mica.pipoverlayprobe");
                    boolean zB = e8.B();
                    boolean z6 = !zB;
                    if (!zB) {
                        e8.I(new n(8));
                    }
                    ae aeVar = ae.f3361a;
                    ae.b("PipOverlay", "PiP nativo: ".concat(!zB ? "desligado" : "NAO consegui desligar"), true);
                    zC = z6;
                }
                z4 z4VarX = e8.x();
                if (!zC) {
                    p4Var = o2.t.d0(e8.a(6000, "echo ok"), "ADB_FAIL") ? p4.f4050a : Boolean.valueOf(mainActivity3.q0()).equals(Boolean.FALSE) ? p4.b : p4.f4051c;
                }
                mainActivity3.f1045v.post(new a1.l(mainActivity3, z4VarX, zC, z5, p4Var));
                break;
            case 3:
                boolean z7 = this.f3589c;
                MainActivity mainActivity4 = this.b;
                int i8 = MainActivity.f1002z1;
                mainActivity4.H1(3000, z7 ? "mkdir -p /data/local/gesture-launcher && touch /data/local/gesture-launcher/single_step_mode && chmod 666 /data/local/gesture-launcher/single_step_mode" : "rm -f /data/local/gesture-launcher/single_step_mode");
                mainActivity4.f1045v.post(new ta(mainActivity4, o2.k.e0(mainActivity4.H1(3000, "[ -f '/data/local/gesture-launcher/single_step_mode' ] && echo AC_YES || echo AC_NO"), "AC_YES", false), z7, i3));
                break;
            case 4:
                MainActivity mainActivity5 = this.b;
                boolean z8 = this.f3589c;
                int i9 = MainActivity.f1002z1;
                String strH1 = mainActivity5.H1(20000, z8 ? "for i in 1 2 3 4 5; do iptables  -t mangle -D POSTROUTING -j TTL --ttl-set 65 2>/dev/null || break; done\nfor i in 1 2 3 4 5; do ip6tables -t mangle -D POSTROUTING -j HL  --hl-set  65 2>/dev/null || break; done\niptables  -t mangle -A POSTROUTING -j TTL --ttl-set 65 2>&1\nip6tables -t mangle -A POSTROUTING -j HL  --hl-set  65 2>&1\necho TTL_V4=$(iptables  -t mangle -S POSTROUTING | grep -c 'ttl-set 65')\necho TTL_V6=$(ip6tables -t mangle -S POSTROUTING | grep -c 'hl-set 65')" : "for i in 1 2 3 4 5; do iptables  -t mangle -D POSTROUTING -j TTL --ttl-set 65 2>/dev/null || break; done\nfor i in 1 2 3 4 5; do ip6tables -t mangle -D POSTROUTING -j HL  --hl-set  65 2>/dev/null || break; done\necho TTL_V4=$(iptables  -t mangle -S POSTROUTING | grep -c 'ttl-set 65')\necho TTL_V6=$(ip6tables -t mangle -S POSTROUTING | grep -c 'hl-set 65')");
                if (z8) {
                    i2.g.e(strH1, "saida");
                    if (e8.b(strH1, "TTL_V4") <= 0 || e8.b(strH1, "TTL_V6") <= 0) {
                        z2 = false;
                    } else {
                        z2 = true;
                    }
                } else {
                    i2.g.e(strH1, "saida");
                    if (e8.b(strH1, "TTL_V4") <= 0 || e8.b(strH1, "TTL_V6") <= 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                }
                if (z2) {
                    mainActivity5.o0().edit().putBoolean("ttl_65_ativo", z8).apply();
                }
                ae aeVar2 = ae.f3361a;
                StringBuilder sb = new StringBuilder();
                sb.append(z8 ? "ativar" : "desativar");
                sb.append(": ");
                sb.append(z2 ? "OK" : "FALHOU");
                sb.append(" — ");
                sb.append(o2.k.C0(120, o2.t.c0(strH1, "\n", " ")));
                ae.b("TTL", sb.toString(), false);
                mainActivity5.f1045v.post(new ta(mainActivity5, z2, z8, i5));
                break;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                MainActivity mainActivity6 = this.b;
                boolean z9 = this.f3589c;
                int i10 = MainActivity.f1002z1;
                if (!mainActivity6.isFinishing() && !mainActivity6.isDestroyed()) {
                    mainActivity6.X0 = Boolean.valueOf(z9);
                    mainActivity6.P0();
                    break;
                }
                break;
            case MusicClient.TYPE_GESTURE /* 6 */:
                MainActivity mainActivity7 = this.b;
                boolean z10 = this.f3589c;
                int i11 = MainActivity.f1002z1;
                if (!mainActivity7.isFinishing() && !mainActivity7.isDestroyed()) {
                    mainActivity7.f1055z0 = Boolean.valueOf(z10);
                    if (z10 != mainActivity7.o0().getBoolean("speed_auto_lock_enabled", true)) {
                        mainActivity7.o0().edit().putBoolean("speed_auto_lock_enabled", z10).apply();
                    }
                    if (mainActivity7.S0[1]) {
                        ((MasterToggleView) mainActivity7.findViewById(R.id.masterToolsSecuritySpeedLockSwitch)).setActive(z10);
                    }
                    break;
                }
                break;
            case PlaybackState.STATE_ERROR /* 7 */:
                MainActivity mainActivity8 = this.b;
                boolean z11 = this.f3589c;
                mainActivity8.f1018h1 = false;
                if (!mainActivity8.isFinishing()) {
                    String string2 = z11 ? mainActivity8.getString(R.string.k_removed) : mainActivity8.getString(R.string.k_restart_car_for_oem);
                    i2.g.b(string2);
                    mainActivity8.t2(string2, 0);
                    mainActivity8.m1(true);
                    break;
                }
                break;
            case 8:
                MainActivity mainActivity9 = this.b;
                mainActivity9.x0 = this.f3589c;
                mainActivity9.s1();
                break;
            case 9:
                MainActivity mainActivity10 = this.b;
                boolean z12 = this.f3589c;
                try {
                    String strJ2 = MainActivity.j2("/data/local/tmp/sons");
                    String strJ3 = MainActivity.j2("/data/local/tmp");
                    String strV = z12 ? o2.m.V("\n                        for wav in " + strJ3 + "/*.wav " + strJ3 + "/*.WAV; do\n                          [ -f \"$wav\" ] || continue\n                          base=${wav##*/}\n                          base=$(echo \"$base\" | tr ' ' '_')\n                          dest=" + strJ2 + "/\"$base\"\n                          mv -f \"$wav\" \"$dest\" 2>&1 || true\n                          chown root:root \"$dest\" 2>/dev/null || true\n                          chmod 644 \"$dest\" 2>/dev/null || true\n                          restorecon -v \"$dest\" 2>/dev/null || true\n                        done\n                        for dlroot in " + MainActivity.j2("/sdcard/Download") + ' ' + MainActivity.j2("/storage/emulated/0/Download") + "; do\n                          [ -d \"$dlroot\" ] || continue\n                          for wav in \"$dlroot\"/*.wav \"$dlroot\"/*.WAV; do\n                            [ -f \"$wav\" ] || continue\n                            base=${wav##*/}\n                            base=$(echo \"$base\" | tr ' ' '_')\n                            dest=" + strJ2 + "/\"$base\"\n                            cp -f \"$wav\" \"$dest\" 2>&1 || true\n                            chown root:root \"$dest\" 2>/dev/null || true\n                            chmod 644 \"$dest\" 2>/dev/null || true\n                            restorecon -v \"$dest\" 2>/dev/null || true\n                          done\n                        done\n                        ") : "";
                    String strV2 = o2.m.V("\n                    for _sw in " + strJ2 + "/*.wav " + strJ2 + "/*.WAV; do\n                      [ -f \"$_sw\" ] || continue\n                      _sb=${_sw##*/}\n                      _sc=$(echo \"$_sb\" | tr ' ' '_')\n                      [ \"$_sc\" = \"$_sb\" ] && continue\n                      mv -f \"$_sw\" " + strJ2 + "/\"$_sc\" 2>&1 || true\n                      chown root:root " + strJ2 + "/\"$_sc\" 2>/dev/null || true\n                      chmod 644 " + strJ2 + "/\"$_sc\" 2>/dev/null || true\n                    done\n                ");
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(e8.v());
                    sb2.append('\n');
                    if (strV.length() > 0) {
                        sb2.append(strV);
                        sb2.append('\n');
                    }
                    sb2.append(strV2);
                    sb2.append('\n');
                    sb2.append("ls -1 " + strJ2 + "/*.wav 2>/dev/null || true");
                    sb2.append('\n');
                    String string3 = sb2.toString();
                    i2.g.d(string3, "toString(...)");
                    List listO0 = o2.k.o0(mainActivity10.H1(z12 ? 35000 : 12000, string3));
                    ArrayList arrayList2 = new ArrayList(y1.i.X(listO0));
                    Iterator it = listO0.iterator();
                    while (it.hasNext()) {
                        arrayList2.add(o2.k.E0((String) it.next()).toString());
                    }
                    arrayList = new ArrayList();
                    int size = arrayList2.size();
                    while (i4 < size) {
                        Object obj = arrayList2.get(i4);
                        i4++;
                        String str = (String) obj;
                        if (o2.t.d0(str, "/data/local/tmp/sons") && o2.t.Z(str, ".wav", true)) {
                            arrayList.add(obj);
                        }
                    }
                } catch (Exception unused) {
                    arrayList = y1.p.f4663a;
                }
                mainActivity10.f1045v.post(new a1.i(mainActivity10, 25, arrayList));
                break;
            case 10:
                MainActivity mainActivity11 = this.b;
                boolean z13 = this.f3589c;
                mainActivity11.Z0 = false;
                if (!mainActivity11.isFinishing()) {
                    String string4 = mainActivity11.getString(z13 ? R.string.k_rvc_back_to_normal : R.string.k_rvc_disabled_restart_if_needed);
                    i2.g.b(string4);
                    mainActivity11.t2(string4, 0);
                    mainActivity11.w1(true);
                    break;
                }
                break;
            case 11:
                MainActivity mainActivity12 = this.b;
                boolean z14 = this.f3589c;
                int i12 = MainActivity.f1002z1;
                if (!mainActivity12.isFinishing() && !mainActivity12.isDestroyed()) {
                    mainActivity12.K0 = Boolean.valueOf(z14);
                    mainActivity12.r1();
                    break;
                }
                break;
            case 12:
                MainActivity mainActivity13 = this.b;
                boolean z15 = this.f3589c;
                int i13 = MainActivity.f1002z1;
                mainActivity13.A();
                if (!z15) {
                    MainActivity.K(mainActivity13, 3);
                }
                break;
            case 13:
                MainActivity mainActivity14 = this.b;
                boolean z16 = this.f3589c;
                mainActivity14.Z0 = false;
                if (!mainActivity14.isFinishing()) {
                    mainActivity14.X0 = Boolean.valueOf(z16);
                    mainActivity14.P0();
                    mainActivity14.w1(true);
                    if (!z16) {
                        mainActivity14.o0().edit().putBoolean("rvc_black_bg", false).apply();
                        mainActivity14.P0();
                        String str2 = eg.f3556a;
                        String str3 = eg.b;
                        e.h hVar = new e.h(mainActivity14);
                        String string5 = mainActivity14.getString(R.string.k_error_occurred_title);
                        e.d dVar = (e.d) hVar.b;
                        dVar.f1554d = string5;
                        dVar.f = mainActivity14.getString(R.string.k_error_report_prompt, "Falha ao aplicar o fundo preto na ré");
                        hVar.c(mainActivity14.getString(R.string.common_not_now), null);
                        hVar.f(mainActivity14.getString(R.string.k_send_btn), new m9(mainActivity14, str3, i3));
                        hVar.h();
                    } else {
                        androidx.activity.result.b.n(R.string.k_rvc_black_bg_applied, 0, mainActivity14, "getString(...)");
                    }
                    break;
                }
                break;
            case 14:
                MainActivity mainActivity15 = this.b;
                boolean z17 = this.f3589c;
                int i14 = MainActivity.f1002z1;
                if (!mainActivity15.isFinishing()) {
                    androidx.activity.result.b.n(z17 ? R.string.k_dep_gestures_updated : R.string.k_dep_gestures_update_failed, 1, mainActivity15, "getString(...)");
                    break;
                }
                break;
            case 15:
                MainActivity mainActivity16 = this.b;
                boolean z18 = this.f3589c;
                int i15 = MainActivity.f1002z1;
                if (!mainActivity16.isFinishing()) {
                    String string6 = z18 ? mainActivity16.getString(R.string.k_removed) : mainActivity16.getString(R.string.k_restart_car_for_oem);
                    i2.g.b(string6);
                    mainActivity16.t2(string6, 0);
                }
                break;
            default:
                MainActivity mainActivity17 = this.b;
                boolean z19 = this.f3589c;
                mainActivity17.f1018h1 = false;
                if (!mainActivity17.isFinishing()) {
                    if (z19) {
                        androidx.activity.result.b.n(R.string.xml_gestos_status_concluido, 1, mainActivity17, "getString(...)");
                    } else {
                        String string7 = mainActivity17.getString(R.string.xml_gestos_status_falha);
                        i2.g.d(string7, "getString(...)");
                        mainActivity17.t2(string7, 1);
                        mainActivity17.o0().edit().putBoolean("gestures_enabled", false).apply();
                    }
                    mainActivity17.f1014f1 = Boolean.valueOf(z19);
                    mainActivity17.l1();
                    mainActivity17.m1(true);
                    break;
                }
                break;
        }
    }

    public /* synthetic */ f9(MainActivity mainActivity, boolean z2, int i3) {
        this.f3588a = i3;
        this.b = mainActivity;
        this.f3589c = z2;
    }

    public /* synthetic */ f9(boolean z2, MainActivity mainActivity, int i3) {
        this.f3588a = i3;
        this.f3589c = z2;
        this.b = mainActivity;
    }
}
