package q0;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.recyclerview.widget.RecyclerView;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class x0 extends c0.c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final y0 f3068d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final WeakHashMap f3069e = new WeakHashMap();

    public x0(y0 y0Var) {
        this.f3068d = y0Var;
    }

    @Override // c0.c
    public final boolean a(View view, AccessibilityEvent accessibilityEvent) {
        c0.c cVar = (c0.c) this.f3069e.get(view);
        return cVar != null ? cVar.a(view, accessibilityEvent) : this.f701a.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    @Override // c0.c
    public final androidx.emoji2.text.m b(View view) {
        c0.c cVar = (c0.c) this.f3069e.get(view);
        return cVar != null ? cVar.b(view) : super.b(view);
    }

    @Override // c0.c
    public final void c(View view, AccessibilityEvent accessibilityEvent) {
        c0.c cVar = (c0.c) this.f3069e.get(view);
        if (cVar != null) {
            cVar.c(view, accessibilityEvent);
        } else {
            super.c(view, accessibilityEvent);
        }
    }

    @Override // c0.c
    public final void d(View view, d0.f fVar) {
        AccessibilityNodeInfo accessibilityNodeInfo = fVar.f1533a;
        y0 y0Var = this.f3068d;
        RecyclerView recyclerView = y0Var.f3071d;
        RecyclerView recyclerView2 = y0Var.f3071d;
        boolean zK = recyclerView.K();
        View.AccessibilityDelegate accessibilityDelegate = this.f701a;
        if (zK || recyclerView2.getLayoutManager() == null) {
            accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            return;
        }
        recyclerView2.getLayoutManager().P(view, fVar);
        c0.c cVar = (c0.c) this.f3069e.get(view);
        if (cVar != null) {
            cVar.d(view, fVar);
        } else {
            accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        }
    }

    @Override // c0.c
    public final void e(View view, AccessibilityEvent accessibilityEvent) {
        c0.c cVar = (c0.c) this.f3069e.get(view);
        if (cVar != null) {
            cVar.e(view, accessibilityEvent);
        } else {
            super.e(view, accessibilityEvent);
        }
    }

    @Override // c0.c
    public final boolean f(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        c0.c cVar = (c0.c) this.f3069e.get(viewGroup);
        return cVar != null ? cVar.f(viewGroup, view, accessibilityEvent) : this.f701a.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    @Override // c0.c
    public final boolean g(View view, int i3, Bundle bundle) {
        y0 y0Var = this.f3068d;
        RecyclerView recyclerView = y0Var.f3071d;
        RecyclerView recyclerView2 = y0Var.f3071d;
        if (recyclerView.K() || recyclerView2.getLayoutManager() == null) {
            return super.g(view, i3, bundle);
        }
        c0.c cVar = (c0.c) this.f3069e.get(view);
        if (cVar != null) {
            if (cVar.g(view, i3, bundle)) {
                return true;
            }
        } else if (super.g(view, i3, bundle)) {
            return true;
        }
        o0 o0Var = recyclerView2.getLayoutManager().b.b;
        return false;
    }

    @Override // c0.c
    public final void h(View view, int i3) {
        c0.c cVar = (c0.c) this.f3069e.get(view);
        if (cVar != null) {
            cVar.h(view, i3);
        } else {
            super.h(view, i3);
        }
    }

    @Override // c0.c
    public final void i(View view, AccessibilityEvent accessibilityEvent) {
        c0.c cVar = (c0.c) this.f3069e.get(view);
        if (cVar != null) {
            cVar.i(view, accessibilityEvent);
        } else {
            super.i(view, accessibilityEvent);
        }
    }
}
