package o2;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public abstract class k extends t {
    public static String A0(String str, char c3) {
        i2.g.e(str, "<this>");
        i2.g.e(str, "missingDelimiterValue");
        int iJ0 = j0(str, c3, 0, 6);
        if (iJ0 == -1) {
            return str;
        }
        String strSubstring = str.substring(0, iJ0);
        i2.g.d(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static String B0(String str, String str2) {
        i2.g.e(str, "<this>");
        i2.g.e(str, "missingDelimiterValue");
        int iK0 = k0(str, str2, 0, false, 6);
        if (iK0 == -1) {
            return str;
        }
        String strSubstring = str.substring(0, iK0);
        i2.g.d(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static String C0(int i3, String str) {
        i2.g.e(str, "<this>");
        if (i3 < 0) {
            throw new IllegalArgumentException(("Requested character count " + i3 + " is less than zero.").toString());
        }
        int length = str.length();
        if (i3 > length) {
            i3 = length;
        }
        String strSubstring = str.substring(0, i3);
        i2.g.d(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static String D0(int i3, String str) {
        i2.g.e(str, "<this>");
        if (i3 < 0) {
            throw new IllegalArgumentException(("Requested character count " + i3 + " is less than zero.").toString());
        }
        int length = str.length();
        if (i3 > length) {
            i3 = length;
        }
        String strSubstring = str.substring(length - i3);
        i2.g.d(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static CharSequence E0(CharSequence charSequence) {
        i2.g.e(charSequence, "<this>");
        int length = charSequence.length() - 1;
        int i3 = 0;
        boolean z2 = false;
        while (i3 <= length) {
            boolean zG = k1.a.G(charSequence.charAt(!z2 ? i3 : length));
            if (z2) {
                if (!zG) {
                    break;
                }
                length--;
            } else if (zG) {
                i3++;
            } else {
                z2 = true;
            }
        }
        return charSequence.subSequence(i3, length + 1);
    }

    public static CharSequence F0(String str) {
        i2.g.e(str, "<this>");
        int length = str.length() - 1;
        if (length < 0) {
            return "";
        }
        while (true) {
            int i3 = length - 1;
            if (!k1.a.G(str.charAt(length))) {
                return str.subSequence(0, length + 1);
            }
            if (i3 < 0) {
                return "";
            }
            length = i3;
        }
    }

    public static String G0(String str, char... cArr) {
        CharSequence charSequenceSubSequence;
        int length = str.length() - 1;
        if (length < 0) {
            charSequenceSubSequence = "";
            break;
        }
        while (true) {
            int i3 = length - 1;
            char cCharAt = str.charAt(length);
            int length2 = cArr.length;
            int i4 = 0;
            while (true) {
                if (i4 >= length2) {
                    i4 = -1;
                    break;
                }
                if (cCharAt == cArr[i4]) {
                    break;
                }
                i4++;
            }
            if (!(i4 >= 0)) {
                charSequenceSubSequence = str.subSequence(0, length + 1);
                break;
            }
            if (i3 < 0) {
                charSequenceSubSequence = "";
                break;
            }
            length = i3;
        }
        return charSequenceSubSequence.toString();
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0064 A[EDGE_INSN: B:30:0x0064->B:31:0x0065 BREAK  A[LOOP:1: B:25:0x0054->B:29:0x0061]] */
    /* JADX WARN: Code duplicated, block: B:32:0x0067 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:33:0x0068 A[RETURN] */
    public static boolean e0(CharSequence charSequence, CharSequence charSequence2, boolean z2) {
        int i3;
        i2.g.e(charSequence, "<this>");
        i2.g.e(charSequence2, "other");
        boolean z3 = charSequence2 instanceof String;
        if (z3) {
            if (k0(charSequence, (String) charSequence2, 0, z2, 2) >= 0) {
                return true;
            }
            return false;
        }
        int length = charSequence.length();
        int length2 = charSequence.length();
        if (length > length2) {
            length = length2;
        }
        l2.c cVar = new l2.c(0, length, 1);
        boolean z4 = charSequence instanceof String;
        int i4 = cVar.b;
        if (!z4 || !z3) {
            if (i4 >= 0) {
                i3 = 0;
                while (!q0(charSequence2, charSequence, i3, charSequence2.length(), z2)) {
                    if (i3 == i4) {
                        i3 = -1;
                        break;
                    }
                    i3++;
                }
            } else {
                i3 = -1;
                break;
            }
        } else if (i4 >= 0) {
            i3 = 0;
            while (true) {
                String str = (String) charSequence2;
                boolean z5 = z2;
                if (!t.b0(0, i3, str.length(), str, (String) charSequence, z5)) {
                    if (i3 == i4) {
                        i3 = -1;
                        break;
                    }
                    i3++;
                    z2 = z5;
                } else {
                    break;
                }
            }
        } else {
            i3 = -1;
            break;
        }
        if (i3 >= 0) {
            return true;
        }
        return false;
    }

    public static boolean f0(String str, char c3) {
        i2.g.e(str, "<this>");
        return j0(str, c3, 0, 2) >= 0;
    }

    public static String g0(int i3, String str) {
        i2.g.e(str, "<this>");
        if (i3 < 0) {
            throw new IllegalArgumentException(("Requested character count " + i3 + " is less than zero.").toString());
        }
        int length = str.length();
        if (i3 > length) {
            i3 = length;
        }
        String strSubstring = str.substring(i3);
        i2.g.d(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static final int h0(CharSequence charSequence) {
        i2.g.e(charSequence, "<this>");
        return charSequence.length() - 1;
    }

    public static final int i0(CharSequence charSequence, String str, int i3, boolean z2) {
        i2.g.e(charSequence, "<this>");
        i2.g.e(str, "string");
        if (!z2 && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(str, i3);
        }
        int length = charSequence.length();
        if (i3 < 0) {
            i3 = 0;
        }
        int length2 = charSequence.length();
        if (length > length2) {
            length = length2;
        }
        l2.c cVar = new l2.c(i3, length, 1);
        boolean z3 = charSequence instanceof String;
        int i4 = cVar.b;
        if (!z3) {
            if (i3 > i4) {
                return -1;
            }
            while (!q0(str, charSequence, i3, str.length(), z2)) {
                if (i3 == i4) {
                    return -1;
                }
                i3++;
            }
            return i3;
        }
        if (i3 > i4) {
            return -1;
        }
        int i5 = i3;
        while (true) {
            String str2 = str;
            boolean z4 = z2;
            if (t.b0(0, i5, str.length(), str2, (String) charSequence, z4)) {
                return i5;
            }
            if (i5 == i4) {
                return -1;
            }
            i5++;
            str = str2;
            z2 = z4;
        }
    }

    public static int j0(CharSequence charSequence, char c3, int i3, int i4) {
        if ((i4 & 2) != 0) {
            i3 = 0;
        }
        i2.g.e(charSequence, "<this>");
        return !(charSequence instanceof String) ? l0(charSequence, new char[]{c3}, i3, false) : ((String) charSequence).indexOf(c3, i3);
    }

    public static /* synthetic */ int k0(CharSequence charSequence, String str, int i3, boolean z2, int i4) {
        if ((i4 & 2) != 0) {
            i3 = 0;
        }
        if ((i4 & 4) != 0) {
            z2 = false;
        }
        return i0(charSequence, str, i3, z2);
    }

    public static final int l0(CharSequence charSequence, char[] cArr, int i3, boolean z2) {
        i2.g.e(charSequence, "<this>");
        if (!z2 && cArr.length == 1 && (charSequence instanceof String)) {
            int length = cArr.length;
            if (length == 0) {
                throw new NoSuchElementException("Array is empty.");
            }
            if (length != 1) {
                throw new IllegalArgumentException("Array has more than one element.");
            }
            return ((String) charSequence).indexOf(cArr[0], i3);
        }
        if (i3 < 0) {
            i3 = 0;
        }
        int iH0 = h0(charSequence);
        if (i3 > iH0) {
            return -1;
        }
        while (true) {
            char cCharAt = charSequence.charAt(i3);
            for (char c3 : cArr) {
                if (k1.a.w(c3, cCharAt, z2)) {
                    return i3;
                }
            }
            if (i3 == iH0) {
                return -1;
            }
            i3++;
        }
    }

    public static boolean m0(CharSequence charSequence) {
        i2.g.e(charSequence, "<this>");
        for (int i3 = 0; i3 < charSequence.length(); i3++) {
            if (!k1.a.G(charSequence.charAt(i3))) {
                return false;
            }
        }
        return true;
    }

    public static n2.c n0(CharSequence charSequence) {
        i2.g.e(charSequence, "<this>");
        return new n2.c(p0(charSequence, new String[]{"\r\n", "\n", "\r"}, 0), new l(1, charSequence), 2);
    }

    public static List o0(String str) {
        i2.g.e(str, "<this>");
        return n2.g.W(n0(str));
    }

    public static c p0(CharSequence charSequence, String[] strArr, int i3) {
        s0(i3);
        return new c(charSequence, i3, new u(1, y1.f.U(strArr)));
    }

    public static final boolean q0(CharSequence charSequence, CharSequence charSequence2, int i3, int i4, boolean z2) {
        i2.g.e(charSequence, "<this>");
        i2.g.e(charSequence2, "other");
        if (i3 >= 0 && charSequence.length() - i4 >= 0 && i3 <= charSequence2.length() - i4) {
            for (int i5 = 0; i5 < i4; i5++) {
                if (k1.a.w(charSequence.charAt(i5), charSequence2.charAt(i3 + i5), z2)) {
                }
            }
            return true;
        }
        return false;
    }

    public static String r0(String str, String str2) {
        i2.g.e(str, "<this>");
        if (!t.d0(str, str2)) {
            return str;
        }
        String strSubstring = str.substring(str2.length());
        i2.g.d(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static final void s0(int i3) {
        if (i3 >= 0) {
            return;
        }
        throw new IllegalArgumentException(("Limit must be non-negative, but was " + i3).toString());
    }

    public static final List t0(CharSequence charSequence, String str, int i3) {
        s0(i3);
        int iI0 = i0(charSequence, str, 0, false);
        if (iI0 == -1 || i3 == 1) {
            return k1.a.I(charSequence.toString());
        }
        boolean z2 = i3 > 0;
        int i4 = 10;
        if (z2 && i3 <= 10) {
            i4 = i3;
        }
        ArrayList arrayList = new ArrayList(i4);
        int length = 0;
        do {
            arrayList.add(charSequence.subSequence(length, iI0).toString());
            length = str.length() + iI0;
            if (z2 && arrayList.size() == i3 - 1) {
                break;
            }
            iI0 = i0(charSequence, str, length, false);
        } while (iI0 != -1);
        arrayList.add(charSequence.subSequence(length, charSequence.length()).toString());
        return arrayList;
    }

    public static List u0(String str, char[] cArr) {
        i2.g.e(str, "<this>");
        if (cArr.length == 1) {
            return t0(str, String.valueOf(cArr[0]), 0);
        }
        s0(0);
        n2.i iVar = new n2.i(new c(str, 0, new u(0, cArr)));
        ArrayList arrayList = new ArrayList(y1.i.X(iVar));
        Iterator it = iVar.iterator();
        while (true) {
            b bVar = (b) it;
            if (!bVar.hasNext()) {
                return arrayList;
            }
            arrayList.add(w0(str, (l2.c) bVar.next()));
        }
    }

    public static List v0(String str, String[] strArr, int i3, int i4) {
        if ((i4 & 4) != 0) {
            i3 = 0;
        }
        i2.g.e(str, "<this>");
        if (strArr.length == 1) {
            String str2 = strArr[0];
            if (str2.length() != 0) {
                return t0(str, str2, i3);
            }
        }
        n2.i iVar = new n2.i(p0(str, strArr, i3));
        ArrayList arrayList = new ArrayList(y1.i.X(iVar));
        Iterator it = iVar.iterator();
        while (true) {
            b bVar = (b) it;
            if (!bVar.hasNext()) {
                return arrayList;
            }
            arrayList.add(w0(str, (l2.c) bVar.next()));
        }
    }

    public static final String w0(CharSequence charSequence, l2.c cVar) {
        i2.g.e(charSequence, "<this>");
        i2.g.e(cVar, "range");
        return charSequence.subSequence(cVar.f2425a, cVar.b + 1).toString();
    }

    public static String x0(String str, char c3, String str2) {
        int iJ0 = j0(str, c3, 0, 6);
        if (iJ0 == -1) {
            return str2;
        }
        String strSubstring = str.substring(iJ0 + 1, str.length());
        i2.g.d(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static String y0(String str, String str2, String str3) {
        i2.g.e(str, "<this>");
        i2.g.e(str3, "missingDelimiterValue");
        int iK0 = k0(str, str2, 0, false, 6);
        if (iK0 == -1) {
            return str3;
        }
        String strSubstring = str.substring(str2.length() + iK0, str.length());
        i2.g.d(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static String z0(String str, char c3) {
        i2.g.e(str, "<this>");
        i2.g.e(str, "missingDelimiterValue");
        int iLastIndexOf = str.lastIndexOf(c3, h0(str));
        if (iLastIndexOf == -1) {
            return str;
        }
        String strSubstring = str.substring(iLastIndexOf + 1, str.length());
        i2.g.d(strSubstring, "substring(...)");
        return strSubstring;
    }
}
