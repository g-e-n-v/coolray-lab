package androidx.fragment.app;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class r0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f525a;
    public final /* synthetic */ s0 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ j f526c;

    public /* synthetic */ r0(j jVar, s0 s0Var, int i3) {
        this.f525a = i3;
        this.f526c = jVar;
        this.b = s0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f525a) {
            case 0:
                ArrayList arrayList = this.f526c.b;
                s0 s0Var = this.b;
                if (arrayList.contains(s0Var)) {
                    androidx.activity.result.b.a(s0Var.f529c.E, s0Var.f528a);
                }
                break;
            default:
                j jVar = this.f526c;
                ArrayList arrayList2 = jVar.b;
                s0 s0Var2 = this.b;
                arrayList2.remove(s0Var2);
                jVar.f451c.remove(s0Var2);
                break;
        }
    }
}
