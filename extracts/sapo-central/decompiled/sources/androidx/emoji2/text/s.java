package androidx.emoji2.text;

import android.util.SparseArray;

/* JADX INFO: loaded from: classes.dex */
public final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SparseArray f358a;
    public o b;

    public s(int i3) {
        this.f358a = new SparseArray(i3);
    }

    public final void a(o oVar, int i3, int i4) {
        int iA = oVar.a(i3);
        SparseArray sparseArray = this.f358a;
        s sVar = sparseArray == null ? null : (s) sparseArray.get(iA);
        if (sVar == null) {
            sVar = new s(1);
            sparseArray.put(oVar.a(i3), sVar);
        }
        if (i4 > i3) {
            sVar.a(oVar, i3 + 1, i4);
        } else {
            sVar.b = oVar;
        }
    }
}
