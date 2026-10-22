package w0;

import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.ProxyInfo;
import android.util.Log;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.CentralWatchdogService;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class i2 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3697a;
    public final /* synthetic */ CentralWatchdogService b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f3698c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f3699d;

    public /* synthetic */ i2(int i3, CentralWatchdogService centralWatchdogService, String str, boolean z2) {
        this.f3697a = 3;
        this.b = centralWatchdogService;
        this.f3698c = str;
        this.f3699d = i3;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // java.lang.Runnable
    public final void run() {
        String str;
        boolean z2;
        int iIntValue;
        switch (this.f3697a) {
            case 0:
                final String str2 = this.f3698c;
                final CentralWatchdogService centralWatchdogService = this.b;
                final int i3 = this.f3699d;
                int[] iArr = CentralWatchdogService.S2;
                String string = "verificacao";
                try {
                    try {
                        try {
                            synchronized (t1.f4251e) {
                                try {
                                    if (CentralWatchdogService.q0(centralWatchdogService, str2, i3)) {
                                        final kotlinx.coroutines.scheduling.h hVar = new kotlinx.coroutines.scheduling.h(5555);
                                        try {
                                            String strB = hVar.b(10000, o2.m.V("\n        R=$(ip rule show 2>/dev/null)\nTBOX_TABLE=$(printf '%s\\n' \"$R\" | awk '/(^|[[:space:]])oif tbox0([[:space:]]|$)/ {for(i=1;i<=NF;i++)if($i==\"lookup\"){print $(i+1);exit}}')\n[ -n \"$TBOX_TABLE\" ] || TBOX_TABLE=tbox0\nTBOX_IMPLICIT=$(printf '%s\\n' \"$R\" | awk -v tab=\"$TBOX_TABLE\" '/^19[0-9][0-9][0-9]:/ {m=\"\";t=\"\";for(i=1;i<=NF;i++){if($i==\"fwmark\")m=$(i+1);if($i==\"lookup\")t=$(i+1)}if(t==tab && m!=\"\"){print m;exit}}')\nTBOX_REF=$(printf '%s\\n' \"$R\" | awk -v tab=\"$TBOX_TABLE\" '/^13[0-9][0-9][0-9]:/ {m=\"\";t=\"\";for(i=1;i<=NF;i++){if($i==\"fwmark\")m=$(i+1);if($i==\"lookup\")t=$(i+1)}if(t==tab && m!=\"\"){print m;exit}}')\n# Sem tbox0, a marca fixa 100 pode divergir da rede que o netd usa para DNS/socket.\n# A rede padrão pode continuar registrada após a STA cair; seguir seu netId real.\nif [ -z \"$TBOX_IMPLICIT\" ]; then\n  ROUTE_DEFAULT=$(dumpsys netd 2>/dev/null | sed -n 's/^[[:space:]]*Default network: \\([0-9][0-9]*\\).*/\\1/p')\n  case \"$ROUTE_DEFAULT\" in\n    ''|*[!0-9]*) ;;\n    *) if [ \"$ROUTE_DEFAULT\" -gt 0 ] && [ \"$ROUTE_DEFAULT\" -le 65535 ]; then\n         TBOX_IMPLICIT=$(printf '0x%x/0x1ffff' \"$ROUTE_DEFAULT\")\n       fi ;;\n  esac\nfi\n        D=$(ip route show table 200 2>/dev/null | grep '^default ')\n        echo \"GATEWAY=$(printf '%s\\n' \"$D\" | awk '{for(i=1;i<=NF;i++)if($i==\"via\"){print $(i+1);exit}}')\"\n        echo \"INTERFACE=$(printf '%s\\n' \"$D\" | awk '{for(i=1;i<=NF;i++)if($i==\"dev\"){print $(i+1);exit}}')\"\n        ip link show dev ap0 2>/dev/null | grep -qE '<([^>]*,)?UP(,|>)' && echo AP_UP=sim || echo AP_UP=nao\n        echo \"REGRAS_VALIDAS=$(printf '%s\\n' \"$R\" | awk '/^(12500|18500|21000):/ && /fwmark/ && /iif lo([[:space:]]|$)/ && /lookup 200([[:space:]]|$)/ {seen[$1]=1} END{for(p in seen)n++; print n+0}')\"\n        echo \"DNS_DEFAULT_NETID=$(dumpsys netd 2>/dev/null | sed -n 's/^[[:space:]]*Default network: \\([0-9][0-9]*\\).*/\\1/p')\"\n        echo \"NETD_PID=$(pidof netd)\"\n        echo \"TBOX_TABLE=$TBOX_TABLE\"\n        echo \"TBOX_IMPLICIT=$TBOX_IMPLICIT\"\n        echo \"OUR_18500=$(printf '%s\\n' \"$R\" | awk '/^18500:.*fwmark/{print $5; exit}')\"\n        echo \"OUR_21000=$(printf '%s\\n' \"$R\" | awk '/^21000:.*fwmark/{print $5; exit}')\"\n        echo \"TBOX_REF=$TBOX_REF\"\n        echo \"OUR_12500=$(printf '%s\\n' \"$R\" | awk '/^12500:.*fwmark/{print $5; exit}')\"\n        echo \"REGRAS=$(printf '%s\\n' \"$R\" | grep -cE '^(12500|18500|21000):')\"\n        [ -n \"$D\" ] && echo \"ROTA_PADRAO=sim\" || echo \"ROTA_PADRAO=nao\"\n    "));
                                            i2.g.b(strB);
                                            c4 c4VarE = t1.e(strB, str2);
                                            c4 c4Var = c4.f3426c;
                                            if (c4VarE == c4Var && CentralWatchdogService.q0(centralWatchdogService, str2, i3)) {
                                                str = "verificacao";
                                                try {
                                                    String strD = t1.d(str2, centralWatchdogService.W().getBoolean("auto_proxy_enabled", false));
                                                    StringBuilder sb = new StringBuilder("aplicacao bytes=");
                                                    byte[] bytes = strD.getBytes(o2.a.f2622a);
                                                    i2.g.d(bytes, "getBytes(...)");
                                                    sb.append(bytes.length);
                                                    string = sb.toString();
                                                    str = string;
                                                    String strX = m.x(strD, 30000, null, new h2.p() { // from class: w0.m2
                                                        @Override // h2.p
                                                        public final Object b(Object obj, Object obj2) throws IOException {
                                                            String str3 = (String) obj;
                                                            int iIntValue2 = ((Integer) obj2).intValue();
                                                            int[] iArr2 = CentralWatchdogService.S2;
                                                            i2.g.e(str3, "comando");
                                                            if (!CentralWatchdogService.q0(centralWatchdogService, str2, i3)) {
                                                                throw new IOException("sessao de rede mudou durante o envio");
                                                            }
                                                            String strB2 = hVar.b(iIntValue2, str3);
                                                            i2.g.d(strB2, "runShell(...)");
                                                            return strB2;
                                                        }
                                                    });
                                                    c4VarE = t1.e(strX, str2);
                                                    if (c4VarE == c4Var) {
                                                        ae aeVar = ae.f3361a;
                                                        try {
                                                            ae.b("CentralWatchdog", "AutoRota: saída=".concat(o2.t.c0(o2.k.D0(1600, strX), "\n", " | ")), false);
                                                        } catch (Throwable th) {
                                                            th = th;
                                                            throw th;
                                                        }
                                                    }
                                                    ae aeVar2 = ae.f3361a;
                                                    ae.b("CentralWatchdog", "AutoRota: aplicação=" + c4VarE + " telefone=" + str2 + " tabelaTbox=" + t1.n(strX, "TBOX_TABLE") + " marca=" + t1.n(strX, "TBOX_IMPLICIT") + " gateway=" + t1.n(strX, "GATEWAY"), false);
                                                    if (CentralWatchdogService.q0(centralWatchdogService, str2, i3)) {
                                                        centralWatchdogService.sendBroadcast(new Intent("com.ex.auto.AUTO_ROUTE_APPLIED").putExtra("ip", str2).putExtra("ok", c4VarE != c4Var).putExtra("veredito", c4VarE.name()).putExtra("result", o2.k.D0(600, strX)));
                                                    }
                                                } catch (Throwable th2) {
                                                    th = th2;
                                                }
                                            } else {
                                                str = "verificacao";
                                            }
                                            try {
                                                String strE0 = y1.g.e0(y1.f.U(new String[]{str2, t1.n(strB, "NETD_PID"), t1.n(strB, "DNS_DEFAULT_NETID"), t1.n(strB, "TBOX_IMPLICIT")}), ":", null, 62);
                                                if (c4VarE == c4Var || !CentralWatchdogService.q0(centralWatchdogService, str2, i3) || strE0.equals(centralWatchdogService.f819c0)) {
                                                    z2 = true;
                                                } else {
                                                    z2 = true;
                                                    String strX2 = m.x(o2.m.V("\n        R=$(ip rule show 2>/dev/null)\nTBOX_TABLE=$(printf '%s\\n' \"$R\" | awk '/(^|[[:space:]])oif tbox0([[:space:]]|$)/ {for(i=1;i<=NF;i++)if($i==\"lookup\"){print $(i+1);exit}}')\n[ -n \"$TBOX_TABLE\" ] || TBOX_TABLE=tbox0\nTBOX_IMPLICIT=$(printf '%s\\n' \"$R\" | awk -v tab=\"$TBOX_TABLE\" '/^19[0-9][0-9][0-9]:/ {m=\"\";t=\"\";for(i=1;i<=NF;i++){if($i==\"fwmark\")m=$(i+1);if($i==\"lookup\")t=$(i+1)}if(t==tab && m!=\"\"){print m;exit}}')\nTBOX_REF=$(printf '%s\\n' \"$R\" | awk -v tab=\"$TBOX_TABLE\" '/^13[0-9][0-9][0-9]:/ {m=\"\";t=\"\";for(i=1;i<=NF;i++){if($i==\"fwmark\")m=$(i+1);if($i==\"lookup\")t=$(i+1)}if(t==tab && m!=\"\"){print m;exit}}')\n# Sem tbox0, a marca fixa 100 pode divergir da rede que o netd usa para DNS/socket.\n# A rede padrão pode continuar registrada após a STA cair; seguir seu netId real.\nif [ -z \"$TBOX_IMPLICIT\" ]; then\n  ROUTE_DEFAULT=$(dumpsys netd 2>/dev/null | sed -n 's/^[[:space:]]*Default network: \\([0-9][0-9]*\\).*/\\1/p')\n  case \"$ROUTE_DEFAULT\" in\n    ''|*[!0-9]*) ;;\n    *) if [ \"$ROUTE_DEFAULT\" -gt 0 ] && [ \"$ROUTE_DEFAULT\" -le 65535 ]; then\n         TBOX_IMPLICIT=$(printf '0x%x/0x1ffff' \"$ROUTE_DEFAULT\")\n       fi ;;\n  esac\nfi\n        DNS_MARK=\"$TBOX_IMPLICIT\"\n        [ -n \"$DNS_MARK\" ] || DNS_MARK=0x64/0x1ffff\n        NETID=$(printf '%d' \"${DNS_MARK%/*}\")\n        DNS_DEFAULT=$(dumpsys netd 2>/dev/null | sed -n 's/^[[:space:]]*Default network: \\([0-9][0-9]*\\).*/\\1/p')\nDNS_RC=sim\nsetprop net.dns1 8.8.8.8; setprop net.dns2 8.8.4.4\nDNS_OUT=$(ndc resolver setnetdns \"$NETID\" '' 8.8.8.8 8.8.4.4 2>&1)\necho \"$DNS_OUT\"\ncase \"$DNS_OUT\" in \"200 \"*) ;; *) DNS_RC=nao ;; esac\nif [ \"$DNS_DEFAULT\" = 0 ]; then\n  DNS_OUT=$(ndc resolver setnetdns 0 '' 8.8.8.8 8.8.4.4 2>&1)\n  echo \"$DNS_OUT\"\n  case \"$DNS_OUT\" in\n    \"200 \"*) settings put global exsapo_route_dns_zero_owned 1 ;;\n    *) DNS_RC=nao ;;\n  esac\nfi\necho \"ROTA_DNS_OK=$DNS_RC\"\necho \"DNS_DEFAULT_NETID=$DNS_DEFAULT\"\n    "), 20000, null, new e0.b(1, hVar));
                                                    if (CentralWatchdogService.q0(centralWatchdogService, str2, i3) && i2.g.a(t1.n(strX2, "ROTA_DNS_OK"), "sim")) {
                                                        centralWatchdogService.f819c0 = strE0;
                                                    }
                                                    ae aeVar3 = ae.f3361a;
                                                    ae.b("CentralWatchdog", "AutoRota: DNS default=" + t1.n(strX2, "DNS_DEFAULT_NETID") + " resultado=" + t1.n(strX2, "ROTA_DNS_OK"), false);
                                                }
                                                centralWatchdogService.f811a.post(new i2(i3, centralWatchdogService, str2, c4VarE != c4Var ? z2 : false));
                                            } catch (Throwable th3) {
                                                th = th3;
                                                throw th;
                                            }
                                        } catch (Throwable th4) {
                                            th = th4;
                                            str = "verificacao";
                                        }
                                        break;
                                    }
                                    centralWatchdogService.f830f0.set(false);
                                    return;
                                } catch (Throwable th5) {
                                    th = th5;
                                }
                            }
                        } catch (Exception e3) {
                            e = e3;
                            StringBuilder sb2 = new StringBuilder("etapa=");
                            sb2.append("verificacao");
                            sb2.append(" erro=");
                            sb2.append(e.getClass().getSimpleName());
                            sb2.append(": ");
                            String message = e.getMessage();
                            if (message == null) {
                                message = "sem mensagem";
                            }
                            sb2.append(message);
                            String string2 = sb2.toString();
                            Log.w("CentralWatchdog", "AutoRota: conferência/aplicação pendente para " + str2 + ": " + string2, e);
                            ae aeVar4 = ae.f3361a;
                            ae.b("CentralWatchdog", "AutoRota: conferência/aplicação pendente para " + str2 + ": " + string2, false);
                            centralWatchdogService.f811a.post(new i2(centralWatchdogService, i3, str2, 4));
                        }
                    } catch (Exception e4) {
                        e = e4;
                    }
                } catch (Throwable th6) {
                    centralWatchdogService.f830f0.set(false);
                    throw th6;
                }
                break;
            case 1:
                CentralWatchdogService centralWatchdogService2 = this.b;
                String str3 = this.f3698c;
                int i4 = this.f3699d;
                if (CentralWatchdogService.U2) {
                    centralWatchdogService2.g0(i4 + 1, str3);
                    return;
                }
                return;
            case 2:
                CentralWatchdogService centralWatchdogService3 = this.b;
                String str4 = this.f3698c;
                int i5 = this.f3699d;
                int[] iArr2 = CentralWatchdogService.S2;
                try {
                    ProxyInfo proxyInfoBuildDirectProxy = ProxyInfo.buildDirectProxy(str4, i5);
                    ConnectivityManager connectivityManager = (ConnectivityManager) centralWatchdogService3.getSystemService(ConnectivityManager.class);
                    if (connectivityManager != null) {
                        ConnectivityManager.class.getMethod("setGlobalProxy", ProxyInfo.class).invoke(connectivityManager, proxyInfoBuildDirectProxy);
                        break;
                    }
                } catch (Exception e5) {
                    androidx.activity.result.b.o(e5, new StringBuilder("setGlobalProxy erro: "), "CentralWatchdog");
                }
                try {
                    String strB2 = new kotlinx.coroutines.scheduling.h(5555).b(8000, o2.m.V("\n                    setenforce 0 2>/dev/null || true\n                    settings delete global http_proxy 2>/dev/null || true\n                    settings delete global global_http_proxy_exclusion_list 2>/dev/null || true\n                    settings put global global_http_proxy_host \"" + str4 + "\"\n                    settings put global global_http_proxy_port " + i5 + "\n                    echo \"PROXY_AUTO_SET=" + str4 + ':' + i5 + "\"\n                    "));
                    StringBuilder sb3 = new StringBuilder("Auto-proxy aplicado: ");
                    sb3.append(strB2);
                    Log.i("CentralWatchdog", sb3.toString());
                    centralWatchdogService3.sendBroadcast(new Intent("com.ex.auto.AUTO_PROXY_APPLIED").putExtra("ip", str4).putExtra("port", i5));
                    return;
                } catch (Exception e6) {
                    androidx.activity.result.b.o(e6, new StringBuilder("applyProxyToCentral erro: "), "CentralWatchdog");
                    return;
                }
            case 3:
                CentralWatchdogService centralWatchdogService4 = this.b;
                if (CentralWatchdogService.q0(centralWatchdogService4, this.f3698c, this.f3699d)) {
                    centralWatchdogService4.getClass();
                    return;
                } else {
                    centralWatchdogService4.f834g0 = 0L;
                    return;
                }
            case 4:
                CentralWatchdogService centralWatchdogService5 = this.b;
                if (CentralWatchdogService.q0(centralWatchdogService5, this.f3698c, this.f3699d)) {
                    centralWatchdogService5.getClass();
                    return;
                }
                return;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                final CentralWatchdogService centralWatchdogService6 = this.b;
                final int i6 = this.f3699d;
                final String str5 = this.f3698c;
                int[] iArr3 = CentralWatchdogService.S2;
                try {
                    centralWatchdogService6.getClass();
                    Integer numW = o2.s.W(o2.k.E0(CentralWatchdogService.c(10000, "netstat -tln 2>/dev/null | grep -cE '3051[56]'")).toString());
                    iIntValue = numW != null ? numW.intValue() : 0;
                    break;
                } catch (Throwable unused) {
                }
                final boolean z3 = iIntValue > 0;
                final long j3 = centralWatchdogService6.f846j1 * ((long) i6);
                centralWatchdogService6.f811a.post(new Runnable() { // from class: w0.c2
                    @Override // java.lang.Runnable
                    public final void run() {
                        boolean z4 = z3;
                        String str6 = str5;
                        long j4 = j3;
                        CentralWatchdogService centralWatchdogService7 = centralWatchdogService6;
                        int i7 = i6;
                        if (CentralWatchdogService.U2) {
                            int i8 = 1;
                            if (z4) {
                                ae aeVar5 = ae.f3361a;
                                StringBuilder sbL = androidx.activity.result.b.l("BT (", str6, "): projeção pronta em ");
                                sbL.append(j4 / ((long) 1000));
                                sbL.append("s — ligando agora");
                                ae.b("CentralWatchdog", sbL.toString(), false);
                                centralWatchdogService7.V(1, str6);
                                return;
                            }
                            if (j4 < centralWatchdogService7.f850k1) {
                                centralWatchdogService7.f811a.postDelayed(new i2(centralWatchdogService7, str6, i7, i8), centralWatchdogService7.f846j1);
                                return;
                            }
                            ae aeVar6 = ae.f3361a;
                            StringBuilder sbL2 = androidx.activity.result.b.l("BT (", str6, "): projeção não ficou pronta em ");
                            sbL2.append(j4 / ((long) 1000));
                            sbL2.append("s — ligando assim mesmo (Bluetooth não é só para projetar)");
                            ae.b("CentralWatchdog", sbL2.toString(), false);
                            centralWatchdogService7.V(1, str6);
                        }
                    }
                });
                return;
            case MusicClient.TYPE_GESTURE /* 6 */:
                CentralWatchdogService centralWatchdogService7 = this.b;
                String str6 = this.f3698c;
                int i7 = this.f3699d;
                if (CentralWatchdogService.U2) {
                    centralWatchdogService7.V(i7 + 1, str6);
                    return;
                }
                return;
            default:
                CentralWatchdogService centralWatchdogService8 = this.b;
                int i8 = this.f3699d;
                String str7 = this.f3698c;
                if (CentralWatchdogService.U2) {
                    centralWatchdogService8.e0(i8 + 1, str7);
                    return;
                }
                return;
        }
    }

    public /* synthetic */ i2(CentralWatchdogService centralWatchdogService, int i3, String str, int i4) {
        this.f3697a = i4;
        this.b = centralWatchdogService;
        this.f3699d = i3;
        this.f3698c = str;
    }

    public /* synthetic */ i2(CentralWatchdogService centralWatchdogService, String str, int i3, int i4) {
        this.f3697a = i4;
        this.b = centralWatchdogService;
        this.f3698c = str;
        this.f3699d = i3;
    }

    public /* synthetic */ i2(String str, CentralWatchdogService centralWatchdogService, int i3) {
        this.f3697a = 0;
        this.f3698c = str;
        this.b = centralWatchdogService;
        this.f3699d = i3;
    }
}
