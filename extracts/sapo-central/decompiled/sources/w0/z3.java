package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class z3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final z3 f4608a;
    public static final z3 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ z3[] f4609c;

    /* JADX INFO: Fake field, exist only in values array */
    z3 EF0;

    static {
        z3 z3Var = new z3("PINNED_PROPRIO", 0);
        z3 z3Var2 = new z3("FREEFORM_PROPRIO", 1);
        z3 z3Var3 = new z3("PINNED_ADOTADO", 2);
        f4608a = z3Var3;
        z3 z3Var4 = new z3("NENHUM", 3);
        b = z3Var4;
        f4609c = new z3[]{z3Var, z3Var2, z3Var3, z3Var4};
    }

    public static z3 valueOf(String str) {
        return (z3) Enum.valueOf(z3.class, str);
    }

    public static z3[] values() {
        return (z3[]) f4609c.clone();
    }
}
