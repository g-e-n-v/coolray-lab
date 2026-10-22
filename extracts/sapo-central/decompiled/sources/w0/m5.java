package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class m5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final m5 f3882a;
    public static final m5 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final m5 f3883c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final m5 f3884d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final m5 f3885e;
    public static final m5 f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final m5 f3886g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ m5[] f3887h;

    static {
        m5 m5Var = new m5("COMPILADO_INTEIRO", 0);
        f3882a = m5Var;
        m5 m5Var2 = new m5("PERFIL_CHEIO", 1);
        b = m5Var2;
        m5 m5Var3 = new m5("PERFIL_VAZIO", 2);
        f3883c = m5Var3;
        m5 m5Var4 = new m5("DESCARTADO", 3);
        f3884d = m5Var4;
        m5 m5Var5 = new m5("DIRETO_DO_APK", 4);
        f3885e = m5Var5;
        m5 m5Var6 = new m5("SO_VERIFICADO", 5);
        f = m5Var6;
        m5 m5Var7 = new m5("SEM_DADOS", 6);
        f3886g = m5Var7;
        f3887h = new m5[]{m5Var, m5Var2, m5Var3, m5Var4, m5Var5, m5Var6, m5Var7};
    }

    public static m5 valueOf(String str) {
        return (m5) Enum.valueOf(m5.class, str);
    }

    public static m5[] values() {
        return (m5[]) f3887h.clone();
    }
}
