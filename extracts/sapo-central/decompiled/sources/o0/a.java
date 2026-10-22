package o0;

import androidx.lifecycle.g0;
import l.l;

/* JADX INFO: loaded from: classes.dex */
public class a extends g0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final l f2619c = new l();

    @Override // androidx.lifecycle.g0
    public final void a() {
        l lVar = this.f2619c;
        int i3 = lVar.f2421c;
        if (i3 > 0) {
            lVar.b[0].getClass();
            throw new ClassCastException();
        }
        Object[] objArr = lVar.b;
        for (int i4 = 0; i4 < i3; i4++) {
            objArr[i4] = null;
        }
        lVar.f2421c = 0;
    }
}
