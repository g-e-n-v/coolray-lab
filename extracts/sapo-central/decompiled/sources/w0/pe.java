package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class pe {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final pe f4069a;
    public static final pe b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final pe f4070c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ pe[] f4071d;

    static {
        pe peVar = new pe("INDISPONIVEL", 0);
        f4069a = peVar;
        pe peVar2 = new pe("CONCLUIDA", 1);
        b = peVar2;
        pe peVar3 = new pe("FALHOU", 2);
        f4070c = peVar3;
        f4071d = new pe[]{peVar, peVar2, peVar3};
    }

    public static pe valueOf(String str) {
        return (pe) Enum.valueOf(pe.class, str);
    }

    public static pe[] values() {
        return (pe[]) f4071d.clone();
    }
}
