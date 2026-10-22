package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class d5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d5 f3490a;
    public static final d5 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ d5[] f3491c;

    static {
        d5 d5Var = new d5("TENTAR_GITHUB", 0);
        f3490a = d5Var;
        d5 d5Var2 = new d5("SEM_RESERVA", 1);
        b = d5Var2;
        f3491c = new d5[]{d5Var, d5Var2};
    }

    public static d5 valueOf(String str) {
        return (d5) Enum.valueOf(d5.class, str);
    }

    public static d5[] values() {
        return (d5[]) f3491c.clone();
    }
}
