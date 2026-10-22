package q0;

import android.util.Log;
import android.view.animation.Interpolator;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public final class r0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f2992a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2993c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2994d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Interpolator f2995e;
    public boolean f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f2996g;

    public final void a(RecyclerView recyclerView) {
        int i3 = this.f2994d;
        if (i3 >= 0) {
            this.f2994d = -1;
            recyclerView.M(i3);
            this.f = false;
            return;
        }
        if (!this.f) {
            this.f2996g = 0;
            return;
        }
        Interpolator interpolator = this.f2995e;
        if (interpolator != null && this.f2993c < 1) {
            throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
        }
        int i4 = this.f2993c;
        if (i4 < 1) {
            throw new IllegalStateException("Scroll duration must be a positive number");
        }
        recyclerView.W.b(this.f2992a, this.b, i4, interpolator);
        int i5 = this.f2996g + 1;
        this.f2996g = i5;
        if (i5 > 10) {
            Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
        }
        this.f = false;
    }
}
