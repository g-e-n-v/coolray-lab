package y1;

import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class g extends n {
    public static List Z(Iterable iterable) {
        i2.g.e(iterable, "<this>");
        return m0(o0(iterable));
    }

    public static Object a0(List list) {
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.get(0);
    }

    public static Object b0(List list) {
        if (list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public static Object c0(List list, int i3) {
        i2.g.e(list, "<this>");
        if (i3 < 0 || i3 >= list.size()) {
            return null;
        }
        return list.get(i3);
    }

    public static final void d0(Iterable iterable, StringBuilder sb, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4, h2.l lVar) {
        i2.g.e(iterable, "<this>");
        sb.append(charSequence2);
        int i3 = 0;
        for (Object obj : iterable) {
            i3++;
            if (i3 > 1) {
                sb.append(charSequence);
            }
            k1.a.e(sb, obj, lVar);
        }
        sb.append(charSequence3);
    }

    public static String e0(Iterable iterable, String str, h2.l lVar, int i3) {
        if ((i3 & 1) != 0) {
            str = ", ";
        }
        String str2 = str;
        CharSequence charSequence = (i3 & 2) != 0 ? "" : "[";
        String str3 = (i3 & 4) == 0 ? "]" : "";
        if ((i3 & 32) != 0) {
            lVar = null;
        }
        i2.g.e(iterable, "<this>");
        StringBuilder sb = new StringBuilder();
        d0(iterable, sb, str2, charSequence, str3, "...", lVar);
        String string = sb.toString();
        i2.g.d(string, "toString(...)");
        return string;
    }

    public static Object f0(List list) {
        i2.g.e(list, "<this>");
        if (list.isEmpty()) {
            return null;
        }
        return list.get(list.size() - 1);
    }

    public static ArrayList g0(List list, List list2) {
        ArrayList arrayList = new ArrayList(list2.size() + list.size());
        arrayList.addAll(list);
        arrayList.addAll(list2);
        return arrayList;
    }

    public static List h0(Set set) {
        if (set.size() <= 1) {
            return m0(set);
        }
        Object[] array = set.toArray(new Comparable[0]);
        Comparable[] comparableArr = (Comparable[]) array;
        i2.g.e(comparableArr, "<this>");
        if (comparableArr.length > 1) {
            Arrays.sort(comparableArr);
        }
        return f.U(array);
    }

    public static List i0(List list, Comparator comparator) {
        if (list.size() <= 1) {
            return m0(list);
        }
        Object[] array = list.toArray(new Object[0]);
        i2.g.e(array, "<this>");
        if (array.length > 1) {
            Arrays.sort(array, comparator);
        }
        return f.U(array);
    }

    public static List j0(List list, int i3) {
        if (i3 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i3 + " is less than zero.").toString());
        }
        p pVar = p.f4663a;
        if (i3 == 0) {
            return pVar;
        }
        if (i3 >= list.size()) {
            return m0(list);
        }
        if (i3 == 1) {
            return k1.a.I(a0(list));
        }
        ArrayList arrayList = new ArrayList(i3);
        Iterator it = list.iterator();
        int i4 = 0;
        while (it.hasNext()) {
            arrayList.add(it.next());
            i4++;
            if (i4 == i3) {
                break;
            }
        }
        int size = arrayList.size();
        if (size != 0) {
            return size != 1 ? arrayList : k1.a.I(arrayList.get(0));
        }
        return pVar;
    }

    public static List k0(List list, int i3) {
        if (i3 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i3 + " is less than zero.").toString());
        }
        if (i3 == 0) {
            return p.f4663a;
        }
        int size = list.size();
        if (i3 >= size) {
            return m0(list);
        }
        if (i3 == 1) {
            if (list.isEmpty()) {
                throw new NoSuchElementException("List is empty.");
            }
            return k1.a.I(list.get(h.U(list)));
        }
        ArrayList arrayList = new ArrayList(i3);
        if (list instanceof RandomAccess) {
            for (int i4 = size - i3; i4 < size; i4++) {
                arrayList.add(list.get(i4));
            }
        } else {
            ListIterator listIterator = list.listIterator(size - i3);
            while (listIterator.hasNext()) {
                arrayList.add(listIterator.next());
            }
        }
        return arrayList;
    }

    public static final void l0(Iterable iterable, AbstractCollection abstractCollection) {
        i2.g.e(iterable, "<this>");
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            abstractCollection.add(it.next());
        }
    }

    public static List m0(Iterable iterable) {
        ArrayList arrayListN0;
        i2.g.e(iterable, "<this>");
        boolean z2 = iterable instanceof Collection;
        p pVar = p.f4663a;
        if (z2) {
            Collection collection = (Collection) iterable;
            int size = collection.size();
            if (size == 0) {
                return pVar;
            }
            if (size != 1) {
                return n0(collection);
            }
            return k1.a.I(iterable instanceof List ? ((List) iterable).get(0) : iterable.iterator().next());
        }
        i2.g.e(iterable, "<this>");
        if (iterable instanceof Collection) {
            arrayListN0 = n0((Collection) iterable);
        } else {
            ArrayList arrayList = new ArrayList();
            l0(iterable, arrayList);
            arrayListN0 = arrayList;
        }
        int size2 = arrayListN0.size();
        if (size2 != 0) {
            return size2 != 1 ? arrayListN0 : k1.a.I(arrayListN0.get(0));
        }
        return pVar;
    }

    public static ArrayList n0(Collection collection) {
        i2.g.e(collection, "<this>");
        return new ArrayList(collection);
    }

    public static Set o0(Iterable iterable) {
        i2.g.e(iterable, "<this>");
        if (iterable instanceof Collection) {
            return new LinkedHashSet((Collection) iterable);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        l0(iterable, linkedHashSet);
        return linkedHashSet;
    }

    public static Set p0(Iterable iterable) {
        i2.g.e(iterable, "<this>");
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            int size = collection.size();
            if (size != 0) {
                if (size != 1) {
                    LinkedHashSet linkedHashSet = new LinkedHashSet(s.V(collection.size()));
                    l0(iterable, linkedHashSet);
                    return linkedHashSet;
                }
                Set setSingleton = Collections.singleton(iterable instanceof List ? ((List) iterable).get(0) : iterable.iterator().next());
                i2.g.d(setSingleton, "singleton(...)");
                return setSingleton;
            }
        } else {
            LinkedHashSet linkedHashSet2 = new LinkedHashSet();
            l0(iterable, linkedHashSet2);
            int size2 = linkedHashSet2.size();
            if (size2 != 0) {
                if (size2 != 1) {
                    return linkedHashSet2;
                }
                Set setSingleton2 = Collections.singleton(linkedHashSet2.iterator().next());
                i2.g.d(setSingleton2, "singleton(...)");
                return setSingleton2;
            }
        }
        return r.f4665a;
    }
}
