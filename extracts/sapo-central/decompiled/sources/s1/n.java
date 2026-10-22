package s1;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;

/* JADX INFO: loaded from: classes.dex */
public final class n extends s {
    public final p b;

    public n(p pVar) {
        this.b = pVar;
    }

    @Override // s1.s
    public final void a(Matrix matrix, r1.a aVar, int i3, Canvas canvas) {
        p pVar = this.b;
        float f = pVar.f;
        float f3 = pVar.f3198g;
        RectF rectF = new RectF(pVar.b, pVar.f3195c, pVar.f3196d, pVar.f3197e);
        Paint paint = aVar.b;
        boolean z2 = f3 < 0.0f;
        Path path = aVar.f3089g;
        int[] iArr = r1.a.f3083k;
        if (z2) {
            iArr[0] = 0;
            iArr[1] = aVar.f;
            iArr[2] = aVar.f3088e;
            iArr[3] = aVar.f3087d;
        } else {
            path.rewind();
            path.moveTo(rectF.centerX(), rectF.centerY());
            path.arcTo(rectF, f, f3);
            path.close();
            float f4 = -i3;
            rectF.inset(f4, f4);
            iArr[0] = 0;
            iArr[1] = aVar.f3087d;
            iArr[2] = aVar.f3088e;
            iArr[3] = aVar.f;
        }
        float fWidth = rectF.width() / 2.0f;
        if (fWidth <= 0) {
            return;
        }
        float f5 = 1.0f - (i3 / fWidth);
        float[] fArr = r1.a.f3084l;
        fArr[1] = f5;
        fArr[2] = ((1.0f - f5) / 2.0f) + f5;
        paint.setShader(new RadialGradient(rectF.centerX(), rectF.centerY(), fWidth, iArr, fArr, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix);
        if (!z2) {
            canvas.clipPath(path, Region.Op.DIFFERENCE);
            canvas.drawPath(path, aVar.f3090h);
        }
        canvas.drawArc(rectF, f, f3, true, paint);
        canvas.restore();
    }
}
