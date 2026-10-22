package q0;

import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class p implements Runnable {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final ThreadLocal f2979e = new ThreadLocal();
    public static final n.d f = new n.d(1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ArrayList f2980a;
    public long b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f2981c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ArrayList f2982d;

    public static w0 c(RecyclerView recyclerView, int i3, long j3) {
        int iQ = recyclerView.f622e.q();
        for (int i4 = 0; i4 < iQ; i4++) {
            w0 w0VarI = RecyclerView.I(recyclerView.f622e.p(i4));
            if (w0VarI.f3049c == i3 && !w0VarI.f()) {
                return null;
            }
        }
        o0 o0Var = recyclerView.b;
        try {
            recyclerView.P();
            w0 w0VarI2 = o0Var.i(i3, j3);
            if (w0VarI2 != null) {
                if (!w0VarI2.e() || w0VarI2.f()) {
                    o0Var.a(w0VarI2, false);
                } else {
                    o0Var.f(w0VarI2.f3048a);
                }
            }
            return w0VarI2;
        } finally {
            recyclerView.Q(false);
        }
    }

    public final void a(RecyclerView recyclerView, int i3, int i4) {
        if (recyclerView.f643p && this.b == 0) {
            this.b = recyclerView.getNanoTime();
            recyclerView.post(this);
        }
        n nVar = recyclerView.f617b0;
        nVar.f2965a = i3;
        nVar.b = i4;
    }

    /* JADX WARN: Code duplicated, block: B:47:0x00cd  */
    public final void b(long j3) {
        o oVar;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        o oVar2;
        ArrayList arrayList = this.f2982d;
        ArrayList arrayList2 = this.f2980a;
        int size = arrayList2.size();
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            RecyclerView recyclerView3 = (RecyclerView) arrayList2.get(i4);
            int windowVisibility = recyclerView3.getWindowVisibility();
            n nVar = recyclerView3.f617b0;
            if (windowVisibility == 0) {
                nVar.b(recyclerView3, false);
                i3 += nVar.f2966c;
            }
        }
        arrayList.ensureCapacity(i3);
        int i5 = 0;
        for (int i6 = 0; i6 < size; i6++) {
            RecyclerView recyclerView4 = (RecyclerView) arrayList2.get(i6);
            if (recyclerView4.getWindowVisibility() == 0) {
                n nVar2 = recyclerView4.f617b0;
                int iAbs = Math.abs(nVar2.b) + Math.abs(nVar2.f2965a);
                for (int i7 = 0; i7 < nVar2.f2966c * 2; i7 += 2) {
                    if (i5 >= arrayList.size()) {
                        oVar2 = new o();
                        arrayList.add(oVar2);
                    } else {
                        oVar2 = (o) arrayList.get(i5);
                    }
                    int[] iArr = (int[]) nVar2.f2967d;
                    int i8 = iArr[i7 + 1];
                    oVar2.f2969a = i8 <= iAbs;
                    oVar2.b = iAbs;
                    oVar2.f2970c = i8;
                    oVar2.f2971d = recyclerView4;
                    oVar2.f2972e = iArr[i7];
                    i5++;
                }
            }
        }
        Collections.sort(arrayList, f);
        for (int i9 = 0; i9 < arrayList.size() && (recyclerView = (oVar = (o) arrayList.get(i9)).f2971d) != null; i9++) {
            w0 w0VarC = c(recyclerView, oVar.f2972e, oVar.f2969a ? Long.MAX_VALUE : j3);
            if (w0VarC != null && w0VarC.b != null && w0VarC.e() && !w0VarC.f() && (recyclerView2 = (RecyclerView) w0VarC.b.get()) != null) {
                if (recyclerView2.f655y && recyclerView2.f622e.q() != 0) {
                    o0 o0Var = recyclerView2.b;
                    e0 e0Var = recyclerView2.H;
                    if (e0Var != null) {
                        e0Var.e();
                    }
                    i0 i0Var = recyclerView2.f635l;
                    if (i0Var != null) {
                        i0Var.b0(o0Var);
                        recyclerView2.f635l.c0(o0Var);
                    }
                    o0Var.f2973a.clear();
                    o0Var.d();
                }
                n nVar3 = recyclerView2.f617b0;
                nVar3.b(recyclerView2, true);
                if (nVar3.f2966c != 0) {
                    try {
                        int i10 = y.h.f4654a;
                        y.g.a("RV Nested Prefetch");
                        t0 t0Var = recyclerView2.f619c0;
                        a0 a0Var = recyclerView2.f633k;
                        t0Var.f3006d = 1;
                        t0Var.f3007e = a0Var.a();
                        t0Var.f3008g = false;
                        t0Var.f3009h = false;
                        t0Var.f3010i = false;
                        for (int i11 = 0; i11 < nVar3.f2966c * 2; i11 += 2) {
                            c(recyclerView2, ((int[]) nVar3.f2967d)[i11], j3);
                        }
                        y.g.b();
                    } catch (Throwable th) {
                        int i12 = y.h.f4654a;
                        y.g.b();
                        throw th;
                    }
                }
            }
            oVar.f2969a = false;
            oVar.b = 0;
            oVar.f2970c = 0;
            oVar.f2971d = null;
            oVar.f2972e = 0;
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        ArrayList arrayList = this.f2980a;
        try {
            int i3 = y.h.f4654a;
            y.g.a("RV Prefetch");
            if (!arrayList.isEmpty()) {
                int size = arrayList.size();
                long jMax = 0;
                for (int i4 = 0; i4 < size; i4++) {
                    RecyclerView recyclerView = (RecyclerView) arrayList.get(i4);
                    if (recyclerView.getWindowVisibility() == 0) {
                        jMax = Math.max(recyclerView.getDrawingTime(), jMax);
                    }
                }
                if (jMax != 0) {
                    b(TimeUnit.MILLISECONDS.toNanos(jMax) + this.f2981c);
                }
            }
            this.b = 0L;
        } finally {
            this.b = 0L;
            int i5 = y.h.f4654a;
            y.g.b();
        }
    }
}
