package a1;

import android.app.AlertDialog;
import android.content.ContextWrapper;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Toast;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.AppPipFloaterService;
import com.ex.auto.BlackoutActivity;
import com.ex.auto.ModoOficinaTriggerService;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.R;
import com.ex.auto.SplitFloaterService;
import com.ex.auto.TempBattPillFloaterService;
import com.ex.auto.WifiFloaterService;
import com.geely.driveregenfloater.DriveRegenFloaterService;
import com.geely.hvacstepperv2.TempStepperService;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.util.ArrayList;
import java.util.Iterator;
import w0.ab;
import w0.ae;
import w0.e8;
import w0.kh;
import w0.t1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class o implements View.OnTouchListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f49a;
    public final /* synthetic */ ContextWrapper b;

    public /* synthetic */ o(ContextWrapper contextWrapper, int i3) {
        this.f49a = i3;
        this.b = contextWrapper;
    }

    /* JADX WARN: Code duplicated, block: B:213:0x052c  */
    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        int i3 = 4;
        switch (this.f49a) {
            case 0:
                TempStepperService tempStepperService = (TempStepperService) this.b;
                q qVar = tempStepperService.P;
                Handler handler = tempStepperService.f1301n;
                View view2 = tempStepperService.f1292d;
                if (view2 == null || tempStepperService.f1291c == null) {
                    return false;
                }
                WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) view2.getLayoutParams();
                tempStepperService.L = motionEvent.getRawX();
                tempStepperService.M = motionEvent.getRawY();
                int actionMasked = motionEvent.getActionMasked();
                if (actionMasked == 0) {
                    tempStepperService.N = false;
                    handler.removeCallbacks(qVar);
                    tempStepperService.H = layoutParams.x;
                    tempStepperService.I = layoutParams.y;
                    tempStepperService.J = motionEvent.getRawX();
                    tempStepperService.K = motionEvent.getRawY();
                    handler.postDelayed(qVar, 450L);
                } else if (actionMasked == 1) {
                    handler.removeCallbacks(qVar);
                    e8.M(tempStepperService, "hvac_stepper", layoutParams.gravity, layoutParams.x, layoutParams.y);
                    tempStepperService.N = false;
                } else if (actionMasked != 2) {
                    if (actionMasked == 3) {
                        handler.removeCallbacks(qVar);
                        e8.M(tempStepperService, "hvac_stepper", layoutParams.gravity, layoutParams.x, layoutParams.y);
                        tempStepperService.N = false;
                    }
                } else if (tempStepperService.N) {
                    int rawX = (int) (motionEvent.getRawX() - tempStepperService.J);
                    int rawY = (int) (motionEvent.getRawY() - tempStepperService.K);
                    layoutParams.x = tempStepperService.H + rawX;
                    layoutParams.y = tempStepperService.I - rawY;
                    tempStepperService.f1291c.updateViewLayout(tempStepperService.f1292d, layoutParams);
                } else {
                    float rawX2 = motionEvent.getRawX() - tempStepperService.J;
                    float rawY2 = motionEvent.getRawY() - tempStepperService.K;
                    if (Math.abs(rawX2) > tempStepperService.O || Math.abs(rawY2) > tempStepperService.O) {
                        handler.removeCallbacks(qVar);
                    }
                }
                return true;
            case 1:
                AppPipFloaterService appPipFloaterService = (AppPipFloaterService) this.b;
                AppPipFloaterService appPipFloaterService2 = AppPipFloaterService.f769x;
                int action = motionEvent.getAction();
                if (action == 0) {
                    appPipFloaterService.f782o = motionEvent.getRawX();
                    appPipFloaterService.f783p = motionEvent.getRawY();
                    WindowManager.LayoutParams layoutParams2 = appPipFloaterService.f774g;
                    i2.g.b(layoutParams2);
                    appPipFloaterService.f784q = layoutParams2.x;
                    WindowManager.LayoutParams layoutParams3 = appPipFloaterService.f774g;
                    i2.g.b(layoutParams3);
                    appPipFloaterService.f785r = layoutParams3.y;
                    appPipFloaterService.f786s = false;
                    return false;
                }
                if (action == 1) {
                    return appPipFloaterService.f786s;
                }
                if (action != 2) {
                    return false;
                }
                int rawX3 = (int) (motionEvent.getRawX() - appPipFloaterService.f782o);
                int rawY3 = (int) (motionEvent.getRawY() - appPipFloaterService.f783p);
                if (Math.abs(rawX3) > appPipFloaterService.e(6) || Math.abs(rawY3) > appPipFloaterService.e(6)) {
                    appPipFloaterService.f786s = true;
                }
                WindowManager.LayoutParams layoutParams4 = appPipFloaterService.f774g;
                i2.g.b(layoutParams4);
                layoutParams4.x = appPipFloaterService.f784q + rawX3;
                WindowManager.LayoutParams layoutParams5 = appPipFloaterService.f774g;
                i2.g.b(layoutParams5);
                layoutParams5.y = appPipFloaterService.f785r + rawY3;
                try {
                    WindowManager windowManager = appPipFloaterService.f770a;
                    if (windowManager != null) {
                        windowManager.updateViewLayout(appPipFloaterService.b, appPipFloaterService.f774g);
                        return appPipFloaterService.f786s;
                    }
                    i2.g.h("wm");
                    throw null;
                } catch (Throwable unused) {
                }
                break;
            case 2:
                BlackoutActivity blackoutActivity = (BlackoutActivity) this.b;
                int i4 = BlackoutActivity.f794t;
                blackoutActivity.finish();
                return true;
            case 3:
                ModoOficinaTriggerService modoOficinaTriggerService = (ModoOficinaTriggerService) this.b;
                ModoOficinaTriggerService modoOficinaTriggerService2 = ModoOficinaTriggerService.f;
                if (motionEvent.getAction() == 0 && !modoOficinaTriggerService.f1101e) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    if (jCurrentTimeMillis - modoOficinaTriggerService.f1100d > 6000) {
                        modoOficinaTriggerService.f1100d = jCurrentTimeMillis;
                        modoOficinaTriggerService.f1099c = 0;
                    }
                    int i5 = modoOficinaTriggerService.f1099c + 1;
                    modoOficinaTriggerService.f1099c = i5;
                    if (i5 >= 5) {
                        modoOficinaTriggerService.f1099c = 0;
                        modoOficinaTriggerService.f1101e = true;
                        Toast.makeText(modoOficinaTriggerService, modoOficinaTriggerService.getString(R.string.k_modo_oficina_restaurando), 1).show();
                        ae aeVar = ae.f3361a;
                        ae.b("ModoOficinaTrigger", "gesto secreto reconhecido — restaurando", false);
                        new Thread(new ab(modoOficinaTriggerService.getApplicationContext(), i3, modoOficinaTriggerService)).start();
                    }
                }
                return true;
            case 4:
                QuickAccessFloaterService quickAccessFloaterService = (QuickAccessFloaterService) this.b;
                int i6 = QuickAccessFloaterService.t0;
                int action2 = motionEvent.getAction();
                if (action2 == 0) {
                    quickAccessFloaterService.F = motionEvent.getRawY();
                    WindowManager.LayoutParams layoutParams6 = quickAccessFloaterService.f1137c;
                    i2.g.b(layoutParams6);
                    quickAccessFloaterService.G = layoutParams6.y;
                    quickAccessFloaterService.H = false;
                } else if (action2 == 1) {
                    if (quickAccessFloaterService.H) {
                        SharedPreferences.Editor editorEdit = quickAccessFloaterService.t().edit();
                        WindowManager.LayoutParams layoutParams7 = quickAccessFloaterService.f1137c;
                        i2.g.b(layoutParams7);
                        editorEdit.putInt("qa_y_pos", layoutParams7.y).apply();
                    } else if (quickAccessFloaterService.f1176z) {
                        quickAccessFloaterService.m();
                    } else {
                        quickAccessFloaterService.q();
                    }
                    quickAccessFloaterService.H = false;
                } else {
                    if (action2 != 2) {
                        return false;
                    }
                    float rawY4 = motionEvent.getRawY() - quickAccessFloaterService.F;
                    if (!quickAccessFloaterService.H && Math.abs(rawY4) > quickAccessFloaterService.p(10)) {
                        quickAccessFloaterService.H = true;
                    }
                    if (quickAccessFloaterService.H) {
                        WindowManager.LayoutParams layoutParams8 = quickAccessFloaterService.f1137c;
                        i2.g.b(layoutParams8);
                        layoutParams8.y = quickAccessFloaterService.G + ((int) rawY4);
                        WindowManager windowManager2 = quickAccessFloaterService.b;
                        i2.g.b(windowManager2);
                        windowManager2.updateViewLayout(quickAccessFloaterService.f1139d, quickAccessFloaterService.f1137c);
                    }
                }
                return true;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                SplitFloaterService splitFloaterService = (SplitFloaterService) this.b;
                SplitFloaterService splitFloaterService2 = SplitFloaterService.f1178v;
                int action3 = motionEvent.getAction();
                if (action3 == 0) {
                    splitFloaterService.f1192p = motionEvent.getRawX();
                    splitFloaterService.f1193q = motionEvent.getRawY();
                    WindowManager.LayoutParams layoutParams9 = splitFloaterService.f1184h;
                    i2.g.b(layoutParams9);
                    splitFloaterService.f1194r = layoutParams9.x;
                    WindowManager.LayoutParams layoutParams10 = splitFloaterService.f1184h;
                    i2.g.b(layoutParams10);
                    splitFloaterService.f1195s = layoutParams10.y;
                    splitFloaterService.f1196t = false;
                    return false;
                }
                if (action3 == 1) {
                    return splitFloaterService.f1196t;
                }
                if (action3 != 2) {
                    return false;
                }
                int rawX4 = (int) (motionEvent.getRawX() - splitFloaterService.f1192p);
                int rawY5 = (int) (motionEvent.getRawY() - splitFloaterService.f1193q);
                if (Math.abs(rawX4) > splitFloaterService.b(6) || Math.abs(rawY5) > splitFloaterService.b(6)) {
                    splitFloaterService.f1196t = true;
                }
                WindowManager.LayoutParams layoutParams11 = splitFloaterService.f1184h;
                i2.g.b(layoutParams11);
                layoutParams11.x = splitFloaterService.f1194r + rawX4;
                WindowManager.LayoutParams layoutParams12 = splitFloaterService.f1184h;
                i2.g.b(layoutParams12);
                layoutParams12.y = splitFloaterService.f1195s + rawY5;
                try {
                    WindowManager windowManager3 = splitFloaterService.f1179a;
                    if (windowManager3 != null) {
                        windowManager3.updateViewLayout(splitFloaterService.b, splitFloaterService.f1184h);
                        return splitFloaterService.f1196t;
                    }
                    i2.g.h("wm");
                    throw null;
                } catch (Throwable unused2) {
                }
                break;
            case MusicClient.TYPE_GESTURE /* 6 */:
                TempBattPillFloaterService tempBattPillFloaterService = (TempBattPillFloaterService) this.b;
                TempBattPillFloaterService tempBattPillFloaterService2 = TempBattPillFloaterService.f1198v;
                int action4 = motionEvent.getAction();
                if (action4 != 0) {
                    try {
                        if (action4 != 1) {
                            if (action4 != 2) {
                                return false;
                            }
                            int rawX5 = (int) (motionEvent.getRawX() - tempBattPillFloaterService.f1212p);
                            int rawY6 = (int) (motionEvent.getRawY() - tempBattPillFloaterService.f1213q);
                            if (Math.abs(rawX5) > tempBattPillFloaterService.d(6) || Math.abs(rawY6) > tempBattPillFloaterService.d(6)) {
                                tempBattPillFloaterService.f1216t = true;
                            }
                            WindowManager.LayoutParams layoutParams13 = tempBattPillFloaterService.f1201d;
                            i2.g.b(layoutParams13);
                            layoutParams13.x = tempBattPillFloaterService.f1214r + rawX5;
                            WindowManager.LayoutParams layoutParams14 = tempBattPillFloaterService.f1201d;
                            i2.g.b(layoutParams14);
                            layoutParams14.y = tempBattPillFloaterService.f1215s + rawY6;
                            WindowManager windowManager4 = tempBattPillFloaterService.f1199a;
                            if (windowManager4 == null) {
                                i2.g.h("wm");
                                throw null;
                            }
                            windowManager4.updateViewLayout(tempBattPillFloaterService.f1200c, tempBattPillFloaterService.f1201d);
                        } else if (tempBattPillFloaterService.f1216t) {
                            WindowManager.LayoutParams layoutParams15 = tempBattPillFloaterService.f1201d;
                            i2.g.b(layoutParams15);
                            int i7 = layoutParams15.gravity;
                            WindowManager.LayoutParams layoutParams16 = tempBattPillFloaterService.f1201d;
                            i2.g.b(layoutParams16);
                            int i8 = layoutParams16.x;
                            WindowManager.LayoutParams layoutParams17 = tempBattPillFloaterService.f1201d;
                            i2.g.b(layoutParams17);
                            e8.M(tempBattPillFloaterService, "temp_batt_pill", i7, i8, layoutParams17.y);
                        } else if (tempBattPillFloaterService.f1207k != null) {
                            tempBattPillFloaterService.e();
                            Toast.makeText(tempBattPillFloaterService, tempBattPillFloaterService.getString(R.string.k_pill_ac_program_stopped), 0).show();
                        } else {
                            l2.c cVarT = k1.a.T(0, 3);
                            ArrayList arrayList = new ArrayList(y1.i.X(cVarT));
                            Iterator it = cVarT.iterator();
                            while (true) {
                                l2.b bVar = (l2.b) it;
                                if (bVar.f2428c) {
                                    arrayList.add(t1.O(tempBattPillFloaterService, bVar.nextInt()));
                                } else {
                                    ArrayList arrayList2 = new ArrayList();
                                    ArrayList arrayList3 = new ArrayList();
                                    int size = arrayList.size();
                                    for (int i9 = 0; i9 < size; i9++) {
                                        w0.k kVar = (w0.k) arrayList.get(i9);
                                        if (kVar != null) {
                                            arrayList2.add(tempBattPillFloaterService.getString(R.string.k_ac_slot_label, Integer.valueOf(i9 + 1)) + ": " + t1.b0(kVar));
                                            arrayList3.add(Integer.valueOf(i9));
                                        }
                                    }
                                    if (arrayList3.isEmpty()) {
                                        Toast.makeText(tempBattPillFloaterService, tempBattPillFloaterService.getString(R.string.k_pill_ac_no_programs), 1).show();
                                    } else {
                                        AlertDialog alertDialogCreate = new AlertDialog.Builder(tempBattPillFloaterService).setTitle(R.string.k_pill_ac_picker_title).setItems((CharSequence[]) arrayList2.toArray(new String[0]), new w0.g(tempBattPillFloaterService, i3, arrayList3)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).create();
                                        try {
                                            Window window = alertDialogCreate.getWindow();
                                            if (window != null) {
                                                window.setType(2038);
                                            }
                                            break;
                                        } catch (Throwable unused3) {
                                        }
                                        alertDialogCreate.show();
                                    }
                                }
                            }
                        }
                    } catch (Throwable unused4) {
                    }
                } else {
                    tempBattPillFloaterService.f1212p = motionEvent.getRawX();
                    tempBattPillFloaterService.f1213q = motionEvent.getRawY();
                    WindowManager.LayoutParams layoutParams18 = tempBattPillFloaterService.f1201d;
                    i2.g.b(layoutParams18);
                    tempBattPillFloaterService.f1214r = layoutParams18.x;
                    WindowManager.LayoutParams layoutParams19 = tempBattPillFloaterService.f1201d;
                    i2.g.b(layoutParams19);
                    tempBattPillFloaterService.f1215s = layoutParams19.y;
                    tempBattPillFloaterService.f1216t = false;
                }
                return true;
            case PlaybackState.STATE_ERROR /* 7 */:
                WifiFloaterService wifiFloaterService = (WifiFloaterService) this.b;
                kh khVar = wifiFloaterService.f1258k;
                Handler handler2 = wifiFloaterService.f1253e;
                int i10 = WifiFloaterService.f1249n;
                int action5 = motionEvent.getAction();
                if (action5 == 0) {
                    wifiFloaterService.f1257j = false;
                    WindowManager.LayoutParams layoutParams20 = wifiFloaterService.f1252d;
                    if (layoutParams20 == null) {
                        i2.g.h("lp");
                        throw null;
                    }
                    wifiFloaterService.f = layoutParams20.x;
                    wifiFloaterService.f1254g = layoutParams20.y;
                    wifiFloaterService.f1255h = motionEvent.getRawX();
                    wifiFloaterService.f1256i = motionEvent.getRawY();
                    handler2.postDelayed(khVar, 600L);
                } else if (action5 == 1) {
                    handler2.removeCallbacks(khVar);
                    if (wifiFloaterService.f1257j) {
                        WindowManager.LayoutParams layoutParams21 = wifiFloaterService.f1252d;
                        if (layoutParams21 == null) {
                            i2.g.h("lp");
                            throw null;
                        }
                        e8.M(wifiFloaterService, "wifi_floater", layoutParams21.gravity, layoutParams21.x, layoutParams21.y);
                    } else {
                        try {
                            WifiManager wifiManager = wifiFloaterService.b;
                            if (wifiManager == null) {
                                i2.g.h("wifiManager");
                                throw null;
                            }
                            wifiManager.setWifiEnabled(!wifiManager.isWifiEnabled());
                        } catch (Exception unused5) {
                        }
                    }
                } else if (action5 == 2) {
                    int rawX6 = (int) (motionEvent.getRawX() - wifiFloaterService.f1255h);
                    int rawY7 = (int) (motionEvent.getRawY() - wifiFloaterService.f1256i);
                    if (!wifiFloaterService.f1257j && (Math.abs(rawX6) > 8 || Math.abs(rawY7) > 8)) {
                        wifiFloaterService.f1257j = true;
                        handler2.removeCallbacks(khVar);
                    }
                    if (wifiFloaterService.f1257j) {
                        WindowManager.LayoutParams layoutParams22 = wifiFloaterService.f1252d;
                        if (layoutParams22 == null) {
                            i2.g.h("lp");
                            throw null;
                        }
                        layoutParams22.x = wifiFloaterService.f + rawX6;
                        layoutParams22.y = wifiFloaterService.f1254g + rawY7;
                        WindowManager windowManager5 = wifiFloaterService.f1250a;
                        if (windowManager5 == null) {
                            i2.g.h("windowManager");
                            throw null;
                        }
                        windowManager5.updateViewLayout(wifiFloaterService.f1251c, layoutParams22);
                    }
                }
                return true;
            default:
                DriveRegenFloaterService driveRegenFloaterService = (DriveRegenFloaterService) this.b;
                boolean z2 = DriveRegenFloaterService.M;
                int action6 = motionEvent.getAction();
                if (action6 == 0) {
                    driveRegenFloaterService.G = false;
                    WindowManager.LayoutParams layoutParams23 = driveRegenFloaterService.f1281w;
                    driveRegenFloaterService.C = layoutParams23.x;
                    driveRegenFloaterService.D = layoutParams23.y;
                    driveRegenFloaterService.E = motionEvent.getRawX();
                    driveRegenFloaterService.F = motionEvent.getRawY();
                } else if (action6 == 1) {
                    if (driveRegenFloaterService.G) {
                        WindowManager.LayoutParams layoutParams24 = driveRegenFloaterService.f1281w;
                        e8.M(driveRegenFloaterService, "drive_regen", layoutParams24.gravity, layoutParams24.x, layoutParams24.y);
                    }
                    if (!driveRegenFloaterService.G) {
                        if (driveRegenFloaterService.f1284z) {
                            driveRegenFloaterService.d();
                        } else {
                            driveRegenFloaterService.e();
                        }
                    }
                } else {
                    if (action6 != 2) {
                        return false;
                    }
                    int rawX7 = (int) (motionEvent.getRawX() - driveRegenFloaterService.E);
                    int rawY8 = (int) (motionEvent.getRawY() - driveRegenFloaterService.F);
                    if (Math.abs(rawX7) > 8 || Math.abs(rawY8) > 8) {
                        driveRegenFloaterService.G = true;
                    }
                    WindowManager.LayoutParams layoutParams25 = driveRegenFloaterService.f1281w;
                    layoutParams25.x = driveRegenFloaterService.C + rawX7;
                    layoutParams25.y = driveRegenFloaterService.D + rawY8;
                    driveRegenFloaterService.f1261a.updateViewLayout(driveRegenFloaterService.b, layoutParams25);
                }
                return true;
        }
    }
}
