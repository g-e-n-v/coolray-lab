package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class t3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final t3 f4258a;
    public static final /* synthetic */ t3[] b;

    static {
        t3 t3Var = new t3("AA", 0);
        f4258a = t3Var;
        b = new t3[]{t3Var, new t3("CARPLAY", 1)};
    }

    public static t3 valueOf(String str) {
        return (t3) Enum.valueOf(t3.class, str);
    }

    public static t3[] values() {
        return (t3[]) b.clone();
    }
}
