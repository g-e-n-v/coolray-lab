package androidx.lifecycle;

import android.os.Looper;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public k.a f584a;
    public l b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final WeakReference f585c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f586d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f587e;
    public boolean f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ArrayList f588g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f589h;

    public s(q qVar) {
        new AtomicReference();
        this.f584a = new k.a();
        this.f586d = 0;
        this.f587e = false;
        this.f = false;
        this.f588g = new ArrayList();
        this.f585c = new WeakReference(qVar);
        this.b = l.b;
        this.f589h = true;
    }

    public final void a(p pVar) {
        o reflectiveGenericLifecycleObserver;
        Object obj;
        q qVar;
        k kVar;
        c("addObserver");
        l lVar = this.b;
        l lVar2 = l.f578a;
        if (lVar != lVar2) {
            lVar2 = l.b;
        }
        r rVar = new r();
        HashMap map = t.f590a;
        boolean z2 = pVar instanceof o;
        boolean z3 = pVar instanceof d;
        if (z2 && z3) {
            reflectiveGenericLifecycleObserver = new FullLifecycleObserverAdapter((d) pVar, (o) pVar);
        } else if (z3) {
            reflectiveGenericLifecycleObserver = new FullLifecycleObserverAdapter((d) pVar, null);
        } else if (z2) {
            reflectiveGenericLifecycleObserver = (o) pVar;
        } else {
            Class<?> cls = pVar.getClass();
            if (t.c(cls) == 2) {
                List list = (List) t.b.get(cls);
                if (list.size() == 1) {
                    t.a((Constructor) list.get(0), pVar);
                    reflectiveGenericLifecycleObserver = new SingleGeneratedAdapterObserver();
                } else {
                    g[] gVarArr = new g[list.size()];
                    for (int i3 = 0; i3 < list.size(); i3++) {
                        t.a((Constructor) list.get(i3), pVar);
                        gVarArr[i3] = null;
                    }
                    reflectiveGenericLifecycleObserver = new CompositeGeneratedAdaptersObserver(gVarArr);
                }
            } else {
                reflectiveGenericLifecycleObserver = new ReflectiveGenericLifecycleObserver(pVar);
            }
        }
        rVar.b = reflectiveGenericLifecycleObserver;
        rVar.f583a = lVar2;
        k.a aVar = this.f584a;
        k.c cVarA = aVar.a(pVar);
        if (cVarA != null) {
            obj = cVarA.b;
        } else {
            HashMap map2 = aVar.f2329e;
            k.c cVar = new k.c(pVar, rVar);
            aVar.f2339d++;
            k.c cVar2 = aVar.b;
            if (cVar2 == null) {
                aVar.f2337a = cVar;
                aVar.b = cVar;
            } else {
                cVar2.f2333c = cVar;
                cVar.f2334d = cVar2;
                aVar.b = cVar;
            }
            map2.put(pVar, cVar);
            obj = null;
        }
        if (((r) obj) == null && (qVar = (q) this.f585c.get()) != null) {
            boolean z4 = this.f586d != 0 || this.f587e;
            l lVarB = b(pVar);
            this.f586d++;
            while (rVar.f583a.compareTo(lVarB) < 0 && this.f584a.f2329e.containsKey(pVar)) {
                l lVar3 = rVar.f583a;
                ArrayList arrayList = this.f588g;
                arrayList.add(lVar3);
                int iOrdinal = rVar.f583a.ordinal();
                if (iOrdinal == 1) {
                    kVar = k.ON_CREATE;
                } else if (iOrdinal != 2) {
                    kVar = iOrdinal != 3 ? null : k.ON_RESUME;
                } else {
                    kVar = k.ON_START;
                }
                if (kVar == null) {
                    throw new IllegalStateException("no event up from " + rVar.f583a);
                }
                rVar.a(qVar, kVar);
                arrayList.remove(arrayList.size() - 1);
                lVarB = b(pVar);
            }
            if (!z4) {
                g();
            }
            this.f586d--;
        }
    }

    public final l b(p pVar) {
        HashMap map = this.f584a.f2329e;
        k.c cVar = map.containsKey(pVar) ? ((k.c) map.get(pVar)).f2334d : null;
        l lVar = cVar != null ? ((r) cVar.b).f583a : null;
        ArrayList arrayList = this.f588g;
        l lVar2 = arrayList.isEmpty() ? null : (l) arrayList.get(arrayList.size() - 1);
        l lVar3 = this.b;
        if (lVar == null || lVar.compareTo(lVar3) >= 0) {
            lVar = lVar3;
        }
        return (lVar2 == null || lVar2.compareTo(lVar) >= 0) ? lVar : lVar2;
    }

    public final void c(String str) {
        if (this.f589h) {
            ((j.a) j.a.e0().f2294a).getClass();
            if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
                throw new IllegalStateException(androidx.activity.result.b.h("Method ", str, " must be called on the main thread"));
            }
        }
    }

    public final void d(k kVar) {
        c("handleLifecycleEvent");
        e(kVar.a());
    }

    public final void e(l lVar) {
        l lVar2 = this.b;
        if (lVar2 == lVar) {
            return;
        }
        l lVar3 = l.b;
        l lVar4 = l.f578a;
        if (lVar2 == lVar3 && lVar == lVar4) {
            throw new IllegalStateException("no event down from " + this.b);
        }
        this.b = lVar;
        if (this.f587e || this.f586d != 0) {
            this.f = true;
            return;
        }
        this.f587e = true;
        g();
        this.f587e = false;
        if (this.b == lVar4) {
            this.f584a = new k.a();
        }
    }

    public final void f(p pVar) {
        c("removeObserver");
        this.f584a.b(pVar);
    }

    public final void g() {
        k kVar;
        k kVar2;
        q qVar = (q) this.f585c.get();
        if (qVar == null) {
            throw new IllegalStateException("LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state.");
        }
        while (true) {
            k.a aVar = this.f584a;
            if (aVar.f2339d != 0) {
                Object obj = aVar.f2337a.b;
                l lVar = ((r) obj).f583a;
                l lVar2 = ((r) aVar.b.b).f583a;
                if (lVar != lVar2 || this.b != lVar2) {
                    this.f = false;
                    int iCompareTo = this.b.compareTo(((r) obj).f583a);
                    ArrayList arrayList = this.f588g;
                    if (iCompareTo < 0) {
                        k.a aVar2 = this.f584a;
                        k.b bVar = new k.b(aVar2.b, aVar2.f2337a, 1);
                        aVar2.f2338c.put(bVar, Boolean.FALSE);
                        while (bVar.hasNext() && !this.f) {
                            Map.Entry entry = (Map.Entry) bVar.next();
                            r rVar = (r) entry.getValue();
                            while (rVar.f583a.compareTo(this.b) > 0 && !this.f) {
                                if (!this.f584a.f2329e.containsKey((p) entry.getKey())) {
                                    break;
                                }
                                int iOrdinal = rVar.f583a.ordinal();
                                if (iOrdinal == 2) {
                                    kVar2 = k.ON_DESTROY;
                                } else if (iOrdinal != 3) {
                                    kVar2 = iOrdinal != 4 ? null : k.ON_PAUSE;
                                } else {
                                    kVar2 = k.ON_STOP;
                                }
                                if (kVar2 == null) {
                                    throw new IllegalStateException("no event down from " + rVar.f583a);
                                }
                                arrayList.add(kVar2.a());
                                rVar.a(qVar, kVar2);
                                arrayList.remove(arrayList.size() - 1);
                            }
                        }
                    }
                    k.c cVar = this.f584a.b;
                    if (!this.f && cVar != null && this.b.compareTo(((r) cVar.b).f583a) > 0) {
                        k.a aVar3 = this.f584a;
                        aVar3.getClass();
                        k.d dVar = new k.d(aVar3);
                        aVar3.f2338c.put(dVar, Boolean.FALSE);
                        while (dVar.hasNext() && !this.f) {
                            Map.Entry entry2 = (Map.Entry) dVar.next();
                            r rVar2 = (r) entry2.getValue();
                            while (rVar2.f583a.compareTo(this.b) < 0 && !this.f) {
                                if (!this.f584a.f2329e.containsKey((p) entry2.getKey())) {
                                    break;
                                }
                                arrayList.add(rVar2.f583a);
                                int iOrdinal2 = rVar2.f583a.ordinal();
                                if (iOrdinal2 == 1) {
                                    kVar = k.ON_CREATE;
                                } else if (iOrdinal2 != 2) {
                                    kVar = iOrdinal2 != 3 ? null : k.ON_RESUME;
                                } else {
                                    kVar = k.ON_START;
                                }
                                if (kVar == null) {
                                    throw new IllegalStateException("no event up from " + rVar2.f583a);
                                }
                                rVar2.a(qVar, kVar);
                                arrayList.remove(arrayList.size() - 1);
                            }
                        }
                    }
                } else {
                    break;
                }
            } else {
                break;
            }
        }
        this.f = false;
    }
}
