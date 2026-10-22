package q0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

/* JADX INFO: loaded from: classes.dex */
public final class e extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2860a = 1;
    public final /* synthetic */ w0 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f2861c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f2862d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ j f2863e;

    public e(j jVar, w0 w0Var, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f2863e = jVar;
        this.b = w0Var;
        this.f2862d = viewPropertyAnimator;
        this.f2861c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        switch (this.f2860a) {
            case 1:
                this.f2861c.setAlpha(1.0f);
                break;
            default:
                super.onAnimationCancel(animator);
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.f2860a) {
            case 0:
                this.f2862d.setListener(null);
                this.f2861c.setAlpha(1.0f);
                j jVar = this.f2863e;
                w0 w0Var = this.b;
                jVar.c(w0Var);
                jVar.f2931q.remove(w0Var);
                jVar.i();
                break;
            default:
                this.f2862d.setListener(null);
                j jVar2 = this.f2863e;
                w0 w0Var2 = this.b;
                jVar2.c(w0Var2);
                jVar2.f2929o.remove(w0Var2);
                jVar2.i();
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        switch (this.f2860a) {
            case 0:
                this.f2863e.getClass();
                break;
            default:
                this.f2863e.getClass();
                break;
        }
    }

    public e(j jVar, w0 w0Var, View view, ViewPropertyAnimator viewPropertyAnimator) {
        this.f2863e = jVar;
        this.b = w0Var;
        this.f2861c = view;
        this.f2862d = viewPropertyAnimator;
    }
}
