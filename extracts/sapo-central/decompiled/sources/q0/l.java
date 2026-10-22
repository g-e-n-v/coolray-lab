package q0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* JADX INFO: loaded from: classes.dex */
public final class l extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f2937a = false;
    public final /* synthetic */ m b;

    public l(m mVar) {
        this.b = mVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.f2937a = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        if (this.f2937a) {
            this.f2937a = false;
            return;
        }
        m mVar = this.b;
        if (((Float) mVar.f2961z.getAnimatedValue()).floatValue() == 0.0f) {
            mVar.A = 0;
            mVar.f(0);
        } else {
            mVar.A = 2;
            mVar.f2954s.invalidate();
        }
    }
}
