package o2;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class m extends k1.a {
    public static String U(String str, String str2) {
        i2.g.e(str, "<this>");
        return n2.g.V(new n2.c(k.n0(str), new l(0, str2), 2), "\n");
    }

    public static String V(String str) {
        Comparable comparable;
        i2.g.e(str, "<this>");
        List listO0 = k.o0(str);
        ArrayList arrayList = new ArrayList();
        for (Object obj : listO0) {
            if (!k.m0((String) obj)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(y1.i.X(arrayList));
        int size = arrayList.size();
        int i3 = 0;
        int i4 = 0;
        while (i4 < size) {
            Object obj2 = arrayList.get(i4);
            i4++;
            String str2 = (String) obj2;
            int length = str2.length();
            int length2 = 0;
            while (true) {
                if (length2 >= length) {
                    length2 = -1;
                    break;
                }
                if (!k1.a.G(str2.charAt(length2))) {
                    break;
                }
                length2++;
            }
            if (length2 == -1) {
                length2 = str2.length();
            }
            arrayList2.add(Integer.valueOf(length2));
        }
        Iterator it = arrayList2.iterator();
        if (it.hasNext()) {
            comparable = (Comparable) it.next();
            while (it.hasNext()) {
                Comparable comparable2 = (Comparable) it.next();
                if (comparable.compareTo(comparable2) > 0) {
                    comparable = comparable2;
                }
            }
        } else {
            comparable = null;
        }
        Integer num = (Integer) comparable;
        int iIntValue = num != null ? num.intValue() : 0;
        int length3 = str.length();
        listO0.size();
        int iU = y1.h.U(listO0);
        ArrayList arrayList3 = new ArrayList();
        for (Object obj3 : listO0) {
            int i5 = i3 + 1;
            if (i3 < 0) {
                y1.h.W();
                throw null;
            }
            String str3 = (String) obj3;
            String strG0 = ((i3 == 0 || i3 == iU) && k.m0(str3)) ? null : k.g0(iIntValue, str3);
            if (strG0 != null) {
                arrayList3.add(strG0);
            }
            i3 = i5;
        }
        StringBuilder sb = new StringBuilder(length3);
        y1.g.d0(arrayList3, sb, "\n", "", "", "...", null);
        String string = sb.toString();
        i2.g.d(string, "toString(...)");
        return string;
    }
}
