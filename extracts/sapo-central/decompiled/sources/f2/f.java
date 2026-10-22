package f2;

import java.util.Iterator;
import java.util.List;
import o2.g;

/* JADX INFO: loaded from: classes.dex */
public final class f implements n2.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1742a;
    public final Object b;

    public /* synthetic */ f(int i3, Object obj) {
        this.f1742a = i3;
        this.b = obj;
    }

    @Override // n2.f
    public final Iterator iterator() {
        switch (this.f1742a) {
            case 0:
                return new e(this);
            case 1:
                return new n2.e(this);
            case 2:
                return (Iterator) this.b;
            default:
                return ((List) this.b).iterator();
        }
    }

    public f(o2.f fVar) {
        this.f1742a = 1;
        g gVar = g.f2633i;
        this.b = fVar;
    }
}
