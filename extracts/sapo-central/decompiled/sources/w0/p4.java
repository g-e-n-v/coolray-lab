package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class p4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final p4 f4050a;
    public static final p4 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final p4 f4051c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ p4[] f4052d;

    static {
        p4 p4Var = new p4("SEM_ADB", 0);
        f4050a = p4Var;
        p4 p4Var2 = new p4("SEM_INTERNET", 1);
        b = p4Var2;
        p4 p4Var3 = new p4("OUTRA", 2);
        f4051c = p4Var3;
        f4052d = new p4[]{p4Var, p4Var2, p4Var3};
    }

    public static p4 valueOf(String str) {
        return (p4) Enum.valueOf(p4.class, str);
    }

    public static p4[] values() {
        return (p4[]) f4052d.clone();
    }
}
