package i;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.widget.SearchView;

/* JADX INFO: loaded from: classes.dex */
public final class o0 implements AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2114a;
    public final /* synthetic */ Object b;

    public /* synthetic */ o0(int i3, Object obj) {
        this.f2114a = i3;
        this.b = obj;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i3, long j3) {
        Object item;
        switch (this.f2114a) {
            case 0:
                q0 q0Var = (q0) this.b;
                t0 t0Var = q0Var.F;
                t0Var.setSelection(i3);
                if (t0Var.getOnItemClickListener() != null) {
                    t0Var.performItemClick(view, i3, q0Var.C.getItemId(i3));
                }
                q0Var.dismiss();
                break;
            case 1:
                ((SearchView) this.b).n(i3);
                break;
            default:
                u1.o oVar = (u1.o) this.b;
                c2 c2Var = oVar.f3300e;
                if (i3 < 0) {
                    item = !c2Var.f2012y.isShowing() ? null : c2Var.f1991c.getSelectedItem();
                } else {
                    item = oVar.getAdapter().getItem(i3);
                }
                u1.o.a(oVar, item);
                AdapterView.OnItemClickListener onItemClickListener = oVar.getOnItemClickListener();
                if (onItemClickListener != null) {
                    if (view == null || i3 < 0) {
                        view = !c2Var.f2012y.isShowing() ? null : c2Var.f1991c.getSelectedView();
                        i3 = !c2Var.f2012y.isShowing() ? -1 : c2Var.f1991c.getSelectedItemPosition();
                        j3 = !c2Var.f2012y.isShowing() ? Long.MIN_VALUE : c2Var.f1991c.getSelectedItemId();
                    }
                    onItemClickListener.onItemClick(c2Var.f1991c, view, i3, j3);
                }
                c2Var.dismiss();
                break;
        }
    }
}
