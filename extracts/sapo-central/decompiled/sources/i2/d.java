package i2;

import h2.p;
import h2.q;
import h2.r;
import h2.s;
import h2.t;
import h2.u;
import h2.v;
import h2.w;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class d implements m2.a, c {
    public static final Map b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class f2280a;

    static {
        List listU = y1.f.U(new Class[]{h2.a.class, h2.l.class, p.class, q.class, r.class, s.class, t.class, u.class, v.class, w.class, h2.b.class, h2.c.class, h2.d.class, h2.e.class, h2.f.class, h2.g.class, h2.h.class, h2.i.class, h2.j.class, h2.k.class, h2.m.class, h2.n.class, h2.o.class});
        ArrayList arrayList = new ArrayList(y1.i.X(listU));
        int i3 = 0;
        for (Object obj : listU) {
            int i4 = i3 + 1;
            if (i3 < 0) {
                y1.h.W();
                throw null;
            }
            arrayList.add(new x1.a((Class) obj, Integer.valueOf(i3)));
            i3 = i4;
        }
        b = y1.s.Y(arrayList);
        HashMap map = new HashMap();
        map.put("boolean", "kotlin.Boolean");
        map.put("char", "kotlin.Char");
        map.put("byte", "kotlin.Byte");
        map.put("short", "kotlin.Short");
        map.put("int", "kotlin.Int");
        map.put("float", "kotlin.Float");
        map.put("long", "kotlin.Long");
        map.put("double", "kotlin.Double");
        HashMap map2 = new HashMap();
        map2.put("java.lang.Boolean", "kotlin.Boolean");
        map2.put("java.lang.Character", "kotlin.Char");
        map2.put("java.lang.Byte", "kotlin.Byte");
        map2.put("java.lang.Short", "kotlin.Short");
        map2.put("java.lang.Integer", "kotlin.Int");
        map2.put("java.lang.Float", "kotlin.Float");
        map2.put("java.lang.Long", "kotlin.Long");
        map2.put("java.lang.Double", "kotlin.Double");
        HashMap map3 = new HashMap();
        map3.put("java.lang.Object", "kotlin.Any");
        map3.put("java.lang.String", "kotlin.String");
        map3.put("java.lang.CharSequence", "kotlin.CharSequence");
        map3.put("java.lang.Throwable", "kotlin.Throwable");
        map3.put("java.lang.Cloneable", "kotlin.Cloneable");
        map3.put("java.lang.Number", "kotlin.Number");
        map3.put("java.lang.Comparable", "kotlin.Comparable");
        map3.put("java.lang.Enum", "kotlin.Enum");
        map3.put("java.lang.annotation.Annotation", "kotlin.Annotation");
        map3.put("java.lang.Iterable", "kotlin.collections.Iterable");
        map3.put("java.util.Iterator", "kotlin.collections.Iterator");
        map3.put("java.util.Collection", "kotlin.collections.Collection");
        map3.put("java.util.List", "kotlin.collections.List");
        map3.put("java.util.Set", "kotlin.collections.Set");
        map3.put("java.util.ListIterator", "kotlin.collections.ListIterator");
        map3.put("java.util.Map", "kotlin.collections.Map");
        map3.put("java.util.Map$Entry", "kotlin.collections.Map.Entry");
        map3.put("kotlin.jvm.internal.StringCompanionObject", "kotlin.String.Companion");
        map3.put("kotlin.jvm.internal.EnumCompanionObject", "kotlin.Enum.Companion");
        map3.putAll(map);
        map3.putAll(map2);
        Collection<String> collectionValues = map.values();
        g.d(collectionValues, "<get-values>(...)");
        for (String str : collectionValues) {
            StringBuilder sb = new StringBuilder("kotlin.jvm.internal.");
            g.b(str);
            sb.append(o2.k.z0(str, '.'));
            sb.append("CompanionObject");
            map3.put(sb.toString(), str.concat(".Companion"));
        }
        for (Map.Entry entry : b.entrySet()) {
            Class cls = (Class) entry.getKey();
            int iIntValue = ((Number) entry.getValue()).intValue();
            map3.put(cls.getName(), "kotlin.Function" + iIntValue);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(y1.s.V(map3.size()));
        for (Map.Entry entry2 : map3.entrySet()) {
            linkedHashMap.put(entry2.getKey(), o2.k.z0((String) entry2.getValue(), '.'));
        }
    }

    public d(Class cls) {
        this.f2280a = cls;
    }

    @Override // i2.c
    public final Class a() {
        return this.f2280a;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof d) && a1.b.x(this).equals(a1.b.x((m2.a) obj));
    }

    public final int hashCode() {
        return a1.b.x(this).hashCode();
    }

    public final String toString() {
        return this.f2280a.toString() + " (Kotlin reflection is not available)";
    }
}
