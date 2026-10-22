package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class u4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final u4 f4331a;
    public static final u4 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ u4[] f4332c;

    static {
        u4 u4Var = new u4("ABRIR_PAINEL", 0);
        f4331a = u4Var;
        u4 u4Var2 = new u4("FORCAR_BUSCA", 1);
        b = u4Var2;
        f4332c = new u4[]{u4Var, u4Var2};
    }

    public static u4 valueOf(String str) {
        return (u4) Enum.valueOf(u4.class, str);
    }

    public static u4[] values() {
        return (u4[]) f4332c.clone();
    }
}
