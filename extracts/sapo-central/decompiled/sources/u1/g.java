package u1;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class g extends s1.g {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final Paint f3256x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final RectF f3257y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f3258z;

    public g(s1.k kVar) {
        super(kVar == null ? new s1.k() : kVar);
        Paint paint = new Paint(1);
        this.f3256x = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        this.f3257y = new RectF();
    }

    @Override // s1.g, android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Canvas canvas2;
        Drawable.Callback callback = getCallback();
        if (callback instanceof View) {
            View view = (View) callback;
            if (view.getLayerType() != 2) {
                view.setLayerType(2, null);
            }
            canvas2 = canvas;
        } else {
            canvas2 = canvas;
            this.f3258z = canvas2.saveLayer(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), null);
        }
        super.draw(canvas2);
        canvas2.drawRect(this.f3257y, this.f3256x);
        if (getCallback() instanceof View) {
            return;
        }
        canvas2.restoreToCount(this.f3258z);
    }

    public final void m(float f, float f3, float f4, float f5) {
        RectF rectF = this.f3257y;
        if (f == rectF.left && f3 == rectF.top && f4 == rectF.right && f5 == rectF.bottom) {
            return;
        }
        rectF.set(f, f3, f4, f5);
        invalidateSelf();
    }
}
