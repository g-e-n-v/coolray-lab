package w0;

import android.content.Intent;
import android.content.SharedPreferences;
import android.net.wifi.WifiManager;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.HomeWidgetsPollService;
import com.ex.auto.MainActivity;
import com.ex.auto.R;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e9 implements h2.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3533a;
    public final /* synthetic */ MainActivity b;

    public /* synthetic */ e9(MainActivity mainActivity, int i3) {
        this.f3533a = i3;
        this.b = mainActivity;
    }

    @Override // h2.l
    public final Object c(Object obj) {
        String str;
        int i3 = 11;
        int i4 = 15;
        int i5 = 3;
        String str2 = "";
        String string = null;
        int i6 = 0;
        switch (this.f3533a) {
            case 0:
                MainActivity mainActivity = this.b;
                mainActivity.f1045v.post(new a9(mainActivity, ((Integer) obj).intValue(), i5));
                break;
            case 1:
                MainActivity mainActivity2 = this.b;
                Runnable runnable = (Runnable) obj;
                int i7 = MainActivity.f1002z1;
                i2.g.e(runnable, "it");
                mainActivity2.f1045v.removeCallbacks(runnable);
                break;
            case 2:
                MainActivity mainActivity3 = this.b;
                int i8 = MainActivity.f1002z1;
                i2.g.e((String) obj, "<unused var>");
                mainActivity3.f1025l0 = false;
                mainActivity3.D0("", false);
                ae aeVar = ae.f3361a;
                ae.b("Ativar", "ativação terminou — ok=" + mainActivity3.f1027m0, false);
                if (mainActivity3.f1027m0) {
                    mainActivity3.o0().edit().putBoolean("connadaptor_ja_ativado", true).apply();
                    mainActivity3.startForegroundService(new Intent(mainActivity3, (Class<?>) CentralWatchdogService.class));
                    if (!mainActivity3.isFinishing() && !mainActivity3.isDestroyed()) {
                        e.h hVar = new e.h(mainActivity3);
                        e.d dVar = (e.d) hVar.b;
                        dVar.f1554d = mainActivity3.getString(R.string.k_ativar_titulo);
                        StringBuilder sb = new StringBuilder();
                        sb.append(mainActivity3.getString(R.string.k_ativacao_concluida));
                        sb.append("\n\n");
                        sb.append(mainActivity3.U());
                        int i9 = u.f4288a;
                        SharedPreferences sharedPreferencesO0 = mainActivity3.o0();
                        i2.g.d(sharedPreferencesO0, "<get-prefs>(...)");
                        if (!u.b(sharedPreferencesO0)) {
                            str2 = "\n\n" + mainActivity3.getString(R.string.k_ativacao_carplay_desligado);
                        }
                        sb.append(str2);
                        dVar.f = sb.toString();
                        hVar.e(android.R.string.ok, null);
                        hVar.h();
                    }
                    int i10 = u.f4288a;
                    if (u.j(mainActivity3.P())) {
                        mainActivity3.C.execute(new x8(mainActivity3, 24));
                    } else {
                        ae.b("Ativar", "modo Android Auto — patch do CarplayMonitor não se aplica", false);
                    }
                    if (u.j(mainActivity3.P())) {
                        mainActivity3.f1045v.postDelayed(new x8(mainActivity3, 21), 12000L);
                    }
                }
                mainActivity3.e1();
                break;
            case 3:
                MainActivity mainActivity4 = this.b;
                String str3 = (String) obj;
                int i11 = MainActivity.f1002z1;
                i2.g.e(str3, "result");
                if (o2.k.e0(str3, "routes_removed", false)) {
                    mainActivity4.x0 = false;
                    mainActivity4.f1045v.post(new ma(mainActivity4, 7));
                }
                return x1.e.f4647c;
            case 4:
                MainActivity mainActivity5 = this.b;
                int i12 = MainActivity.f1002z1;
                i2.g.e((String) obj, "it");
                if (mainActivity5.f1031o0) {
                    String string2 = mainActivity5.getString(R.string.k_keyserver_deactivated);
                    i2.g.d(string2, "getString(...)");
                    return string2;
                }
                String string3 = mainActivity5.getString(R.string.k_error_deactivating);
                i2.g.d(string3, "getString(...)");
                return string3;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                MainActivity mainActivity6 = this.b;
                int i13 = MainActivity.f1002z1;
                i2.g.e((String) obj, "it");
                if (mainActivity6.f1031o0) {
                    mainActivity6.o0().edit().putBoolean("keyserver_bind_enabled", false).apply();
                    mainActivity6.B.execute(new x8(mainActivity6, 28));
                }
                mainActivity6.f1035q0 = null;
                mainActivity6.f1033p0 = false;
                int[] iArr = CentralWatchdogService.S2;
                CentralWatchdogService centralWatchdogService = CentralWatchdogService.V2;
                if (centralWatchdogService != null) {
                    centralWatchdogService.f811a.post(new v2(centralWatchdogService, 10));
                }
                mainActivity6.B.execute(new ma(mainActivity6, i4));
                mainActivity6.v1();
                break;
            case MusicClient.TYPE_GESTURE /* 6 */:
                MainActivity mainActivity7 = this.b;
                int i14 = MainActivity.f1002z1;
                i2.g.e((String) obj, "it");
                mainActivity7.n1();
                break;
            case PlaybackState.STATE_ERROR /* 7 */:
                MainActivity mainActivity8 = this.b;
                String str4 = (String) obj;
                int i15 = MainActivity.f1002z1;
                i2.g.e(str4, "result");
                mainActivity8.w("Desinstalar ConnAdaptor", o2.k.C0(400, str4));
                ae aeVar2 = ae.f3361a;
                if (mainActivity8.f1029n0) {
                    str = "ConnAdaptor revertido pro de fábrica";
                } else {
                    str = "FALHOU: " + o2.k.E0(o2.k.C0(120, str4)).toString();
                }
                ae.b("Desativar", str, false);
                if (mainActivity8.f1029n0) {
                    String string4 = mainActivity8.getString(R.string.k_android_auto_deactivated);
                    i2.g.d(string4, "getString(...)");
                    return string4;
                }
                String string5 = mainActivity8.getString(R.string.k_error_deactivating);
                i2.g.d(string5, "getString(...)");
                return string5;
            case 8:
                MainActivity mainActivity9 = this.b;
                int i16 = MainActivity.f1002z1;
                i2.g.e((String) obj, "it");
                mainActivity9.f1025l0 = false;
                mainActivity9.D0("", false);
                WifiManager wifiManager = mainActivity9.K;
                if (wifiManager == null) {
                    i2.g.h("wifiManager");
                    throw null;
                }
                wifiManager.setWifiEnabled(true);
                mainActivity9.f1045v.postDelayed(new ma(mainActivity9, i3), 2000L);
                mainActivity9.e1();
                break;
                break;
            case 9:
                MainActivity mainActivity10 = this.b;
                int i17 = MainActivity.f1002z1;
                i2.g.e((String) obj, "it");
                mainActivity10.n1();
                break;
            case 10:
                MainActivity mainActivity11 = this.b;
                int i18 = MainActivity.f1002z1;
                i2.g.e((String) obj, "it");
                MainActivity.h1(mainActivity11);
                break;
            case 11:
                MainActivity mainActivity12 = this.b;
                String str5 = (String) obj;
                int i19 = MainActivity.f1002z1;
                i2.g.e(str5, "result");
                if (!mainActivity12.isFinishing()) {
                    boolean zE0 = o2.k.e0(str5, "REMOVIDO_OK", false);
                    String string6 = mainActivity12.getString(zE0 ? R.string.k_audio_deleted : R.string.k_audio_delete_failed);
                    i2.g.b(string6);
                    mainActivity12.t2(string6, !zE0 ? 1 : 0).show();
                    MainActivity.h1(mainActivity12);
                }
                return x1.e.f4647c;
            case 12:
                MainActivity mainActivity13 = this.b;
                String str6 = (String) obj;
                int i20 = MainActivity.f1002z1;
                i2.g.e(str6, "result");
                if (o2.k.e0(str6, "FWMARK_MATCH=MISMATCH", true)) {
                    String string7 = mainActivity13.getString(R.string.k_routes_not_confirmed);
                    i2.g.d(string7, "getString(...)");
                    return string7;
                }
                if (MainActivity.G1(str6)) {
                    String string8 = mainActivity13.getString(R.string.k_routes_created);
                    i2.g.d(string8, "getString(...)");
                    return string8;
                }
                String string9 = mainActivity13.getString(R.string.k_routes_creation_failed);
                i2.g.d(string9, "getString(...)");
                return string9;
            case 13:
                MainActivity mainActivity14 = this.b;
                String str7 = (String) obj;
                int i21 = MainActivity.f1002z1;
                i2.g.e(str7, "result");
                if (MainActivity.G1(str7)) {
                    mainActivity14.x0 = true;
                    mainActivity14.f1045v.post(new ma(mainActivity14, 18));
                }
                return x1.e.f4647c;
            case 14:
                MainActivity mainActivity15 = this.b;
                String str8 = (String) obj;
                int i22 = MainActivity.f1002z1;
                i2.g.e(str8, "txt");
                mainActivity15.f1045v.post(new c9(mainActivity15, str8, i3));
                break;
            case 15:
                MainActivity mainActivity16 = this.b;
                String str9 = (String) obj;
                int i23 = MainActivity.f1002z1;
                i2.g.e(str9, "result");
                String string10 = mainActivity16.getString(o2.k.e0(str9, "restart_enviado", false) ? R.string.k_restarted : R.string.k_error_restarting);
                i2.g.d(string10, "getString(...)");
                return string10;
            case 16:
                MainActivity mainActivity17 = this.b;
                String str10 = (String) obj;
                int i24 = MainActivity.f1002z1;
                i2.g.e(str10, "saida");
                mainActivity17.f1025l0 = false;
                mainActivity17.D0("", false);
                ae aeVar3 = ae.f3361a;
                ae.b("Reiniciar", "restart dos serviços terminou — " + o2.k.E0(o2.t.c0(o2.k.C0(80, str10), "\n", " ")).toString(), false);
                int i25 = u.f4288a;
                if (u.j(mainActivity17.P())) {
                    mainActivity17.C.execute(new ma(mainActivity17, 26));
                } else {
                    ae.b("Reiniciar", "modo sem CarPlay — não mexo no CarplayMonitor", false);
                }
                mainActivity17.e1();
                long[] jArr = {15000, 40000, 65000};
                while (i6 < 3) {
                    mainActivity17.f1045v.postDelayed(new ma(mainActivity17, 27), jArr[i6]);
                    i6++;
                }
                return x1.e.f4647c;
            case 17:
                MainActivity mainActivity18 = this.b;
                String str11 = (String) obj;
                int i26 = MainActivity.f1002z1;
                i2.g.e(str11, "progress");
                mainActivity18.f1045v.post(new ma(mainActivity18, str11));
                break;
            case 18:
                MainActivity mainActivity19 = this.b;
                String str12 = (String) obj;
                int i27 = MainActivity.f1002z1;
                i2.g.e(str12, "progressText");
                mainActivity19.f1045v.post(new c9(mainActivity19, str12, 16));
                break;
            case 19:
                MainActivity mainActivity20 = this.b;
                String str13 = (String) obj;
                int i28 = MainActivity.f1002z1;
                i2.g.e(str13, "txt");
                mainActivity20.f1045v.post(new c9(mainActivity20, str13, i4));
                break;
            case 20:
                MainActivity mainActivity21 = this.b;
                String str14 = (String) obj;
                int i29 = MainActivity.f1002z1;
                i2.g.e(str14, "stage");
                if (o2.t.d0(str14, "download:")) {
                    Integer numW = o2.s.W(o2.k.r0(str14, "download:"));
                    string = mainActivity21.getString(R.string.xml_gestos_status_baixando, Integer.valueOf(numW != null ? numW.intValue() : 0));
                } else if (str14.equals("verify")) {
                    string = mainActivity21.getString(R.string.xml_gestos_status_verificando);
                } else if (str14.equals("copy")) {
                    string = mainActivity21.getString(R.string.xml_gestos_status_copiando);
                } else if (str14.equals("mount")) {
                    string = mainActivity21.getString(R.string.xml_gestos_status_aplicando);
                }
                if (string != null) {
                    mainActivity21.f1045v.post(new c9(mainActivity21, string, 17));
                }
                return x1.e.f4647c;
            default:
                MainActivity mainActivity22 = this.b;
                int iIntValue = ((Integer) obj).intValue();
                int i30 = MainActivity.f1002z1;
                mainActivity22.o0().edit().putInt("widget_bg_opacity_pct", iIntValue).apply();
                ArrayList arrayList = mainActivity22.Y;
                int size = arrayList.size();
                while (i6 < size) {
                    Object obj2 = arrayList.get(i6);
                    i6++;
                    ((bd) obj2).setGlobalBackgroundPercent(iIntValue);
                }
                int i31 = HomeWidgetsPollService.E;
                try {
                    mainActivity22.startService(new Intent(mainActivity22, (Class<?>) HomeWidgetsPollService.class).setAction("com.ex.auto.widget.REFRESH_OPACITY"));
                    break;
                } catch (Exception unused) {
                }
                return x1.e.f4647c;
        }
        return x1.e.f4647c;
    }
}
