package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class g4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final g4 f3615a;
    public static final g4 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final g4 f3616c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final g4 f3617d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ g4[] f3618e;

    static {
        g4 g4Var = new g4("EM_DIA", 0);
        f3615a = g4Var;
        g4 g4Var2 = new g4("DESATUALIZADO", 1);
        b = g4Var2;
        g4 g4Var3 = new g4("SEM_ARQUIVO", 2);
        f3616c = g4Var3;
        g4 g4Var4 = new g4("NAO_SEI", 3);
        f3617d = g4Var4;
        f3618e = new g4[]{g4Var, g4Var2, g4Var3, g4Var4};
    }

    public static g4 valueOf(String str) {
        return (g4) Enum.valueOf(g4.class, str);
    }

    public static g4[] values() {
        return (g4[]) f3618e.clone();
    }
}
