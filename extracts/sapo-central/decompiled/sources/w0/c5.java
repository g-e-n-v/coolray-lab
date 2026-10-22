package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class c5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c5 f3428a;
    public static final c5 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ c5[] f3429c;

    static {
        c5 c5Var = new c5("RENOVAR", 0);
        f3428a = c5Var;
        c5 c5Var2 = new c5("NAO_RENOVAR", 1);
        b = c5Var2;
        f3429c = new c5[]{c5Var, c5Var2};
    }

    public static c5 valueOf(String str) {
        return (c5) Enum.valueOf(c5.class, str);
    }

    public static c5[] values() {
        return (c5[]) f3429c.clone();
    }
}
