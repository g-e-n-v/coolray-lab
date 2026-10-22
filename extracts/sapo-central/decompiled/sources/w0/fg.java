package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class fg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final fg f3600a;
    public static final fg b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final fg f3601c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final fg f3602d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ fg[] f3603e;

    static {
        fg fgVar = new fg("AUSENTE", 0);
        f3600a = fgVar;
        fg fgVar2 = new fg("ENTREGUE", 1);
        b = fgVar2;
        fg fgVar3 = new fg("CARREGADO", 2);
        f3601c = fgVar3;
        fg fgVar4 = new fg("DESCONHECIDO", 3);
        f3602d = fgVar4;
        f3603e = new fg[]{fgVar, fgVar2, fgVar3, fgVar4};
    }

    public static fg valueOf(String str) {
        return (fg) Enum.valueOf(fg.class, str);
    }

    public static fg[] values() {
        return (fg[]) f3603e.clone();
    }
}
