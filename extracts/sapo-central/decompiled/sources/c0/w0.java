package c0;

import android.view.View;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public final class w0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WeakReference f737a;

    public w0(View view) {
        this.f737a = new WeakReference(view);
    }

    public final void a(float f) {
        View view = (View) this.f737a.get();
        if (view != null) {
            view.animate().alpha(f);
        }
    }

    public final void b() {
        View view = (View) this.f737a.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    public final void c(long j3) {
        View view = (View) this.f737a.get();
        if (view != null) {
            view.animate().setDuration(j3);
        }
    }

    public final void d(x0 x0Var) {
        View view = (View) this.f737a.get();
        if (view != null) {
            if (x0Var != null) {
                view.animate().setListener(new u0(x0Var, view));
            } else {
                view.animate().setListener(null);
            }
        }
    }

    public final void e(float f) {
        View view = (View) this.f737a.get();
        if (view != null) {
            view.animate().translationY(f);
        }
    }
}
