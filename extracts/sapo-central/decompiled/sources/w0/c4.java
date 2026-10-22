package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class c4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c4 f3425a;
    public static final c4 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final c4 f3426c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ c4[] f3427d;

    static {
        c4 c4Var = new c4("OK", 0);
        f3425a = c4Var;
        c4 c4Var2 = new c4("OK_SEM_REFERENCIA", 1);
        b = c4Var2;
        c4 c4Var3 = new c4("FALHOU", 2);
        f3426c = c4Var3;
        f3427d = new c4[]{c4Var, c4Var2, c4Var3};
    }

    public static c4 valueOf(String str) {
        return (c4) Enum.valueOf(c4.class, str);
    }

    public static c4[] values() {
        return (c4[]) f3427d.clone();
    }
}
