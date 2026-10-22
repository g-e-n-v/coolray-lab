package h;

import android.view.View;
import android.view.ViewTreeObserver;
import c0.p0;
import i.i2;
import i.j0;
import i.k0;
import i.q0;
import i.t0;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class d implements ViewTreeObserver.OnGlobalLayoutListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1829a;
    public final /* synthetic */ Object b;

    public /* synthetic */ d(int i3, Object obj) {
        this.f1829a = i3;
        this.b = obj;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        int i3 = this.f1829a;
        Object obj = this.b;
        switch (i3) {
            case 0:
                g gVar = (g) obj;
                ArrayList arrayList = gVar.f1857h;
                if (gVar.a() && arrayList.size() > 0) {
                    int i4 = 0;
                    if (!((f) arrayList.get(0)).f1850a.f2011x) {
                        View view = gVar.f1864o;
                        if (view != null && view.isShown()) {
                            int size = arrayList.size();
                            while (i4 < size) {
                                Object obj2 = arrayList.get(i4);
                                i4++;
                                ((f) obj2).f1850a.d();
                            }
                        } else {
                            gVar.dismiss();
                        }
                    }
                    break;
                }
                break;
            case 1:
                e0 e0Var = (e0) obj;
                i2 i2Var = e0Var.f1837h;
                if (e0Var.a() && !i2Var.f2011x) {
                    View view2 = e0Var.f1842m;
                    if (view2 != null && view2.isShown()) {
                        i2Var.d();
                    } else {
                        e0Var.dismiss();
                    }
                    break;
                }
                break;
            case 2:
                t0 t0Var = (t0) obj;
                if (!t0Var.getInternalPopup().a()) {
                    t0Var.f.k(k0.b(t0Var), k0.a(t0Var));
                }
                ViewTreeObserver viewTreeObserver = t0Var.getViewTreeObserver();
                if (viewTreeObserver != null) {
                    j0.a(viewTreeObserver, this);
                }
                break;
            default:
                q0 q0Var = (q0) obj;
                t0 t0Var2 = q0Var.F;
                q0Var.getClass();
                WeakHashMap weakHashMap = p0.f727a;
                if (c0.c0.b(t0Var2) && t0Var2.getGlobalVisibleRect(q0Var.D)) {
                    q0Var.s();
                    q0Var.d();
                } else {
                    q0Var.dismiss();
                }
                break;
        }
    }
}
