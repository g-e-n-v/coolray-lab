package n2;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import y1.p;
import y1.r;

/* JADX INFO: loaded from: classes.dex */
public abstract class g extends h {
    public static f U(Iterator it) {
        i2.g.e(it, "<this>");
        return new a(new f2.f(2, it));
    }

    public static String V(f fVar, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) "");
        int i3 = 0;
        for (Object obj : fVar) {
            i3++;
            if (i3 > 1) {
                sb.append((CharSequence) str);
            }
            k1.a.e(sb, obj, null);
        }
        sb.append((CharSequence) "");
        String string = sb.toString();
        i2.g.d(string, "toString(...)");
        return string;
    }

    public static List W(f fVar) {
        Iterator it = fVar.iterator();
        if (!it.hasNext()) {
            return p.f4663a;
        }
        Object next = it.next();
        if (!it.hasNext()) {
            return k1.a.I(next);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(next);
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    public static Set X(f fVar) {
        Iterator it = fVar.iterator();
        if (!it.hasNext()) {
            return r.f4665a;
        }
        Object next = it.next();
        if (!it.hasNext()) {
            Set setSingleton = Collections.singleton(next);
            i2.g.d(setSingleton, "singleton(...)");
            return setSingleton;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        linkedHashSet.add(next);
        while (it.hasNext()) {
            linkedHashSet.add(it.next());
        }
        return linkedHashSet;
    }
}
