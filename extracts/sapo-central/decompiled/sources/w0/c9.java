package w0;

import android.util.Log;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.MainActivity;
import com.ex.auto.R;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c9 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3435a;
    public final /* synthetic */ String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MainActivity f3436c;

    public /* synthetic */ c9(MainActivity mainActivity, String str, int i3) {
        this.f3435a = i3;
        this.f3436c = mainActivity;
        this.b = str;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // java.lang.Runnable
    public final void run() {
        String strD0;
        i4 i4Var;
        int i3 = 2;
        boolean z2 = true;
        int i4 = 0;
        switch (this.f3435a) {
            case 0:
                MainActivity mainActivity = this.f3436c;
                String str = this.b;
                int i5 = MainActivity.f1002z1;
                mainActivity.w("ADB", "Pastas centrais (arranque)\n" + MainActivity.v2(4000, str));
                break;
            case 1:
                String str2 = this.b;
                MainActivity mainActivity2 = this.f3436c;
                int i6 = MainActivity.f1002z1;
                mainActivity2.f1045v.post(new f9(mainActivity2, new File(u.c(str2, mainActivity2.R())).isFile(), 12));
                break;
            case 2:
                MainActivity mainActivity3 = this.f3436c;
                String str3 = this.b;
                int i7 = MainActivity.f1002z1;
                mainActivity3.f1045v.post(new c0(og.d(), mainActivity3, str3, 3));
                break;
            case 3:
                MainActivity mainActivity4 = this.f3436c;
                String str4 = this.b;
                int i8 = MainActivity.f1002z1;
                try {
                    s1 s1VarR = t1.r(mainActivity4, str4);
                    StringBuilder sb = new StringBuilder("resultado=");
                    sb.append(s1VarR);
                    sb.append(" (preferido=");
                    if (str4 == null) {
                        str4 = "qualquer";
                    }
                    sb.append(str4);
                    sb.append(')');
                    mainActivity4.x("CarPlay connect", sb.toString());
                } catch (Throwable th) {
                    mainActivity4.x("CarPlay connect", "erro: " + th.getMessage());
                    return;
                }
                break;
            case 4:
                MainActivity mainActivity5 = this.f3436c;
                String str5 = this.b;
                int i9 = MainActivity.f1002z1;
                if (!mainActivity5.isFinishing() && !mainActivity5.isDestroyed()) {
                    String string = mainActivity5.getString((o2.k.e0(str5, "MONITOR_BIND_OK", false) || o2.k.e0(str5, "MONITOR_JA_MONTADO", false)) ? R.string.k_carplay_patch_ok : R.string.k_carplay_patch_falhou);
                    i2.g.d(string, "getString(...)");
                    mainActivity5.t2(string, 1);
                    mainActivity5.e1();
                    break;
                }
                break;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                MainActivity mainActivity6 = this.f3436c;
                String str6 = this.b;
                int i10 = MainActivity.f1002z1;
                String string2 = mainActivity6.getString(R.string.k_auto_update_in_progress, str6);
                i2.g.d(string2, "getString(...)");
                mainActivity6.Z1(string2);
                mainActivity6.t2(string2, 1);
                mainActivity6.w("Update", string2);
                break;
            case MusicClient.TYPE_GESTURE /* 6 */:
                String str7 = this.b;
                MainActivity mainActivity7 = this.f3436c;
                int i11 = MainActivity.f1002z1;
                if (!o2.k.e0(str7, "OK", false)) {
                    androidx.activity.result.b.n(R.string.k_preview_file_not_found, 0, mainActivity7, "getString(...)");
                } else {
                    mainActivity7.Z0("/data/local/tmp/avas_preview/preview.wav");
                }
                break;
            case PlaybackState.STATE_ERROR /* 7 */:
                MainActivity mainActivity8 = this.f3436c;
                String str8 = this.b;
                int i12 = MainActivity.f1002z1;
                if (!mainActivity8.isFinishing() && !mainActivity8.isDestroyed()) {
                    mainActivity8.S1(str8);
                    break;
                }
                break;
            case 8:
                MainActivity mainActivity9 = this.f3436c;
                String str9 = this.b;
                int i13 = MainActivity.f1002z1;
                File file = new File(mainActivity9.E());
                mainActivity9.f1045v.post(new a1.g(mainActivity9, (Object) (file.isFile() && file.length() > 0 ? h5.f3661a : Boolean.valueOf(mainActivity9.q0()).equals(Boolean.FALSE) ? h5.f3662c : h5.b), str9, 17));
                break;
            case 9:
                MainActivity mainActivity10 = this.f3436c;
                String str10 = this.b;
                int i14 = MainActivity.f1002z1;
                String strH1 = mainActivity10.H1(8000, "[ -f '/data/local/hvac-digital/sysui.apk' ] && echo HV_YES || echo HV_NO");
                boolean zE0 = o2.k.e0(strH1, "HV_YES", false);
                if (!o2.k.m0(strH1) && !o2.k.e0(strH1, "Falha no ADB local", false)) {
                    z2 = false;
                }
                mainActivity10.f1045v.post(new sa(mainActivity10, str10, zE0, z2));
                break;
            case 10:
                MainActivity mainActivity11 = this.f3436c;
                String str11 = this.b;
                int i15 = MainActivity.f1002z1;
                Log.i("KeyServerAtivador", "runKeyServerApply: post na UI, userInitiated=true");
                mainActivity11.f1035q0 = null;
                mainActivity11.f1033p0 = false;
                mainActivity11.t2(str11, 1);
                Log.i("KeyServerAtivador", "runKeyServerApply: Toast.show() chamado");
                mainActivity11.B.execute(new ma(mainActivity11, 15));
                mainActivity11.v1();
                break;
            case 11:
                MainActivity mainActivity12 = this.f3436c;
                String str12 = this.b;
                int i16 = MainActivity.f1002z1;
                mainActivity12.t2(str12, 0);
                break;
            case 12:
                MainActivity mainActivity13 = this.f3436c;
                String str13 = this.b;
                int i17 = MainActivity.f1002z1;
                mainActivity13.getClass();
                mainActivity13.w("Update", MainActivity.v2(16000, str13));
                mainActivity13.Z1(str13);
                mainActivity13.t2(str13, 1);
                break;
            case 13:
                MainActivity mainActivity14 = this.f3436c;
                String str14 = this.b;
                int i18 = MainActivity.f1002z1;
                if (!mainActivity14.isFinishing() && !mainActivity14.isDestroyed()) {
                    if (o2.k.e0(str14, "MONITOR_JA_MONTADO", false) || o2.k.e0(str14, "MONITOR_BIND_OK", false) || o2.k.e0(str14, "MONITOR_JA_PATCHADO_EM_EXECUCAO", false)) {
                        ae aeVar = ae.f3361a;
                        ae.b("CarplayMonitor", "Reiniciar: bind OK", false);
                    } else {
                        if (o2.k.e0(str14, "SEM_MONITOR", false)) {
                            strD0 = mainActivity14.getString(R.string.k_monitor_erro_sem_binario);
                        } else if (o2.k.e0(str14, "MONITOR_MD5_INESPERADO", false)) {
                            strD0 = mainActivity14.getString(R.string.k_monitor_erro_md5_firmware);
                        } else if (o2.k.e0(str14, "PATCH_MD5_ERRADO", false)) {
                            strD0 = mainActivity14.getString(R.string.k_monitor_erro_patch);
                        } else if (o2.k.e0(str14, "CHCON_FALHOU", false)) {
                            strD0 = mainActivity14.getString(R.string.k_monitor_erro_selinux);
                        } else if (o2.k.e0(str14, "MONITOR_BIND_FALHOU", false)) {
                            strD0 = mainActivity14.getString(R.string.k_monitor_erro_bind);
                        } else if (o2.k.m0(str14)) {
                            strD0 = mainActivity14.getString(R.string.k_monitor_erro_sem_resposta);
                        } else {
                            String strV = n2.g.V(new n2.d(new n2.c(o2.k.n0(str14), new ya(6), 2), true, new ya(7)), " | ");
                            strD0 = o2.k.m0(strV) ? o2.k.D0(160, o2.k.E0(str14).toString()) : strV;
                        }
                        i2.g.b(strD0);
                        ae aeVar2 = ae.f3361a;
                        ae.b("CarplayMonitor", "Reiniciar: bind FALHOU — ".concat(strD0), false);
                        if (!mainActivity14.isFinishing() && !mainActivity14.isDestroyed()) {
                            e.h hVar = new e.h(mainActivity14);
                            hVar.g(R.string.k_monitor_bind_erro_titulo);
                            ((e.d) hVar.b).f = mainActivity14.getString(R.string.k_monitor_bind_erro_msg, strD0);
                            hVar.e(android.R.string.ok, null);
                            hVar.h();
                        }
                    }
                    mainActivity14.e1();
                    break;
                }
                break;
            case 14:
                i4 i4Var2 = i4.f3704a;
                String str15 = this.b;
                MainActivity mainActivity15 = this.f3436c;
                if (str15 == null) {
                    int i19 = MainActivity.f1002z1;
                    Map mapX = y1.s.X(new x1.a("caApk", mainActivity15.E()), new x1.a("caMd5", t1.w(mainActivity15.E())));
                    mainActivity15.f1025l0 = true;
                    mainActivity15.O1(false);
                    String string3 = mainActivity15.getString(R.string.k_activating_connadaptor_bind);
                    i2.g.d(string3, "getString(...)");
                    MainActivity.J1(mainActivity15, null, string3, 15000L, 120000, "", mainActivity15.getString(R.string.k_activating), new i9(mapX, i4, mainActivity15), new e9(mainActivity15, i3), false, null, new y2(mainActivity15, 5, mapX), 1024);
                } else {
                    mainActivity15.f1025l0 = false;
                    mainActivity15.D0("", false);
                    mainActivity15.O1(true);
                    mainActivity15.w("Ativar ConnAdaptor", "bloqueado: ".concat(str15));
                    List listU = y1.f.U(new String[]{mainActivity15.getString(R.string.k_connadaptor_pm_missing), mainActivity15.getString(R.string.k_connadaptor_arquivo_outro_modo, mainActivity15.Q("aa"), mainActivity15.Q(mainActivity15.P())), mainActivity15.getString(R.string.k_connadaptor_arquivo_outro_modo, mainActivity15.Q("carplay"), mainActivity15.Q(mainActivity15.P())), mainActivity15.getString(R.string.k_connadaptor_arquivo_outro_modo, mainActivity15.Q("ambos"), mainActivity15.Q(mainActivity15.P())), mainActivity15.getString(R.string.k_connadaptor_arquivo_outra_versao, mainActivity15.S("1111"), mainActivity15.S(mainActivity15.R())), mainActivity15.getString(R.string.k_connadaptor_arquivo_outra_versao, mainActivity15.S("1114"), mainActivity15.S(mainActivity15.R()))});
                    if (listU.isEmpty()) {
                        i4Var = i4.b;
                    } else {
                        Iterator it = listU.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                String str16 = (String) it.next();
                                if (!o2.k.m0(str16) && str15.equals(str16)) {
                                    i4Var = i4Var2;
                                }
                            } else {
                                i4Var = i4.b;
                            }
                        }
                    }
                    if (i4Var != i4Var2) {
                        mainActivity15.t2(str15, 1);
                    } else {
                        e.h hVar2 = new e.h(mainActivity15);
                        String string4 = mainActivity15.getString(R.string.k_connadaptor_update_title);
                        e.d dVar = (e.d) hVar2.b;
                        dVar.f1554d = string4;
                        dVar.f = str15;
                        hVar2.f(mainActivity15.getString(R.string.k_download_connadaptor_btn), new z8(mainActivity15, 26));
                        hVar2.c(mainActivity15.getString(R.string.common_cancel), null);
                        hVar2.h();
                    }
                }
                break;
            case 15:
                MainActivity mainActivity16 = this.f3436c;
                String str17 = this.b;
                int i20 = MainActivity.f1002z1;
                mainActivity16.S1(str17);
                break;
            case 16:
                MainActivity mainActivity17 = this.f3436c;
                String str18 = this.b;
                int i21 = MainActivity.f1002z1;
                mainActivity17.Z1(str18);
                break;
            default:
                MainActivity mainActivity18 = this.f3436c;
                String str19 = this.b;
                int i22 = MainActivity.f1002z1;
                if (!mainActivity18.isFinishing()) {
                    mainActivity18.t2(str19, 0);
                }
                break;
        }
    }

    public /* synthetic */ c9(String str, MainActivity mainActivity, int i3) {
        this.f3435a = i3;
        this.b = str;
        this.f3436c = mainActivity;
    }
}
