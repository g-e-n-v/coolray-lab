package q0;

import android.util.SparseArray;

/* JADX INFO: loaded from: classes.dex */
public final class n0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public SparseArray f2968a;
    public int b;

    public final m0 a(int i3) {
        SparseArray sparseArray = this.f2968a;
        m0 m0Var = (m0) sparseArray.get(i3);
        if (m0Var != null) {
            return m0Var;
        }
        m0 m0Var2 = new m0();
        sparseArray.put(i3, m0Var2);
        return m0Var2;
    }
}
