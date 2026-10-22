package w0;

import android.app.ActivityManager;
import android.app.AlertDialog;
import android.car.hardware.property.CarPropertyManager;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.AppPipFloaterService;
import com.ex.auto.HomeFloatingWidgetsService;
import com.ex.auto.LyricsFloaterService;
import com.ex.auto.MainActivity;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.TempBattPillFloaterService;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class h0 implements h2.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3648a;
    public final /* synthetic */ Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f3649c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f3650d;

    public /* synthetic */ h0(Object obj, Object obj2, Object obj3, int i3) {
        this.f3648a = i3;
        this.b = obj;
        this.f3649c = obj2;
        this.f3650d = obj3;
    }

    /* JADX WARN: Code duplicated, block: B:104:0x02b6  */
    /* JADX WARN: Code duplicated, block: B:105:0x02c2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:106:0x02c4  */
    /* JADX WARN: Code duplicated, block: B:110:0x02ec  */
    /* JADX WARN: Code duplicated, block: B:44:0x0159  */
    /* JADX WARN: Code duplicated, block: B:46:0x0163  */
    /* JADX WARN: Code duplicated, block: B:97:0x02a6  */
    /* JADX WARN: Code duplicated, block: B:98:0x02a8  */
    /* JADX WARN: Instruction removed from duplicated block: B:106:0x02c4, please report this as an issue */
    @Override // h2.a
    public final Object a() {
        String str;
        boolean z2;
        String strA;
        String strX;
        int iAvailableProcessors;
        float fFloatValue;
        Float fValueOf;
        String string;
        Drawable applicationIcon;
        String str2;
        Float fValueOf2;
        boolean z3 = false;
        Object objR = null;
        switch (this.f3648a) {
            case 0:
                mg mgVar = (mg) this.b;
                AppPipFloaterService appPipFloaterService = (AppPipFloaterService) this.f3649c;
                g0 g0Var = (g0) this.f3650d;
                String strA2 = og.a(6000, "am stack list");
                String str3 = "taskId=" + mgVar.b + ':';
                n2.c cVarN0 = o2.k.n0(strA2);
                Iterator it = cVarN0.b.iterator();
                while (it.hasNext()) {
                    Object objC = ((h2.l) cVarN0.f2529c).c(it.next());
                    if (o2.k.e0((String) objC, str3, false)) {
                        objR = objC;
                        str = (String) objR;
                        if (str != null) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (str != null && o2.k.e0(str, "visible=true", false)) {
                            z3 = true;
                        }
                        if (z2) {
                            if (!z3) {
                                o2.h hVar = og.f4025a;
                                strA = og.a(8000, "am start -n " + mgVar.f3924d);
                                if (o2.t.d0(strA, "ADB_FAIL") || o2.k.e0(strA, "Exception", true)) {
                                    og.f = strA;
                                }
                            }
                            appPipFloaterService.f775h.post(new a1.g(appPipFloaterService, mgVar, g0Var, 3));
                        } else {
                            appPipFloaterService.f775h.post(new a1.i(appPipFloaterService, 4, mgVar));
                        }
                        return x1.e.f4647c;
                    }
                }
                str = (String) objR;
                if (str != null) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (str != null) {
                    z3 = true;
                }
                if (z2) {
                    appPipFloaterService.f775h.post(new a1.i(appPipFloaterService, 4, mgVar));
                } else {
                    if (!z3) {
                        o2.h hVar2 = og.f4025a;
                        strA = og.a(8000, "am start -n " + mgVar.f3924d);
                        if (o2.t.d0(strA, "ADB_FAIL")) {
                            og.f = strA;
                        } else {
                            og.f = strA;
                        }
                    }
                    appPipFloaterService.f775h.post(new a1.g(appPipFloaterService, mgVar, g0Var, 3));
                }
                return x1.e.f4647c;
            case 1:
                HomeFloatingWidgetsService homeFloatingWidgetsService = (HomeFloatingWidgetsService) this.b;
                FrameLayout frameLayout = (FrameLayout) this.f3649c;
                LinearLayout linearLayout = (LinearLayout) this.f3650d;
                try {
                    strX = m.x("top -b -n 1 -m 25 -s 9", 6000, null, new n(0));
                } catch (Throwable unused) {
                    strX = "";
                }
                List list = HomeFloatingWidgetsService.f926a0;
                PackageManager packageManager = homeFloatingWidgetsService.getPackageManager();
                ArrayList arrayList = new ArrayList();
                HashSet hashSet = new HashSet();
                Pattern patternCompile = Pattern.compile("(\\d+)%cpu");
                i2.g.d(patternCompile, "compile(...)");
                i2.g.e(strX, "input");
                Matcher matcher = patternCompile.matcher(strX);
                i2.g.d(matcher, "matcher(...)");
                o2.e eVarB = k1.a.b(matcher, 0, strX);
                if (eVarB == null || (str2 = (String) y1.g.c0(eVarB.a(), 1)) == null) {
                    iAvailableProcessors = Runtime.getRuntime().availableProcessors();
                    if (iAvailableProcessors < 1) {
                        iAvailableProcessors = 1;
                    }
                    fFloatValue = iAvailableProcessors * 100;
                } else {
                    try {
                        fValueOf2 = o2.j.f2636a.c(str2) ? Float.valueOf(Float.parseFloat(str2)) : null;
                        break;
                    } catch (NumberFormatException unused2) {
                    }
                    if (fValueOf2 != null) {
                        fFloatValue = fValueOf2.floatValue();
                        if (fFloatValue <= 0.0f) {
                            iAvailableProcessors = Runtime.getRuntime().availableProcessors();
                            if (iAvailableProcessors < 1) {
                                iAvailableProcessors = 1;
                            }
                            fFloatValue = iAvailableProcessors * 100;
                        }
                    } else {
                        iAvailableProcessors = Runtime.getRuntime().availableProcessors();
                        if (iAvailableProcessors < 1) {
                            iAvailableProcessors = 1;
                        }
                        fFloatValue = iAvailableProcessors * 100;
                    }
                }
                n2.c cVarN1 = o2.k.n0(strX);
                Iterator it2 = cVarN1.b.iterator();
                while (it2.hasNext()) {
                    List listD = new o2.h("\\s+").d(0, o2.k.E0((String) ((h2.l) cVarN1.f2529c).c(it2.next())).toString());
                    if (listD.size() >= 12 && o2.s.W((String) listD.get(0)) != null) {
                        String str4 = (String) listD.get(8);
                        i2.g.e(str4, "<this>");
                        try {
                            fValueOf = o2.j.f2636a.c(str4) ? Float.valueOf(Float.parseFloat(str4)) : null;
                            break;
                        } catch (NumberFormatException unused3) {
                        }
                        if (fValueOf != null) {
                            float fFloatValue2 = (fValueOf.floatValue() * 100.0f) / fFloatValue;
                            String strB0 = o2.k.B0((String) listD.get(11), ":");
                            if (!o2.t.d0(strB0, "[") && !o2.t.d0(strB0, "/") && !o2.k.e0(strB0, " ", false) && hashSet.add(strB0)) {
                                ApplicationInfo applicationInfo = packageManager.getApplicationInfo(strB0, 0);
                                i2.g.b(applicationInfo);
                                try {
                                    string = packageManager.getApplicationLabel(applicationInfo).toString();
                                } catch (Throwable unused4) {
                                    string = strB0;
                                }
                                try {
                                    applicationIcon = packageManager.getApplicationIcon(applicationInfo);
                                } catch (Throwable unused5) {
                                    applicationIcon = null;
                                }
                                arrayList.add(new n7(strB0, string, applicationIcon, fFloatValue2, (applicationInfo.flags & 129) != 0 || strB0.equals(homeFloatingWidgetsService.getPackageName())));
                                if (arrayList.size() >= 5) {
                                    homeFloatingWidgetsService.f929c.post(new z(homeFloatingWidgetsService, frameLayout, linearLayout, arrayList, 4));
                                    break;
                                }
                            }
                        } else {
                            continue;
                        }
                    }
                }
                homeFloatingWidgetsService.f929c.post(new z(homeFloatingWidgetsService, frameLayout, linearLayout, arrayList, 4));
                break;
            case 2:
                LyricsFloaterService lyricsFloaterService = (LyricsFloaterService) this.b;
                lyricsFloaterService.f984c.post(new a1.g((String) this.f3649c, (String) this.f3650d, lyricsFloaterService));
                break;
            case 3:
                MainActivity mainActivity = (MainActivity) this.b;
                a1.r rVar = (a1.r) this.f3649c;
                f2 f2Var = (f2) this.f3650d;
                mainActivity.f1045v.removeCallbacks(rVar);
                f2Var.a();
                break;
            case 4:
                MainActivity mainActivity2 = (MainActivity) this.b;
                String str5 = (String) this.f3649c;
                String str6 = (String) this.f3650d;
                int i3 = MainActivity.f1002z1;
                zb zbVarD0 = mainActivity2.d0(str5, str6);
                String strK0 = MainActivity.K0(zbVarD0.f4632a);
                if (strK0 != null) {
                    return new x1.a(zbVarD0.b, strK0);
                }
                return null;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                ActivityManager activityManager = (ActivityManager) this.b;
                qf qfVar = (qf) this.f3649c;
                i2.m mVar = (i2.m) this.f3650d;
                int i4 = QuickAccessFloaterService.t0;
                try {
                    activityManager.moveTaskToFront(qfVar.f4126a, 1);
                    Log.i("QuickAccessFloater", "Gesto 3 dedos: indo para " + qfVar.b + " (taskId=" + qfVar.f4126a + ')');
                } catch (Exception e3) {
                    androidx.activity.result.b.o(e3, new StringBuilder("goToLastApp: moveTaskToFront falhou: "), "QuickAccessFloater");
                }
                Object obj = mVar.f2292a;
                if (obj == null) {
                    i2.g.h("dlg");
                    throw null;
                }
                ((AlertDialog) obj).dismiss();
                break;
                break;
            default:
                CarPropertyManager carPropertyManager = (CarPropertyManager) this.b;
                TempBattPillFloaterService tempBattPillFloaterService = (TempBattPillFloaterService) this.f3649c;
                yg ygVar = (yg) this.f3650d;
                int i5 = pg.f4073a;
                if (carPropertyManager != null) {
                    AtomicInteger atomicInteger = p1.f4042a;
                    objR = e8.R(p1.c(carPropertyManager, pg.f4073a, 0));
                }
                tempBattPillFloaterService.f1202e.post(new z(tempBattPillFloaterService, objR, pg.l(carPropertyManager), ygVar, 11));
                break;
        }
        return x1.e.f4647c;
    }
}
