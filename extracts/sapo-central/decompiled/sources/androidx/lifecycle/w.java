package androidx.lifecycle;

import android.os.Looper;
import android.util.Log;
import android.view.View;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class w {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Object f594j = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f595a = new Object();
    public final k.f b = new k.f();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f596c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f597d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile Object f598e;
    public volatile Object f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f599g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f600h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f601i;

    public w() {
        Object obj = f594j;
        this.f = obj;
        this.f598e = obj;
        this.f599g = -1;
    }

    public static void a(String str) {
        ((j.a) j.a.e0().f2294a).getClass();
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            throw new IllegalStateException(androidx.activity.result.b.h("Cannot invoke ", str, " on a background thread"));
        }
    }

    public final void b(v vVar) {
        if (vVar.b) {
            if (!vVar.e()) {
                vVar.c(false);
                return;
            }
            int i3 = vVar.f592c;
            int i4 = this.f599g;
            if (i3 >= i4) {
                return;
            }
            vVar.f592c = i4;
            androidx.emoji2.text.m mVar = vVar.f591a;
            Object obj = this.f598e;
            mVar.getClass();
            q qVar = (q) obj;
            androidx.fragment.app.n nVar = (androidx.fragment.app.n) mVar.b;
            if (qVar == null || !nVar.W) {
                return;
            }
            View viewX = nVar.x();
            if (viewX.getParent() != null) {
                throw new IllegalStateException("DialogFragment can not be attached to a container view");
            }
            if (nVar.f474a0 != null) {
                if (androidx.fragment.app.h0.D(3)) {
                    Log.d("FragmentManager", "DialogFragment " + mVar + " setting the content view on " + nVar.f474a0);
                }
                nVar.f474a0.setContentView(viewX);
            }
        }
    }

    public final void c(v vVar) {
        if (this.f600h) {
            this.f601i = true;
            return;
        }
        this.f600h = true;
        do {
            this.f601i = false;
            if (vVar != null) {
                b(vVar);
                vVar = null;
            } else {
                k.f fVar = this.b;
                fVar.getClass();
                k.d dVar = new k.d(fVar);
                fVar.f2338c.put(dVar, Boolean.FALSE);
                while (dVar.hasNext()) {
                    b((v) ((Map.Entry) dVar.next()).getValue());
                    if (this.f601i) {
                        break;
                    }
                }
            }
        } while (this.f601i);
        this.f600h = false;
    }

    public final void d(androidx.emoji2.text.m mVar) {
        Object obj;
        a("observeForever");
        u uVar = new u(this, mVar);
        k.f fVar = this.b;
        k.c cVarA = fVar.a(mVar);
        if (cVarA != null) {
            obj = cVarA.b;
        } else {
            k.c cVar = new k.c(mVar, uVar);
            fVar.f2339d++;
            k.c cVar2 = fVar.b;
            if (cVar2 == null) {
                fVar.f2337a = cVar;
                fVar.b = cVar;
            } else {
                cVar2.f2333c = cVar;
                cVar.f2334d = cVar2;
                fVar.b = cVar;
            }
            obj = null;
        }
        v vVar = (v) obj;
        if (vVar instanceof LiveData$LifecycleBoundObserver) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (vVar != null) {
            return;
        }
        uVar.c(true);
    }

    public final void e(Object obj) {
        a("setValue");
        this.f599g++;
        this.f598e = obj;
        c(null);
    }
}
