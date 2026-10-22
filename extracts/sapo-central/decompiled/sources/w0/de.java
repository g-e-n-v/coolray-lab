package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class de {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final de f3510a;
    public static final de b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ de[] f3511c;

    static {
        de deVar = new de("BOOL", 0);
        f3510a = deVar;
        de deVar2 = new de("INT", 1);
        b = deVar2;
        f3511c = new de[]{deVar, deVar2};
    }

    public static de valueOf(String str) {
        return (de) Enum.valueOf(de.class, str);
    }

    public static de[] values() {
        return (de[]) f3511c.clone();
    }
}
