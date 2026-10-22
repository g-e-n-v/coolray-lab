package f0;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1715a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f1716c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f1717d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f1718e;
    public long f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f1719g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f1720h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f1721i;

    public final float a(long j3) {
        long j4 = this.f1718e;
        if (j3 < j4) {
            return 0.0f;
        }
        long j5 = this.f1719g;
        if (j5 < 0 || j3 < j5) {
            return g.b((j3 - j4) / this.f1715a, 0.0f, 1.0f) * 0.5f;
        }
        float f = this.f1720h;
        return (g.b((j3 - j5) / this.f1721i, 0.0f, 1.0f) * f) + (1.0f - f);
    }
}
