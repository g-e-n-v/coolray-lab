package com.ex.auto;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.content.c;
import i2.g;

/* JADX INFO: loaded from: classes.dex */
public final class MasterToggleView extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f1056a;
    public final Paint b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Paint f1057c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f1058d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f1059e;
    public boolean f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MasterToggleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        g.e(context, "context");
        float f = getResources().getDisplayMetrics().density;
        this.f1056a = f;
        this.b = new Paint(1);
        Paint paint = new Paint(1);
        paint.setColor(c.a(context, R.color.master_surface));
        paint.setShadowLayer(1.5f * f, 0.0f, f * 0.8f, 855638016);
        this.f1057c = paint;
        this.f1058d = c.a(context, R.color.master_green);
        this.f1059e = c.a(context, R.color.master_status_off);
        setLayerType(1, null);
        setClickable(false);
        setFocusable(false);
    }

    public final boolean getActive() {
        return this.f;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        g.e(canvas, "canvas");
        super.onDraw(canvas);
        float height = getHeight();
        float f = height / 2.0f;
        int i3 = this.f ? this.f1058d : this.f1059e;
        Paint paint = this.b;
        paint.setColor(i3);
        canvas.drawRoundRect(0.0f, 0.0f, getWidth(), height, f, f, paint);
        canvas.drawCircle(this.f ? getWidth() - f : f, f, f - (this.f1056a * 3.0f), this.f1057c);
    }

    @Override // android.view.View
    public final void onMeasure(int i3, int i4) {
        float f = this.f1056a;
        setMeasuredDimension((int) (56.0f * f), (int) (f * 32.0f));
    }

    public final void setActive(boolean z2) {
        this.f = z2;
        invalidate();
    }
}
