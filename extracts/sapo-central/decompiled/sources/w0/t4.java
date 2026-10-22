package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class t4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final t4 f4259a;
    public static final t4 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ t4[] f4260c;

    static {
        t4 t4Var = new t4("ABRIR_FILETE", 0);
        f4259a = t4Var;
        t4 t4Var2 = new t4("NAO_PRECISA", 1);
        b = t4Var2;
        f4260c = new t4[]{t4Var, t4Var2};
    }

    public static t4 valueOf(String str) {
        return (t4) Enum.valueOf(t4.class, str);
    }

    public static t4[] values() {
        return (t4[]) f4260c.clone();
    }
}
