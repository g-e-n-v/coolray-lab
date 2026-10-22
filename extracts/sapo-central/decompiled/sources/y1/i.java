package y1;

import java.util.Collection;

/* JADX INFO: loaded from: classes.dex */
public abstract class i extends h {
    public static int X(Iterable iterable) {
        i2.g.e(iterable, "<this>");
        if (iterable instanceof Collection) {
            return ((Collection) iterable).size();
        }
        return 10;
    }
}
