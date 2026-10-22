package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class j4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final j4 f3748a;
    public static final j4 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ j4[] f3749c;

    static {
        j4 j4Var = new j4("NADA", 0);
        f3748a = j4Var;
        j4 j4Var2 = new j4("INVALIDAR", 1);
        b = j4Var2;
        f3749c = new j4[]{j4Var, j4Var2};
    }

    public static j4 valueOf(String str) {
        return (j4) Enum.valueOf(j4.class, str);
    }

    public static j4[] values() {
        return (j4[]) f3749c.clone();
    }
}
