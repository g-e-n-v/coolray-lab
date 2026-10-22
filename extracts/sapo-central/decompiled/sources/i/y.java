package i;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes.dex */
public final class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ImageView f2200a;
    public b3 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2201c = 0;

    public y(ImageView imageView) {
        this.f2200a = imageView;
    }

    public final void a() {
        b3 b3Var;
        ImageView imageView = this.f2200a;
        Drawable drawable = imageView.getDrawable();
        if (drawable != null) {
            k1.a(drawable);
        }
        if (drawable == null || (b3Var = this.b) == null) {
            return;
        }
        t.e(drawable, b3Var, imageView.getDrawableState());
    }

    public final void b(AttributeSet attributeSet, int i3) {
        int resourceId;
        ImageView imageView = this.f2200a;
        Context context = imageView.getContext();
        int[] iArr = d.a.f;
        androidx.fragment.app.f fVarV = androidx.fragment.app.f.v(context, attributeSet, iArr, i3);
        TypedArray typedArray = (TypedArray) fVarV.f413c;
        c0.p0.h(imageView, imageView.getContext(), iArr, attributeSet, (TypedArray) fVarV.f413c, i3);
        try {
            Drawable drawable = imageView.getDrawable();
            if (drawable == null && (resourceId = typedArray.getResourceId(1, -1)) != -1 && (drawable = a1.b.v(imageView.getContext(), resourceId)) != null) {
                imageView.setImageDrawable(drawable);
            }
            if (drawable != null) {
                k1.a(drawable);
            }
            if (typedArray.hasValue(2)) {
                f0.f.c(imageView, fVarV.j(2));
            }
            if (typedArray.hasValue(3)) {
                f0.f.d(imageView, k1.b(typedArray.getInt(3, -1), null));
            }
        } finally {
            fVarV.x();
        }
    }
}
