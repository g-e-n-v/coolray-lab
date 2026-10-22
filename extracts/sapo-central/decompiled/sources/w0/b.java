package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f3371a;
    public static final b b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final b f3372c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ b[] f3373d;

    static {
        b bVar = new b("OK", 0);
        f3371a = bVar;
        b bVar2 = new b("NO_DEVICE", 1);
        b = bVar2;
        b bVar3 = new b("FAILED", 2);
        f3372c = bVar3;
        f3373d = new b[]{bVar, bVar2, bVar3};
    }

    public static b valueOf(String str) {
        return (b) Enum.valueOf(b.class, str);
    }

    public static b[] values() {
        return (b[]) f3373d.clone();
    }
}
