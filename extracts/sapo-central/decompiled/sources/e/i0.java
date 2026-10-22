package e;

import android.view.View;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import c0.p0;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class i0 extends a1.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1612a;
    public final /* synthetic */ k0 b;

    public /* synthetic */ i0(k0 k0Var, int i3) {
        this.f1612a = i3;
        this.b = k0Var;
    }

    @Override // c0.x0
    public final void b() {
        View view;
        int i3 = this.f1612a;
        k0 k0Var = this.b;
        switch (i3) {
            case 0:
                if (k0Var.f1637o && (view = k0Var.f1629g) != null) {
                    view.setTranslationY(0.0f);
                    k0Var.f1627d.setTranslationY(0.0f);
                }
                k0Var.f1627d.setVisibility(8);
                k0Var.f1627d.setTransitioning(false);
                k0Var.f1641s = null;
                androidx.activity.result.c cVar = k0Var.f1633k;
                if (cVar != null) {
                    cVar.y(k0Var.f1632j);
                    k0Var.f1632j = null;
                    k0Var.f1633k = null;
                }
                ActionBarOverlayLayout actionBarOverlayLayout = k0Var.f1626c;
                if (actionBarOverlayLayout != null) {
                    WeakHashMap weakHashMap = p0.f727a;
                    c0.d0.c(actionBarOverlayLayout);
                }
                break;
            default:
                k0Var.f1641s = null;
                k0Var.f1627d.requestLayout();
                break;
        }
    }
}
