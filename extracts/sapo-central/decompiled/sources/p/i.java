package p;

/* JADX INFO: loaded from: classes.dex */
public final class i extends o {
    @Override // p.d
    public final void a(d dVar) {
        f fVar = this.f2680h;
        if (fVar.f2656c && !fVar.f2662j) {
            fVar.d((int) ((((f) fVar.f2664l.get(0)).f2659g * ((o.f) this.b).f2612j0) + 0.5f));
        }
    }

    @Override // p.o
    public final void d() {
        o.d dVar = this.b;
        o.f fVar = (o.f) dVar;
        int i3 = fVar.f2613k0;
        int i4 = fVar.f2614l0;
        int i5 = fVar.f2616n0;
        f fVar2 = this.f2680h;
        if (i5 == 1) {
            if (i3 != -1) {
                fVar2.f2664l.add(dVar.M.f2570d.f2680h);
                this.b.M.f2570d.f2680h.f2663k.add(fVar2);
                fVar2.f = i3;
            } else if (i4 != -1) {
                fVar2.f2664l.add(dVar.M.f2570d.f2681i);
                this.b.M.f2570d.f2681i.f2663k.add(fVar2);
                fVar2.f = -i4;
            } else {
                fVar2.b = true;
                fVar2.f2664l.add(dVar.M.f2570d.f2681i);
                this.b.M.f2570d.f2681i.f2663k.add(fVar2);
            }
            m(this.b.f2570d.f2680h);
            m(this.b.f2570d.f2681i);
            return;
        }
        if (i3 != -1) {
            fVar2.f2664l.add(dVar.M.f2572e.f2680h);
            this.b.M.f2572e.f2680h.f2663k.add(fVar2);
            fVar2.f = i3;
        } else if (i4 != -1) {
            fVar2.f2664l.add(dVar.M.f2572e.f2681i);
            this.b.M.f2572e.f2681i.f2663k.add(fVar2);
            fVar2.f = -i4;
        } else {
            fVar2.b = true;
            fVar2.f2664l.add(dVar.M.f2572e.f2681i);
            this.b.M.f2572e.f2681i.f2663k.add(fVar2);
        }
        m(this.b.f2572e.f2680h);
        m(this.b.f2572e.f2681i);
    }

    @Override // p.o
    public final void e() {
        o.d dVar = this.b;
        int i3 = ((o.f) dVar).f2616n0;
        f fVar = this.f2680h;
        if (i3 == 1) {
            dVar.R = fVar.f2659g;
        } else {
            dVar.S = fVar.f2659g;
        }
    }

    @Override // p.o
    public final void f() {
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
