package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class e4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e4 f3523a;
    public static final e4 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final e4 f3524c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ e4[] f3525d;

    static {
        e4 e4Var = new e4("CURTO", 0);
        f3523a = e4Var;
        e4 e4Var2 = new e4("NAO_FOI_CURTO", 1);
        b = e4Var2;
        e4 e4Var3 = new e4("SEM_REFERENCIA", 2);
        f3524c = e4Var3;
        f3525d = new e4[]{e4Var, e4Var2, e4Var3};
    }

    public static e4 valueOf(String str) {
        return (e4) Enum.valueOf(e4.class, str);
    }

    public static e4[] values() {
        return (e4[]) f3525d.clone();
    }
}
