package q0;

import android.view.View;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class f1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f2880a = new ArrayList();
    public int b = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2881c = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2882d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f2883e;
    public final /* synthetic */ StaggeredGridLayoutManager f;

    public f1(StaggeredGridLayoutManager staggeredGridLayoutManager, int i3) {
        this.f = staggeredGridLayoutManager;
        this.f2883e = i3;
    }

    public final void a() {
        ArrayList arrayList = this.f2880a;
        View view = (View) arrayList.get(arrayList.size() - 1);
        c1 c1Var = (c1) view.getLayoutParams();
        this.f2881c = this.f.f659r.b(view);
        c1Var.getClass();
    }

    public final void b() {
        this.f2880a.clear();
        this.b = Integer.MIN_VALUE;
        this.f2881c = Integer.MIN_VALUE;
        this.f2882d = 0;
    }

    public final int c() {
        boolean z2 = this.f.f664w;
        ArrayList arrayList = this.f2880a;
        return z2 ? e(arrayList.size() - 1, -1) : e(0, arrayList.size());
    }

    public final int d() {
        boolean z2 = this.f.f664w;
        ArrayList arrayList = this.f2880a;
        return z2 ? e(0, arrayList.size()) : e(arrayList.size() - 1, -1);
    }

    public final int e(int i3, int i4) {
        StaggeredGridLayoutManager staggeredGridLayoutManager = this.f;
        int iK = staggeredGridLayoutManager.f659r.k();
        int iG = staggeredGridLayoutManager.f659r.g();
        int i5 = i4 > i3 ? 1 : -1;
        while (i3 != i4) {
            View view = (View) this.f2880a.get(i3);
            int iE = staggeredGridLayoutManager.f659r.e(view);
            int iB = staggeredGridLayoutManager.f659r.b(view);
            boolean z2 = iE <= iG;
            boolean z3 = iB >= iK;
            if (z2 && z3 && (iE < iK || iB > iG)) {
                return i0.D(view);
            }
            i3 += i5;
        }
        return -1;
    }

    public final int f(int i3) {
        int i4 = this.f2881c;
        if (i4 != Integer.MIN_VALUE) {
            return i4;
        }
        if (this.f2880a.size() == 0) {
            return i3;
        }
        a();
        return this.f2881c;
    }

    public final View g(int i3, int i4) {
        StaggeredGridLayoutManager staggeredGridLayoutManager = this.f;
        ArrayList arrayList = this.f2880a;
        View view = null;
        if (i4 != -1) {
            int size = arrayList.size() - 1;
            while (size >= 0) {
                View view2 = (View) arrayList.get(size);
                if ((staggeredGridLayoutManager.f664w && i0.D(view2) >= i3) || ((!staggeredGridLayoutManager.f664w && i0.D(view2) <= i3) || !view2.hasFocusable())) {
                    break;
                }
                size--;
                view = view2;
            }
            return view;
        }
        int size2 = arrayList.size();
        int i5 = 0;
        while (i5 < size2) {
            View view3 = (View) arrayList.get(i5);
            if ((staggeredGridLayoutManager.f664w && i0.D(view3) <= i3) || ((!staggeredGridLayoutManager.f664w && i0.D(view3) >= i3) || !view3.hasFocusable())) {
                break;
            }
            i5++;
            view = view3;
        }
        return view;
    }

    public final int h(int i3) {
        int i4 = this.b;
        if (i4 != Integer.MIN_VALUE) {
            return i4;
        }
        ArrayList arrayList = this.f2880a;
        if (arrayList.size() == 0) {
            return i3;
        }
        View view = (View) arrayList.get(0);
        c1 c1Var = (c1) view.getLayoutParams();
        this.b = this.f.f659r.e(view);
        c1Var.getClass();
        return this.b;
    }
}
