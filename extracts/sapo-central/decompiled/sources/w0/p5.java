package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class p5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final p5 f4053a;
    public static final p5 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ p5[] f4054c;

    static {
        p5 p5Var = new p5("MEMORIA", 0);
        f4053a = p5Var;
        p5 p5Var2 = new p5("DISCO", 1);
        b = p5Var2;
        f4054c = new p5[]{p5Var, p5Var2};
    }

    public static p5 valueOf(String str) {
        return (p5) Enum.valueOf(p5.class, str);
    }

    public static p5[] values() {
        return (p5[]) f4054c.clone();
    }
}
