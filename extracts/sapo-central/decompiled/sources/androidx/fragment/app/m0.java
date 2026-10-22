package androidx.fragment.app;

import android.app.Dialog;
import android.view.View;
import android.view.ViewTreeObserver;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class m0 implements View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f473a;
    public final /* synthetic */ Object b;

    public /* synthetic */ m0(int i3, Object obj) {
        this.f473a = i3;
        this.b = obj;
    }

    private final void a(View view) {
    }

    private final void b(View view) {
    }

    private final void c(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        int i3 = this.f473a;
        Object obj = this.b;
        switch (i3) {
            case 0:
                View view2 = (View) obj;
                view2.removeOnAttachStateChangeListener(this);
                WeakHashMap weakHashMap = c0.p0.f727a;
                c0.d0.c(view2);
                break;
            case 1:
            case 2:
                break;
            default:
                i2.g.e(view, "view");
                view.post(new a1.r(9, (Dialog) obj));
                break;
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        switch (this.f473a) {
            case 0:
                break;
            case 1:
                h.g gVar = (h.g) this.b;
                ViewTreeObserver viewTreeObserver = gVar.f1873x;
                if (viewTreeObserver != null) {
                    if (!viewTreeObserver.isAlive()) {
                        gVar.f1873x = view.getViewTreeObserver();
                    }
                    gVar.f1873x.removeGlobalOnLayoutListener(gVar.f1858i);
                }
                view.removeOnAttachStateChangeListener(this);
                break;
            case 2:
                h.e0 e0Var = (h.e0) this.b;
                ViewTreeObserver viewTreeObserver2 = e0Var.f1844o;
                if (viewTreeObserver2 != null) {
                    if (!viewTreeObserver2.isAlive()) {
                        e0Var.f1844o = view.getViewTreeObserver();
                    }
                    e0Var.f1844o.removeGlobalOnLayoutListener(e0Var.f1838i);
                }
                view.removeOnAttachStateChangeListener(this);
                break;
            default:
                i2.g.e(view, "view");
                break;
        }
    }
}
