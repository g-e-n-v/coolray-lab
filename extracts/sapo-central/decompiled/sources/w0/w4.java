package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class w4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final w4 f4427a;
    public static final w4 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final w4 f4428c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final w4 f4429d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final w4 f4430e;
    public static final /* synthetic */ w4[] f;

    static {
        w4 w4Var = new w4("COMPLETA", 0);
        f4427a = w4Var;
        w4 w4Var2 = new w4("PARCIAL", 1);
        b = w4Var2;
        w4 w4Var3 = new w4("NENHUM", 2);
        f4428c = w4Var3;
        w4 w4Var4 = new w4("SEM_SNAPSHOT", 3);
        f4429d = w4Var4;
        w4 w4Var5 = new w4("NADA_A_FAZER", 4);
        f4430e = w4Var5;
        f = new w4[]{w4Var, w4Var2, w4Var3, w4Var4, w4Var5};
    }

    public static w4 valueOf(String str) {
        return (w4) Enum.valueOf(w4.class, str);
    }

    public static w4[] values() {
        return (w4[]) f.clone();
    }
}
