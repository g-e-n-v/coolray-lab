package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class je {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final je f3765a;
    public static final je b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final je f3766c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final je f3767d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final je f3768e;
    public static final /* synthetic */ je[] f;

    static {
        je jeVar = new je("CONCLUIDO", 0);
        f3765a = jeVar;
        je jeVar2 = new je("ABORTADO", 1);
        b = jeVar2;
        je jeVar3 = new je("ORCAMENTO", 2);
        f3766c = jeVar3;
        je jeVar4 = new je("NAO_SUPORTADO", 3);
        f3767d = jeVar4;
        je jeVar5 = new je("RECUSADO", 4);
        f3768e = jeVar5;
        f = new je[]{jeVar, jeVar2, jeVar3, jeVar4, jeVar5};
    }

    public static je valueOf(String str) {
        return (je) Enum.valueOf(je.class, str);
    }

    public static je[] values() {
        return (je[]) f.clone();
    }
}
