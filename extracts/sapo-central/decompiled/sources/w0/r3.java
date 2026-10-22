package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class r3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final r3 f4144a;
    public static final /* synthetic */ r3[] b;

    /* JADX INFO: Fake field, exist only in values array */
    r3 EF0;

    static {
        r3 r3Var = new r3("AGUARDANDO_ALVO", 0);
        r3 r3Var2 = new r3("PREPARANDO_REDE", 1);
        f4144a = r3Var2;
        b = new r3[]{r3Var, r3Var2, new r3("AGUARDANDO_TRANSPORTE", 2), new r3("CONECTANDO", 3), new r3("ATIVA", 4)};
    }

    public static r3 valueOf(String str) {
        return (r3) Enum.valueOf(r3.class, str);
    }

    public static r3[] values() {
        return (r3[]) b.clone();
    }
}
