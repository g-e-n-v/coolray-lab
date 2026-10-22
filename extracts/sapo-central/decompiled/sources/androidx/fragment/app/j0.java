package androidx.fragment.app;

import android.util.Log;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class j0 extends androidx.lifecycle.g0 {
    public final boolean f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f454c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final HashMap f455d = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HashMap f456e = new HashMap();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f457g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f458h = false;

    public j0(boolean z2) {
        this.f = z2;
    }

    @Override // androidx.lifecycle.g0
    public final void a() {
        if (h0.D(3)) {
            Log.d("FragmentManager", "onCleared called for " + this);
        }
        this.f457g = true;
    }

    public final void b(r rVar) {
        if (this.f458h) {
            if (h0.D(2)) {
                Log.v("FragmentManager", "Ignoring removeRetainedFragment as the state is already saved");
            }
        } else {
            if (this.f454c.remove(rVar.f504e) == null || !h0.D(2)) {
                return;
            }
            Log.v("FragmentManager", "Updating retained Fragments: Removed " + rVar);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && j0.class == obj.getClass()) {
            j0 j0Var = (j0) obj;
            if (this.f454c.equals(j0Var.f454c) && this.f455d.equals(j0Var.f455d) && this.f456e.equals(j0Var.f456e)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f456e.hashCode() + ((this.f455d.hashCode() + (this.f454c.hashCode() * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FragmentManagerViewModel{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} Fragments (");
        Iterator it = this.f454c.values().iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") Child Non Config (");
        Iterator it2 = this.f455d.keySet().iterator();
        while (it2.hasNext()) {
            sb.append((String) it2.next());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") ViewModelStores (");
        Iterator it3 = this.f456e.keySet().iterator();
        while (it3.hasNext()) {
            sb.append((String) it3.next());
            if (it3.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(')');
        return sb.toString();
    }
}
