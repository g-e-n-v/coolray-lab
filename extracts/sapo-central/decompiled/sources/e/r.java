package e;

import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import c0.p0;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class r extends a1.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1657a;
    public final /* synthetic */ Object b;

    public /* synthetic */ r(int i3, Object obj) {
        this.f1657a = i3;
        this.b = obj;
    }

    @Override // c0.x0
    public final void b() {
        int i3 = this.f1657a;
        Object obj = this.b;
        switch (i3) {
            case 0:
                y yVar = ((p) obj).b;
                yVar.f1703v.setAlpha(1.0f);
                yVar.f1706y.d(null);
                yVar.f1706y = null;
                break;
            case 1:
                y yVar2 = (y) obj;
                yVar2.f1703v.setAlpha(1.0f);
                yVar2.f1706y.d(null);
                yVar2.f1706y = null;
                break;
            default:
                y yVar3 = (y) ((androidx.activity.result.c) obj).b;
                yVar3.f1703v.setVisibility(8);
                PopupWindow popupWindow = yVar3.f1704w;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                } else if (yVar3.f1703v.getParent() instanceof View) {
                    View view = (View) yVar3.f1703v.getParent();
                    WeakHashMap weakHashMap = p0.f727a;
                    c0.d0.c(view);
                }
                yVar3.f1703v.e();
                yVar3.f1706y.d(null);
                yVar3.f1706y = null;
                ViewGroup viewGroup = yVar3.A;
                WeakHashMap weakHashMap2 = p0.f727a;
                c0.d0.c(viewGroup);
                break;
        }
    }

    @Override // a1.b, c0.x0
    public void g() {
        int i3 = this.f1657a;
        Object obj = this.b;
        switch (i3) {
            case 0:
                ((p) obj).b.f1703v.setVisibility(0);
                break;
            case 1:
                y yVar = (y) obj;
                yVar.f1703v.setVisibility(0);
                if (yVar.f1703v.getParent() instanceof View) {
                    View view = (View) yVar.f1703v.getParent();
                    WeakHashMap weakHashMap = p0.f727a;
                    c0.d0.c(view);
                }
                break;
        }
    }
}
