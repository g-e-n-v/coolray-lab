package androidx.fragment.app;

import android.content.Intent;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class d0 extends a1.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f407a;

    public /* synthetic */ d0(int i3) {
        this.f407a = i3;
    }

    @Override // a1.b
    public final Object T(int i3, Intent intent) {
        switch (this.f407a) {
            case 0:
                return new androidx.activity.result.a(i3, intent);
            case 1:
                if (i3 == -1 && intent != null) {
                    String[] stringArrayExtra = intent.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
                    int[] intArrayExtra = intent.getIntArrayExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS");
                    if (intArrayExtra != null && stringArrayExtra != null) {
                        ArrayList arrayList = new ArrayList(intArrayExtra.length);
                        for (int i4 : intArrayExtra) {
                            arrayList.add(Boolean.valueOf(i4 == 0));
                        }
                        ArrayList arrayListY = y1.f.Y(stringArrayExtra);
                        Iterator it = arrayListY.iterator();
                        Iterator it2 = arrayList.iterator();
                        ArrayList arrayList2 = new ArrayList(Math.min(y1.i.X(arrayListY), y1.i.X(arrayList)));
                        while (it.hasNext() && it2.hasNext()) {
                            arrayList2.add(new x1.a(it.next(), it2.next()));
                        }
                        return y1.s.Y(arrayList2);
                    }
                }
                return y1.q.f4664a;
            default:
                return new androidx.activity.result.a(i3, intent);
        }
    }
}
