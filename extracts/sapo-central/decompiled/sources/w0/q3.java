package w0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class q3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final q3 f4085a;
    public static final q3 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final q3 f4086c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final q3 f4087d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final q3 f4088e;
    public static final q3 f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final q3 f4089g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final q3 f4090h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final q3 f4091i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ q3[] f4092j;

    static {
        q3 q3Var = new q3("NADA", 0);
        f4085a = q3Var;
        q3 q3Var2 = new q3("OBSERVAR_DE_NOVO", 1);
        b = q3Var2;
        q3 q3Var3 = new q3("AGUARDAR_ALVO", 2);
        f4086c = q3Var3;
        q3 q3Var4 = new q3("ABRIR_AP", 3);
        f4087d = q3Var4;
        q3 q3Var5 = new q3("RADIO_OCUPADO", 4);
        f4088e = q3Var5;
        q3 q3Var6 = new q3("CONVIDAR", 5);
        f = q3Var6;
        q3 q3Var7 = new q3("AGUARDAR_PROGRESSO", 6);
        f4089g = q3Var7;
        q3 q3Var8 = new q3("REINICIAR_DAEMON", 7);
        f4090h = q3Var8;
        q3 q3Var9 = new q3("SUSPENDER", 8);
        f4091i = q3Var9;
        f4092j = new q3[]{q3Var, q3Var2, q3Var3, q3Var4, q3Var5, q3Var6, q3Var7, q3Var8, q3Var9};
    }

    public static q3 valueOf(String str) {
        return (q3) Enum.valueOf(q3.class, str);
    }

    public static q3[] values() {
        return (q3[]) f4092j.clone();
    }
}
