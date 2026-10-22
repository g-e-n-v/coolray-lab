package p1;

import android.graphics.Typeface;
import androidx.emoji2.text.m;

/* JADX INFO: loaded from: classes.dex */
public final class a extends k1.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Typeface f2684c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final m f2685d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f2686e;

    public a(m mVar, Typeface typeface) {
        this.f2684c = typeface;
        this.f2685d = mVar;
    }

    @Override // k1.a
    public final void K(int i3) {
        if (this.f2686e) {
            return;
        }
        n1.b bVar = (n1.b) this.f2685d.b;
        a aVar = bVar.f2503v;
        if (aVar != null) {
            aVar.f2686e = true;
        }
        Typeface typeface = bVar.f2500s;
        Typeface typeface2 = this.f2684c;
        if (typeface != typeface2) {
            bVar.f2500s = typeface2;
            bVar.g();
        }
    }

    @Override // k1.a
    public final void L(Typeface typeface, boolean z2) {
        if (this.f2686e) {
            return;
        }
        n1.b bVar = (n1.b) this.f2685d.b;
        a aVar = bVar.f2503v;
        if (aVar != null) {
            aVar.f2686e = true;
        }
        if (bVar.f2500s != typeface) {
            bVar.f2500s = typeface;
            bVar.g();
        }
    }
}
