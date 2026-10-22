package y1;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class h extends k1.a {
    public static int U(List list) {
        i2.g.e(list, "<this>");
        return list.size() - 1;
    }

    public static List V(Object... objArr) {
        return objArr.length > 0 ? f.U(objArr) : p.f4663a;
    }

    public static void W() {
        throw new ArithmeticException("Index overflow has happened.");
    }
}
