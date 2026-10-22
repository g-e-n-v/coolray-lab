package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class b4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b4 f3378a;
    public static final b4 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final b4 f3379c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final b4 f3380d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ b4[] f3381e;

    static {
        b4 b4Var = new b4("NAO_TENTOU", 0);
        f3378a = b4Var;
        b4 b4Var2 = new b4("ENTREGA_SEM_RECARGA", 1);
        b = b4Var2;
        b4 b4Var3 = new b4("TENTOU_E_FALHOU", 2);
        f3379c = b4Var3;
        b4 b4Var4 = new b4("CONSEGUIU", 3);
        f3380d = b4Var4;
        f3381e = new b4[]{b4Var, b4Var2, b4Var3, b4Var4};
    }

    public static b4 valueOf(String str) {
        return (b4) Enum.valueOf(b4.class, str);
    }

    public static b4[] values() {
        return (b4[]) f3381e.clone();
    }
}
