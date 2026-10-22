package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class o4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final o4 f3971a;
    public static final o4 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final o4 f3972c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final o4 f3973d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final o4 f3974e;
    public static final /* synthetic */ o4[] f;

    static {
        o4 o4Var = new o4("PROJETANDO", 0);
        f3971a = o4Var;
        o4 o4Var2 = new o4("NA_REDE_SEM_SESSAO", 1);
        b = o4Var2;
        o4 o4Var3 = new o4("SO_BLUETOOTH", 2);
        f3972c = o4Var3;
        o4 o4Var4 = new o4("SEM_CELULAR", 3);
        f3973d = o4Var4;
        o4 o4Var5 = new o4("NAO_SEI", 4);
        f3974e = o4Var5;
        f = new o4[]{o4Var, o4Var2, o4Var3, o4Var4, o4Var5};
    }

    public static o4 valueOf(String str) {
        return (o4) Enum.valueOf(o4.class, str);
    }

    public static o4[] values() {
        return (o4[]) f.clone();
    }
}
