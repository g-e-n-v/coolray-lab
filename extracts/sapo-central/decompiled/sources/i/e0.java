package i;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RatingBar;
import com.ex.auto.R;

/* JADX INFO: loaded from: classes.dex */
public final class e0 extends RatingBar {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c0 f2017a;

    public e0(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.ratingBarStyle);
        z2.a(this, getContext());
        c0 c0Var = new c0(this);
        this.f2017a = c0Var;
        c0Var.d(attributeSet, R.attr.ratingBarStyle);
    }

    @Override // android.widget.RatingBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final synchronized void onMeasure(int i3, int i4) {
        super.onMeasure(i3, i4);
        Bitmap bitmap = (Bitmap) this.f2017a.f1988c;
        if (bitmap != null) {
            setMeasuredDimension(View.resolveSizeAndState(bitmap.getWidth() * getNumStars(), i3, 0), getMeasuredHeight());
        }
    }
}
