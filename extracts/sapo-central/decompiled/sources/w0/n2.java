package w0;

import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.HomeFloatingWidgetsService;
import com.ex.auto.MainActivity;
import com.ex.auto.QuickAccessFloaterService;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class n2 implements h2.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3928a;

    public /* synthetic */ n2(int i3) {
        this.f3928a = i3;
    }

    /* JADX WARN: Code duplicated, block: B:122:0x035e  */
    /* JADX WARN: Code duplicated, block: B:171:? A[RETURN, SYNTHETIC] */
    @Override // h2.l
    public final Object c(Object obj) {
        int i3 = 1;
        switch (this.f3928a) {
            case 0:
                String str = (String) obj;
                int[] iArr = CentralWatchdogService.S2;
                i2.g.e(str, "l");
                return Boolean.valueOf(o2.t.d0(str, "MONITOR_") || o2.t.d0(str, "CARPLAY_") || o2.t.d0(str, "SEM_") || o2.t.d0(str, "CONNADAPTOR=") || o2.t.d0(str, "HVAC=") || o2.t.d0(str, "HVAC_") || o2.k.e0(str, "FALHOU", false) || o2.k.e0(str, "INESPERADO", false) || o2.k.e0(str, "ERRO", false));
            case 1:
                Integer num = (Integer) obj;
                num.intValue();
                int[] iArr2 = CentralWatchdogService.S2;
                return String.format("0x%x", Arrays.copyOf(new Object[]{num}, 1));
            case 2:
                boolean zBooleanValue = ((Boolean) obj).booleanValue();
                int[] iArr3 = CentralWatchdogService.S2;
                ae aeVar = ae.f3361a;
                ae.b("CentralWatchdog", "BT (arranque): discagem ao preferido ".concat(zBooleanValue ? "aceita" : "recusada"), true);
                return x1.e.f4647c;
            case 3:
                String str2 = (String) obj;
                i2.g.e(str2, "it");
                return o2.k.E0(str2).toString();
            case 4:
                String str3 = (String) obj;
                i2.g.e(str3, "linha");
                String strA0 = o2.k.A0(str3, ' ');
                if (!s4.b.c(strA0)) {
                    return null;
                }
                List listU0 = o2.k.u0(strA0, new char[]{'.'});
                if (!listU0.isEmpty()) {
                    Iterator it = listU0.iterator();
                    while (it.hasNext()) {
                        Integer numW = o2.s.W((String) it.next());
                        int iIntValue = numW != null ? numW.intValue() : 256;
                        if (iIntValue < 0 || iIntValue >= 256) {
                            return null;
                        }
                    }
                }
                if (!o2.k.e0(str3, "lladdr", false)) {
                    return null;
                }
                Iterator it2 = s4.f4200a.iterator();
                int i4 = 0;
                while (it2.hasNext()) {
                    if (o2.k.e0(str3, (String) it2.next(), false)) {
                        if (i4 < 0) {
                            return null;
                        }
                        return new x1.a(Integer.valueOf(i4), strA0);
                    }
                    i4++;
                }
                i4 = -1;
                if (i4 < 0) {
                    return null;
                }
                return new x1.a(Integer.valueOf(i4), strA0);
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                String str4 = (String) obj;
                i2.g.e(str4, "it");
                return o2.k.E0(str4).toString();
            case MusicClient.TYPE_GESTURE /* 6 */:
                String str5 = (String) obj;
                i2.g.e(str5, "it");
                int i5 = 0;
                for (int i6 = 0; i6 < str5.length(); i6++) {
                    if (str5.charAt(i6) == '|') {
                        i5++;
                    }
                }
                return Boolean.valueOf(i5 >= 5);
            case PlaybackState.STATE_ERROR /* 7 */:
                String str6 = (String) obj;
                i2.g.e(str6, "linha");
                List listV0 = o2.k.v0(str6, new String[]{"|"}, 6, 2);
                String string = o2.k.E0((String) listV0.get(0)).toString();
                if (!r5.e(string)) {
                    return null;
                }
                Long lY = o2.s.Y(o2.k.E0((String) listV0.get(1)).toString());
                long jLongValue = lY != null ? lY.longValue() : 0L;
                Long lY2 = o2.s.Y(o2.k.E0((String) listV0.get(2)).toString());
                long jLongValue2 = lY2 != null ? lY2.longValue() : 0L;
                Long lY3 = o2.s.Y(o2.k.E0((String) listV0.get(3)).toString());
                long jLongValue3 = lY3 != null ? lY3.longValue() : 0L;
                Long lY4 = o2.s.Y(o2.k.E0((String) listV0.get(4)).toString());
                return new o5(string, jLongValue, jLongValue2, jLongValue3, lY4 != null ? lY4.longValue() : 0L, o2.k.E0((String) listV0.get(5)).toString());
            case 8:
                String str7 = (String) obj;
                i2.g.e(str7, "it");
                return o2.k.E0(str7).toString();
            case 9:
                String str8 = (String) obj;
                i2.g.e(str8, "it");
                return Boolean.valueOf(o2.t.d0(str8, "OCIOSO:"));
            case 10:
                String str9 = (String) obj;
                i2.g.e(str9, "it");
                return o2.k.E0(o2.k.r0(str9, "OCIOSO:")).toString();
            case 11:
                String str10 = (String) obj;
                i2.g.e(str10, "it");
                return Boolean.valueOf(r5.e(str10));
            case 12:
                Byte b = (Byte) obj;
                b.byteValue();
                return String.format("%02x", Arrays.copyOf(new Object[]{b}, 1));
            case 13:
                String str11 = (String) obj;
                i2.g.e(str11, "it");
                return Boolean.valueOf(o2.t.d0(o2.k.E0(str11).toString(), "[x]"));
            case 14:
                String str12 = (String) obj;
                i2.g.e(str12, "it");
                String string2 = o2.k.E0(str12).toString();
                return o2.k.E0(o2.k.y0(string2, "[x]", string2)).toString();
            case 15:
                String str13 = (String) obj;
                i2.g.e(str13, "it");
                return Boolean.valueOf(o2.t.d0(o2.k.E0(str13).toString(), "[x]"));
            case 16:
                String str14 = (String) obj;
                i2.g.e(str14, "it");
                String string3 = o2.k.E0(str14).toString();
                return o2.k.E0(o2.k.y0(string3, "[x]", string3)).toString();
            case 17:
                Byte b3 = (Byte) obj;
                b3.byteValue();
                return String.format("%02x", Arrays.copyOf(new Object[]{b3}, 1));
            case 18:
                i2.g.e((String) obj, "it");
                return x1.e.f4647c;
            case 19:
                Byte b4 = (Byte) obj;
                b4.byteValue();
                return String.format("%02x", Arrays.copyOf(new Object[]{b4}, 1));
            case 20:
                String str15 = (String) obj;
                List list = HomeFloatingWidgetsService.f926a0;
                i2.g.e(str15, "cmd");
                try {
                    m.x(str15, 5000, null, new n(0));
                    break;
                } catch (Throwable unused) {
                }
                return x1.e.f4647c;
            case 21:
                Byte b5 = (Byte) obj;
                b5.byteValue();
                return String.format("%02x", Arrays.copyOf(new Object[]{b5}, 1));
            case 22:
                Byte b6 = (Byte) obj;
                b6.byteValue();
                return String.format("%02x", Arrays.copyOf(new Object[]{b6}, 1));
            case 23:
                String str16 = (String) obj;
                i2.g.e(str16, "it");
                return Integer.valueOf(str16.length());
            case 24:
                String str17 = (String) obj;
                i2.g.e(str17, "it");
                return str17;
            case 25:
                Byte b7 = (Byte) obj;
                b7.byteValue();
                return String.format("%02x", Arrays.copyOf(new Object[]{b7}, 1));
            case 26:
                ((Boolean) obj).getClass();
                int i7 = MainActivity.f1002z1;
                int[] iArr4 = CentralWatchdogService.S2;
                CentralWatchdogService centralWatchdogService = CentralWatchdogService.V2;
                if (centralWatchdogService != null) {
                    centralWatchdogService.f811a.post(new v2(centralWatchdogService, 14));
                }
                return x1.e.f4647c;
            case 27:
                ((Boolean) obj).getClass();
                int i8 = MainActivity.f1002z1;
                int[] iArr5 = CentralWatchdogService.S2;
                CentralWatchdogService centralWatchdogService2 = CentralWatchdogService.V2;
                if (centralWatchdogService2 != null) {
                    centralWatchdogService2.f811a.post(new v2(centralWatchdogService2, i3));
                }
                int i9 = QuickAccessFloaterService.t0;
                QuickAccessFloaterService quickAccessFloaterService = QuickAccessFloaterService.x0;
                if (quickAccessFloaterService != null) {
                    quickAccessFloaterService.J();
                }
                return x1.e.f4647c;
            case 28:
                String str18 = (String) obj;
                int i10 = MainActivity.f1002z1;
                i2.g.e(str18, "item");
                List listV1 = o2.k.v0(str18, new String[]{"|"}, 2, 2);
                if (listV1.size() != 2) {
                    return str18;
                }
                return ((String) listV1.get(0)) + '\n' + ((String) listV1.get(1));
            default:
                Byte b8 = (Byte) obj;
                b8.byteValue();
                int i11 = MainActivity.f1002z1;
                return String.format("%02x", Arrays.copyOf(new Object[]{b8}, 1));
        }
    }

    public /* synthetic */ n2(MainActivity mainActivity) {
        this.f3928a = 27;
    }
}
