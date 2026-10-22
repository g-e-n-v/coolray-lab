package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class y4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final y4 f4562a;
    public static final y4 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final y4 f4563c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final y4 f4564d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ y4[] f4565e;

    static {
        y4 y4Var = new y4("ATIVO", 0);
        f4562a = y4Var;
        y4 y4Var2 = new y4("CAIU_NO_BOOT", 1);
        b = y4Var2;
        y4 y4Var3 = new y4("DESLIGADO", 2);
        f4563c = y4Var3;
        y4 y4Var4 = new y4("ATIVADO_POR_FORA", 3);
        f4564d = y4Var4;
        f4565e = new y4[]{y4Var, y4Var2, y4Var3, y4Var4};
    }

    public static y4 valueOf(String str) {
        return (y4) Enum.valueOf(y4.class, str);
    }

    public static y4[] values() {
        return (y4[]) f4565e.clone();
    }
}
