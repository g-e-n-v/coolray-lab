package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class l5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final l5 f3832a;
    public static final l5 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final l5 f3833c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final l5 f3834d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ l5[] f3835e;

    static {
        l5 l5Var = new l5("OTIMIZAR_PELO_PERFIL", 0);
        f3832a = l5Var;
        l5 l5Var2 = new l5("OTIMIZAR_INTEIRO_COM_AVISO", 1);
        b = l5Var2;
        l5 l5Var3 = new l5("FALTA_USAR_MAIS", 2);
        f3833c = l5Var3;
        l5 l5Var4 = new l5("JA_NO_MELHOR", 3);
        f3834d = l5Var4;
        f3835e = new l5[]{l5Var, l5Var2, l5Var3, l5Var4};
    }

    public static l5 valueOf(String str) {
        return (l5) Enum.valueOf(l5.class, str);
    }

    public static l5[] values() {
        return (l5[]) f3835e.clone();
    }
}
