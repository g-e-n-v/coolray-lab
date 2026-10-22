package i;

import androidx.appcompat.widget.SearchView;

/* JADX INFO: loaded from: classes.dex */
public final class p2 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2122a;
    public final /* synthetic */ SearchView b;

    public /* synthetic */ p2(SearchView searchView, int i3) {
        this.f2122a = i3;
        this.b = searchView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2122a) {
            case 0:
                this.b.s();
                break;
            default:
                g0.c cVar = this.b.O;
                if (cVar instanceof y2) {
                    cVar.b(null);
                }
                break;
        }
    }
}
