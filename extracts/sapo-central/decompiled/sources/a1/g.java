package a1;

import android.car.Car;
import android.car.hardware.property.CarPropertyManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.AppPipFloaterService;
import com.ex.auto.BackgroundKeepAliveActivity;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.CloseAppsWhitelistActivity;
import com.ex.auto.HomeFloatingWidgetsService;
import com.ex.auto.LyricsFloaterService;
import com.ex.auto.MainActivity;
import com.ex.auto.MediaBrowserHostActivity;
import com.ex.auto.PhoneSyncService;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.R;
import com.geely.driveregenfloater.DriveRegenFloaterService;
import com.geely.hvacstepperv2.TempStepperService;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.io.Closeable;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import w0.ae;
import w0.b6;
import w0.c0;
import w0.cb;
import w0.cc;
import w0.d0;
import w0.eg;
import w0.g0;
import w0.h5;
import w0.h8;
import w0.hc;
import w0.i9;
import w0.ic;
import w0.k5;
import w0.k8;
import w0.l5;
import w0.lg;
import w0.m8;
import w0.mg;
import w0.n4;
import w0.n5;
import w0.o3;
import w0.o5;
import w0.o7;
import w0.og;
import w0.p5;
import w0.q5;
import w0.qe;
import w0.r5;
import w0.s9;
import w0.t1;
import w0.t7;
import w0.y6;
import w0.z;
import w0.z8;
import w0.zb;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f28a;
    public final /* synthetic */ Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f29c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f30d;

    public /* synthetic */ g(ImageView imageView, String str, Bitmap bitmap, MediaBrowserHostActivity mediaBrowserHostActivity) {
        this.f28a = 21;
        this.b = imageView;
        this.f29c = str;
        this.f30d = bitmap;
    }

    /* JADX WARN: Code duplicated, block: B:204:0x06d1  */
    /* JADX WARN: Code duplicated, block: B:212:0x06f6  */
    @Override // java.lang.Runnable
    public final void run() {
        Object objW;
        Object objW2;
        String str;
        String str2;
        int i3;
        LinearLayout linearLayout;
        Drawable applicationIcon;
        n5 n5Var;
        int i4;
        int i5;
        Object bVar;
        int iOrdinal;
        int i6 = 11;
        int i7 = 2;
        int i8 = 0;
        switch (this.f28a) {
            case 0:
                TempStepperService tempStepperService = (TempStepperService) this.b;
                String str3 = (String) this.f29c;
                String str4 = (String) this.f30d;
                TextView textView = tempStepperService.f1293e;
                if (textView != null) {
                    textView.setText(str3);
                }
                TextView textView2 = tempStepperService.f;
                if (textView2 != null) {
                    textView2.setText(str4);
                    return;
                }
                return;
            case 1:
                androidx.emoji2.text.m mVar = (androidx.emoji2.text.m) this.b;
                b bVar2 = (b) this.f29c;
                ThreadPoolExecutor threadPoolExecutor = (ThreadPoolExecutor) this.f30d;
                try {
                    androidx.emoji2.text.r rVarS = b.s((Context) mVar.b);
                    if (rVarS == null) {
                        throw new RuntimeException("EmojiCompat font provider not available on this device.");
                    }
                    androidx.emoji2.text.q qVar = (androidx.emoji2.text.q) ((androidx.emoji2.text.j) rVarS.b);
                    synchronized (qVar.f353d) {
                        qVar.f = threadPoolExecutor;
                        break;
                    }
                    ((androidx.emoji2.text.j) rVarS.b).e(new androidx.emoji2.text.l(bVar2, threadPoolExecutor));
                    return;
                } catch (Throwable th) {
                    bVar2.K(th);
                    threadPoolExecutor.shutdown();
                    return;
                }
            case 2:
                mg mgVar = (mg) this.b;
                lg lgVar = (lg) this.f29c;
                AppPipFloaterService appPipFloaterService = (AppPipFloaterService) this.f30d;
                AppPipFloaterService appPipFloaterService2 = AppPipFloaterService.f769x;
                boolean zL = og.l(mgVar, lgVar);
                int i9 = mgVar.b;
                String strA = og.a(6000, "am stack list");
                String str5 = "taskId=" + i9 + ":.*?bounds=\\[(\\d+),(\\d+)]\\[(\\d+),(\\d+)]";
                i2.g.e(str5, "pattern");
                Pattern patternCompile = Pattern.compile(str5);
                i2.g.d(patternCompile, "compile(...)");
                Matcher matcher = patternCompile.matcher(strA);
                i2.g.d(matcher, "matcher(...)");
                o2.e eVarB = k1.a.b(matcher, 0, strA);
                lg lgVar2 = eVarB == null ? null : new lg(Integer.parseInt((String) ((o2.d) eVarB.a()).get(1)), Integer.parseInt((String) ((o2.d) eVarB.a()).get(2)), Integer.parseInt((String) ((o2.d) eVarB.a()).get(3)), Integer.parseInt((String) ((o2.d) eVarB.a()).get(4)));
                if (lgVar2 != null) {
                    lgVar = lgVar2;
                } else if (!zL) {
                    lgVar = appPipFloaterService.f778k;
                }
                appPipFloaterService.f778k = lgVar;
                appPipFloaterService.f781n = false;
                appPipFloaterService.f775h.post(new c0(appPipFloaterService, zL, lgVar2, 0));
                return;
            case 3:
                AppPipFloaterService appPipFloaterService3 = (AppPipFloaterService) this.b;
                mg mgVar2 = (mg) this.f29c;
                g0 g0Var = (g0) this.f30d;
                mg mgVar3 = appPipFloaterService3.f776i;
                if (mgVar3 == null || mgVar3.b != mgVar2.b) {
                    return;
                }
                appPipFloaterService3.f775h.postDelayed(g0Var, 2000L);
                return;
            case 4:
                BackgroundKeepAliveActivity backgroundKeepAliveActivity = (BackgroundKeepAliveActivity) this.b;
                LinearLayout linearLayout2 = (LinearLayout) this.f29c;
                Set set = (Set) this.f30d;
                int i10 = BackgroundKeepAliveActivity.f791v;
                PackageManager packageManager = backgroundKeepAliveActivity.getPackageManager();
                i2.g.d(packageManager, "getPackageManager(...)");
                String packageName = backgroundKeepAliveActivity.getPackageName();
                i2.g.d(packageName, "getPackageName(...)");
                try {
                    List<ApplicationInfo> installedApplications = packageManager.getInstalledApplications(0);
                    i2.g.d(installedApplications, "getInstalledApplications(...)");
                    objW = n2.g.W(new n2.c(new n2.c(new n2.d(new f2.f(3, installedApplications), true, new w0.r(1, packageName)), new h8(packageManager, 0), 2), new b6(2), 1));
                    break;
                } catch (Exception unused) {
                    objW = y1.p.f4663a;
                }
                backgroundKeepAliveActivity.f793u.post(new z(backgroundKeepAliveActivity, linearLayout2, objW, set, 1));
                return;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                CentralWatchdogService centralWatchdogService = (CentralWatchdogService) this.b;
                String str6 = (String) this.f29c;
                h2.l lVar = (h2.l) this.f30d;
                int[] iArr = CentralWatchdogService.S2;
                centralWatchdogService.f811a.post(new d0(lVar, centralWatchdogService.w(str6), 2));
                return;
            case MusicClient.TYPE_GESTURE /* 6 */:
                CloseAppsWhitelistActivity closeAppsWhitelistActivity = (CloseAppsWhitelistActivity) this.b;
                LinearLayout linearLayout3 = (LinearLayout) this.f29c;
                Set set2 = (Set) this.f30d;
                int i11 = CloseAppsWhitelistActivity.f899c;
                PackageManager packageManager2 = closeAppsWhitelistActivity.getPackageManager();
                i2.g.d(packageManager2, "getPackageManager(...)");
                String packageName2 = closeAppsWhitelistActivity.getPackageName();
                i2.g.d(packageName2, "getPackageName(...)");
                try {
                    List<ApplicationInfo> installedApplications2 = packageManager2.getInstalledApplications(0);
                    i2.g.d(installedApplications2, "getInstalledApplications(...)");
                    objW2 = n2.g.W(new n2.c(new n2.c(new n2.d(new f2.f(3, installedApplications2), true, new w0.r(1, packageName2)), new h8(packageManager2, 0), 2), new b6(2), 1));
                    break;
                } catch (Exception unused2) {
                    objW2 = y1.p.f4663a;
                }
                closeAppsWhitelistActivity.b.post(new z(closeAppsWhitelistActivity, linearLayout3, objW2, set2, 3));
                return;
            case PlaybackState.STATE_ERROR /* 7 */:
                SharedPreferences sharedPreferences = (SharedPreferences) this.b;
                Handler handler = (Handler) this.f29c;
                h2.l lVar2 = (h2.l) this.f30d;
                i2.j jVar = new i2.j();
                try {
                    k5 k5Var = k5.f3786a;
                    String strI = k5.i();
                    if (!o2.k.m0(strI) && !strI.equals("DESCONHECIDO")) {
                        sharedPreferences.edit().putString("recovery_name", strI).apply();
                    }
                    if (o2.t.a0(o2.k.E0(strI).toString(), "IBANES")) {
                        jVar.f2289a = true;
                        try {
                            k5.o(strI, k5.k(), k5.l());
                        } catch (Throwable th2) {
                            Log.d("DR", "adbClickReport: " + th2.getMessage());
                        }
                    }
                    break;
                } catch (Throwable th3) {
                    Log.d("DR", "gateAdbClick: " + th3.getMessage());
                }
                handler.post(new i(lVar2, i6, jVar));
                return;
            case 8:
                HomeFloatingWidgetsService homeFloatingWidgetsService = (HomeFloatingWidgetsService) this.b;
                o7 o7Var = (o7) this.f29c;
                t7 t7Var = (t7) this.f30d;
                if (homeFloatingWidgetsService.f930d) {
                    return;
                }
                boolean z2 = o7Var.f3980a;
                boolean z3 = (z2 == homeFloatingWidgetsService.f937l && o7Var.b == homeFloatingWidgetsService.f938m) ? false : true;
                homeFloatingWidgetsService.f937l = z2;
                homeFloatingWidgetsService.f938m = o7Var.b;
                if (!homeFloatingWidgetsService.f939n || z3) {
                    homeFloatingWidgetsService.f939n = true;
                    HomeFloatingWidgetsService.a(homeFloatingWidgetsService);
                }
                homeFloatingWidgetsService.f929c.postDelayed(t7Var, 1500L);
                return;
            case 9:
                HomeFloatingWidgetsService homeFloatingWidgetsService2 = (HomeFloatingWidgetsService) this.b;
                Double d3 = (Double) this.f29c;
                Integer num = (Integer) this.f30d;
                TextView textView3 = homeFloatingWidgetsService2.M;
                if (textView3 != null) {
                    if (d3 != null) {
                        str2 = "🌡 " + Math.round(d3.doubleValue()) + "°C";
                        if (str2 == null) {
                            str2 = "🌡 --°C";
                        }
                    } else {
                        str2 = "🌡 --°C";
                    }
                    textView3.setText(str2);
                }
                TextView textView4 = homeFloatingWidgetsService2.N;
                if (textView4 != null) {
                    if (num != null) {
                        str = "CPU " + num.intValue() + '%';
                        if (str == null) {
                            str = "CPU --%";
                        }
                    } else {
                        str = "CPU --%";
                    }
                    textView4.setText(str);
                    return;
                }
                return;
            case 10:
                String str7 = (String) this.f29c;
                String str8 = (String) this.f30d;
                LyricsFloaterService lyricsFloaterService = (LyricsFloaterService) this.b;
                Set set3 = LyricsFloaterService.f982v;
                o2.h hVar = k8.f3798a;
                String str9 = lyricsFloaterService.f;
                String str10 = lyricsFloaterService.f987g;
                i2.g.e(str9, "tituloAtual");
                i2.g.e(str10, "artistaAtual");
                if (k8.a(str7, str8).equals(k8.a(str9, str10))) {
                    lyricsFloaterService.f988h = m8.c(str7, str8);
                    lyricsFloaterService.f989i = Integer.MIN_VALUE;
                    lyricsFloaterService.g();
                    return;
                }
                return;
            case 11:
                cc ccVar = (cc) this.b;
                Drawable drawable = (Drawable) this.f29c;
                MainActivity mainActivity = (MainActivity) this.f30d;
                int i12 = MainActivity.f1002z1;
                ccVar.f3443h = false;
                if (drawable == null || mainActivity.isFinishing() || mainActivity.isDestroyed() || !mainActivity.Z.contains(ccVar) || ccVar.b.f4511d == null) {
                    return;
                }
                ccVar.f3440d.setAppIcon(drawable);
                return;
            case 12:
                MainActivity mainActivity2 = (MainActivity) this.b;
                e.i iVar = (e.i) this.f29c;
                p5 p5Var = (p5) this.f30d;
                mainActivity2.f1030n1 = false;
                try {
                    iVar.dismiss();
                    break;
                } catch (Throwable unused3) {
                }
                int i13 = p5Var == null ? -1 : ic.b[p5Var.ordinal()];
                if (i13 == 1) {
                    i3 = R.string.master_perf_refuse_memory;
                } else {
                    if (i13 != 2) {
                        throw new androidx.fragment.app.q();
                    }
                    i3 = R.string.master_perf_refuse_disk;
                }
                androidx.activity.result.b.n(i3, 1, mainActivity2, "getString(...)");
                return;
            case 13:
                MainActivity mainActivity3 = (MainActivity) this.b;
                TextView textView5 = (TextView) this.f29c;
                View view = (View) this.f30d;
                int i14 = MainActivity.f1002z1;
                k5 k5Var2 = k5.f3786a;
                String string = o2.k.E0(k5.a()).toString();
                String strD0 = o2.k.D0(6, string);
                if (string.length() >= 13) {
                    StringBuilder sb = new StringBuilder();
                    String strSubstring = string.substring(11, 13);
                    i2.g.d(strSubstring, "substring(...)");
                    String upperCase = strSubstring.toUpperCase(Locale.ROOT);
                    i2.g.d(upperCase, "toUpperCase(...)");
                    sb.append(upperCase);
                    sb.append('-');
                    sb.append(strD0);
                    strD0 = sb.toString();
                }
                String str11 = strD0;
                if (o2.k.m0(str11)) {
                    return;
                }
                mainActivity3.T0 = str11;
                mainActivity3.f1045v.post(new z(mainActivity3, textView5, str11, view, 5));
                return;
            case 14:
                MainActivity mainActivity4 = (MainActivity) this.b;
                List list = (List) this.f29c;
                LinkedHashMap linkedHashMap = (LinkedHashMap) this.f30d;
                mainActivity4.f1030n1 = false;
                if (mainActivity4.isFinishing() || mainActivity4.isDestroyed() || (linearLayout = (LinearLayout) mainActivity4.findViewById(R.id.masterAppsPerfList)) == null) {
                    return;
                }
                ScrollView scrollView = (ScrollView) mainActivity4.findViewById(R.id.masterAppsPerfScroll);
                int scrollY = scrollView != null ? scrollView.getScrollY() : 0;
                linearLayout.removeAllViews();
                if (list.isEmpty()) {
                    String string2 = mainActivity4.getString(R.string.master_perf_empty);
                    i2.g.d(string2, "getString(...)");
                    mainActivity4.U0(linearLayout, string2);
                    return;
                }
                float f = mainActivity4.getResources().getDisplayMetrics().density;
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    String str12 = (String) it.next();
                    String strF1 = mainActivity4.F1(str12);
                    LinearLayout linearLayout4 = new LinearLayout(mainActivity4);
                    linearLayout4.setOrientation(i8);
                    linearLayout4.setGravity(16);
                    int i15 = (int) (16 * f);
                    int i16 = (int) (12 * f);
                    linearLayout4.setPadding(i15, i16, i15, i16);
                    linearLayout4.setBackgroundResource(R.drawable.bg_master_inner_card);
                    ImageView imageView = new ImageView(mainActivity4);
                    try {
                        applicationIcon = mainActivity4.getPackageManager().getApplicationIcon(str12);
                    } catch (Exception unused4) {
                        applicationIcon = null;
                    }
                    imageView.setImageDrawable(applicationIcon);
                    imageView.setContentDescription(strF1);
                    float f3 = f;
                    int i17 = (int) (46 * f3);
                    linearLayout4.addView(imageView, new LinearLayout.LayoutParams(i17, i17));
                    LinearLayout linearLayout5 = new LinearLayout(mainActivity4);
                    linearLayout5.setOrientation(1);
                    linearLayout5.setPadding(i15, 0, i16, 0);
                    TextView textView6 = new TextView(mainActivity4);
                    textView6.setText(strF1);
                    textView6.setTextSize(19.0f);
                    textView6.setTextColor(mainActivity4.getColor(R.color.master_text));
                    textView6.setTypeface(null, 1);
                    textView6.setMaxLines(1);
                    TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
                    textView6.setEllipsize(truncateAt);
                    linearLayout5.addView(textView6);
                    TextView textView7 = new TextView(mainActivity4);
                    textView7.setTextSize(15.0f);
                    textView7.setMaxLines(2);
                    textView7.setEllipsize(truncateAt);
                    textView7.setPadding(0, (int) (3 * f3), 0, 0);
                    o5 o5Var = (o5) linkedHashMap.get(str12);
                    if (o5Var == null) {
                        textView7.setText(mainActivity4.getString(R.string.master_perf_state_unknown));
                        textView7.setTextColor(mainActivity4.getColor(R.color.master_text_secondary));
                    } else {
                        q5 q5VarC = r5.c(o5Var);
                        n5 n5Var2 = q5VarC.f4096a;
                        int iOrdinal2 = n5Var2.ordinal();
                        if (iOrdinal2 != 0) {
                            n5Var = n5Var2;
                            i4 = iOrdinal2 != 1 ? R.string.master_perf_state_unknown : R.string.master_perf_state_bad;
                        } else {
                            n5Var = n5Var2;
                            i4 = R.string.master_perf_state_ok;
                        }
                        String string3 = mainActivity4.getString(i4);
                        i2.g.d(string3, "getString(...)");
                        switch (q5VarC.b.ordinal()) {
                            case 0:
                                i5 = R.string.master_perf_det_full;
                                break;
                            case 1:
                                i5 = R.string.master_perf_det_profile;
                                break;
                            case 2:
                                i5 = R.string.master_perf_det_empty;
                                break;
                            case 3:
                                i5 = R.string.master_perf_det_discarded;
                                break;
                            case 4:
                                i5 = R.string.master_perf_det_apk;
                                break;
                            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                                i5 = R.string.master_perf_det_verified;
                                break;
                            case MusicClient.TYPE_GESTURE /* 6 */:
                                i5 = R.string.master_perf_det_none;
                                break;
                            default:
                                throw new androidx.fragment.app.q();
                        }
                        String string4 = mainActivity4.getString(i5);
                        i2.g.d(string4, "getString(...)");
                        textView7.setText(string3 + " — " + string4);
                        int iOrdinal3 = n5Var.ordinal();
                        textView7.setTextColor(mainActivity4.getColor(iOrdinal3 != 0 ? iOrdinal3 != 1 ? R.color.master_text_secondary : R.color.cx_warning : R.color.master_green));
                    }
                    linearLayout5.addView(textView7);
                    linearLayout4.addView(linearLayout5, new LinearLayout.LayoutParams(0, -2, 1.0f));
                    o5 o5Var2 = (o5) linkedHashMap.get(str12);
                    l5 l5VarA = o5Var2 != null ? r5.a(o5Var2) : l5.b;
                    TextView textView8 = new TextView(mainActivity4);
                    textView8.setText(mainActivity4.getString(R.string.master_perf_optimize));
                    textView8.setTextSize(16.0f);
                    textView8.setGravity(17);
                    textView8.setTextColor(mainActivity4.getColor(R.color.master_green));
                    textView8.setBackgroundResource(R.drawable.bg_master_activate);
                    textView8.setClickable(true);
                    textView8.setFocusable(true);
                    textView8.setForeground(mainActivity4.getDrawable(android.R.drawable.list_selector_background));
                    textView8.setAlpha(l5VarA == l5.f3834d ? 0.55f : 1.0f);
                    textView8.setOnClickListener(new o3(mainActivity4, str12, strF1, linkedHashMap));
                    linearLayout4.addView(textView8, new LinearLayout.LayoutParams((int) (130 * f3), i17));
                    if (!i2.g.a(str12, mainActivity4.getPackageName())) {
                        TextView textView9 = new TextView(mainActivity4);
                        textView9.setText(mainActivity4.getString(R.string.master_catalog_remove));
                        textView9.setTextSize(16.0f);
                        textView9.setGravity(17);
                        textView9.setTextColor(mainActivity4.getColor(R.color.cx_danger_dim));
                        textView9.setBackgroundResource(R.drawable.bg_master_restart);
                        textView9.setClickable(true);
                        textView9.setFocusable(true);
                        textView9.setForeground(mainActivity4.getDrawable(android.R.drawable.list_selector_background));
                        textView9.setOnClickListener(new y6(mainActivity4, str12, strF1, 4));
                        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams((int) (116 * f3), i17);
                        layoutParams.setMarginStart((int) (10 * f3));
                        linearLayout4.addView(textView9, layoutParams);
                    }
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
                    layoutParams2.topMargin = (int) (8 * f3);
                    linearLayout.addView(linearLayout4, layoutParams2);
                    f = f3;
                    it = it;
                    i8 = 0;
                    break;
                }
                if (scrollY <= 0 || scrollView == null) {
                    return;
                }
                scrollView.post(new e(scrollView, scrollY, 3));
                return;
            case 15:
                MainActivity mainActivity5 = (MainActivity) this.b;
                String str13 = (String) this.f29c;
                hc hcVar = (hc) this.f30d;
                int i18 = MainActivity.f1002z1;
                if (mainActivity5.isFinishing()) {
                    return;
                }
                e.h hVar2 = new e.h(mainActivity5);
                e.d dVar = (e.d) hVar2.b;
                hVar2.g(R.string.update_dialog_title);
                dVar.f = mainActivity5.getString(R.string.update_dialog_message, str13, hcVar.b);
                hVar2.e(R.string.update_yes, new w0.g(hcVar, i7, mainActivity5));
                hVar2.b(R.string.update_no, new z8(mainActivity5, 19));
                dVar.f1563n = new cb();
                hVar2.h();
                return;
            case 16:
                MainActivity mainActivity6 = (MainActivity) this.b;
                String str14 = (String) this.f29c;
                cc ccVar2 = (cc) this.f30d;
                int i19 = MainActivity.f1002z1;
                try {
                    bVar = mainActivity6.getPackageManager().getApplicationIcon(str14);
                    break;
                } catch (Throwable th4) {
                    bVar = new x1.b(th4);
                }
                mainActivity6.f1045v.post(new g(ccVar2, (Drawable) (bVar instanceof x1.b ? null : bVar), mainActivity6, i6));
                return;
            case 17:
                MainActivity mainActivity7 = (MainActivity) this.b;
                h5 h5Var = (h5) this.f30d;
                String str15 = (String) this.f29c;
                int i20 = MainActivity.f1002z1;
                if (mainActivity7.isFinishing() || mainActivity7.isDestroyed() || (iOrdinal = h5Var.ordinal()) == 0) {
                    return;
                }
                if (iOrdinal == 1) {
                    String string5 = mainActivity7.getString(R.string.k_connadaptor_versao_baixando, str15);
                    i2.g.d(string5, "getString(...)");
                    mainActivity7.S1(string5);
                    MainActivity.K(mainActivity7, 2);
                    return;
                }
                if (iOrdinal != 2) {
                    throw new androidx.fragment.app.q();
                }
                String string6 = mainActivity7.getString(R.string.k_connadaptor_versao_sem_internet, str15);
                i2.g.d(string6, "getString(...)");
                mainActivity7.S1(string6);
                return;
            case 18:
                MainActivity mainActivity8 = (MainActivity) this.b;
                String str16 = (String) this.f29c;
                h2.a aVar = (h2.a) this.f30d;
                int i21 = MainActivity.f1002z1;
                mainActivity8.f1045v.post(new z(mainActivity8.H1(30000, "pm uninstall " + MainActivity.j2(str16) + " 2>&1"), mainActivity8, str16, aVar, 7));
                return;
            case 19:
                MainActivity mainActivity9 = (MainActivity) this.b;
                i9 i9Var = (i9) this.f29c;
                i2.j jVar2 = (i2.j) this.f30d;
                int i22 = MainActivity.f1002z1;
                if (mainActivity9.isFinishing() || mainActivity9.isDestroyed()) {
                    return;
                }
                i9Var.c(Boolean.valueOf(jVar2.f2289a));
                return;
            case 20:
                MainActivity mainActivity10 = (MainActivity) this.b;
                zb zbVar = (zb) this.f30d;
                String str17 = (String) this.f29c;
                int i23 = MainActivity.f1002z1;
                if (mainActivity10.isFinishing()) {
                    return;
                }
                if (zbVar == null || str17 == null) {
                    if (zbVar != null) {
                        androidx.activity.result.b.n(R.string.k_no_internet_or_check_failed, 1, mainActivity10, "getString(...)");
                        return;
                    }
                    return;
                } else {
                    String string7 = mainActivity10.getString(R.string.k_downloading_cafix);
                    i2.g.d(string7, "getString(...)");
                    mainActivity10.S1(string7);
                    mainActivity10.C.execute(new s9(mainActivity10, str17, mainActivity10.R(), mainActivity10.P(), zbVar, false));
                    return;
                }
            case 21:
                ImageView imageView2 = (ImageView) this.b;
                String str18 = (String) this.f29c;
                Bitmap bitmap = (Bitmap) this.f30d;
                int i24 = MediaBrowserHostActivity.f1080s;
                if (!i2.g.a(imageView2.getTag(), str18) || bitmap == null) {
                    return;
                }
                imageView2.setPadding(0, 0, 0, 0);
                imageView2.setImageAlpha(255);
                imageView2.setScaleType(ImageView.ScaleType.CENTER_CROP);
                imageView2.setImageBitmap(bitmap);
                return;
            case 22:
                PhoneSyncService phoneSyncService = (PhoneSyncService) this.b;
                String str19 = (String) this.f29c;
                Map map = (Map) this.f30d;
                boolean z4 = PhoneSyncService.f1102z;
                try {
                    qe qeVar = qe.f4124a;
                    Context applicationContext = phoneSyncService.getApplicationContext();
                    i2.g.d(applicationContext, "getApplicationContext(...)");
                    if (qe.e(applicationContext, str19, map, 8)) {
                        return;
                    }
                    Log.w("PhoneSyncService", "sem playbook para '" + str19 + "' — ação não executada");
                    ae aeVar = ae.f3361a;
                    ae.b("PhoneSyncService", "ação '" + str19 + "' pedida sem playbook em disco — conecte a central à internet uma vez para sincronizar", false);
                    return;
                } catch (Exception e3) {
                    StringBuilder sbL = androidx.activity.result.b.l("ação '", str19, "' falhou: ");
                    sbL.append(e3.getMessage());
                    Log.e("PhoneSyncService", sbL.toString());
                    return;
                }
            case 23:
                SharedPreferences sharedPreferences2 = (SharedPreferences) this.b;
                String str20 = (String) this.f29c;
                PhoneSyncService phoneSyncService2 = (PhoneSyncService) this.f30d;
                boolean z5 = PhoneSyncService.f1102z;
                if (sharedPreferences2.getBoolean(str20, false)) {
                    eg.b(phoneSyncService2);
                    return;
                } else {
                    eg.e(phoneSyncService2);
                    return;
                }
            case 24:
                PhoneSyncService phoneSyncService3 = (PhoneSyncService) this.b;
                h2.a aVar2 = (h2.a) this.f29c;
                Closeable closeable = (Closeable) this.f30d;
                boolean z6 = PhoneSyncService.f1102z;
                try {
                    if (phoneSyncService3.f1103a) {
                        aVar2.a();
                    }
                    try {
                        return;
                    } catch (Exception unused5) {
                        return;
                    }
                } finally {
                    phoneSyncService3.f1107g.remove(closeable);
                    try {
                        closeable.close();
                        break;
                    } catch (Exception unused6) {
                    }
                }
                break;
            case 25:
                QuickAccessFloaterService quickAccessFloaterService = (QuickAccessFloaterService) this.b;
                n4 n4Var = (n4) this.f29c;
                n4 n4Var2 = (n4) this.f30d;
                quickAccessFloaterService.S(quickAccessFloaterService.f1150j, t1.A(570491137, n4Var));
                quickAccessFloaterService.S(quickAccessFloaterService.f1152k, t1.A(570491138, n4Var));
                quickAccessFloaterService.S(quickAccessFloaterService.f1154l, t1.A(570491139, n4Var));
                quickAccessFloaterService.S(quickAccessFloaterService.f1156m, t1.A(537003265, n4Var2));
                quickAccessFloaterService.S(quickAccessFloaterService.f1158n, t1.A(537003266, n4Var2));
                quickAccessFloaterService.S(quickAccessFloaterService.f1160o, t1.A(537003267, n4Var2));
                return;
            default:
                DriveRegenFloaterService driveRegenFloaterService = (DriveRegenFloaterService) this.b;
                CarPropertyManager carPropertyManager = (CarPropertyManager) this.f29c;
                Car car = (Car) this.f30d;
                boolean z7 = DriveRegenFloaterService.M;
                if (carPropertyManager != null) {
                    try {
                        carPropertyManager.unregisterCallback(driveRegenFloaterService.L);
                        break;
                    } catch (Exception unused7) {
                    }
                }
                if (car != null) {
                    try {
                        car.disconnect();
                        return;
                    } catch (Exception unused8) {
                        return;
                    }
                }
                return;
        }
    }

    public /* synthetic */ g(MainActivity mainActivity, Object obj, String str, int i3) {
        this.f28a = i3;
        this.b = mainActivity;
        this.f30d = obj;
        this.f29c = str;
    }

    public /* synthetic */ g(Object obj, Object obj2, Object obj3, int i3) {
        this.f28a = i3;
        this.b = obj;
        this.f29c = obj2;
        this.f30d = obj3;
    }

    public /* synthetic */ g(String str, String str2, LyricsFloaterService lyricsFloaterService) {
        this.f28a = 10;
        this.f29c = str;
        this.f30d = str2;
        this.b = lyricsFloaterService;
    }
}
