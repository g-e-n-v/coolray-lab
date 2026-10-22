package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class i5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final i5 f3706a;
    public static final i5 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final i5 f3707c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ i5[] f3708d;

    static {
        i5 i5Var = new i5("USAR", 0);
        f3706a = i5Var;
        i5 i5Var2 = new i5("NUNCA_PREENCHIDA", 1);
        b = i5Var2;
        i5 i5Var3 = new i5("STATUS_RUIM", 2);
        f3707c = i5Var3;
        f3708d = new i5[]{i5Var, i5Var2, i5Var3, new i5("SEM_LEITURA", 3)};
    }

    public static i5 valueOf(String str) {
        return (i5) Enum.valueOf(i5.class, str);
    }

    public static i5[] values() {
        return (i5[]) f3708d.clone();
    }
}
