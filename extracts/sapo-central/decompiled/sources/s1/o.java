package s1;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;

/* JADX INFO: loaded from: classes.dex */
public final class o extends s {
    public final q b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f3192c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f3193d;

    public o(q qVar, float f, float f3) {
        this.b = qVar;
        this.f3192c = f;
        this.f3193d = f3;
    }

    @Override // s1.s
    public final void a(Matrix matrix, r1.a aVar, int i3, Canvas canvas) {
        q qVar = this.b;
        float f = qVar.f3199c;
        float f3 = this.f3193d;
        float f4 = qVar.b;
        float f5 = this.f3192c;
        RectF rectF = new RectF(0.0f, 0.0f, (float) Math.hypot(f - f3, f4 - f5), 0.0f);
        Matrix matrix2 = new Matrix(matrix);
        matrix2.preTranslate(f5, f3);
        matrix2.preRotate(b());
        aVar.getClass();
        rectF.bottom += i3;
        rectF.offset(0.0f, -i3);
        int i4 = aVar.f;
        int[] iArr = r1.a.f3081i;
        iArr[0] = i4;
        iArr[1] = aVar.f3088e;
        iArr[2] = aVar.f3087d;
        Paint paint = aVar.f3086c;
        float f6 = rectF.left;
        paint.setShader(new LinearGradient(f6, rectF.top, f6, rectF.bottom, iArr, r1.a.f3082j, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix2);
        canvas.drawRect(rectF, paint);
        canvas.restore();
    }

    public final float b() {
        q qVar = this.b;
        return (float) Math.toDegrees(Math.atan((qVar.f3199c - this.f3193d) / (qVar.b - this.f3192c)));
    }
}
