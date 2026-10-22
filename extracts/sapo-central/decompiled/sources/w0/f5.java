package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class f5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f5 f3583a;
    public static final f5 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ f5[] f3584c;

    static {
        f5 f5Var = new f5("WPP_PRONTO", 0);
        f3583a = f5Var;
        f5 f5Var2 = new f5("SEM_WPP", 1);
        b = f5Var2;
        f3584c = new f5[]{f5Var, f5Var2};
    }

    public static f5 valueOf(String str) {
        return (f5) Enum.valueOf(f5.class, str);
    }

    public static f5[] values() {
        return (f5[]) f3584c.clone();
    }
}
