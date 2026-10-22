package u;

import android.graphics.Color;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f3214a;
    public final float b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f3215c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f3216d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f3217e;
    public final float f;

    public a(float f, float f3, float f4, float f5, float f6, float f7) {
        this.f3214a = f;
        this.b = f3;
        this.f3215c = f4;
        this.f3216d = f5;
        this.f3217e = f6;
        this.f = f7;
    }

    public static a a(int i3) {
        o oVar = o.f3237k;
        float fC = b.c(Color.red(i3));
        float fC2 = b.c(Color.green(i3));
        float fC3 = b.c(Color.blue(i3));
        float[][] fArr = b.f3220d;
        float[] fArr2 = fArr[0];
        float f = (fArr2[2] * fC3) + (fArr2[1] * fC2) + (fArr2[0] * fC);
        float[] fArr3 = fArr[1];
        float f3 = (fArr3[2] * fC3) + (fArr3[1] * fC2) + (fArr3[0] * fC);
        float[] fArr4 = fArr[2];
        float[] fArr5 = {f, f3, (fC3 * fArr4[2]) + (fC2 * fArr4[1]) + (fC * fArr4[0])};
        float[][] fArr6 = b.f3218a;
        float f4 = fArr5[0];
        float[] fArr7 = fArr6[0];
        float f5 = fArr7[0] * f4;
        float f6 = fArr5[1];
        float f7 = (fArr7[1] * f6) + f5;
        float f8 = fArr5[2];
        float f9 = (fArr7[2] * f8) + f7;
        float[] fArr8 = fArr6[1];
        float f10 = (fArr8[2] * f8) + (fArr8[1] * f6) + (fArr8[0] * f4);
        float[] fArr9 = fArr6[2];
        float f11 = (f8 * fArr9[2]) + (f6 * fArr9[1]) + (f4 * fArr9[0]);
        float[] fArr10 = oVar.f3242g;
        float f12 = oVar.f3244i;
        float f13 = oVar.f3240d;
        float f14 = oVar.f3238a;
        float f15 = fArr10[0] * f9;
        float f16 = fArr10[1] * f10;
        float f17 = fArr10[2] * f11;
        float f18 = oVar.f3243h;
        float fPow = (float) Math.pow(((double) (Math.abs(f15) * f18)) / 100.0d, 0.42d);
        float fPow2 = (float) Math.pow(((double) (Math.abs(f16) * f18)) / 100.0d, 0.42d);
        float fPow3 = (float) Math.pow(((double) (Math.abs(f17) * f18)) / 100.0d, 0.42d);
        float fSignum = ((Math.signum(f15) * 400.0f) * fPow) / (fPow + 27.13f);
        float fSignum2 = ((Math.signum(f16) * 400.0f) * fPow2) / (fPow2 + 27.13f);
        float fSignum3 = ((Math.signum(f17) * 400.0f) * fPow3) / (fPow3 + 27.13f);
        double d3 = fSignum3;
        float f19 = ((float) (((((double) fSignum2) * (-12.0d)) + (((double) fSignum) * 11.0d)) + d3)) / 11.0f;
        float f20 = ((float) (((double) (fSignum + fSignum2)) - (d3 * 2.0d))) / 9.0f;
        float f21 = fSignum2 * 20.0f;
        float f22 = ((21.0f * fSignum3) + ((fSignum * 20.0f) + f21)) / 20.0f;
        float f23 = (((fSignum * 40.0f) + f21) + fSignum3) / 20.0f;
        float fAtan2 = (((float) Math.atan2(f20, f19)) * 180.0f) / 3.1415927f;
        if (fAtan2 < 0.0f) {
            fAtan2 += 360.0f;
        } else if (fAtan2 >= 360.0f) {
            fAtan2 -= 360.0f;
        }
        float f24 = (3.1415927f * fAtan2) / 180.0f;
        float fPow4 = ((float) Math.pow((f23 * oVar.b) / f14, oVar.f3245j * f13)) * 100.0f;
        Math.sqrt(fPow4 / 100.0f);
        float f25 = f14 + 4.0f;
        float fPow5 = ((float) Math.pow(1.64d - Math.pow(0.29d, oVar.f), 0.73d)) * ((float) Math.pow((((((((float) (Math.cos(((((double) (((double) fAtan2) < 20.14d ? 360.0f + fAtan2 : fAtan2)) * 3.141592653589793d) / 180.0d) + 2.0d) + 3.8d)) * 0.25f) * 3846.1538f) * oVar.f3241e) * oVar.f3239c) * ((float) Math.sqrt((f20 * f20) + (f19 * f19)))) / (f22 + 0.305f), 0.9d));
        float fSqrt = fPow5 * ((float) Math.sqrt(((double) fPow4) / 100.0d));
        Math.sqrt((fPow5 * f13) / f25);
        float f26 = (1.7f * fPow4) / ((0.007f * fPow4) + 1.0f);
        float fLog = ((float) Math.log((f12 * fSqrt * 0.0228f) + 1.0f)) * 43.85965f;
        double d4 = f24;
        return new a(fAtan2, fSqrt, fPow4, f26, fLog * ((float) Math.cos(d4)), fLog * ((float) Math.sin(d4)));
    }

    public static a b(float f, float f3, float f4) {
        o oVar = o.f3237k;
        float f5 = oVar.f3240d;
        double d3 = ((double) f) / 100.0d;
        Math.sqrt(d3);
        float f6 = oVar.f3238a + 4.0f;
        float f7 = oVar.f3244i * f3;
        Math.sqrt(((f3 / ((float) Math.sqrt(d3))) * oVar.f3240d) / f6);
        float f8 = (1.7f * f) / ((0.007f * f) + 1.0f);
        float fLog = ((float) Math.log((((double) f7) * 0.0228d) + 1.0d)) * 43.85965f;
        double d4 = (3.1415927f * f4) / 180.0f;
        return new a(f4, f3, f, f8, fLog * ((float) Math.cos(d4)), fLog * ((float) Math.sin(d4)));
    }

    /* JADX WARN: Code duplicated, block: B:8:0x001f  */
    public final int c(o oVar) {
        float fSqrt;
        float f = this.b;
        double d3 = f;
        float f3 = this.f3215c;
        if (d3 != 0.0d) {
            double d4 = f3;
            if (d4 == 0.0d) {
                fSqrt = 0.0f;
            } else {
                fSqrt = f / ((float) Math.sqrt(d4 / 100.0d));
            }
        } else {
            fSqrt = 0.0f;
        }
        float f4 = oVar.f;
        float f5 = oVar.f3243h;
        float fPow = (float) Math.pow(((double) fSqrt) / Math.pow(1.64d - Math.pow(0.29d, f4), 0.73d), 1.1111111111111112d);
        double d5 = (this.f3214a * 3.1415927f) / 180.0f;
        float fCos = ((float) (Math.cos(2.0d + d5) + 3.8d)) * 0.25f;
        float fPow2 = oVar.f3238a * ((float) Math.pow(((double) f3) / 100.0d, (1.0d / ((double) oVar.f3240d)) / ((double) oVar.f3245j)));
        float f6 = fCos * 3846.1538f * oVar.f3241e * oVar.f3239c;
        float f7 = fPow2 / oVar.b;
        float fSin = (float) Math.sin(d5);
        float fCos2 = (float) Math.cos(d5);
        float f8 = (((0.305f + f7) * 23.0f) * fPow) / (((fPow * 108.0f) * fSin) + (((11.0f * fPow) * fCos2) + (f6 * 23.0f)));
        float f9 = fCos2 * f8;
        float f10 = f8 * fSin;
        float f11 = f7 * 460.0f;
        float f12 = ((288.0f * f10) + ((451.0f * f9) + f11)) / 1403.0f;
        float f13 = ((f11 - (891.0f * f9)) - (261.0f * f10)) / 1403.0f;
        float f14 = ((f11 - (f9 * 220.0f)) - (f10 * 6300.0f)) / 1403.0f;
        float f15 = 100.0f / f5;
        float fSignum = Math.signum(f12) * f15 * ((float) Math.pow((float) Math.max(0.0d, (((double) Math.abs(f12)) * 27.13d) / (400.0d - ((double) Math.abs(f12)))), 2.380952380952381d));
        float fSignum2 = Math.signum(f13) * f15 * ((float) Math.pow((float) Math.max(0.0d, (((double) Math.abs(f13)) * 27.13d) / (400.0d - ((double) Math.abs(f13)))), 2.380952380952381d));
        float fSignum3 = Math.signum(f14) * f15 * ((float) Math.pow((float) Math.max(0.0d, (((double) Math.abs(f14)) * 27.13d) / (400.0d - ((double) Math.abs(f14)))), 2.380952380952381d));
        float[] fArr = oVar.f3242g;
        float f16 = fSignum / fArr[0];
        float f17 = fSignum2 / fArr[1];
        float f18 = fSignum3 / fArr[2];
        float[][] fArr2 = b.b;
        float[] fArr3 = fArr2[0];
        float f19 = (fArr3[2] * f18) + (fArr3[1] * f17) + (fArr3[0] * f16);
        float[] fArr4 = fArr2[1];
        float f20 = (fArr4[2] * f18) + (fArr4[1] * f17) + (fArr4[0] * f16);
        float[] fArr5 = fArr2[2];
        return v.a.a(f19, f20, (f18 * fArr5[2]) + (f17 * fArr5[1]) + (f16 * fArr5[0]));
    }
}
