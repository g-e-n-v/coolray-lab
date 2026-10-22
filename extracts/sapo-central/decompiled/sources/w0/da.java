package w0;

import android.content.DialogInterface;
import android.content.SharedPreferences;
import com.ex.auto.HomeFloatingWidgetsService;
import com.ex.auto.MainActivity;
import com.ex.auto.R;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class da implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3497a;
    public final /* synthetic */ MainActivity b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ArrayList f3498c;

    public /* synthetic */ da(MainActivity mainActivity, ArrayList arrayList) {
        this.f3497a = 0;
        this.f3498c = arrayList;
        this.b = mainActivity;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i3) {
        int i4 = this.f3497a;
        int i5 = 0;
        ArrayList arrayList = this.f3498c;
        MainActivity mainActivity = this.b;
        switch (i4) {
            case 0:
                int i6 = MainActivity.f1002z1;
                String str = (String) arrayList.get(i3);
                SharedPreferences.Editor editorEdit = mainActivity.o0().edit();
                if (str == null) {
                    editorEdit.remove("auto_connect_preferred_bt");
                } else {
                    editorEdit.putString("auto_connect_preferred_bt", str);
                }
                editorEdit.apply();
                ae aeVar = ae.f3361a;
                if (str == null) {
                    str = "qualquer";
                }
                ae.b("Preferido", "celular preferido: ".concat(str), false);
                mainActivity.s1();
                dialogInterface.dismiss();
                break;
            case 1:
                ThreadPoolExecutor threadPoolExecutor = mainActivity.C;
                String string = mainActivity.getString(R.string.k_dep_update_running, Integer.valueOf(arrayList.size()));
                i2.g.d(string, "getString(...)");
                mainActivity.t2(string, 1);
                int size = arrayList.size();
                while (i5 < size) {
                    Object obj = arrayList.get(i5);
                    i5++;
                    String str2 = ((gc) obj).f3637a;
                    switch (str2.hashCode()) {
                        case -1814115367:
                            if (str2.equals("connadaptor")) {
                                threadPoolExecutor.execute(new ma(mainActivity, 19));
                            }
                            break;
                        case -1249348125:
                            if (str2.equals("gestos")) {
                                threadPoolExecutor.execute(new ma(mainActivity, 20));
                            }
                            break;
                        case -1085978014:
                            if (str2.equals("keyserver")) {
                                mainActivity.I1();
                            }
                            break;
                        case 634262273:
                            if (str2.equals("dualdashcam")) {
                                mainActivity.s0((xb) y1.s.U((Map) mainActivity.f1003a0.a(), "br.com.central.dualdashcam"));
                            }
                            break;
                    }
                }
                break;
            case 2:
                int i7 = MainActivity.f1002z1;
                SharedPreferences.Editor editorEdit2 = mainActivity.o0().edit();
                int size2 = arrayList.size();
                while (i5 < size2) {
                    Object obj2 = arrayList.get(i5);
                    i5++;
                    gc gcVar = (gc) obj2;
                    editorEdit2.putString("dep_update_notified_".concat(gcVar.f3637a), gcVar.f3638c);
                }
                editorEdit2.apply();
                break;
            default:
                int i8 = MainActivity.f1002z1;
                mainActivity.o0().edit().putString("widget_apps_list", y1.g.e0(arrayList, ",", null, 62)).apply();
                List list = HomeFloatingWidgetsService.f926a0;
                t1.z(mainActivity);
                t1.U("apps");
                break;
        }
    }

    public /* synthetic */ da(MainActivity mainActivity, ArrayList arrayList, int i3) {
        this.f3497a = i3;
        this.b = mainActivity;
        this.f3498c = arrayList;
    }
}
