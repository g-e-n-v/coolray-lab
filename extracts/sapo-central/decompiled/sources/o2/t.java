package o2;

/* JADX INFO: loaded from: classes.dex */
public abstract class t extends s {
    public static boolean Z(String str, String str2, boolean z2) {
        i2.g.e(str, "<this>");
        return !z2 ? str.endsWith(str2) : b0(str.length() - str2.length(), 0, str2.length(), str, str2, true);
    }

    public static boolean a0(String str, String str2) {
        if (str == null) {
            return str2 == null;
        }
        return str.equalsIgnoreCase(str2);
    }

    public static final boolean b0(int i3, int i4, int i5, String str, String str2, boolean z2) {
        i2.g.e(str, "<this>");
        i2.g.e(str2, "other");
        return !z2 ? str.regionMatches(i3, str2, i4, i5) : str.regionMatches(z2, i3, str2, i4, i5);
    }

    public static String c0(String str, String str2, String str3) {
        i2.g.e(str, "<this>");
        i2.g.e(str2, "oldValue");
        i2.g.e(str3, "newValue");
        int iI0 = k.i0(str, str2, 0, false);
        if (iI0 < 0) {
            return str;
        }
        int length = str2.length();
        int i3 = length >= 1 ? length : 1;
        int length2 = str3.length() + (str.length() - length);
        if (length2 < 0) {
            throw new OutOfMemoryError();
        }
        StringBuilder sb = new StringBuilder(length2);
        int i4 = 0;
        do {
            sb.append((CharSequence) str, i4, iI0);
            sb.append(str3);
            i4 = iI0 + length;
            if (iI0 >= str.length()) {
                break;
            }
            iI0 = k.i0(str, str2, iI0 + i3, false);
        } while (iI0 > 0);
        sb.append((CharSequence) str, i4, str.length());
        String string = sb.toString();
        i2.g.d(string, "toString(...)");
        return string;
    }

    public static boolean d0(String str, String str2) {
        i2.g.e(str, "<this>");
        i2.g.e(str2, "prefix");
        return str.startsWith(str2);
    }
}
