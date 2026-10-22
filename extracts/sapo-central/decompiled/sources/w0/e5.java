package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class e5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e5 f3526a;
    public static final e5 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final e5 f3527c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final e5 f3528d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ e5[] f3529e;

    static {
        e5 e5Var = new e5("REINICIOU", 0);
        f3526a = e5Var;
        e5 e5Var2 = new e5("NAO_MORREU", 1);
        b = e5Var2;
        e5 e5Var3 = new e5("NAO_VOLTOU", 2);
        f3527c = e5Var3;
        e5 e5Var4 = new e5("CANAL_MUDO", 3);
        f3528d = e5Var4;
        f3529e = new e5[]{e5Var, e5Var2, e5Var3, e5Var4};
    }

    public static e5 valueOf(String str) {
        return (e5) Enum.valueOf(e5.class, str);
    }

    public static e5[] values() {
        return (e5[]) f3529e.clone();
    }
}
