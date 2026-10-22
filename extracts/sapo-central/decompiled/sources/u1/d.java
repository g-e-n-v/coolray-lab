package u1;

import android.animation.ValueAnimator;

/* JADX INFO: loaded from: classes.dex */
public final class d implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3249a;
    public final /* synthetic */ e b;

    public /* synthetic */ d(e eVar, int i3) {
        this.f3249a = i3;
        this.b = eVar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        switch (this.f3249a) {
            case 0:
                this.b.f3275c.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                break;
            default:
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                e eVar = this.b;
                eVar.f3275c.setScaleX(fFloatValue);
                eVar.f3275c.setScaleY(fFloatValue);
                break;
        }
    }
}
