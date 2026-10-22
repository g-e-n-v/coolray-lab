package o2;

/* JADX INFO: loaded from: classes.dex */
public abstract class s extends r {
    public static Integer W(String str) {
        boolean z2;
        int i3;
        int i4;
        i2.g.e(str, "<this>");
        k1.a.f(10);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i5 = 0;
        char cCharAt = str.charAt(0);
        int i6 = -2147483647;
        if (cCharAt < '0') {
            i3 = 1;
            if (length == 1) {
                return null;
            }
            if (cCharAt == '+') {
                z2 = false;
            } else {
                if (cCharAt != '-') {
                    return null;
                }
                i6 = Integer.MIN_VALUE;
                z2 = true;
            }
        } else {
            z2 = false;
            i3 = 0;
        }
        int i7 = -59652323;
        while (i3 < length) {
            int iDigit = Character.digit((int) str.charAt(i3), 10);
            if (iDigit < 0) {
                return null;
            }
            if ((i5 < i7 && (i7 != -59652323 || i5 < (i7 = i6 / 10))) || (i4 = i5 * 10) < i6 + iDigit) {
                return null;
            }
            i5 = i4 - iDigit;
            i3++;
        }
        return z2 ? Integer.valueOf(i5) : Integer.valueOf(-i5);
    }

    public static Long X(int i3, String str) {
        boolean z2;
        i2.g.e(str, "<this>");
        k1.a.f(i3);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i4 = 0;
        char cCharAt = str.charAt(0);
        long j3 = -9223372036854775807L;
        if (cCharAt < '0') {
            z2 = true;
            if (length == 1) {
                return null;
            }
            if (cCharAt == '+') {
                z2 = false;
                i4 = 1;
            } else {
                if (cCharAt != '-') {
                    return null;
                }
                j3 = Long.MIN_VALUE;
                i4 = 1;
            }
        } else {
            z2 = false;
        }
        long j4 = 0;
        long j5 = -256204778801521550L;
        while (i4 < length) {
            int iDigit = Character.digit((int) str.charAt(i4), i3);
            if (iDigit < 0) {
                return null;
            }
            if (j4 < j5) {
                if (j5 != -256204778801521550L) {
                    return null;
                }
                j5 = j3 / ((long) i3);
                if (j4 < j5) {
                    return null;
                }
            }
            long j6 = j4 * ((long) i3);
            long j7 = iDigit;
            if (j6 < j3 + j7) {
                return null;
            }
            j4 = j6 - j7;
            i4++;
        }
        return z2 ? Long.valueOf(j4) : Long.valueOf(-j4);
    }

    public static Long Y(String str) {
        i2.g.e(str, "<this>");
        return X(10, str);
    }
}
