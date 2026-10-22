package n2;

import h2.l;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import w0.zf;
import y1.m;

/* JADX INFO: loaded from: classes.dex */
public final class c implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2528a;
    public final f b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f2529c;

    public /* synthetic */ c(f fVar, Object obj, int i3) {
        this.f2528a = i3;
        this.b = fVar;
        this.f2529c = obj;
    }

    @Override // n2.f
    public final Iterator iterator() {
        switch (this.f2528a) {
            case 0:
                return new b(new b((d) this.b), (zf) this.f2529c);
            case 1:
                c cVar = (c) this.b;
                ArrayList arrayList = new ArrayList();
                Iterator it = cVar.b.iterator();
                while (it.hasNext()) {
                    arrayList.add(((l) cVar.f2529c).c(it.next()));
                }
                m.Y(arrayList, (Comparator) this.f2529c);
                return arrayList.iterator();
            default:
                return new k(this);
        }
    }
}
