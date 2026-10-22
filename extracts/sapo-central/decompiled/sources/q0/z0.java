package q0;

import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public final class z0 extends l0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f3074a = false;
    public final /* synthetic */ x b;

    public z0(x xVar) {
        this.b = xVar;
    }

    @Override // q0.l0
    public final void a(RecyclerView recyclerView, int i3) {
        if (i3 == 0 && this.f3074a) {
            this.f3074a = false;
            this.b.f();
        }
    }

    @Override // q0.l0
    public final void b(RecyclerView recyclerView, int i3, int i4) {
        if (i3 == 0 && i4 == 0) {
            return;
        }
        this.f3074a = true;
    }
}
