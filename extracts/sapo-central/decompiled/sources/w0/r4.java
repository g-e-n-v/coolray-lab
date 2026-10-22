package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class r4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final r4 f4145a;
    public static final r4 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final r4 f4146c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ r4[] f4147d;

    static {
        r4 r4Var = new r4("FECHAR_FILETE", 0);
        f4145a = r4Var;
        r4 r4Var2 = new r4("ESPERAR_OUTRAS_PORTAS", 1);
        b = r4Var2;
        r4 r4Var3 = new r4("NADA", 2);
        f4146c = r4Var3;
        f4147d = new r4[]{r4Var, r4Var2, r4Var3};
    }

    public static r4 valueOf(String str) {
        return (r4) Enum.valueOf(r4.class, str);
    }

    public static r4[] values() {
        return (r4[]) f4147d.clone();
    }
}
