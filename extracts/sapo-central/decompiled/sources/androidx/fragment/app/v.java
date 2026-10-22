package androidx.fragment.app;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.Transformation;

/* JADX INFO: loaded from: classes.dex */
public final class v extends AnimationSet implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ViewGroup f539a;
    public final View b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f540c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f541d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f542e;

    public v(Animation animation, ViewGroup viewGroup, View view) {
        super(false);
        this.f542e = true;
        this.f539a = viewGroup;
        this.b = view;
        addAnimation(animation);
        viewGroup.post(this);
    }

    @Override // android.view.animation.AnimationSet, android.view.animation.Animation
    public final boolean getTransformation(long j3, Transformation transformation) {
        this.f542e = true;
        if (this.f540c) {
            return !this.f541d;
        }
        if (!super.getTransformation(j3, transformation)) {
            this.f540c = true;
            c0.u.a(this.f539a, this);
        }
        return true;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z2 = this.f540c;
        ViewGroup viewGroup = this.f539a;
        if (z2 || !this.f542e) {
            viewGroup.endViewTransition(this.b);
            this.f541d = true;
        } else {
            this.f542e = false;
            viewGroup.post(this);
        }
    }

    @Override // android.view.animation.Animation
    public final boolean getTransformation(long j3, Transformation transformation, float f) {
        this.f542e = true;
        if (this.f540c) {
            return !this.f541d;
        }
        if (!super.getTransformation(j3, transformation, f)) {
            this.f540c = true;
            c0.u.a(this.f539a, this);
        }
        return true;
    }
}
