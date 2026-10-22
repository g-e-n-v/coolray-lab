package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class x3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final x3 f4490a;
    public static final x3 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ x3[] f4491c;

    static {
        x3 x3Var = new x3("APP_DE_ENERGIA", 0);
        f4490a = x3Var;
        x3 x3Var2 = new x3("NOSSA_TELA", 1);
        b = x3Var2;
        f4491c = new x3[]{x3Var, x3Var2};
    }

    public static x3 valueOf(String str) {
        return (x3) Enum.valueOf(x3.class, str);
    }

    public static x3[] values() {
        return (x3[]) f4491c.clone();
    }
}
