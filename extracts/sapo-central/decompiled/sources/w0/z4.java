package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class z4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final z4 f4610a;
    public static final z4 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final z4 f4611c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final z4 f4612d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final z4 f4613e;
    public static final /* synthetic */ z4[] f;

    static {
        z4 z4Var = new z4("ATIVO", 0);
        f4610a = z4Var;
        z4 z4Var2 = new z4("PENDENTE", 1);
        b = z4Var2;
        z4 z4Var3 = new z4("DESLIGADO", 2);
        f4611c = z4Var3;
        z4 z4Var4 = new z4("ATIVO_SEM_PEDIDO", 3);
        f4612d = z4Var4;
        z4 z4Var5 = new z4("INCOMPATIVEL", 4);
        f4613e = z4Var5;
        f = new z4[]{z4Var, z4Var2, z4Var3, z4Var4, z4Var5};
    }

    public static z4 valueOf(String str) {
        return (z4) Enum.valueOf(z4.class, str);
    }

    public static z4[] values() {
        return (z4[]) f.clone();
    }
}
