package u1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.widget.TextView;
import i.b1;

/* JADX INFO: loaded from: classes.dex */
public final class m extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3276a;
    public final /* synthetic */ TextView b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f3277c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ TextView f3278d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ n f3279e;

    public m(n nVar, int i3, TextView textView, int i4, TextView textView2) {
        this.f3279e = nVar;
        this.f3276a = i3;
        this.b = textView;
        this.f3277c = i4;
        this.f3278d = textView2;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        b1 b1Var;
        int i3 = this.f3276a;
        n nVar = this.f3279e;
        nVar.f3286i = i3;
        nVar.f3284g = null;
        TextView textView = this.b;
        if (textView != null) {
            textView.setVisibility(4);
            if (this.f3277c == 1 && (b1Var = nVar.f3290m) != null) {
                b1Var.setText((CharSequence) null);
            }
        }
        TextView textView2 = this.f3278d;
        if (textView2 != null) {
            textView2.setTranslationY(0.0f);
            textView2.setAlpha(1.0f);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        TextView textView = this.f3278d;
        if (textView != null) {
            textView.setVisibility(0);
        }
    }
}
