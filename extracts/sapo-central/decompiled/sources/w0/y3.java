package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class y3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final y3 f4559a;
    public static final y3 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final y3 f4560c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ y3[] f4561d;

    static {
        y3 y3Var = new y3("APP_QUE_ABRIMOS", 0);
        f4559a = y3Var;
        y3 y3Var2 = new y3("PILHA_ADOTADA", 1);
        b = y3Var2;
        y3 y3Var3 = new y3("NADA", 2);
        f4560c = y3Var3;
        f4561d = new y3[]{y3Var, y3Var2, y3Var3};
    }

    public static y3 valueOf(String str) {
        return (y3) Enum.valueOf(y3.class, str);
    }

    public static y3[] values() {
        return (y3[]) f4561d.clone();
    }
}
