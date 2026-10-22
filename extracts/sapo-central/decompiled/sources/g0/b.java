package g0;

import android.database.DataSetObserver;
import i.c2;
import i.y2;

/* JADX INFO: loaded from: classes.dex */
public final class b extends DataSetObserver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1792a;
    public final /* synthetic */ Object b;

    public /* synthetic */ b(int i3, Object obj) {
        this.f1792a = i3;
        this.b = obj;
    }

    @Override // android.database.DataSetObserver
    public final void onChanged() {
        switch (this.f1792a) {
            case 0:
                y2 y2Var = (y2) this.b;
                y2Var.f1793a = true;
                y2Var.notifyDataSetChanged();
                break;
            default:
                c2 c2Var = (c2) this.b;
                if (c2Var.f2012y.isShowing()) {
                    c2Var.d();
                }
                break;
        }
    }

    @Override // android.database.DataSetObserver
    public final void onInvalidated() {
        switch (this.f1792a) {
            case 0:
                y2 y2Var = (y2) this.b;
                y2Var.f1793a = false;
                y2Var.notifyDataSetInvalidated();
                break;
            default:
                ((c2) this.b).dismiss();
                break;
        }
    }
}
