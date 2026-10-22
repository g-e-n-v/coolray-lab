package w0;

import android.content.DialogInterface;
import com.ex.auto.MainActivity;
import com.ex.auto.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ua implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4343a;
    public final /* synthetic */ MainActivity b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ List f4344c;

    public /* synthetic */ ua(MainActivity mainActivity, List list, int i3) {
        this.f4343a = i3;
        this.b = mainActivity;
        this.f4344c = list;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String strZ0;
        int i3 = this.f4343a;
        int i4 = 0;
        final List<String> list = this.f4344c;
        MainActivity mainActivity = this.b;
        switch (i3) {
            case 0:
                int i5 = MainActivity.f1002z1;
                if (!mainActivity.isFinishing() && !mainActivity.isDestroyed() && !list.isEmpty()) {
                    ArrayList arrayList = new ArrayList(y1.i.X(list));
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        arrayList.add((String) ((x1.a) it.next()).b);
                    }
                    String[] strArr = (String[]) arrayList.toArray(new String[0]);
                    String string = mainActivity.o0().getString("widget_apps_list", "");
                    List listV0 = o2.k.v0(string != null ? string : "", new String[]{","}, 0, 6);
                    ArrayList arrayList2 = new ArrayList(y1.i.X(listV0));
                    Iterator it2 = listV0.iterator();
                    while (it2.hasNext()) {
                        arrayList2.add(o2.k.E0((String) it2.next()).toString());
                    }
                    ArrayList arrayList3 = new ArrayList();
                    int size = arrayList2.size();
                    int i6 = 0;
                    while (i6 < size) {
                        Object obj = arrayList2.get(i6);
                        i6++;
                        if (((String) obj).length() > 0) {
                            arrayList3.add(obj);
                        }
                    }
                    final ArrayList arrayListN0 = y1.g.n0(arrayList3);
                    ArrayList arrayList4 = new ArrayList(y1.i.X(list));
                    Iterator it3 = list.iterator();
                    while (it3.hasNext()) {
                        arrayList4.add(Boolean.valueOf(arrayListN0.contains(((x1.a) it3.next()).f4641a)));
                    }
                    boolean[] zArr = new boolean[arrayList4.size()];
                    int size2 = arrayList4.size();
                    int i7 = 0;
                    while (i7 < size2) {
                        Object obj2 = arrayList4.get(i7);
                        i7++;
                        zArr[i4] = ((Boolean) obj2).booleanValue();
                        i4++;
                    }
                    e.h hVar = new e.h(mainActivity);
                    hVar.g(R.string.k_widget_apps_choose);
                    DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener = new DialogInterface.OnMultiChoiceClickListener() { // from class: w0.bb
                        @Override // android.content.DialogInterface.OnMultiChoiceClickListener
                        public final void onClick(DialogInterface dialogInterface, int i8, boolean z2) {
                            int i9 = MainActivity.f1002z1;
                            String str = (String) ((x1.a) list.get(i8)).f4641a;
                            ArrayList arrayList5 = arrayListN0;
                            if (!z2) {
                                arrayList5.remove(str);
                            } else {
                                if (arrayList5.contains(str)) {
                                    return;
                                }
                                arrayList5.add(str);
                            }
                        }
                    };
                    e.d dVar = (e.d) hVar.b;
                    dVar.f1565p = strArr;
                    dVar.f1573x = onMultiChoiceClickListener;
                    dVar.f1569t = zArr;
                    dVar.f1570u = true;
                    hVar.e(android.R.string.ok, new da(mainActivity, arrayListN0, 3));
                    hVar.b(android.R.string.cancel, null);
                    hVar.h();
                    break;
                }
                break;
            case 1:
                ArrayList arrayList5 = mainActivity.F;
                arrayList5.clear();
                ArrayList arrayList6 = new ArrayList(y1.i.X(list));
                Iterator it4 = list.iterator();
                while (it4.hasNext()) {
                    arrayList6.add((String) ((x1.a) it4.next()).f4641a);
                }
                arrayList5.addAll(arrayList6);
                ArrayList arrayList7 = new ArrayList(y1.i.X(list));
                Iterator it5 = list.iterator();
                while (it5.hasNext()) {
                    arrayList7.add((String) ((x1.a) it5.next()).b);
                }
                String string2 = mainActivity.getString(R.string.k_no_user_apps);
                i2.g.d(string2, "getString(...)");
                mainActivity.Q1(string2, arrayList7);
                break;
            default:
                ArrayList arrayList8 = mainActivity.E;
                arrayList8.clear();
                arrayList8.addAll(list);
                ArrayList arrayList9 = new ArrayList(y1.i.X(list));
                for (String str : list) {
                    if (o2.t.d0(str, "/data/data/com.aurora.store/cache/Downloads")) {
                        List listU0 = o2.k.u0(o2.k.G0(str, '/'), new char[]{'/'});
                        String str2 = (String) y1.g.c0(listU0, listU0.size() - 2);
                        if (str2 != null) {
                            str = str2;
                        }
                        strZ0 = str.concat(" (Aurora)");
                    } else {
                        strZ0 = o2.k.z0(str, '/');
                    }
                    arrayList9.add(strZ0);
                }
                String string3 = mainActivity.getString(R.string.k_no_apk_files);
                i2.g.d(string3, "getString(...)");
                mainActivity.Q1(string3, arrayList9);
                break;
        }
    }
}
