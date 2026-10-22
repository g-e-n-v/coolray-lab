package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class b5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b5 f3382a;
    public static final /* synthetic */ b5[] b;

    /* JADX INFO: Fake field, exist only in values array */
    b5 EF0;

    static {
        b5 b5Var = new b5("EM_DIA", 0);
        b5 b5Var2 = new b5("DESATUALIZADO", 1);
        b5 b5Var3 = new b5("SEM_REFERENCIA", 2);
        f3382a = b5Var3;
        b = new b5[]{b5Var, b5Var2, b5Var3};
    }

    public static b5 valueOf(String str) {
        return (b5) Enum.valueOf(b5.class, str);
    }

    public static b5[] values() {
        return (b5[]) b.clone();
    }
}
