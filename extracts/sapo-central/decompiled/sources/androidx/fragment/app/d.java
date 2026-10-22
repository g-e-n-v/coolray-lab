package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public final class d extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f403a;
    public final /* synthetic */ View b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f404c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ s0 f405d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ g f406e;

    public d(ViewGroup viewGroup, View view, boolean z2, s0 s0Var, g gVar) {
        this.f403a = viewGroup;
        this.b = view;
        this.f404c = z2;
        this.f405d = s0Var;
        this.f406e = gVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        ViewGroup viewGroup = this.f403a;
        View view = this.b;
        viewGroup.endViewTransition(view);
        if (this.f404c) {
            androidx.activity.result.b.a(view, this.f405d.f528a);
        }
        this.f406e.d();
    }
}
