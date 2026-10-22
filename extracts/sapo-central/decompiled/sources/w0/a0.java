package w0;

import android.content.ComponentName;
import android.content.SharedPreferences;
import android.media.browse.MediaBrowser;
import android.util.Log;
import android.view.View;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.AppPipFloaterService;
import com.ex.auto.BackgroundKeepAliveActivity;
import com.ex.auto.FavoriteAppsActivity;
import com.ex.auto.HomeFloatingWidgetsService;
import com.ex.auto.MainActivity;
import com.ex.auto.MasterToggleView;
import com.ex.auto.MediaBrowserHostActivity;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.R;
import com.ex.auto.SplitFloaterService;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a0 implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3339a;
    public final /* synthetic */ Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f3340c;

    public /* synthetic */ a0(Object obj, int i3, Object obj2) {
        this.f3339a = i3;
        this.b = obj;
        this.f3340c = obj2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        String str;
        String str2;
        int i3 = 0;
        switch (this.f3339a) {
            case 0:
                AppPipFloaterService appPipFloaterService = (AppPipFloaterService) this.b;
                String str3 = (String) this.f3340c;
                AppPipFloaterService appPipFloaterService2 = AppPipFloaterService.f769x;
                appPipFloaterService.g(str3);
                return;
            case 1:
                MasterToggleView masterToggleView = (MasterToggleView) this.b;
                q qVar = (q) this.f3340c;
                int i4 = BackgroundKeepAliveActivity.f791v;
                masterToggleView.setActive(!masterToggleView.getActive());
                qVar.c(Boolean.valueOf(masterToggleView.getActive()));
                return;
            case 2:
                MasterToggleView masterToggleView2 = (MasterToggleView) this.b;
                q qVar2 = (q) this.f3340c;
                int i5 = FavoriteAppsActivity.f924t;
                masterToggleView2.setActive(!masterToggleView2.getActive());
                qVar2.c(Boolean.valueOf(masterToggleView2.getActive()));
                return;
            case 3:
                HomeFloatingWidgetsService homeFloatingWidgetsService = (HomeFloatingWidgetsService) this.b;
                n7 n7Var = (n7) this.f3340c;
                List list = HomeFloatingWidgetsService.f926a0;
                new Thread(new m7(homeFloatingWidgetsService, n7Var.f3936a, i3)).start();
                return;
            case 4:
                final MainActivity mainActivity = (MainActivity) this.b;
                String str4 = (String) this.f3340c;
                if (mainActivity.J0) {
                    androidx.activity.result.b.n(R.string.k_applying, 0, mainActivity, "getString(...)");
                    return;
                }
                mainActivity.J0 = true;
                int i6 = 9;
                mainActivity.f1045v.postDelayed(new ma(mainActivity, i6), 180000L);
                ThreadPoolExecutor threadPoolExecutor = mainActivity.C;
                if (str4.equals("temp")) {
                    str = "hvac_digital_temp";
                } else {
                    str = str4.equals("batt") ? "hvac_digital_batt" : "hvac_digital_ext_temp";
                }
                if (!mainActivity.o0().getBoolean(str, false)) {
                    threadPoolExecutor.execute(new c9(mainActivity, str4, i6));
                    return;
                }
                if (str4.equals("temp")) {
                    str2 = "hvac_digital_temp";
                } else {
                    str2 = str4.equals("batt") ? "hvac_digital_batt" : "hvac_digital_ext_temp";
                }
                boolean z2 = str4.equals("batt") && mainActivity.o0().getBoolean("hvac_digital_ext_temp", false);
                SharedPreferences.Editor editorEdit = mainActivity.o0().edit();
                editorEdit.putBoolean(str2, false);
                if (z2) {
                    editorEdit.putBoolean("hvac_digital_ext_temp", false);
                }
                editorEdit.apply();
                mainActivity.v1();
                String string = mainActivity.getString(R.string.k_removing);
                i2.g.d(string, "getString(...)");
                mainActivity.t2(string, 0);
                final boolean z3 = mainActivity.o0().getBoolean("hvac_digital_temp", false);
                final boolean z4 = mainActivity.o0().getBoolean("hvac_digital_batt", false);
                final boolean z5 = mainActivity.o0().getBoolean("hvac_digital_ext_temp", false);
                threadPoolExecutor.execute(new Runnable() { // from class: w0.gb
                    /* JADX WARN: Type inference fix 'apply assigned field type' failed
                    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
                    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
                    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                     */
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i7 = MainActivity.f1002z1;
                        d8 d8Var = d8.f3494a;
                        MainActivity mainActivity2 = mainActivity;
                        mainActivity2.f1045v.post(new f9(mainActivity2, d8Var.j(mainActivity2, z3, z4, z5, null), 15));
                    }
                });
                return;
            case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                MainActivity mainActivity2 = (MainActivity) this.b;
                ec ecVar = (ec) this.f3340c;
                int i7 = MainActivity.f1002z1;
                SharedPreferences sharedPreferencesO0 = mainActivity2.o0();
                String str5 = ecVar.b;
                mainActivity2.o0().edit().putBoolean(str5, !sharedPreferencesO0.getBoolean(str5, false)).apply();
                List list2 = HomeFloatingWidgetsService.f926a0;
                t1.z(mainActivity2);
                mainActivity2.u1();
                return;
            case MusicClient.TYPE_GESTURE /* 6 */:
                List list3 = (List) this.b;
                MainActivity mainActivity3 = (MainActivity) this.f3340c;
                int i8 = MainActivity.f1002z1;
                if (!list3.isEmpty()) {
                    Iterator it = list3.iterator();
                    while (it.hasNext()) {
                        if (mainActivity3.o0().getBoolean(((ec) it.next()).b, false)) {
                            i3 = 1;
                        }
                    }
                }
                boolean z6 = i3 ^ 1;
                SharedPreferences.Editor editorEdit2 = mainActivity3.o0().edit();
                Iterator it2 = list3.iterator();
                while (it2.hasNext()) {
                    editorEdit2.putBoolean(((ec) it2.next()).b, z6);
                }
                editorEdit2.apply();
                List list4 = HomeFloatingWidgetsService.f926a0;
                t1.z(mainActivity3);
                mainActivity3.u1();
                return;
            case PlaybackState.STATE_ERROR /* 7 */:
                MediaBrowserHostActivity mediaBrowserHostActivity = (MediaBrowserHostActivity) this.b;
                hd hdVar = (hd) this.f3340c;
                int i9 = MediaBrowserHostActivity.f1080s;
                mediaBrowserHostActivity.e();
                mediaBrowserHostActivity.f1083d = hdVar;
                TextView textView = mediaBrowserHostActivity.f1086h;
                if (textView == null) {
                    i2.g.h("tituloNivel");
                    throw null;
                }
                String str6 = hdVar.f3679c;
                String str7 = hdVar.f3678a;
                textView.setText(str6);
                mediaBrowserHostActivity.g(null, true);
                try {
                    MediaBrowser mediaBrowser = new MediaBrowser(mediaBrowserHostActivity, new ComponentName(str7, hdVar.b), new jd(mediaBrowserHostActivity, hdVar), null);
                    mediaBrowser.connect();
                    mediaBrowserHostActivity.b = mediaBrowser;
                    return;
                } catch (Exception e3) {
                    StringBuilder sbL = androidx.activity.result.b.l("conectar ", str7, " falhou: ");
                    sbL.append(e3.getMessage());
                    Log.w("MediaBrowserHost", sbL.toString());
                    mediaBrowserHostActivity.g(mediaBrowserHostActivity.getString(R.string.k_mbh_refused), false);
                    return;
                }
            case 8:
                h2.a aVar = (h2.a) this.b;
                QuickAccessFloaterService quickAccessFloaterService = (QuickAccessFloaterService) this.f3340c;
                int i10 = QuickAccessFloaterService.t0;
                aVar.a();
                quickAccessFloaterService.P(3000L);
                return;
            case 9:
                CheckBox checkBox = (CheckBox) this.b;
                c7 c7Var = (c7) this.f3340c;
                int i11 = QuickAccessFloaterService.t0;
                checkBox.setChecked(!checkBox.isChecked());
                c7Var.c(Boolean.valueOf(checkBox.isChecked()));
                return;
            default:
                SplitFloaterService splitFloaterService = (SplitFloaterService) this.b;
                String str8 = (String) this.f3340c;
                if (splitFloaterService.f1191o) {
                    String string2 = splitFloaterService.getString(R.string.k_toast_wait_processing);
                    i2.g.d(string2, "getString(...)");
                    splitFloaterService.g(string2);
                    return;
                }
                LinearLayout linearLayout = splitFloaterService.f1182e;
                if (linearLayout != null) {
                    linearLayout.setVisibility(8);
                }
                splitFloaterService.f1190n = false;
                splitFloaterService.f1191o = true;
                splitFloaterService.h();
                String string3 = splitFloaterService.getString(R.string.k_opening);
                i2.g.d(string3, "getString(...)");
                splitFloaterService.g(string3);
                new Thread(new jg(splitFloaterService, str8, i3)).start();
                return;
        }
    }
}
