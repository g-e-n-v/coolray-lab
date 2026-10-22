package q0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

/* JADX INFO: loaded from: classes.dex */
public final class g extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2884a;
    public final /* synthetic */ h b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f2885c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ View f2886d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ j f2887e;

    public /* synthetic */ g(j jVar, h hVar, ViewPropertyAnimator viewPropertyAnimator, View view, int i3) {
        this.f2884a = i3;
        this.f2887e = jVar;
        this.b = hVar;
        this.f2885c = viewPropertyAnimator;
        this.f2886d = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.f2884a) {
            case 0:
                this.f2885c.setListener(null);
                View view = this.f2886d;
                view.setAlpha(1.0f);
                view.setTranslationX(0.0f);
                view.setTranslationY(0.0f);
                h hVar = this.b;
                w0 w0Var = hVar.f2893a;
                j jVar = this.f2887e;
                jVar.c(w0Var);
                jVar.f2932r.remove(hVar.f2893a);
                jVar.i();
                break;
            default:
                this.f2885c.setListener(null);
                View view2 = this.f2886d;
                view2.setAlpha(1.0f);
                view2.setTranslationX(0.0f);
                view2.setTranslationY(0.0f);
                h hVar2 = this.b;
                w0 w0Var2 = hVar2.b;
                j jVar2 = this.f2887e;
                jVar2.c(w0Var2);
                jVar2.f2932r.remove(hVar2.b);
                jVar2.i();
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        switch (this.f2884a) {
            case 0:
                w0 w0Var = this.b.f2893a;
                this.f2887e.getClass();
                break;
            default:
                w0 w0Var2 = this.b.b;
                this.f2887e.getClass();
                break;
        }
    }
}
