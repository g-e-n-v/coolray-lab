package w0;

import android.widget.LinearLayout;
import android.widget.TextView;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.R;
import com.ex.auto.SplitFloaterService;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ig implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3729a;
    public final /* synthetic */ SplitFloaterService b;

    public /* synthetic */ ig(SplitFloaterService splitFloaterService, int i3) {
        this.f3729a = i3;
        this.b = splitFloaterService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        Integer numW;
        switch (this.f3729a) {
            case 0:
                SplitFloaterService splitFloaterService = this.b;
                SplitFloaterService splitFloaterService2 = SplitFloaterService.f1178v;
                splitFloaterService.stopSelf();
                break;
            case 1:
                SplitFloaterService splitFloaterService3 = this.b;
                SplitFloaterService splitFloaterService4 = SplitFloaterService.f1178v;
                splitFloaterService3.h();
                break;
            case 2:
                SplitFloaterService splitFloaterService5 = this.b;
                SplitFloaterService splitFloaterService6 = SplitFloaterService.f1178v;
                splitFloaterService5.h();
                break;
            case 3:
                SplitFloaterService splitFloaterService7 = this.b;
                SplitFloaterService splitFloaterService8 = SplitFloaterService.f1178v;
                splitFloaterService7.h();
                break;
            case 4:
                SplitFloaterService splitFloaterService9 = this.b;
                SplitFloaterService splitFloaterService10 = SplitFloaterService.f1178v;
                splitFloaterService9.h();
                break;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                SplitFloaterService splitFloaterService11 = this.b;
                SplitFloaterService splitFloaterService12 = SplitFloaterService.f1178v;
                splitFloaterService11.h();
                break;
            case MusicClient.TYPE_GESTURE /* 6 */:
                SplitFloaterService splitFloaterService13 = this.b;
                SplitFloaterService splitFloaterService14 = SplitFloaterService.f1178v;
                splitFloaterService13.h();
                String string = splitFloaterService13.getString(R.string.k_split_done_hint);
                i2.g.d(string, "getString(...)");
                splitFloaterService13.g(string);
                break;
            case PlaybackState.STATE_ERROR /* 7 */:
                SplitFloaterService splitFloaterService15 = this.b;
                SplitFloaterService splitFloaterService16 = SplitFloaterService.f1178v;
                if (o2.k.e0(og.a(5000, "id"), "uid=0", false)) {
                    ng ngVarF = og.f();
                    if (ngVarF == null) {
                        String string2 = splitFloaterService15.getString(R.string.k_error_read_resolution, og.f);
                        i2.g.d(string2, "getString(...)");
                        splitFloaterService15.c(string2);
                    } else {
                        splitFloaterService15.f1188l = ngVarF;
                        String strA = og.a(8000, "dumpsys activity activities");
                        mg mgVar = null;
                        if (o2.t.d0(strA, "ADB_FAIL")) {
                            og.f = strA;
                        } else {
                            o2.e eVarB = og.f4026c.b(strA, 0);
                            if (eVarB == null || (str = (String) ((o2.d) eVarB.a()).get(1)) == null || (numW = o2.s.W(str)) == null) {
                                og.f = "não achei mFocusedStack";
                            } else {
                                int iIntValue = numW.intValue();
                                x1.a aVar = (x1.a) og.i().get(numW);
                                if (aVar == null) {
                                    og.f = "stack focada (" + iIntValue + ") sem taskId/component";
                                } else {
                                    int iIntValue2 = ((Number) aVar.f4641a).intValue();
                                    String str2 = (String) aVar.b;
                                    mgVar = new mg(iIntValue, iIntValue2, o2.k.B0(str2, "/"), str2);
                                }
                            }
                        }
                        if (mgVar == null) {
                            String string3 = splitFloaterService15.getString(R.string.k_error_no_foreground_app, og.f);
                            i2.g.d(string3, "getString(...)");
                            splitFloaterService15.c(string3);
                        } else if (i2.g.a(mgVar.f3923c, splitFloaterService15.getPackageName())) {
                            String string4 = splitFloaterService15.getString(R.string.k_error_open_other_app_first);
                            i2.g.d(string4, "getString(...)");
                            splitFloaterService15.c(string4);
                        } else {
                            splitFloaterService15.f1185i.post(new ig(splitFloaterService15, 8));
                            mg mgVarK = og.k(mgVar.f3924d, mgVar.f3923c, splitFloaterService15.d(ngVarF));
                            if (mgVarK == null) {
                                String string5 = splitFloaterService15.getString(R.string.k_error_prepare_left, og.f);
                                i2.g.d(string5, "getString(...)");
                                splitFloaterService15.c(string5);
                            } else {
                                splitFloaterService15.f1186j = mgVarK;
                                splitFloaterService15.f1191o = false;
                                splitFloaterService15.f1185i.post(new ig(splitFloaterService15, 9));
                            }
                        }
                    }
                } else {
                    String string6 = splitFloaterService15.getString(R.string.k_error_adb_unavailable);
                    i2.g.d(string6, "getString(...)");
                    splitFloaterService15.c(string6);
                }
                break;
            case 8:
                SplitFloaterService splitFloaterService17 = this.b;
                SplitFloaterService splitFloaterService18 = SplitFloaterService.f1178v;
                String string7 = splitFloaterService17.getString(R.string.k_split_preparing);
                i2.g.d(string7, "getString(...)");
                splitFloaterService17.g(string7);
                break;
            default:
                SplitFloaterService splitFloaterService19 = this.b;
                SplitFloaterService splitFloaterService20 = SplitFloaterService.f1178v;
                splitFloaterService19.h();
                TextView textView = splitFloaterService19.f;
                if (textView != null) {
                    textView.setText(splitFloaterService19.getString(R.string.k_open_on_right));
                }
                LinearLayout linearLayout = splitFloaterService19.f1183g;
                if (linearLayout != null) {
                    linearLayout.removeAllViews();
                    List<x1.a> listH = og.h(splitFloaterService19);
                    int i3 = 10;
                    if (listH.isEmpty()) {
                        TextView textView2 = new TextView(splitFloaterService19);
                        textView2.setText(splitFloaterService19.getString(R.string.k_no_app_found));
                        textView2.setTextColor(-3355444);
                        textView2.setPadding(splitFloaterService19.b(6), splitFloaterService19.b(10), splitFloaterService19.b(6), splitFloaterService19.b(10));
                        linearLayout.addView(textView2);
                    } else {
                        for (x1.a aVar2 : listH) {
                            String str3 = (String) aVar2.f4641a;
                            String str4 = (String) aVar2.b;
                            TextView textView3 = new TextView(splitFloaterService19);
                            textView3.setText(str3);
                            textView3.setTextSize(14.0f);
                            textView3.setTextColor(-1);
                            textView3.setPadding(splitFloaterService19.b(12), splitFloaterService19.b(12), splitFloaterService19.b(12), splitFloaterService19.b(12));
                            textView3.setBackground(splitFloaterService19.f(-13618892, 10));
                            textView3.setOnClickListener(new a0(splitFloaterService19, i3, str4));
                            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
                            layoutParams.bottomMargin = splitFloaterService19.b(4);
                            linearLayout.addView(textView3, layoutParams);
                        }
                    }
                }
                LinearLayout linearLayout2 = splitFloaterService19.f1182e;
                if (linearLayout2 != null) {
                    linearLayout2.setVisibility(0);
                }
                splitFloaterService19.f1190n = true;
                break;
        }
    }
}
