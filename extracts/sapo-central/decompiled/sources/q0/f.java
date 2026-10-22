package q0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

/* JADX INFO: loaded from: classes.dex */
public final class f extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ w0 f2876a;
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f2877c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f2878d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f2879e;
    public final /* synthetic */ j f;

    public f(j jVar, w0 w0Var, int i3, View view, int i4, ViewPropertyAnimator viewPropertyAnimator) {
        this.f = jVar;
        this.f2876a = w0Var;
        this.b = i3;
        this.f2877c = view;
        this.f2878d = i4;
        this.f2879e = viewPropertyAnimator;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        int i3 = this.b;
        View view = this.f2877c;
        if (i3 != 0) {
            view.setTranslationX(0.0f);
        }
        if (this.f2878d != 0) {
            view.setTranslationY(0.0f);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f2879e.setListener(null);
        j jVar = this.f;
        w0 w0Var = this.f2876a;
        jVar.c(w0Var);
        jVar.f2930p.remove(w0Var);
        jVar.i();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f.getClass();
    }
}
