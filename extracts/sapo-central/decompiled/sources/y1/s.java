package y1;

import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public abstract class s extends k1.a {
    public static Object U(Map map, Object obj) {
        i2.g.e(map, "<this>");
        Object obj2 = map.get(obj);
        if (obj2 != null || map.containsKey(obj)) {
            return obj2;
        }
        throw new NoSuchElementException("Key " + obj + " is missing in the map.");
    }

    public static int V(int i3) {
        if (i3 < 0) {
            return i3;
        }
        if (i3 < 3) {
            return i3 + 1;
        }
        if (i3 < 1073741824) {
            return (int) ((i3 / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }

    public static Map W(x1.a aVar) {
        i2.g.e(aVar, "pair");
        Map mapSingletonMap = Collections.singletonMap(aVar.f4641a, aVar.b);
        i2.g.d(mapSingletonMap, "singletonMap(...)");
        return mapSingletonMap;
    }

    public static Map X(x1.a... aVarArr) {
        if (aVarArr.length <= 0) {
            return q.f4664a;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(V(aVarArr.length));
        for (x1.a aVar : aVarArr) {
            linkedHashMap.put(aVar.f4641a, aVar.b);
        }
        return linkedHashMap;
    }

    public static Map Y(ArrayList arrayList) {
        int size = arrayList.size();
        if (size == 0) {
            return q.f4664a;
        }
        if (size == 1) {
            return W((x1.a) arrayList.get(0));
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(V(arrayList.size()));
        int size2 = arrayList.size();
        int i3 = 0;
        while (i3 < size2) {
            Object obj = arrayList.get(i3);
            i3++;
            x1.a aVar = (x1.a) obj;
            linkedHashMap.put(aVar.f4641a, aVar.b);
        }
        return linkedHashMap;
    }
}
