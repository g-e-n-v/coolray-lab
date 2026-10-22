package p;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class j extends o {
    @Override // p.d
    public final void a(d dVar) {
        o.a aVar = (o.a) this.b;
        int i3 = aVar.f2539l0;
        f fVar = this.f2680h;
        ArrayList arrayList = fVar.f2664l;
        int size = arrayList.size();
        int i4 = 0;
        int i5 = -1;
        int i6 = 0;
        while (i6 < size) {
            Object obj = arrayList.get(i6);
            i6++;
            int i7 = ((f) obj).f2659g;
            if (i5 == -1 || i7 < i5) {
                i5 = i7;
            }
            if (i4 < i7) {
                i4 = i7;
            }
        }
        if (i3 == 0 || i3 == 2) {
            fVar.d(i5 + aVar.f2541n0);
        } else {
            fVar.d(i4 + aVar.f2541n0);
        }
    }

    @Override // p.o
    public final void d() {
        o.d dVar = this.b;
        if (dVar instanceof o.a) {
            f fVar = this.f2680h;
            fVar.b = true;
            ArrayList arrayList = fVar.f2664l;
            o.a aVar = (o.a) dVar;
            int i3 = aVar.f2539l0;
            boolean z2 = aVar.f2540m0;
            int i4 = 0;
            if (i3 == 0) {
                fVar.f2658e = 4;
                while (i4 < aVar.f2538k0) {
                    o.d dVar2 = aVar.f2537j0[i4];
                    if (z2 || dVar2.Z != 8) {
                        f fVar2 = dVar2.f2570d.f2680h;
                        fVar2.f2663k.add(fVar);
                        arrayList.add(fVar2);
                    }
                    i4++;
                }
                m(this.b.f2570d.f2680h);
                m(this.b.f2570d.f2681i);
                return;
            }
            if (i3 == 1) {
                fVar.f2658e = 5;
                while (i4 < aVar.f2538k0) {
                    o.d dVar3 = aVar.f2537j0[i4];
                    if (z2 || dVar3.Z != 8) {
                        f fVar3 = dVar3.f2570d.f2681i;
                        fVar3.f2663k.add(fVar);
                        arrayList.add(fVar3);
                    }
                    i4++;
                }
                m(this.b.f2570d.f2680h);
                m(this.b.f2570d.f2681i);
                return;
            }
            if (i3 == 2) {
                fVar.f2658e = 6;
                while (i4 < aVar.f2538k0) {
                    o.d dVar4 = aVar.f2537j0[i4];
                    if (z2 || dVar4.Z != 8) {
                        f fVar4 = dVar4.f2572e.f2680h;
                        fVar4.f2663k.add(fVar);
                        arrayList.add(fVar4);
                    }
                    i4++;
                }
                m(this.b.f2572e.f2680h);
                m(this.b.f2572e.f2681i);
                return;
            }
            if (i3 != 3) {
                return;
            }
            fVar.f2658e = 7;
            while (i4 < aVar.f2538k0) {
                o.d dVar5 = aVar.f2537j0[i4];
                if (z2 || dVar5.Z != 8) {
                    f fVar5 = dVar5.f2572e.f2681i;
                    fVar5.f2663k.add(fVar);
                    arrayList.add(fVar5);
                }
                i4++;
            }
            m(this.b.f2572e.f2680h);
            m(this.b.f2572e.f2681i);
        }
    }

    @Override // p.o
    public final void e() {
        o.d dVar = this.b;
        if (dVar instanceof o.a) {
            int i3 = ((o.a) dVar).f2539l0;
            f fVar = this.f2680h;
            if (i3 == 0 || i3 == 1) {
                dVar.R = fVar.f2659g;
            } else {
                dVar.S = fVar.f2659g;
            }
        }
    }

    @Override // p.o
    public final void f() {
        this.f2676c = null;
        this.f2680h.c();
    }

    @Override // p.o
    public final boolean k() {
        return false;
    }

    public final void m(f fVar) {
        f fVar2 = this.f2680h;
        fVar2.f2663k.add(fVar);
        fVar.f2664l.add(fVar2);
    }
}
