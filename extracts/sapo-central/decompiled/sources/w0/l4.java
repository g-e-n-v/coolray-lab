package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class l4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final l4 f3829a;
    public static final l4 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final l4 f3830c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ l4[] f3831d;

    static {
        l4 l4Var = new l4("PESSOA", 0);
        f3829a = l4Var;
        l4 l4Var2 = new l4("APP", 1);
        b = l4Var2;
        l4 l4Var3 = new l4("NINGUEM", 2);
        f3830c = l4Var3;
        f3831d = new l4[]{l4Var, l4Var2, l4Var3};
    }

    public static l4 valueOf(String str) {
        return (l4) Enum.valueOf(l4.class, str);
    }

    public static l4[] values() {
        return (l4[]) f3831d.clone();
    }
}
