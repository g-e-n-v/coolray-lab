package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class ce {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ce f3445a;
    public static final ce b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ ce[] f3446c;

    static {
        ce ceVar = new ce("MAIN", 0);
        f3445a = ceVar;
        ce ceVar2 = new ce("DRIVE_REGEN", 1);
        b = ceVar2;
        f3446c = new ce[]{ceVar, ceVar2};
    }

    public static ce valueOf(String str) {
        return (ce) Enum.valueOf(ce.class, str);
    }

    public static ce[] values() {
        return (ce[]) f3446c.clone();
    }
}
