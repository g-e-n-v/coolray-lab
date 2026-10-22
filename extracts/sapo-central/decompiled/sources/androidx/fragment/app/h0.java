package androidx.fragment.app;

import android.os.Bundle;
import android.os.Looper;
import android.os.Parcelable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.R;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final class h0 {
    public boolean A;
    public boolean B;
    public ArrayList C;
    public ArrayList D;
    public ArrayList E;
    public j0 F;
    public final androidx.activity.d G;
    public boolean b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ArrayList f422d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ArrayList f423e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public androidx.activity.n f424g;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final androidx.activity.result.c f428k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final CopyOnWriteArrayList f429l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f430m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public u f431n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public a1.b f432o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public r f433p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public r f434q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final b0 f435r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final s1.e f436s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public androidx.activity.result.c f437t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public androidx.activity.result.c f438u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public androidx.activity.result.c f439v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public ArrayDeque f440w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f441x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f442y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f443z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f420a = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final f f421c = new f();
    public final y f = new y(this);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final a0 f425h = new a0(this);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AtomicInteger f426i = new AtomicInteger();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Map f427j = Collections.synchronizedMap(new HashMap());

    public h0() {
        Collections.synchronizedMap(new HashMap());
        Collections.synchronizedMap(new HashMap());
        new s1.e(this);
        androidx.activity.result.c cVar = new androidx.activity.result.c();
        cVar.f100a = new CopyOnWriteArrayList();
        cVar.b = this;
        this.f428k = cVar;
        this.f429l = new CopyOnWriteArrayList();
        this.f430m = -1;
        this.f435r = new b0(this);
        this.f436s = new s1.e();
        this.f440w = new ArrayDeque();
        this.G = new androidx.activity.d(3, this);
    }

    public static boolean D(int i3) {
        return Log.isLoggable("FragmentManager", i3);
    }

    public static boolean E(r rVar) {
        rVar.getClass();
        f fVar = rVar.f518t.f421c;
        fVar.getClass();
        ArrayList arrayList = new ArrayList();
        for (n0 n0Var : ((HashMap) fVar.f413c).values()) {
            if (n0Var != null) {
                arrayList.add(n0Var.f479c);
            } else {
                arrayList.add(null);
            }
        }
        int size = arrayList.size();
        boolean zE = false;
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            r rVar2 = (r) obj;
            if (rVar2 != null) {
                zE = E(rVar2);
            }
            if (zE) {
                return true;
            }
        }
        return false;
    }

    public static boolean F(r rVar) {
        if (rVar == null) {
            return true;
        }
        if (rVar.B) {
            return rVar.f516r == null || F(rVar.f519u);
        }
        return false;
    }

    public static boolean G(r rVar) {
        if (rVar == null) {
            return true;
        }
        h0 h0Var = rVar.f516r;
        return rVar.equals(h0Var.f434q) && G(h0Var.f433p);
    }

    public static void U(r rVar) {
        if (D(2)) {
            Log.v("FragmentManager", "show: " + rVar);
        }
        if (rVar.f523y) {
            rVar.f523y = false;
            rVar.I = !rVar.I;
        }
    }

    public final b0 A() {
        r rVar = this.f433p;
        return rVar != null ? rVar.f516r.A() : this.f435r;
    }

    public final s1.e B() {
        r rVar = this.f433p;
        return rVar != null ? rVar.f516r.B() : this.f436s;
    }

    public final void C(r rVar) {
        if (D(2)) {
            Log.v("FragmentManager", "hide: " + rVar);
        }
        if (rVar.f523y) {
            return;
        }
        rVar.f523y = true;
        rVar.I = true ^ rVar.I;
        T(rVar);
    }

    public final void H(int i3, boolean z2) {
        u uVar;
        if (this.f431n == null && i3 != -1) {
            throw new IllegalStateException("No activity");
        }
        if (z2 || i3 != this.f430m) {
            this.f430m = i3;
            f fVar = this.f421c;
            HashMap map = (HashMap) fVar.f413c;
            ArrayList arrayList = (ArrayList) fVar.b;
            int size = arrayList.size();
            int i4 = 0;
            while (i4 < size) {
                Object obj = arrayList.get(i4);
                i4++;
                n0 n0Var = (n0) map.get(((r) obj).f504e);
                if (n0Var != null) {
                    n0Var.k();
                }
            }
            for (n0 n0Var2 : map.values()) {
                if (n0Var2 != null) {
                    n0Var2.k();
                    r rVar = n0Var2.f479c;
                    if (rVar.f510l && rVar.f515q <= 0) {
                        fVar.t(n0Var2);
                    }
                }
            }
            V();
            if (this.f441x && (uVar = this.f431n) != null && this.f430m == 7) {
                uVar.f538e.i().g();
                this.f441x = false;
            }
        }
    }

    public final void I() {
        if (this.f431n == null) {
            return;
        }
        this.f442y = false;
        this.f443z = false;
        this.F.f458h = false;
        for (r rVar : this.f421c.n()) {
            if (rVar != null) {
                rVar.f518t.I();
            }
        }
    }

    public final boolean J() {
        w(false);
        v(true);
        r rVar = this.f434q;
        if (rVar != null && rVar.g().J()) {
            return true;
        }
        boolean zK = K(this.C, this.D, -1, 0);
        if (zK) {
            this.b = true;
            try {
                M(this.C, this.D);
                d();
            } catch (Throwable th) {
                d();
                throw th;
            }
        }
        W();
        if (this.B) {
            this.B = false;
            V();
        }
        ((HashMap) this.f421c.f413c).values().removeAll(Collections.singleton(null));
        return zK;
    }

    public final boolean K(ArrayList arrayList, ArrayList arrayList2, int i3, int i4) {
        int size;
        a aVar;
        ArrayList arrayList3 = this.f422d;
        if (arrayList3 == null) {
            return false;
        }
        if (i3 < 0 && (i4 & 1) == 0) {
            int size2 = arrayList3.size() - 1;
            if (size2 < 0) {
                return false;
            }
            arrayList.add(this.f422d.remove(size2));
            arrayList2.add(Boolean.TRUE);
            return true;
        }
        if (i3 >= 0) {
            size = arrayList3.size() - 1;
            while (size >= 0) {
                a aVar2 = (a) this.f422d.get(size);
                if (i3 >= 0 && i3 == aVar2.f383r) {
                    break;
                }
                size--;
            }
            if (size < 0) {
                return false;
            }
            if ((i4 & 1) != 0) {
                do {
                    size--;
                    if (size < 0) {
                        break;
                    }
                    aVar = (a) this.f422d.get(size);
                    if (i3 < 0) {
                        break;
                    }
                } while (i3 == aVar.f383r);
            }
        } else {
            size = -1;
        }
        if (size == this.f422d.size() - 1) {
            return false;
        }
        for (int size3 = this.f422d.size() - 1; size3 > size; size3--) {
            arrayList.add(this.f422d.remove(size3));
            arrayList2.add(Boolean.TRUE);
        }
        return true;
    }

    public final void L(r rVar) {
        if (D(2)) {
            Log.v("FragmentManager", "remove: " + rVar + " nesting=" + rVar.f515q);
        }
        boolean z2 = rVar.f515q > 0;
        if (rVar.f524z && z2) {
            return;
        }
        f fVar = this.f421c;
        synchronized (((ArrayList) fVar.b)) {
            ((ArrayList) fVar.b).remove(rVar);
        }
        rVar.f509k = false;
        if (E(rVar)) {
            this.f441x = true;
        }
        rVar.f510l = true;
        T(rVar);
    }

    public final void M(ArrayList arrayList, ArrayList arrayList2) {
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() != arrayList2.size()) {
            throw new IllegalStateException("Internal error with the back stack records");
        }
        int size = arrayList.size();
        int i3 = 0;
        int i4 = 0;
        while (i3 < size) {
            if (!((a) arrayList.get(i3)).f380o) {
                if (i4 != i3) {
                    x(arrayList, arrayList2, i4, i3);
                }
                i4 = i3 + 1;
                if (((Boolean) arrayList2.get(i3)).booleanValue()) {
                    while (i4 < size && ((Boolean) arrayList2.get(i4)).booleanValue() && !((a) arrayList.get(i4)).f380o) {
                        i4++;
                    }
                }
                x(arrayList, arrayList2, i3, i4);
                i3 = i4 - 1;
            }
            i3++;
        }
        if (i4 != size) {
            x(arrayList, arrayList2, i4, size);
        }
    }

    public final void N(Parcelable parcelable) {
        androidx.activity.result.c cVar;
        int i3;
        int i4;
        n0 n0Var;
        if (parcelable == null) {
            return;
        }
        i0 i0Var = (i0) parcelable;
        if (i0Var.f444a == null) {
            return;
        }
        f fVar = this.f421c;
        ((HashMap) fVar.f413c).clear();
        ArrayList arrayList = i0Var.f444a;
        int size = arrayList.size();
        int i5 = 0;
        while (true) {
            cVar = this.f428k;
            i3 = 2;
            if (i5 >= size) {
                break;
            }
            Object obj = arrayList.get(i5);
            i5++;
            l0 l0Var = (l0) obj;
            if (l0Var != null) {
                r rVar = (r) this.F.f454c.get(l0Var.b);
                if (rVar != null) {
                    if (D(2)) {
                        Log.v("FragmentManager", "restoreSaveState: re-attaching retained " + rVar);
                    }
                    n0Var = new n0(cVar, fVar, rVar, l0Var);
                } else {
                    n0Var = new n0(this.f428k, this.f421c, this.f431n.b.getClassLoader(), A(), l0Var);
                }
                r rVar2 = n0Var.f479c;
                rVar2.f516r = this;
                if (D(2)) {
                    Log.v("FragmentManager", "restoreSaveState: active (" + rVar2.f504e + "): " + rVar2);
                }
                n0Var.m(this.f431n.b.getClassLoader());
                fVar.s(n0Var);
                n0Var.f481e = this.f430m;
            }
        }
        j0 j0Var = this.F;
        j0Var.getClass();
        ArrayList arrayList2 = new ArrayList(j0Var.f454c.values());
        int size2 = arrayList2.size();
        int i6 = 0;
        while (i6 < size2) {
            Object obj2 = arrayList2.get(i6);
            i6++;
            r rVar3 = (r) obj2;
            if (((HashMap) fVar.f413c).get(rVar3.f504e) == null) {
                if (D(2)) {
                    Log.v("FragmentManager", "Discarding retained Fragment " + rVar3 + " that was not found in the set of active Fragments " + i0Var.f444a);
                }
                this.F.b(rVar3);
                rVar3.f516r = this;
                n0 n0Var2 = new n0(cVar, fVar, rVar3);
                n0Var2.f481e = 1;
                n0Var2.k();
                rVar3.f510l = true;
                n0Var2.k();
            }
        }
        ArrayList arrayList3 = i0Var.b;
        ((ArrayList) fVar.b).clear();
        if (arrayList3 != null) {
            int size3 = arrayList3.size();
            int i7 = 0;
            while (i7 < size3) {
                Object obj3 = arrayList3.get(i7);
                i7++;
                String str = (String) obj3;
                r rVarE = fVar.e(str);
                if (rVarE == null) {
                    throw new IllegalStateException(androidx.activity.result.b.h("No instantiated fragment for (", str, ")"));
                }
                if (D(2)) {
                    Log.v("FragmentManager", "restoreSaveState: added (" + str + "): " + rVarE);
                }
                fVar.a(rVarE);
            }
        }
        r rVar4 = null;
        if (i0Var.f445c != null) {
            this.f422d = new ArrayList(i0Var.f445c.length);
            int i8 = 0;
            while (true) {
                b[] bVarArr = i0Var.f445c;
                if (i8 >= bVarArr.length) {
                    break;
                }
                b bVar = bVarArr[i8];
                int[] iArr = bVar.f387a;
                a aVar = new a(this);
                int i9 = 0;
                int i10 = 0;
                while (i9 < iArr.length) {
                    o0 o0Var = new o0();
                    int i11 = i9 + 1;
                    int i12 = i3;
                    o0Var.f483a = iArr[i9];
                    if (D(i12)) {
                        Log.v("FragmentManager", "Instantiate " + aVar + " op #" + i10 + " base fragment #" + iArr[i11]);
                    }
                    String str2 = (String) bVar.b.get(i10);
                    if (str2 != null) {
                        o0Var.b = fVar.e(str2);
                    } else {
                        o0Var.b = rVar4;
                    }
                    o0Var.f487g = androidx.lifecycle.l.values()[bVar.f388c[i10]];
                    o0Var.f488h = androidx.lifecycle.l.values()[bVar.f389d[i10]];
                    int i13 = iArr[i11];
                    o0Var.f484c = i13;
                    int i14 = iArr[i9 + 2];
                    o0Var.f485d = i14;
                    int i15 = i9 + 4;
                    int i16 = iArr[i9 + 3];
                    o0Var.f486e = i16;
                    i9 += 5;
                    int i17 = iArr[i15];
                    o0Var.f = i17;
                    aVar.b = i13;
                    aVar.f369c = i14;
                    aVar.f370d = i16;
                    aVar.f371e = i17;
                    aVar.b(o0Var);
                    i10++;
                    i3 = i12;
                    rVar4 = null;
                }
                int i18 = i3;
                aVar.f = bVar.f390e;
                aVar.f373h = bVar.f;
                aVar.f383r = bVar.f391g;
                aVar.f372g = true;
                aVar.f374i = bVar.f392h;
                aVar.f375j = bVar.f393i;
                aVar.f376k = bVar.f394j;
                aVar.f377l = bVar.f395k;
                aVar.f378m = bVar.f396l;
                aVar.f379n = bVar.f397m;
                aVar.f380o = bVar.f398n;
                aVar.c(1);
                if (D(i18)) {
                    StringBuilder sbK = androidx.activity.result.b.k("restoreAllState: back stack #", i8, " (index ");
                    sbK.append(aVar.f383r);
                    sbK.append("): ");
                    sbK.append(aVar);
                    Log.v("FragmentManager", sbK.toString());
                    PrintWriter printWriter = new PrintWriter(new q0());
                    aVar.d("  ", printWriter, false);
                    printWriter.close();
                }
                this.f422d.add(aVar);
                i8++;
                i3 = i18;
                rVar4 = null;
            }
            i4 = 0;
        } else {
            i4 = 0;
            this.f422d = null;
        }
        this.f426i.set(i0Var.f446d);
        String str3 = i0Var.f447e;
        if (str3 != null) {
            r rVarE2 = fVar.e(str3);
            this.f434q = rVarE2;
            p(rVarE2);
        }
        ArrayList arrayList4 = i0Var.f;
        if (arrayList4 != null) {
            for (int i19 = i4; i19 < arrayList4.size(); i19++) {
                Bundle bundle = (Bundle) i0Var.f448g.get(i19);
                bundle.setClassLoader(this.f431n.b.getClassLoader());
                this.f427j.put(arrayList4.get(i19), bundle);
            }
        }
        this.f440w = new ArrayDeque(i0Var.f449h);
    }

    public final i0 O() {
        int i3;
        ArrayList arrayList;
        b[] bVarArr;
        int size;
        Iterator it = e().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            j jVar = (j) it.next();
            if (jVar.f453e) {
                jVar.f453e = false;
                jVar.c();
            }
        }
        Iterator it2 = e().iterator();
        while (it2.hasNext()) {
            ((j) it2.next()).e();
        }
        w(true);
        this.f442y = true;
        this.F.f458h = true;
        f fVar = this.f421c;
        fVar.getClass();
        HashMap map = (HashMap) fVar.f413c;
        ArrayList arrayList2 = new ArrayList(map.size());
        Iterator it3 = map.values().iterator();
        while (true) {
            if (!it3.hasNext()) {
                break;
            }
            n0 n0Var = (n0) it3.next();
            if (n0Var != null) {
                r rVar = n0Var.f479c;
                l0 l0Var = new l0(rVar);
                if (rVar.f501a <= -1 || l0Var.f471m != null) {
                    l0Var.f471m = rVar.b;
                } else {
                    Bundle bundle = new Bundle();
                    rVar.r(bundle);
                    rVar.O.c(bundle);
                    i0 i0VarO = rVar.f518t.O();
                    if (i0VarO != null) {
                        bundle.putParcelable("android:support:fragments", i0VarO);
                    }
                    n0Var.f478a.l(false);
                    Bundle bundle2 = bundle.isEmpty() ? null : bundle;
                    if (rVar.E != null) {
                        n0Var.o();
                    }
                    if (rVar.f502c != null) {
                        if (bundle2 == null) {
                            bundle2 = new Bundle();
                        }
                        bundle2.putSparseParcelableArray("android:view_state", rVar.f502c);
                    }
                    if (rVar.f503d != null) {
                        if (bundle2 == null) {
                            bundle2 = new Bundle();
                        }
                        bundle2.putBundle("android:view_registry_state", rVar.f503d);
                    }
                    if (!rVar.G) {
                        if (bundle2 == null) {
                            bundle2 = new Bundle();
                        }
                        bundle2.putBoolean("android:user_visible_hint", rVar.G);
                    }
                    l0Var.f471m = bundle2;
                    if (rVar.f506h != null) {
                        if (bundle2 == null) {
                            l0Var.f471m = new Bundle();
                        }
                        l0Var.f471m.putString("android:target_state", rVar.f506h);
                        int i4 = rVar.f507i;
                        if (i4 != 0) {
                            l0Var.f471m.putInt("android:target_req_state", i4);
                        }
                    }
                }
                arrayList2.add(l0Var);
                if (D(2)) {
                    Log.v("FragmentManager", "Saved state of " + rVar + ": " + l0Var.f471m);
                }
            }
        }
        if (arrayList2.isEmpty()) {
            if (D(2)) {
                Log.v("FragmentManager", "saveAllState: no fragments!");
            }
            return null;
        }
        f fVar2 = this.f421c;
        synchronized (((ArrayList) fVar2.b)) {
            try {
                if (((ArrayList) fVar2.b).isEmpty()) {
                    arrayList = null;
                } else {
                    arrayList = new ArrayList(((ArrayList) fVar2.b).size());
                    ArrayList arrayList3 = (ArrayList) fVar2.b;
                    int size2 = arrayList3.size();
                    int i5 = 0;
                    while (i5 < size2) {
                        Object obj = arrayList3.get(i5);
                        i5++;
                        r rVar2 = (r) obj;
                        arrayList.add(rVar2.f504e);
                        if (D(2)) {
                            Log.v("FragmentManager", "saveAllState: adding fragment (" + rVar2.f504e + "): " + rVar2);
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        ArrayList arrayList4 = this.f422d;
        if (arrayList4 == null || (size = arrayList4.size()) <= 0) {
            bVarArr = null;
        } else {
            bVarArr = new b[size];
            for (i3 = 0; i3 < size; i3++) {
                bVarArr[i3] = new b((a) this.f422d.get(i3));
                if (D(2)) {
                    StringBuilder sbK = androidx.activity.result.b.k("saveAllState: adding back stack #", i3, ": ");
                    sbK.append(this.f422d.get(i3));
                    Log.v("FragmentManager", sbK.toString());
                }
            }
        }
        i0 i0Var = new i0();
        i0Var.f447e = null;
        ArrayList arrayList5 = new ArrayList();
        i0Var.f = arrayList5;
        ArrayList arrayList6 = new ArrayList();
        i0Var.f448g = arrayList6;
        i0Var.f444a = arrayList2;
        i0Var.b = arrayList;
        i0Var.f445c = bVarArr;
        i0Var.f446d = this.f426i.get();
        r rVar3 = this.f434q;
        if (rVar3 != null) {
            i0Var.f447e = rVar3.f504e;
        }
        arrayList5.addAll(this.f427j.keySet());
        arrayList6.addAll(this.f427j.values());
        i0Var.f449h = new ArrayList(this.f440w);
        return i0Var;
    }

    public final void P() {
        synchronized (this.f420a) {
            try {
                if (this.f420a.size() == 1) {
                    this.f431n.f536c.removeCallbacks(this.G);
                    this.f431n.f536c.post(this.G);
                    W();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void Q(r rVar, boolean z2) {
        ViewGroup viewGroupZ = z(rVar);
        if (viewGroupZ == null || !(viewGroupZ instanceof w)) {
            return;
        }
        ((w) viewGroupZ).setDrawDisappearingViewsLast(!z2);
    }

    public final void R(r rVar, androidx.lifecycle.l lVar) {
        if (rVar.equals(this.f421c.e(rVar.f504e)) && (rVar.f517s == null || rVar.f516r == this)) {
            rVar.K = lVar;
            return;
        }
        throw new IllegalArgumentException("Fragment " + rVar + " is not an active fragment of FragmentManager " + this);
    }

    public final void S(r rVar) {
        if (rVar != null) {
            if (!rVar.equals(this.f421c.e(rVar.f504e)) || (rVar.f517s != null && rVar.f516r != this)) {
                throw new IllegalArgumentException("Fragment " + rVar + " is not an active fragment of FragmentManager " + this);
            }
        }
        r rVar2 = this.f434q;
        this.f434q = rVar;
        p(rVar2);
        p(this.f434q);
    }

    public final void T(r rVar) {
        ViewGroup viewGroupZ = z(rVar);
        if (viewGroupZ != null) {
            p pVar = rVar.H;
            if ((pVar == null ? 0 : pVar.f492e) + (pVar == null ? 0 : pVar.f491d) + (pVar == null ? 0 : pVar.f490c) + (pVar == null ? 0 : pVar.b) > 0) {
                if (viewGroupZ.getTag(R.id.visible_removing_fragment_view_tag) == null) {
                    viewGroupZ.setTag(R.id.visible_removing_fragment_view_tag, rVar);
                }
                r rVar2 = (r) viewGroupZ.getTag(R.id.visible_removing_fragment_view_tag);
                p pVar2 = rVar.H;
                boolean z2 = pVar2 != null ? pVar2.f489a : false;
                if (rVar2.H == null) {
                    return;
                }
                rVar2.d().f489a = z2;
            }
        }
    }

    public final void V() {
        ArrayList arrayListG = this.f421c.g();
        int size = arrayListG.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayListG.get(i3);
            i3++;
            n0 n0Var = (n0) obj;
            r rVar = n0Var.f479c;
            if (rVar.F) {
                if (this.b) {
                    this.B = true;
                } else {
                    rVar.F = false;
                    n0Var.k();
                }
            }
        }
    }

    public final void W() {
        synchronized (this.f420a) {
            try {
                if (!this.f420a.isEmpty()) {
                    a0 a0Var = this.f425h;
                    a0Var.f384a = true;
                    androidx.activity.j jVar = a0Var.f385c;
                    if (jVar != null) {
                        jVar.accept(Boolean.TRUE);
                    }
                    return;
                }
                a0 a0Var2 = this.f425h;
                ArrayList arrayList = this.f422d;
                boolean z2 = (arrayList != null ? arrayList.size() : 0) > 0 && G(this.f433p);
                a0Var2.f384a = z2;
                androidx.activity.j jVar2 = a0Var2.f385c;
                if (jVar2 != null) {
                    jVar2.accept(Boolean.valueOf(z2));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final n0 a(r rVar) {
        if (D(2)) {
            Log.v("FragmentManager", "add: " + rVar);
        }
        n0 n0VarF = f(rVar);
        rVar.f516r = this;
        f fVar = this.f421c;
        fVar.s(n0VarF);
        if (!rVar.f524z) {
            fVar.a(rVar);
            rVar.f510l = false;
            if (rVar.E == null) {
                rVar.I = false;
            }
            if (E(rVar)) {
                this.f441x = true;
            }
        }
        return n0VarF;
    }

    public final void b(u uVar, a1.b bVar, r rVar) {
        j0 j0Var;
        String str;
        if (this.f431n != null) {
            throw new IllegalStateException("Already attached");
        }
        this.f431n = uVar;
        this.f432o = bVar;
        this.f433p = rVar;
        CopyOnWriteArrayList copyOnWriteArrayList = this.f429l;
        if (rVar != null) {
            copyOnWriteArrayList.add(new c0(rVar));
        } else if (uVar != null) {
            copyOnWriteArrayList.add(uVar);
        }
        if (this.f433p != null) {
            W();
        }
        if (uVar != null) {
            androidx.activity.n nVar = uVar.f538e.f85g;
            this.f424g = nVar;
            nVar.a(rVar != null ? rVar : uVar, this.f425h);
        }
        if (rVar != null) {
            j0 j0Var2 = rVar.f516r.F;
            HashMap map = j0Var2.f455d;
            j0 j0Var3 = (j0) map.get(rVar.f504e);
            if (j0Var3 == null) {
                j0Var3 = new j0(j0Var2.f);
                map.put(rVar.f504e, j0Var3);
            }
            this.F = j0Var3;
        } else if (uVar != null) {
            androidx.lifecycle.i0 i0VarE = uVar.f538e.e();
            i2.g.e(i0VarE, "store");
            HashMap map2 = i0VarE.f576a;
            n0.a aVar = n0.a.b;
            i2.g.e(aVar, "defaultCreationExtras");
            String canonicalName = j0.class.getCanonicalName();
            if (canonicalName == null) {
                throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
            }
            String strConcat = "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(canonicalName);
            i2.g.e(strConcat, "key");
            androidx.lifecycle.g0 g0Var = (androidx.lifecycle.g0) map2.get(strConcat);
            if (!j0.class.isInstance(g0Var)) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.putAll(aVar.f2481a);
                linkedHashMap.put(androidx.lifecycle.h0.b, strConcat);
                try {
                    j0Var = new j0(true);
                } catch (AbstractMethodError unused) {
                    j0Var = new j0(true);
                }
                g0Var = j0Var;
                androidx.lifecycle.g0 g0Var2 = (androidx.lifecycle.g0) map2.put(strConcat, g0Var);
                if (g0Var2 != null) {
                    g0Var2.a();
                }
            } else if (g0Var == null) {
                throw new NullPointerException("null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get");
            }
            this.F = (j0) g0Var;
        } else {
            this.F = new j0(false);
        }
        j0 j0Var4 = this.F;
        j0Var4.f458h = this.f442y || this.f443z;
        this.f421c.f414d = j0Var4;
        u uVar2 = this.f431n;
        if (uVar2 != null) {
            androidx.activity.e eVar = uVar2.f538e.f86h;
            if (rVar != null) {
                str = rVar.f504e + ":";
            } else {
                str = "";
            }
            String str2 = "FragmentManager:" + str;
            this.f437t = eVar.b(n.g.a(str2, "StartActivityForResult"), new d0(2), new z(this, 2));
            this.f438u = eVar.b(n.g.a(str2, "StartIntentSenderForResult"), new d0(0), new z(this, 0));
            this.f439v = eVar.b(n.g.a(str2, "RequestPermissions"), new d0(1), new z(this, 1));
        }
    }

    public final void c(r rVar) {
        if (D(2)) {
            Log.v("FragmentManager", "attach: " + rVar);
        }
        if (rVar.f524z) {
            rVar.f524z = false;
            if (rVar.f509k) {
                return;
            }
            this.f421c.a(rVar);
            if (D(2)) {
                Log.v("FragmentManager", "add from attach: " + rVar);
            }
            if (E(rVar)) {
                this.f441x = true;
            }
        }
    }

    public final void d() {
        this.b = false;
        this.D.clear();
        this.C.clear();
    }

    public final HashSet e() {
        HashSet hashSet = new HashSet();
        ArrayList arrayListG = this.f421c.g();
        int size = arrayListG.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayListG.get(i3);
            i3++;
            ViewGroup viewGroup = ((n0) obj).f479c.D;
            if (viewGroup != null) {
                hashSet.add(j.f(viewGroup, B()));
            }
        }
        return hashSet;
    }

    public final n0 f(r rVar) {
        String str = rVar.f504e;
        f fVar = this.f421c;
        n0 n0Var = (n0) ((HashMap) fVar.f413c).get(str);
        if (n0Var != null) {
            return n0Var;
        }
        n0 n0Var2 = new n0(this.f428k, fVar, rVar);
        n0Var2.m(this.f431n.b.getClassLoader());
        n0Var2.f481e = this.f430m;
        return n0Var2;
    }

    public final void g(r rVar) {
        if (D(2)) {
            Log.v("FragmentManager", "detach: " + rVar);
        }
        if (rVar.f524z) {
            return;
        }
        rVar.f524z = true;
        if (rVar.f509k) {
            if (D(2)) {
                Log.v("FragmentManager", "remove from detach: " + rVar);
            }
            f fVar = this.f421c;
            synchronized (((ArrayList) fVar.b)) {
                ((ArrayList) fVar.b).remove(rVar);
            }
            rVar.f509k = false;
            if (E(rVar)) {
                this.f441x = true;
            }
            T(rVar);
        }
    }

    public final void h() {
        for (r rVar : this.f421c.n()) {
            if (rVar != null) {
                rVar.C = true;
                rVar.f518t.h();
            }
        }
    }

    public final boolean i() {
        if (this.f430m >= 1) {
            for (r rVar : this.f421c.n()) {
                if (rVar != null) {
                    if (!rVar.f523y ? rVar.f518t.i() : false) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final boolean j() {
        if (this.f430m < 1) {
            return false;
        }
        ArrayList arrayList = null;
        boolean z2 = false;
        for (r rVar : this.f421c.n()) {
            if (rVar != null && F(rVar)) {
                if (!rVar.f523y ? rVar.f518t.j() : false) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(rVar);
                    z2 = true;
                }
            }
        }
        if (this.f423e != null) {
            for (int i3 = 0; i3 < this.f423e.size(); i3++) {
                r rVar2 = (r) this.f423e.get(i3);
                if (arrayList == null || !arrayList.contains(rVar2)) {
                    rVar2.getClass();
                }
            }
        }
        this.f423e = arrayList;
        return z2;
    }

    public final void k() {
        Integer num;
        Integer num2;
        Integer num3;
        this.A = true;
        w(true);
        Iterator it = e().iterator();
        while (it.hasNext()) {
            ((j) it.next()).e();
        }
        s(-1);
        this.f431n = null;
        this.f432o = null;
        this.f433p = null;
        if (this.f424g != null) {
            Iterator it2 = this.f425h.b.iterator();
            while (it2.hasNext()) {
                ((androidx.activity.a) it2.next()).cancel();
            }
            this.f424g = null;
        }
        androidx.activity.result.c cVar = this.f437t;
        if (cVar != null) {
            androidx.activity.e eVar = (androidx.activity.e) cVar.b;
            String str = (String) cVar.f100a;
            Bundle bundle = eVar.f79h;
            HashMap map = eVar.f78g;
            if (!eVar.f77e.contains(str) && (num3 = (Integer) eVar.f75c.remove(str)) != null) {
                eVar.b.remove(num3);
            }
            eVar.f.remove(str);
            if (map.containsKey(str)) {
                StringBuilder sbL = androidx.activity.result.b.l("Dropping pending result for request ", str, ": ");
                sbL.append(map.get(str));
                Log.w("ActivityResultRegistry", sbL.toString());
                map.remove(str);
            }
            if (bundle.containsKey(str)) {
                StringBuilder sbL2 = androidx.activity.result.b.l("Dropping pending result for request ", str, ": ");
                sbL2.append(bundle.getParcelable(str));
                Log.w("ActivityResultRegistry", sbL2.toString());
                bundle.remove(str);
            }
            if (eVar.f76d.get(str) != null) {
                throw new ClassCastException();
            }
            androidx.activity.result.c cVar2 = this.f438u;
            androidx.activity.e eVar2 = (androidx.activity.e) cVar2.b;
            String str2 = (String) cVar2.f100a;
            Bundle bundle2 = eVar2.f79h;
            HashMap map2 = eVar2.f78g;
            if (!eVar2.f77e.contains(str2) && (num2 = (Integer) eVar2.f75c.remove(str2)) != null) {
                eVar2.b.remove(num2);
            }
            eVar2.f.remove(str2);
            if (map2.containsKey(str2)) {
                StringBuilder sbL3 = androidx.activity.result.b.l("Dropping pending result for request ", str2, ": ");
                sbL3.append(map2.get(str2));
                Log.w("ActivityResultRegistry", sbL3.toString());
                map2.remove(str2);
            }
            if (bundle2.containsKey(str2)) {
                StringBuilder sbL4 = androidx.activity.result.b.l("Dropping pending result for request ", str2, ": ");
                sbL4.append(bundle2.getParcelable(str2));
                Log.w("ActivityResultRegistry", sbL4.toString());
                bundle2.remove(str2);
            }
            if (eVar2.f76d.get(str2) != null) {
                throw new ClassCastException();
            }
            androidx.activity.result.c cVar3 = this.f439v;
            androidx.activity.e eVar3 = (androidx.activity.e) cVar3.b;
            String str3 = (String) cVar3.f100a;
            Bundle bundle3 = eVar3.f79h;
            HashMap map3 = eVar3.f78g;
            if (!eVar3.f77e.contains(str3) && (num = (Integer) eVar3.f75c.remove(str3)) != null) {
                eVar3.b.remove(num);
            }
            eVar3.f.remove(str3);
            if (map3.containsKey(str3)) {
                StringBuilder sbL5 = androidx.activity.result.b.l("Dropping pending result for request ", str3, ": ");
                sbL5.append(map3.get(str3));
                Log.w("ActivityResultRegistry", sbL5.toString());
                map3.remove(str3);
            }
            if (bundle3.containsKey(str3)) {
                StringBuilder sbL6 = androidx.activity.result.b.l("Dropping pending result for request ", str3, ": ");
                sbL6.append(bundle3.getParcelable(str3));
                Log.w("ActivityResultRegistry", sbL6.toString());
                bundle3.remove(str3);
            }
            if (eVar3.f76d.get(str3) != null) {
                throw new ClassCastException();
            }
        }
    }

    public final void l() {
        for (r rVar : this.f421c.n()) {
            if (rVar != null) {
                rVar.C = true;
                rVar.f518t.l();
            }
        }
    }

    public final void m() {
        for (r rVar : this.f421c.n()) {
            if (rVar != null) {
                rVar.f518t.m();
            }
        }
    }

    public final boolean n() {
        if (this.f430m >= 1) {
            for (r rVar : this.f421c.n()) {
                if (rVar != null) {
                    if (!rVar.f523y ? rVar.f518t.n() : false) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final void o() {
        if (this.f430m < 1) {
            return;
        }
        for (r rVar : this.f421c.n()) {
            if (rVar != null && !rVar.f523y) {
                rVar.f518t.o();
            }
        }
    }

    public final void p(r rVar) {
        if (rVar != null) {
            if (rVar.equals(this.f421c.e(rVar.f504e))) {
                rVar.f516r.getClass();
                boolean zG = G(rVar);
                Boolean bool = rVar.f508j;
                if (bool == null || bool.booleanValue() != zG) {
                    rVar.f508j = Boolean.valueOf(zG);
                    h0 h0Var = rVar.f518t;
                    h0Var.W();
                    h0Var.p(h0Var.f434q);
                }
            }
        }
    }

    public final void q() {
        for (r rVar : this.f421c.n()) {
            if (rVar != null) {
                rVar.f518t.q();
            }
        }
    }

    public final boolean r() {
        if (this.f430m < 1) {
            return false;
        }
        boolean z2 = false;
        for (r rVar : this.f421c.n()) {
            if (rVar != null && F(rVar)) {
                if (!rVar.f523y ? rVar.f518t.r() : false) {
                    z2 = true;
                }
            }
        }
        return z2;
    }

    public final void s(int i3) {
        try {
            this.b = true;
            for (n0 n0Var : ((HashMap) this.f421c.f413c).values()) {
                if (n0Var != null) {
                    n0Var.f481e = i3;
                }
            }
            H(i3, false);
            Iterator it = e().iterator();
            while (it.hasNext()) {
                ((j) it.next()).e();
            }
            this.b = false;
            w(true);
        } catch (Throwable th) {
            this.b = false;
            throw th;
        }
    }

    public final void t(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        o0.a aVar;
        String str2;
        String strA = n.g.a(str, "    ");
        f fVar = this.f421c;
        ArrayList arrayList = (ArrayList) fVar.b;
        String strA2 = n.g.a(str, "    ");
        HashMap map = (HashMap) fVar.f413c;
        if (!map.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Active Fragments:");
            for (n0 n0Var : map.values()) {
                printWriter.print(str);
                if (n0Var != null) {
                    r rVar = n0Var.f479c;
                    printWriter.println(rVar);
                    rVar.getClass();
                    printWriter.print(strA2);
                    printWriter.print("mFragmentId=#");
                    printWriter.print(Integer.toHexString(rVar.f520v));
                    printWriter.print(" mContainerId=#");
                    printWriter.print(Integer.toHexString(rVar.f521w));
                    printWriter.print(" mTag=");
                    printWriter.println(rVar.f522x);
                    printWriter.print(strA2);
                    printWriter.print("mState=");
                    printWriter.print(rVar.f501a);
                    printWriter.print(" mWho=");
                    printWriter.print(rVar.f504e);
                    printWriter.print(" mBackStackNesting=");
                    printWriter.println(rVar.f515q);
                    printWriter.print(strA2);
                    printWriter.print("mAdded=");
                    printWriter.print(rVar.f509k);
                    printWriter.print(" mRemoving=");
                    printWriter.print(rVar.f510l);
                    printWriter.print(" mFromLayout=");
                    printWriter.print(rVar.f511m);
                    printWriter.print(" mInLayout=");
                    printWriter.println(rVar.f512n);
                    printWriter.print(strA2);
                    printWriter.print("mHidden=");
                    printWriter.print(rVar.f523y);
                    printWriter.print(" mDetached=");
                    printWriter.print(rVar.f524z);
                    printWriter.print(" mMenuVisible=");
                    printWriter.print(rVar.B);
                    printWriter.print(" mHasMenu=");
                    printWriter.println(false);
                    printWriter.print(strA2);
                    printWriter.print("mRetainInstance=");
                    printWriter.print(rVar.A);
                    printWriter.print(" mUserVisibleHint=");
                    printWriter.println(rVar.G);
                    if (rVar.f516r != null) {
                        printWriter.print(strA2);
                        printWriter.print("mFragmentManager=");
                        printWriter.println(rVar.f516r);
                    }
                    if (rVar.f517s != null) {
                        printWriter.print(strA2);
                        printWriter.print("mHost=");
                        printWriter.println(rVar.f517s);
                    }
                    if (rVar.f519u != null) {
                        printWriter.print(strA2);
                        printWriter.print("mParentFragment=");
                        printWriter.println(rVar.f519u);
                    }
                    if (rVar.f != null) {
                        printWriter.print(strA2);
                        printWriter.print("mArguments=");
                        printWriter.println(rVar.f);
                    }
                    if (rVar.b != null) {
                        printWriter.print(strA2);
                        printWriter.print("mSavedFragmentState=");
                        printWriter.println(rVar.b);
                    }
                    if (rVar.f502c != null) {
                        printWriter.print(strA2);
                        printWriter.print("mSavedViewState=");
                        printWriter.println(rVar.f502c);
                    }
                    if (rVar.f503d != null) {
                        printWriter.print(strA2);
                        printWriter.print("mSavedViewRegistryState=");
                        printWriter.println(rVar.f503d);
                    }
                    Object objE = rVar.f505g;
                    if (objE == null) {
                        h0 h0Var = rVar.f516r;
                        objE = (h0Var == null || (str2 = rVar.f506h) == null) ? null : h0Var.f421c.e(str2);
                    }
                    if (objE != null) {
                        printWriter.print(strA2);
                        printWriter.print("mTarget=");
                        printWriter.print(objE);
                        printWriter.print(" mTargetRequestCode=");
                        printWriter.println(rVar.f507i);
                    }
                    printWriter.print(strA2);
                    printWriter.print("mPopDirection=");
                    p pVar = rVar.H;
                    printWriter.println(pVar == null ? false : pVar.f489a);
                    p pVar2 = rVar.H;
                    if ((pVar2 == null ? 0 : pVar2.b) != 0) {
                        printWriter.print(strA2);
                        printWriter.print("getEnterAnim=");
                        p pVar3 = rVar.H;
                        printWriter.println(pVar3 == null ? 0 : pVar3.b);
                    }
                    p pVar4 = rVar.H;
                    if ((pVar4 == null ? 0 : pVar4.f490c) != 0) {
                        printWriter.print(strA2);
                        printWriter.print("getExitAnim=");
                        p pVar5 = rVar.H;
                        printWriter.println(pVar5 == null ? 0 : pVar5.f490c);
                    }
                    p pVar6 = rVar.H;
                    if ((pVar6 == null ? 0 : pVar6.f491d) != 0) {
                        printWriter.print(strA2);
                        printWriter.print("getPopEnterAnim=");
                        p pVar7 = rVar.H;
                        printWriter.println(pVar7 == null ? 0 : pVar7.f491d);
                    }
                    p pVar8 = rVar.H;
                    if ((pVar8 == null ? 0 : pVar8.f492e) != 0) {
                        printWriter.print(strA2);
                        printWriter.print("getPopExitAnim=");
                        p pVar9 = rVar.H;
                        printWriter.println(pVar9 == null ? 0 : pVar9.f492e);
                    }
                    if (rVar.D != null) {
                        printWriter.print(strA2);
                        printWriter.print("mContainer=");
                        printWriter.println(rVar.D);
                    }
                    if (rVar.E != null) {
                        printWriter.print(strA2);
                        printWriter.print("mView=");
                        printWriter.println(rVar.E);
                    }
                    if (rVar.h() != null) {
                        androidx.lifecycle.i0 i0VarE = rVar.e();
                        i2.g.e(i0VarE, "store");
                        HashMap map2 = i0VarE.f576a;
                        n0.a aVar2 = n0.a.b;
                        i2.g.e(aVar2, "defaultCreationExtras");
                        String canonicalName = o0.a.class.getCanonicalName();
                        if (canonicalName == null) {
                            throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
                        }
                        String strConcat = "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(canonicalName);
                        i2.g.e(strConcat, "key");
                        androidx.lifecycle.g0 g0Var = (androidx.lifecycle.g0) map2.get(strConcat);
                        if (!o0.a.class.isInstance(g0Var)) {
                            LinkedHashMap linkedHashMap = new LinkedHashMap();
                            linkedHashMap.putAll(aVar2.f2481a);
                            linkedHashMap.put(androidx.lifecycle.h0.b, strConcat);
                            try {
                                aVar = new o0.a();
                            } catch (AbstractMethodError unused) {
                                aVar = new o0.a();
                            }
                            g0Var = aVar;
                            androidx.lifecycle.g0 g0Var2 = (androidx.lifecycle.g0) map2.put(strConcat, g0Var);
                            if (g0Var2 != null) {
                                g0Var2.a();
                            }
                        } else if (g0Var == null) {
                            throw new NullPointerException("null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get");
                        }
                        l.l lVar = ((o0.a) g0Var).f2619c;
                        if (lVar.f2421c > 0) {
                            printWriter.print(strA2);
                            printWriter.println("Loaders:");
                            if (lVar.f2421c > 0) {
                                if (lVar.b[0] != null) {
                                    throw new ClassCastException();
                                }
                                printWriter.print(strA2);
                                printWriter.print("  #");
                                printWriter.print(lVar.f2420a[0]);
                                printWriter.print(": ");
                                throw null;
                            }
                        }
                    }
                    printWriter.print(strA2);
                    printWriter.println("Child " + rVar.f518t + ":");
                    rVar.f518t.t(n.g.a(strA2, "  "), fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println("null");
                }
            }
        }
        int size3 = arrayList.size();
        if (size3 > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i3 = 0; i3 < size3; i3++) {
                r rVar2 = (r) arrayList.get(i3);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i3);
                printWriter.print(": ");
                printWriter.println(rVar2.toString());
            }
        }
        ArrayList arrayList2 = this.f423e;
        if (arrayList2 != null && (size2 = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i4 = 0; i4 < size2; i4++) {
                r rVar3 = (r) this.f423e.get(i4);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i4);
                printWriter.print(": ");
                printWriter.println(rVar3.toString());
            }
        }
        ArrayList arrayList3 = this.f422d;
        if (arrayList3 != null && (size = arrayList3.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i5 = 0; i5 < size; i5++) {
                a aVar3 = (a) this.f422d.get(i5);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i5);
                printWriter.print(": ");
                printWriter.println(aVar3.toString());
                aVar3.d(strA, printWriter, true);
            }
        }
        printWriter.print(str);
        printWriter.println("Back Stack Index: " + this.f426i.get());
        synchronized (this.f420a) {
            try {
                int size4 = this.f420a.size();
                if (size4 > 0) {
                    printWriter.print(str);
                    printWriter.println("Pending Actions:");
                    for (int i6 = 0; i6 < size4; i6++) {
                        Object obj = (f0) this.f420a.get(i6);
                        printWriter.print(str);
                        printWriter.print("  #");
                        printWriter.print(i6);
                        printWriter.print(": ");
                        printWriter.println(obj);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.f431n);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.f432o);
        if (this.f433p != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.f433p);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.f430m);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.f442y);
        printWriter.print(" mStopped=");
        printWriter.print(this.f443z);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.A);
        if (this.f441x) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.f441x);
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        r rVar = this.f433p;
        if (rVar != null) {
            sb.append(rVar.getClass().getSimpleName());
            sb.append("{");
            sb.append(Integer.toHexString(System.identityHashCode(this.f433p)));
            sb.append("}");
        } else {
            u uVar = this.f431n;
            if (uVar != null) {
                sb.append(uVar.getClass().getSimpleName());
                sb.append("{");
                sb.append(Integer.toHexString(System.identityHashCode(this.f431n)));
                sb.append("}");
            } else {
                sb.append("null");
            }
        }
        sb.append("}}");
        return sb.toString();
    }

    public final void u(f0 f0Var, boolean z2) {
        if (!z2) {
            if (this.f431n == null) {
                if (!this.A) {
                    throw new IllegalStateException("FragmentManager has not been attached to a host.");
                }
                throw new IllegalStateException("FragmentManager has been destroyed");
            }
            if (this.f442y || this.f443z) {
                throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
            }
        }
        synchronized (this.f420a) {
            try {
                if (this.f431n == null) {
                    if (!z2) {
                        throw new IllegalStateException("Activity has been destroyed");
                    }
                } else {
                    this.f420a.add(f0Var);
                    P();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void v(boolean z2) {
        if (this.b) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        }
        if (this.f431n == null) {
            if (!this.A) {
                throw new IllegalStateException("FragmentManager has not been attached to a host.");
            }
            throw new IllegalStateException("FragmentManager has been destroyed");
        }
        if (Looper.myLooper() != this.f431n.f536c.getLooper()) {
            throw new IllegalStateException("Must be called from main thread of fragment host");
        }
        if (!z2 && (this.f442y || this.f443z)) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        if (this.C == null) {
            this.C = new ArrayList();
            this.D = new ArrayList();
        }
        this.b = false;
    }

    public final boolean w(boolean z2) {
        boolean zA;
        v(z2);
        boolean z3 = false;
        while (true) {
            ArrayList arrayList = this.C;
            ArrayList arrayList2 = this.D;
            synchronized (this.f420a) {
                try {
                    if (this.f420a.isEmpty()) {
                        zA = false;
                    } else {
                        int size = this.f420a.size();
                        zA = false;
                        for (int i3 = 0; i3 < size; i3++) {
                            zA |= ((f0) this.f420a.get(i3)).a(arrayList, arrayList2);
                        }
                        this.f420a.clear();
                        this.f431n.f536c.removeCallbacks(this.G);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (!zA) {
                break;
            }
            z3 = true;
            this.b = true;
            try {
                M(this.C, this.D);
                d();
            } catch (Throwable th2) {
                d();
                throw th2;
            }
        }
        W();
        if (this.B) {
            this.B = false;
            V();
        }
        ((HashMap) this.f421c.f413c).values().removeAll(Collections.singleton(null));
        return z3;
    }

    /* JADX WARN: Code duplicated, block: B:64:0x0156  */
    public final void x(ArrayList arrayList, ArrayList arrayList2, int i3, int i4) {
        ViewGroup viewGroup;
        boolean z2;
        int i5;
        boolean z3;
        int i6;
        int i7;
        f fVar = this.f421c;
        boolean z4 = ((a) arrayList.get(i3)).f380o;
        ArrayList arrayList3 = this.E;
        if (arrayList3 == null) {
            this.E = new ArrayList();
        } else {
            arrayList3.clear();
        }
        this.E.addAll(fVar.n());
        r rVar = this.f434q;
        int i8 = i3;
        boolean z5 = false;
        while (true) {
            int i9 = 1;
            if (i8 >= i4) {
                boolean z6 = z4;
                this.E.clear();
                if (!z6 && this.f430m >= 1) {
                    for (int i10 = i3; i10 < i4; i10++) {
                        ArrayList arrayList4 = ((a) arrayList.get(i10)).f368a;
                        int size = arrayList4.size();
                        int i11 = 0;
                        while (i11 < size) {
                            Object obj = arrayList4.get(i11);
                            i11++;
                            r rVar2 = ((o0) obj).b;
                            if (rVar2 != null && rVar2.f516r != null) {
                                fVar.s(f(rVar2));
                            }
                        }
                    }
                }
                for (int i12 = i3; i12 < i4; i12++) {
                    a aVar = (a) arrayList.get(i12);
                    if (((Boolean) arrayList2.get(i12)).booleanValue()) {
                        aVar.c(-1);
                        h0 h0Var = aVar.f381p;
                        ArrayList arrayList5 = aVar.f368a;
                        for (int size2 = arrayList5.size() - 1; size2 >= 0; size2--) {
                            o0 o0Var = (o0) arrayList5.get(size2);
                            r rVar3 = o0Var.b;
                            if (rVar3 != null) {
                                if (rVar3.H != null) {
                                    rVar3.d().f489a = true;
                                }
                                int i13 = aVar.f;
                                int i14 = 8194;
                                if (i13 != 4097) {
                                    i14 = i13 != 4099 ? i13 != 8194 ? 0 : 4097 : 4099;
                                }
                                if (rVar3.H != null || i14 != 0) {
                                    rVar3.d();
                                    rVar3.H.f = i14;
                                }
                                rVar3.d();
                                rVar3.H.getClass();
                            }
                            switch (o0Var.f483a) {
                                case 1:
                                    rVar3.y(o0Var.f484c, o0Var.f485d, o0Var.f486e, o0Var.f);
                                    h0Var.Q(rVar3, true);
                                    h0Var.L(rVar3);
                                    break;
                                case 2:
                                default:
                                    throw new IllegalArgumentException("Unknown cmd: " + o0Var.f483a);
                                case 3:
                                    rVar3.y(o0Var.f484c, o0Var.f485d, o0Var.f486e, o0Var.f);
                                    h0Var.a(rVar3);
                                    break;
                                case 4:
                                    rVar3.y(o0Var.f484c, o0Var.f485d, o0Var.f486e, o0Var.f);
                                    h0Var.getClass();
                                    U(rVar3);
                                    break;
                                case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                                    rVar3.y(o0Var.f484c, o0Var.f485d, o0Var.f486e, o0Var.f);
                                    h0Var.Q(rVar3, true);
                                    h0Var.C(rVar3);
                                    break;
                                case MusicClient.TYPE_GESTURE /* 6 */:
                                    rVar3.y(o0Var.f484c, o0Var.f485d, o0Var.f486e, o0Var.f);
                                    h0Var.c(rVar3);
                                    break;
                                case PlaybackState.STATE_ERROR /* 7 */:
                                    rVar3.y(o0Var.f484c, o0Var.f485d, o0Var.f486e, o0Var.f);
                                    h0Var.Q(rVar3, true);
                                    h0Var.g(rVar3);
                                    break;
                                case 8:
                                    h0Var.S(null);
                                    break;
                                case 9:
                                    h0Var.S(rVar3);
                                    break;
                                case 10:
                                    h0Var.R(rVar3, o0Var.f487g);
                                    break;
                            }
                        }
                    } else {
                        aVar.c(1);
                        h0 h0Var2 = aVar.f381p;
                        ArrayList arrayList6 = aVar.f368a;
                        int size3 = arrayList6.size();
                        for (int i15 = 0; i15 < size3; i15++) {
                            o0 o0Var2 = (o0) arrayList6.get(i15);
                            r rVar4 = o0Var2.b;
                            if (rVar4 != null) {
                                if (rVar4.H != null) {
                                    rVar4.d().f489a = false;
                                }
                                int i16 = aVar.f;
                                if (rVar4.H != null || i16 != 0) {
                                    rVar4.d();
                                    rVar4.H.f = i16;
                                }
                                rVar4.d();
                                rVar4.H.getClass();
                            }
                            switch (o0Var2.f483a) {
                                case 1:
                                    rVar4.y(o0Var2.f484c, o0Var2.f485d, o0Var2.f486e, o0Var2.f);
                                    h0Var2.Q(rVar4, false);
                                    h0Var2.a(rVar4);
                                    break;
                                case 2:
                                default:
                                    throw new IllegalArgumentException("Unknown cmd: " + o0Var2.f483a);
                                case 3:
                                    rVar4.y(o0Var2.f484c, o0Var2.f485d, o0Var2.f486e, o0Var2.f);
                                    h0Var2.L(rVar4);
                                    break;
                                case 4:
                                    rVar4.y(o0Var2.f484c, o0Var2.f485d, o0Var2.f486e, o0Var2.f);
                                    h0Var2.C(rVar4);
                                    break;
                                case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                                    rVar4.y(o0Var2.f484c, o0Var2.f485d, o0Var2.f486e, o0Var2.f);
                                    h0Var2.Q(rVar4, false);
                                    U(rVar4);
                                    break;
                                case MusicClient.TYPE_GESTURE /* 6 */:
                                    rVar4.y(o0Var2.f484c, o0Var2.f485d, o0Var2.f486e, o0Var2.f);
                                    h0Var2.g(rVar4);
                                    break;
                                case PlaybackState.STATE_ERROR /* 7 */:
                                    rVar4.y(o0Var2.f484c, o0Var2.f485d, o0Var2.f486e, o0Var2.f);
                                    h0Var2.Q(rVar4, false);
                                    h0Var2.c(rVar4);
                                    break;
                                case 8:
                                    h0Var2.S(rVar4);
                                    break;
                                case 9:
                                    h0Var2.S(null);
                                    break;
                                case 10:
                                    h0Var2.R(rVar4, o0Var2.f488h);
                                    break;
                            }
                        }
                    }
                }
                boolean zBooleanValue = ((Boolean) arrayList2.get(i4 - 1)).booleanValue();
                for (int i17 = i3; i17 < i4; i17++) {
                    a aVar2 = (a) arrayList.get(i17);
                    if (zBooleanValue) {
                        for (int size4 = aVar2.f368a.size() - 1; size4 >= 0; size4--) {
                            r rVar5 = ((o0) aVar2.f368a.get(size4)).b;
                            if (rVar5 != null) {
                                f(rVar5).k();
                            }
                        }
                    } else {
                        ArrayList arrayList7 = aVar2.f368a;
                        int size5 = arrayList7.size();
                        int i18 = 0;
                        while (i18 < size5) {
                            Object obj2 = arrayList7.get(i18);
                            i18++;
                            r rVar6 = ((o0) obj2).b;
                            if (rVar6 != null) {
                                f(rVar6).k();
                            }
                        }
                    }
                }
                H(this.f430m, true);
                HashSet<j> hashSet = new HashSet();
                for (int i19 = i3; i19 < i4; i19++) {
                    ArrayList arrayList8 = ((a) arrayList.get(i19)).f368a;
                    int size6 = arrayList8.size();
                    int i20 = 0;
                    while (i20 < size6) {
                        Object obj3 = arrayList8.get(i20);
                        i20++;
                        r rVar7 = ((o0) obj3).b;
                        if (rVar7 != null && (viewGroup = rVar7.D) != null) {
                            hashSet.add(j.f(viewGroup, B()));
                        }
                    }
                }
                for (j jVar : hashSet) {
                    jVar.f452d = zBooleanValue;
                    synchronized (jVar.b) {
                        try {
                            jVar.g();
                            jVar.f453e = false;
                            for (int size7 = jVar.b.size() - 1; size7 >= 0; size7--) {
                                s0 s0Var = (s0) jVar.b.get(size7);
                                int iC = androidx.activity.result.b.c(s0Var.f529c.E);
                                if (s0Var.f528a == 2 && iC != 2) {
                                    s0Var.f529c.getClass();
                                    jVar.f453e = false;
                                }
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    jVar.c();
                }
                for (int i21 = i3; i21 < i4; i21++) {
                    a aVar3 = (a) arrayList.get(i21);
                    if (((Boolean) arrayList2.get(i21)).booleanValue() && aVar3.f383r >= 0) {
                        aVar3.f383r = -1;
                    }
                    aVar3.getClass();
                }
                return;
            }
            a aVar4 = (a) arrayList.get(i8);
            if (((Boolean) arrayList2.get(i8)).booleanValue()) {
                z2 = z4;
                i5 = i8;
                int i22 = 1;
                ArrayList arrayList9 = this.E;
                ArrayList arrayList10 = aVar4.f368a;
                int size8 = arrayList10.size() - 1;
                while (size8 >= 0) {
                    o0 o0Var3 = (o0) arrayList10.get(size8);
                    int i23 = o0Var3.f483a;
                    if (i23 != i22) {
                        if (i23 != 3) {
                            switch (i23) {
                                case MusicClient.TYPE_GESTURE /* 6 */:
                                    arrayList9.add(o0Var3.b);
                                    break;
                                case 8:
                                    rVar = null;
                                    break;
                                case 9:
                                    rVar = o0Var3.b;
                                    break;
                                case 10:
                                    o0Var3.f488h = o0Var3.f487g;
                                    break;
                            }
                        } else {
                            arrayList9.add(o0Var3.b);
                        }
                        size8--;
                        i22 = 1;
                    }
                    arrayList9.remove(o0Var3.b);
                    size8--;
                    i22 = 1;
                }
            } else {
                ArrayList arrayList11 = this.E;
                ArrayList arrayList12 = aVar4.f368a;
                int i24 = 0;
                while (i24 < arrayList12.size()) {
                    o0 o0Var4 = (o0) arrayList12.get(i24);
                    int i25 = o0Var4.f483a;
                    if (i25 != i9) {
                        int i26 = i9;
                        z3 = z4;
                        if (i25 != 2) {
                            if (i25 == 3 || i25 == 6) {
                                arrayList11.remove(o0Var4.b);
                                r rVar8 = o0Var4.b;
                                if (rVar8 == rVar) {
                                    arrayList12.add(i24, new o0(9, rVar8));
                                    i24++;
                                    i7 = i8;
                                    i6 = i26;
                                    rVar = null;
                                }
                            } else if (i25 == 7) {
                                i6 = i26;
                            } else if (i25 == 8) {
                                arrayList12.add(i24, new o0(9, rVar));
                                i24++;
                                rVar = o0Var4.b;
                            }
                            i7 = i8;
                            i6 = i26;
                        } else {
                            r rVar9 = o0Var4.b;
                            int i27 = rVar9.f521w;
                            int size9 = arrayList11.size() - 1;
                            int i28 = 0;
                            while (size9 >= 0) {
                                int i29 = size9;
                                r rVar10 = (r) arrayList11.get(size9);
                                int i30 = i8;
                                if (rVar10.f521w == i27) {
                                    if (rVar10 == rVar9) {
                                        i28 = i26;
                                    } else {
                                        if (rVar10 == rVar) {
                                            arrayList12.add(i24, new o0(9, rVar10));
                                            i24++;
                                            rVar = null;
                                        }
                                        o0 o0Var5 = new o0(3, rVar10);
                                        o0Var5.f484c = o0Var4.f484c;
                                        o0Var5.f486e = o0Var4.f486e;
                                        o0Var5.f485d = o0Var4.f485d;
                                        o0Var5.f = o0Var4.f;
                                        arrayList12.add(i24, o0Var5);
                                        arrayList11.remove(rVar10);
                                        i24++;
                                        rVar = rVar;
                                    }
                                }
                                size9 = i29 - 1;
                                i8 = i30;
                            }
                            i7 = i8;
                            if (i28 != 0) {
                                arrayList12.remove(i24);
                                i24--;
                                i6 = i26;
                            } else {
                                i6 = i26;
                                o0Var4.f483a = i6;
                                arrayList11.add(rVar9);
                            }
                        }
                        i24 += i6;
                        i9 = i6;
                        z4 = z3;
                        i8 = i7;
                    } else {
                        z3 = z4;
                        i6 = i9;
                    }
                    i7 = i8;
                    arrayList11.add(o0Var4.b);
                    i24 += i6;
                    i9 = i6;
                    z4 = z3;
                    i8 = i7;
                }
                z2 = z4;
                i5 = i8;
            }
            z5 = z5 || aVar4.f372g;
            i8 = i5 + 1;
            z4 = z2;
        }
    }

    public final r y(int i3) {
        f fVar = this.f421c;
        ArrayList arrayList = (ArrayList) fVar.b;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            r rVar = (r) arrayList.get(size);
            if (rVar != null && rVar.f520v == i3) {
                return rVar;
            }
        }
        for (n0 n0Var : ((HashMap) fVar.f413c).values()) {
            if (n0Var != null) {
                r rVar2 = n0Var.f479c;
                if (rVar2.f520v == i3) {
                    return rVar2;
                }
            }
        }
        return null;
    }

    public final ViewGroup z(r rVar) {
        ViewGroup viewGroup = rVar.D;
        if (viewGroup != null) {
            return viewGroup;
        }
        if (rVar.f521w <= 0 || !this.f432o.M()) {
            return null;
        }
        View viewL = this.f432o.L(rVar.f521w);
        if (viewL instanceof ViewGroup) {
            return (ViewGroup) viewL;
        }
        return null;
    }
}
