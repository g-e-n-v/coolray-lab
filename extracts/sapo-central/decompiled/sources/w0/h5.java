package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class h5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final h5 f3661a;
    public static final h5 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final h5 f3662c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ h5[] f3663d;

    static {
        h5 h5Var = new h5("NADA", 0);
        f3661a = h5Var;
        h5 h5Var2 = new h5("BAIXAR", 1);
        b = h5Var2;
        h5 h5Var3 = new h5("AVISAR_SEM_INTERNET", 2);
        f3662c = h5Var3;
        f3663d = new h5[]{h5Var, h5Var2, h5Var3};
    }

    public static h5 valueOf(String str) {
        return (h5) Enum.valueOf(h5.class, str);
    }

    public static h5[] values() {
        return (h5[]) f3663d.clone();
    }
}
