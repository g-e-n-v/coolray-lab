package l;

import java.lang.reflect.Array;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public h f2383a;
    public h b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public j f2384c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f2385d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f2386e;

    public /* synthetic */ a(int i3, Object obj) {
        this.f2385d = i3;
        this.f2386e = obj;
    }

    public static boolean h(Set set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set2 = (Set) obj;
        try {
            return set.size() == set2.size() && set.containsAll(set2);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public final void a() {
        switch (this.f2385d) {
            case 0:
                ((b) this.f2386e).clear();
                break;
            default:
                ((c) this.f2386e).clear();
                break;
        }
    }

    public final Object b(int i3, int i4) {
        switch (this.f2385d) {
            case 0:
                return ((b) this.f2386e).b[(i3 << 1) + i4];
            default:
                return ((c) this.f2386e).b[i3];
        }
    }

    public final Map c() {
        switch (this.f2385d) {
            case 0:
                return (b) this.f2386e;
            default:
                throw new UnsupportedOperationException("not a map");
        }
    }

    public final int d() {
        switch (this.f2385d) {
            case 0:
                return ((b) this.f2386e).f2418c;
            default:
                return ((c) this.f2386e).f2394c;
        }
    }

    public final int e(Object obj) {
        switch (this.f2385d) {
            case 0:
                return ((b) this.f2386e).d(obj);
            default:
                c cVar = (c) this.f2386e;
                return obj == null ? cVar.d() : cVar.c(obj.hashCode(), obj);
        }
    }

    public final int f(Object obj) {
        switch (this.f2385d) {
            case 0:
                return ((b) this.f2386e).f(obj);
            default:
                c cVar = (c) this.f2386e;
                return obj == null ? cVar.d() : cVar.c(obj.hashCode(), obj);
        }
    }

    public final void g(int i3) {
        switch (this.f2385d) {
            case 0:
                ((b) this.f2386e).h(i3);
                break;
            default:
                ((c) this.f2386e).e(i3);
                break;
        }
    }

    public final Object[] i(Object[] objArr, int i3) {
        int iD = d();
        if (objArr.length < iD) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), iD);
        }
        for (int i4 = 0; i4 < iD; i4++) {
            objArr[i4] = b(i4, i3);
        }
        if (objArr.length > iD) {
            objArr[iD] = null;
        }
        return objArr;
    }
}
