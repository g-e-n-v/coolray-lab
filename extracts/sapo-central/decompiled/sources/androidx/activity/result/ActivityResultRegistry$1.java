package androidx.activity.result;

import androidx.lifecycle.k;
import androidx.lifecycle.o;
import androidx.lifecycle.q;

/* JADX INFO: loaded from: classes.dex */
class ActivityResultRegistry$1 implements o {
    @Override // androidx.lifecycle.o
    public final void a(q qVar, k kVar) {
        if (k.ON_START.equals(kVar) || k.ON_STOP.equals(kVar) || k.ON_DESTROY.equals(kVar)) {
            throw null;
        }
    }
}
