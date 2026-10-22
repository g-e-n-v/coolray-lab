package w0;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class jh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final List f3773a = y1.h.V("volante", "vidro_traseiro", "vidro_max", "parabrisa", "banco_motorista", "banco_passageiro");

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3, types: [java.lang.Iterable, java.util.List] */
    /* JADX WARN: Type inference failed for: r6v6, types: [y1.p] */
    /* JADX WARN: Type inference failed for: r6v9, types: [java.util.ArrayList] */
    public static final Set a(String str) {
        ?? arrayList;
        List list = f3773a;
        if (str != null) {
            int i3 = 0;
            List listU0 = o2.k.u0(str, new char[]{','});
            ArrayList arrayList2 = new ArrayList(y1.i.X(listU0));
            Iterator it = listU0.iterator();
            while (it.hasNext()) {
                arrayList2.add(o2.k.E0((String) it.next()).toString());
            }
            arrayList = new ArrayList();
            int size = arrayList2.size();
            while (i3 < size) {
                Object obj = arrayList2.get(i3);
                i3++;
                if (list.contains((String) obj)) {
                    arrayList.add(obj);
                }
            }
        } else {
            arrayList = 0;
        }
        if (arrayList == 0) {
            arrayList = y1.p.f4663a;
        }
        return arrayList.isEmpty() ? y1.g.p0(list) : y1.g.p0(arrayList);
    }
}
