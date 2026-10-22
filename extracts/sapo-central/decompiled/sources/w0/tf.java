package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class tf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final tf f4284a;
    public static final tf b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final tf f4285c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ tf[] f4286d;

    static {
        tf tfVar = new tf("ORDENADO", 0);
        f4284a = tfVar;
        tf tfVar2 = new tf("CORTE", 1);
        b = tfVar2;
        tf tfVar3 = new tf("INDETERMINADO", 2);
        f4285c = tfVar3;
        f4286d = new tf[]{tfVar, tfVar2, tfVar3};
    }

    public static tf valueOf(String str) {
        return (tf) Enum.valueOf(tf.class, str);
    }

    public static tf[] values() {
        return (tf[]) f4286d.clone();
    }
}
