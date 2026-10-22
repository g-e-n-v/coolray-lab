package z;

import java.util.ArrayList;
import l.k;

/* JADX INFO: loaded from: classes.dex */
public final class e implements b0.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4671a;
    public final /* synthetic */ Object b;

    public /* synthetic */ e(int i3, Object obj) {
        this.f4671a = i3;
        this.b = obj;
    }

    @Override // b0.a
    public final void accept(Object obj) {
        switch (this.f4671a) {
            case 0:
                f fVar = (f) obj;
                if (fVar == null) {
                    fVar = new f(-3);
                }
                ((androidx.activity.result.c) this.b).A(fVar);
                return;
            default:
                f fVar2 = (f) obj;
                synchronized (g.f4674c) {
                    try {
                        k kVar = g.f4675d;
                        ArrayList arrayList = (ArrayList) kVar.getOrDefault((String) this.b, null);
                        if (arrayList == null) {
                            return;
                        }
                        kVar.remove((String) this.b);
                        for (int i3 = 0; i3 < arrayList.size(); i3++) {
                            ((b0.a) arrayList.get(i3)).accept(fVar2);
                        }
                        return;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
        }
    }
}
