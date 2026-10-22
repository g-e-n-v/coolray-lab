package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class q4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final q4 f4093a;
    public static final q4 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final q4 f4094c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ q4[] f4095d;

    static {
        q4 q4Var = new q4("PAUSAR", 0);
        f4093a = q4Var;
        q4 q4Var2 = new q4("RETOMAR", 1);
        b = q4Var2;
        q4 q4Var3 = new q4("NADA", 2);
        f4094c = q4Var3;
        f4095d = new q4[]{q4Var, q4Var2, q4Var3};
    }

    public static q4 valueOf(String str) {
        return (q4) Enum.valueOf(q4.class, str);
    }

    public static q4[] values() {
        return (q4[]) f4095d.clone();
    }
}
