package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final s f4188a;
    public static final s b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final s f4189c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ s[] f4190d;

    static {
        s sVar = new s("CONFERE", 0);
        f4188a = sVar;
        s sVar2 = new s("NAO_CONFERE", 1);
        b = sVar2;
        s sVar3 = new s("NAO_SEI", 2);
        f4189c = sVar3;
        f4190d = new s[]{sVar, sVar2, sVar3};
    }

    public static s valueOf(String str) {
        return (s) Enum.valueOf(s.class, str);
    }

    public static s[] values() {
        return (s[]) f4190d.clone();
    }
}
