package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class n5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final n5 f3932a;
    public static final n5 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final n5 f3933c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ n5[] f3934d;

    static {
        n5 n5Var = new n5("OTIMIZADO", 0);
        f3932a = n5Var;
        n5 n5Var2 = new n5("NAO_OTIMIZADO", 1);
        b = n5Var2;
        n5 n5Var3 = new n5("DESCONHECIDO", 2);
        f3933c = n5Var3;
        f3934d = new n5[]{n5Var, n5Var2, n5Var3};
    }

    public static n5 valueOf(String str) {
        return (n5) Enum.valueOf(n5.class, str);
    }

    public static n5[] values() {
        return (n5[]) f3934d.clone();
    }
}
