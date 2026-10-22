package w0;

import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.widget.NumberPicker;
import com.ex.auto.AcProgramEditActivity;
import com.ex.auto.HomeFloatingWidgetsService;
import com.ex.auto.MainActivity;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.R;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3515a;
    public final /* synthetic */ Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f3516c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f3517d;

    public /* synthetic */ e(Object obj, Object obj2, Object obj3, int i3) {
        this.f3515a = i3;
        this.b = obj;
        this.f3516c = obj2;
        this.f3517d = obj3;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i3) {
        int i4 = this.f3515a;
        int i5 = 0;
        Object obj = this.f3517d;
        Object obj2 = this.f3516c;
        Object obj3 = this.b;
        switch (i4) {
            case 0:
                AcProgramEditActivity acProgramEditActivity = (AcProgramEditActivity) obj;
                int i6 = AcProgramEditActivity.f760z;
                int value = ((NumberPicker) obj2).getValue() + (((NumberPicker) obj3).getValue() * 60);
                if (value > 0) {
                    acProgramEditActivity.f762u.add(new l("wait", value));
                    acProgramEditActivity.t();
                    return;
                }
                return;
            case 1:
                MainActivity mainActivity = (MainActivity) obj2;
                boolean[] zArr = (boolean[]) obj;
                int i7 = MainActivity.f1002z1;
                ArrayList arrayList = new ArrayList();
                for (Object obj4 : (List) obj3) {
                    int i8 = i5 + 1;
                    if (i5 < 0) {
                        y1.h.W();
                        throw null;
                    }
                    if (zArr[i5]) {
                        arrayList.add(obj4);
                    }
                    i5 = i8;
                }
                Set<String> setP0 = y1.g.p0(arrayList);
                List list = jh.f3773a;
                if (!setP0.isEmpty()) {
                    for (String str : setP0) {
                        List list2 = jh.f3773a;
                        if (list2.contains(str)) {
                            SharedPreferences.Editor editorEdit = mainActivity.o0().edit();
                            ArrayList arrayList2 = new ArrayList();
                            for (Object obj5 : list2) {
                                if (setP0.contains((String) obj5)) {
                                    arrayList2.add(obj5);
                                }
                            }
                            editorEdit.putString("widget_heating_icons", y1.g.e0(arrayList2, ",", null, 62)).apply();
                            List list3 = HomeFloatingWidgetsService.f926a0;
                            t1.z(mainActivity);
                            t1.U("heating");
                            return;
                        }
                    }
                }
                androidx.activity.result.b.n(R.string.k_widget_heating_pick_need_one, 1, mainActivity, "getString(...)");
                return;
            default:
                QuickAccessFloaterService quickAccessFloaterService = (QuickAccessFloaterService) obj2;
                boolean[] zArr2 = (boolean[]) obj;
                int i9 = QuickAccessFloaterService.t0;
                ArrayList arrayList3 = new ArrayList();
                int i10 = 0;
                for (Object obj6 : (List) obj3) {
                    int i11 = i10 + 1;
                    if (i10 < 0) {
                        y1.h.W();
                        throw null;
                    }
                    if (zArr2[i10]) {
                        arrayList3.add(obj6);
                    }
                    i10 = i11;
                }
                ArrayList arrayList4 = new ArrayList(y1.i.X(arrayList3));
                int size = arrayList3.size();
                int i12 = 0;
                while (i12 < size) {
                    Object obj7 = arrayList3.get(i12);
                    i12++;
                    arrayList4.add((String) ((x1.d) obj7).f4645a);
                }
                if (!arrayList4.isEmpty()) {
                    quickAccessFloaterService.getClass();
                    new Thread(new of(quickAccessFloaterService, arrayList4, i5)).start();
                    return;
                } else {
                    String string = quickAccessFloaterService.getString(R.string.k_close_apps_none_selected);
                    i2.g.d(string, "getString(...)");
                    quickAccessFloaterService.G(string);
                    return;
                }
        }
    }
}
