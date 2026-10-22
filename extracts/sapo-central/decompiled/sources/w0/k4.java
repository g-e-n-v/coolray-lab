package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class k4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final k4 f3783a;
    public static final k4 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final k4 f3784c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ k4[] f3785d;

    static {
        k4 k4Var = new k4("PRESENTE", 0);
        f3783a = k4Var;
        k4 k4Var2 = new k4("AUSENTE", 1);
        b = k4Var2;
        k4 k4Var3 = new k4("NAO_SEI", 2);
        f3784c = k4Var3;
        f3785d = new k4[]{k4Var, k4Var2, k4Var3};
    }

    public static k4 valueOf(String str) {
        return (k4) Enum.valueOf(k4.class, str);
    }

    public static k4[] values() {
        return (k4[]) f3785d.clone();
    }
}
