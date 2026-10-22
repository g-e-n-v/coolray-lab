package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class s1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final s1 f4192a;
    public static final s1 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final s1 f4193c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ s1[] f4194d;

    static {
        s1 s1Var = new s1("OK", 0);
        f4192a = s1Var;
        s1 s1Var2 = new s1("NO_DEVICE", 1);
        b = s1Var2;
        s1 s1Var3 = new s1("FAILED", 2);
        f4193c = s1Var3;
        f4194d = new s1[]{s1Var, s1Var2, s1Var3};
    }

    public static s1 valueOf(String str) {
        return (s1) Enum.valueOf(s1.class, str);
    }

    public static s1[] values() {
        return (s1[]) f4194d.clone();
    }
}
