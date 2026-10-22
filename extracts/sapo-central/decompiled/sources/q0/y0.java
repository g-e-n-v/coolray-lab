package q0;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public final class y0 extends c0.c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final RecyclerView f3071d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final x0 f3072e;

    public y0(RecyclerView recyclerView) {
        this.f3071d = recyclerView;
        x0 x0Var = this.f3072e;
        if (x0Var != null) {
            this.f3072e = x0Var;
        } else {
            this.f3072e = new x0(this);
        }
    }

    @Override // c0.c
    public final void c(View view, AccessibilityEvent accessibilityEvent) {
        super.c(view, accessibilityEvent);
        if (!(view instanceof RecyclerView) || this.f3071d.K()) {
            return;
        }
        RecyclerView recyclerView = (RecyclerView) view;
        if (recyclerView.getLayoutManager() != null) {
            recyclerView.getLayoutManager().O(accessibilityEvent);
        }
    }

    @Override // c0.c
    public final void d(View view, d0.f fVar) {
        AccessibilityNodeInfo accessibilityNodeInfo = fVar.f1533a;
        this.f701a.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        RecyclerView recyclerView = this.f3071d;
        if (recyclerView.K() || recyclerView.getLayoutManager() == null) {
            return;
        }
        i0 layoutManager = recyclerView.getLayoutManager();
        RecyclerView recyclerView2 = layoutManager.b;
        o0 o0Var = recyclerView2.b;
        t0 t0Var = recyclerView2.f619c0;
        if (recyclerView2.canScrollVertically(-1) || layoutManager.b.canScrollHorizontally(-1)) {
            fVar.a(8192);
            accessibilityNodeInfo.setScrollable(true);
        }
        if (layoutManager.b.canScrollVertically(1) || layoutManager.b.canScrollHorizontally(1)) {
            fVar.a(4096);
            accessibilityNodeInfo.setScrollable(true);
        }
        accessibilityNodeInfo.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(layoutManager.F(o0Var, t0Var), layoutManager.x(o0Var, t0Var), false, 0));
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0056 A[PHI: r0
      0x0056: PHI (r0v8 int) = (r0v4 int), (r0v12 int) binds: [B:27:0x0073, B:19:0x0046] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // c0.c
    public final boolean g(View view, int i3, Bundle bundle) {
        int iC;
        int iA;
        if (super.g(view, i3, bundle)) {
            return true;
        }
        RecyclerView recyclerView = this.f3071d;
        if (!recyclerView.K() && recyclerView.getLayoutManager() != null) {
            i0 layoutManager = recyclerView.getLayoutManager();
            RecyclerView recyclerView2 = layoutManager.b;
            o0 o0Var = recyclerView2.b;
            if (i3 == 4096) {
                iC = recyclerView2.canScrollVertically(1) ? (layoutManager.f2919o - layoutManager.C()) - layoutManager.z() : 0;
                if (layoutManager.b.canScrollHorizontally(1)) {
                    iA = (layoutManager.f2918n - layoutManager.A()) - layoutManager.B();
                } else {
                    iA = 0;
                }
            } else if (i3 != 8192) {
                iA = 0;
                iC = 0;
            } else {
                iC = recyclerView2.canScrollVertically(-1) ? -((layoutManager.f2919o - layoutManager.C()) - layoutManager.z()) : 0;
                if (layoutManager.b.canScrollHorizontally(-1)) {
                    iA = -((layoutManager.f2918n - layoutManager.A()) - layoutManager.B());
                } else {
                    iA = 0;
                }
            }
            if (iC != 0 || iA != 0) {
                layoutManager.b.Z(iA, iC, true);
                return true;
            }
        }
        return false;
    }
}
