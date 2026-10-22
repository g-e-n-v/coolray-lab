package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class a4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a4 f3345a;
    public static final a4 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a4 f3346c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ a4[] f3347d;

    static {
        a4 a4Var = new a4("ABRIR", 0);
        f3345a = a4Var;
        a4 a4Var2 = new a4("ABRIR_DERRUBANDO_CLIENTE", 1);
        b = a4Var2;
        a4 a4Var3 = new a4("NAO_ABRIR", 2);
        f3346c = a4Var3;
        f3347d = new a4[]{a4Var, a4Var2, a4Var3};
    }

    public static a4 valueOf(String str) {
        return (a4) Enum.valueOf(a4.class, str);
    }

    public static a4[] values() {
        return (a4[]) f3347d.clone();
    }
}
