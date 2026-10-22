package s1;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;

/* JADX INFO: loaded from: classes.dex */
public final class p extends r {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final RectF f3194h = new RectF();
    public final float b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f3195c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f3196d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f3197e;
    public float f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float f3198g;

    public p(float f, float f3, float f4, float f5) {
        this.b = f;
        this.f3195c = f3;
        this.f3196d = f4;
        this.f3197e = f5;
    }

    @Override // s1.r
    public final void a(Matrix matrix, Path path) {
        Matrix matrix2 = this.f3200a;
        matrix.invert(matrix2);
        path.transform(matrix2);
        float f = this.f3196d;
        float f3 = this.f3197e;
        RectF rectF = f3194h;
        rectF.set(this.b, this.f3195c, f, f3);
        path.arcTo(rectF, this.f, this.f3198g, false);
        path.transform(matrix);
    }
}
