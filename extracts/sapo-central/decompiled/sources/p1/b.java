package p1;

import android.graphics.Typeface;

/* JADX INFO: loaded from: classes.dex */
public final class b extends u.b {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ k1.a f2687h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ d f2688i;

    public b(d dVar, k1.a aVar) {
        this.f2688i = dVar;
        this.f2687h = aVar;
    }

    @Override // u.b
    public final void d(int i3) {
        this.f2688i.f2700k = true;
        this.f2687h.K(i3);
    }

    @Override // u.b
    public final void e(Typeface typeface) {
        d dVar = this.f2688i;
        dVar.f2701l = Typeface.create(typeface, dVar.f2693c);
        dVar.f2700k = true;
        this.f2687h.L(dVar.f2701l, false);
    }
}
