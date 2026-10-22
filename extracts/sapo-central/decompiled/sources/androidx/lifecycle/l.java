package androidx.lifecycle;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final l f578a;
    public static final l b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final l f579c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final l f580d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final l f581e;
    public static final /* synthetic */ l[] f;

    static {
        l lVar = new l("DESTROYED", 0);
        f578a = lVar;
        l lVar2 = new l("INITIALIZED", 1);
        b = lVar2;
        l lVar3 = new l("CREATED", 2);
        f579c = lVar3;
        l lVar4 = new l("STARTED", 3);
        f580d = lVar4;
        l lVar5 = new l("RESUMED", 4);
        f581e = lVar5;
        f = new l[]{lVar, lVar2, lVar3, lVar4, lVar5};
    }

    public static l valueOf(String str) {
        return (l) Enum.valueOf(l.class, str);
    }

    public static l[] values() {
        return (l[]) f.clone();
    }

    public final boolean a(l lVar) {
        return compareTo(lVar) >= 0;
    }
}
