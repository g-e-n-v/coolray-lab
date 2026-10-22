package q0;

import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import androidx.recyclerview.widget.RecyclerView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class o0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f2973a;
    public ArrayList b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f2974c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List f2975d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2976e;
    public int f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public n0 f2977g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f2978h;

    public o0(RecyclerView recyclerView) {
        this.f2978h = recyclerView;
        ArrayList arrayList = new ArrayList();
        this.f2973a = arrayList;
        this.b = null;
        this.f2974c = new ArrayList();
        this.f2975d = Collections.unmodifiableList(arrayList);
        this.f2976e = 2;
        this.f = 2;
    }

    public final void a(w0 w0Var, boolean z2) {
        RecyclerView.j(w0Var);
        View view = w0Var.f3048a;
        RecyclerView recyclerView = this.f2978h;
        y0 y0Var = recyclerView.f632j0;
        if (y0Var != null) {
            x0 x0Var = y0Var.f3072e;
            c0.p0.i(view, x0Var != null ? (c0.c) x0Var.f3069e.remove(view) : null);
        }
        if (z2 && recyclerView.f619c0 != null) {
            recyclerView.f.E(w0Var);
        }
        w0Var.f3063r = null;
        n0 n0VarC = c();
        n0VarC.getClass();
        int i3 = w0Var.f;
        ArrayList arrayList = n0VarC.a(i3).f2962a;
        if (((m0) n0VarC.f2968a.get(i3)).b <= arrayList.size()) {
            return;
        }
        w0Var.m();
        arrayList.add(w0Var);
    }

    public final int b(int i3) {
        RecyclerView recyclerView = this.f2978h;
        if (i3 >= 0 && i3 < recyclerView.f619c0.b()) {
            return !recyclerView.f619c0.f3008g ? i3 : recyclerView.f620d.e(i3, 0);
        }
        StringBuilder sbK = androidx.activity.result.b.k("invalid position ", i3, ". State item count is ");
        sbK.append(recyclerView.f619c0.b());
        sbK.append(recyclerView.y());
        throw new IndexOutOfBoundsException(sbK.toString());
    }

    public final n0 c() {
        if (this.f2977g == null) {
            n0 n0Var = new n0();
            n0Var.f2968a = new SparseArray();
            n0Var.b = 0;
            this.f2977g = n0Var;
        }
        return this.f2977g;
    }

    public final void d() {
        ArrayList arrayList = this.f2974c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            e(size);
        }
        arrayList.clear();
        int[] iArr = RecyclerView.f613s0;
        n nVar = this.f2978h.f617b0;
        int[] iArr2 = (int[]) nVar.f2967d;
        if (iArr2 != null) {
            Arrays.fill(iArr2, -1);
        }
        nVar.f2966c = 0;
    }

    public final void e(int i3) {
        ArrayList arrayList = this.f2974c;
        a((w0) arrayList.get(i3), true);
        arrayList.remove(i3);
    }

    public final void f(View view) {
        w0 w0VarI = RecyclerView.I(view);
        boolean zJ = w0VarI.j();
        RecyclerView recyclerView = this.f2978h;
        if (zJ) {
            recyclerView.removeDetachedView(view, false);
        }
        if (w0VarI.i()) {
            w0VarI.f3059n.j(w0VarI);
        } else if (w0VarI.p()) {
            w0VarI.f3055j &= -33;
        }
        g(w0VarI);
        if (recyclerView.H == null || w0VarI.g()) {
            return;
        }
        recyclerView.H.d(w0VarI);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0032  */
    /* JADX WARN: Code duplicated, block: B:40:0x0078  */
    /* JADX WARN: Code duplicated, block: B:42:0x0086  */
    /* JADX WARN: Code duplicated, block: B:44:0x008d  */
    /* JADX WARN: Code duplicated, block: B:47:0x0098 A[LOOP:2: B:43:0x008b->B:47:0x0098, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:74:0x009b A[EDGE_INSN: B:74:0x009b->B:48:0x009b BREAK  A[LOOP:1: B:39:0x0076->B:46:0x0095], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:75:0x009b A[EDGE_INSN: B:75:0x009b->B:48:0x009b BREAK  A[LOOP:1: B:39:0x0076->B:46:0x0095, LOOP_LABEL: LOOP:1: B:39:0x0076->B:46:0x0095], SYNTHETIC] */
    public final void g(w0 w0Var) {
        boolean z2;
        boolean z3;
        int i3;
        int i4;
        int i5;
        int i6;
        RecyclerView recyclerView = this.f2978h;
        n nVar = recyclerView.f617b0;
        boolean zI = w0Var.i();
        View view = w0Var.f3048a;
        boolean z4 = false;
        boolean z5 = true;
        if (zI || view.getParent() != null) {
            StringBuilder sb = new StringBuilder("Scrapped or attached views may not be recycled. isScrap:");
            sb.append(w0Var.i());
            sb.append(" isAttached:");
            sb.append(view.getParent() != null);
            sb.append(recyclerView.y());
            throw new IllegalArgumentException(sb.toString());
        }
        if (w0Var.j()) {
            throw new IllegalArgumentException("Tmp detached view should be removed from RecyclerView before it can be recycled: " + w0Var + recyclerView.y());
        }
        if (w0Var.o()) {
            throw new IllegalArgumentException("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle." + recyclerView.y());
        }
        if ((w0Var.f3055j & 16) == 0) {
            WeakHashMap weakHashMap = c0.p0.f727a;
            if (c0.a0.i(view)) {
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            z2 = false;
        }
        if (w0Var.g()) {
            if (this.f <= 0 || (w0Var.f3055j & 526) != 0) {
                z3 = false;
            } else {
                ArrayList arrayList = this.f2974c;
                int size = arrayList.size();
                if (size >= this.f && size > 0) {
                    e(0);
                    size--;
                }
                int[] iArr = RecyclerView.f613s0;
                if (size > 0) {
                    int i7 = w0Var.f3049c;
                    if (((int[]) nVar.f2967d) != null) {
                        int i8 = nVar.f2966c * 2;
                        int i9 = 0;
                        while (true) {
                            if (i9 >= i8) {
                                i3 = size - 1;
                                loop1: while (i3 >= 0) {
                                    i4 = ((w0) arrayList.get(i3)).f3049c;
                                    if (((int[]) nVar.f2967d) != null) {
                                        break;
                                    }
                                    i5 = nVar.f2966c * 2;
                                    i6 = 0;
                                    while (true) {
                                        if (i6 < i5) {
                                            break loop1;
                                        } else if (((int[]) nVar.f2967d)[i6] == i4) {
                                            break;
                                        } else {
                                            i6 += 2;
                                        }
                                    }
                                    i3--;
                                }
                                size = i3 + 1;
                            } else if (((int[]) nVar.f2967d)[i9] != i7) {
                                i9 += 2;
                            }
                        }
                    } else {
                        i3 = size - 1;
                        loop1: while (i3 >= 0) {
                            i4 = ((w0) arrayList.get(i3)).f3049c;
                            if (((int[]) nVar.f2967d) != null) {
                                break;
                                break;
                            }
                            i5 = nVar.f2966c * 2;
                            i6 = 0;
                            while (true) {
                                if (i6 < i5) {
                                    break loop1;
                                    break loop1;
                                } else if (((int[]) nVar.f2967d)[i6] == i4) {
                                    break;
                                } else {
                                    i6 += 2;
                                }
                            }
                            i3--;
                        }
                        size = i3 + 1;
                    }
                }
                arrayList.add(size, w0Var);
                z3 = true;
            }
            if (z3) {
                z5 = false;
            } else {
                a(w0Var, true);
            }
            z4 = z3;
        } else {
            z5 = false;
        }
        recyclerView.f.E(w0Var);
        if (z4 || z5 || !z2) {
            return;
        }
        w0Var.f3063r = null;
    }

    public final void h(View view) {
        e0 e0Var;
        w0 w0VarI = RecyclerView.I(view);
        int i3 = w0VarI.f3055j & 12;
        RecyclerView recyclerView = this.f2978h;
        if (i3 == 0 && w0VarI.k() && (e0Var = recyclerView.H) != null) {
            j jVar = (j) e0Var;
            if (w0VarI.c().isEmpty() && jVar.f2921g && !w0VarI.f()) {
                if (this.b == null) {
                    this.b = new ArrayList();
                }
                w0VarI.f3059n = this;
                w0VarI.f3060o = true;
                this.b.add(w0VarI);
                return;
            }
        }
        if (w0VarI.f() && !w0VarI.h() && !recyclerView.f633k.b) {
            throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool." + recyclerView.y());
        }
        w0VarI.f3059n = this;
        w0VarI.f3060o = false;
        this.f2973a.add(w0VarI);
    }

    /* JADX WARN: Code duplicated, block: B:110:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:111:0x01d7  */
    /* JADX WARN: Code duplicated, block: B:178:0x0329 A[EDGE_INSN: B:178:0x0329->B:179:0x032b BREAK  A[LOOP:3: B:173:0x030f->B:177:0x0326]] */
    /* JADX WARN: Code duplicated, block: B:245:0x0445  */
    /* JADX WARN: Code duplicated, block: B:247:0x0457  */
    /* JADX WARN: Code duplicated, block: B:253:0x0473  */
    /* JADX WARN: Code duplicated, block: B:256:0x0492  */
    /* JADX WARN: Code duplicated, block: B:259:0x04a3  */
    /* JADX WARN: Code duplicated, block: B:263:0x04c0  */
    /* JADX WARN: Code duplicated, block: B:269:0x04d5  */
    /* JADX WARN: Code duplicated, block: B:271:0x04d8  */
    /* JADX WARN: Code duplicated, block: B:273:0x04e1  */
    /* JADX WARN: Code duplicated, block: B:277:0x04e9  */
    /* JADX WARN: Code duplicated, block: B:279:0x04ed  */
    /* JADX WARN: Code duplicated, block: B:282:0x04f4  */
    /* JADX WARN: Code duplicated, block: B:284:0x04f8  */
    /* JADX WARN: Code duplicated, block: B:285:0x04fe  */
    /* JADX WARN: Code duplicated, block: B:290:0x0511  */
    /* JADX WARN: Code duplicated, block: B:293:0x0516  */
    /* JADX WARN: Code duplicated, block: B:297:0x051f  */
    /* JADX WARN: Code duplicated, block: B:298:0x0529  */
    /* JADX WARN: Code duplicated, block: B:300:0x052f  */
    /* JADX WARN: Code duplicated, block: B:301:0x0539  */
    /* JADX WARN: Code duplicated, block: B:306:0x0543  */
    /* JADX WARN: Code duplicated, block: B:35:0x007b A[EDGE_INSN: B:35:0x007b->B:36:0x007c BREAK  A[LOOP:0: B:14:0x0023->B:20:0x003d]] */
    public final w0 i(int i3, long j3) {
        boolean z2;
        w0 w0VarD;
        boolean z3;
        c0.c cVar;
        long j4;
        long j5;
        int iE;
        int i4;
        a0 a0Var;
        ArrayList arrayList;
        ViewGroup.LayoutParams layoutParams;
        long nanoTime;
        long j6;
        AccessibilityManager accessibilityManager;
        boolean z4;
        boolean z5;
        boolean z6;
        y0 y0Var;
        x0 x0Var;
        View.AccessibilityDelegate accessibilityDelegateB;
        long j7;
        ViewGroup.LayoutParams layoutParams2;
        j0 j0Var;
        w0 w0Var;
        int i5;
        View view;
        a0 a0Var2;
        boolean z7;
        int size;
        int iE2;
        RecyclerView recyclerView = this.f2978h;
        t0 t0Var = recyclerView.f619c0;
        if (i3 < 0 || i3 >= t0Var.b()) {
            throw new IndexOutOfBoundsException("Invalid item position " + i3 + "(" + i3 + "). Item count:" + t0Var.b() + recyclerView.y());
        }
        if (t0Var.f3008g) {
            ArrayList arrayList2 = this.b;
            if (arrayList2 != null && (size = arrayList2.size()) != 0) {
                int i6 = 0;
                while (true) {
                    if (i6 >= size) {
                        if (recyclerView.f633k.b && (iE2 = recyclerView.f620d.e(i3, 0)) > 0 && iE2 < recyclerView.f633k.a()) {
                            long jB = recyclerView.f633k.b(iE2);
                            int i7 = 0;
                            while (true) {
                                if (i7 >= size) {
                                    w0VarD = null;
                                    break;
                                }
                                w0 w0Var2 = (w0) this.b.get(i7);
                                if (!w0Var2.p() && w0Var2.f3051e == jB) {
                                    w0Var2.a(32);
                                    w0VarD = w0Var2;
                                    break;
                                }
                                i7++;
                            }
                        } else {
                            w0VarD = null;
                            break;
                        }
                    } else {
                        w0VarD = (w0) this.b.get(i6);
                        if (!w0VarD.p() && w0VarD.b() == i3) {
                            w0VarD.a(32);
                            break;
                        }
                        i6++;
                    }
                }
            } else {
                w0VarD = null;
                break;
            }
            z2 = w0VarD != null;
        } else {
            z2 = false;
            w0VarD = null;
        }
        ArrayList arrayList3 = this.f2973a;
        ArrayList arrayList4 = this.f2974c;
        if (w0VarD == null) {
            int size2 = arrayList3.size();
            int i8 = 0;
            while (true) {
                if (i8 >= size2) {
                    ArrayList arrayList5 = (ArrayList) recyclerView.f622e.f414d;
                    int size3 = arrayList5.size();
                    int i9 = 0;
                    while (true) {
                        if (i9 >= size3) {
                            z3 = true;
                            view = null;
                            break;
                        }
                        view = (View) arrayList5.get(i9);
                        w0 w0VarI = RecyclerView.I(view);
                        z3 = true;
                        if (w0VarI.b() == i3 && !w0VarI.f() && !w0VarI.h()) {
                            break;
                        }
                        i9++;
                    }
                    if (view == null) {
                        int size4 = arrayList4.size();
                        int i10 = 0;
                        while (true) {
                            if (i10 >= size4) {
                                w0VarD = null;
                                break;
                            }
                            w0 w0Var3 = (w0) arrayList4.get(i10);
                            if (!w0Var3.f() && w0Var3.b() == i3 && !w0Var3.d()) {
                                arrayList4.remove(i10);
                                w0VarD = w0Var3;
                                break;
                            }
                            i10++;
                        }
                    } else {
                        w0 w0VarI2 = RecyclerView.I(view);
                        androidx.fragment.app.f fVar = recyclerView.f622e;
                        c cVar2 = (c) fVar.f413c;
                        int iIndexOfChild = ((z) fVar.b).f3073a.indexOfChild(view);
                        if (iIndexOfChild < 0) {
                            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
                        }
                        if (!cVar2.d(iIndexOfChild)) {
                            throw new RuntimeException("trying to unhide a view that was not hidden" + view);
                        }
                        cVar2.a(iIndexOfChild);
                        fVar.z(view);
                        androidx.fragment.app.f fVar2 = recyclerView.f622e;
                        c cVar3 = (c) fVar2.f413c;
                        int iIndexOfChild2 = ((z) fVar2.b).f3073a.indexOfChild(view);
                        int iB = (iIndexOfChild2 == -1 || cVar3.d(iIndexOfChild2)) ? -1 : iIndexOfChild2 - cVar3.b(iIndexOfChild2);
                        if (iB == -1) {
                            throw new IllegalStateException("layout index should not be -1 after unhiding a view:" + w0VarI2 + recyclerView.y());
                        }
                        recyclerView.f622e.d(iB);
                        h(view);
                        w0VarI2.a(8224);
                        w0VarD = w0VarI2;
                        break;
                    }
                } else {
                    w0 w0Var4 = (w0) arrayList3.get(i8);
                    if (!w0Var4.p() && w0Var4.b() == i3 && !w0Var4.f() && (t0Var.f3008g || !w0Var4.h())) {
                        w0Var4.a(32);
                        w0VarD = w0Var4;
                        z3 = true;
                        break;
                    }
                    i8++;
                }
            }
            if (w0VarD != null) {
                if (w0VarD.h()) {
                    z7 = t0Var.f3008g;
                } else {
                    int i11 = w0VarD.f3049c;
                    if (i11 < 0 || i11 >= recyclerView.f633k.a()) {
                        throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + w0VarD + recyclerView.y());
                    }
                    if (t0Var.f3008g) {
                        a0Var2 = recyclerView.f633k;
                        if (a0Var2.b) {
                        }
                        z7 = z3;
                    } else {
                        recyclerView.f633k.getClass();
                        if (w0VarD.f != 0) {
                            z7 = false;
                        } else {
                            a0Var2 = recyclerView.f633k;
                            if (a0Var2.b || w0VarD.f3051e == a0Var2.b(w0VarD.f3049c)) {
                                z7 = z3;
                            } else {
                                z7 = false;
                            }
                        }
                    }
                }
                if (z7) {
                    z2 = z3;
                } else {
                    w0VarD.a(4);
                    if (w0VarD.i()) {
                        recyclerView.removeDetachedView(w0VarD.f3048a, false);
                        w0VarD.f3059n.j(w0VarD);
                    } else if (w0VarD.p()) {
                        w0VarD.f3055j &= -33;
                    }
                    g(w0VarD);
                    w0VarD = null;
                }
            }
        } else {
            z3 = true;
        }
        if (w0VarD == null) {
            int iE3 = recyclerView.f620d.e(i3, 0);
            if (iE3 >= 0) {
                j4 = 3;
                if (iE3 < recyclerView.f633k.a()) {
                    recyclerView.f633k.getClass();
                    a0 a0Var3 = recyclerView.f633k;
                    if (a0Var3.b) {
                        long jB2 = a0Var3.b(iE3);
                        int size5 = arrayList3.size() - 1;
                        while (true) {
                            if (size5 < 0) {
                                i5 = iE3;
                                j5 = 4;
                                int size6 = arrayList4.size() - 1;
                                while (true) {
                                    if (size6 >= 0) {
                                        w0 w0Var5 = (w0) arrayList4.get(size6);
                                        if (w0Var5.f3051e != jB2 || w0Var5.d()) {
                                            size6--;
                                        } else {
                                            if (w0Var5.f == 0) {
                                                arrayList4.remove(size6);
                                                w0VarD = w0Var5;
                                                break;
                                            }
                                            e(size6);
                                        }
                                    }
                                    w0VarD = null;
                                    break;
                                }
                            }
                            j5 = 4;
                            w0 w0Var6 = (w0) arrayList3.get(size5);
                            i5 = iE3;
                            long j8 = w0Var6.f3051e;
                            View view2 = w0Var6.f3048a;
                            if (j8 == jB2 && !w0Var6.p()) {
                                if (w0Var6.f == 0) {
                                    w0Var6.a(32);
                                    if (w0Var6.h() && !t0Var.f3008g) {
                                        w0Var6.f3055j = (w0Var6.f3055j & (-15)) | 2;
                                    }
                                    w0VarD = w0Var6;
                                    break;
                                }
                                arrayList3.remove(size5);
                                recyclerView.removeDetachedView(view2, false);
                                w0 w0VarI3 = RecyclerView.I(view2);
                                w0VarI3.f3059n = null;
                                w0VarI3.f3060o = false;
                                w0VarI3.f3055j &= -33;
                                g(w0VarI3);
                            }
                            size5--;
                            iE3 = i5;
                        }
                        if (w0VarD != null) {
                            w0VarD.f3049c = i5;
                            z2 = z3;
                        }
                    } else {
                        j5 = 4;
                    }
                    if (w0VarD == null) {
                        m0 m0Var = (m0) c().f2968a.get(0);
                        if (m0Var == null) {
                            w0Var = null;
                            break;
                        }
                        ArrayList arrayList6 = m0Var.f2962a;
                        if (!arrayList6.isEmpty()) {
                            int size7 = arrayList6.size() - 1;
                            while (true) {
                                if (size7 < 0) {
                                    w0Var = null;
                                    break;
                                }
                                if (!((w0) arrayList6.get(size7)).d()) {
                                    w0Var = (w0) arrayList6.remove(size7);
                                    break;
                                }
                                size7--;
                            }
                        } else {
                            w0Var = null;
                            break;
                        }
                        if (w0Var != null) {
                            w0Var.m();
                            int[] iArr = RecyclerView.f613s0;
                        }
                        w0VarD = w0Var;
                    }
                    if (w0VarD == null) {
                        long nanoTime2 = recyclerView.getNanoTime();
                        if (j3 != Long.MAX_VALUE) {
                            long j9 = this.f2977g.a(0).f2963c;
                            if (!((j9 == 0 || j9 + nanoTime2 < j3) ? z3 : false)) {
                                return null;
                            }
                        }
                        cVar = null;
                        a0 a0Var4 = recyclerView.f633k;
                        a0Var4.getClass();
                        try {
                            int i12 = y.h.f4654a;
                            y.g.a("RV CreateView");
                            w0VarD = a0Var4.d(recyclerView);
                            View view3 = w0VarD.f3048a;
                            if (view3.getParent() != null) {
                                throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
                            }
                            w0VarD.f = 0;
                            y.g.b();
                            int[] iArr2 = RecyclerView.f613s0;
                            RecyclerView recyclerViewD = RecyclerView.D(view3);
                            if (recyclerViewD != null) {
                                w0VarD.b = new WeakReference(recyclerViewD);
                            }
                            long nanoTime3 = recyclerView.getNanoTime() - nanoTime2;
                            m0 m0VarA = this.f2977g.a(0);
                            long j10 = m0VarA.f2963c;
                            if (j10 != 0) {
                                nanoTime3 = (nanoTime3 / j5) + ((j10 / j5) * 3);
                            }
                            m0VarA.f2963c = nanoTime3;
                        } catch (Throwable th) {
                            int i13 = y.h.f4654a;
                            y.g.b();
                            throw th;
                        }
                    } else {
                        cVar = null;
                    }
                }
            }
            throw new IndexOutOfBoundsException("Inconsistency detected. Invalid item position " + i3 + "(offset:" + iE3 + ").state:" + t0Var.b() + recyclerView.y());
        }
        cVar = null;
        j4 = 3;
        j5 = 4;
        View view4 = w0VarD.f3048a;
        if (z2 && !t0Var.f3008g) {
            int i14 = w0VarD.f3055j;
            if ((i14 & 8192) != 0 ? z3 : false) {
                w0VarD.f3055j = i14 & (-8193);
                if (t0Var.f3011j) {
                    e0.b(w0VarD);
                    e0 e0Var = recyclerView.H;
                    w0VarD.c();
                    e0Var.getClass();
                    c0.q qVar = new c0.q();
                    qVar.a(w0VarD);
                    recyclerView.T(w0VarD, qVar);
                }
            }
        }
        if (!t0Var.f3008g || !w0VarD.e()) {
            if (w0VarD.e()) {
                if (((w0VarD.f3055j & 2) != 0 ? z3 : false) || w0VarD.f()) {
                    iE = recyclerView.f620d.e(i3, 0);
                    w0VarD.f3063r = recyclerView;
                    i4 = w0VarD.f;
                    long nanoTime4 = recyclerView.getNanoTime();
                    if (j3 != Long.MAX_VALUE) {
                        j7 = this.f2977g.a(i4).f2964d;
                        if (j7 != 0) {
                        }
                    }
                    a0Var = recyclerView.f633k;
                    a0Var.getClass();
                    w0VarD.f3049c = iE;
                    if (a0Var.b) {
                        w0VarD.f3051e = a0Var.b(iE);
                    }
                    w0VarD.f3055j = (w0VarD.f3055j & (-520)) | 1;
                    int i15 = y.h.f4654a;
                    y.g.a("RV OnBindView");
                    w0VarD.c();
                    a0Var.c(w0VarD, iE);
                    arrayList = w0VarD.f3056k;
                    if (arrayList != null) {
                        arrayList.clear();
                    }
                    w0VarD.f3055j &= -1025;
                    layoutParams = view4.getLayoutParams();
                    if (layoutParams instanceof j0) {
                        ((j0) layoutParams).f2934c = z3;
                    }
                    y.g.b();
                    nanoTime = recyclerView.getNanoTime() - nanoTime4;
                    m0 m0VarA2 = this.f2977g.a(w0VarD.f);
                    j6 = m0VarA2.f2964d;
                    if (j6 != 0) {
                        nanoTime = (nanoTime / j5) + ((j6 / j5) * j4);
                    }
                    m0VarA2.f2964d = nanoTime;
                    accessibilityManager = recyclerView.f654x;
                    if (accessibilityManager == null) {
                        z4 = false;
                    } else {
                        z4 = false;
                    }
                    if (z4) {
                        WeakHashMap weakHashMap = c0.p0.f727a;
                        z5 = true;
                        if (c0.a0.c(view4) == 0) {
                            c0.a0.s(view4, 1);
                        }
                        y0Var = recyclerView.f632j0;
                        if (y0Var != null) {
                            x0Var = y0Var.f3072e;
                            if (x0Var != null) {
                                accessibilityDelegateB = c0.p0.b(view4);
                                if (accessibilityDelegateB != null) {
                                    if (accessibilityDelegateB instanceof c0.a) {
                                        cVar = ((c0.a) accessibilityDelegateB).f698a;
                                    } else {
                                        cVar = new c0.c(accessibilityDelegateB);
                                    }
                                }
                                if (cVar != null) {
                                    x0Var.f3069e.put(view4, cVar);
                                }
                            }
                            c0.p0.i(view4, x0Var);
                        }
                    } else {
                        z5 = true;
                    }
                    if (t0Var.f3008g) {
                        w0VarD.f3052g = i3;
                    }
                    z6 = z5;
                }
            } else {
                iE = recyclerView.f620d.e(i3, 0);
                w0VarD.f3063r = recyclerView;
                i4 = w0VarD.f;
                long nanoTime5 = recyclerView.getNanoTime();
                if (j3 != Long.MAX_VALUE) {
                    j7 = this.f2977g.a(i4).f2964d;
                    if (j7 != 0 || j7 + nanoTime5 < j3) {
                    }
                }
                a0Var = recyclerView.f633k;
                a0Var.getClass();
                w0VarD.f3049c = iE;
                if (a0Var.b) {
                    w0VarD.f3051e = a0Var.b(iE);
                }
                w0VarD.f3055j = (w0VarD.f3055j & (-520)) | 1;
                int i16 = y.h.f4654a;
                y.g.a("RV OnBindView");
                w0VarD.c();
                a0Var.c(w0VarD, iE);
                arrayList = w0VarD.f3056k;
                if (arrayList != null) {
                    arrayList.clear();
                }
                w0VarD.f3055j &= -1025;
                layoutParams = view4.getLayoutParams();
                if (layoutParams instanceof j0) {
                    ((j0) layoutParams).f2934c = z3;
                }
                y.g.b();
                nanoTime = recyclerView.getNanoTime() - nanoTime5;
                m0 m0VarA3 = this.f2977g.a(w0VarD.f);
                j6 = m0VarA3.f2964d;
                if (j6 != 0) {
                    nanoTime = (nanoTime / j5) + ((j6 / j5) * j4);
                }
                m0VarA3.f2964d = nanoTime;
                accessibilityManager = recyclerView.f654x;
                if (accessibilityManager == null && accessibilityManager.isEnabled()) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (z4) {
                    WeakHashMap weakHashMap2 = c0.p0.f727a;
                    z5 = true;
                    if (c0.a0.c(view4) == 0) {
                        c0.a0.s(view4, 1);
                    }
                    y0Var = recyclerView.f632j0;
                    if (y0Var != null) {
                        x0Var = y0Var.f3072e;
                        if (x0Var != null) {
                            accessibilityDelegateB = c0.p0.b(view4);
                            if (accessibilityDelegateB != null) {
                                if (accessibilityDelegateB instanceof c0.a) {
                                    cVar = ((c0.a) accessibilityDelegateB).f698a;
                                } else {
                                    cVar = new c0.c(accessibilityDelegateB);
                                }
                            }
                            if (cVar != null && cVar != x0Var) {
                                x0Var.f3069e.put(view4, cVar);
                            }
                        }
                        c0.p0.i(view4, x0Var);
                    }
                } else {
                    z5 = true;
                }
                if (t0Var.f3008g) {
                    w0VarD.f3052g = i3;
                }
                z6 = z5;
            }
            layoutParams2 = view4.getLayoutParams();
            if (layoutParams2 == null) {
                j0Var = (j0) recyclerView.generateDefaultLayoutParams();
                view4.setLayoutParams(j0Var);
            } else if (recyclerView.checkLayoutParams(layoutParams2)) {
                j0Var = (j0) layoutParams2;
            } else {
                j0Var = (j0) recyclerView.generateLayoutParams(layoutParams2);
                view4.setLayoutParams(j0Var);
            }
            j0Var.f2933a = w0VarD;
            if (z2 || !z6) {
                z5 = false;
            }
            j0Var.f2935d = z5;
            return w0VarD;
        }
        w0VarD.f3052g = i3;
        z6 = false;
        z5 = z3;
        layoutParams2 = view4.getLayoutParams();
        if (layoutParams2 == null) {
            j0Var = (j0) recyclerView.generateDefaultLayoutParams();
            view4.setLayoutParams(j0Var);
        } else if (recyclerView.checkLayoutParams(layoutParams2)) {
            j0Var = (j0) recyclerView.generateLayoutParams(layoutParams2);
            view4.setLayoutParams(j0Var);
        } else {
            j0Var = (j0) layoutParams2;
        }
        j0Var.f2933a = w0VarD;
        if (z2) {
            z5 = false;
        } else {
            z5 = false;
        }
        j0Var.f2935d = z5;
        return w0VarD;
    }

    public final void j(w0 w0Var) {
        if (w0Var.f3060o) {
            this.b.remove(w0Var);
        } else {
            this.f2973a.remove(w0Var);
        }
        w0Var.f3059n = null;
        w0Var.f3060o = false;
        w0Var.f3055j &= -33;
    }

    public final void k() {
        i0 i0Var = this.f2978h.f635l;
        this.f = this.f2976e + (i0Var != null ? i0Var.f2914j : 0);
        ArrayList arrayList = this.f2974c;
        for (int size = arrayList.size() - 1; size >= 0 && arrayList.size() > this.f; size--) {
            e(size);
        }
    }
}
