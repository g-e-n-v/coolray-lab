package y;

import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class e {
    public static final e b = new e(new f(d.a(new Locale[0])));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f f4652a;

    public e(f fVar) {
        this.f4652a = fVar;
    }

    public static e a(String str) {
        if (str == null || str.isEmpty()) {
            return b;
        }
        String[] strArrSplit = str.split(",", -1);
        int length = strArrSplit.length;
        Locale[] localeArr = new Locale[length];
        for (int i3 = 0; i3 < length; i3++) {
            localeArr[i3] = c.a(strArrSplit[i3]);
        }
        return new e(new f(d.a(localeArr)));
    }

    public final boolean b() {
        return this.f4652a.f4653a.isEmpty();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof e) {
            return this.f4652a.equals(((e) obj).f4652a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f4652a.f4653a.hashCode();
    }

    public final String toString() {
        return this.f4652a.f4653a.toString();
    }
}
