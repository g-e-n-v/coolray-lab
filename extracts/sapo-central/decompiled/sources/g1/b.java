package g1;

import android.animation.ValueAnimator;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.textfield.TextInputLayout;
import q0.m;
import s1.g;
import u1.k;

/* JADX INFO: loaded from: classes.dex */
public final class b implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1802a;
    public final /* synthetic */ Object b;

    public /* synthetic */ b(int i3, Object obj) {
        this.f1802a = i3;
        this.b = obj;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        switch (this.f1802a) {
            case 0:
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                g gVar = ((BottomSheetBehavior) this.b).f1329i;
                if (gVar != null) {
                    s1.f fVar = gVar.f3142a;
                    if (fVar.f3133i != fFloatValue) {
                        fVar.f3133i = fFloatValue;
                        gVar.f3145e = true;
                        gVar.invalidateSelf();
                    }
                }
                break;
            case 1:
                int iFloatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
                m mVar = (m) this.b;
                mVar.f2939c.setAlpha(iFloatValue);
                mVar.f2940d.setAlpha(iFloatValue);
                mVar.f2954s.invalidate();
                break;
            case 2:
                ((k) this.b).f3275c.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                break;
            default:
                ((TextInputLayout) this.b).D0.i(((Float) valueAnimator.getAnimatedValue()).floatValue());
                break;
        }
    }
}
