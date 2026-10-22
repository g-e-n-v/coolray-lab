package u;

/* JADX INFO: loaded from: classes.dex */
public final class o {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final o f3237k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f3238a;
    public final float b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f3239c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f3240d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f3241e;
    public final float f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final float[] f3242g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f3243h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float f3244i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final float f3245j;

    static {
        float[] fArr = b.f3219c;
        float fI = (float) ((((double) b.i()) * 63.66197723675813d) / 100.0d);
        float[][] fArr2 = b.f3218a;
        float f = fArr[0];
        float[] fArr3 = fArr2[0];
        float f3 = fArr3[0] * f;
        float f4 = fArr[1];
        float f5 = (fArr3[1] * f4) + f3;
        float f6 = fArr[2];
        float f7 = (fArr3[2] * f6) + f5;
        float[] fArr4 = fArr2[1];
        float f8 = (fArr4[2] * f6) + (fArr4[1] * f4) + (fArr4[0] * f);
        float[] fArr5 = fArr2[2];
        float f9 = (f6 * fArr5[2]) + (f4 * fArr5[1]) + (f * fArr5[0]);
        float f10 = ((double) 1.0f) >= 0.9d ? 0.69f : 0.655f;
        float fExp = (1.0f - (((float) Math.exp(((-fI) - 42.0f) / 92.0f)) * 0.2777778f)) * 1.0f;
        double d3 = fExp;
        if (d3 > 1.0d) {
            fExp = 1.0f;
        } else if (d3 < 0.0d) {
            fExp = 0.0f;
        }
        float[] fArr6 = {(((100.0f / f7) * fExp) + 1.0f) - fExp, (((100.0f / f8) * fExp) + 1.0f) - fExp, (((100.0f / f9) * fExp) + 1.0f) - fExp};
        float f11 = 1.0f / ((5.0f * fI) + 1.0f);
        float f12 = f11 * f11 * f11 * f11;
        float f13 = 1.0f - f12;
        float fCbrt = (0.1f * f13 * f13 * ((float) Math.cbrt(((double) fI) * 5.0d))) + (f12 * fI);
        float fI2 = b.i() / fArr[1];
        double d4 = fI2;
        float fSqrt = ((float) Math.sqrt(d4)) + 1.48f;
        float fPow = 0.725f / ((float) Math.pow(d4, 0.2d));
        float[] fArr7 = {(float) Math.pow(((double) ((fArr6[0] * fCbrt) * f7)) / 100.0d, 0.42d), (float) Math.pow(((double) ((fArr6[1] * fCbrt) * f8)) / 100.0d, 0.42d), (float) Math.pow(((double) ((fArr6[2] * fCbrt) * f9)) / 100.0d, 0.42d)};
        float f14 = fArr7[0];
        float f15 = (f14 * 400.0f) / (f14 + 27.13f);
        float f16 = fArr7[1];
        float f17 = (f16 * 400.0f) / (f16 + 27.13f);
        float f18 = fArr7[2];
        float[] fArr8 = {f15, f17, (400.0f * f18) / (f18 + 27.13f)};
        f3237k = new o(fI2, ((fArr8[2] * 0.05f) + (fArr8[0] * 2.0f) + fArr8[1]) * fPow, fPow, fPow, f10, 1.0f, fArr6, fCbrt, (float) Math.pow(fCbrt, 0.25d), fSqrt);
    }

    public o(float f, float f3, float f4, float f5, float f6, float f7, float[] fArr, float f8, float f9, float f10) {
        this.f = f;
        this.f3238a = f3;
        this.b = f4;
        this.f3239c = f5;
        this.f3240d = f6;
        this.f3241e = f7;
        this.f3242g = fArr;
        this.f3243h = f8;
        this.f3244i = f9;
        this.f3245j = f10;
    }
}
