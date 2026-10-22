package w0;

/* JADX INFO: loaded from: classes.dex */
public final class w3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f4421a;
    public final boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float[] f4422c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int[] f4423d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float[] f4424e;
    public int f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f4425g = 1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f4426h;

    public w3(int i3, boolean z2) {
        int iMax = Math.max(8, i3 % 2 != 0 ? i3 + 1 : i3);
        this.f4421a = iMax;
        this.b = z2;
        this.f4422c = new float[iMax];
        this.f4423d = new int[iMax];
        this.f4424e = new float[iMax];
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0049  */
    public final void a(Float f) {
        int i3;
        if (f == null) {
            return;
        }
        int i4 = this.f;
        int[] iArr = this.f4423d;
        float[] fArr = this.f4422c;
        float[] fArr2 = this.f4424e;
        if (i4 == 0) {
            this.f = 1;
            this.f4426h = 0;
            fArr[0] = 0.0f;
            iArr[0] = 0;
            fArr2[0] = 0.0f;
        }
        int i5 = this.f - 1;
        fArr[i5] = f.floatValue() + fArr[i5];
        int i6 = iArr[i5] + 1;
        iArr[i5] = i6;
        boolean z2 = this.b;
        if (i6 != 1) {
            float fFloatValue = f.floatValue();
            float f3 = fArr2[i5];
            if (!z2 ? fFloatValue > f3 : Math.abs(fFloatValue) > Math.abs(f3)) {
                fArr2[i5] = f.floatValue();
            }
        } else {
            fArr2[i5] = f.floatValue();
        }
        int i7 = this.f4426h + 1;
        this.f4426h = i7;
        if (i7 >= this.f4425g) {
            this.f4426h = 0;
            int i8 = this.f;
            int i9 = this.f4421a;
            if (i8 < i9) {
                this.f = i8 + 1;
                fArr[i8] = 0.0f;
                iArr[i8] = 0;
                fArr2[i8] = 0.0f;
                return;
            }
            int i10 = 0;
            int i11 = 0;
            while (true) {
                int i12 = i10 + 1;
                i3 = this.f;
                if (i12 >= i3) {
                    break;
                }
                fArr[i11] = fArr[i10] + fArr[i12];
                iArr[i11] = iArr[i10] + iArr[i12];
                float f4 = fArr2[i10];
                float f5 = fArr2[i12];
                fArr2[i11] = (!z2 ? f4 > f5 : Math.abs(f4) > Math.abs(f5)) ? fArr2[i12] : fArr2[i10];
                i10 += 2;
                i11++;
            }
            if (i3 % 2 == 1) {
                int i13 = i3 - 1;
                fArr[i11] = fArr[i13];
                iArr[i11] = iArr[i13];
                fArr2[i11] = fArr2[i13];
                i11++;
            }
            this.f = i11;
            this.f4425g *= 2;
            if (i11 < i9) {
                this.f = i11 + 1;
                fArr[i11] = 0.0f;
                iArr[i11] = 0;
                fArr2[i11] = 0.0f;
            }
            this.f4426h = 0;
        }
    }

    public final String b(float f, boolean z2) {
        float f3;
        int i3 = this.f;
        int[] iArr = this.f4423d;
        if (i3 > 0) {
            int i4 = i3 - 1;
            if (iArr[i4] == 0) {
                i3 = i4;
            }
        }
        if (i3 <= 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder(i3 * 5);
        for (int i5 = 0; i5 < i3; i5++) {
            if (i5 > 0) {
                sb.append(',');
            }
            if (z2) {
                f3 = this.f4424e[i5];
            } else {
                int i6 = iArr[i5];
                f3 = i6 > 0 ? this.f4422c[i5] / i6 : 0.0f;
            }
            sb.append(Math.round(f3 * f));
        }
        return sb.toString();
    }
}
