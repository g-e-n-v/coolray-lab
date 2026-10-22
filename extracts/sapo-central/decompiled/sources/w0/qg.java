package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class qg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final qg f4128a;
    public static final qg b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final qg f4129c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final qg f4130d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final qg f4131e;
    public static final qg f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final qg f4132g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ qg[] f4133h;

    static {
        qg qgVar = new qg("OFF", 0);
        f4128a = qgVar;
        qg qgVar2 = new qg("SEARCHING", 1);
        b = qgVar2;
        qg qgVar3 = new qg("LEVEL0", 2);
        f4129c = qgVar3;
        qg qgVar4 = new qg("LEVEL1", 3);
        f4130d = qgVar4;
        qg qgVar5 = new qg("LEVEL2", 4);
        f4131e = qgVar5;
        qg qgVar6 = new qg("LEVEL3", 5);
        f = qgVar6;
        qg qgVar7 = new qg("LEVEL4", 6);
        f4132g = qgVar7;
        f4133h = new qg[]{qgVar, qgVar2, qgVar3, qgVar4, qgVar5, qgVar6, qgVar7};
    }

    public static qg valueOf(String str) {
        return (qg) Enum.valueOf(qg.class, str);
    }

    public static qg[] values() {
        return (qg[]) f4133h.clone();
    }
}
