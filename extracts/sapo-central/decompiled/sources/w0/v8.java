package w0;

import android.car.hardware.property.CarPropertyManager;
import android.content.Intent;
import android.graphics.Typeface;
import android.widget.ScrollView;
import android.widget.TextView;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.AcProgramListActivity;
import com.ex.auto.AppPipFloaterService;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.FavoriteAppsActivity;
import com.ex.auto.MainActivity;
import com.ex.auto.R;
import com.ex.auto.SplitFloaterService;
import com.ex.auto.TempBattPillFloaterService;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class v8 implements h2.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4386a;
    public final /* synthetic */ MainActivity b;

    public /* synthetic */ v8(MainActivity mainActivity, int i3) {
        this.f4386a = i3;
        this.b = mainActivity;
    }

    @Override // h2.a
    public final Object a() {
        String string;
        switch (this.f4386a) {
            case 0:
                MainActivity mainActivity = this.b;
                int i3 = MainActivity.f1002z1;
                mainActivity.getSharedPreferences("temp_batt_pill_prefs", 0).edit().putBoolean("pill_text_white", true).apply();
                TempBattPillFloaterService tempBattPillFloaterService = TempBattPillFloaterService.f1198v;
                TempBattPillFloaterService tempBattPillFloaterService2 = TempBattPillFloaterService.f1198v;
                if (tempBattPillFloaterService2 != null) {
                    tempBattPillFloaterService2.c(true);
                }
                return x1.e.f4647c;
            case 1:
                MainActivity mainActivity2 = this.b;
                int i4 = MainActivity.f1002z1;
                mainActivity2.getSharedPreferences("temp_batt_pill_prefs", 0).edit().putBoolean("pill_text_white", false).apply();
                TempBattPillFloaterService tempBattPillFloaterService3 = TempBattPillFloaterService.f1198v;
                TempBattPillFloaterService tempBattPillFloaterService4 = TempBattPillFloaterService.f1198v;
                if (tempBattPillFloaterService4 != null) {
                    tempBattPillFloaterService4.c(false);
                }
                return x1.e.f4647c;
            case 2:
                MainActivity mainActivity3 = this.b;
                int i5 = MainActivity.f1002z1;
                mainActivity3.startActivity(new Intent(mainActivity3, (Class<?>) AcProgramListActivity.class));
                return x1.e.f4647c;
            case 3:
                MainActivity mainActivity4 = this.b;
                int i6 = MainActivity.f1002z1;
                return Boolean.valueOf(mainActivity4.o0().getBoolean("rear_cam_turn_signal_enabled", false));
            case 4:
                MainActivity mainActivity5 = this.b;
                int i7 = MainActivity.f1002z1;
                boolean z2 = mainActivity5.o0().getBoolean("rear_cam_hold_open_5s", false);
                mainActivity5.o0().edit().putBoolean("rear_cam_hold_open_5s", !z2).apply();
                mainActivity5.v1();
                String string2 = mainActivity5.getString(!z2 ? R.string.k_rear_cam_pip_hold_5s_on : R.string.k_rear_cam_pip_hold_5s_off);
                i2.g.b(string2);
                mainActivity5.t2(string2, 0);
                return x1.e.f4647c;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                MainActivity mainActivity6 = this.b;
                int i8 = MainActivity.f1002z1;
                return new p3(new l9(mainActivity6, 0), new e9(mainActivity6, 1), new h9(mainActivity6, 3), new h9(mainActivity6, 4));
            case MusicClient.TYPE_GESTURE /* 6 */:
                MainActivity mainActivity7 = this.b;
                int i9 = MainActivity.f1002z1;
                return Boolean.valueOf(mainActivity7.o0().getBoolean("aeb_desired", mainActivity7.o0().getBoolean("aeb_state_saved", false)));
            case PlaybackState.STATE_ERROR /* 7 */:
                MainActivity mainActivity8 = this.b;
                int i10 = MainActivity.f1002z1;
                if (mainActivity8.o0().getBoolean("aeb_restore_on_boot", false)) {
                    mainActivity8.o0().edit().putBoolean("aeb_restore_on_boot", false).apply();
                    mainActivity8.v1();
                    int[] iArr = CentralWatchdogService.S2;
                    CentralWatchdogService centralWatchdogService = CentralWatchdogService.V2;
                    if (centralWatchdogService != null) {
                        centralWatchdogService.f811a.post(new v2(centralWatchdogService, 7));
                    }
                } else {
                    e.h hVar = new e.h(mainActivity8);
                    e.d dVar = (e.d) hVar.b;
                    dVar.f1554d = mainActivity8.getString(R.string.k_aeb_reapply_on_title);
                    dVar.f = mainActivity8.getString(R.string.k_aeb_explanation) + "\n\n" + mainActivity8.getString(R.string.k_aeb_reapply_on_msg) + "\n\n" + mainActivity8.getString(R.string.k_use_responsibly_message);
                    hVar.f(mainActivity8.getString(R.string.common_confirm), new z8(mainActivity8, 16));
                    hVar.c(mainActivity8.getString(R.string.common_cancel), null);
                    TextView textView = (TextView) hVar.h().findViewById(android.R.id.message);
                    if (textView != null) {
                        textView.setTextColor(-1);
                    }
                }
                return x1.e.f4647c;
            case 8:
                MainActivity mainActivity9 = this.b;
                Boolean bool = mainActivity9.f1055z0;
                return Boolean.valueOf(bool != null ? bool.booleanValue() : mainActivity9.o0().getBoolean("speed_auto_lock_enabled", true));
            case 9:
                MainActivity mainActivity10 = this.b;
                int i11 = MainActivity.f1002z1;
                mainActivity10.startActivity(new Intent(mainActivity10, (Class<?>) FavoriteAppsActivity.class));
                return x1.e.f4647c;
            case 10:
                MainActivity mainActivity11 = this.b;
                int i12 = MainActivity.f1002z1;
                boolean z3 = !mainActivity11.o0().getBoolean("gestures_ac_swipe_single_step", false);
                mainActivity11.o0().edit().putBoolean("gestures_ac_swipe_single_step", z3).apply();
                mainActivity11.c1();
                mainActivity11.f1048w.execute(new f9(z3, mainActivity11, 3));
                return x1.e.f4647c;
            case 11:
                MainActivity mainActivity12 = this.b;
                int i13 = MainActivity.f1002z1;
                SplitFloaterService splitFloaterService = SplitFloaterService.f1178v;
                if (SplitFloaterService.f1178v != null) {
                    SplitFloaterService splitFloaterService2 = SplitFloaterService.f1178v;
                    if (splitFloaterService2 == null) {
                        mainActivity12.stopService(new Intent(mainActivity12, (Class<?>) SplitFloaterService.class));
                    } else {
                        mg mgVar = splitFloaterService2.f1186j;
                        mg mgVar2 = splitFloaterService2.f1187k;
                        if (mgVar == null && mgVar2 == null) {
                            splitFloaterService2.stopSelf();
                        } else {
                            splitFloaterService2.f1191o = true;
                            splitFloaterService2.h();
                            new Thread(new hg(mgVar2, splitFloaterService2, mgVar, 0)).start();
                        }
                    }
                    androidx.activity.result.b.n(R.string.k_split_screen_disabled, 0, mainActivity12, "getString(...)");
                } else {
                    mainActivity12.startForegroundService(new Intent(mainActivity12, (Class<?>) SplitFloaterService.class));
                    String string3 = mainActivity12.getString(R.string.k_split_screen_enabled_hint);
                    i2.g.d(string3, "getString(...)");
                    mainActivity12.f1048w.execute(new c9(mainActivity12, string3, 2));
                }
                return x1.e.f4647c;
            case 12:
                MainActivity mainActivity13 = this.b;
                int i14 = MainActivity.f1002z1;
                AppPipFloaterService appPipFloaterService = AppPipFloaterService.f769x;
                if (AppPipFloaterService.f769x != null) {
                    AppPipFloaterService appPipFloaterService2 = AppPipFloaterService.f769x;
                    if (appPipFloaterService2 == null) {
                        mainActivity13.stopService(new Intent(mainActivity13, (Class<?>) AppPipFloaterService.class));
                    } else {
                        appPipFloaterService2.d();
                    }
                    androidx.activity.result.b.n(R.string.k_app_pip_disabled, 0, mainActivity13, "getString(...)");
                } else {
                    mainActivity13.startForegroundService(new Intent(mainActivity13, (Class<?>) AppPipFloaterService.class));
                    String string4 = mainActivity13.getString(R.string.k_app_pip_enabled_hint);
                    i2.g.d(string4, "getString(...)");
                    mainActivity13.f1048w.execute(new c9(mainActivity13, string4, 2));
                }
                return x1.e.f4647c;
            case 13:
                MainActivity mainActivity14 = this.b;
                int i15 = MainActivity.f1002z1;
                boolean z4 = mainActivity14.o0().getBoolean("status_brightness2_enabled", false);
                mainActivity14.o0().edit().putBoolean("status_brightness2_enabled", !z4).apply();
                mainActivity14.v1();
                String string5 = mainActivity14.getString(!z4 ? R.string.k_second_line_in_cycle : R.string.k_second_line_out_cycle);
                i2.g.b(string5);
                mainActivity14.t2(string5, 0);
                return x1.e.f4647c;
            case 14:
                MainActivity mainActivity15 = this.b;
                int i16 = MainActivity.f1002z1;
                int[] iArr2 = CentralWatchdogService.S2;
                CentralWatchdogService centralWatchdogService2 = CentralWatchdogService.V2;
                if (centralWatchdogService2 != null) {
                    new Thread(new a1.i(centralWatchdogService2, 8, null)).start();
                }
                androidx.activity.result.b.n(R.string.k_status_km_reset_done, 0, mainActivity15, "getString(...)");
                return x1.e.f4647c;
            case 15:
                MainActivity mainActivity16 = this.b;
                mainActivity16.B.execute(new x8(mainActivity16, 17));
                return x1.e.f4647c;
            case 16:
                MainActivity mainActivity17 = this.b;
                int i17 = MainActivity.f1002z1;
                mainActivity17.B.execute(new f9(mainActivity17, true, 9));
                if (!mainActivity17.t0) {
                    try {
                        mainActivity17.B.execute(new a9(mainActivity17, mainActivity17.f1038s0.incrementAndGet(), 5));
                        break;
                    } catch (RejectedExecutionException unused) {
                    }
                }
                l2.c cVar = new l2.c(1, 3, 1);
                ArrayList arrayList = new ArrayList(y1.i.X(cVar));
                Iterator it = cVar.iterator();
                while (true) {
                    l2.b bVar = (l2.b) it;
                    if (!bVar.f2428c) {
                        mainActivity17.f1009d0 = arrayList;
                        mainActivity17.q1();
                        CarPropertyManager carPropertyManager = mainActivity17.M;
                        if (carPropertyManager != null) {
                            try {
                                mainActivity17.B.execute(new y9(carPropertyManager, mainActivity17, mainActivity17.f1043u0.incrementAndGet()));
                                break;
                            } catch (RejectedExecutionException unused2) {
                            }
                        }
                        mainActivity17.q1();
                        return x1.e.f4647c;
                    }
                    arrayList.add(mainActivity17.getString(R.string.k_type_n, Integer.valueOf(bVar.nextInt())));
                }
                break;
            case 17:
                MainActivity mainActivity18 = this.b;
                int i18 = MainActivity.f1002z1;
                mainActivity18.B.execute(new x8(mainActivity18, 18));
                if (mainActivity18.I != mainActivity18.G && mainActivity18.E.isEmpty()) {
                    mainActivity18.n1();
                }
                return x1.e.f4647c;
            case 18:
                MainActivity mainActivity19 = this.b;
                int i19 = MainActivity.f1002z1;
                wd wdVar = wd.f4450a;
                if (wd.a(mainActivity19) || wd.j(mainActivity19)) {
                    mainActivity19.M0();
                } else {
                    e.h hVar2 = new e.h(mainActivity19);
                    e.d dVar2 = (e.d) hVar2.b;
                    dVar2.f1554d = mainActivity19.getString(R.string.k_modo_oficina_confirmar_titulo);
                    dVar2.f = mainActivity19.getString(R.string.k_modo_oficina_confirmar_msg);
                    hVar2.f(mainActivity19.getString(R.string.k_modo_oficina_ativar), new z8(mainActivity19, 17));
                    hVar2.c(mainActivity19.getString(R.string.common_cancel), null);
                    hVar2.h();
                }
                return x1.e.f4647c;
            case 19:
                MainActivity mainActivity20 = this.b;
                int i20 = MainActivity.f1002z1;
                mainActivity20.M0();
                return x1.e.f4647c;
            case 20:
                MainActivity mainActivity21 = this.b;
                int i21 = MainActivity.f1002z1;
                float f = mainActivity21.getResources().getDisplayMetrics().density;
                TextView textView2 = new TextView(mainActivity21);
                textView2.setTextSize(12.0f);
                textView2.setTypeface(Typeface.MONOSPACE);
                textView2.setTextColor(mainActivity21.getColor(R.color.master_text));
                textView2.setTextIsSelectable(true);
                int i22 = (int) (16 * f);
                textView2.setPadding(i22, i22, i22, i22);
                synchronized (mainActivity21.f1049w0) {
                    string = mainActivity21.f1046v0.toString();
                }
                if (string.length() == 0) {
                    string = "—";
                }
                textView2.setText(string);
                ScrollView scrollView = new ScrollView(mainActivity21);
                scrollView.addView(textView2);
                e.h hVar3 = new e.h(mainActivity21);
                String string6 = mainActivity21.getString(R.string.master_session_log);
                e.d dVar3 = (e.d) hVar3.b;
                dVar3.f1554d = string6;
                dVar3.f1568s = scrollView;
                hVar3.e(android.R.string.ok, null);
                String string7 = mainActivity21.getString(R.string.xml_salvar_em_downloads);
                z8 z8Var = new z8(mainActivity21, 14);
                e.d dVar4 = (e.d) hVar3.b;
                dVar4.f1560k = string7;
                dVar4.f1561l = z8Var;
                hVar3.c(mainActivity21.getString(R.string.xml_limpar), new z8(mainActivity21, 15));
                hVar3.h();
                scrollView.post(new z9(scrollView, 1));
                return x1.e.f4647c;
            case 21:
                MainActivity mainActivity22 = this.b;
                int i23 = MainActivity.f1002z1;
                e.h hVar4 = new e.h(mainActivity22);
                String string8 = mainActivity22.getString(R.string.k_reboot_title);
                e.d dVar5 = (e.d) hVar4.b;
                dVar5.f1554d = string8;
                dVar5.f = mainActivity22.getString(R.string.k_reboot_message);
                hVar4.f(mainActivity22.getString(R.string.common_restart), new z8(mainActivity22, 7));
                hVar4.c(mainActivity22.getString(R.string.common_cancel), null);
                hVar4.h();
                return x1.e.f4647c;
            case 22:
                MainActivity mainActivity23 = this.b;
                int i24 = MainActivity.f1002z1;
                mainActivity23.Y1(0);
                return x1.e.f4647c;
            case 23:
                MainActivity mainActivity24 = this.b;
                int i25 = MainActivity.f1002z1;
                mainActivity24.Y1(10);
                return x1.e.f4647c;
            case 24:
                MainActivity mainActivity25 = this.b;
                int i26 = MainActivity.f1002z1;
                mainActivity25.Y1(30);
                return x1.e.f4647c;
            case 25:
                MainActivity mainActivity26 = this.b;
                int i27 = MainActivity.f1002z1;
                mainActivity26.Y1(60);
                return x1.e.f4647c;
            case 26:
                MainActivity mainActivity27 = this.b;
                int i28 = MainActivity.f1002z1;
                mainActivity27.Y1(120);
                return x1.e.f4647c;
            case 27:
                MainActivity mainActivity28 = this.b;
                int i29 = MainActivity.f1002z1;
                mainActivity28.L();
                return x1.e.f4647c;
            case 28:
                MainActivity mainActivity29 = this.b;
                int i30 = MainActivity.f1002z1;
                mainActivity29.s();
                return x1.e.f4647c;
            default:
                MainActivity mainActivity30 = this.b;
                int i31 = MainActivity.f1002z1;
                mainActivity30.C.execute(new x8(mainActivity30, 27));
                return x1.e.f4647c;
        }
    }
}
