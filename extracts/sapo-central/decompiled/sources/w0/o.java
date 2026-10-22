package w0;

import android.bluetooth.BluetoothDevice;
import android.util.Log;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.CentralWatchdogService;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class o implements h2.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3960a;

    public /* synthetic */ o(int i3) {
        this.f3960a = i3;
    }

    @Override // h2.l
    public final Object c(Object obj) {
        String str;
        String strV;
        CharSequence charSequenceSubSequence;
        boolean z2 = false;
        int i3 = 1;
        switch (this.f3960a) {
            case 0:
                Map.Entry entry = (Map.Entry) obj;
                i2.g.e(entry, "it");
                return "--es " + e8.O((String) entry.getKey()) + ' ' + e8.O((String) entry.getValue());
            case 1:
                String str2 = (String) obj;
                i2.g.e(str2, "it");
                return o2.k.E0(str2).toString();
            case 2:
                String str3 = (String) obj;
                i2.g.e(str3, "it");
                return Boolean.valueOf(o2.t.d0(str3, "package:"));
            case 3:
                String str4 = (String) obj;
                i2.g.e(str4, "it");
                return o2.k.r0(str4, "package:");
            case 4:
                String str5 = (String) obj;
                i2.g.e(str5, "it");
                Log.i("Playbook", str5);
                return x1.e.f4647c;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                i2.g.e((Map) obj, "<unused var>");
                return e8.v();
            case MusicClient.TYPE_GESTURE /* 6 */:
                i2.g.e((Map) obj, "<unused var>");
                return "setenforce 0 2>/dev/null || true\n".concat(e8.v());
            case PlaybackState.STATE_ERROR /* 7 */:
                i2.g.e((Map) obj, "<unused var>");
                return "am force-stop com.njda.adapter\ncmd package compile -f -m speed com.njda.adapter || exit 1\nam startservice -n com.njda.adapter/.core.AdapterService";
            case 8:
                i2.g.e((Map) obj, "<unused var>");
                return "if ip link show ap0 >/dev/null 2>&1; then\n  ip link set ap0 down 2>/dev/null || true\n  ip rule show | grep -w 'ap0' | awk '{print $1}' | sed 's/://' | while read p; do ip rule del prio $p 2>/dev/null; done\nfi\nsleep 1";
            case 9:
                Map map = (Map) obj;
                i2.g.e(map, "p");
                String str6 = (String) map.get("src");
                if (str6 == null) {
                    str6 = "";
                }
                if (!o2.t.d0(str6, "/data/local/hvac-digital")) {
                    throw new IllegalArgumentException("origem fora do nosso diretorio: ".concat(str6).toString());
                }
                String str7 = (String) map.get("via");
                str = str7 != null ? str7 : "";
                String strO = e8.O(str6);
                String strO2 = e8.O("com.flyme.auto.systemuiplugin");
                String strO3 = e8.O("persist.sys.hvacdigital.via");
                if (str.equals("bind")) {
                    strV = "echo \"VIA_FORCADA=bind — pulando o pm install\"\n_FALHOU=1";
                } else {
                    strV = o2.m.V("\n            _OUT=$(pm install -r -g " + strO + " 2>&1 | tail -n1)\n            echo \"PM=$_OUT\"\n            case \"$_OUT\" in\n              *Success*) _FALHOU=0 ;;\n              *)         _FALHOU=1 ;;\n            esac\n        ");
                }
                StringBuilder sbM = androidx.activity.result.b.m("\n            _RC=1\n            setenforce 0 2>/dev/null || true\n            if [ ! -f ", strO, " ]; then\n              echo SEM_FONTE\n            else\n              _DST=$(pm path ", strO2, " 2>/dev/null | sed 's/^package://')\n              if [ -z \"$_DST\" ]; then\n                echo SEM_ALVO\n              else\n                echo \"DST=$_DST\"\n\n                ");
                androidx.activity.result.b.q(sbM, strV, "\n\n                if [ \"$_FALHOU\" != \"0\" ]; then\n                  # Plano B: sobrepor o APK de fábrica. Só aqui se desmonta o bind anterior — e só\n                  # imediatamente antes de remontar.\n                  chown root:root ", strO, " 2>/dev/null || true\n                  chmod 644 ");
                androidx.activity.result.b.q(sbM, strO, " 2>/dev/null || true\n                  chcon u:object_r:system_app_file:s0 ", strO, " 2>/dev/null || echo CHCON_FALHOU\n                  for _i in 1 2 3 4 5 6; do\n                    grep -F \" $_DST \" /proc/mounts >/dev/null 2>&1 || break\n                    umount \"$_DST\" 2>/dev/null || umount -l \"$_DST\" 2>/dev/null || true\n                  done\n                  mount --bind ");
                androidx.activity.result.b.q(sbM, strO, " \"$_DST\" 2>/dev/null || echo BIND_FALHOU\n                fi\n\n                # Veredito, no mesmo script: o que o PackageManager aponta AGORA.\n                _P=$(pm path ", strO2, " 2>/dev/null | sed 's/^package://')\n                echo \"PM_PATH=$_P\"\n                case \"$_P\" in\n                  */data/app/*)\n                    # A instalação sombreia o /system; um bind legado sobrando só confunde o diagnóstico.\n                    for _i in 1 2 3 4 5 6; do\n                      grep -F \" $_DST \" /proc/mounts >/dev/null 2>&1 || break\n                      umount \"$_DST\" 2>/dev/null || umount -l \"$_DST\" 2>/dev/null || true\n                    done\n                    setprop ");
                sbM.append(strO3);
                sbM.append(" install\n                    rm -f ");
                sbM.append(e8.O("/data/local/tmp/fixes/hvac_em_bind"));
                sbM.append("\n                    echo VIA=install\n                    _RC=0\n                    ;;\n                  *)\n                    if [ -n \"$_P\" ] && grep -F \" $_P \" /proc/mounts >/dev/null 2>&1 &&\n                       [ \"$(stat -c '%d:%i' \"$_P\")\" = \"$(stat -c '%d:%i' ");
                sbM.append(strO);
                sbM.append(")\" ]; then\n                      mkdir -p ");
                sbM.append(e8.O("/data/local/tmp/fixes"));
                sbM.append(" &&\n                        touch ");
                sbM.append(e8.O("/data/local/tmp/fixes/hvac_em_bind"));
                sbM.append(" || echo MARCADOR_HVAC_FALHOU\n                      setprop ");
                sbM.append(strO3);
                sbM.append(" bind\n                      echo VIA=bind\n                      _RC=0\n                    else\n                      setprop ");
                sbM.append(strO3);
                sbM.append(" nenhum\n                      echo NAO_VINGOU\n                    fi\n                    ;;\n                esac\n              fi\n            fi\n            # O veredito sai como STATUS do último comando, não como `exit`: quem chama anexa\n            # `\\necho __RC__$?` ao script, e um `exit` mata o shell antes desse echo rodar.\n            [ \"$_RC\" = \"0\" ]\n        ");
                return o2.m.V(sbM.toString());
            case 10:
                Map map2 = (Map) obj;
                i2.g.e(map2, "p");
                String str8 = (String) map2.get("svc");
                str = str8 != null ? str8 : "";
                String str9 = (String) map2.get("esperaS");
                if (str9 == null) {
                    str9 = "12";
                }
                Integer numW = o2.s.W(str9);
                return e8.T(str, numW != null ? numW.intValue() : 12, str);
            case 11:
                String str10 = (String) obj;
                i2.g.e(str10, "it");
                return "s16 " + androidx.activity.result.b.i(str10, "'", "'\\''", new StringBuilder("'"), '\'');
            case 12:
                Byte b = (Byte) obj;
                b.byteValue();
                return String.format("%02x", Arrays.copyOf(new Object[]{b}, 1));
            case 13:
                Byte b3 = (Byte) obj;
                b3.byteValue();
                return String.format("%02x", Arrays.copyOf(new Object[]{b3}, 1));
            case 14:
                String str11 = (String) obj;
                i2.g.e(str11, "it");
                return o2.k.E0(str11).toString();
            case 15:
                String str12 = (String) obj;
                i2.g.e(str12, "it");
                if (str12.length() > 0 && !o2.t.d0(str12, "#")) {
                    z2 = true;
                }
                return Boolean.valueOf(z2);
            case 16:
                String str13 = (String) obj;
                i2.g.e(str13, "s");
                return androidx.activity.result.b.i(str13, "'", "'\\''", new StringBuilder("'"), '\'');
            case 17:
                String str14 = (String) obj;
                i2.g.e(str14, "s");
                return androidx.activity.result.b.i(str14, "'", "'\\''", new StringBuilder("'"), '\'');
            case 18:
                Byte b4 = (Byte) obj;
                b4.byteValue();
                return String.format("%02x", Arrays.copyOf(new Object[]{b4}, 1));
            case 19:
                String address = ((BluetoothDevice) obj).getAddress();
                i2.g.d(address, "getAddress(...)");
                return address;
            case 20:
                String str15 = (String) obj;
                i2.g.e(str15, "it");
                StringBuilder sb = new StringBuilder("\\");
                k1.a.f(16);
                int i4 = Integer.parseInt(str15, 16);
                k1.a.f(8);
                String string = Integer.toString(i4, 8);
                i2.g.d(string, "toString(...)");
                if (3 <= string.length()) {
                    charSequenceSubSequence = string.subSequence(0, string.length());
                } else {
                    StringBuilder sb2 = new StringBuilder(3);
                    int length = 3 - string.length();
                    if (1 <= length) {
                        while (true) {
                            sb2.append('0');
                            if (i3 != length) {
                                i3++;
                            }
                        }
                    }
                    sb2.append((CharSequence) string);
                    charSequenceSubSequence = sb2;
                }
                sb.append(charSequenceSubSequence.toString());
                return sb.toString();
            case 21:
                Byte b5 = (Byte) obj;
                b5.byteValue();
                int[] iArr = CentralWatchdogService.S2;
                return String.format("%02x", Arrays.copyOf(new Object[]{b5}, 1));
            case 22:
                Byte b6 = (Byte) obj;
                b6.byteValue();
                int[] iArr2 = CentralWatchdogService.S2;
                return String.format("%02x", Arrays.copyOf(new Object[]{b6}, 1));
            case 23:
                String str16 = (String) obj;
                int[] iArr3 = CentralWatchdogService.S2;
                i2.g.e(str16, "it");
                return o2.k.E0(str16).toString();
            case 24:
                String str17 = (String) obj;
                int[] iArr4 = CentralWatchdogService.S2;
                i2.g.e(str17, "it");
                return Boolean.valueOf(str17.length() > 0);
            case 25:
                String str18 = (String) obj;
                int[] iArr5 = CentralWatchdogService.S2;
                i2.g.e(str18, "it");
                return o2.k.E0(str18).toString();
            case 26:
                String str19 = (String) obj;
                int[] iArr6 = CentralWatchdogService.S2;
                i2.g.e(str19, "it");
                return Boolean.valueOf(o2.t.d0(str19, "MONITOR_") || o2.t.d0(str19, "SEM_") || o2.k.e0(str19, "FALHOU", false));
            case 27:
                String str20 = (String) obj;
                int[] iArr7 = CentralWatchdogService.S2;
                i2.g.e(str20, "it");
                return o2.k.E0(str20).toString();
            case 28:
                String str21 = (String) obj;
                int[] iArr8 = CentralWatchdogService.S2;
                i2.g.e(str21, "it");
                return Boolean.valueOf(str21.length() > 0);
            default:
                String str22 = (String) obj;
                int[] iArr9 = CentralWatchdogService.S2;
                i2.g.e(str22, "it");
                return o2.k.E0(str22).toString();
        }
    }
}
