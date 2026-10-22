package w0;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public abstract class i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final androidx.emoji2.text.m f3693a = new androidx.emoji2.text.m(28);

    public static void a(String str, String str2) {
        i2.g.e(str2, "phase");
        AtomicReference atomicReference = (AtomicReference) f3693a.b;
        while (true) {
            n6 n6Var = (n6) atomicReference.get();
            if (n6Var == null) {
                return;
            }
            String str3 = n6Var.f3935a;
            if (i2.g.a(str3, str)) {
                i2.g.e(str3, "owner");
                n6 n6Var2 = new n6(str3, str2);
                while (!atomicReference.compareAndSet(n6Var, n6Var2)) {
                    if (atomicReference.get() != n6Var) {
                    }
                }
                return;
            }
            return;
        }
    }
}
