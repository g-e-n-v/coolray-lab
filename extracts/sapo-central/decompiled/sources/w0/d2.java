package w0;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.os.SystemClock;
import android.util.Log;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.BlackoutFloaterService;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.QuickAccessFloaterService;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d2 implements h2.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3485a;
    public final /* synthetic */ CentralWatchdogService b;

    public /* synthetic */ d2(CentralWatchdogService centralWatchdogService, int i3) {
        this.f3485a = i3;
        this.b = centralWatchdogService;
    }

    @Override // h2.a
    public final Object a() throws InterruptedException, IOException {
        String str;
        String str2;
        Integer numW;
        ComponentName componentName = null;
        int i3 = 2;
        switch (this.f3485a) {
            case 0:
                CentralWatchdogService centralWatchdogService = this.b;
                int[] iArr = CentralWatchdogService.S2;
                centralWatchdogService.w0("despertar");
                return x1.e.f4647c;
            case 1:
                this.b.f814a2 = false;
                ae aeVar = ae.f3361a;
                ae.b("CentralWatchdog", "despertar: sessão do AA descartada (plano)", false);
                return x1.e.f4647c;
            case 2:
                CentralWatchdogService centralWatchdogService2 = this.b;
                int[] iArr2 = CentralWatchdogService.S2;
                n3.a(new d2(centralWatchdogService2, 8));
                return x1.e.f4647c;
            case 3:
                CentralWatchdogService centralWatchdogService3 = this.b;
                int[] iArr3 = CentralWatchdogService.S2;
                centralWatchdogService3.h0("despertar");
                return x1.e.f4647c;
            case 4:
                CentralWatchdogService centralWatchdogService4 = this.b;
                int[] iArr4 = CentralWatchdogService.S2;
                centralWatchdogService4.g0(0, "despertar");
                return x1.e.f4647c;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                CentralWatchdogService centralWatchdogService5 = this.b;
                int[] iArr5 = CentralWatchdogService.S2;
                centralWatchdogService5.getClass();
                new Thread(new a2(centralWatchdogService5, "despertar", 6)).start();
                return x1.e.f4647c;
            case MusicClient.TYPE_GESTURE /* 6 */:
                CentralWatchdogService centralWatchdogService6 = this.b;
                int[] iArr6 = CentralWatchdogService.S2;
                centralWatchdogService6.G("despertar");
                return x1.e.f4647c;
            case PlaybackState.STATE_ERROR /* 7 */:
                CentralWatchdogService centralWatchdogService7 = this.b;
                int[] iArr7 = CentralWatchdogService.S2;
                if (centralWatchdogService7.r()) {
                    centralWatchdogService7.L();
                }
                return x1.e.f4647c;
            case 8:
                CentralWatchdogService centralWatchdogService8 = this.b;
                int[] iArr8 = CentralWatchdogService.S2;
                centralWatchdogService8.w0("despertar");
                return x1.e.f4647c;
            case 9:
                CentralWatchdogService centralWatchdogService9 = this.b;
                int[] iArr9 = CentralWatchdogService.S2;
                try {
                    String strX = m.x("D=$(ls -1dt /log/mtklog/mobilelog/APLog_* 2>/dev/null | sed -n 2p)\nif [ -z \"$D\" ]; then echo SEM_SESSAO_ANTERIOR; exit 0; fi\necho \"SESSAO=$D\"\necho \"SHUTDOWNTHREAD=$(grep -ah -c ShutdownThread $D/*.curf 2>/dev/null | awk '{s+=$1} END{print s+0}')\"\nM=$(ls -1t $D/main_log_*.curf 2>/dev/null | head -1)\necho \"MAIN=$M\"\nF=$(awk -F'[ :.]' 'NF>4 {s=$2*3600+$3*60+$4; if(p!=\"\" && (s-p>60||p-s>60)) {printf \"%d %02d:%02d:%02d %02d:%02d:%02d %+d\\n\", NR, int(p/3600),int(p%3600/60),p%60, $2,$3,$4, s-p; exit} p=s}' \"$M\" 2>/dev/null)\nif [ -n \"$F\" ]; then\n  set -- $F\n  echo \"FRONTEIRA: linha $1  $2 -> $3  ($4 s)\"\n  echo \"--- 40 linhas ANTES da fronteira (a morte) ---\"\n  sed -n \"$(($1-40)),$(($1-1))p\" \"$M\" 2>/dev/null\n  echo \"--- 10 linhas DEPOIS (a volta) ---\"\n  sed -n \"$1,$(($1+9))p\" \"$M\" 2>/dev/null\nelse\n  echo \"FRONTEIRA: nao detectada (sessao sem salto de relogio)\"\n  echo \"--- 60 linhas finais ---\"\n  tail -n 60 \"$M\" 2>/dev/null\nfi\necho \"--- ar digital / gestos / volante: instalacao, bind e rotulos ---\"\ngrep -ahE 'systemuiplugin|hvac-digital|INSTALL_FAILED|Failed to install|aplicarArDigital|aplicarGestos' \"$M\" 2>/dev/null | tail -25\necho \"--- negacoes de SELinux tocando os NOSSOS caminhos (SELinux=Permissive: registrado, nao aplicado) ---\"\ngrep -ah 'avc: denied' \"$M\" 2>/dev/null | grep -E 'hvac-digital|systemuiplugin|com.ex.auto|/data/local' | tail -15\necho \"--- o que gritou na sessao ---\"\ngrep -ahE 'FATAL EXCEPTION|ANR in|WTF|has died|Process com.ex.auto' \"$M\" 2>/dev/null | tail -30", 25000, null, new n(0));
                    boolean z2 = !o2.k.e0(strX, "SEM_SESSAO_ANTERIOR", false) && o2.k.e0(strX, "SESSAO=", false);
                    Pattern patternCompile = Pattern.compile("SHUTDOWNTHREAD=(\\d+)");
                    i2.g.d(patternCompile, "compile(...)");
                    Matcher matcher = patternCompile.matcher(strX);
                    i2.g.d(matcher, "matcher(...)");
                    o2.e eVarB = k1.a.b(matcher, 0, strX);
                    int iIntValue = (eVarB == null || (str2 = (String) ((o2.d) eVarB.a()).get(1)) == null || (numW = o2.s.W(str2)) == null) ? 0 : numW.intValue();
                    tf tfVar = z2 ? iIntValue > 0 ? tf.f4284a : tf.b : tf.f4285c;
                    StringBuilder sb = new StringBuilder("== recorte do log do sistema (MTKLogger) — gerado no arranque ==\n");
                    StringBuilder sb2 = new StringBuilder("VEREDITO: ");
                    int iOrdinal = tfVar.ordinal();
                    if (iOrdinal == 0) {
                        str = "a sessao anterior foi DESLIGADA de forma ordenada (alguem pediu: botao, adb ou celular)";
                    } else if (iOrdinal == 1) {
                        str = "a sessao anterior SUMIU sem sequencia de desligamento (corte de energia / chave)";
                    } else {
                        if (iOrdinal != 2) {
                            throw new androidx.fragment.app.q();
                        }
                        str = "nao havia sessao anterior legivel";
                    }
                    sb2.append(str);
                    sb2.append('\n');
                    sb.append(sb2.toString());
                    sb.append("ShutdownThread encontrado " + iIntValue + "x ");
                    sb.append("(e o caminho unico do adb reboot, do botao da tela e do comando do celular)\nATENCAO: sys.boot.reason pode estar VELHO neste aparelho (STR/IPO). Este veredito nao depende dele.\n\n");
                    String string = sb.toString();
                    i2.g.d(string, "toString(...)");
                    String strE = e8.E(string.concat(strX));
                    File externalFilesDir = centralWatchdogService9.getExternalFilesDir(null);
                    if (externalFilesDir == null) {
                        externalFilesDir = centralWatchdogService9.getFilesDir();
                    }
                    f2.d.i0(new File(externalFilesDir, "central_logtail.log"), strE);
                    ae aeVar2 = ae.f3361a;
                    StringBuilder sb3 = new StringBuilder("recorte do log do sistema: ");
                    sb3.append(tfVar);
                    sb3.append(" (");
                    byte[] bytes = strE.getBytes(o2.a.f2622a);
                    i2.g.d(bytes, "getBytes(...)");
                    sb3.append(bytes.length / 1024);
                    sb3.append(" KB)");
                    ae.b("RecorteDeLog", sb3.toString(), false);
                } catch (Throwable th) {
                    androidx.activity.result.b.s(th, new StringBuilder("não consegui recortar o log do sistema: "), "RecorteDeLog");
                }
                return x1.e.f4647c;
            case 10:
                CentralWatchdogService centralWatchdogService10 = this.b;
                int[] iArr10 = CentralWatchdogService.S2;
                n nVar = new n(centralWatchdogService10, 2);
                Long lY = o2.s.Y(o2.k.E0((String) nVar.b("stat -c %s " + e8.O("/data/local/tmp/fixes/desligamento.log") + " 2>/dev/null", 6000)).toString());
                if (lY != null && lY.longValue() != 0) {
                    nVar.b("mv " + e8.O("/data/local/tmp/fixes/desligamento.log") + ' ' + e8.O("/data/local/tmp/fixes/desligamento_anterior.log") + " 2>/dev/null", 6000);
                    StringBuilder sb4 = new StringBuilder("grep -aiE 'ShutdownThread|Shutdown sequence|waiting for|timed out|Timeout' ");
                    sb4.append(e8.O("/data/local/tmp/fixes/desligamento_anterior.log"));
                    sb4.append(" 2>/dev/null | tail -n 12");
                    String string2 = o2.k.E0((String) nVar.b(sb4.toString(), 10000)).toString();
                    String string3 = o2.k.E0((String) nVar.b("tail -n 6 " + e8.O("/data/local/tmp/fixes/desligamento_anterior.log") + " 2>/dev/null", 8000)).toString();
                    ae aeVar3 = ae.f3361a;
                    ae.b("ArmadilhaDeslig", "captura do desligamento anterior: " + (lY.longValue() / ((long) 1024)) + " KB em /data/local/tmp/fixes/desligamento_anterior.log", true);
                    if (o2.k.m0(string2)) {
                        ae.b("ArmadilhaDeslig", "  desligamento | nenhuma linha de ShutdownThread/espera — o tail se perdeu ou a queda nao passou pelo caminho ordenado", false);
                    } else {
                        for (String str3 : y1.g.k0(o2.k.o0(string2), 12)) {
                            ae aeVar4 = ae.f3361a;
                            ae.b("ArmadilhaDeslig", "  desligamento | ".concat(o2.k.C0(160, str3)), false);
                        }
                    }
                    for (String str4 : y1.g.k0(o2.k.o0(string3), 6)) {
                        ae aeVar5 = ae.f3361a;
                        ae.b("ArmadilhaDeslig", "  ultima linha | ".concat(o2.k.C0(160, str4)), false);
                    }
                }
                return x1.e.f4647c;
            case 11:
                CentralWatchdogService centralWatchdogService11 = this.b;
                int[] iArr11 = CentralWatchdogService.S2;
                return centralWatchdogService11.getSharedPreferences("tela_preta_prefs", 0);
            case 12:
                CentralWatchdogService centralWatchdogService12 = this.b;
                centralWatchdogService12.f811a.post(new p2(centralWatchdogService12, 25));
                return x1.e.f4647c;
            case 13:
                CentralWatchdogService centralWatchdogService13 = this.b;
                int i4 = centralWatchdogService13.f825d2.get();
                try {
                    Object systemService = centralWatchdogService13.getSystemService("activity");
                    i2.g.c(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
                    List<ActivityManager.RunningTaskInfo> runningTasks = ((ActivityManager) systemService).getRunningTasks(1);
                    i2.g.d(runningTasks, "getRunningTasks(...)");
                    ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) y1.g.b0(runningTasks);
                    if (runningTaskInfo != null) {
                        componentName = runningTaskInfo.topActivity;
                    }
                    break;
                } catch (Exception unused) {
                }
                centralWatchdogService13.f811a.post(new v(i4, centralWatchdogService13, componentName, i3));
                return x1.e.f4647c;
            case 14:
                CentralWatchdogService centralWatchdogService14 = this.b;
                int[] iArr12 = CentralWatchdogService.S2;
                if (!centralWatchdogService14.c1()) {
                    centralWatchdogService14.V = false;
                    if (centralWatchdogService14.N0 != l4.f3830c) {
                        centralWatchdogService14.f811a.postDelayed(new p2(centralWatchdogService14, 20), centralWatchdogService14.E1);
                    }
                }
                if (centralWatchdogService14.c1()) {
                    l4 l4Var = centralWatchdogService14.N0;
                    centralWatchdogService14.N0 = centralWatchdogService14.V ? l4.b : l4.f3829a;
                    if (l4Var != centralWatchdogService14.N0) {
                        Log.i("CentralWatchdog", "dono do WiFi: " + l4Var + " -> " + centralWatchdogService14.N0 + " (STA subiu)");
                    }
                    long j3 = centralWatchdogService14.L0;
                    centralWatchdogService14.L0 = SystemClock.elapsedRealtime();
                    if (j3 == 0 || centralWatchdogService14.L0 - j3 > 30000) {
                        Log.i("CentralWatchdog", "STA ligada carimbada em " + centralWatchdogService14.L0 + "ms (elapsedRealtime)");
                    }
                }
                return x1.e.f4647c;
            case 15:
                CentralWatchdogService centralWatchdogService15 = this.b;
                int[] iArr13 = CentralWatchdogService.S2;
                centralWatchdogService15.J();
                return x1.e.f4647c;
            case 16:
                CentralWatchdogService centralWatchdogService16 = this.b;
                int[] iArr14 = CentralWatchdogService.S2;
                centralWatchdogService16.a(true);
                return x1.e.f4647c;
            case 17:
                CentralWatchdogService centralWatchdogService17 = this.b;
                boolean zQ = m.q(centralWatchdogService17);
                int[] iArr15 = CentralWatchdogService.S2;
                int i5 = QuickAccessFloaterService.t0;
                if (!QuickAccessFloaterService.f1133z0 && !BlackoutFloaterService.f796q && !centralWatchdogService17.E0) {
                    if (centralWatchdogService17.f812a0 == null || Boolean.valueOf(zQ).equals(centralWatchdogService17.f812a0)) {
                        m.z(centralWatchdogService17, centralWatchdogService17.W());
                    } else {
                        m.w(centralWatchdogService17, centralWatchdogService17.W());
                    }
                }
                centralWatchdogService17.f812a0 = Boolean.valueOf(zQ);
                return x1.e.f4647c;
            default:
                CentralWatchdogService centralWatchdogService18 = this.b;
                int[] iArr16 = CentralWatchdogService.S2;
                centralWatchdogService18.w0("conexão BT");
                return x1.e.f4647c;
        }
    }
}
