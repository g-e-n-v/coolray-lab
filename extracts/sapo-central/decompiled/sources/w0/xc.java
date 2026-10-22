package w0;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import com.ex.auto.MainActivity;
import com.ex.auto.R;

/* JADX INFO: loaded from: classes.dex */
public final class xc extends Drawable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f4515a;
    public final Paint b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Paint f4516c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Paint f4517d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4518e;

    public xc(MainActivity mainActivity) {
        float f = mainActivity.getResources().getDisplayMetrics().density;
        this.f4515a = f;
        Paint paint = new Paint(1);
        paint.setColor(androidx.core.content.c.a(mainActivity, R.color.master_text));
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(f * 2.0f);
        this.b = paint;
        Paint paint2 = new Paint(1);
        paint2.setColor(androidx.core.content.c.a(mainActivity, R.color.master_text));
        Paint.Style style = Paint.Style.FILL;
        paint2.setStyle(style);
        this.f4516c = paint2;
        Paint paint3 = new Paint(1);
        paint3.setColor(androidx.core.content.c.a(mainActivity, R.color.master_green));
        paint3.setStyle(style);
        this.f4517d = paint3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        i2.g.e(canvas, "canvas");
        Rect bounds = getBounds();
        i2.g.d(bounds, "getBounds(...)");
        if (bounds.isEmpty()) {
            return;
        }
        float fWidth = bounds.width();
        float fHeight = bounds.height();
        Paint paint = this.b;
        float strokeWidth = paint.getStrokeWidth() / 2.0f;
        float f = this.f4515a;
        float f3 = (fWidth - (0.11f * fWidth)) - (2.0f * f);
        RectF rectF = new RectF(strokeWidth, strokeWidth, f3 - strokeWidth, fHeight - strokeWidth);
        float f4 = 3.0f * f;
        canvas.drawRoundRect(rectF, f4, f4, paint);
        canvas.drawRoundRect(new RectF((1.0f * f) + f3, 0.33f * fHeight, fWidth, fHeight * 0.67f), f * 1.5f, f * 1.5f, this.f4516c);
        if (this.f4518e > 0) {
            RectF rectF2 = new RectF((f * 4.0f) + rectF.left, (f * 4.0f) + rectF.top, rectF.right - (f * 4.0f), rectF.bottom - (4.0f * f));
            rectF2.right = ((this.f4518e / 100.0f) * rectF2.width()) + rectF2.left;
            canvas.drawRoundRect(rectF2, f * 1.5f, f * 1.5f, this.f4517d);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i3) {
        this.b.setAlpha(i3);
        this.f4516c.setAlpha(i3);
        this.f4517d.setAlpha(i3);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.b.setColorFilter(colorFilter);
        this.f4516c.setColorFilter(colorFilter);
        this.f4517d.setColorFilter(colorFilter);
        invalidateSelf();
    }
}
