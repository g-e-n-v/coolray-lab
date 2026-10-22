package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.content.Context;
import android.content.res.Resources;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.ex.auto.R;

/* JADX INFO: loaded from: classes.dex */
public final class g extends h {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f415c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f416d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public androidx.activity.result.c f417e;

    /* JADX WARN: Code duplicated, block: B:17:0x0027  */
    /* JADX WARN: Code duplicated, block: B:69:0x00b9 A[Catch: RuntimeException -> 0x00c4, TRY_LEAVE, TryCatch #0 {RuntimeException -> 0x00c4, blocks: (B:67:0x00b3, B:69:0x00b9), top: B:80:0x00b3 }] */
    public final androidx.activity.result.c j(Context context) {
        int i3;
        androidx.activity.result.c cVar;
        Animator animatorLoadAnimator;
        int i4;
        if (this.f416d) {
            return this.f417e;
        }
        s0 s0Var = (s0) this.f419a;
        r rVar = s0Var.f529c;
        boolean z2 = s0Var.f528a == 2;
        boolean z3 = this.f415c;
        p pVar = rVar.H;
        int i5 = pVar == null ? 0 : pVar.f;
        if (z3) {
            if (z2) {
                if (pVar == null) {
                    i3 = 0;
                } else {
                    i3 = pVar.f491d;
                }
            } else if (pVar == null) {
                i3 = 0;
            } else {
                i3 = pVar.f492e;
            }
        } else if (z2) {
            if (pVar == null) {
                i3 = 0;
            } else {
                i3 = pVar.b;
            }
        } else if (pVar == null) {
            i3 = 0;
        } else {
            i3 = pVar.f490c;
        }
        rVar.y(0, 0, 0, 0);
        ViewGroup viewGroup = rVar.D;
        androidx.activity.result.c cVar2 = null;
        if (viewGroup != null && viewGroup.getTag(R.id.visible_removing_fragment_view_tag) != null) {
            rVar.D.setTag(R.id.visible_removing_fragment_view_tag, null);
        }
        ViewGroup viewGroup2 = rVar.D;
        if (viewGroup2 == null || viewGroup2.getLayoutTransition() == null) {
            if (i3 == 0 && i5 != 0) {
                if (i5 == 4097) {
                    i4 = z2 ? R.animator.fragment_open_enter : R.animator.fragment_open_exit;
                } else if (i5 == 4099) {
                    i4 = z2 ? R.animator.fragment_fade_enter : R.animator.fragment_fade_exit;
                } else if (i5 != 8194) {
                    i4 = -1;
                } else {
                    i4 = z2 ? R.animator.fragment_close_enter : R.animator.fragment_close_exit;
                }
                i3 = i4;
            }
            if (i3 != 0) {
                boolean zEquals = "anim".equals(context.getResources().getResourceTypeName(i3));
                if (zEquals) {
                    try {
                        Animation animationLoadAnimation = AnimationUtils.loadAnimation(context, i3);
                        if (animationLoadAnimation != null) {
                            cVar = new androidx.activity.result.c(animationLoadAnimation);
                            cVar2 = cVar;
                        }
                    } catch (Resources.NotFoundException e3) {
                        throw e3;
                    } catch (RuntimeException unused) {
                        try {
                            animatorLoadAnimator = AnimatorInflater.loadAnimator(context, i3);
                            if (animatorLoadAnimator != null) {
                                cVar = new androidx.activity.result.c();
                                cVar.f100a = null;
                                cVar.b = animatorLoadAnimator;
                                cVar2 = cVar;
                            }
                        } catch (RuntimeException e4) {
                            if (zEquals) {
                                throw e4;
                            }
                            Animation animationLoadAnimation2 = AnimationUtils.loadAnimation(context, i3);
                            if (animationLoadAnimation2 != null) {
                                cVar2 = new androidx.activity.result.c(animationLoadAnimation2);
                            }
                        }
                    }
                } else {
                    animatorLoadAnimator = AnimatorInflater.loadAnimator(context, i3);
                    if (animatorLoadAnimator != null) {
                        cVar = new androidx.activity.result.c();
                        cVar.f100a = null;
                        cVar.b = animatorLoadAnimator;
                        cVar2 = cVar;
                    }
                }
            }
        }
        this.f417e = cVar2;
        this.f416d = true;
        return cVar2;
    }
}
