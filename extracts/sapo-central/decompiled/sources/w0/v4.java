package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class v4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final v4 f4368a;
    public static final v4 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final v4 f4369c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ v4[] f4370d;

    static {
        v4 v4Var = new v4("FIXADO", 0);
        f4368a = v4Var;
        v4 v4Var2 = new v4("FLUTUANTE", 1);
        b = v4Var2;
        v4 v4Var3 = new v4("FLUTUANTE_POR_FALTA_DE_SUPORTE", 2);
        f4369c = v4Var3;
        f4370d = new v4[]{v4Var, v4Var2, v4Var3};
    }

    public static v4 valueOf(String str) {
        return (v4) Enum.valueOf(v4.class, str);
    }

    public static v4[] values() {
        return (v4[]) f4370d.clone();
    }
}
