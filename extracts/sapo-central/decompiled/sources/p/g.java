package p;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class g extends f {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f2665m;

    public g(o oVar) {
        super(oVar);
        if (oVar instanceof k) {
            this.f2658e = 2;
        } else {
            this.f2658e = 3;
        }
    }

    @Override // p.f
    public final void d(int i3) {
        if (this.f2662j) {
            return;
        }
        this.f2662j = true;
        this.f2659g = i3;
        ArrayList arrayList = this.f2663k;
        int size = arrayList.size();
        int i4 = 0;
        while (i4 < size) {
            Object obj = arrayList.get(i4);
            i4++;
            d dVar = (d) obj;
            dVar.a(dVar);
        }
    }
}
