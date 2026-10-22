package w0;

import android.content.SharedPreferences;
import android.util.Log;
import android.view.View;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.MainActivity;
import com.ex.auto.R;
import ecarx.xsf.mediacenter.session.PlaybackState;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class w8 implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4434a;
    public final /* synthetic */ MainActivity b;

    public /* synthetic */ w8(MainActivity mainActivity, int i3) {
        this.f4434a = i3;
        this.b = mainActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i3 = this.f4434a;
        int i4 = R.string.k_removing;
        switch (i3) {
            case 0:
                MainActivity mainActivity = this.b;
                if (mainActivity.f1033p0) {
                    androidx.activity.result.b.n(R.string.k_applying, 0, mainActivity, "getString(...)");
                } else if (!mainActivity.o0().getBoolean("keyserver_bind_enabled", false)) {
                    Log.i("KeyServerAtivador", "bindKeyServer(): botão Ativar clicado");
                    if (!mainActivity.o0().getBoolean("keyserver_first_activate_warned", false)) {
                        e.h hVar = new e.h(mainActivity);
                        e.d dVar = (e.d) hVar.b;
                        dVar.f1554d = mainActivity.getString(R.string.k_keyserver_first_activate_title);
                        dVar.f = mainActivity.getString(R.string.k_keyserver_first_activate_message);
                        hVar.f(mainActivity.getString(R.string.common_ok), new z8(mainActivity, 3));
                        hVar.c(mainActivity.getString(R.string.common_cancel), null);
                        hVar.h();
                    } else {
                        mainActivity.I1();
                    }
                } else {
                    mainActivity.f1033p0 = true;
                    mainActivity.f1035q0 = Boolean.FALSE;
                    mainActivity.v1();
                    mainActivity.f1045v.postDelayed(new x8(mainActivity, 22), 60000L);
                    String string = mainActivity.getString(R.string.k_keyserver_deactivating);
                    i2.g.d(string, "getString(...)");
                    MainActivity.J1(mainActivity, null, string, 4000L, 20000, "", mainActivity.getString(R.string.k_keyserver_deactivating), new e9(mainActivity, 4), new e9(mainActivity, 5), false, null, new h9(mainActivity, 6), 1536);
                }
                break;
            case 1:
                MainActivity mainActivity2 = this.b;
                if (!mainActivity2.Z0) {
                    if (!i2.g.a(mainActivity2.X0, Boolean.TRUE)) {
                        e.h hVar2 = new e.h(mainActivity2);
                        String string2 = mainActivity2.getString(R.string.k_rvc_black_bg_title);
                        e.d dVar2 = (e.d) hVar2.b;
                        dVar2.f1554d = string2;
                        dVar2.f = mainActivity2.getString(R.string.k_rvc_black_bg_message);
                        dVar2.f1562m = false;
                        hVar2.c(mainActivity2.getString(R.string.common_cancel), new z8(mainActivity2, 8));
                        hVar2.f(mainActivity2.getString(R.string.common_apply), new z8(mainActivity2, 9));
                        hVar2.h();
                    } else {
                        mainActivity2.o0().edit().putBoolean("rvc_black_bg", false).apply();
                        mainActivity2.Z0 = true;
                        mainActivity2.X0 = Boolean.FALSE;
                        mainActivity2.v1();
                        mainActivity2.P0();
                        String string3 = mainActivity2.getString(R.string.k_rvc_black_bg_disabling);
                        i2.g.d(string3, "getString(...)");
                        mainActivity2.t2(string3, 0);
                        mainActivity2.C.execute(new x8(mainActivity2, 11));
                    }
                    break;
                }
                break;
            case 2:
                MainActivity mainActivity3 = this.b;
                if (!mainActivity3.S) {
                    mainActivity3.o2(mainActivity3.T, mainActivity3.U);
                } else {
                    mainActivity3.V1(false);
                }
                break;
            case 3:
                MainActivity mainActivity4 = this.b;
                int i5 = MainActivity.f1002z1;
                String string4 = mainActivity4.getString(R.string.master_help_screen_title);
                mainActivity4.n2(string4, androidx.activity.result.b.g(string4, "getString(...)", mainActivity4, R.string.master_help_screen_items, "getString(...)"));
                break;
            case 4:
                MainActivity mainActivity5 = this.b;
                int i6 = MainActivity.f1002z1;
                String string5 = mainActivity5.getString(R.string.master_help_notifications_title);
                mainActivity5.n2(string5, androidx.activity.result.b.g(string5, "getString(...)", mainActivity5, R.string.master_help_notifications_items, "getString(...)"));
                break;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                MainActivity mainActivity6 = this.b;
                if (!mainActivity6.f1010d1) {
                    mainActivity6.f1010d1 = true;
                    boolean zA = i2.g.a(mainActivity6.f1008c1, Boolean.TRUE);
                    boolean z2 = !zA;
                    if (!zA) {
                        i4 = R.string.k_applying;
                    }
                    androidx.activity.result.b.n(i4, 0, mainActivity6, "getString(...)");
                    mainActivity6.C.execute(new f9(z2, mainActivity6, 2));
                } else {
                    androidx.activity.result.b.n(R.string.k_applying, 0, mainActivity6, "getString(...)");
                }
                break;
            case MusicClient.TYPE_GESTURE /* 6 */:
                MainActivity mainActivity7 = this.b;
                int i7 = MainActivity.f1002z1;
                String string6 = mainActivity7.getString(R.string.master_help_status_title);
                mainActivity7.n2(string6, androidx.activity.result.b.g(string6, "getString(...)", mainActivity7, R.string.master_help_status_items, "getString(...)"));
                break;
            case PlaybackState.STATE_ERROR /* 7 */:
                MainActivity mainActivity8 = this.b;
                int i8 = MainActivity.f1002z1;
                String string7 = mainActivity8.getString(R.string.master_help_climate_title);
                mainActivity8.n2(string7, androidx.activity.result.b.g(string7, "getString(...)", mainActivity8, R.string.master_help_climate_items, "getString(...)"));
                break;
            case 8:
                MainActivity mainActivity9 = this.b;
                int i9 = MainActivity.f1002z1;
                String string8 = mainActivity9.getString(R.string.master_help_security_title);
                mainActivity9.n2(string8, androidx.activity.result.b.g(string8, "getString(...)", mainActivity9, R.string.master_help_security_items, "getString(...)"));
                break;
            case 9:
                MainActivity mainActivity10 = this.b;
                int i10 = MainActivity.f1002z1;
                String string9 = mainActivity10.getString(R.string.master_pip_nativo);
                mainActivity10.n2(string9, androidx.activity.result.b.g(string9, "getString(...)", mainActivity10, R.string.xml_pip_nativo_help, "getString(...)"));
                break;
            case 10:
                MainActivity mainActivity11 = this.b;
                if (mainActivity11.f1018h1) {
                    androidx.activity.result.b.n(R.string.k_applying, 0, mainActivity11, "getString(...)");
                } else if (!i2.g.a(mainActivity11.f1014f1, Boolean.TRUE)) {
                    mainActivity11.f1018h1 = true;
                    androidx.activity.result.b.n(R.string.k_applying, 0, mainActivity11, "getString(...)");
                    mainActivity11.C.execute(new x8(mainActivity11, 14));
                } else {
                    mainActivity11.o0().edit().putBoolean("gestures_enabled", false).apply();
                    mainActivity11.f1018h1 = true;
                    mainActivity11.f1014f1 = Boolean.FALSE;
                    mainActivity11.l1();
                    String string10 = mainActivity11.getString(R.string.k_removing);
                    i2.g.d(string10, "getString(...)");
                    mainActivity11.t2(string10, 0);
                    mainActivity11.C.execute(new x8(mainActivity11, 13));
                }
                break;
            case 11:
                MainActivity mainActivity12 = this.b;
                int i11 = MainActivity.f1002z1;
                String string11 = mainActivity12.getString(R.string.xml_gestos_rapidos_titulo_curto);
                mainActivity12.n2(string11, androidx.activity.result.b.g(string11, "getString(...)", mainActivity12, R.string.xml_gestos_help_texto, "getString(...)"));
                break;
            case 12:
                MainActivity mainActivity13 = this.b;
                int i12 = MainActivity.f1002z1;
                mainActivity13.r2(mainActivity13.L1(R.id.masterNavInicio));
                break;
            case 13:
                MainActivity mainActivity14 = this.b;
                int i13 = MainActivity.f1002z1;
                String str = "ambos";
                if (!mainActivity14.O()) {
                    mainActivity14.v("ambos");
                    mainActivity14.L0();
                } else {
                    if (mainActivity14.O()) {
                        int i14 = u.f4288a;
                        SharedPreferences sharedPreferencesO0 = mainActivity14.o0();
                        i2.g.d(sharedPreferencesO0, "<get-prefs>(...)");
                        if (u.b(sharedPreferencesO0)) {
                            str = "aa";
                        }
                    }
                    mainActivity14.v(str);
                }
                break;
            case 14:
                MainActivity mainActivity15 = this.b;
                int i15 = MainActivity.f1002z1;
                mainActivity15.B1(R.id.masterAndroidRestart);
                break;
            case 15:
                MainActivity mainActivity16 = this.b;
                int i16 = MainActivity.f1002z1;
                mainActivity16.B1(R.id.masterCarplayRestart);
                break;
            case 16:
                MainActivity mainActivity17 = this.b;
                int i17 = MainActivity.f1002z1;
                mainActivity17.T1(1);
                break;
            case 17:
                MainActivity mainActivity18 = this.b;
                int i18 = MainActivity.f1002z1;
                mainActivity18.T1(2);
                break;
            case 18:
                MainActivity mainActivity19 = this.b;
                int i19 = MainActivity.f1002z1;
                mainActivity19.T1(3);
                break;
            case 19:
                MainActivity mainActivity20 = this.b;
                int i20 = MainActivity.f1002z1;
                mainActivity20.X1(1);
                break;
            case 20:
                MainActivity mainActivity21 = this.b;
                int i21 = MainActivity.f1002z1;
                mainActivity21.X1(2);
                break;
            case 21:
                MainActivity mainActivity22 = this.b;
                int i22 = MainActivity.f1002z1;
                mainActivity22.X1(3);
                break;
            case 22:
                MainActivity mainActivity23 = this.b;
                int i23 = MainActivity.f1002z1;
                mainActivity23.r2(mainActivity23.L1(R.id.masterNavFerramentas));
                break;
            case 23:
                MainActivity mainActivity24 = this.b;
                int i24 = MainActivity.f1002z1;
                mainActivity24.r2(mainActivity24.L1(R.id.masterNavRede));
                break;
            case 24:
                MainActivity mainActivity25 = this.b;
                int i25 = MainActivity.f1002z1;
                mainActivity25.r2(mainActivity25.L1(R.id.masterNavAudio));
                break;
            case 25:
                MainActivity mainActivity26 = this.b;
                int i26 = MainActivity.f1002z1;
                mainActivity26.r2(mainActivity26.L1(R.id.masterNavApps));
                break;
            case 26:
                MainActivity mainActivity27 = this.b;
                int i27 = MainActivity.f1002z1;
                mainActivity27.r2(mainActivity27.L1(R.id.masterNavAtalhos));
                break;
            case 27:
                MainActivity mainActivity28 = this.b;
                int i28 = MainActivity.f1002z1;
                mainActivity28.r2(mainActivity28.L1(R.id.masterNavConfig));
                break;
            case 28:
                MainActivity mainActivity29 = this.b;
                int i29 = MainActivity.f1002z1;
                mainActivity29.m2(7, R.id.masterNavAbout);
                break;
            default:
                MainActivity mainActivity30 = this.b;
                int i30 = MainActivity.f1002z1;
                k1.a.M(mainActivity30);
                break;
        }
    }
}
