package i;

import android.view.MenuItem;
import androidx.appcompat.widget.Toolbar;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class e3 implements m, h.k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Toolbar f2018a;

    public /* synthetic */ e3(Toolbar toolbar) {
        this.f2018a = toolbar;
    }

    @Override // h.k
    public boolean a(h.m mVar, MenuItem menuItem) {
        this.f2018a.getClass();
        return false;
    }

    @Override // h.k
    public void f(h.m mVar) {
        Toolbar toolbar = this.f2018a;
        j jVar = toolbar.f220a.f183t;
        if (jVar == null || !jVar.f()) {
            Iterator it = ((CopyOnWriteArrayList) toolbar.G.b).iterator();
            if (it.hasNext()) {
                it.next().getClass();
                throw new ClassCastException();
            }
        }
    }
}
