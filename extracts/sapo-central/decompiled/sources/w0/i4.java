package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class i4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final i4 f3704a;
    public static final i4 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ i4[] f3705c;

    /* JADX INFO: Fake field, exist only in values array */
    i4 EF0;

    static {
        i4 i4Var = new i4("PODE_INSTALAR", 0);
        i4 i4Var2 = new i4("BAIXAR_RESOLVE", 1);
        f3704a = i4Var2;
        i4 i4Var3 = new i4("SO_INFORMAR", 2);
        b = i4Var3;
        f3705c = new i4[]{i4Var, i4Var2, i4Var3};
    }

    public static i4 valueOf(String str) {
        return (i4) Enum.valueOf(i4.class, str);
    }

    public static i4[] values() {
        return (i4[]) f3705c.clone();
    }
}
