package n2;

import h2.l;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class d implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f f2530a;
    public final boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final l f2531c;

    public d(f fVar, boolean z2, l lVar) {
        this.f2530a = fVar;
        this.b = z2;
        this.f2531c = lVar;
    }

    @Override // n2.f
    public final Iterator iterator() {
        return new b(this);
    }
}
