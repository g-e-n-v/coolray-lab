package o2;

import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public final class u extends i2.h implements h2.p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2638a;
    public final /* synthetic */ Object b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ u(int i3, Object obj) {
        super(2);
        this.f2638a = i3;
        this.b = obj;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0098 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:36:0x009a A[LOOP:0: B:25:0x0069->B:36:0x009a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:49:0x00cb A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:50:0x00cd A[LOOP:2: B:39:0x00a0->B:50:0x00cd, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:51:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:60:0x008e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:61:0x00d0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:65:0x00d0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:66:0x00c1 A[SYNTHETIC] */
    @Override // h2.p
    public final Object b(Object obj, Object obj2) {
        Object next;
        String str;
        x1.a aVar;
        String str2;
        Object next2;
        String str3;
        String str4;
        switch (this.f2638a) {
            case 0:
                CharSequence charSequence = (CharSequence) obj;
                int iIntValue = ((Number) obj2).intValue();
                i2.g.e(charSequence, "$this$$receiver");
                int iL0 = k.l0(charSequence, (char[]) this.b, iIntValue, false);
                if (iL0 < 0) {
                    return null;
                }
                return new x1.a(Integer.valueOf(iL0), 1);
            default:
                CharSequence charSequence2 = (CharSequence) obj;
                int iIntValue2 = ((Number) obj2).intValue();
                i2.g.e(charSequence2, "$this$$receiver");
                List list = (List) this.b;
                if (list.size() == 1) {
                    int size = list.size();
                    if (size == 0) {
                        throw new NoSuchElementException("List is empty.");
                    }
                    if (size != 1) {
                        throw new IllegalArgumentException("List has more than one element.");
                    }
                    String str5 = (String) list.get(0);
                    int iK0 = k.k0(charSequence2, str5, iIntValue2, false, 4);
                    if (iK0 < 0) {
                        aVar = null;
                    } else {
                        aVar = new x1.a(Integer.valueOf(iK0), str5);
                    }
                } else {
                    if (iIntValue2 < 0) {
                        iIntValue2 = 0;
                    }
                    boolean z2 = charSequence2 instanceof String;
                    int i3 = new l2.c(iIntValue2, charSequence2.length(), 1).b;
                    if (z2) {
                        if (iIntValue2 > i3) {
                            aVar = null;
                        } else {
                            int i4 = iIntValue2;
                            while (true) {
                                Iterator it = list.iterator();
                                do {
                                    if (it.hasNext()) {
                                        next2 = it.next();
                                        str4 = (String) next2;
                                    } else {
                                        next2 = null;
                                    }
                                    str3 = (String) next2;
                                    if (str3 != null) {
                                        aVar = new x1.a(Integer.valueOf(i4), str3);
                                    } else if (i4 != i3) {
                                        i4++;
                                    } else {
                                        aVar = null;
                                    }
                                } while (!t.b0(0, i4, str4.length(), str4, (String) charSequence2, false));
                                str3 = (String) next2;
                                if (str3 != null) {
                                    aVar = new x1.a(Integer.valueOf(i4), str3);
                                } else if (i4 != i3) {
                                    i4++;
                                } else {
                                    aVar = null;
                                }
                            }
                        }
                    } else if (iIntValue2 > i3) {
                        aVar = null;
                    } else {
                        while (true) {
                            Iterator it2 = list.iterator();
                            do {
                                if (it2.hasNext()) {
                                    next = it2.next();
                                    str2 = (String) next;
                                } else {
                                    next = null;
                                }
                                str = (String) next;
                                if (str != null) {
                                    aVar = new x1.a(Integer.valueOf(iIntValue2), str);
                                } else if (iIntValue2 != i3) {
                                    iIntValue2++;
                                } else {
                                    aVar = null;
                                }
                            } while (!k.q0(str2, charSequence2, iIntValue2, str2.length(), false));
                            str = (String) next;
                            if (str != null) {
                                aVar = new x1.a(Integer.valueOf(iIntValue2), str);
                            } else if (iIntValue2 != i3) {
                                iIntValue2++;
                            } else {
                                aVar = null;
                            }
                        }
                    }
                }
                if (aVar != null) {
                    return new x1.a(aVar.f4641a, Integer.valueOf(((String) aVar.b).length()));
                }
                return null;
        }
    }
}
