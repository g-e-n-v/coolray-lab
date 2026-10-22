package y1;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public abstract class f extends k1.a {
    public static List U(Object[] objArr) {
        i2.g.e(objArr, "<this>");
        List listAsList = Arrays.asList(objArr);
        i2.g.d(listAsList, "asList(...)");
        return listAsList;
    }

    public static void V(Object[] objArr, Object[] objArr2, int i3, int i4, int i5) {
        i2.g.e(objArr, "<this>");
        i2.g.e(objArr2, "destination");
        System.arraycopy(objArr, i4, objArr2, i3, i5 - i4);
    }

    public static byte[] W(byte[] bArr, int i3, int i4) {
        k1.a.p(i4, bArr.length);
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, i3, i4);
        i2.g.d(bArrCopyOfRange, "copyOfRange(...)");
        return bArrCopyOfRange;
    }

    public static final void X(Object[] objArr, int i3, int i4) {
        i2.g.e(objArr, "<this>");
        Arrays.fill(objArr, i3, i4, (Object) null);
    }

    public static ArrayList Y(Object[] objArr) {
        i2.g.e(objArr, "<this>");
        ArrayList arrayList = new ArrayList();
        for (Object obj : objArr) {
            if (obj != null) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static Integer Z(int[] iArr, int i3) {
        i2.g.e(iArr, "<this>");
        if (i3 < 0 || i3 >= iArr.length) {
            return null;
        }
        return Integer.valueOf(iArr[i3]);
    }

    public static Object a0(Object[] objArr, int i3) {
        if (i3 < 0 || i3 >= objArr.length) {
            return null;
        }
        return objArr[i3];
    }

    public static String b0(byte[] bArr, h2.l lVar) {
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) "");
        int i3 = 0;
        for (byte b : bArr) {
            i3++;
            if (i3 > 1) {
                sb.append((CharSequence) "");
            }
            sb.append((CharSequence) lVar.c(Byte.valueOf(b)));
        }
        sb.append((CharSequence) "");
        String string = sb.toString();
        i2.g.d(string, "toString(...)");
        return string;
    }

    public static long c0(long[] jArr) {
        i2.g.e(jArr, "<this>");
        if (jArr.length != 0) {
            return jArr[jArr.length - 1];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    public static byte[] d0(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        int length2 = bArr2.length;
        byte[] bArrCopyOf = Arrays.copyOf(bArr, length + length2);
        System.arraycopy(bArr2, 0, bArrCopyOf, length, length2);
        i2.g.b(bArrCopyOf);
        return bArrCopyOf;
    }

    public static List e0(Object[] objArr, Comparator comparator) {
        if (objArr.length != 0) {
            objArr = Arrays.copyOf(objArr, objArr.length);
            i2.g.d(objArr, "copyOf(...)");
            if (objArr.length > 1) {
                Arrays.sort(objArr, comparator);
            }
        }
        return U(objArr);
    }

    public static List f0(int i3, byte[] bArr) {
        if (i3 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i3 + " is less than zero.").toString());
        }
        if (i3 != 0) {
            int i4 = 0;
            if (i3 < bArr.length) {
                if (i3 == 1) {
                    return k1.a.I(Byte.valueOf(bArr[0]));
                }
                ArrayList arrayList = new ArrayList(i3);
                int length = bArr.length;
                int i5 = 0;
                while (i4 < length) {
                    arrayList.add(Byte.valueOf(bArr[i4]));
                    i5++;
                    if (i5 == i3) {
                        break;
                    }
                    i4++;
                }
                return arrayList;
            }
            int length2 = bArr.length;
            if (length2 != 0) {
                if (length2 == 1) {
                    return k1.a.I(Byte.valueOf(bArr[0]));
                }
                ArrayList arrayList2 = new ArrayList(bArr.length);
                int length3 = bArr.length;
                while (i4 < length3) {
                    arrayList2.add(Byte.valueOf(bArr[i4]));
                    i4++;
                }
                return arrayList2;
            }
        }
        return p.f4663a;
    }
}
