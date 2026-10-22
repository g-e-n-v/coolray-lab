package n1;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import i.v1;

/* JADX INFO: loaded from: classes.dex */
public abstract class e extends v1 {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Drawable f2512p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final Rect f2513q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final Rect f2514r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f2515s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final boolean f2516t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f2517u;

    public e(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f2513q = new Rect();
        this.f2514r = new Rect();
        this.f2515s = 119;
        this.f2516t = true;
        this.f2517u = false;
        i.a(context, attributeSet, 0, 0);
        int[] iArr = b1.a.f676g;
        i.b(context, attributeSet, iArr, 0, 0, new int[0]);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, 0, 0);
        this.f2515s = typedArrayObtainStyledAttributes.getInt(1, this.f2515s);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(0);
        if (drawable != null) {
            setForeground(drawable);
        }
        this.f2516t = typedArrayObtainStyledAttributes.getBoolean(2, true);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        super.draw(canvas);
        Drawable drawable = this.f2512p;
        if (drawable != null) {
            if (this.f2517u) {
                this.f2517u = false;
                int right = getRight() - getLeft();
                int bottom = getBottom() - getTop();
                boolean z2 = this.f2516t;
                Rect rect = this.f2513q;
                if (z2) {
                    rect.set(0, 0, right, bottom);
                } else {
                    rect.set(getPaddingLeft(), getPaddingTop(), right - getPaddingRight(), bottom - getPaddingBottom());
                }
                int i3 = this.f2515s;
                int intrinsicWidth = drawable.getIntrinsicWidth();
                int intrinsicHeight = drawable.getIntrinsicHeight();
                Rect rect2 = this.f2514r;
                Gravity.apply(i3, intrinsicWidth, intrinsicHeight, rect, rect2);
                drawable.setBounds(rect2);
            }
            drawable.draw(canvas);
        }
    }

    @Override // android.view.View
    public final void drawableHotspotChanged(float f, float f3) {
        super.drawableHotspotChanged(f, f3);
        Drawable drawable = this.f2512p;
        if (drawable != null) {
            drawable.setHotspot(f, f3);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f2512p;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        this.f2512p.setState(getDrawableState());
    }

    @Override // android.view.View
    public Drawable getForeground() {
        return this.f2512p;
    }

    @Override // android.view.View
    public int getForegroundGravity() {
        return this.f2515s;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f2512p;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // i.v1, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i3, int i4, int i5, int i6) {
        super.onLayout(z2, i3, i4, i5, i6);
        this.f2517u = z2 | this.f2517u;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i3, int i4, int i5, int i6) {
        super.onSizeChanged(i3, i4, i5, i6);
        this.f2517u = true;
    }

    @Override // android.view.View
    public void setForeground(Drawable drawable) {
        Drawable drawable2 = this.f2512p;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
                unscheduleDrawable(this.f2512p);
            }
            this.f2512p = drawable;
            if (drawable != null) {
                setWillNotDraw(false);
                drawable.setCallback(this);
                if (drawable.isStateful()) {
                    drawable.setState(getDrawableState());
                }
                if (this.f2515s == 119) {
                    drawable.getPadding(new Rect());
                }
            } else {
                setWillNotDraw(true);
            }
            requestLayout();
            invalidate();
        }
    }

    @Override // android.view.View
    public void setForegroundGravity(int i3) {
        if (this.f2515s != i3) {
            if ((8388615 & i3) == 0) {
                i3 |= 8388611;
            }
            if ((i3 & 112) == 0) {
                i3 |= 48;
            }
            this.f2515s = i3;
            if (i3 == 119 && this.f2512p != null) {
                this.f2512p.getPadding(new Rect());
            }
            requestLayout();
        }
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f2512p;
    }
}
