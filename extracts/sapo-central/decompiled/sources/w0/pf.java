package w0;

import android.app.ActivityManager;
import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.os.SystemClock;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.R;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class pf extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4072a;
    public final /* synthetic */ QuickAccessFloaterService b;

    public /* synthetic */ pf(int i3, QuickAccessFloaterService quickAccessFloaterService) {
        this.f4072a = i3;
        this.b = quickAccessFloaterService;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r18v0, types: [w0.xe] */
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        ActivityManager activityManager;
        String packageName;
        Field field;
        ApplicationInfo applicationInfo;
        Drawable applicationIcon;
        rf rfVar;
        int intExtra = 0;
        switch (this.f4072a) {
            case 0:
                QuickAccessFloaterService quickAccessFloaterService = this.b;
                int i3 = QuickAccessFloaterService.t0;
                quickAccessFloaterService.K();
                return;
            case 1:
                int intExtra2 = intent != null ? intent.getIntExtra("direction", 0) : 0;
                Log.i("QuickAccessFloater", "fanSwipeReceiver: broadcast recebido, direction=" + intExtra2);
                if (intExtra2 != 0) {
                    QuickAccessFloaterService quickAccessFloaterService2 = this.b;
                    int i4 = QuickAccessFloaterService.t0;
                    quickAccessFloaterService2.c(intExtra2);
                    return;
                }
                return;
            case 2:
                Log.i("QuickAccessFloater", "goToLastAppReceiver: broadcast recebido (3 dedos)");
                QuickAccessFloaterService quickAccessFloaterService3 = this.b;
                int i5 = QuickAccessFloaterService.t0;
                try {
                    Object systemService = quickAccessFloaterService3.getSystemService("activity");
                    i2.g.c(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
                    ActivityManager activityManager2 = (ActivityManager) systemService;
                    Class cls = Integer.TYPE;
                    Object objInvoke = ActivityManager.class.getMethod("getRecentTasks", cls, cls).invoke(activityManager2, 15, 0);
                    i2.g.c(objInvoke, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>");
                    String packageName2 = quickAccessFloaterService3.getPackageName();
                    PackageManager packageManager = quickAccessFloaterService3.getPackageManager();
                    HashSet hashSet = new HashSet();
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : (List) objInvoke) {
                        Object obj2 = obj.getClass().getField("baseIntent").get(obj);
                        Intent intent2 = obj2 instanceof Intent ? (Intent) obj2 : null;
                        if (intent2 != null) {
                            ComponentName component = intent2.getComponent();
                            if (component == null || (packageName = component.getPackageName()) == null) {
                                activityManager = activityManager2;
                            } else if (!packageName.equals(packageName2) && !packageName.equals("com.flyme.auto.launcher") && hashSet.add(packageName)) {
                                try {
                                    activityManager = activityManager2;
                                    try {
                                        field = obj.getClass().getField("id");
                                    } catch (NoSuchFieldException unused) {
                                        field = obj.getClass().getField("taskId");
                                    }
                                } catch (NoSuchFieldException unused2) {
                                    activityManager = activityManager2;
                                }
                                int i6 = field.getInt(obj);
                                if (i6 >= 0) {
                                    try {
                                        applicationInfo = packageManager.getApplicationInfo(packageName, 0);
                                    } catch (Exception unused3) {
                                        applicationInfo = null;
                                    }
                                    if (applicationInfo != null) {
                                        try {
                                            String string = packageManager.getApplicationLabel(applicationInfo).toString();
                                            if (string != null) {
                                                packageName = string;
                                            }
                                        } catch (Exception unused4) {
                                        }
                                    }
                                    if (applicationInfo != null) {
                                        try {
                                            applicationIcon = packageManager.getApplicationIcon(applicationInfo);
                                        } catch (Exception unused5) {
                                            applicationIcon = null;
                                        }
                                    } else {
                                        applicationIcon = null;
                                    }
                                    arrayList.add(new qf(i6, packageName, applicationIcon));
                                }
                                break;
                            }
                            activityManager2 = activityManager;
                        }
                    }
                    final ActivityManager activityManager3 = activityManager2;
                    if (arrayList.isEmpty()) {
                        Log.i("QuickAccessFloater", "Gesto 3 dedos: nenhum app recente encontrado");
                        String string2 = quickAccessFloaterService3.getString(R.string.k_no_recent_app_toast);
                        i2.g.d(string2, "getString(...)");
                        quickAccessFloaterService3.G(string2);
                        return;
                    }
                    final i2.m mVar = new i2.m();
                    i2.l lVar = new i2.l();
                    lVar.f2291a = arrayList.size();
                    List listI0 = y1.g.i0(arrayList, new b6(11));
                    ArrayList arrayList2 = new ArrayList(y1.i.X(listI0));
                    Iterator it = listI0.iterator();
                    QuickAccessFloaterService quickAccessFloaterService4 = quickAccessFloaterService3;
                    while (it.hasNext()) {
                        final qf qfVar = (qf) it.next();
                        final i2.m mVar2 = new i2.m();
                        Drawable drawable = qfVar.f4127c;
                        String str = qfVar.b;
                        final QuickAccessFloaterService quickAccessFloaterService5 = quickAccessFloaterService4;
                        final i2.l lVar2 = lVar;
                        ?? r18 = new h2.a() { // from class: w0.xe
                            @Override // h2.a
                            public final Object a() {
                                int i7 = QuickAccessFloaterService.t0;
                                qf qfVar2 = qfVar;
                                int i8 = qfVar2.f4126a;
                                String str2 = qfVar2.b;
                                if (e8.J(activityManager3, i8)) {
                                    Log.i("QuickAccessFloater", "Gesto 3 dedos: task removida " + str2 + " (taskId=" + i8 + ')');
                                    Object obj3 = mVar2.f2292a;
                                    if (obj3 == null) {
                                        i2.g.h("tileView");
                                        throw null;
                                    }
                                    ((View) obj3).setVisibility(8);
                                    i2.l lVar3 = lVar2;
                                    int i9 = lVar3.f2291a - 1;
                                    lVar3.f2291a = i9;
                                    if (i9 <= 0) {
                                        Object obj4 = mVar.f2292a;
                                        if (obj4 == null) {
                                            i2.g.h("dlg");
                                            throw null;
                                        }
                                        ((AlertDialog) obj4).dismiss();
                                    }
                                } else {
                                    Log.w("QuickAccessFloater", "Gesto 3 dedos: nao consegui remover " + str2 + " (taskId=" + i8 + ')');
                                    QuickAccessFloaterService quickAccessFloaterService6 = quickAccessFloaterService5;
                                    String string3 = quickAccessFloaterService6.getString(R.string.k_recent_close_failed, str2);
                                    i2.g.d(string3, "getString(...)");
                                    quickAccessFloaterService6.G(string3);
                                }
                                return x1.e.f4647c;
                            }
                        };
                        ActivityManager activityManager4 = activityManager3;
                        i2.m mVar3 = mVar;
                        QuickAccessFloaterService quickAccessFloaterService6 = quickAccessFloaterService5;
                        ViewGroup viewGroupW = quickAccessFloaterService6.w(drawable, str, r18, new h0(activityManager4, qfVar, mVar3, 5));
                        mVar2.f2292a = viewGroupW;
                        arrayList2.add(viewGroupW);
                        it = it;
                        activityManager3 = activityManager4;
                        mVar = mVar3;
                        lVar = lVar2;
                        quickAccessFloaterService4 = quickAccessFloaterService6;
                    }
                    i2.m mVar4 = mVar;
                    ScrollView scrollView = new ScrollView(quickAccessFloaterService4);
                    scrollView.addView(quickAccessFloaterService4.h(arrayList2));
                    scrollView.setPadding(quickAccessFloaterService4.p(20), quickAccessFloaterService4.p(12), quickAccessFloaterService4.p(20), quickAccessFloaterService4.p(4));
                    AlertDialog.Builder builder = new AlertDialog.Builder(quickAccessFloaterService4);
                    String string3 = quickAccessFloaterService4.getString(R.string.k_recent_apps_title);
                    i2.g.d(string3, "getString(...)");
                    AlertDialog alertDialogCreate = builder.setCustomTitle(quickAccessFloaterService4.o(string3)).setView(scrollView).setNegativeButton(quickAccessFloaterService4.getString(R.string.common_no), (DialogInterface.OnClickListener) null).create();
                    mVar4.f2292a = alertDialogCreate;
                    if (alertDialogCreate == null) {
                        i2.g.h("dlg");
                        throw null;
                    }
                    Window window = alertDialogCreate.getWindow();
                    if (window != null) {
                        window.setType(2038);
                    }
                    Object obj3 = mVar4.f2292a;
                    if (obj3 == null) {
                        i2.g.h("dlg");
                        throw null;
                    }
                    Window window2 = ((AlertDialog) obj3).getWindow();
                    if (window2 != null) {
                        window2.setBackgroundDrawableResource(R.drawable.bg_central_ex_card);
                    }
                    try {
                        Object obj4 = mVar4.f2292a;
                        if (obj4 == null) {
                            i2.g.h("dlg");
                            throw null;
                        }
                        ((AlertDialog) obj4).show();
                        Object obj5 = mVar4.f2292a;
                        if (obj5 != null) {
                            QuickAccessFloaterService.n((AlertDialog) obj5);
                            return;
                        } else {
                            i2.g.h("dlg");
                            throw null;
                        }
                    } catch (Exception e3) {
                        Log.w("QuickAccessFloater", "goToLastApp: " + e3.getMessage());
                        return;
                    }
                } catch (Exception e4) {
                    androidx.activity.result.b.o(e4, new StringBuilder("goToLastApp: "), "QuickAccessFloater");
                    return;
                }
            case 3:
                Log.i("QuickAccessFloater", "openFavoritesReceiver: broadcast recebido (5 dedos)");
                final QuickAccessFloaterService quickAccessFloaterService7 = this.b;
                int i7 = QuickAccessFloaterService.t0;
                try {
                    List<String> listQ = t1.Q(quickAccessFloaterService7);
                    final PackageManager packageManager2 = quickAccessFloaterService7.getPackageManager();
                    ArrayList arrayList3 = new ArrayList();
                    for (String str2 : listQ) {
                        try {
                            ApplicationInfo applicationInfo2 = packageManager2.getApplicationInfo(str2, 0);
                            i2.g.d(applicationInfo2, "getApplicationInfo(...)");
                            String string4 = packageManager2.getApplicationLabel(applicationInfo2).toString();
                            Drawable applicationIcon2 = packageManager2.getApplicationIcon(applicationInfo2);
                            i2.g.d(applicationIcon2, "getApplicationIcon(...)");
                            rfVar = new rf(str2, string4, applicationIcon2);
                        } catch (Exception unused6) {
                            rfVar = null;
                        }
                        if (rfVar != null) {
                            arrayList3.add(rfVar);
                        }
                        break;
                    }
                    List<rf> listI1 = y1.g.i0(arrayList3, new b6(13));
                    final i2.m mVar5 = new i2.m();
                    LinearLayout linearLayout = new LinearLayout(quickAccessFloaterService7);
                    linearLayout.setOrientation(1);
                    Button button = new Button(quickAccessFloaterService7);
                    button.setText("⭐ " + quickAccessFloaterService7.getString(R.string.xml_gerenciar_favoritos));
                    button.setAllCaps(false);
                    button.setTextSize(16.0f);
                    button.setBackgroundTintList(ColorStateList.valueOf(quickAccessFloaterService7.getColor(R.color.cx_accent)));
                    button.setTextColor(quickAccessFloaterService7.getColor(R.color.cx_on_accent));
                    button.setOnClickListener(new af(quickAccessFloaterService7, mVar5, intExtra));
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, quickAccessFloaterService7.p(48));
                    layoutParams.bottomMargin = quickAccessFloaterService7.p(14);
                    linearLayout.addView(button, layoutParams);
                    if (listI1.isEmpty()) {
                        TextView textView = new TextView(quickAccessFloaterService7);
                        textView.setText(quickAccessFloaterService7.getString(R.string.k_favorites_empty_hint));
                        textView.setTextColor(quickAccessFloaterService7.getColor(R.color.cx_text_secondary));
                        textView.setTextSize(16.0f);
                        linearLayout.addView(textView, new LinearLayout.LayoutParams(quickAccessFloaterService7.p(474), -2));
                    } else {
                        ArrayList arrayList4 = new ArrayList(y1.i.X(listI1));
                        for (final rf rfVar2 : listI1) {
                            arrayList4.add(quickAccessFloaterService7.w(rfVar2.f4183c, rfVar2.b, null, new h2.a() { // from class: w0.bf
                                @Override // h2.a
                                public final Object a() {
                                    PackageManager packageManager3 = packageManager2;
                                    rf rfVar3 = rfVar2;
                                    QuickAccessFloaterService quickAccessFloaterService8 = quickAccessFloaterService7;
                                    int i8 = QuickAccessFloaterService.t0;
                                    try {
                                        Intent launchIntentForPackage = packageManager3.getLaunchIntentForPackage(rfVar3.f4182a);
                                        if (launchIntentForPackage != null) {
                                            launchIntentForPackage.addFlags(268435456);
                                            quickAccessFloaterService8.startActivity(launchIntentForPackage);
                                            Log.i("QuickAccessFloater", "Gesto 5 dedos: abrindo " + rfVar3.f4182a);
                                        }
                                    } catch (Exception e5) {
                                        androidx.activity.result.b.o(e5, new StringBuilder("showFavoriteAppsPicker: launch falhou: "), "QuickAccessFloater");
                                    }
                                    Object obj6 = mVar5.f2292a;
                                    if (obj6 != null) {
                                        ((AlertDialog) obj6).dismiss();
                                        return x1.e.f4647c;
                                    }
                                    i2.g.h("dlg");
                                    throw null;
                                }
                            }));
                        }
                        linearLayout.addView(quickAccessFloaterService7.h(arrayList4));
                    }
                    ScrollView scrollView2 = new ScrollView(quickAccessFloaterService7);
                    scrollView2.addView(linearLayout);
                    scrollView2.setPadding(quickAccessFloaterService7.p(20), quickAccessFloaterService7.p(12), quickAccessFloaterService7.p(20), quickAccessFloaterService7.p(4));
                    AlertDialog.Builder builder2 = new AlertDialog.Builder(quickAccessFloaterService7);
                    String string5 = quickAccessFloaterService7.getString(R.string.k_favorite_apps_title);
                    i2.g.d(string5, "getString(...)");
                    AlertDialog alertDialogCreate2 = builder2.setCustomTitle(quickAccessFloaterService7.o(string5)).setView(scrollView2).setNegativeButton(quickAccessFloaterService7.getString(R.string.common_no), (DialogInterface.OnClickListener) null).create();
                    mVar5.f2292a = alertDialogCreate2;
                    if (alertDialogCreate2 == null) {
                        i2.g.h("dlg");
                        throw null;
                    }
                    Window window3 = alertDialogCreate2.getWindow();
                    if (window3 != null) {
                        window3.setType(2038);
                    }
                    Object obj6 = mVar5.f2292a;
                    if (obj6 == null) {
                        i2.g.h("dlg");
                        throw null;
                    }
                    Window window4 = ((AlertDialog) obj6).getWindow();
                    if (window4 != null) {
                        window4.setBackgroundDrawableResource(R.drawable.bg_central_ex_card);
                    }
                    try {
                        Object obj7 = mVar5.f2292a;
                        if (obj7 == null) {
                            i2.g.h("dlg");
                            throw null;
                        }
                        ((AlertDialog) obj7).show();
                        Object obj8 = mVar5.f2292a;
                        if (obj8 != null) {
                            QuickAccessFloaterService.n((AlertDialog) obj8);
                            return;
                        } else {
                            i2.g.h("dlg");
                            throw null;
                        }
                    } catch (Exception e5) {
                        Log.w("QuickAccessFloater", "showFavoriteAppsPicker: " + e5.getMessage());
                        return;
                    }
                } catch (Exception e6) {
                    androidx.activity.result.b.o(e6, new StringBuilder("showFavoriteAppsPicker: "), "QuickAccessFloater");
                    return;
                }
            case 4:
                Log.i("QuickAccessFloater", "rearCameraReceiver: broadcast recebido (4 dedos)");
                QuickAccessFloaterService quickAccessFloaterService8 = this.b;
                int i8 = QuickAccessFloaterService.t0;
                quickAccessFloaterService8.getClass();
                try {
                    Intent intent3 = new Intent();
                    intent3.setComponent(new ComponentName("com.ecarx.parking", "com.ecarx.parking.MainAvmActivity"));
                    intent3.addFlags(268435456);
                    quickAccessFloaterService8.startActivity(intent3);
                    Log.i("QuickAccessFloater", "Gesto 4 dedos: abrindo câmera de ré (com.ecarx.parking/.MainAvmActivity)");
                    return;
                } catch (Exception e7) {
                    androidx.activity.result.b.o(e7, new StringBuilder("openRearCamera: "), "QuickAccessFloater");
                    return;
                }
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                QuickAccessFloaterService quickAccessFloaterService9 = this.b;
                if (!quickAccessFloaterService9.Q || SystemClock.elapsedRealtime() - quickAccessFloaterService9.U < 1500) {
                    return;
                }
                quickAccessFloaterService9.b0();
                return;
            case MusicClient.TYPE_GESTURE /* 6 */:
                Log.i("QuickAccessFloater", "screenOffCommandReceiver: broadcast recebido (Ei Sapo)");
                QuickAccessFloaterService quickAccessFloaterService10 = this.b;
                int i9 = QuickAccessFloaterService.t0;
                quickAccessFloaterService10.V(false);
                return;
            case PlaybackState.STATE_ERROR /* 7 */:
                int intExtra3 = intent != null ? intent.getIntExtra("direction", 0) : 0;
                Log.i("QuickAccessFloater", "tempSwipeReceiver: broadcast recebido, direction=" + intExtra3);
                if (intExtra3 != 0) {
                    QuickAccessFloaterService quickAccessFloaterService11 = this.b;
                    if (quickAccessFloaterService11.K == null) {
                        quickAccessFloaterService11.z();
                        String string6 = quickAccessFloaterService11.getString(R.string.k_carservice_unavailable);
                        i2.g.d(string6, "getString(...)");
                        quickAccessFloaterService11.G(string6);
                        return;
                    }
                    Float f = quickAccessFloaterService11.f1165q0;
                    if (f == null) {
                        quickAccessFloaterService11.O(new we(quickAccessFloaterService11, intExtra3, 1));
                        return;
                    }
                    float fJ = k1.a.j(Math.round(f.floatValue() + intExtra3), 17.0f, 32.0f);
                    if (fJ == f.floatValue()) {
                        return;
                    }
                    quickAccessFloaterService11.f1165q0 = Float.valueOf(fJ);
                    String string7 = quickAccessFloaterService11.getString(R.string.k_hvac_temp_toast, Float.valueOf(fJ));
                    i2.g.d(string7, "getString(...)");
                    quickAccessFloaterService11.G(string7);
                    quickAccessFloaterService11.O(new we(quickAccessFloaterService11, quickAccessFloaterService11.f1163p0.incrementAndGet(), 0));
                    return;
                }
                return;
            case 8:
                intExtra = intent != null ? intent.getIntExtra("direction", 0) : 0;
                Log.i("QuickAccessFloater", "threeHSwipeReceiver: broadcast recebido, direction=" + intExtra);
                if (intExtra != 0) {
                    QuickAccessFloaterService quickAccessFloaterService12 = this.b;
                    int i10 = QuickAccessFloaterService.t0;
                    quickAccessFloaterService12.getClass();
                    try {
                        Object systemService2 = quickAccessFloaterService12.getSystemService("audio");
                        i2.g.c(systemService2, "null cannot be cast to non-null type android.media.AudioManager");
                        AudioManager audioManager = (AudioManager) systemService2;
                        int i11 = intExtra > 0 ? 87 : 88;
                        long jUptimeMillis = SystemClock.uptimeMillis();
                        audioManager.dispatchMediaKeyEvent(new KeyEvent(jUptimeMillis, jUptimeMillis, 0, i11, 0));
                        audioManager.dispatchMediaKeyEvent(new KeyEvent(jUptimeMillis, jUptimeMillis, 1, i11, 0));
                        quickAccessFloaterService12.G(intExtra > 0 ? "⏭ Próxima faixa" : "⏮ Faixa anterior");
                        Log.i("QuickAccessFloater", "Gesto 3 dedos: ".concat(intExtra > 0 ? "próxima faixa" : "faixa anterior"));
                        return;
                    } catch (Exception e8) {
                        androidx.activity.result.b.o(e8, new StringBuilder("skipTrack: "), "QuickAccessFloater");
                        return;
                    }
                }
                return;
            default:
                intExtra = intent != null ? intent.getIntExtra("direction", 0) : 0;
                Log.i("QuickAccessFloater", "threeVSwipeReceiver: broadcast recebido, direction=" + intExtra);
                if (intExtra != 0) {
                    QuickAccessFloaterService quickAccessFloaterService13 = this.b;
                    int i12 = QuickAccessFloaterService.t0;
                    quickAccessFloaterService13.getClass();
                    try {
                        Object systemService3 = quickAccessFloaterService13.getSystemService("audio");
                        i2.g.c(systemService3, "null cannot be cast to non-null type android.media.AudioManager");
                        AudioManager audioManager2 = (AudioManager) systemService3;
                        audioManager2.adjustStreamVolume(3, intExtra > 0 ? 1 : -1, 5);
                        int streamVolume = audioManager2.getStreamVolume(3);
                        int streamMaxVolume = audioManager2.getStreamMaxVolume(3);
                        StringBuilder sb = new StringBuilder();
                        sb.append(intExtra > 0 ? "🔊" : "🔉");
                        sb.append(" Volume: ");
                        sb.append(streamVolume);
                        sb.append('/');
                        sb.append(streamMaxVolume);
                        quickAccessFloaterService13.G(sb.toString());
                        StringBuilder sb2 = new StringBuilder("Gesto 3 dedos: volume ");
                        sb2.append(intExtra > 0 ? "+" : "-");
                        sb2.append(" (");
                        sb2.append(streamVolume);
                        sb2.append('/');
                        sb2.append(streamMaxVolume);
                        sb2.append(')');
                        Log.i("QuickAccessFloater", sb2.toString());
                        return;
                    } catch (Exception e9) {
                        androidx.activity.result.b.o(e9, new StringBuilder("adjustMediaVolume: "), "QuickAccessFloater");
                        return;
                    }
                }
                return;
        }
    }
}
