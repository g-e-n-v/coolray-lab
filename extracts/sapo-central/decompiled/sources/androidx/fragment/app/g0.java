package androidx.fragment.app;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class g0 implements f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f418a;
    public final /* synthetic */ h0 b;

    public g0(h0 h0Var, int i3) {
        this.b = h0Var;
        this.f418a = i3;
    }

    @Override // androidx.fragment.app.f0
    public final boolean a(ArrayList arrayList, ArrayList arrayList2) {
        h0 h0Var = this.b;
        r rVar = h0Var.f434q;
        int i3 = this.f418a;
        if (rVar == null || i3 >= 0 || !rVar.g().J()) {
            return h0Var.K(arrayList, arrayList2, i3, 1);
        }
        return false;
    }
}
