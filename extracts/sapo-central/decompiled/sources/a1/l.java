package a1;

import android.appwidget.AppWidgetManager;
import android.content.ContextWrapper;
import android.content.DialogInterface;
import android.widget.TextView;
import com.ex.auto.HomeWidgetsPollService;
import com.ex.auto.MainActivity;
import com.ex.auto.R;
import com.geely.hvacstepperv2.TempStepperService;
import java.io.File;
import java.util.Locale;
import w0.f8;
import w0.g4;
import w0.ic;
import w0.p4;
import w0.t1;
import w0.yb;
import w0.z4;
import w0.zb;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class l implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f42a = 1;
    public final /* synthetic */ boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f43c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ boolean f44d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ContextWrapper f45e;
    public final /* synthetic */ Object f;

    public /* synthetic */ l(HomeWidgetsPollService homeWidgetsPollService, boolean z2, String str, AppWidgetManager appWidgetManager, boolean z3) {
        this.f45e = homeWidgetsPollService;
        this.b = z2;
        this.f43c = str;
        this.f = appWidgetManager;
        this.f44d = z3;
    }

    /* JADX WARN: Code duplicated, block: B:162:0x0280  */
    /* JADX WARN: Code duplicated, block: B:176:0x02ae  */
    /* JADX WARN: Code duplicated, block: B:183:0x02c7  */
    /* JADX WARN: Code duplicated, block: B:187:0x02d4  */
    /* JADX WARN: Code duplicated, block: B:194:0x02ed  */
    /* JADX WARN: Code duplicated, block: B:66:0x0132  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // java.lang.Runnable
    public final void run() {
        String strS;
        final Object obj;
        yb ybVar;
        String strB;
        String lowerCase;
        String str;
        int i3;
        switch (this.f42a) {
            case 0:
                TempStepperService tempStepperService = (TempStepperService) this.f45e;
                String str2 = (String) this.f43c;
                boolean z2 = this.b;
                String str3 = (String) this.f;
                boolean z3 = this.f44d;
                TextView textView = tempStepperService.f1295h;
                if (textView == null || tempStepperService.f1296i == null) {
                    return;
                }
                textView.setText(str2);
                tempStepperService.f1295h.setTextColor(z2 ? -11870592 : -1426093944);
                tempStepperService.f1296i.setText(str3);
                tempStepperService.f1296i.setTextColor(z3 ? -11870592 : -1426093944);
                return;
            case 1:
                HomeWidgetsPollService homeWidgetsPollService = (HomeWidgetsPollService) this.f45e;
                boolean z4 = this.b;
                String str4 = (String) this.f43c;
                AppWidgetManager appWidgetManager = (AppWidgetManager) this.f;
                boolean z5 = this.f44d;
                homeWidgetsPollService.f.decrementAndGet();
                if (homeWidgetsPollService.f955e) {
                    return;
                }
                if (z4) {
                    i2.g.b(appWidgetManager);
                    switch (str4.hashCode()) {
                        case -2098662015:
                            if (str4.equals("com.ex.auto.widget.DRIVE_NEXT")) {
                                homeWidgetsPollService.j(appWidgetManager);
                            }
                            break;
                        case -2098590527:
                            if (str4.equals("com.ex.auto.widget.DRIVE_PREV")) {
                                homeWidgetsPollService.j(appWidgetManager);
                            }
                            break;
                        case -2040621029:
                            if (str4.equals("com.ex.auto.widget.VENT_FACE_FLOOR")) {
                                homeWidgetsPollService.o(appWidgetManager);
                                homeWidgetsPollService.n(appWidgetManager);
                            }
                            break;
                        case -2025624646:
                            if (str4.equals("com.ex.auto.widget.FRONT_MAX_DEFROST_TOGGLE")) {
                                homeWidgetsPollService.l(appWidgetManager);
                            }
                            break;
                        case -1899378174:
                            if (str4.equals("com.ex.auto.widget.VENT_WINDSHIELD")) {
                                homeWidgetsPollService.o(appWidgetManager);
                                homeWidgetsPollService.n(appWidgetManager);
                            }
                            break;
                        case -1740637569:
                            if (str4.equals("com.ex.auto.widget.FAN_PLUS")) {
                                homeWidgetsPollService.k(appWidgetManager);
                                homeWidgetsPollService.n(appWidgetManager);
                            }
                            break;
                        case -1393080336:
                            if (str4.equals("com.ex.auto.widget.RECIRC_TOGGLE")) {
                                homeWidgetsPollService.o(appWidgetManager);
                                homeWidgetsPollService.n(appWidgetManager);
                            }
                            break;
                        case -1262930418:
                            if (str4.equals("com.ex.auto.widget.WINDSHIELD_HEAT_TOGGLE")) {
                                homeWidgetsPollService.l(appWidgetManager);
                            }
                            break;
                        case -895512040:
                            if (str4.equals("com.ex.auto.widget.AC_TOGGLE")) {
                                homeWidgetsPollService.n(appWidgetManager);
                            }
                            break;
                        case -846993154:
                            if (str4.equals("com.ex.auto.widget.TEMP_MINUS")) {
                                homeWidgetsPollService.m(appWidgetManager);
                            }
                            break;
                        case -629076346:
                            if (str4.equals("com.ex.auto.widget.DRIVE_SPORT")) {
                                homeWidgetsPollService.j(appWidgetManager);
                            }
                            break;
                        case -581419220:
                            if (str4.equals("com.ex.auto.widget.TEMP_PLUS")) {
                                homeWidgetsPollService.m(appWidgetManager);
                            }
                            break;
                        case -365752430:
                            if (str4.equals("com.ex.auto.widget.REAR_DEFROST_TOGGLE")) {
                                homeWidgetsPollService.l(appWidgetManager);
                            }
                            break;
                        case -297972642:
                            if (str4.equals("com.ex.auto.widget.DRIVE_COMFORT")) {
                                homeWidgetsPollService.j(appWidgetManager);
                            }
                            break;
                        case -248536901:
                            if (str4.equals("com.ex.auto.widget.VENT_FLOOR")) {
                                homeWidgetsPollService.o(appWidgetManager);
                                homeWidgetsPollService.n(appWidgetManager);
                            }
                            break;
                        case 331360605:
                            if (str4.equals("com.ex.auto.widget.REGEN_HIGH")) {
                                homeWidgetsPollService.j(appWidgetManager);
                            }
                            break;
                        case 331536046:
                            if (str4.equals("com.ex.auto.widget.REGEN_NEXT")) {
                                homeWidgetsPollService.j(appWidgetManager);
                            }
                            break;
                        case 331607534:
                            if (str4.equals("com.ex.auto.widget.REGEN_PREV")) {
                                homeWidgetsPollService.j(appWidgetManager);
                            }
                            break;
                        case 347934499:
                            if (str4.equals("com.ex.auto.widget.DRIVE_ECO")) {
                                homeWidgetsPollService.j(appWidgetManager);
                            }
                            break;
                        case 1100350382:
                            if (str4.equals("com.ex.auto.widget.VENT_FACE")) {
                                homeWidgetsPollService.o(appWidgetManager);
                                homeWidgetsPollService.n(appWidgetManager);
                            }
                            break;
                        case 1100593220:
                            if (str4.equals("com.ex.auto.widget.VENT_NEXT")) {
                                homeWidgetsPollService.o(appWidgetManager);
                                homeWidgetsPollService.n(appWidgetManager);
                            }
                            break;
                        case 1100664708:
                            if (str4.equals("com.ex.auto.widget.VENT_PREV")) {
                                homeWidgetsPollService.o(appWidgetManager);
                                homeWidgetsPollService.n(appWidgetManager);
                            }
                            break;
                        case 1147541365:
                            if (str4.equals("com.ex.auto.widget.VENT_FLOOR_WINDSHIELD")) {
                                homeWidgetsPollService.o(appWidgetManager);
                                homeWidgetsPollService.n(appWidgetManager);
                            }
                            break;
                        case 1204109181:
                            if (str4.equals("com.ex.auto.widget.SEAT_HEAT_DRIVER_CYCLE")) {
                                homeWidgetsPollService.l(appWidgetManager);
                            }
                            break;
                        case 1221108851:
                            if (str4.equals("com.ex.auto.widget.SEAT_HEAT_PASSENGER_CYCLE")) {
                                homeWidgetsPollService.l(appWidgetManager);
                            }
                            break;
                        case 1673261081:
                            if (str4.equals("com.ex.auto.widget.REGEN_LOW")) {
                                homeWidgetsPollService.j(appWidgetManager);
                            }
                            break;
                        case 1673261837:
                            if (str4.equals("com.ex.auto.widget.REGEN_MID")) {
                                homeWidgetsPollService.j(appWidgetManager);
                            }
                            break;
                        case 1871943691:
                            if (str4.equals("com.ex.auto.widget.FAN_MINUS")) {
                                homeWidgetsPollService.k(appWidgetManager);
                                homeWidgetsPollService.n(appWidgetManager);
                            }
                            break;
                        case 1905687174:
                            if (str4.equals("com.ex.auto.widget.WHEEL_HEAT_TOGGLE")) {
                                homeWidgetsPollService.l(appWidgetManager);
                            }
                            break;
                    }
                    if (z5 && (strS = homeWidgetsPollService.s(str4)) != null) {
                        homeWidgetsPollService.p(strS);
                    }
                }
                homeWidgetsPollService.f952a.removeCallbacks(homeWidgetsPollService.f975z);
                homeWidgetsPollService.f952a.postDelayed(homeWidgetsPollService.f975z, 3000L);
                return;
            case 2:
                g4 g4Var = g4.b;
                g4 g4Var2 = g4.f3617d;
                g4 g4Var3 = g4.f3615a;
                final MainActivity mainActivity = (MainActivity) this.f45e;
                final String str5 = (String) this.f43c;
                final String str6 = (String) this.f;
                final boolean z6 = this.b;
                final boolean z7 = this.f44d;
                int i4 = MainActivity.f1002z1;
                try {
                    zb zbVarD0 = mainActivity.d0(str5, str6);
                    File file = new File(w0.u.c(str6, str5));
                    if (zbVarD0.a()) {
                        if (file.isFile()) {
                            String path = file.getPath();
                            i2.g.d(path, "getPath(...)");
                            strB = f8.b(path);
                        } else {
                            strB = null;
                        }
                        o2.e eVarB = f8.f3587a.b(zbVarD0.f4634d, 0);
                        if (eVarB == null || (str = (String) ((o2.d) eVarB.a()).get(1)) == null) {
                            lowerCase = null;
                        } else {
                            lowerCase = str.toLowerCase(Locale.ROOT);
                            i2.g.d(lowerCase, "toLowerCase(...)");
                        }
                        long j3 = mainActivity.o0().getLong(MainActivity.I(str6, str5), 0L);
                        boolean zIsFile = file.isFile();
                        Long lY2 = file.isFile() ? mainActivity.y2(file) : null;
                        long j4 = zbVarD0.f4633c;
                        long j5 = zbVarD0.f4635e;
                        if (!zIsFile) {
                            g4Var = g4.f3616c;
                        } else if (j4 <= 0 || lY2 == null) {
                            g4Var = g4Var2;
                        } else if (lY2.longValue() == j4) {
                            if (lowerCase != null) {
                                if (strB == null) {
                                    g4Var = g4Var2;
                                } else if (strB.equals(lowerCase) || (j5 > 0 && j3 > 0 && j5 <= j3)) {
                                    g4Var = g4Var3;
                                }
                            } else if (j5 <= 0 || j3 <= 0 || j5 <= j3) {
                                g4Var = g4Var3;
                            }
                        }
                        ybVar = new yb(zbVarD0, "", g4Var);
                    } else {
                        String strK0 = MainActivity.K0(zbVarD0.f4632a);
                        if (strK0 == null) {
                            throw new IllegalStateException(mainActivity.getString(R.string.k_connadaptor_json_invalid_md5));
                        }
                        ybVar = new yb(zbVarD0, strK0, t1.x(file.isFile() ? mainActivity.H0(file) : null, strK0, file.isFile()));
                    }
                    obj = ybVar;
                } catch (Exception e3) {
                    obj = e3;
                }
                mainActivity.f1045v.post(new Runnable() { // from class: w0.ka
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i5 = MainActivity.f1002z1;
                        Object obj2 = obj;
                        boolean z8 = obj2 instanceof Exception;
                        final MainActivity mainActivity2 = mainActivity;
                        final String str7 = str5;
                        if (z8) {
                            StringBuilder sb = new StringBuilder("ConnAdaptor check erro: ");
                            Exception exc = (Exception) obj2;
                            sb.append(exc.getMessage());
                            mainActivity2.w("Update", sb.toString());
                            String string = mainActivity2.getString(R.string.k_connadaptor_versao_nao_publicada, mainActivity2.S(str7));
                            i2.g.d(string, "getString(...)");
                            ae aeVar = ae.f3361a;
                            ae.b("ConnAdaptor", "checagem falhou: " + exc.getMessage(), false);
                            if (obj2 instanceof r6) {
                                string = mainActivity2.a0(((r6) obj2).f4150a);
                            } else if (!i2.g.a(exc.getMessage(), string)) {
                                string = mainActivity2.getString(R.string.k_no_internet_or_check_failed);
                                i2.g.d(string, "getString(...)");
                            }
                            mainActivity2.S1(string);
                            mainActivity2.t2(string, 1);
                            return;
                        }
                        yb ybVar2 = (yb) obj2;
                        g4 g4Var4 = ybVar2.f4588c;
                        final zb zbVar = ybVar2.f4587a;
                        final String str8 = ybVar2.b;
                        if (str8.length() > 0) {
                            mainActivity2.o0().edit().putString("connadaptor_expected_md5", str8).apply();
                        }
                        if (g4Var4 == g4.f3617d) {
                            String string2 = mainActivity2.getString(R.string.k_connadaptor_nao_deu_para_conferir);
                            i2.g.d(string2, "getString(...)");
                            ae aeVar2 = ae.f3361a;
                            ae.b("ConnAdaptor", "checagem: nao consegui ler ativo nem cache — nao afirmo nada", false);
                            mainActivity2.S1(string2);
                            mainActivity2.t2(string2, 1);
                            return;
                        }
                        g4 g4Var5 = g4.f3615a;
                        final String str9 = str6;
                        final boolean z9 = z6;
                        if (g4Var4 != g4Var5) {
                            if (z7) {
                                String string3 = mainActivity2.getString(R.string.k_downloading_cafix);
                                i2.g.d(string3, "getString(...)");
                                mainActivity2.S1(string3);
                                mainActivity2.C.execute(new s9(mainActivity2, str8, str7, str9, zbVar, z9));
                                return;
                            }
                            e.h hVar = new e.h(mainActivity2);
                            e.d dVar = (e.d) hVar.b;
                            dVar.f1554d = mainActivity2.getString(R.string.k_connadaptor_update_title);
                            dVar.f = mainActivity2.getString(g4Var4 == g4.f3616c ? R.string.k_connadaptor_available_message : R.string.k_connadaptor_newer_message, mainActivity2.Q(str9));
                            hVar.f(mainActivity2.getString(R.string.common_install), new DialogInterface.OnClickListener() { // from class: w0.db
                                @Override // android.content.DialogInterface.OnClickListener
                                public final void onClick(DialogInterface dialogInterface, int i6) {
                                    int i7 = MainActivity.f1002z1;
                                    MainActivity mainActivity3 = mainActivity2;
                                    String string4 = mainActivity3.getString(R.string.k_downloading_cafix);
                                    i2.g.d(string4, "getString(...)");
                                    mainActivity3.S1(string4);
                                    mainActivity3.C.execute(new s9(mainActivity3, str8, str7, str9, zbVar, z9));
                                }
                            });
                            hVar.c(mainActivity2.getString(R.string.common_not_now), null);
                            hVar.h();
                            return;
                        }
                        String string4 = mainActivity2.getString(R.string.connadaptor_update_uptodate);
                        i2.g.d(string4, "getString(...)");
                        mainActivity2.S1(string4 + '\n' + mainActivity2.getString(R.string.k_connadaptor_versao_selecionada, mainActivity2.S(str7)));
                        mainActivity2.o0().edit().putString("connadaptor_arquivo_versao", str7).putString("connadaptor_arquivo_modo", str9).apply();
                        mainActivity2.t2(string4, 0);
                        if (z9 && str9.equals(mainActivity2.P()) && i2.g.a(str7, mainActivity2.R())) {
                            mainActivity2.C();
                        }
                    }
                });
                return;
            default:
                MainActivity mainActivity2 = (MainActivity) this.f45e;
                z4 z4Var = (z4) this.f43c;
                boolean z8 = this.b;
                boolean z9 = this.f44d;
                p4 p4Var = (p4) this.f;
                mainActivity2.f1010d1 = false;
                mainActivity2.f1008c1 = Boolean.valueOf(z4Var == z4.f4610a || z4Var == z4.f4612d);
                if (mainActivity2.isFinishing()) {
                    return;
                }
                if (z4Var == z4.f4613e) {
                    androidx.activity.result.b.n(R.string.k_pip_incompativel, 1, mainActivity2, "getString(...)");
                } else {
                    if (z8) {
                        i3 = z9 ? R.string.k_applied : R.string.k_removed;
                    } else {
                        int i5 = p4Var == null ? -1 : ic.f3723a[p4Var.ordinal()];
                        i3 = i5 != 1 ? i5 != 2 ? R.string.k_pip_falhou_outra : R.string.k_apply_failed_check_internet : R.string.k_pip_falhou_sem_adb;
                    }
                    String string = mainActivity2.getString(i3);
                    i2.g.d(string, "getString(...)");
                    mainActivity2.t2(string, 1 ^ (z8 ? 1 : 0));
                }
                mainActivity2.v1();
                return;
        }
    }

    public /* synthetic */ l(MainActivity mainActivity, String str, String str2, boolean z2, boolean z3) {
        this.f45e = mainActivity;
        this.f43c = str;
        this.f = str2;
        this.b = z2;
        this.f44d = z3;
    }

    public /* synthetic */ l(MainActivity mainActivity, z4 z4Var, boolean z2, boolean z3, p4 p4Var) {
        this.f45e = mainActivity;
        this.f43c = z4Var;
        this.b = z2;
        this.f44d = z3;
        this.f = p4Var;
    }

    public /* synthetic */ l(TempStepperService tempStepperService, String str, boolean z2, String str2, boolean z3) {
        this.f45e = tempStepperService;
        this.f43c = str;
        this.b = z2;
        this.f = str2;
        this.f44d = z3;
    }
}
