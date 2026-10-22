package a2;

import a1.b;
import h2.l;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements Comparator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ l[] f61a;

    public /* synthetic */ a(l[] lVarArr) {
        this.f61a = lVarArr;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        for (l lVar : this.f61a) {
            int iQ = b.q((Comparable) lVar.c(obj), (Comparable) lVar.c(obj2));
            if (iQ != 0) {
                return iQ;
            }
        }
        return 0;
    }
}
