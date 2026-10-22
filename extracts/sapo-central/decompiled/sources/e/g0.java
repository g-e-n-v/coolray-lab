package e;

/* JADX INFO: loaded from: classes.dex */
public final class g0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static g0 f1603d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f1604a;
    public long b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1605c;

    public final void a(long j3, double d3, double d4) {
        float f = (j3 - 946728000000L) / 8.64E7f;
        float f3 = (0.01720197f * f) + 6.24006f;
        double d5 = f3;
        double dSin = (Math.sin(f3 * 3.0f) * 5.236000106378924E-6d) + (Math.sin(2.0f * f3) * 3.4906598739326E-4d) + (Math.sin(d5) * 0.03341960161924362d) + d5 + 1.796593063d + 3.141592653589793d;
        double d6 = (-d4) / 360.0d;
        double dSin2 = (Math.sin(2.0d * dSin) * (-0.0069d)) + (Math.sin(d5) * 0.0053d) + ((double) (Math.round(((double) (f - 9.0E-4f)) - d6) + 9.0E-4f)) + d6;
        double dAsin = Math.asin(Math.sin(0.4092797040939331d) * Math.sin(dSin));
        double d7 = 0.01745329238474369d * d3;
        double dSin3 = (Math.sin(-0.10471975803375244d) - (Math.sin(dAsin) * Math.sin(d7))) / (Math.cos(dAsin) * Math.cos(d7));
        if (dSin3 >= 1.0d) {
            this.f1605c = 1;
            this.f1604a = -1L;
            this.b = -1L;
        } else {
            if (dSin3 <= -1.0d) {
                this.f1605c = 0;
                this.f1604a = -1L;
                this.b = -1L;
                return;
            }
            double dAcos = (float) (Math.acos(dSin3) / 6.283185307179586d);
            this.f1604a = Math.round((dSin2 + dAcos) * 8.64E7d) + 946728000000L;
            long jRound = Math.round((dSin2 - dAcos) * 8.64E7d) + 946728000000L;
            this.b = jRound;
            if (jRound >= j3 || this.f1604a <= j3) {
                this.f1605c = 1;
            } else {
                this.f1605c = 0;
            }
        }
    }
}
