package androidx.fragment.app;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public final class t implements a.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f534a;
    public final /* synthetic */ e.j b;

    public /* synthetic */ t(e.j jVar, int i3) {
        this.f534a = i3;
        this.b = jVar;
    }

    @Override // a.b
    public final void a() {
        switch (this.f534a) {
            case 0:
                e.j jVar = this.b;
                androidx.emoji2.text.m mVar = jVar.f1613n;
                u uVar = (u) mVar.b;
                uVar.f537d.b(uVar, uVar, null);
                Bundle bundleC = jVar.f84e.b.c("android:support:fragments");
                if (bundleC != null) {
                    ((u) mVar.b).f537d.N(bundleC.getParcelable("android:support:fragments"));
                }
                break;
            default:
                e.j jVar2 = this.b;
                e.o oVarI = jVar2.i();
                oVarI.e();
                jVar2.f84e.b.c("androidx:appcompat");
                oVarI.i();
                break;
        }
    }
}
