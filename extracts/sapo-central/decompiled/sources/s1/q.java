package s1;

import android.graphics.Matrix;
import android.graphics.Path;

/* JADX INFO: loaded from: classes.dex */
public final class q extends r {
    public float b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f3199c;

    @Override // s1.r
    public final void a(Matrix matrix, Path path) {
        Matrix matrix2 = this.f3200a;
        matrix.invert(matrix2);
        path.transform(matrix2);
        path.lineTo(this.b, this.f3199c);
        path.transform(matrix);
    }
}
