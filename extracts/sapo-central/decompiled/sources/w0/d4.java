package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class d4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d4 f3487a;
    public static final d4 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final d4 f3488c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ d4[] f3489d;

    static {
        d4 d4Var = new d4("COM_BARRA", 0);
        f3487a = d4Var;
        d4 d4Var2 = new d4("SO_GESTOS", 1);
        b = d4Var2;
        d4 d4Var3 = new d4("PARADO", 2);
        f3488c = d4Var3;
        f3489d = new d4[]{d4Var, d4Var2, d4Var3};
    }

    public static d4 valueOf(String str) {
        return (d4) Enum.valueOf(d4.class, str);
    }

    public static d4[] values() {
        return (d4[]) f3489d.clone();
    }
}
