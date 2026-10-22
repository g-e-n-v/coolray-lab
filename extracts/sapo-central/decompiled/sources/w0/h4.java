package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class h4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final h4 f3658a;
    public static final h4 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final h4 f3659c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ h4[] f3660d;

    static {
        h4 h4Var = new h4("MOVER", 0);
        f3658a = h4Var;
        h4 h4Var2 = new h4("APAGAR", 1);
        b = h4Var2;
        h4 h4Var3 = new h4("NADA", 2);
        f3659c = h4Var3;
        f3660d = new h4[]{h4Var, h4Var2, h4Var3};
    }

    public static h4 valueOf(String str) {
        return (h4) Enum.valueOf(h4.class, str);
    }

    public static h4[] values() {
        return (h4[]) f3660d.clone();
    }
}
