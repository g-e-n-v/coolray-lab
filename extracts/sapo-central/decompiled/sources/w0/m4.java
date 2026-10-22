package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class m4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final m4 f3879a;
    public static final m4 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final m4 f3880c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ m4[] f3881d;

    static {
        m4 m4Var = new m4("CHEIO", 0);
        f3879a = m4Var;
        m4 m4Var2 = new m4("PENDENTE", 1);
        b = m4Var2;
        m4 m4Var3 = new m4("APAGADO", 2);
        f3880c = m4Var3;
        f3881d = new m4[]{m4Var, m4Var2, m4Var3};
    }

    public static m4 valueOf(String str) {
        return (m4) Enum.valueOf(m4.class, str);
    }

    public static m4[] values() {
        return (m4[]) f3881d.clone();
    }
}
