package i;

import androidx.appcompat.widget.Toolbar;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d3 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2016a;
    public final /* synthetic */ Toolbar b;

    public /* synthetic */ d3(Toolbar toolbar, int i3) {
        this.f2016a = i3;
        this.b = toolbar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2016a) {
            case 0:
                g3 g3Var = this.b.L;
                h.o oVar = g3Var == null ? null : g3Var.b;
                if (oVar != null) {
                    oVar.collapseActionView();
                }
                break;
            default:
                this.b.m();
                break;
        }
    }
}
