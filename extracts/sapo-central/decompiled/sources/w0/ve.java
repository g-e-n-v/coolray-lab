package w0;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.R;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ve implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4405a;
    public final /* synthetic */ QuickAccessFloaterService b;

    public /* synthetic */ ve(int i3, QuickAccessFloaterService quickAccessFloaterService) {
        this.f4405a = i3;
        this.b = quickAccessFloaterService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        LinearLayout linearLayout;
        sf sfVar;
        Drawable applicationIcon;
        sf sfVar2;
        sf sfVar3;
        int i3 = 12;
        int i4 = 10;
        int i5 = 0;
        switch (this.f4405a) {
            case 0:
                QuickAccessFloaterService quickAccessFloaterService = this.b;
                int i6 = QuickAccessFloaterService.t0;
                try {
                    f2.d.i0(new File("/sys/class/leds/lcd-backlight/brightness"), String.valueOf(quickAccessFloaterService.R));
                } catch (Exception e3) {
                    androidx.activity.result.b.o(e3, new StringBuilder("wakeScreen: "), "QuickAccessFloater");
                }
                try {
                    quickAccessFloaterService.b(3000, "settings put global heads_up_notifications_enabled " + quickAccessFloaterService.S);
                    break;
                } catch (Exception unused) {
                }
                try {
                    quickAccessFloaterService.b(3000, "settings put global audio_speed_volume_enable " + quickAccessFloaterService.T);
                } catch (Exception unused2) {
                    return;
                }
                break;
            case 1:
                QuickAccessFloaterService quickAccessFloaterService2 = this.b;
                if (!quickAccessFloaterService2.f1176z) {
                    quickAccessFloaterService2.q();
                }
                quickAccessFloaterService2.i();
                LinearLayout linearLayout2 = quickAccessFloaterService2.f1148i;
                boolean z2 = linearLayout2 != null && linearLayout2.getVisibility() == 0;
                LinearLayout linearLayout3 = quickAccessFloaterService2.f1148i;
                if (linearLayout3 != null && (linearLayout = quickAccessFloaterService2.f1144g) != null) {
                    linearLayout.removeView(linearLayout3);
                }
                LinearLayout linearLayoutG = quickAccessFloaterService2.g();
                linearLayoutG.setVisibility(z2 ? 0 : 8);
                quickAccessFloaterService2.f1148i = linearLayoutG;
                LinearLayout linearLayout4 = quickAccessFloaterService2.f1144g;
                if (linearLayout4 != null) {
                    linearLayout4.addView(linearLayoutG);
                }
                if (z2) {
                    quickAccessFloaterService2.K();
                }
                quickAccessFloaterService2.P(4000L);
                break;
            case 2:
                QuickAccessFloaterService quickAccessFloaterService3 = this.b;
                int i7 = QuickAccessFloaterService.t0;
                quickAccessFloaterService3.f();
                break;
            case 3:
                QuickAccessFloaterService quickAccessFloaterService4 = this.b;
                int i8 = QuickAccessFloaterService.t0;
                quickAccessFloaterService4.f();
                break;
            case 4:
                QuickAccessFloaterService quickAccessFloaterService5 = this.b;
                if (!quickAccessFloaterService5.M && (sfVar = quickAccessFloaterService5.f1170t) != null) {
                    if (quickAccessFloaterService5.K == null) {
                        quickAccessFloaterService5.z();
                        quickAccessFloaterService5.W(sfVar);
                    } else {
                        quickAccessFloaterService5.O(new i9(quickAccessFloaterService5, 4, sfVar));
                    }
                    break;
                }
                break;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                QuickAccessFloaterService quickAccessFloaterService6 = this.b;
                int i9 = QuickAccessFloaterService.t0;
                quickAccessFloaterService6.i();
                break;
            case MusicClient.TYPE_GESTURE /* 6 */:
                QuickAccessFloaterService quickAccessFloaterService7 = this.b;
                int i10 = QuickAccessFloaterService.t0;
                quickAccessFloaterService7.u().startScan();
                quickAccessFloaterService7.u().reconnect();
                break;
            case PlaybackState.STATE_ERROR /* 7 */:
                QuickAccessFloaterService quickAccessFloaterService8 = this.b;
                int i11 = QuickAccessFloaterService.t0;
                quickAccessFloaterService8.V(false);
                break;
            case 8:
                QuickAccessFloaterService quickAccessFloaterService9 = this.b;
                if (quickAccessFloaterService9.f1141e == null) {
                    LinearLayout linearLayout5 = new LinearLayout(quickAccessFloaterService9);
                    linearLayout5.setOrientation(1);
                    linearLayout5.setGravity(17);
                    linearLayout5.setBackgroundColor(Color.parseColor("#B0000000"));
                    linearLayout5.setClickable(true);
                    linearLayout5.setFocusable(true);
                    LinearLayout linearLayout6 = new LinearLayout(quickAccessFloaterService9);
                    linearLayout6.setOrientation(1);
                    linearLayout6.setBackground(quickAccessFloaterService9.M(QuickAccessFloaterService.A0, 18, Integer.valueOf(QuickAccessFloaterService.C0), 1));
                    linearLayout6.setPadding(quickAccessFloaterService9.p(20), quickAccessFloaterService9.p(18), quickAccessFloaterService9.p(20), quickAccessFloaterService9.p(18));
                    TextView textView = new TextView(quickAccessFloaterService9);
                    textView.setText(quickAccessFloaterService9.getString(R.string.k_screen_off_title));
                    textView.setTextSize(18.0f);
                    textView.setTypeface(textView.getTypeface(), 1);
                    int i12 = QuickAccessFloaterService.H0;
                    textView.setTextColor(i12);
                    linearLayout6.addView(textView);
                    TextView textView2 = new TextView(quickAccessFloaterService9);
                    textView2.setText(quickAccessFloaterService9.getString(R.string.k_screen_off_message));
                    textView2.setTextSize(15.0f);
                    textView2.setTextColor(QuickAccessFloaterService.I0);
                    textView2.setPadding(0, quickAccessFloaterService9.p(10), 0, quickAccessFloaterService9.p(16));
                    linearLayout6.addView(textView2, new LinearLayout.LayoutParams(quickAccessFloaterService9.p(260), -2));
                    TextView textView3 = new TextView(quickAccessFloaterService9);
                    textView3.setText(quickAccessFloaterService9.getString(R.string.k_got_it));
                    textView3.setTextSize(15.0f);
                    textView3.setTypeface(textView3.getTypeface(), 1);
                    textView3.setGravity(17);
                    textView3.setTextColor(i12);
                    textView3.setBackground(quickAccessFloaterService9.M(QuickAccessFloaterService.D0, 12, null, 0));
                    textView3.setPadding(0, quickAccessFloaterService9.p(12), 0, quickAccessFloaterService9.p(12));
                    textView3.setOnClickListener(new df(2, quickAccessFloaterService9));
                    linearLayout6.addView(textView3, new LinearLayout.LayoutParams(-1, -2));
                    linearLayout5.addView(linearLayout6);
                    quickAccessFloaterService9.f1141e = linearLayout5;
                    ViewGroup.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, -1, 2038, 256, -3);
                    try {
                        WindowManager windowManager = quickAccessFloaterService9.b;
                        if (windowManager != null) {
                            windowManager.addView(linearLayout5, layoutParams);
                        }
                    } catch (Exception e4) {
                        androidx.activity.result.b.o(e4, new StringBuilder("showScreenOffWarning: "), "QuickAccessFloater");
                        quickAccessFloaterService9.f1141e = null;
                        quickAccessFloaterService9.V(false);
                        return;
                    }
                    break;
                }
                break;
            case 9:
                QuickAccessFloaterService quickAccessFloaterService10 = this.b;
                int i13 = QuickAccessFloaterService.t0;
                quickAccessFloaterService10.getClass();
                String strI = QuickAccessFloaterService.I(5000, "settings get global policy_control");
                if (o2.t.d0(strI, "ADB_FAIL")) {
                    quickAccessFloaterService10.f1134a.post(new ve(13, quickAccessFloaterService10));
                } else {
                    boolean zE0 = o2.k.e0(strI, "immersive.full", false);
                    QuickAccessFloaterService.I(5000, zE0 ? "settings delete global policy_control" : "settings put global policy_control immersive.full=*");
                    QuickAccessFloaterService.I(5000, "am force-stop com.android.systemui");
                    ae aeVar = ae.f3361a;
                    ae.b("QuickAccess", "tela cheia: ".concat(zE0 ? "desligada" : "ligada"), false);
                }
                break;
            case 10:
                QuickAccessFloaterService quickAccessFloaterService11 = this.b;
                int i14 = QuickAccessFloaterService.t0;
                if (og.d()) {
                    quickAccessFloaterService11.f1134a.post(new ve(15, quickAccessFloaterService11));
                }
                break;
            case 11:
                QuickAccessFloaterService quickAccessFloaterService12 = this.b;
                int i15 = QuickAccessFloaterService.t0;
                Object objI0 = y1.p.f4663a;
                PackageManager packageManager = quickAccessFloaterService12.getPackageManager();
                try {
                    List<ApplicationInfo> installedApplications = packageManager.getInstalledApplications(0);
                    i2.g.d(installedApplications, "getInstalledApplications(...)");
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : installedApplications) {
                        ApplicationInfo applicationInfo = (ApplicationInfo) obj;
                        int i16 = applicationInfo.flags;
                        if ((i16 & 1) == 0 && (i16 & 128) == 0 && !i2.g.a(applicationInfo.packageName, quickAccessFloaterService12.getPackageName())) {
                            arrayList.add(obj);
                        }
                    }
                    if (!arrayList.isEmpty()) {
                        StringBuilder sb = new StringBuilder();
                        int size = arrayList.size();
                        int i17 = 0;
                        while (i17 < size) {
                            Object obj2 = arrayList.get(i17);
                            i17++;
                            ApplicationInfo applicationInfo2 = (ApplicationInfo) obj2;
                            sb.append("pidof '");
                            sb.append(applicationInfo2.packageName);
                            sb.append("' >/dev/null 2>&1 && echo RUNNING:");
                            sb.append(applicationInfo2.packageName);
                            sb.append('\n');
                        }
                        String string = sb.toString();
                        i2.g.d(string, "toString(...)");
                        Set setX = n2.g.X(new n2.c(new n2.d(new n2.c(o2.k.n0(quickAccessFloaterService12.b(10000, string)), new ya(25), 2), true, new ya(26)), new ya(27), 2));
                        ArrayList arrayList2 = new ArrayList();
                        int size2 = arrayList.size();
                        int i18 = 0;
                        while (i18 < size2) {
                            Object obj3 = arrayList.get(i18);
                            i18++;
                            if (setX.contains(((ApplicationInfo) obj3).packageName)) {
                                arrayList2.add(obj3);
                            }
                        }
                        ArrayList arrayList3 = new ArrayList(y1.i.X(arrayList2));
                        int size3 = arrayList2.size();
                        while (i5 < size3) {
                            Object obj4 = arrayList2.get(i5);
                            i5++;
                            ApplicationInfo applicationInfo3 = (ApplicationInfo) obj4;
                            String str = applicationInfo3.packageName;
                            String string2 = packageManager.getApplicationLabel(applicationInfo3).toString();
                            try {
                                applicationIcon = packageManager.getApplicationIcon(applicationInfo3);
                            } catch (Exception unused3) {
                                applicationIcon = null;
                            }
                            arrayList3.add(new x1.d(str, string2, applicationIcon));
                        }
                        objI0 = y1.g.i0(arrayList3, new b6(i3));
                    }
                } catch (Exception e5) {
                    androidx.activity.result.b.o(e5, new StringBuilder("runningUserApps: "), "QuickAccessFloater");
                }
                quickAccessFloaterService12.f1134a.post(new ab(objI0, i4, quickAccessFloaterService12));
                break;
            case 12:
                QuickAccessFloaterService quickAccessFloaterService13 = this.b;
                if (quickAccessFloaterService13.f1176z) {
                    quickAccessFloaterService13.m();
                }
                break;
            case 13:
                QuickAccessFloaterService quickAccessFloaterService14 = this.b;
                int i19 = QuickAccessFloaterService.t0;
                Toast.makeText(quickAccessFloaterService14, quickAccessFloaterService14.getString(R.string.k_qa_fullscreen_sem_adb), 1).show();
                break;
            case 14:
                QuickAccessFloaterService quickAccessFloaterService15 = this.b;
                if (!quickAccessFloaterService15.M && (sfVar2 = quickAccessFloaterService15.f1170t) != null) {
                    quickAccessFloaterService15.W(sfVar2);
                    break;
                }
                break;
            case 15:
                QuickAccessFloaterService quickAccessFloaterService16 = this.b;
                int i20 = QuickAccessFloaterService.t0;
                quickAccessFloaterService16.getClass();
                AlertDialog alertDialogCreate = new AlertDialog.Builder(quickAccessFloaterService16).setTitle(quickAccessFloaterService16.getString(R.string.k_feature_enabled_title)).setMessage(quickAccessFloaterService16.getString(R.string.k_freeform_setup_message)).setPositiveButton(quickAccessFloaterService16.getString(R.string.common_ok), (DialogInterface.OnClickListener) null).setCancelable(false).create();
                Window window = alertDialogCreate.getWindow();
                if (window != null) {
                    window.setType(2038);
                }
                try {
                    alertDialogCreate.show();
                } catch (Exception e6) {
                    androidx.activity.result.b.o(e6, new StringBuilder("showFreeformSetupDialog: "), "QuickAccessFloater");
                    return;
                }
                break;
            case 16:
                QuickAccessFloaterService quickAccessFloaterService17 = this.b;
                if (!quickAccessFloaterService17.M && (sfVar3 = quickAccessFloaterService17.f1170t) != null) {
                    quickAccessFloaterService17.W(sfVar3);
                    break;
                }
                break;
            default:
                try {
                    this.b.d();
                } catch (Throwable unused4) {
                    return;
                }
                break;
        }
    }
}
