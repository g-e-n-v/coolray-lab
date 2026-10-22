package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class g5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final g5 f3619a;
    public static final g5 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ g5[] f3620c;

    static {
        g5 g5Var = new g5("RELIGAR", 0);
        f3619a = g5Var;
        g5 g5Var2 = new g5("NAO_MEXER", 1);
        b = g5Var2;
        f3620c = new g5[]{g5Var, g5Var2};
    }

    public static g5 valueOf(String str) {
        return (g5) Enum.valueOf(g5.class, str);
    }

    public static g5[] values() {
        return (g5[]) f3620c.clone();
    }
}
