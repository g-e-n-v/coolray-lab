package p;

import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class n {
    public static int f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ArrayList f2671a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2672c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ArrayList f2673d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2674e;

    public final void a(ArrayList arrayList) {
        int size = this.f2671a.size();
        if (this.f2674e != -1 && size > 0) {
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                n nVar = (n) arrayList.get(i3);
                if (this.f2674e == nVar.b) {
                    c(this.f2672c, nVar);
                }
            }
        }
        if (size == 0) {
            arrayList.remove(this);
        }
    }

    public final int b(n.c cVar, int i3) {
        int iN;
        int iN2;
        ArrayList arrayList = this.f2671a;
        if (arrayList.size() == 0) {
            return 0;
        }
        o.e eVar = (o.e) ((o.d) arrayList.get(0)).M;
        cVar.t();
        eVar.b(cVar, false);
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            ((o.d) arrayList.get(i4)).b(cVar, false);
        }
        if (i3 == 0 && eVar.f2606r0 > 0) {
            o.g.a(eVar, cVar, arrayList, 0);
        }
        if (i3 == 1 && eVar.f2607s0 > 0) {
            o.g.a(eVar, cVar, arrayList, 1);
        }
        try {
            cVar.p();
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        this.f2673d = new ArrayList();
        for (int i5 = 0; i5 < arrayList.size(); i5++) {
            o.d dVar = (o.d) arrayList.get(i5);
            s1.e eVar2 = new s1.e();
            new WeakReference(dVar);
            n.c.n(dVar.B);
            n.c.n(dVar.C);
            n.c.n(dVar.D);
            n.c.n(dVar.E);
            n.c.n(dVar.F);
            this.f2673d.add(eVar2);
        }
        if (i3 == 0) {
            iN = n.c.n(eVar.B);
            iN2 = n.c.n(eVar.D);
            cVar.t();
        } else {
            iN = n.c.n(eVar.C);
            iN2 = n.c.n(eVar.E);
            cVar.t();
        }
        return iN2 - iN;
    }

    public final void c(int i3, n nVar) {
        int i4 = nVar.b;
        ArrayList arrayList = this.f2671a;
        int size = arrayList.size();
        int i5 = 0;
        while (i5 < size) {
            Object obj = arrayList.get(i5);
            i5++;
            o.d dVar = (o.d) obj;
            ArrayList arrayList2 = nVar.f2671a;
            if (!arrayList2.contains(dVar)) {
                arrayList2.add(dVar);
            }
            if (i3 == 0) {
                dVar.f2576g0 = i4;
            } else {
                dVar.f2578h0 = i4;
            }
        }
        this.f2674e = i4;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        int i3 = this.f2672c;
        if (i3 == 0) {
            str = "Horizontal";
        } else if (i3 == 1) {
            str = "Vertical";
        } else {
            str = i3 == 2 ? "Both" : "Unknown";
        }
        sb.append(str);
        sb.append(" [");
        sb.append(this.b);
        sb.append("] <");
        String string = sb.toString();
        ArrayList arrayList = this.f2671a;
        int size = arrayList.size();
        int i4 = 0;
        while (i4 < size) {
            Object obj = arrayList.get(i4);
            i4++;
            string = string + " " + ((o.d) obj).f2566a0;
        }
        return n.g.a(string, " >");
    }
}
