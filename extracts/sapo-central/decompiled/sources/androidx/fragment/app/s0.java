package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import java.util.ArrayList;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public final class s0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f528a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final r f529c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ArrayList f530d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HashSet f531e;
    public boolean f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f532g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final n0 f533h;

    public s0(int i3, int i4, n0 n0Var, y.b bVar) {
        r rVar = n0Var.f479c;
        this.f530d = new ArrayList();
        this.f531e = new HashSet();
        this.f = false;
        this.f532g = false;
        this.f528a = i3;
        this.b = i4;
        this.f529c = rVar;
        bVar.a(new androidx.emoji2.text.m(4, this));
        this.f533h = n0Var;
    }

    public final void a() {
        HashSet hashSet = this.f531e;
        if (this.f) {
            return;
        }
        this.f = true;
        if (hashSet.isEmpty()) {
            b();
            return;
        }
        ArrayList arrayList = new ArrayList(hashSet);
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            y.b bVar = (y.b) obj;
            synchronized (bVar) {
                try {
                    if (!bVar.f4649a) {
                        bVar.f4649a = true;
                        bVar.f4650c = true;
                        y.a aVar = bVar.b;
                        if (aVar != null) {
                            try {
                                aVar.onCancel();
                            } catch (Throwable th) {
                                synchronized (bVar) {
                                    bVar.f4650c = false;
                                    bVar.notifyAll();
                                    throw th;
                                }
                            }
                        }
                        synchronized (bVar) {
                            bVar.f4650c = false;
                            bVar.notifyAll();
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public final void b() {
        if (!this.f532g) {
            if (h0.D(2)) {
                Log.v("FragmentManager", "SpecialEffectsController: " + this + " has called complete.");
            }
            this.f532g = true;
            ArrayList arrayList = this.f530d;
            int size = arrayList.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj = arrayList.get(i3);
                i3++;
                ((Runnable) obj).run();
            }
        }
        this.f533h.k();
    }

    public final void c(int i3, int i4) {
        int iB = n.g.b(i4);
        r rVar = this.f529c;
        if (iB == 0) {
            if (this.f528a != 1) {
                if (h0.D(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + rVar + " mFinalState = " + androidx.activity.result.b.w(this.f528a) + " -> " + androidx.activity.result.b.w(i3) + ". ");
                }
                this.f528a = i3;
                return;
            }
            return;
        }
        if (iB == 1) {
            if (this.f528a == 1) {
                if (h0.D(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + rVar + " mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = " + androidx.activity.result.b.v(this.b) + " to ADDING.");
                }
                this.f528a = 2;
                this.b = 2;
                return;
            }
            return;
        }
        if (iB != 2) {
            return;
        }
        if (h0.D(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: For fragment " + rVar + " mFinalState = " + androidx.activity.result.b.w(this.f528a) + " -> REMOVED. mLifecycleImpact  = " + androidx.activity.result.b.v(this.b) + " to REMOVING.");
        }
        this.f528a = 1;
        this.b = 3;
    }

    public final void d() {
        if (this.b == 2) {
            n0 n0Var = this.f533h;
            r rVar = n0Var.f479c;
            View viewFindFocus = rVar.E.findFocus();
            if (viewFindFocus != null) {
                rVar.d().f497k = viewFindFocus;
                if (h0.D(2)) {
                    Log.v("FragmentManager", "requestFocus: Saved focused view " + viewFindFocus + " for Fragment " + rVar);
                }
            }
            View viewX = this.f529c.x();
            if (viewX.getParent() == null) {
                n0Var.b();
                viewX.setAlpha(0.0f);
            }
            if (viewX.getAlpha() == 0.0f && viewX.getVisibility() == 0) {
                viewX.setVisibility(4);
            }
            p pVar = rVar.H;
            viewX.setAlpha(pVar == null ? 1.0f : pVar.f496j);
        }
    }

    public final String toString() {
        return "Operation {" + Integer.toHexString(System.identityHashCode(this)) + "} {mFinalState = " + androidx.activity.result.b.w(this.f528a) + "} {mLifecycleImpact = " + androidx.activity.result.b.v(this.b) + "} {mFragment = " + this.f529c + "}";
    }
}
