package androidx.lifecycle;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f554a = new HashMap();
    public final HashMap b;

    public a(HashMap map) {
        this.b = map;
        for (Map.Entry entry : map.entrySet()) {
            k kVar = (k) entry.getValue();
            List arrayList = (List) this.f554a.get(kVar);
            if (arrayList == null) {
                arrayList = new ArrayList();
                this.f554a.put(kVar, arrayList);
            }
            arrayList.add((b) entry.getKey());
        }
    }

    public static void a(List list, q qVar, k kVar, p pVar) {
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                b bVar = (b) list.get(size);
                Method method = bVar.b;
                try {
                    int i3 = bVar.f562a;
                    if (i3 == 0) {
                        method.invoke(pVar, null);
                    } else if (i3 == 1) {
                        method.invoke(pVar, qVar);
                    } else if (i3 == 2) {
                        method.invoke(pVar, qVar, kVar);
                    }
                } catch (IllegalAccessException e3) {
                    throw new RuntimeException(e3);
                } catch (InvocationTargetException e4) {
                    throw new RuntimeException("Failed to call observer method", e4.getCause());
                }
            }
        }
    }
}
