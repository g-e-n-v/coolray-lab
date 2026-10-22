package w0;

import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class s4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final List f4200a = y1.f.U(new String[]{"REACHABLE", "DELAY", "PROBE", "STALE"});
    public static final o2.h b = new o2.h("^\\d{1,3}(\\.\\d{1,3}){3}$");

    public static final String a(String str, String str2) {
        Object next;
        Object next2;
        String str3;
        List listW = n2.g.W(new n2.d(new n2.c(new n2.c(o2.k.n0(str), new n2(3), 2), new n2(4), 2), false, n2.j.f2535a));
        Iterator it = listW.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            x1.a aVar = (x1.a) next;
            if (i2.g.a(aVar.b, str2) && ((Number) aVar.f4641a).intValue() < f4200a.indexOf("STALE")) {
                break;
            }
        }
        x1.a aVar2 = (x1.a) next;
        if (aVar2 != null && (str3 = (String) aVar2.b) != null) {
            return str3;
        }
        Iterator it2 = listW.iterator();
        if (it2.hasNext()) {
            next2 = it2.next();
            if (it2.hasNext()) {
                int iIntValue = ((Number) ((x1.a) next2).f4641a).intValue();
                do {
                    Object next3 = it2.next();
                    int iIntValue2 = ((Number) ((x1.a) next3).f4641a).intValue();
                    if (iIntValue > iIntValue2) {
                        next2 = next3;
                        iIntValue = iIntValue2;
                    }
                } while (it2.hasNext());
            }
        } else {
            next2 = null;
        }
        x1.a aVar3 = (x1.a) next2;
        if (aVar3 != null) {
            return (String) aVar3.b;
        }
        return null;
    }
}
