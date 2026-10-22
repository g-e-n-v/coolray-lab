package d1;

import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import c0.p0;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class a extends s.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public b f1535a;

    @Override // s.a
    public boolean g(CoordinatorLayout coordinatorLayout, View view, int i3) {
        r(coordinatorLayout, view, i3);
        if (this.f1535a == null) {
            this.f1535a = new b(view);
        }
        b bVar = this.f1535a;
        View view2 = (View) bVar.f1537c;
        bVar.f1536a = view2.getTop();
        bVar.b = view2.getLeft();
        b bVar2 = this.f1535a;
        View view3 = (View) bVar2.f1537c;
        int top = 0 - (view3.getTop() - bVar2.f1536a);
        WeakHashMap weakHashMap = p0.f727a;
        view3.offsetTopAndBottom(top);
        view3.offsetLeftAndRight(0 - (view3.getLeft() - bVar2.b));
        return true;
    }

    public void r(CoordinatorLayout coordinatorLayout, View view, int i3) {
        coordinatorLayout.q(view, i3);
    }
}
