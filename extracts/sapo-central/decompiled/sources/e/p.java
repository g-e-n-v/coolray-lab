package e;

import android.view.ViewGroup;
import c0.p0;
import c0.w0;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class p implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1655a;
    public final /* synthetic */ y b;

    public /* synthetic */ p(y yVar, int i3) {
        this.f1655a = i3;
        this.b = yVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ViewGroup viewGroup;
        int i3 = this.f1655a;
        y yVar = this.b;
        switch (i3) {
            case 0:
                if ((yVar.Z & 1) != 0) {
                    yVar.B(0);
                }
                if ((yVar.Z & 4096) != 0) {
                    yVar.B(108);
                }
                yVar.Y = false;
                yVar.Z = 0;
                break;
            default:
                yVar.f1704w.showAtLocation(yVar.f1703v, 55, 0, 0);
                w0 w0Var = yVar.f1706y;
                if (w0Var != null) {
                    w0Var.b();
                }
                if (yVar.f1707z && (viewGroup = yVar.A) != null) {
                    WeakHashMap weakHashMap = p0.f727a;
                    if (c0.c0.c(viewGroup)) {
                        yVar.f1703v.setAlpha(0.0f);
                        w0 w0VarA = p0.a(yVar.f1703v);
                        w0VarA.a(1.0f);
                        yVar.f1706y = w0VarA;
                        w0VarA.d(new r(0, this));
                    }
                }
                yVar.f1703v.setAlpha(1.0f);
                yVar.f1703v.setVisibility(0);
                break;
        }
    }
}
