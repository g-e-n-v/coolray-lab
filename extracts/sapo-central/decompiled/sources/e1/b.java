package e1;

import android.view.View;
import android.view.ViewParent;
import androidx.fragment.app.c;
import c0.a0;
import c0.b0;
import c0.p0;
import com.google.android.material.behavior.SwipeDismissBehavior;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class b extends a1.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1712a;
    public int b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SwipeDismissBehavior f1713c;

    public b(SwipeDismissBehavior swipeDismissBehavior) {
        this.f1713c = swipeDismissBehavior;
    }

    @Override // a1.b
    public final int B(View view) {
        return view.getWidth();
    }

    @Override // a1.b
    public final void P(View view, int i3) {
        this.b = i3;
        this.f1712a = view.getLeft();
        ViewParent parent = view.getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
    }

    @Override // a1.b
    public final void Q(int i3) {
    }

    @Override // a1.b
    public final void R(View view, int i3, int i4) {
        float f = this.f1712a;
        float width = view.getWidth();
        SwipeDismissBehavior swipeDismissBehavior = this.f1713c;
        float f3 = (width * swipeDismissBehavior.f1321d) + f;
        float width2 = (view.getWidth() * swipeDismissBehavior.f1322e) + this.f1712a;
        float f4 = i3;
        if (f4 <= f3) {
            view.setAlpha(1.0f);
        } else if (f4 >= width2) {
            view.setAlpha(0.0f);
        } else {
            view.setAlpha(Math.min(Math.max(0.0f, 1.0f - ((f4 - f3) / (width2 - f3))), 1.0f));
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0052  */
    /* JADX WARN: Code duplicated, block: B:29:0x005a  */
    /* JADX WARN: Code duplicated, block: B:30:0x005c  */
    /* JADX WARN: Code duplicated, block: B:32:0x005f  */
    @Override // a1.b
    public final void S(View view, float f, float f3) {
        int left;
        int i3;
        int i4;
        this.b = -1;
        int width = view.getWidth();
        boolean z2 = false;
        SwipeDismissBehavior swipeDismissBehavior = this.f1713c;
        if (f != 0.0f) {
            WeakHashMap weakHashMap = p0.f727a;
            boolean z3 = b0.d(view) == 1;
            int i5 = swipeDismissBehavior.f1320c;
            if (i5 != 2 && (i5 != 0 ? i5 != 1 || (!z3 ? f < 0.0f : f > 0.0f) : !z3 ? f > 0.0f : f < 0.0f)) {
                i4 = this.f1712a;
            } else {
                left = view.getLeft();
                i3 = this.f1712a;
                if (left < i3) {
                    i4 = i3 - width;
                } else {
                    i4 = i3 + width;
                }
                z2 = true;
            }
        } else {
            if (Math.abs(view.getLeft() - this.f1712a) >= Math.round(view.getWidth() * 0.5f)) {
                left = view.getLeft();
                i3 = this.f1712a;
                if (left < i3) {
                    i4 = i3 - width;
                } else {
                    i4 = i3 + width;
                }
                z2 = true;
            } else {
                i4 = this.f1712a;
            }
        }
        if (swipeDismissBehavior.f1319a.o(i4, view.getTop())) {
            c cVar = new c(swipeDismissBehavior, view, z2);
            WeakHashMap weakHashMap2 = p0.f727a;
            a0.m(view, cVar);
        }
    }

    @Override // a1.b
    public final boolean d0(View view, int i3) {
        int i4 = this.b;
        return (i4 == -1 || i4 == i3) && this.f1713c.r(view);
    }

    @Override // a1.b
    public final int n(View view, int i3) {
        int width;
        int width2;
        int width3;
        WeakHashMap weakHashMap = p0.f727a;
        boolean z2 = b0.d(view) == 1;
        int i4 = this.f1713c.f1320c;
        if (i4 == 0) {
            if (z2) {
                width = this.f1712a - view.getWidth();
                width2 = this.f1712a;
            } else {
                width = this.f1712a;
                width3 = view.getWidth();
                width2 = width3 + width;
            }
        } else if (i4 != 1) {
            width = this.f1712a - view.getWidth();
            width2 = view.getWidth() + this.f1712a;
        } else if (z2) {
            width = this.f1712a;
            width3 = view.getWidth();
            width2 = width3 + width;
        } else {
            width = this.f1712a - view.getWidth();
            width2 = this.f1712a;
        }
        return Math.min(Math.max(width, i3), width2);
    }

    @Override // a1.b
    public final int o(View view, int i3) {
        return view.getTop();
    }
}
