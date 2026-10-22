package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class f4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f4 f3580a;
    public static final f4 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final f4 f3581c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ f4[] f3582d;

    static {
        f4 f4Var = new f4("LIGAR_BT", 0);
        f3580a = f4Var;
        f4 f4Var2 = new f4("CONECTAR_PREFERIDO", 1);
        b = f4Var2;
        f4 f4Var3 = new f4("NADA", 2);
        f3581c = f4Var3;
        f3582d = new f4[]{f4Var, f4Var2, f4Var3};
    }

    public static f4 valueOf(String str) {
        return (f4) Enum.valueOf(f4.class, str);
    }

    public static f4[] values() {
        return (f4[]) f3582d.clone();
    }
}
