package i;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class h implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f f2033a;
    public final /* synthetic */ j b;

    public h(j jVar, f fVar) {
        this.b = jVar;
        this.f2033a = fVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        h.k kVar;
        j jVar = this.b;
        h.m mVar = jVar.f2048c;
        if (mVar != null && (kVar = mVar.f1889e) != null) {
            kVar.f(mVar);
        }
        View view = (View) jVar.f2052h;
        if (view != null && view.getWindowToken() != null) {
            f fVar = this.f2033a;
            if (fVar.b()) {
                jVar.f2063s = fVar;
            } else if (fVar.f1945e != null) {
                fVar.d(0, 0, false, false);
                jVar.f2063s = fVar;
            }
        }
        jVar.f2065u = null;
    }
}
