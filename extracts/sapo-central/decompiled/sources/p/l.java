package p;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public o f2668a;
    public ArrayList b;

    public static long a(f fVar, long j3) {
        o oVar = fVar.f2657d;
        ArrayList arrayList = fVar.f2663k;
        if (oVar instanceof j) {
            return j3;
        }
        int size = arrayList.size();
        long jMin = j3;
        for (int i3 = 0; i3 < size; i3++) {
            d dVar = (d) arrayList.get(i3);
            if (dVar instanceof f) {
                f fVar2 = (f) dVar;
                if (fVar2.f2657d != oVar) {
                    jMin = Math.min(jMin, a(fVar2, ((long) fVar2.f) + j3));
                }
            }
        }
        f fVar3 = oVar.f2681i;
        f fVar4 = oVar.f2680h;
        if (fVar != fVar3) {
            return jMin;
        }
        long j4 = j3 - oVar.j();
        return Math.min(Math.min(jMin, a(fVar4, j4)), j4 - ((long) fVar4.f));
    }

    public static long b(f fVar, long j3) {
        o oVar = fVar.f2657d;
        ArrayList arrayList = fVar.f2663k;
        if (oVar instanceof j) {
            return j3;
        }
        int size = arrayList.size();
        long jMax = j3;
        for (int i3 = 0; i3 < size; i3++) {
            d dVar = (d) arrayList.get(i3);
            if (dVar instanceof f) {
                f fVar2 = (f) dVar;
                if (fVar2.f2657d != oVar) {
                    jMax = Math.max(jMax, b(fVar2, ((long) fVar2.f) + j3));
                }
            }
        }
        f fVar3 = oVar.f2680h;
        f fVar4 = oVar.f2681i;
        if (fVar != fVar3) {
            return jMax;
        }
        long j4 = oVar.j() + j3;
        return Math.max(Math.max(jMax, b(fVar4, j4)), j4 - ((long) fVar4.f));
    }
}
