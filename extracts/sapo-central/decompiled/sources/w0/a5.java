package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class a5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a5 f3348a;
    public static final a5 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ a5[] f3349c;

    static {
        a5 a5Var = new a5("SEGUIR", 0);
        f3348a = a5Var;
        a5 a5Var2 = new a5("PEDIR_CONFIRMACAO", 1);
        b = a5Var2;
        f3349c = new a5[]{a5Var, a5Var2};
    }

    public static a5 valueOf(String str) {
        return (a5) Enum.valueOf(a5.class, str);
    }

    public static a5[] values() {
        return (a5[]) f3349c.clone();
    }
}
