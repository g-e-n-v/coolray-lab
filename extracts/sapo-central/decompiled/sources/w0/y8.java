package w0;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListPopupWindow;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.MainActivity;
import com.ex.auto.MasterToggleView;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.R;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class y8 implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4582a;
    public final /* synthetic */ MainActivity b;

    public /* synthetic */ y8(MainActivity mainActivity, int i3) {
        this.f4582a = i3;
        this.b = mainActivity;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:48:0x014d  */
    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        boolean zBooleanValue;
        Locale locale;
        String languageTag;
        Locale locale2;
        MainActivity mainActivity;
        int i3;
        final int i4 = 1;
        final int i5 = 0;
        switch (this.f4582a) {
            case 0:
                MainActivity mainActivity2 = this.b;
                int i6 = MainActivity.f1002z1;
                if (mainActivity2.O()) {
                    int i7 = u.f4288a;
                    SharedPreferences sharedPreferencesO0 = mainActivity2.o0();
                    i2.g.d(sharedPreferencesO0, "<get-prefs>(...)");
                    if (u.a(sharedPreferencesO0) && mainActivity2.O()) {
                        SharedPreferences sharedPreferencesO1 = mainActivity2.o0();
                        i2.g.d(sharedPreferencesO1, "<get-prefs>(...)");
                        if (u.b(sharedPreferencesO1)) {
                            e.h hVar = new e.h(mainActivity2);
                            e.d dVar = (e.d) hVar.b;
                            dVar.f1554d = mainActivity2.getString(R.string.master_aa_off_title);
                            dVar.f = mainActivity2.getString(R.string.master_aa_off_msg);
                            hVar.b(R.string.common_cancel, null);
                            hVar.e(android.R.string.ok, new z8(mainActivity2, 4));
                            hVar.h();
                        }
                    }
                }
                mainActivity2.L0();
                break;
            case 1:
                MainActivity mainActivity3 = this.b;
                int i8 = MainActivity.f1002z1;
                mainActivity3.U1("light");
                break;
            case 2:
                MainActivity mainActivity4 = this.b;
                Boolean bool = mainActivity4.K0;
                if (bool != null) {
                    zBooleanValue = bool.booleanValue();
                } else {
                    SharedPreferences sharedPreferencesO2 = mainActivity4.o0();
                    i2.g.d(sharedPreferencesO2, "<get-prefs>(...)");
                    zBooleanValue = sharedPreferencesO2.getBoolean("ttl_65_ativo", false);
                }
                boolean z2 = !zBooleanValue;
                if (!mainActivity4.L0) {
                    mainActivity4.L0 = true;
                    mainActivity4.C.execute(new f9(mainActivity4, z2, 4));
                    break;
                }
                break;
            case 3:
                MainActivity mainActivity5 = this.b;
                int i9 = MainActivity.f1002z1;
                mainActivity5.getClass();
                mainActivity5.startActivity(new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + mainActivity5.getPackageName())));
                break;
            case 4:
                final MainActivity mainActivity6 = this.b;
                int i10 = MainActivity.f1002z1;
                final boolean z3 = mainActivity6.o0().getBoolean("silence_tbox_log", false);
                final boolean z4 = !z3;
                mainActivity6.o0().edit().putBoolean("silence_tbox_log", z4).apply();
                ((MasterToggleView) mainActivity6.findViewById(R.id.masterConfigSilenceTboxSwitch)).setActive(z4);
                int[] iArr = CentralWatchdogService.S2;
                t1.V("silence_tbox_log", new h2.l() { // from class: w0.o9
                    @Override // h2.l
                    public final Object c(Object obj) {
                        int i11 = i5;
                        boolean z5 = z3;
                        boolean z6 = z4;
                        MainActivity mainActivity7 = mainActivity6;
                        boolean zBooleanValue2 = ((Boolean) obj).booleanValue();
                        switch (i11) {
                            case 0:
                                int i12 = MainActivity.f1002z1;
                                if (!mainActivity7.isFinishing() && !mainActivity7.isDestroyed()) {
                                    if (zBooleanValue2) {
                                        androidx.activity.result.b.n(z6 ? R.string.k_tbox_silenced : R.string.k_tbox_normal, 0, mainActivity7, "getString(...)");
                                    } else {
                                        mainActivity7.o0().edit().putBoolean("silence_tbox_log", z5).apply();
                                        ((MasterToggleView) mainActivity7.findViewById(R.id.masterConfigSilenceTboxSwitch)).setActive(z5);
                                        String string = mainActivity7.getString(R.string.k_tbox_apply_failed);
                                        i2.g.d(string, "getString(...)");
                                        mainActivity7.t2(string, 1);
                                    }
                                }
                                break;
                            default:
                                int i13 = MainActivity.f1002z1;
                                if (!mainActivity7.isFinishing() && !mainActivity7.isDestroyed()) {
                                    if (zBooleanValue2) {
                                        androidx.activity.result.b.n(z6 ? R.string.k_avm_silenced : R.string.k_avm_normal, 0, mainActivity7, "getString(...)");
                                    } else {
                                        mainActivity7.o0().edit().putBoolean("silence_avm_log", z5).apply();
                                        ((MasterToggleView) mainActivity7.findViewById(R.id.masterConfigSilenceAvmSwitch)).setActive(z5);
                                        String string2 = mainActivity7.getString(R.string.k_tbox_apply_failed);
                                        i2.g.d(string2, "getString(...)");
                                        mainActivity7.t2(string2, 1);
                                    }
                                }
                                break;
                        }
                        return x1.e.f4647c;
                    }
                });
                break;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                final MainActivity mainActivity7 = this.b;
                int i11 = MainActivity.f1002z1;
                final boolean z5 = mainActivity7.o0().getBoolean("silence_avm_log", false);
                final boolean z6 = !z5;
                mainActivity7.o0().edit().putBoolean("silence_avm_log", z6).apply();
                ((MasterToggleView) mainActivity7.findViewById(R.id.masterConfigSilenceAvmSwitch)).setActive(z6);
                int[] iArr2 = CentralWatchdogService.S2;
                t1.V("silence_avm_log", new h2.l() { // from class: w0.o9
                    @Override // h2.l
                    public final Object c(Object obj) {
                        int i12 = i4;
                        boolean z7 = z5;
                        boolean z8 = z6;
                        MainActivity mainActivity8 = mainActivity7;
                        boolean zBooleanValue2 = ((Boolean) obj).booleanValue();
                        switch (i12) {
                            case 0:
                                int i13 = MainActivity.f1002z1;
                                if (!mainActivity8.isFinishing() && !mainActivity8.isDestroyed()) {
                                    if (zBooleanValue2) {
                                        androidx.activity.result.b.n(z8 ? R.string.k_tbox_silenced : R.string.k_tbox_normal, 0, mainActivity8, "getString(...)");
                                    } else {
                                        mainActivity8.o0().edit().putBoolean("silence_tbox_log", z7).apply();
                                        ((MasterToggleView) mainActivity8.findViewById(R.id.masterConfigSilenceTboxSwitch)).setActive(z7);
                                        String string = mainActivity8.getString(R.string.k_tbox_apply_failed);
                                        i2.g.d(string, "getString(...)");
                                        mainActivity8.t2(string, 1);
                                    }
                                }
                                break;
                            default:
                                int i14 = MainActivity.f1002z1;
                                if (!mainActivity8.isFinishing() && !mainActivity8.isDestroyed()) {
                                    if (zBooleanValue2) {
                                        androidx.activity.result.b.n(z8 ? R.string.k_avm_silenced : R.string.k_avm_normal, 0, mainActivity8, "getString(...)");
                                    } else {
                                        mainActivity8.o0().edit().putBoolean("silence_avm_log", z7).apply();
                                        ((MasterToggleView) mainActivity8.findViewById(R.id.masterConfigSilenceAvmSwitch)).setActive(z7);
                                        String string2 = mainActivity8.getString(R.string.k_tbox_apply_failed);
                                        i2.g.d(string2, "getString(...)");
                                        mainActivity8.t2(string2, 1);
                                    }
                                }
                                break;
                        }
                        return x1.e.f4647c;
                    }
                });
                break;
            case MusicClient.TYPE_GESTURE /* 6 */:
                MainActivity mainActivity8 = this.b;
                int i12 = MainActivity.f1002z1;
                String string = mainActivity8.getString(R.string.master_help_preferences_title);
                mainActivity8.n2(string, androidx.activity.result.b.g(string, "getString(...)", mainActivity8, R.string.master_help_preferences_items, "getString(...)"));
                break;
            case PlaybackState.STATE_ERROR /* 7 */:
                MainActivity mainActivity9 = this.b;
                int i13 = MainActivity.f1002z1;
                mainActivity9.U1("dark");
                break;
            case 8:
                MainActivity mainActivity10 = this.b;
                int i14 = MainActivity.f1002z1;
                String string2 = mainActivity10.getString(R.string.master_help_updates_title);
                mainActivity10.n2(string2, androidx.activity.result.b.g(string2, "getString(...)", mainActivity10, R.string.master_help_updates_items, "getString(...)"));
                break;
            case 9:
                MainActivity mainActivity11 = this.b;
                int i15 = MainActivity.f1002z1;
                String string3 = mainActivity11.getString(R.string.master_help_system_title);
                mainActivity11.n2(string3, androidx.activity.result.b.g(string3, "getString(...)", mainActivity11, R.string.master_help_system_items, "getString(...)"));
                break;
            case 10:
                MainActivity mainActivity12 = this.b;
                int i16 = MainActivity.f1002z1;
                mainActivity12.U1("auto");
                break;
            case 11:
                final MainActivity mainActivity13 = this.b;
                int i17 = MainActivity.f1002z1;
                String[] strArr = {mainActivity13.getString(R.string.master_language_portuguese), mainActivity13.getString(R.string.master_language_spanish), mainActivity13.getString(R.string.master_language_russian), mainActivity13.getString(R.string.master_language_vietnamese), mainActivity13.getString(R.string.master_language_thai), mainActivity13.getString(R.string.master_language_english)};
                final String[] strArr2 = {"pt-BR", "es-CL", "ru-RU", "vi-VN", "th-TH", "en-US"};
                View viewFindViewById = mainActivity13.findViewById(R.id.masterConfigLanguageSelector);
                final ListPopupWindow listPopupWindow = new ListPopupWindow(mainActivity13);
                listPopupWindow.setAnchorView(viewFindViewById);
                listPopupWindow.setWidth(viewFindViewById.getLayoutParams().width);
                listPopupWindow.setModal(true);
                listPopupWindow.setBackgroundDrawable(mainActivity13.getDrawable(R.drawable.bg_master_help_dialog));
                ArrayList arrayList = new ArrayList(6);
                int i18 = 0;
                int i19 = 0;
                while (i18 < 6) {
                    String str = strArr[i18];
                    int i20 = i19 + 1;
                    y.e eVarC = e.o.c();
                    i2.g.d(eVarC, "getApplicationLocales(...)");
                    String str2 = "pt-BR";
                    if (eVarC.b() ? !((locale = mainActivity13.getResources().getConfiguration().getLocales().get(0)) == null || (languageTag = locale.toLanguageTag()) == null) : !((locale2 = eVarC.f4652a.f4653a.get(0)) == null || (languageTag = locale2.toLanguageTag()) == null)) {
                        str2 = languageTag;
                    }
                    String str3 = new String[]{"pt", "es", "ru", "vi", "th", "en"}[i19];
                    i2.g.d(str3, "get(...)");
                    StringBuilder sb = o2.t.d0(str2, str3) ? new StringBuilder("✓   ") : new StringBuilder("     ");
                    sb.append(str);
                    arrayList.add(sb.toString());
                    i18++;
                    i19 = i20;
                }
                listPopupWindow.setAdapter(new ArrayAdapter(mainActivity13, R.layout.item_master_spinner, arrayList));
                listPopupWindow.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: w0.x9
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public final void onItemClick(AdapterView adapterView, View view2, int i21, long j3) {
                        int i22 = MainActivity.f1002z1;
                        listPopupWindow.dismiss();
                        String str4 = strArr2[i21];
                        i2.g.d(str4, "get(...)");
                        MainActivity mainActivity14 = mainActivity13;
                        mainActivity14.getClass();
                        e.o.m(y.e.a(str4));
                        mainActivity14.o0().edit().putString("app_language_tag", str4).apply();
                    }
                });
                listPopupWindow.show();
                break;
            case 12:
                MainActivity mainActivity14 = this.b;
                int i21 = MainActivity.f1002z1;
                mainActivity14.R0("1114");
                break;
            case 13:
                MainActivity mainActivity15 = this.b;
                int i22 = MainActivity.f1002z1;
                String string4 = mainActivity15.getString(R.string.master_help_wifi_title);
                mainActivity15.n2(string4, androidx.activity.result.b.g(string4, "getString(...)", mainActivity15, R.string.master_help_wifi_items, "getString(...)"));
                break;
            case 14:
                MainActivity mainActivity16 = this.b;
                int i23 = MainActivity.f1002z1;
                String string5 = mainActivity16.getString(R.string.master_help_android_title);
                mainActivity16.n2(string5, androidx.activity.result.b.g(string5, "getString(...)", mainActivity16, R.string.master_help_android_items, "getString(...)"));
                break;
            case 15:
                MainActivity mainActivity17 = this.b;
                MainActivity.Q0(mainActivity17, "aa");
                mainActivity17.f1045v.postDelayed(new x8(mainActivity17, 16), 150L);
                break;
            case 16:
                MainActivity mainActivity18 = this.b;
                MainActivity.Q0(mainActivity18, "ambos");
                mainActivity18.f1045v.postDelayed(new x8(mainActivity18, 16), 150L);
                break;
            case 17:
                MainActivity mainActivity19 = this.b;
                int i24 = MainActivity.f1002z1;
                mainActivity19.R0("1111");
                break;
            case 18:
                MainActivity mainActivity20 = this.b;
                int i25 = MainActivity.f1002z1;
                String string6 = mainActivity20.getString(R.string.master_help_lock_sound_title);
                mainActivity20.n2(string6, androidx.activity.result.b.g(string6, "getString(...)", mainActivity20, R.string.master_help_lock_sound_items, "getString(...)"));
                break;
            case 19:
                MainActivity mainActivity21 = this.b;
                int i26 = MainActivity.f1002z1;
                String string7 = mainActivity21.getString(R.string.master_help_avas_title);
                mainActivity21.n2(string7, androidx.activity.result.b.g(string7, "getString(...)", mainActivity21, R.string.master_help_avas_items, "getString(...)"));
                break;
            case 20:
                MainActivity mainActivity22 = this.b;
                int i27 = MainActivity.f1002z1;
                String string8 = mainActivity22.getString(R.string.master_help_media_title);
                mainActivity22.n2(string8, androidx.activity.result.b.g(string8, "getString(...)", mainActivity22, R.string.master_help_media_items, "getString(...)"));
                break;
            case 21:
                final MainActivity mainActivity23 = this.b;
                int i28 = MainActivity.f1002z1;
                mainActivity23.o0().edit().putString("master_carlock_apply_mode", "reboot").apply();
                final String str4 = (String) y1.g.c0(mainActivity23.D, mainActivity23.f1007c0);
                if (str4 == null) {
                    androidx.activity.result.b.n(R.string.k_refresh_list_choose_wav, 0, mainActivity23, "getString(...)");
                } else {
                    final i2.j jVar = new i2.j();
                    String string9 = mainActivity23.getString(R.string.k_applying_bind_named, o2.k.z0(str4, '/'));
                    i2.g.d(string9, "getString(...)");
                    final h0 h0VarU2 = mainActivity23.u2(25000L, R.id.masterAudioLockApplyReboot, R.id.masterAudioLockApplyPersistent, R.id.masterAudioLockRestore, R.id.masterAudioLockDelete);
                    MainActivity.J1(mainActivity23, null, string9, 5000L, 20000, "", string9, null, new h2.l() { // from class: w0.ha
                        @Override // h2.l
                        public final Object c(Object obj) {
                            int i29 = i5;
                            int i30 = R.string.k_not_completed_see_log;
                            i2.j jVar2 = jVar;
                            MainActivity mainActivity24 = mainActivity23;
                            h0 h0Var = h0VarU2;
                            switch (i29) {
                                case 0:
                                    String str5 = (String) obj;
                                    int i31 = MainActivity.f1002z1;
                                    i2.g.e(str5, "result");
                                    h0Var.a();
                                    if (!mainActivity24.isFinishing()) {
                                        boolean z7 = jVar2.f2289a;
                                        if (z7) {
                                            i30 = R.string.k_completed;
                                        }
                                        String string10 = mainActivity24.getString(i30);
                                        i2.g.d(string10, "getString(...)");
                                        mainActivity24.t2(string10, 0);
                                        e.h hVar2 = new e.h(mainActivity24);
                                        e.d dVar2 = (e.d) hVar2.b;
                                        dVar2.f1554d = z7 ? mainActivity24.getString(R.string.k_sound_applied_title) : mainActivity24.getString(R.string.k_sound_apply_error_title);
                                        dVar2.f = z7 ? mainActivity24.getString(R.string.k_sound_applied_message) : mainActivity24.getString(R.string.k_bind_apply_failed, o2.k.D0(300, str5));
                                        hVar2.f(mainActivity24.getString(R.string.common_ok), null);
                                        hVar2.h();
                                        if (z7) {
                                            MainActivity.h1(mainActivity24);
                                        }
                                    }
                                    break;
                                default:
                                    String str6 = (String) obj;
                                    int i32 = MainActivity.f1002z1;
                                    i2.g.e(str6, "result");
                                    h0Var.a();
                                    if (!mainActivity24.isFinishing()) {
                                        boolean z8 = jVar2.f2289a;
                                        if (z8) {
                                            i30 = R.string.k_completed;
                                        }
                                        String string11 = mainActivity24.getString(i30);
                                        i2.g.d(string11, "getString(...)");
                                        mainActivity24.t2(string11, 0);
                                        e.h hVar3 = new e.h(mainActivity24);
                                        e.d dVar3 = (e.d) hVar3.b;
                                        dVar3.f1554d = z8 ? mainActivity24.getString(R.string.k_sound_applied_title) : mainActivity24.getString(R.string.k_sound_apply_error_title);
                                        dVar3.f = z8 ? mainActivity24.getString(R.string.k_sound_applied_persist_message) : mainActivity24.getString(R.string.k_bind_apply_failed, o2.k.D0(300, str6));
                                        hVar3.f(mainActivity24.getString(R.string.common_ok), null);
                                        hVar3.h();
                                        if (z8) {
                                            MainActivity.h1(mainActivity24);
                                        }
                                    }
                                    break;
                            }
                            return x1.e.f4647c;
                        }
                    }, false, null, new h2.a() { // from class: w0.ia
                        @Override // h2.a
                        public final Object a() {
                            int i29 = i5;
                            String str5 = str4;
                            MainActivity mainActivity24 = mainActivity23;
                            i2.j jVar2 = jVar;
                            switch (i29) {
                                case 0:
                                    int i30 = MainActivity.f1002z1;
                                    qe qeVar = qe.f4124a;
                                    boolean zE = qe.e(mainActivity24, "audio.aplicarSomTrava", y1.s.W(new x1.a("wav", str5)), 8);
                                    jVar2.f2289a = zE;
                                    return zE ? "exit_code=0" : "ERROR: sem playbook — sincronize a central uma vez";
                                default:
                                    int i31 = MainActivity.f1002z1;
                                    qe qeVar2 = qe.f4124a;
                                    boolean zE2 = qe.e(mainActivity24, "audio.aplicarSomTravaPersistente", y1.s.W(new x1.a("wav", str5)), 8);
                                    jVar2.f2289a = zE2;
                                    return zE2 ? "exit_code=0" : "ERROR: sem playbook — sincronize a central uma vez";
                            }
                        }
                    }, 1664);
                }
                mainActivity23.p1();
                break;
            case 22:
                final MainActivity mainActivity24 = this.b;
                int i29 = MainActivity.f1002z1;
                mainActivity24.o0().edit().putString("master_carlock_apply_mode", "persistent").apply();
                final String str5 = (String) y1.g.c0(mainActivity24.D, mainActivity24.f1007c0);
                if (str5 == null) {
                    androidx.activity.result.b.n(R.string.k_refresh_list_choose_wav, 0, mainActivity24, "getString(...)");
                    mainActivity = mainActivity24;
                } else {
                    final i2.j jVar2 = new i2.j();
                    String string10 = mainActivity24.getString(R.string.k_applying_persist_named, o2.k.z0(str5, '/'));
                    i2.g.d(string10, "getString(...)");
                    final h0 h0VarU3 = mainActivity24.u2(20000L, R.id.masterAudioLockApplyReboot, R.id.masterAudioLockApplyPersistent, R.id.masterAudioLockRestore, R.id.masterAudioLockDelete);
                    mainActivity = mainActivity24;
                    MainActivity.J1(mainActivity, null, string10, 5000L, 15000, "", string10, null, new h2.l() { // from class: w0.ha
                        @Override // h2.l
                        public final Object c(Object obj) {
                            int i210 = i4;
                            int i30 = R.string.k_not_completed_see_log;
                            i2.j jVar3 = jVar2;
                            MainActivity mainActivity25 = mainActivity24;
                            h0 h0Var = h0VarU3;
                            switch (i210) {
                                case 0:
                                    String str6 = (String) obj;
                                    int i31 = MainActivity.f1002z1;
                                    i2.g.e(str6, "result");
                                    h0Var.a();
                                    if (!mainActivity25.isFinishing()) {
                                        boolean z7 = jVar3.f2289a;
                                        if (z7) {
                                            i30 = R.string.k_completed;
                                        }
                                        String string11 = mainActivity25.getString(i30);
                                        i2.g.d(string11, "getString(...)");
                                        mainActivity25.t2(string11, 0);
                                        e.h hVar2 = new e.h(mainActivity25);
                                        e.d dVar2 = (e.d) hVar2.b;
                                        dVar2.f1554d = z7 ? mainActivity25.getString(R.string.k_sound_applied_title) : mainActivity25.getString(R.string.k_sound_apply_error_title);
                                        dVar2.f = z7 ? mainActivity25.getString(R.string.k_sound_applied_message) : mainActivity25.getString(R.string.k_bind_apply_failed, o2.k.D0(300, str6));
                                        hVar2.f(mainActivity25.getString(R.string.common_ok), null);
                                        hVar2.h();
                                        if (z7) {
                                            MainActivity.h1(mainActivity25);
                                        }
                                    }
                                    break;
                                default:
                                    String str7 = (String) obj;
                                    int i32 = MainActivity.f1002z1;
                                    i2.g.e(str7, "result");
                                    h0Var.a();
                                    if (!mainActivity25.isFinishing()) {
                                        boolean z8 = jVar3.f2289a;
                                        if (z8) {
                                            i30 = R.string.k_completed;
                                        }
                                        String string12 = mainActivity25.getString(i30);
                                        i2.g.d(string12, "getString(...)");
                                        mainActivity25.t2(string12, 0);
                                        e.h hVar3 = new e.h(mainActivity25);
                                        e.d dVar3 = (e.d) hVar3.b;
                                        dVar3.f1554d = z8 ? mainActivity25.getString(R.string.k_sound_applied_title) : mainActivity25.getString(R.string.k_sound_apply_error_title);
                                        dVar3.f = z8 ? mainActivity25.getString(R.string.k_sound_applied_persist_message) : mainActivity25.getString(R.string.k_bind_apply_failed, o2.k.D0(300, str7));
                                        hVar3.f(mainActivity25.getString(R.string.common_ok), null);
                                        hVar3.h();
                                        if (z8) {
                                            MainActivity.h1(mainActivity25);
                                        }
                                    }
                                    break;
                            }
                            return x1.e.f4647c;
                        }
                    }, false, null, new h2.a() { // from class: w0.ia
                        @Override // h2.a
                        public final Object a() {
                            int i210 = i4;
                            String str6 = str5;
                            MainActivity mainActivity25 = mainActivity24;
                            i2.j jVar3 = jVar2;
                            switch (i210) {
                                case 0:
                                    int i30 = MainActivity.f1002z1;
                                    qe qeVar = qe.f4124a;
                                    boolean zE = qe.e(mainActivity25, "audio.aplicarSomTrava", y1.s.W(new x1.a("wav", str6)), 8);
                                    jVar3.f2289a = zE;
                                    return zE ? "exit_code=0" : "ERROR: sem playbook — sincronize a central uma vez";
                                default:
                                    int i31 = MainActivity.f1002z1;
                                    qe qeVar2 = qe.f4124a;
                                    boolean zE2 = qe.e(mainActivity25, "audio.aplicarSomTravaPersistente", y1.s.W(new x1.a("wav", str6)), 8);
                                    jVar3.f2289a = zE2;
                                    return zE2 ? "exit_code=0" : "ERROR: sem playbook — sincronize a central uma vez";
                            }
                        }
                    }, 1664);
                }
                mainActivity.p1();
                break;
            case 23:
                MainActivity mainActivity25 = this.b;
                int i30 = MainActivity.f1002z1;
                try {
                    mainActivity25.B.execute(new x8(mainActivity25, 12));
                } catch (RejectedExecutionException unused) {
                    return;
                }
                break;
            case 24:
                MainActivity mainActivity26 = this.b;
                int i31 = MainActivity.f1002z1;
                List list = jh.f3773a;
                ArrayList arrayList2 = new ArrayList(y1.i.X(list));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    switch ((String) it.next()) {
                        case "banco_motorista":
                            i3 = R.string.k_widget_lbl_heat_seat_driver;
                            break;
                        case "volante":
                            i3 = R.string.k_widget_lbl_heat_wheel;
                            break;
                        case "vidro_max":
                            i3 = R.string.k_widget_lbl_heat_front_max;
                            break;
                        case "parabrisa":
                            i3 = R.string.k_widget_lbl_heat_windshield;
                            break;
                        case "vidro_traseiro":
                            i3 = R.string.k_widget_lbl_rear_defrost;
                            break;
                        default:
                            i3 = R.string.k_widget_lbl_heat_seat_passenger;
                            break;
                    }
                    arrayList2.add(mainActivity26.getString(i3));
                }
                String[] strArr3 = (String[]) arrayList2.toArray(new String[0]);
                Set setA = jh.a(mainActivity26.o0().getString("widget_heating_icons", null));
                int size = list.size();
                final boolean[] zArr = new boolean[size];
                while (i5 < size) {
                    zArr[i5] = setA.contains(list.get(i5));
                    i5++;
                }
                e.h hVar2 = new e.h(mainActivity26);
                String string11 = mainActivity26.getString(R.string.k_widget_heating_pick_title);
                e.d dVar2 = (e.d) hVar2.b;
                dVar2.f1554d = string11;
                DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener = new DialogInterface.OnMultiChoiceClickListener() { // from class: w0.ca
                    @Override // android.content.DialogInterface.OnMultiChoiceClickListener
                    public final void onClick(DialogInterface dialogInterface, int i32, boolean z7) {
                        int i33 = MainActivity.f1002z1;
                        zArr[i32] = z7;
                    }
                };
                dVar2.f1565p = strArr3;
                dVar2.f1573x = onMultiChoiceClickListener;
                dVar2.f1569t = zArr;
                dVar2.f1570u = true;
                hVar2.f(mainActivity26.getString(R.string.k_ac_edit_save), new e(list, mainActivity26, zArr, 1));
                hVar2.c(mainActivity26.getString(R.string.common_cancel), null);
                hVar2.h();
                break;
            case 25:
                MainActivity mainActivity27 = this.b;
                int i32 = MainActivity.f1002z1;
                boolean z7 = true ^ mainActivity27.o0().getBoolean("widgets_poslock_all", false);
                mainActivity27.o0().edit().putBoolean("widgets_poslock_all", z7).apply();
                ((MasterToggleView) mainActivity27.findViewById(R.id.masterWidgetsLockSwitch)).setActive(z7);
                break;
            case 26:
                MainActivity mainActivity28 = this.b;
                int i33 = MainActivity.f1002z1;
                boolean z8 = mainActivity28.o0().getBoolean("quick_access_enabled", false);
                mainActivity28.o0().edit().putBoolean("quick_access_enabled", !z8).apply();
                if (!z8) {
                    mainActivity28.startService(new Intent(mainActivity28, (Class<?>) QuickAccessFloaterService.class));
                } else if (!mainActivity28.o0().getBoolean("gestures_enabled", false)) {
                    mainActivity28.stopService(new Intent(mainActivity28, (Class<?>) QuickAccessFloaterService.class));
                }
                int i34 = QuickAccessFloaterService.t0;
                QuickAccessFloaterService quickAccessFloaterService = QuickAccessFloaterService.x0;
                if (quickAccessFloaterService != null) {
                    quickAccessFloaterService.f1134a.post(new ve(17, quickAccessFloaterService));
                }
                mainActivity28.u1();
                break;
            case 27:
                MainActivity mainActivity29 = this.b;
                int i35 = MainActivity.f1002z1;
                String string12 = mainActivity29.getString(R.string.master_help_quickbar_title);
                mainActivity29.n2(string12, androidx.activity.result.b.g(string12, "getString(...)", mainActivity29, R.string.master_help_quickbar_items, "getString(...)"));
                break;
            case 28:
                MainActivity mainActivity30 = this.b;
                int i36 = MainActivity.f1002z1;
                String string13 = mainActivity30.getString(R.string.master_help_widgets_title);
                mainActivity30.n2(string13, androidx.activity.result.b.g(string13, "getString(...)", mainActivity30, R.string.master_help_widgets_items, "getString(...)"));
                break;
            default:
                MainActivity mainActivity31 = this.b;
                int i37 = MainActivity.f1002z1;
                String string14 = mainActivity31.getString(R.string.master_help_installer_title);
                mainActivity31.n2(string14, androidx.activity.result.b.g(string14, "getString(...)", mainActivity31, R.string.master_help_installer_items, "getString(...)"));
                break;
        }
    }
}
